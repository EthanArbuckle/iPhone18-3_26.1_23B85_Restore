@interface MRMarimbaLayer
+ (MRMarimbaLayer)allocWithZone:(_NSZone *)zone;
+ (MRMarimbaLayer)layerWithDocument:(id)document;
+ (MRMarimbaLayer)layerWithDocument:(id)document size:(CGSize)size;
+ (void)releaseResources;
- (BOOL)_effectRequestedSlides:(id)slides;
- (BOOL)_nearingEndForSerializer:(id)serializer;
- (BOOL)beginLiveUpdateForHitBlob:(id)blob;
- (BOOL)effect:(id)effect requestedNumberOfSlides:(unint64_t)slides firstSlideIndexStillNeeded:(unint64_t)needed;
- (BOOL)endLiveUpdateForHitBlob:(id)blob;
- (BOOL)getOnScreenVertices:(CGPoint)vertices[4] forHitBlob:(id)blob;
- (BOOL)isInTransition;
- (BOOL)nearingEndForSerializer:(id)serializer;
- (BOOL)updateFramebuffer;
- (CGImage)snapshotAsCGImageForTime:(double)time withSize:(CGSize)size;
- (CGPoint)convertPoint:(CGPoint)point toHitBlob:(id)blob;
- (CGSize)size;
- (MRMarimbaLayer)init;
- (MRRenderer)renderer;
- (double)relativeTime;
- (double)relativeTimeForBackgroundAudio;
- (double)relativeTimeForLayer:(id)layer;
- (double)startTimeForSlide:(id)slide;
- (double)timeForSlide:(id)slide;
- (double)timeRemaining;
- (id)_currentEffectContainer;
- (id)_currentEffectLayer;
- (id)_effectContainerForTime:(double)time;
- (id)_firstEffectContainer;
- (id)blobHitAtPoint:(CGPoint)point fromObjectsForObjectIDs:(id)ds localPoint:(CGPoint *)localPoint;
- (id)currentSlide;
- (id)currentSlides;
- (id)displayedEffectContainers;
- (int64_t)_mainLayerIndex;
- (void)_postNotificationForSlideChange:(id)change;
- (void)_reauthorForAspectRatioChange;
- (void)_slideDidAppear:(id)appear;
- (void)beginEditingOfText:(id)text;
- (void)beginGesture:(id)gesture;
- (void)beginMorphingToAspectRatio:(double)ratio andOrientation:(int)orientation withDuration:(double)duration switchToDocument:(id)document;
- (void)callbackThread:(id)thread;
- (void)cancelGesture:(id)gesture;
- (void)cleanup;
- (void)dealloc;
- (void)destroyFramebuffer;
- (void)didAddEffects:(id)effects;
- (void)didApplyStyle:(id)style;
- (void)didLiveChanged:(id)changed;
- (void)doGesture:(id)gesture;
- (void)endGesture:(id)gesture;
- (void)endMorphing;
- (void)gotoBeginning;
- (void)gotoEnd;
- (void)gotoNextSlide:(BOOL)slide;
- (void)gotoNextSlideLegacy;
- (void)gotoPreviousSlide:(BOOL)slide;
- (void)gotoPreviousSlideLegacy;
- (void)gotoSlide:(id)slide;
- (void)gotoSlideLegacy:(id)legacy;
- (void)gotoText:(id)text;
- (void)moveToEffectContainer:(id)container withStartOffset:(double)offset toStopOffset:(double)stopOffset blocking:(BOOL)blocking;
- (void)moveToNextEffectContainer;
- (void)moveToPreviousEffectContainer;
- (void)moveToSubtitleForSlide:(id)slide;
- (void)moveToTitleSlide;
- (void)nextFrame;
- (void)pause;
- (void)play;
- (void)prevFrame;
- (void)removeEffectContainersBeforeTime:(double)time;
- (void)setBounds:(CGRect)bounds;
- (void)setContentsScale:(double)scale;
- (void)setDocument:(id)document;
- (void)setEnableSlideDidChangeNotification:(BOOL)notification;
- (void)setInteractivityIsEnabled:(BOOL)enabled;
- (void)setLastSlideChange:(id)change;
- (void)setRendererSizeIsLocked:(BOOL)locked;
- (void)setStopWithVideo:(BOOL)video;
- (void)setSuspended:(BOOL)suspended;
- (void)setTime:(double)time;
- (void)setupFaceDetection;
- (void)togglePlayback;
- (void)updateSizeOfRenderer:(id)renderer;
- (void)warmupRenderer;
- (void)watcherThread:(id)thread;
- (void)whenTransitionIsFinishedSendAction:(SEL)action toTarget:(id)target;
@end

@implementation MRMarimbaLayer

- (double)relativeTime
{
  [(MPDocument *)[(MRMarimbaLayer *)self document] duration];
  v4 = v3;
  result = 0.0;
  if (v4 > 0.0)
  {
    [(MRMarimbaLayer *)self time];
    v7 = v6;
    [(MPDocument *)[(MRMarimbaLayer *)self document] videoDuration];
    return fmod(v7, v8);
  }

  return result;
}

