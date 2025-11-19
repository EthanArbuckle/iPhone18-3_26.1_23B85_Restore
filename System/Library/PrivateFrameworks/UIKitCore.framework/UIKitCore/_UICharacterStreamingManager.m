@interface _UICharacterStreamingManager
- (_UICharacterStreamingManager)initWithTextView:(id)a3;
- (void)_displayLinkFired:(id)a3;
- (void)_startStreamingAnimations;
- (void)_stopStreamingAnimation;
- (void)commitFinalResults;
- (void)setWords:(id)a3;
- (void)setupToInsertResultForNewHypothesis:(id)a3;
@end

@implementation _UICharacterStreamingManager

- (_UICharacterStreamingManager)initWithTextView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UICharacterStreamingManager;
  v5 = [(_UICharacterStreamingManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textView, v4);
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

- (void)setWords:(id)a3
{
  self->_committingFinalResults = 0;
  v8 = [a3 componentsJoinedByString:&stru_1EFB14550];
  v4 = [(_UICharacterStreamingManager *)self previousHypothesis];
  if (!v4 || (v5 = v4, -[_UICharacterStreamingManager previousHypothesis](self, "previousHypothesis"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v8 isEqualToString:v6], v6, v5, (v7 & 1) == 0))
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
    v3 = [objc_opt_self() mainScreen];
    v4 = [v3 displayLinkWithTarget:self selector:sel__displayLinkFired_];
    streamingAnimationDisplayLink = self->_streamingAnimationDisplayLink;
    self->_streamingAnimationDisplayLink = v4;

    v6 = self->_streamingAnimationDisplayLink;
    v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

    v8 = self->_streamingAnimationDisplayLink;
    v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v8 addToRunLoop:v9 forMode:@"UITrackingRunLoopMode"];

    self->_lastAnimationUpdateTimeStamp = CACurrentMediaTime();
  }
}

- (void)_displayLinkFired:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!self->_streamingAnimationActive)
  {
    goto LABEL_37;
  }

  [v5 timestamp];
  v8 = v7 - self->_lastAnimationUpdateTimeStamp;
  v9 = [(_UICharacterStreamingManager *)self pendingEdits];
  if (![v9 count])
  {
    v45 = [(_UICharacterStreamingManager *)self lastHypothesis];
    if ([v45 length])
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
  v10 = [(_UICharacterStreamingManager *)self targetHypothesis];
  v11 = [(_UICharacterStreamingManager *)self lastHypothesis];
  if ([v10 isEqualToString:v11])
  {
    v12 = [(_UICharacterStreamingManager *)self pendingEdits];
    v13 = [v12 count];

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
  v15 = [WeakRetained selectedTextRange];
  v16 = [v15 start];
  v17 = [(_UICharacterStreamingManager *)self lastHypothesis];
  v18 = [WeakRetained positionFromPosition:v16 offset:{-objc_msgSend(v17, "length")}];

  if (!v18)
  {
    v18 = [WeakRetained beginningOfDocument];
  }

  if (v18 && v16)
  {
    v19 = [WeakRetained textRangeFromPosition:v18 toPosition:v16];
    if ([v15 isEmpty])
    {
      v58 = v19;
      v20 = [(_UICharacterStreamingManager *)self pendingEdits];
      v21 = [v20 count];

      if (!v21)
      {
        v22 = [(_UICharacterStreamingManager *)self lastHypothesis];
        [(_UICharacterStreamingManager *)self targetHypothesis];
        v24 = v23 = v18;
        v25 = [_EditScriptRanged editScriptFromString:v22 toString:v24 chunkSize:0 orderAtomsAscending:1 operationPrecedence:-1 options:0];

        v26 = [v25 script];
        v27 = [v26 mutableCopy];

        [(_UICharacterStreamingManager *)self setPendingEdits:v27];
        v18 = v23;
      }

      v28 = [(_UICharacterStreamingManager *)self pendingEdits];
      v29 = [v28 count];

      if (!v29)
      {
        v49 = [MEMORY[0x1E696AAA8] currentHandler];
        v50 = [(_UICharacterStreamingManager *)self lastHypothesis];
        [(_UICharacterStreamingManager *)self targetHypothesis];
        v52 = v51 = v18;
        [v49 handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:358 description:{@"Ran out of edits but we're still not done yet\n%@\n%@", v50, v52}];

        v18 = v51;
      }

      v30 = (v8 * self->_streamingCharacterInsertionRate);
      v19 = v58;
      if (v30)
      {
        v56 = v18;
        v57 = v6;
        [v6 timestamp];
        self->_lastAnimationUpdateTimeStamp = v31;
        v32 = [(_UICharacterStreamingManager *)self lastHypothesis];
        v33 = [v32 mutableCopy];

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = [(_UICharacterStreamingManager *)self pendingEdits];
        v34 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v34)
        {
          v35 = v34;
          v53 = v16;
          v54 = v15;
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
            v41 = [v40 editRange];
            v43 = v42;
            v44 = [v40 replacementText];
            [v33 replaceCharactersInRange:v41 withString:{v43, v44}];

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

          v15 = v54;
          WeakRetained = v55;
          v16 = v53;
          v19 = v58;
        }

        else
        {
          v36 = 0;
        }

        v48 = [(_UICharacterStreamingManager *)self pendingEdits];
        [v48 removeObjectsInRange:{0, v36}];

        [WeakRetained replaceRange:v19 withText:v33];
        [(_UICharacterStreamingManager *)self setLastHypothesis:v33];

        v18 = v56;
        v6 = v57;
      }
    }

    else
    {
      [WeakRetained replaceRange:v15 withText:&stru_1EFB14550];
      v47 = [WeakRetained textRangeFromPosition:v16 toPosition:v16];
      [WeakRetained setSelectedTextRange:v47];
    }
  }

LABEL_37:
}

- (void)setupToInsertResultForNewHypothesis:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_streamingAnimationActive)
  {
    [(_UICharacterStreamingManager *)self setTargetHypothesis:v4];
  }

  else
  {
    v5 = [(_UICharacterStreamingManager *)self lastHypothesis];

    if (!v5)
    {
      [(_UICharacterStreamingManager *)self setLastHypothesis:&stru_1EFB14550];
    }

    [(_UICharacterStreamingManager *)self setTargetHypothesis:v6];
    [(_UICharacterStreamingManager *)self _startStreamingAnimations];
  }
}

@end