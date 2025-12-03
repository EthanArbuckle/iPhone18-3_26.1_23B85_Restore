@interface _UICharacterStreamingManager
- (_UICharacterStreamingManager)initWithTextView:(id)view;
- (void)_displayLinkFired:(id)fired;
- (void)_startStreamingAnimations;
- (void)_stopStreamingAnimation;
- (void)commitFinalResults;
- (void)setWords:(id)words;
- (void)setupToInsertResultForNewHypothesis:(id)hypothesis;
@end

@implementation _UICharacterStreamingManager

- (_UICharacterStreamingManager)initWithTextView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _UICharacterStreamingManager;
  v5 = [(_UICharacterStreamingManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textView, viewCopy);
    *&v6->_streamingCharacterInsertionRate = xmmword_18A682EA0;
  }

  return v6;
}

- (void)commitFinalResults
{
  self->_committingFinalResults = 1;
  if (!self->_streamingAnimationActive)
  {
    [(_UICharacterStreamingManager *)self setTargetHypothesis:0];
    [(_UICharacterStreamingManager *)self setLastHypothesis:0];

    [(_UICharacterStreamingManager *)self setPendingEdits:0];
  }
}

- (void)setWords:(id)words
{
  self->_committingFinalResults = 0;
  v8 = [words componentsJoinedByString:&stru_1EFB14550];
  previousHypothesis = [(_UICharacterStreamingManager *)self previousHypothesis];
  if (!previousHypothesis || (v5 = previousHypothesis, -[_UICharacterStreamingManager previousHypothesis](self, "previousHypothesis"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v8 isEqualToString:v6], v6, v5, (v7 & 1) == 0))
  {
    [(_UICharacterStreamingManager *)self setupToInsertResultForNewHypothesis:v8];
    [(_UICharacterStreamingManager *)self setPreviousHypothesis:v8];
  }
}

- (void)_stopStreamingAnimation
{
  [(CADisplayLink *)self->_streamingAnimationDisplayLink invalidate];
  streamingAnimationDisplayLink = self->_streamingAnimationDisplayLink;
  self->_streamingAnimationDisplayLink = 0;

  self->_streamingAnimationActive = 0;
  if (self->_committingFinalResults)
  {
    [(_UICharacterStreamingManager *)self setTargetHypothesis:0];
    [(_UICharacterStreamingManager *)self setLastHypothesis:0];

    [(_UICharacterStreamingManager *)self setPendingEdits:0];
  }
}

- (void)_startStreamingAnimations
{
  if (!self->_streamingAnimationActive)
  {
    self->_streamingAnimationActive = 1;
    mainScreen = [objc_opt_self() mainScreen];
    v4 = [mainScreen displayLinkWithTarget:self selector:sel__displayLinkFired_];
    streamingAnimationDisplayLink = self->_streamingAnimationDisplayLink;
    self->_streamingAnimationDisplayLink = v4;

    v6 = self->_streamingAnimationDisplayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    v8 = self->_streamingAnimationDisplayLink;
    mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v8 addToRunLoop:mainRunLoop2 forMode:@"UITrackingRunLoopMode"];

    self->_lastAnimationUpdateTimeStamp = CACurrentMediaTime();
  }
}