- (double)relativeTimeForBackgroundAudio
{
  [-[MPDocument audioPlaylist](-[MRMarimbaLayer document](self "document")];
  v4 = v3;
  result = 0.0;
  if (v4 > 0.0)
  {
    [(MRMarimbaLayer *)self time];
    v7 = v6;
    [-[MPDocument audioPlaylist](-[MRMarimbaLayer document](self "document")];
    return fmod(v7, v8);
  }

  return result;
}

- (double)relativeTimeForLayer:(id)layer
{
  if ([(MPDocument *)[(MRMarimbaLayer *)self document] loopingMode]== &dword_0 + 2)
  {
    [(MRMarimbaLayer *)self time];
    v6 = v5;
    [layer timeIn];
    v8 = v7;
    [layer duration];

    return fmod(v6, v8 + v9);
  }

  else
  {

    [(MRMarimbaLayer *)self relativeTime];
  }

  return result;
}

- (id)displayedEffectContainers
{
  [(MRMarimbaLayer *)self relativeTime];
  v4 = v3;
  document = [(MRMarimbaLayer *)self document];

  return [MPUtilities effectContainersForTime:document inDocument:v4];
}

- (void)moveToEffectContainer:(id)container withStartOffset:(double)offset toStopOffset:(double)stopOffset blocking:(BOOL)blocking
{
  blockingCopy = blocking;
  [container startTime];
  if (offset == -1.0)
  {
    v11 = v10 + 0.00001 + stopOffset;

    [(MRMarimbaLayer *)self setTime:v11];
  }

  else
  {
    v12 = v10 - offset;
    v13 = v10 + 0.00001;
    [(MRMarimbaLayer *)self setTime:v12];
    isPlaying = [(MRMarimbaLayer *)self isPlaying];
    if (![(MRMarimbaLayer *)self isPlaying])
    {
      [(MRMarimbaLayer *)self play];
    }

    v15 = v13 + stopOffset;
    [(MRMarimbaLayer *)self setBailTimeWatcher:0];
    if (blockingCopy)
    {
      v16 = [NSArray arrayWithObjects:[NSNumber numberWithDouble:v15], [NSNumber numberWithBool:isPlaying], 0];

      [(MRMarimbaLayer *)self performSelector:"watcherThread:" withObject:v16];
    }

    else
    {
      v17 = [NSArray arrayWithObjects:[NSNumber numberWithDouble:v15], [NSNumber numberWithBool:isPlaying], 0];

      [NSThread detachNewThreadSelector:"watcherThread:" toTarget:self withObject:v17];
    }
  }
}

- (void)moveToNextEffectContainer
{
  _currentEffectContainer = [(MRMarimbaLayer *)self _currentEffectContainer];
  if (_currentEffectContainer)
  {
    v4 = _currentEffectContainer;
    v5 = [objc_msgSend(_currentEffectContainer "parentLayer")];
    index = [v4 index];
    v7 = index < ([v5 count] - 1) ? (index + 1) : 0;
    v8 = [v5 objectAtIndex:v7];
    if (v8)
    {
      v9 = v8;
      [v8 introTransitionDuration];

      [(MRMarimbaLayer *)self moveToEffectContainer:v9 withStartOffset:0 toStopOffset:-1.0 blocking:v10];
    }
  }
}

- (void)moveToPreviousEffectContainer
{
  _currentEffectContainer = [(MRMarimbaLayer *)self _currentEffectContainer];
  if (_currentEffectContainer)
  {
    v4 = _currentEffectContainer;
    v5 = [objc_msgSend(_currentEffectContainer "parentLayer")];
    index = [v4 index];
    if (index <= 0)
    {
      index = [v5 count];
    }

    v7 = [v5 objectAtIndex:index - 1];
    if (v7)
    {
      v8 = v7;
      [v7 introTransitionDuration];

      [(MRMarimbaLayer *)self moveToEffectContainer:v8 withStartOffset:0 toStopOffset:-1.0 blocking:v9];
    }
  }
}

- (void)moveToTitleSlide
{
  titleEffect = [(MPDocument *)[(MRMarimbaLayer *)self document] titleEffect];
  if (titleEffect)
  {
    v4 = titleEffect;
    effectID = [titleEffect effectID];
    [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v7 = v6;
    if (([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] & 1) == 0)
    {
      v8 = +[MREffectManager sharedManager];
      formattedAttributes = [v4 formattedAttributes];
      effectID2 = [v4 effectID];
      slides = [v4 slides];
      texts = [v4 texts];
      [(MPDocument *)[(MRMarimbaLayer *)self document] aspectRatio];
      v13 = [v8 customTimingWithEffectID:effectID2 effectAttributes:formattedAttributes slideInformation:slides textInformation:texts inAspectRatio:?];
      if (v13)
      {
        v14 = v13;
        [v4 fullDuration];
        v16 = v15;
        [v14 mainDuration];
        v18 = v17;
        [v14 phaseInDuration];
        v20 = v18 + v19;
        [v14 phaseOutDuration];
        v22 = v16 / (v20 + v21);
      }

      else
      {
        [v8 defaultMainDurationForEffectID:effectID];
        v24 = v23;
        [v8 defaultPhaseInDurationForEffectID:effectID];
        v26 = v25;
        [v8 defaultPhaseOutDurationForEffectID:effectID];
        v28 = v27;
        [v4 fullDuration];
        v22 = v29 / (v24 + v26 + v28);
      }

      v7 = v7 * v22;
    }

    [(MRMarimbaLayer *)self setTime:v7];
  }
}

- (void)moveToSubtitleForSlide:(id)slide
{
  parentSubtitleEffect = [slide parentSubtitleEffect];
  if (parentSubtitleEffect)
  {
    v5 = parentSubtitleEffect;
    effectID = [parentSubtitleEffect effectID];
    [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v8 = v7;
    v9 = +[MREffectManager sharedManager];
    formattedAttributes = [v5 formattedAttributes];
    effectID2 = [v5 effectID];
    slides = [v5 slides];
    texts = [v5 texts];
    [(MPDocument *)[(MRMarimbaLayer *)self document] aspectRatio];
    v14 = [v9 customTimingWithEffectID:effectID2 effectAttributes:formattedAttributes slideInformation:slides textInformation:texts inAspectRatio:?];
    if (v14)
    {
      v15 = v14;
      [v5 fullDuration];
      v17 = v16;
      [v15 mainDuration];
      v19 = v18;
      [v15 phaseInDuration];
      v21 = v19 + v20;
      [v15 phaseOutDuration];
      v23 = v17 / (v21 + v22);
    }

    else
    {
      [v9 defaultMainDurationForEffectID:effectID];
      v25 = v24;
      [v9 defaultPhaseInDurationForEffectID:effectID];
      v27 = v26;
      [v9 defaultPhaseOutDurationForEffectID:effectID];
      v29 = v28;
      [v5 fullDuration];
      v23 = v30 / (v25 + v27 + v29);
    }

    v31 = v8 * v23;
    [objc_msgSend(v5 "parentContainer")];
    v33 = v31 + v32;
    [(MPDocument *)[(MRMarimbaLayer *)self document] videoDuration];
    if (v33 < v34)
    {
      v34 = v33;
    }

    [(MRMarimbaLayer *)self setTime:v34];
  }
}

- (id)_currentEffectLayer
{
  document = [(MRMarimbaLayer *)self document];
  _mainLayerIndex = [(MRMarimbaLayer *)self _mainLayerIndex];
  result = [(MPDocument *)document layers];
  if (result)
  {
    v6 = result;
    result = [result count];
    if (result)
    {
      if (_mainLayerIndex >= [v6 count])
      {
        _mainLayerIndex = [v6 count] - 1;
      }

      v7 = [v6 objectAtIndex:_mainLayerIndex];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)_currentEffectContainer
{
  document = [(MRMarimbaLayer *)self document];
  displayedEffectContainers = [(MRMarimbaLayer *)self displayedEffectContainers];
  if (!displayedEffectContainers)
  {
    return 0;
  }

  v5 = displayedEffectContainers;
  if (![displayedEffectContainers count])
  {
    return 0;
  }

  _mainLayerIndex = [(MRMarimbaLayer *)self _mainLayerIndex];
  layers = [(MPDocument *)document layers];
  if (!layers)
  {
    return 0;
  }

  v8 = layers;
  if (![layers count])
  {
    return 0;
  }

  if (_mainLayerIndex >= [v8 count])
  {
    _mainLayerIndex = [v8 count] - 1;
  }

  v9 = [v8 objectAtIndex:_mainLayerIndex];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  _firstEffectContainer = 0;
  v13 = *v21;
  v14 = -1.0;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(v5);
      }

      v16 = *(*(&v20 + 1) + 8 * i);
      if (v9 == [v16 parentLayer])
      {
        [v16 startTime];
        if (v17 > v14)
        {
          [v16 startTime];
          v14 = v18;
          _firstEffectContainer = v16;
        }
      }
    }

    v11 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v11);
  if (!_firstEffectContainer)
  {
LABEL_18:
    _firstEffectContainer = [(MRMarimbaLayer *)self _firstEffectContainer];
    if (!_firstEffectContainer)
    {
      return [(MRMarimbaLayer *)self _effectContainerForTime:0.0];
    }
  }

  return _firstEffectContainer;
}

- (BOOL)isInTransition
{
  _currentEffectContainer = [(MRMarimbaLayer *)self _currentEffectContainer];
  if (_currentEffectContainer)
  {
    v4 = _currentEffectContainer;
    _currentEffectContainer = [_currentEffectContainer countOfEffects];
    if (_currentEffectContainer)
    {
      _currentEffectContainer = [v4 transition];
      if (_currentEffectContainer)
      {
        v5 = _currentEffectContainer;
        [_currentEffectContainer duration];
        if (v6 == 0.0)
        {
          LOBYTE(_currentEffectContainer) = 0;
        }

        else
        {
          [(MRMarimbaLayer *)self time];
          v8 = v7;
          [v4 startTime];
          v10 = v8 - v9;
          [objc_msgSend(v4 "parentLayer")];
          v12 = v10 - v11;
          [v5 duration];
          LOBYTE(_currentEffectContainer) = v12 < v13;
        }
      }
    }
  }

  return _currentEffectContainer;
}

- (void)whenTransitionIsFinishedSendAction:(SEL)action toTarget:(id)target
{
  [(MRMarimbaLayer *)self setBailTimeWatcher:1];
  _currentEffectContainer = [(MRMarimbaLayer *)self _currentEffectContainer];
  if ([_currentEffectContainer countOfEffects] && (v8 = objc_msgSend(_currentEffectContainer, "transition")) != 0 && (v9 = v8, objc_msgSend(v8, "duration"), v10 != 0.0) && (-[MRMarimbaLayer time](self, "time"), v12 = v11, objc_msgSend(_currentEffectContainer, "startTime"), v14 = v12 - v13, objc_msgSend(objc_msgSend(_currentEffectContainer, "parentLayer"), "timeIn"), v16 = v14 - v15, objc_msgSend(v9, "duration"), v16 <= v17) && v16 >= 0.0)
  {
    [objc_msgSend(_currentEffectContainer "parentLayer")];
    v19 = v18;
    [_currentEffectContainer startTime];
    v21 = v19 + v20;
    [v9 duration];
    v23 = v21 + v22;
    [(MRMarimbaLayer *)self setBailTimeWatcher:0];
    v24 = [NSArray arrayWithObjects:[NSNumber numberWithDouble:v23], target, NSStringFromSelector(action), 0];

    [NSThread detachNewThreadSelector:"callbackThread:" toTarget:self withObject:v24];
  }

  else
  {

    [target performSelector:action withObject:self];
  }
}

- (id)_firstEffectContainer
{
  document = [(MRMarimbaLayer *)self document];
  _mainLayerIndex = [(MRMarimbaLayer *)self _mainLayerIndex];
  if (_mainLayerIndex >= [-[MPDocument layers](document "layers")])
  {
    return 0;
  }

  v5 = [-[MPDocument layers](document "layers")];
  if ([v5 countOfEffectContainers] < 1)
  {
    return 0;
  }

  effectContainers = [v5 effectContainers];

  return [effectContainers objectAtIndex:0];
}

- (id)_effectContainerForTime:(double)time
{
  document = [(MRMarimbaLayer *)self document];
  v6 = [MPUtilities effectContainersForTime:document inDocument:time];
  v7 = [-[MPDocument layers](document "layers")];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v8)
  {
    return [v6 anyObject];
  }

  v9 = v8;
  v10 = *v15;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v15 != v10)
    {
      objc_enumerationMutation(v6);
    }

    v12 = *(*(&v14 + 1) + 8 * v11);
    if (v7 == [v12 parentLayer])
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      return [v6 anyObject];
    }
  }
}