- (void)_displayLinkFired:(id)fired
{
  v65 = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  v6 = firedCopy;
  if (!self->_streamingAnimationActive)
  {
    goto LABEL_37;
  }

  [firedCopy timestamp];
  v8 = v7 - self->_lastAnimationUpdateTimeStamp;
  pendingEdits = [(_UICharacterStreamingManager *)self pendingEdits];
  if (![pendingEdits count])
  {
    lastHypothesis = [(_UICharacterStreamingManager *)self lastHypothesis];
    if ([lastHypothesis length])
    {
      minDurationBetweenHypotheses = self->_minDurationBetweenHypotheses;

      if (v8 < minDurationBetweenHypotheses)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }
  }

LABEL_4:
  targetHypothesis = [(_UICharacterStreamingManager *)self targetHypothesis];
  lastHypothesis2 = [(_UICharacterStreamingManager *)self lastHypothesis];
  if ([targetHypothesis isEqualToString:lastHypothesis2])
  {
    pendingEdits2 = [(_UICharacterStreamingManager *)self pendingEdits];
    v13 = [pendingEdits2 count];

    if (!v13)
    {
      [(_UICharacterStreamingManager *)self _stopStreamingAnimation];
      goto LABEL_37;
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  selectedTextRange = [WeakRetained selectedTextRange];
  start = [selectedTextRange start];
  lastHypothesis3 = [(_UICharacterStreamingManager *)self lastHypothesis];
  beginningOfDocument = [WeakRetained positionFromPosition:start offset:{-objc_msgSend(lastHypothesis3, "length")}];

  if (!beginningOfDocument)
  {
    beginningOfDocument = [WeakRetained beginningOfDocument];
  }

  if (beginningOfDocument && start)
  {
    v19 = [WeakRetained textRangeFromPosition:beginningOfDocument toPosition:start];
    if ([selectedTextRange isEmpty])
    {
      v58 = v19;
      pendingEdits3 = [(_UICharacterStreamingManager *)self pendingEdits];
      v21 = [pendingEdits3 count];

      if (!v21)
      {
        lastHypothesis4 = [(_UICharacterStreamingManager *)self lastHypothesis];
        [(_UICharacterStreamingManager *)self targetHypothesis];
        v24 = v23 = beginningOfDocument;
        v25 = [_EditScriptRanged editScriptFromString:lastHypothesis4 toString:v24 chunkSize:0 orderAtomsAscending:1 operationPrecedence:-1 options:0];

        script = [v25 script];
        v27 = [script mutableCopy];

        [(_UICharacterStreamingManager *)self setPendingEdits:v27];
        beginningOfDocument = v23;
      }

      pendingEdits4 = [(_UICharacterStreamingManager *)self pendingEdits];
      v29 = [pendingEdits4 count];

      if (!v29)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        lastHypothesis5 = [(_UICharacterStreamingManager *)self lastHypothesis];
        [(_UICharacterStreamingManager *)self targetHypothesis];
        v52 = v51 = beginningOfDocument;
        [currentHandler handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:358 description:{@"Ran out of edits but we're still not done yet\n%@\n%@", lastHypothesis5, v52}];

        beginningOfDocument = v51;
      }

      v30 = (v8 * self->_streamingCharacterInsertionRate);
      v19 = v58;
      if (v30)
      {
        v56 = beginningOfDocument;
        v57 = v6;
        [v6 timestamp];
        self->_lastAnimationUpdateTimeStamp = v31;
        lastHypothesis6 = [(_UICharacterStreamingManager *)self lastHypothesis];
        v33 = [lastHypothesis6 mutableCopy];

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = [(_UICharacterStreamingManager *)self pendingEdits];
        v34 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v34)
        {
          v35 = v34;
          v53 = start;
          v54 = selectedTextRange;
          v55 = WeakRetained;
          v36 = 0;
          v37 = *v61;
LABEL_20:
          v38 = 0;
          while (1)
          {
            v39 = v36;
            if (*v61 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v40 = *(*(&v60 + 1) + 8 * v38);
            editRange = [v40 editRange];
            v43 = v42;
            replacementText = [v40 replacementText];
            [v33 replaceCharactersInRange:editRange withString:{v43, replacementText}];

            v36 = v39 + 1;
            if (v39 + 1 >= v30)
            {
              break;
            }

            if (v35 == ++v38)
            {
              v35 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
              if (v35)
              {
                goto LABEL_20;
              }

              v36 = v39 + 1;
              break;
            }
          }

          selectedTextRange = v54;
          WeakRetained = v55;
          start = v53;
          v19 = v58;
        }

        else
        {
          v36 = 0;
        }

        pendingEdits5 = [(_UICharacterStreamingManager *)self pendingEdits];
        [pendingEdits5 removeObjectsInRange:{0, v36}];

        [WeakRetained replaceRange:v19 withText:v33];
        [(_UICharacterStreamingManager *)self setLastHypothesis:v33];

        beginningOfDocument = v56;
        v6 = v57;
      }
    }

    else
    {
      [WeakRetained replaceRange:selectedTextRange withText:&stru_1EFB14550];
      v47 = [WeakRetained textRangeFromPosition:start toPosition:start];
      [WeakRetained setSelectedTextRange:v47];
    }
  }

LABEL_37:
}

- (void)setupToInsertResultForNewHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  v6 = hypothesisCopy;
  if (self->_streamingAnimationActive)
  {
    [(_UICharacterStreamingManager *)self setTargetHypothesis:hypothesisCopy];
  }

  else
  {
    lastHypothesis = [(_UICharacterStreamingManager *)self lastHypothesis];

    if (!lastHypothesis)
    {
      [(_UICharacterStreamingManager *)self setLastHypothesis:&stru_1EFB14550];
    }

    [(_UICharacterStreamingManager *)self setTargetHypothesis:v6];
    [(_UICharacterStreamingManager *)self _startStreamingAnimations];
  }
}

@end