- (int64_t)_mainLayerIndex
{
  v3 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v3 >= [-[MPDocument layers](-[MRMarimbaLayer document](self "document")])
  {
    return [-[MPDocument layers](-[MRMarimbaLayer document](self "document")] - 1;
  }

  return v3;
}

- (void)callbackThread:(id)thread
{
  v5 = objc_autoreleasePoolPush();
  [objc_msgSend(thread objectAtIndex:{0), "doubleValue"}];
  v7 = v6;
  v8 = [thread objectAtIndex:1];
  v9 = NSSelectorFromString([thread objectAtIndex:2]);
  while (1)
  {
    [(MRMarimbaLayer *)self time];
    if (v10 > v7)
    {
      break;
    }

    if (![(MRMarimbaLayer *)self isPlaying]|| [(MRMarimbaLayer *)self bailTimeWatcher])
    {
      goto LABEL_7;
    }
  }

  [v8 performSelectorOnMainThread:v9 withObject:self waitUntilDone:0];
LABEL_7:

  objc_autoreleasePoolPop(v5);
}

- (void)watcherThread:(id)thread
{
  v5 = objc_autoreleasePoolPush();
  [objc_msgSend(thread objectAtIndex:{0), "doubleValue"}];
  v7 = v6;
  while (1)
  {
    [(MRMarimbaLayer *)self time];
    if (v8 > v7)
    {
      break;
    }

    if (![(MRMarimbaLayer *)self isPlaying]|| [(MRMarimbaLayer *)self bailTimeWatcher])
    {
      goto LABEL_8;
    }
  }

  if (([objc_msgSend(thread "lastObject")] & 1) == 0)
  {
    [(MRMarimbaLayer *)self pause];
  }

LABEL_8:

  objc_autoreleasePoolPop(v5);
}

- (id)currentSlides
{
  v3 = +[NSMutableArray array];
  _currentEffectContainer = [(MRMarimbaLayer *)self _currentEffectContainer];
  if (!_currentEffectContainer)
  {
    _currentEffectLayer = [(MRMarimbaLayer *)self _currentEffectLayer];
    if (!_currentEffectLayer)
    {
      return v3;
    }

    v8 = _currentEffectLayer;
    [(MRMarimbaLayer *)self relativeTime];
    v10 = v14;
    v12 = 0.0;
    v6 = v8;
    goto LABEL_7;
  }

  v5 = _currentEffectContainer;
  if (![objc_msgSend(_currentEffectContainer "effects")])
  {
    [v5 parentLayer];
    return v3;
  }

  v6 = [objc_msgSend(v5 "effects")];
  parentLayer = [v5 parentLayer];
  if (v6)
  {
    v8 = parentLayer;
    [(MRMarimbaLayer *)self relativeTime];
    v10 = v9;
    [v5 startTime];
    v12 = v11;
LABEL_7:
    [objc_msgSend(objc_msgSend(v8 "parent")];
    v15 = [objc_msgSend(v6 "slides")];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = v10 - v12;
      v19 = *v27;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          [v21 showTime];
          if (v18 >= v22)
          {
            v23 = v22;
            [v21 showDuration];
            if (v18 < v23 + v24)
            {
              [v3 addObject:v21];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

    [objc_msgSend(objc_msgSend(v8 "parent")];
  }

  return v3;
}

- (id)currentSlide
{
  _currentEffectContainer = [(MRMarimbaLayer *)self _currentEffectContainer];
  v4 = _currentEffectContainer;
  if (_currentEffectContainer)
  {
    if ([objc_msgSend(_currentEffectContainer "effects")])
    {
      v5 = [objc_msgSend(v4 "effects")];
      parentLayer = [v4 parentLayer];
      if (v5)
      {
        v7 = parentLayer;
        [(MRMarimbaLayer *)self relativeTime];
        v9 = v8;
        [v4 startTime];
        v11 = v10;
        goto LABEL_7;
      }
    }

    else
    {
      [v4 parentLayer];
    }

    return 0;
  }

  _currentEffectLayer = [(MRMarimbaLayer *)self _currentEffectLayer];
  if (!_currentEffectLayer)
  {
    return 0;
  }

  v5 = _currentEffectLayer;
  [(MRMarimbaLayer *)self relativeTime];
  v9 = v13;
  v11 = 0.0;
  v7 = v5;
LABEL_7:
  [objc_msgSend(objc_msgSend(v7 "parent")];
  v14 = [objc_msgSend(v5 "slides")];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v15)
  {
    goto LABEL_31;
  }

  v16 = v15;
  lastObject = 0;
  v18 = v9 - v11;
  v19 = *v29;
  v20 = -1.0;
LABEL_9:
  v21 = 0;
  v22 = v20;
  while (1)
  {
    if (*v29 != v19)
    {
      objc_enumerationMutation(v14);
    }

    v23 = *(*(&v28 + 1) + 8 * v21);
    [v23 showDisplayTime];
    v20 = v24;
    [(MRRenderer *)[(MRMarimbaLayer *)self renderer] timeQuantum];
    if (v18 < v20 - v25)
    {
      break;
    }

    if (v20 != v22 || v4 == 0)
    {
      lastObject = v23;
    }

    v21 = v21 + 1;
    v22 = v20;
    if (v16 == v21)
    {
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        goto LABEL_9;
      }

      break;
    }
  }

  if (!lastObject)
  {
LABEL_31:
    if ([v14 count])
    {
      lastObject = [v14 lastObject];
    }

    else
    {
      lastObject = 0;
    }
  }

  [objc_msgSend(objc_msgSend(v7 "parent")];
  return lastObject;
}

- (void)removeEffectContainersBeforeTime:(double)time
{
  v4 = [(MRMarimbaLayer *)self _effectContainerForTime:time];
  if (v4)
  {
    v5 = v4;
    parentLayer = [v4 parentLayer];
    if ([parentLayer countOfEffectContainers] >= 40)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1214A8;
      block[3] = &unk_1AB848;
      block[4] = v5;
      block[5] = self;
      block[6] = parentLayer;
      dispatch_async([(MRRenderer *)[(MRMarimbaLayer *)self renderer] renderDispatchQueue], block);
    }
  }
}

- (void)gotoNextSlide:(BOOL)slide
{
  slideCopy = slide;
  if ([(MRRenderer *)[(MRMarimbaLayer *)self renderer] currentFocusedSlideAsset])
  {
    renderer = [(MRMarimbaLayer *)self renderer];

    [(MRRenderer *)renderer gotoNextFocusedSlide:slideCopy];
  }

  else
  {
    styleID = [(MPDocument *)[(MRMarimbaLayer *)self document] styleID];
    if (([styleID isEqualToString:@"Floating"] & 1) != 0 || (objc_msgSend(styleID, "isEqualToString:", @"ShiftingTiles") & 1) != 0 || (objc_msgSend(styleID, "hasSuffix:", @"Mobile") & 1) != 0 || objc_msgSend(styleID, "isEqualToString:", @"PhotoWall"))
    {

      [(MRMarimbaLayer *)self gotoNextSlideLegacy];
    }

    else
    {
      renderer2 = [(MRMarimbaLayer *)self renderer];

      [(MRRenderer *)renderer2 gotoNextInterestingTime:slideCopy];
    }
  }
}

- (void)gotoPreviousSlide:(BOOL)slide
{
  slideCopy = slide;
  if ([(MRRenderer *)[(MRMarimbaLayer *)self renderer] currentFocusedSlideAsset])
  {
    renderer = [(MRMarimbaLayer *)self renderer];

    [(MRRenderer *)renderer gotoPreviousFocusedSlide:slideCopy];
  }

  else
  {
    styleID = [(MPDocument *)[(MRMarimbaLayer *)self document] styleID];
    if (([styleID isEqualToString:@"Floating"] & 1) != 0 || (objc_msgSend(styleID, "isEqualToString:", @"ShiftingTiles") & 1) != 0 || (objc_msgSend(styleID, "hasSuffix:", @"Mobile") & 1) != 0 || objc_msgSend(styleID, "isEqualToString:", @"PhotoWall"))
    {

      [(MRMarimbaLayer *)self gotoPreviousSlideLegacy];
    }

    else
    {
      renderer2 = [(MRMarimbaLayer *)self renderer];

      [(MRRenderer *)renderer2 gotoPreviousInterestingTime:slideCopy];
    }
  }
}

- (void)gotoSlide:(id)slide
{
  isAboutToPlay = [(MRMarimbaLayer *)self isAboutToPlay];
  if (((isAboutToPlay & 1) != 0 || -[MRMarimbaLayer isPlaying](self, "isPlaying")) && [slide hasMovie])
  {
    [(MRMarimbaLayer *)self startTimeForSlide:slide];
  }

  else
  {
    [(MRMarimbaLayer *)self timeForSlide:slide];
  }

  v7 = v6;
  if (isAboutToPlay)
  {
    [(MRRenderer *)[(MRMarimbaLayer *)self renderer] setTime:v6];
  }

  renderer = [(MRMarimbaLayer *)self renderer];

  [(MRRenderer *)renderer setSlideshowTime:v7];
}

- (void)gotoText:(id)text
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  parentEffect = [objc_msgSend(objc_msgSend(text parentEffect];
  v6 = [parentEffect countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(parentEffect);
        }

        v8 |= [*(*(&v12 + 1) + 8 * i) hasMovies];
      }

      v7 = [parentEffect countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  if (([-[MPDocument styleID](-[MRMarimbaLayer document](self "document")] & 1) != 0 || (v8) && (-[MRMarimbaLayer isAboutToPlay](self, "isAboutToPlay") || -[MRMarimbaLayer isPlaying](self, "isPlaying")))
  {
    renderer = [(MRMarimbaLayer *)self renderer];
    [objc_msgSend(objc_msgSend(text "parentEffect")];
  }

  else
  {
    renderer = [(MRMarimbaLayer *)self renderer];
    [MPUtilities displayTimeForText:text];
  }

  [(MRRenderer *)renderer setSlideshowTime:?];
}

- (double)timeForSlide:(id)slide
{
  if (!slide)
  {
    v6 = 0.0;
LABEL_15:
    [(MPDocument *)[(MRMarimbaLayer *)self document] fadeInDuration];
    v21 = v6 < v20;
    result = v6;
    if (v21)
    {
      document = [(MRMarimbaLayer *)self document];

      [(MPDocument *)document fadeInDuration];
    }

    return result;
  }

  [slide parentEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [slide showDisplayTime];
    v6 = v5;
  }

  else
  {
    v7 = [objc_msgSend(slide "parentEffect")];
    if ([slide hasMovie] && objc_msgSend(objc_msgSend(objc_msgSend(slide, "parentEffect"), "effectID"), "isEqualToString:", @"JustASlide"))
    {
      [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
      v9 = v8;
      [v7 introTransitionDuration];
      v11 = v10;
      if (v9 >= v10)
      {
        [v7 duration];
        if (v9 <= v12)
        {
          v11 = v9;
        }
      }

      [v7 startTime];
      v6 = v11 + v13 + 0.00001;
    }

    else
    {
      hasMovie = [slide hasMovie];
      [v7 startTime];
      v16 = v15;
      [slide showDisplayTime];
      v18 = v16 + v17;
      if (hasMovie)
      {
        v6 = v18;
      }

      else
      {
        v6 = v18 + 0.1;
      }
    }
  }

  result = 0.0;
  if (v6 >= 0.0)
  {
    goto LABEL_15;
  }

  return result;
}

- (double)startTimeForSlide:(id)slide
{
  result = 0.0;
  if (slide)
  {
    [slide parentEffect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [slide showDisplayStartTime];
    }

    else
    {
      [objc_msgSend(objc_msgSend(slide "parentEffect")];
      v6 = v5;
      [slide showDisplayStartTime];
      result = v6 + v7;
    }
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)gotoNextSlideLegacy
{
  styleID = [(MPDocument *)[(MRMarimbaLayer *)self document] styleID];
  isPlaying = [(MRMarimbaLayer *)self isPlaying];
  if (isPlaying)
  {
    [(MRMarimbaLayer *)self pause];
  }

  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v5 <= 0.0)
  {
    [(MRMarimbaLayer *)self relativeTime];
    v9 = v8;
    currentSlide = [(MRMarimbaLayer *)self currentSlide];
    v11 = currentSlide == 0;
    if (currentSlide)
    {
      do
      {
        parentEffect = [currentSlide parentEffect];
        index = [currentSlide index];
        if (index == [objc_msgSend(objc_msgSend(currentSlide "parentEffect")] - 1)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 || (v14 = [parentEffect parentContainer]) == 0)
          {
            v18 = 1;
          }

          else
          {
            v15 = v14;
            index2 = [v14 index];
            v17 = [objc_msgSend(objc_msgSend(v15 "parentLayer")] - 1;
            v18 = index2 == v17;
            if (index2 == v17)
            {
              v19 = [objc_msgSend(objc_msgSend(v15 "parentLayer")];
            }

            else
            {
              v27 = [v15 index] + 1;
              v28 = [objc_msgSend(v15 "parentLayer")];
              v29 = [v15 index] + 1;
              v30 = v28;
              while (1)
              {
                v19 = [v30 objectAtIndex:v29];
                if (v27 >= [objc_msgSend(objc_msgSend(v19 "parentLayer")] - 1 || objc_msgSend(objc_msgSend(v19, "effects"), "count"))
                {
                  break;
                }

                ++v27;
                v30 = [objc_msgSend(v19 "parentLayer")];
                v29 = v27;
              }
            }

            parentEffect = [objc_msgSend(v19 "effects")];
          }

          if (![objc_msgSend(parentEffect "slides")])
          {
            goto LABEL_33;
          }

          currentSlide = [objc_msgSend(parentEffect "slides")];
          if (!currentSlide)
          {
            goto LABEL_33;
          }
        }

        else
        {
          currentSlide = [objc_msgSend(parentEffect "slides")];
          v18 = 0;
          if (!currentSlide)
          {
            goto LABEL_33;
          }
        }

        parentEffect2 = [currentSlide parentEffect];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (v21 = [parentEffect2 parentContainer]) == 0)
        {
          [currentSlide showDisplayTime];
        }

        else
        {
          [v21 startTime];
          v23 = v22;
          [currentSlide showDisplayTime];
          v25 = v23 + v24 + 0.00001;
        }

        v26 = !v18;
        if (v25 > v9)
        {
          v26 = 0;
        }
      }

      while (v26);
      v11 = 0;
    }

    if (v11)
    {
LABEL_33:
      _currentEffectContainer = [(MRMarimbaLayer *)self _currentEffectContainer];
      if (_currentEffectContainer)
      {
        v32 = _currentEffectContainer;
        parentLayer = [_currentEffectContainer parentLayer];
        index3 = [v32 index];
        v35 = [objc_msgSend(parentLayer "effectContainers")];
        for (i = 0; ; i = [effectContainers objectAtIndex:index3 - v38])
        {
          ++index3;
          if (i)
          {
            if ([objc_msgSend(i "effects")])
            {
              break;
            }
          }

          effectContainers = [parentLayer effectContainers];
          if (index3 >= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = 0;
          }
        }

        if ([objc_msgSend(i "effects")])
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          effects = [i effects];
          v40 = [effects countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v49;
            while (2)
            {
              for (j = 0; j != v41; j = j + 1)
              {
                if (*v49 != v42)
                {
                  objc_enumerationMutation(effects);
                }

                v44 = *(*(&v48 + 1) + 8 * j);
                if ([objc_msgSend(v44 "slides")])
                {
                  v47 = v44;
                  goto LABEL_55;
                }
              }

              v41 = [effects countByEnumeratingWithState:&v48 objects:v52 count:16];
              if (v41)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_59:
        [(MRMarimbaLayer *)self moveToNextEffectContainer];
        if (!isPlaying)
        {
          return;
        }

LABEL_57:
        [(MRMarimbaLayer *)self play];
        return;
      }

      _currentEffectLayer = [(MRMarimbaLayer *)self _currentEffectLayer];
      if (!_currentEffectLayer)
      {
        goto LABEL_59;
      }

      v46 = _currentEffectLayer;
      if (![objc_msgSend(_currentEffectLayer "slides")])
      {
        goto LABEL_59;
      }

      v47 = v46;
LABEL_55:
      currentSlide = [objc_msgSend(v47 "slides")];
      if (!currentSlide)
      {
        goto LABEL_59;
      }
    }

    [(MRMarimbaLayer *)self gotoSlideLegacy:currentSlide];
    if (!isPlaying)
    {
      return;
    }

    goto LABEL_57;
  }

  v6 = v5;
  [(MRMarimbaLayer *)self time];
  [(MRMarimbaLayer *)self setTime:v6 + v7];
  if (isPlaying)
  {

    [(MRMarimbaLayer *)self play];
  }
}

- (void)gotoPreviousSlideLegacy
{
  styleID = [(MPDocument *)[(MRMarimbaLayer *)self document] styleID];
  isPlaying = [(MRMarimbaLayer *)self isPlaying];
  if (isPlaying)
  {
    [(MRMarimbaLayer *)self pause];
  }

  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v5 > 0.0)
  {
    v6 = v5;
    [(MRMarimbaLayer *)self time];
    v8 = v7 - v6;
    [objc_msgSend(objc_msgSend(-[MRMarimbaLayer currentSlides](self "currentSlides")];
    if (v8 >= v9)
    {
      v9 = v8;
    }

    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    [(MRMarimbaLayer *)self setTime:v9];
    if (isPlaying)
    {
      goto LABEL_57;
    }

    return;
  }

  [(MRMarimbaLayer *)self relativeTime];
  v11 = v10;
  currentSlides = [(MRMarimbaLayer *)self currentSlides];
  v13 = currentSlides;
  if (currentSlides)
  {
    if ([currentSlides count])
    {
      v13 = [v13 objectAtIndex:0];
    }

    else
    {
      v13 = 0;
    }
  }

  if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
  {
    currentSlide = [-[MRMarimbaLayer currentSlides](self "currentSlides")];
  }

  else
  {
    currentSlide = [(MRMarimbaLayer *)self currentSlide];
  }

  v15 = currentSlide;
  v16 = v11;
  if (currentSlide)
  {
    parentEffect = [currentSlide parentEffect];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (v18 = [parentEffect parentContainer]) == 0)
    {
      [v15 showDisplayTime];
      v16 = v22;
    }

    else
    {
      [v18 startTime];
      v20 = v19;
      [v15 showDisplayTime];
      v16 = v20 + v21;
    }
  }

  v23 = 0;
  do
  {
    v24 = v11 < v16 || v15 == 0;
    if (v24 || v23)
    {
      goto LABEL_51;
    }

    parentEffect2 = [v15 parentEffect];
    if ([v15 index])
    {
      v15 = [objc_msgSend(parentEffect2 "slides")];
      v23 = 0;
      if (!v15)
      {
        goto LABEL_49;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || (v26 = [parentEffect2 parentContainer]) == 0)
      {
        v23 = 1;
        v31 = parentEffect2;
      }

      else
      {
        v27 = v26;
        index = [v26 index];
        v23 = index == 0;
        if (index)
        {
          index2 = [v27 index];
          v30 = [objc_msgSend(objc_msgSend(v27 "parentLayer")];
          if (index2 >= 2)
          {
            do
            {
              if ([objc_msgSend(v30 "effects")])
              {
                break;
              }

              v30 = [objc_msgSend(objc_msgSend(v30 "parentLayer")];
              --index2;
            }

            while (index2 > 1);
          }
        }

        else
        {
          v30 = [objc_msgSend(objc_msgSend(v27 "parentLayer")];
        }

        v31 = [objc_msgSend(v30 "effects")];
      }

      if (![objc_msgSend(v31 "slides")])
      {
        v15 = 0;
        goto LABEL_49;
      }

      v15 = [objc_msgSend(v31 "slides")];
      if (!v15)
      {
        goto LABEL_49;
      }
    }

    parentEffect3 = [v15 parentEffect];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (v33 = [parentEffect3 parentContainer]) == 0)
    {
      [v15 showDisplayTime];
    }

    else
    {
      [v33 startTime];
      v35 = v34;
      [v15 showDisplayTime];
      v37 = v35 + v36;
    }

    v11 = v37 + 0.00001;
LABEL_49:
    [parentEffect2 lowestDisplayTime];
  }

  while (v11 >= v38);
  [parentEffect2 lowestDisplayTime];
  if (v39 < 0.0)
  {
LABEL_51:
    if (v15)
    {
      [(MRMarimbaLayer *)self gotoSlideLegacy:v15];
      if (!isPlaying)
      {
        return;
      }
    }

    else
    {
      [(MRMarimbaLayer *)self moveToPreviousEffectContainer];
      if (!isPlaying)
      {
        return;
      }
    }

    goto LABEL_57;
  }

  [(MRMarimbaLayer *)self setTime:?];
  if (!isPlaying)
  {
    return;
  }

LABEL_57:

  [(MRMarimbaLayer *)self play];
}

- (void)gotoSlideLegacy:(id)legacy
{
  v4 = 0.0;
  if (legacy)
  {
    [legacy parentEffect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [legacy showDisplayTime];
    }

    else
    {
      v6 = [objc_msgSend(legacy "parentEffect")];
      if ([legacy hasMovie] && objc_msgSend(objc_msgSend(objc_msgSend(legacy, "parentEffect"), "effectID"), "isEqualToString:", @"JustASlide"))
      {
        [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
        v8 = v7;
        [v6 introTransitionDuration];
        v10 = v9;
        if (v8 >= v9)
        {
          [v6 duration];
          if (v8 <= v11)
          {
            v10 = v8;
          }
        }

        [v6 startTime];
        v13 = v10 + v12;
        v14 = 0.00001;
      }

      else
      {
        [v6 startTime];
        v16 = v15;
        [legacy showDisplayTime];
        v13 = v16 + v17;
        v14 = 0.1;
      }

      v4 = v13 + v14;
    }
  }

  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  [(MRMarimbaLayer *)self setTime:v4];
}

- (void)_slideDidAppear:(id)appear
{
  object = [appear object];
  if (object == [(MRMarimbaLayer *)self renderer])
  {
    userInfo = [appear userInfo];
    [userInfo objectForKey:@"layer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_msgSend(objc_msgSend(userInfo objectForKey:{@"slide", "asset"), "path"}];
      if (([v7 isEqualToString:{-[MRMarimbaLayer lastSlideChange](self, "lastSlideChange")}] & 1) == 0)
      {
        [(MRMarimbaLayer *)self setLastSlideChange:v7];

        [NSThread detachNewThreadSelector:"_postNotificationForSlideChange:" toTarget:self withObject:userInfo];
      }
    }
  }
}

- (void)_postNotificationForSlideChange:(id)change
{
  v5 = objc_autoreleasePoolPush();
  v6 = [change objectForKey:@"layer"];
  v7 = [change objectForKey:@"slide"];
  montage = [(MPDocument *)[(MRMarimbaLayer *)self document] montage];
  [montage lock];
  v9 = [+[MPUtilities effectForMCContainerEffect:inDocument:](MPUtilities effectForMCContainerEffect:objc_msgSend(v6 inDocument:{"container"), -[MRMarimbaLayer document](self, "document")), "slideForMCSlide:", v7}];
  [montage unlock];
  if (v9)
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"kMRNotificationSlideDidChange" userInfo:self, [NSDictionary dictionaryWithObject:v9 forKey:@"slide"]];
  }

  objc_autoreleasePoolPop(v5);
}

- (id)blobHitAtPoint:(CGPoint)point fromObjectsForObjectIDs:(id)ds localPoint:(CGPoint *)localPoint
{
  y = point.y;
  x = point.x;
  [(MRMarimbaLayer *)self size];
  v11 = [(MRRenderer *)[(MRMarimbaLayer *)self renderer] layerHitAtPoint:1 onlyIfHitElement:localPoint localPoint:x, v10 - y];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [v11 elementHitAtPoint:localPoint localPoint:{localPoint->x, localPoint->y}];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  superlayer = v12;
  v16 = v13;
  while (1)
  {
    v17 = [ds objectForKey:{objc_msgSend(objc_msgSend(superlayer, "plug"), "objectID")}];
    if (v17)
    {
      break;
    }

    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", [objc_msgSend(superlayer "plugAsParallel")], v16);
    superlayer = [superlayer superlayer];
    if (!superlayer)
    {
      return 0;
    }
  }

  v20 = v17;
  v18 = objc_alloc_init(MRHitBlob);
  [(MRHitBlob *)v18 setEffectLayer:v12];
  [(MRHitBlob *)v18 setOuterLayer:superlayer];
  [(MRHitBlob *)v18 setClientObject:v20];
  [(MRHitBlob *)v18 setInnerPath:v16];
  [(MRHitBlob *)v18 setElementID:v14];
  return v18;
}

- (BOOL)getOnScreenVertices:(CGPoint)vertices[4] forHitBlob:(id)blob
{
  outerLayer = [blob outerLayer];
  if (vertices)
  {
    v7 = outerLayer == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v9 = outerLayer;
    [(MRMarimbaLayer *)self size];
    v11 = v10 * 0.5;
    [(MRMarimbaLayer *)self size];
    v13 = v12 * 0.5;
    [v9 convertLocalPoint:{-1.0, -1.0}];
    vertices->x = v11 * (v14 + 1.0);
    vertices->y = v13 * (1.0 - v15);
    [v9 convertLocalPoint:{1.0, -1.0}];
    vertices[1].x = v11 * (v16 + 1.0);
    vertices[1].y = v13 * (1.0 - v17);
    [v9 convertLocalPoint:{1.0, 1.0}];
    vertices[2].x = v11 * (v18 + 1.0);
    vertices[2].y = v13 * (1.0 - v19);
    [v9 convertLocalPoint:{-1.0, 1.0}];
    vertices[3].x = v11 * (v20 + 1.0);
    vertices[3].y = v13 * (1.0 - v21);
  }

  return v8;
}

- (CGPoint)convertPoint:(CGPoint)point toHitBlob:(id)blob
{
  y = point.y;
  x = point.x;
  outerLayer = [blob outerLayer];
  if (outerLayer)
  {
    v8 = outerLayer;
    [(MRMarimbaLayer *)self size];
    v10 = v9 * 0.5;
    [(MRMarimbaLayer *)self size];
    [v8 convertGlobalPoint:{(x - v10) / v10, (v11 * 0.5 - y) / (v11 * 0.5)}];
  }

  else
  {
    v12 = CGPointZero.x;
    v13 = CGPointZero.y;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)beginLiveUpdateForHitBlob:(id)blob
{
  effectLayer = [blob effectLayer];
  if (!effectLayer)
  {
    return 0;
  }

  v6 = effectLayer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3052000000;
    v12[3] = sub_122D2C;
    v12[4] = sub_122D3C;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_122D48;
    v11[3] = &unk_1AACC0;
    v11[4] = v12;
    v12[5] = v11;
    sub_122D48(v11, v6);
    _Block_object_dispose(v12, 8);
    return 0;
  }

  elementID = [blob elementID];
  if ([elementID hasPrefix:@"image"])
  {
    v8 = [objc_msgSend(v6 "slideProvidersForElementIDs")];
    if (!v8)
    {
      NSLog(@"No slide provider for elementID %@", elementID);
      return 0;
    }

    return [v8 beginLiveUpdate];
  }

  else
  {
    if (![elementID hasPrefix:@"text"])
    {
      NSLog(@"Invalid element ID %@", elementID);
      return 0;
    }

    renderer = [(MRMarimbaLayer *)self renderer];

    return [(MRRenderer *)renderer beginTextEditingOfElement:elementID inLayer:v6 callDelegate:1];
  }
}

- (BOOL)endLiveUpdateForHitBlob:(id)blob
{
  effectLayer = [blob effectLayer];
  if (!effectLayer)
  {
    return effectLayer;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3052000000;
    v10[3] = sub_122D2C;
    v10[4] = sub_122D3C;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1230D8;
    v9[3] = &unk_1AACC0;
    v9[4] = v10;
    v10[5] = v9;
    sub_1230D8(v9, effectLayer);
    _Block_object_dispose(v10, 8);
    goto LABEL_13;
  }

  elementID = [blob elementID];
  if (![elementID hasPrefix:@"image"])
  {
    if ([elementID hasPrefix:@"text"])
    {
      LOBYTE(effectLayer) = 1;
      [(MRRenderer *)[(MRMarimbaLayer *)self renderer] endTextEditing:1];
      return effectLayer;
    }

    NSLog(@"Invalid element ID %@", elementID);
LABEL_13:
    LOBYTE(effectLayer) = 0;
    return effectLayer;
  }

  v7 = [objc_msgSend(effectLayer "slideProvidersForElementIDs")];
  if (!v7)
  {
    NSLog(@"No slide provider for elementID %@", elementID);
    goto LABEL_13;
  }

  return [v7 endLiveUpdate];
}

- (void)beginGesture:(id)gesture
{
  hitBlob = [gesture hitBlob];
  [(MRMarimbaLayer *)self beginLiveUpdateForHitBlob:hitBlob];
  proxyForSlide = [hitBlob proxyForSlide];
  -[MZMediaManagement resolutionForAssetAtPath:](-[MRRenderer assetManagementDelegate](-[MRMarimbaLayer renderer](self, "renderer"), "assetManagementDelegate"), "resolutionForAssetAtPath:", [proxyForSlide path]);
  v9 = v8 <= 0.0 || v7 <= 0.0;
  v10 = v7 / v8;
  if (v9)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v10;
  }

  [gesture locationInViewAtStart];
  [(MRMarimbaLayer *)self convertPoint:hitBlob toHitBlob:?];
  v13 = v12;
  v15 = v14;
  [proxyForSlide center];
  v17 = v16;
  v19 = v18;
  [gesture setSlideCenterAtStart:?];
  [proxyForSlide rotation];
  v21 = v20;
  [gesture setSlideRotationAtStart:?];
  [proxyForSlide scale];
  v23 = v22;
  [gesture setSlideScaleAtStart:?];
  [gesture setLinearScaleAtStart:v23];
  sizingMode = [proxyForSlide sizingMode];
  if (!sizingMode || [sizingMode isEqualToString:@"Crop to Fit"])
  {
    [hitBlob aspectRatio];
    v26 = v25;
    [gesture linearScaleAtStart];
    v28 = v27;
    if (v26 >= v11)
    {
      [gesture linearScaleAtStart];
      v33 = v32;
      [hitBlob aspectRatio];
      v31 = v33 * v34 / v11;
    }

    else
    {
      [hitBlob aspectRatio];
      v28 = v11 * v28 / v29;
      [gesture linearScaleAtStart];
      v31 = v30;
    }

    [gesture setLinearScaleAtStart:v28];
    v17 = v17 + (0.5 - v17) / v28;
    v19 = v19 + (0.5 - v19) / v31;
  }

  v35 = v21;
  v36 = __sincosf_stret(v35);
  [gesture linearScaleAtStart];
  v38 = v36.__cosval * 0.5 / v37;
  [gesture linearScaleAtStart];
  v40 = v36.__sinval * 0.5 / v39;
  [hitBlob aspectRatio];
  [gesture setLocationInSlideAtStart:{v17 + v13 * v38 + v15 * v40 * (1.0 / v41), v19 + (v15 * v38 * (1.0 / v41) - v13 * v40) * v11}];
  [gesture setCurrentTranslation:{CGPointZero.x, CGPointZero.y}];
  [gesture setCurrentRotation:0.0];

  [gesture setCurrentScale:1.0];
}

- (void)doGesture:(id)gesture
{
  hitBlob = [gesture hitBlob];
  proxyForSlide = [hitBlob proxyForSlide];
  -[MZMediaManagement resolutionForAssetAtPath:](-[MRRenderer assetManagementDelegate](-[MRMarimbaLayer renderer](self, "renderer"), "assetManagementDelegate"), "resolutionForAssetAtPath:", [proxyForSlide path]);
  v9 = v8 <= 0.0 || v7 <= 0.0;
  v10 = v7 / v8;
  if (v9)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v10;
  }

  v63 = v11;
  [gesture locationInViewAtStart];
  v13 = v12;
  [gesture currentTranslation];
  v15 = v13 + v14;
  [gesture locationInViewAtStart];
  v17 = v16;
  [gesture currentTranslation];
  [(MRMarimbaLayer *)self convertPoint:hitBlob toHitBlob:v15, v17 + v18];
  v64 = v20;
  v65 = v19;
  [gesture slideRotationAtStart];
  v22 = v21;
  [gesture currentRotation];
  v24 = v22 - v23;
  [hitBlob aspectRatio];
  v66 = v24;
  v25 = v24;
  v27 = 1.0 / v26;
  v28 = __sincosf_stret(v25);
  [gesture linearScaleAtStart];
  v30 = v29;
  [gesture currentScale];
  v32 = v30 * v31;
  v33 = fabs(v28.__cosval);
  v34 = fabs(v28.__sinval);
  v35 = v33 + v34 * v27;
  v36 = v34 + v33 * v27;
  v37 = v11 * v36;
  if (v35 >= v11 * v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v11 * v36;
  }

  if (v32 >= v38)
  {
    v39 = v32;
  }

  else
  {
    v39 = v38;
  }

  v40 = v28.__cosval * 0.5 / v39;
  v41 = v28.__sinval * 0.5 / v39;
  [gesture locationInSlideAtStart];
  v62 = v42 - (v27 * (v64 * v41) + v65 * v40);
  [gesture locationInSlideAtStart];
  v44 = v43 - (v27 * (v64 * v40) - v65 * v41) * v11;
  v45 = v35 * 0.5;
  v46 = v62;
  v47 = v45 / v39;
  v48 = v37 * 0.5 / v39;
  if (v62 < v47 || (v47 = 1.0 - v47, v62 > v47))
  {
    v46 = v47;
  }

  if (v44 < v48 || (v48 = 1.0 - v48, v44 > v48))
  {
    v44 = v48;
  }

  sizingMode = [proxyForSlide sizingMode];
  if (sizingMode && ![sizingMode isEqualToString:@"Crop to Fit"])
  {
    v54 = v46;
  }

  else
  {
    [hitBlob aspectRatio];
    v51 = v50;
    [hitBlob aspectRatio];
    v53 = 0.5;
    v54 = 0.5;
    v55 = v39 * v52 / v63;
    if (v39 != 1.0)
    {
      v54 = (v46 * v39 + -0.5) / (v39 + -1.0);
    }

    if (v55 != 1.0)
    {
      v53 = (v44 * v55 + -0.5) / (v55 + -1.0);
    }

    if (v51 < v63)
    {
      v39 = v55;
    }

    v44 = v53;
  }

  [proxyForSlide rotation];
  if (v66 != v56)
  {
    [proxyForSlide setRotation:v66];
  }

  [proxyForSlide scale];
  if (v39 != v57)
  {
    [proxyForSlide setScale:v39];
  }

  [proxyForSlide center];
  if (v54 != v59 || v44 != v58)
  {
    [proxyForSlide setCenter:{v54, v44}];
  }

  renderer = [(MRMarimbaLayer *)self renderer];

  [(MRRenderer *)renderer requestRendering:0];
}

- (void)endGesture:(id)gesture
{
  -[MRMarimbaLayer endLiveUpdateForHitBlob:](self, "endLiveUpdateForHitBlob:", [gesture hitBlob]);
  renderer = [(MRMarimbaLayer *)self renderer];

  [(MRRenderer *)renderer requestRendering:0];
}

- (void)cancelGesture:(id)gesture
{
  v5 = [objc_msgSend(gesture "hitBlob")];
  [gesture slideCenterAtStart];
  [v5 setCenter:?];
  [gesture slideRotationAtStart];
  [v5 setRotation:?];
  [gesture slideScaleAtStart];
  [v5 setScale:?];

  [(MRMarimbaLayer *)self endGesture:gesture];
}

+ (MRMarimbaLayer)layerWithDocument:(id)document size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = +[MRMarimbaLayer layer];
  [(MRMarimbaLayer *)v7 setFrame:0.0, 0.0, width, height];
  [(MRMarimbaLayer *)v7 setDocument:document];
  return v7;
}

+ (MRMarimbaLayer)layerWithDocument:(id)document
{
  v4 = +[MRMarimbaLayer layer];
  [(MRMarimbaLayer *)v4 setDocument:document];
  return v4;
}

+ (void)releaseResources
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = qword_1EF3E8;
  if (!qword_1EF3E8)
  {
    [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    [+[MRTransitionManager sharedManager](MRTransitionManager "sharedManager")];
    [+[MRShaderManager sharedManager](MRShaderManager "sharedManager")];
    [+[MRFrameManager sharedManager](MRFrameManager "sharedManager")];
    +[MUPoolObject clearAllPools];
  }

  byte_1EF3F0 = v3 != 0;

  objc_sync_exit(v2);
}

+ (MRMarimbaLayer)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  ++qword_1EF3E8;
  objc_sync_exit(v5);
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___MRMarimbaLayer;
  return objc_msgSendSuper2(&v7, "allocWithZone:", zone);
}

- (MRMarimbaLayer)init
{
  v5.receiver = self;
  v5.super_class = MRMarimbaLayer;
  v2 = [(MRMarimbaLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_correctsForAutorotation = 1;
    [(MRMarimbaLayer *)v2 setOpaque:1];
    [(MRMarimbaLayer *)v3 setNeedsDisplayOnBoundsChange:0];
    [(MRMarimbaLayer *)v3 setDrawableProperties:[NSDictionary dictionaryWithObjectsAndKeys:&__kCFBooleanFalse, kEAGLDrawablePropertyRetainedBacking, kEAGLColorFormatRGBA8, kEAGLDrawablePropertyColorFormat, 0]];
  }

  return v3;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  [(MRMarimbaLayer *)self cleanup];

  self->_faceDetector = 0;
  if (self->_context)
  {
    [(MRMarimbaLayer *)self destroyFramebuffer];
    v3 = +[EAGLContext currentContext];
    context = self->_context;
    if (v3 == context)
    {
      [EAGLContext setCurrentContext:0];
      context = self->_context;
    }

    self->_context = 0;
  }

  v5 = objc_opt_class();
  objc_sync_enter(v5);
  if (!--qword_1EF3E8 && byte_1EF3F0 == 1)
  {
    [objc_opt_class() releaseResources];
  }

  objc_sync_exit(v5);
  v6.receiver = self;
  v6.super_class = MRMarimbaLayer;
  [(MRMarimbaLayer *)&v6 dealloc];
}

- (void)cleanup
{
  lastSlideChange = self->_lastSlideChange;
  if (lastSlideChange)
  {

    self->_lastSlideChange = 0;
  }

  if (self->_faceDetector)
  {
    [(NSTimer *)self->_faceTimer invalidate];

    self->_faceTimer = 0;
    [(MPFaceDetector *)self->_faceDetector stop];

    self->_faceDetector = 0;
  }

  objc_sync_enter(self);
  if (self->_renderer)
  {
    [(MRMarimbaLayer *)self endMorphing];
    [(MRRenderer *)self->_renderer cleanup];

    self->_renderer = 0;
  }

  objc_sync_exit(self);
  document = self->_document;
  if (document)
  {

    self->_document = 0;
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MRMarimbaLayer *)self bounds];
  v10 = height != v9 || width != v8;
  v13.receiver = self;
  v13.super_class = MRMarimbaLayer;
  [(MRMarimbaLayer *)&v13 setBounds:x, y, width, height];
  if (self->_renderer)
  {
    if (self->_rendererSizeIsLocked)
    {
      self->_sizeChangedWhileRendererSizeWasLocked |= v10;
    }

    else if (self->_document)
    {
      if (v10)
      {
        renderDispatchQueue = [(MRRenderer *)self->_renderer renderDispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_123EEC;
        block[3] = &unk_1AA700;
        block[4] = self;
        dispatch_async(renderDispatchQueue, block);
      }

      else
      {
        [(MRMarimbaLayer *)self updateSizeOfRenderer:?];
      }
    }
  }
}

- (CGSize)size
{
  [(MRMarimbaLayer *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)updateSizeOfRenderer:(id)renderer
{
  width = self->_frameBufferSize.width;
  height = self->_frameBufferSize.height;
  [(MRMarimbaLayer *)self affineTransform];
  if (1.0 == 0.0)
  {
    v6 = 4;
  }

  else if (-1.0 == 0.0)
  {
    v6 = 3;
  }

  else if (1.0 == 0.0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (![renderer orientation])
  {
    [renderer setOrientation:v6];
  }

  if (v6 >= 3)
  {
    v7 = height;
  }

  else
  {
    v7 = width;
  }

  if (v6 >= 3)
  {
    v8 = width;
  }

  else
  {
    v8 = height;
  }

  [renderer setSize:{v8, v7}];
}

- (void)setRendererSizeIsLocked:(BOOL)locked
{
  if (self->_rendererSizeIsLocked != locked)
  {
    block[7] = v3;
    block[8] = v4;
    self->_rendererSizeIsLocked = locked;
    if (!locked && self->_document)
    {
      if (self->_sizeChangedWhileRendererSizeWasLocked)
      {
        renderDispatchQueue = [(MRRenderer *)self->_renderer renderDispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_124100;
        block[3] = &unk_1AA700;
        block[4] = self;
        dispatch_async(renderDispatchQueue, block);
      }

      else
      {
        [(MRMarimbaLayer *)self updateSizeOfRenderer:self->_renderer];
      }
    }

    self->_sizeChangedWhileRendererSizeWasLocked = 0;
  }
}

- (void)setContentsScale:(double)scale
{
  [(MRMarimbaLayer *)self contentsScale];
  if (v5 != scale)
  {
    v8.receiver = self;
    v8.super_class = MRMarimbaLayer;
    [(MRMarimbaLayer *)&v8 setContentsScale:scale];
    if (self->_document)
    {
      renderer = self->_renderer;
      if (renderer)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_12421C;
        block[3] = &unk_1AA700;
        block[4] = self;
        dispatch_async([(MRRenderer *)renderer renderDispatchQueue], block);
      }
    }
  }
}

- (void)setDocument:(id)document
{
  if (self->_document)
  {
    if (self->_renderer)
    {
      [(MRMarimbaLayer *)self endMorphing];
      [(MRRenderer *)self->_renderer setMontage:0];
    }

    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];

    self->_document = 0;
  }

  documentCopy = document;
  self->_document = documentCopy;
  if (documentCopy)
  {
    document = documentCopy;
    renderer = self->_renderer;
    v8 = renderer;
    if (!renderer)
    {
      v8 = [[MRRenderer alloc] initWithParameters:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:self->_isReadonly], @"readonly", &__kCFBooleanFalse, @"noAudio", [NSNumber numberWithBool:self->_slidesAreReadonly], @"slidesAreReadonly", 0]];
      document = self->_document;
    }

    [(MRRenderer *)v8 setAssetManagementDelegate:document];
    [(MRRenderer *)v8 setFeatureDelegate:self->_document];
    [(MRRenderer *)v8 setLiveSlideshowDelegate:self];
    [(MRRenderer *)v8 setAsynchronousOperationsDelegate:self];
    [(MRRenderer *)v8 setIsEditing:0];
    LODWORD(v9) = 1.0;
    [(MRRenderer *)v8 setVolume:v9];
    -[MRRenderer setMontage:](v8, "setMontage:", [document montage]);
    [(MRRenderer *)v8 setRequestRenderingOnChanges:1];
    [(MRRenderer *)v8 setInteractivityIsEnabled:self->_interactivityIsEnabled];
    [objc_msgSend(objc_msgSend(-[MPDocument mainLayers](self->_document "mainLayers")];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      -[MRRenderer setTransitionLayerPlugObjectID:](v8, "setTransitionLayerPlugObjectID:", [objc_msgSend(objc_msgSend(-[MPDocument mainLayers](self->_document "mainLayers")]);
    }

    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"didLiveChanged:" object:@"kMPAuthoringLiveDidChangeNotification", self->_document];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"didAddEffects:" object:@"kMPAuthoringLiveDidAddEffectsNotification", self->_document];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"didApplyStyle:" object:@"kMPAuthoringDidFinishApplyingStyleNotification", self->_document];
    if (self->_enableSlideDidChangeNotification)
    {
      v10 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v10 addObserver:self selector:"_slideDidAppear:" name:kMRNotificationSlideIsOn object:0];
    }

    [(MRMarimbaLayer *)self bounds];
    v12 = v11;
    if (self->_context)
    {
      [(MRRenderer *)v8 setEAGLContext:0];
      [(MRMarimbaLayer *)self destroyFramebuffer];
      v13 = +[EAGLContext currentContext];
      context = self->_context;
      if (v13 == context)
      {
        [EAGLContext setCurrentContext:0];
        context = self->_context;
      }

      self->_context = 0;
    }

    v15 = [[EAGLContext alloc] initWithAPI:2];
    self->_context = v15;
    if (v15)
    {
      [(MRRenderer *)v8 setEAGLContext:v15];
      if (v12 > 0.0)
      {
        [(MRMarimbaLayer *)self updateFramebuffer];
        if (self->_context)
        {
          [(MRMarimbaLayer *)self updateSizeOfRenderer:v8];
        }
      }
    }

    if (!renderer)
    {
      objc_sync_enter(self);
      self->_renderer = v8;
      objc_sync_exit(self);
    }
  }

  if ([(MPDocument *)self->_document detectFacesInBackground])
  {

    [(MRMarimbaLayer *)self setupFaceDetection];
  }
}

- (void)setupFaceDetection
{
  if (self->_faceDetector)
  {
    [(NSTimer *)self->_faceTimer invalidate];

    self->_faceTimer = 0;
    [(MPFaceDetector *)self->_faceDetector stop];

    self->_faceDetector = 0;
  }

  v3 = objc_alloc_init(MPFaceDetector);
  self->_faceDetector = v3;
  [(MPFaceDetector *)v3 setDocument:self->_document];
  [(MPFaceDetector *)self->_faceDetector setRenderer:self];
  [(MPFaceDetector *)self->_faceDetector setIsCancelled:0];
  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v4 == 0.0)
  {
    faceDetector = self->_faceDetector;

    [(MPFaceDetector *)faceDetector start];
  }

  else
  {
    self->_faceTimer = [NSTimer scheduledTimerWithTimeInterval:self->_faceDetector target:"start" selector:0 userInfo:0 repeats:?];
  }
}

- (void)didLiveChanged:(id)changed
{
  [objc_msgSend(objc_msgSend(-[MPDocument mainLayers](self->_document mainLayers];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    -[MRRenderer setTransitionLayerPlugObjectID:](self->_renderer, "setTransitionLayerPlugObjectID:", [objc_msgSend(objc_msgSend(-[MPDocument mainLayers](self->_document "mainLayers")]);
  }

  renderer = self->_renderer;

  [(MRRenderer *)renderer setLiveSlideshowDelegate:self];
}

- (void)togglePlayback
{
  if ([(MRRenderer *)self->_renderer isPlaying])
  {

    [(MRMarimbaLayer *)self pause];
  }

  else
  {

    [(MRMarimbaLayer *)self play];
  }
}

- (void)setInteractivityIsEnabled:(BOOL)enabled
{
  self->_interactivityIsEnabled = enabled;
  renderer = self->_renderer;
  if (renderer)
  {
    [(MRRenderer *)renderer setInteractivityIsEnabled:?];
  }
}

- (void)play
{
  if (self->_stopWithVideo)
  {
    renderer = self->_renderer;
    [(MPDocument *)self->_document videoDuration];
    [(MRRenderer *)renderer setMasterStartTime:0 andDuration:0.0 mode:v4 + 0.00001];
  }

  [(MRMarimbaLayer *)self setBailTimeWatcher:1];
  [(MRRenderer *)self->_renderer resume];
  [(MRRenderer *)self->_renderer resumeSlideshow];
  faceDetector = self->_faceDetector;
  if (faceDetector && !self->_wasSuspended)
  {

    [(MPFaceDetector *)faceDetector resume];
  }
}

- (void)pause
{
  [(MRMarimbaLayer *)self setBailTimeWatcher:1];
  [(MRRenderer *)self->_renderer pause];
  faceDetector = self->_faceDetector;
  if (faceDetector)
  {
    self->_wasSuspended = [(MPFaceDetector *)faceDetector suspended];
    v4 = self->_faceDetector;

    [(MPFaceDetector *)v4 suspend];
  }
}

- (void)setStopWithVideo:(BOOL)video
{
  self->_stopWithVideo = video;
  renderer = self->_renderer;
  if (video)
  {
    [(MPDocument *)self->_document videoDuration];
    v5 = v4;
    v6 = renderer;
    v7 = 0;
  }

  else
  {
    v5 = -1.0;
    v6 = self->_renderer;
    v7 = 1;
  }

  [(MRRenderer *)v6 setMasterStartTime:v7 andDuration:0.0 mode:v5];
}

- (void)setTime:(double)time
{
  [(MRMarimbaLayer *)self setBailTimeWatcher:1];
  renderer = self->_renderer;

  [(MRRenderer *)renderer setTime:time];
}

- (double)timeRemaining
{
  [(MPDocument *)self->_document duration];
  v4 = v3;
  [(MRRenderer *)self->_renderer time];
  return v4 - v5;
}

- (void)setSuspended:(BOOL)suspended
{
  faceDetector = self->_faceDetector;
  if (suspended)
  {
    [(MPFaceDetector *)faceDetector suspend];
  }

  else
  {
    [(MPFaceDetector *)faceDetector resume];
  }
}

- (void)gotoEnd
{
  [(MRMarimbaLayer *)self setBailTimeWatcher:1];
  [(MCPlug *)[(MCMontage *)[(MRRenderer *)self->_renderer montage] rootPlug] fullDuration];
  renderer = self->_renderer;

  [(MRRenderer *)renderer setTime:?];
}

- (void)gotoBeginning
{
  [(MRMarimbaLayer *)self setBailTimeWatcher:1];
  renderer = self->_renderer;

  [(MRRenderer *)renderer setTime:0.0];
}

- (void)nextFrame
{
  [(MRMarimbaLayer *)self setBailTimeWatcher:1];
  renderer = self->_renderer;
  [(MRRenderer *)renderer time];
  v5 = v4 + 0.0166666667;

  [(MRRenderer *)renderer setTime:v5];
}

- (void)prevFrame
{
  [(MRMarimbaLayer *)self setBailTimeWatcher:1];
  renderer = self->_renderer;
  [(MRRenderer *)renderer time];
  v5 = v4 + -0.0166666667;

  [(MRRenderer *)renderer setTime:v5];
}

- (MRRenderer)renderer
{
  objc_sync_enter(self);
  v3 = self->_renderer;
  objc_sync_exit(self);
  return v3;
}

- (void)warmupRenderer
{
  renderer = [(MRMarimbaLayer *)self renderer];

  [(MRRenderer *)renderer warmupVideo:1];
}

- (void)beginMorphingToAspectRatio:(double)ratio andOrientation:(int)orientation withDuration:(double)duration switchToDocument:(id)document
{
  if ((orientation - 1) <= 3)
  {
    v8 = *&orientation;
    [(MRRenderer *)self->_renderer size];
    if (v11 / v12 != ratio || [(MRRenderer *)self->_renderer orientation]!= v8)
    {
      if (self->_morphingToAspectRatio == 0.0)
      {
        if (self->_correctsForAutorotation)
        {
          +[CATransaction begin];
          [CATransaction setAnimationDuration:duration];
          v23 = 0;
          v24 = xmmword_1635B0;
          v25 = 0x400921FB54442D18;
          v26 = 0;
          CGAffineTransformMakeRotation(&v22, *(&v23 + v8));
          v21 = v22;
          [(MRMarimbaLayer *)self setAffineTransform:&v21];
          +[CATransaction commit];
        }

        renderer = self->_renderer;
        if (renderer)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1250B4;
          block[3] = &unk_1AAC48;
          block[4] = document;
          block[5] = self;
          *&block[6] = ratio;
          *&block[7] = duration;
          dispatch_async([(MRRenderer *)renderer renderDispatchQueue], block);
        }

        self->_morphingToAspectRatio = ratio;
      }

      else
      {
        nextMorphInfo = self->_nextMorphInfo;
        if (nextMorphInfo)
        {
        }

        v14 = [NSDictionary alloc];
        *&v15 = ratio;
        v16 = [NSNumber numberWithFloat:v15];
        v17 = [NSNumber numberWithInt:v8];
        *&v18 = duration;
        self->_nextMorphInfo = [v14 initWithObjectsAndKeys:{v16, @"aspectRatio", v17, @"orientation", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v18), @"duration", document, @"nextDocument", 0}];
      }
    }
  }
}

- (void)endMorphing
{
  if (self->_morphingToAspectRatio != 0.0)
  {
    self->_morphingToAspectRatio = 0.0;
    [(MRRenderer *)self->_renderer endMorphing];
    nextMorphInfo = self->_nextMorphInfo;
    if (nextMorphInfo)
    {
      [-[NSDictionary objectForKey:](nextMorphInfo objectForKey:{@"duration", "floatValue"}];
      v5 = v4;
      [-[NSDictionary objectForKey:](self->_nextMorphInfo objectForKey:{@"aspectRatio", "floatValue"}];
      -[MRMarimbaLayer beginMorphingToAspectRatio:andOrientation:withDuration:switchToDocument:](self, "beginMorphingToAspectRatio:andOrientation:withDuration:switchToDocument:", [-[NSDictionary objectForKey:](self->_nextMorphInfo objectForKey:{@"orientation", "intValue"}], -[NSDictionary objectForKey:](self->_nextMorphInfo, "objectForKey:", @"nextDocument"), v6, v5);
      [(MRMarimbaLayer *)self performSelector:"endMorphing" withObject:0 afterDelay:v5];

      self->_nextMorphInfo = 0;
    }
  }
}

- (void)_reauthorForAspectRatioChange
{
  renderer = self->_renderer;
  if (renderer)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_125474;
    block[3] = &unk_1AA700;
    block[4] = self;
    dispatch_sync([(MRRenderer *)renderer renderDispatchQueue], block);
  }
}

- (BOOL)nearingEndForSerializer:(id)serializer
{
  if ([(MRMarimbaLayer *)self isPlaying])
  {
    if ([(MPDocument *)self->_document isLive])
    {
      _currentEffectContainer = [(MRMarimbaLayer *)self _currentEffectContainer];
      if (_currentEffectContainer)
      {
        v6 = _currentEffectContainer;
        [_currentEffectContainer introTransitionDuration];
        if (v7 != 0.0 || ([v6 outroTransitionDuration], v8 != 0.0))
        {
          [(MRMarimbaLayer *)self relativeTime];
          v10 = v9;
          [v6 startTime];
          v12 = v10 - v11;
          [objc_msgSend(v6 "parentLayer")];
          v14 = v12 - v13;
          [v6 introTransitionDuration];
          if (v14 < v15)
          {
            [v6 introTransitionDuration];
LABEL_10:
            [(MRMarimbaLayer *)self performSelector:"_nearingEndForSerializer:" withObject:serializer afterDelay:v16 - v14 + 0.1];
            return 0;
          }

          [v6 duration];
          v18 = v17;
          [v6 outroTransitionDuration];
          if (v14 > v18 - v19 + -0.3)
          {
            [v6 duration];
            goto LABEL_10;
          }
        }
      }
    }
  }

  return [(MRMarimbaLayer *)self _nearingEndForSerializer:serializer];
}

- (BOOL)_nearingEndForSerializer:(id)serializer
{
  if ([(MPDocument *)self->_document isLive])
  {
    v5 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{serializer, @"container", 0}];
    v6 = [(MPDocument *)self->_document nearingEndWithOptions:v5];
  }

  else
  {
    v6 = 0;
  }

  if (self->_stopWithVideo)
  {
    renderer = self->_renderer;
    [(MPDocument *)self->_document videoDuration];
    [(MRRenderer *)renderer setMasterStartTime:0 andDuration:0.0 mode:v8];
  }

  return v6;
}

- (BOOL)effect:(id)effect requestedNumberOfSlides:(unint64_t)slides firstSlideIndexStillNeeded:(unint64_t)needed
{
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:slides], @"requestedNumberOfSlides", [NSNumber numberWithInteger:needed], @"firstSlideIndexStillNeeded", effect, @"container", 0];
  if ([(MRMarimbaLayer *)self isPlaying])
  {
    _currentEffectContainer = [(MRMarimbaLayer *)self _currentEffectContainer];
    if (_currentEffectContainer)
    {
      v8 = _currentEffectContainer;
      [_currentEffectContainer introTransitionDuration];
      if (v9 != 0.0 || ([v8 outroTransitionDuration], v10 != 0.0))
      {
        [(MRMarimbaLayer *)self relativeTime];
        v12 = v11;
        [v8 startTime];
        v14 = v12 - v13;
        [objc_msgSend(v8 "parentLayer")];
        v16 = v14 - v15;
        [v8 introTransitionDuration];
        if (v16 < v17)
        {
          [v8 introTransitionDuration];
LABEL_9:
          [(MRMarimbaLayer *)self performSelector:"_effectRequestedSlides:" withObject:v6 afterDelay:v18 - v16 + 0.1];
          return 0;
        }

        [v8 duration];
        v20 = v19;
        [v8 outroTransitionDuration];
        if (v16 > v20 - v21 + -0.3)
        {
          [v8 duration];
          goto LABEL_9;
        }
      }
    }
  }

  return [(MRMarimbaLayer *)self _effectRequestedSlides:v6];
}

- (BOOL)_effectRequestedSlides:(id)slides
{
  v4 = [(MPDocument *)self->_document nearingEndWithOptions:slides];
  if (self->_stopWithVideo)
  {
    renderer = self->_renderer;
    [(MPDocument *)self->_document videoDuration];
    [(MRRenderer *)renderer setMasterStartTime:0 andDuration:0.0 mode:v6];
  }

  return v4;
}

- (void)didApplyStyle:(id)style
{
  object = [style object];
  document = self->_document;
  if (object == document)
  {
    if ([(MPDocument *)document detectFacesInBackground])
    {
      if ([+[MPStyleManager sharedManager](MPStyleManager "sharedManager")])
      {
        if (self->_faceDetector)
        {
          [(NSTimer *)self->_faceTimer invalidate];

          self->_faceTimer = 0;
          [(MPFaceDetector *)self->_faceDetector setIsCancelled:0];
        }

        else
        {
          v6 = objc_alloc_init(MPFaceDetector);
          self->_faceDetector = v6;
          [(MPFaceDetector *)v6 setDocument:self->_document];
          [(MPFaceDetector *)self->_faceDetector setRenderer:self];
          [(MPFaceDetector *)self->_faceDetector setIsCancelled:0];
          [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
          if (v7 != 0.0)
          {
            self->_faceTimer = [NSTimer scheduledTimerWithTimeInterval:self->_faceDetector target:"start" selector:0 userInfo:0 repeats:?];
            return;
          }
        }

        faceDetector = self->_faceDetector;

        [(MPFaceDetector *)faceDetector start];
      }
    }

    else if (self->_faceDetector)
    {
      [(NSTimer *)self->_faceTimer invalidate];

      self->_faceTimer = 0;
      [(MPFaceDetector *)self->_faceDetector stop];

      self->_faceDetector = 0;
    }
  }
}

- (void)didAddEffects:(id)effects
{
  if (self->_stopWithVideo)
  {
    renderer = self->_renderer;
    [(MPDocument *)self->_document videoDuration];

    [(MRRenderer *)renderer setMasterStartTime:0 andDuration:0.0 mode:v5];
  }
}

- (CGImage)snapshotAsCGImageForTime:(double)time withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [[MRSnapshotter alloc] initWithMontage:[(MPDocument *)self->_document montage] andAssetManagementDelegate:self->_document isReadOnly:1];
  [(MRSnapshotter *)v7 setSize:width, height];
  v8 = [(MRSnapshotter *)v7 CGImageSnapshotAtTime:time];

  return v8;
}

- (void)setEnableSlideDidChangeNotification:(BOOL)notification
{
  if (self->_enableSlideDidChangeNotification != notification)
  {
    notificationCopy = notification;
    self->_enableSlideDidChangeNotification = notification;
    v5 = +[NSNotificationCenter defaultCenter];
    if (notificationCopy)
    {
      v6 = kMRNotificationSlideIsOn;

      [(NSNotificationCenter *)v5 addObserver:self selector:"_slideDidAppear:" name:v6 object:0];
    }

    else
    {
      v7 = kMRNotificationSlideIsOn;

      [(NSNotificationCenter *)v5 removeObserver:self name:v7 object:0];
    }
  }
}

- (void)beginEditingOfText:(id)text
{
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"text%d", [text index]);
  nearestPlug = [text nearestPlug];
  [(MRRenderer *)self->_renderer requestRenderingWithin:10.0];
  renderer = self->_renderer;

  [(MRRenderer *)renderer beginTextEditingOfElement:v5 inPlug:nearestPlug callDelegate:1];
}

- (void)setLastSlideChange:(id)change
{
  lastSlideChange = self->_lastSlideChange;
  if (lastSlideChange)
  {

    self->_lastSlideChange = 0;
  }

  self->_lastSlideChange = [change copy];
}

- (void)destroyFramebuffer
{
  v6 = +[EAGLContext currentContext];
  v3 = v6;
  if (v6 != self->_context)
  {
    [EAGLContext setCurrentContext:?];
  }

  if (self->_viewFramebuffer)
  {
    glDeleteFramebuffers(1, &self->_viewFramebuffer);
  }

  self->_viewFramebuffer = 0;
  if (self->_viewRenderbuffer)
  {
    glDeleteRenderbuffers(1, &self->_viewRenderbuffer);
  }

  self->_viewRenderbuffer = 0;
  if (self->_depthBuffer)
  {
    glDeleteRenderbuffers(1, &self->_depthBuffer);
  }

  self->_depthBuffer = 0;
  v4 = +[EAGLContext currentContext];
  v5 = v6;
  if (v4 != v6)
  {
    v4 = [EAGLContext setCurrentContext:v6];
    v5 = v6;
  }

  _objc_release_x1(v4, v5);
}

- (BOOL)updateFramebuffer
{
  v3 = +[EAGLContext currentContext];
  v4 = v3;
  if (v3 != self->_context)
  {
    [EAGLContext setCurrentContext:?];
  }

  if (!self->_viewFramebuffer)
  {
    glGenFramebuffers(1, &self->_viewFramebuffer);
  }

  if (!self->_viewRenderbuffer)
  {
    glGenRenderbuffers(1, &self->_viewRenderbuffer);
  }

  glBindFramebuffer(0x8D40u, self->_viewFramebuffer);
  glLabelObjectEXT(0x8D40u, self->_viewFramebuffer, 0, "Marimba Framebuffer");
  glBindRenderbuffer(0x8D41u, self->_viewRenderbuffer);
  glLabelObjectEXT(0x8D41u, self->_viewRenderbuffer, 0, "Marimba Renderbuffer");
  [(EAGLContext *)self->_context renderbufferStorage:36161 fromDrawable:self];
  glFramebufferRenderbuffer(0x8D40u, 0x8CE0u, 0x8D41u, self->_viewRenderbuffer);
  *params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &params[1]);
  glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, params);
  depthBuffer = self->_depthBuffer;
  if (!depthBuffer)
  {
    glGenRenderbuffers(1, &self->_depthBuffer);
    depthBuffer = self->_depthBuffer;
  }

  glBindRenderbuffer(0x8D41u, depthBuffer);
  glLabelObjectEXT(0x8D41u, self->_depthBuffer, 0, "Marimba Depthbuffer");
  glRenderbufferStorage(0x8D41u, 0x81A5u, params[1], params[0]);
  glFramebufferRenderbuffer(0x8D40u, 0x8D00u, 0x8D41u, self->_depthBuffer);
  glBindRenderbuffer(0x8D41u, self->_viewRenderbuffer);
  v6 = glCheckFramebufferStatus(0x8D40u);
  self->_frameBufferSize = CGSizeZero;
  if (v6 == 36053)
  {
    v7 = params[0];
    self->_frameBufferSize.width = params[1];
    self->_frameBufferSize.height = v7;
  }

  else
  {
    v8 = glCheckFramebufferStatus(0x8D40u);
    NSLog(@"failed to make complete framebuffer object %x", v8);
    v46 = 0;
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8CE0u, 0x8CD0u, &v46);
    v9 = v46;
    Error = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE, %x, %x"), v9, Error);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8CE0u, 0x8CD1u, &v46);
    v11 = v46;
    v12 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME, %x, %x"), v11, v12);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8CE0u, 0x8CD2u, &v46);
    v13 = v46;
    v14 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL, %x, %x"), v13, v14);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8CE0u, 0x8CD3u, &v46);
    v15 = v46;
    v16 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE, %x, %x"), v15, v16);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D00u, 0x8CD0u, &v46);
    v17 = v46;
    v18 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE, %x, %x"), v17, v18);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D00u, 0x8CD1u, &v46);
    v19 = v46;
    v20 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME, %x, %x"), v19, v20);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D00u, 0x8CD2u, &v46);
    v21 = v46;
    v22 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL, %x, %x"), v21, v22);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D00u, 0x8CD3u, &v46);
    v23 = v46;
    v24 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE, %x, %x"), v23, v24);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D20u, 0x8CD0u, &v46);
    v25 = v46;
    v26 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE, %x, %x"), v25, v26);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D20u, 0x8CD1u, &v46);
    v27 = v46;
    v28 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME, %x, %x"), v27, v28);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D20u, 0x8CD2u, &v46);
    v29 = v46;
    v30 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL, %x, %x"), v29, v30);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D20u, 0x8CD3u, &v46);
    v31 = v46;
    v32 = glGetError();
    NSLog(@"GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE, %x, %x"), v31, v32);
    glBindRenderbuffer(0x8D41u, self->_viewRenderbuffer);
    glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &v46);
    v33 = v46;
    v34 = glGetError();
    NSLog(@"GL_RENDERBUFFER, GL_RENDERBUFFER_WIDTH, %x, %x"), v33, v34);
    glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, &v46);
    v35 = v46;
    v36 = glGetError();
    NSLog(@"GL_RENDERBUFFER, GL_RENDERBUFFER_HEIGHT, %x, %x"), v35, v36);
    glGetRenderbufferParameteriv(0x8D41u, 0x8D44u, &v46);
    v37 = v46;
    v38 = glGetError();
    NSLog(@"GL_RENDERBUFFER, GL_RENDERBUFFER_INTERNAL_FORMAT, %x, %x"), v37, v38);
    glBindRenderbuffer(0x8D41u, self->_depthBuffer);
    glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &v46);
    v39 = v46;
    v40 = glGetError();
    NSLog(@"GL_RENDERBUFFER, GL_RENDERBUFFER_WIDTH, %x, %x"), v39, v40);
    glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, &v46);
    v41 = v46;
    v42 = glGetError();
    NSLog(@"GL_RENDERBUFFER, GL_RENDERBUFFER_HEIGHT, %x, %x"), v41, v42);
    glGetRenderbufferParameteriv(0x8D41u, 0x8D44u, &v46);
    v43 = v46;
    v44 = glGetError();
    NSLog(@"GL_RENDERBUFFER, GL_RENDERBUFFER_INTERNAL_FORMAT, %x, %x"), v43, v44);
    glBindRenderbuffer(0x8D41u, self->_viewRenderbuffer);
  }

  if (+[EAGLContext currentContext]!= v3)
  {
    [EAGLContext setCurrentContext:v3];
  }

  return v6 == 36053;
}

@end