@interface PTCinematographyRefinement
- (BOOL)_needSnapshotForPolicy:(unint64_t)policy;
- (PTCinematographyRefinement)initWithOptions:(id)options;
- (id)_extractFramesReturningAll:(BOOL)all;
- (id)_extractFramesToIndex:(unint64_t)index;
- (id)globalCinematographyDictionary;
- (id)refinedFrames;
- (unint64_t)_framesIndexForTime:(id *)time;
- (void)_endSmoothedFrames;
- (void)_logRackFocusPullToFrameAtIndex:(unint64_t)index fromIndex:(unint64_t)fromIndex label:(id)label;
- (void)_moveAlongSmoothedFrames;
- (void)_performLinearRackFocusPullToFrameAtIndex:(unint64_t)index fromIndex:(int64_t)fromIndex;
- (void)_performRackFocusPullToFrameAtIndex:(unint64_t)index;
- (void)_performRackFocusPullsStartingAtIndex:(unint64_t)index;
- (void)_updateGlobalsWithSnapshot:(id)snapshot;
- (void)_updateRecordingStateForSnapshot:(id)snapshot;
- (void)addFrames:(id)frames;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation PTCinematographyRefinement

- (PTCinematographyRefinement)initWithOptions:(id)options
{
  optionsCopy = options;
  v24.receiver = self;
  v24.super_class = PTCinematographyRefinement;
  v5 = [(PTCinematographyRefinement *)&v24 init];
  if (v5)
  {
    v6 = [optionsCopy copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_opt_new();
    }

    options = v5->_options;
    v5->_options = v8;

    memset(&v23, 0, sizeof(v23));
    CMTimeMake(&v23, 1, 1);
    focusFramesOptions = [(PTCinematographyRefinementOptions *)v5->_options focusFramesOptions];
    v11 = focusFramesOptions;
    if (focusFramesOptions)
    {
      [focusFramesOptions maximumRackFocusPullTime];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    v20 = v23;
    CMTimeAdd(&v22, &v20, &rhs);
    v5->_timeDelayForRefinement = v22;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    globals = v5->_globals;
    v5->_globals = dictionary;

    v14 = objc_opt_new();
    frames = v5->_frames;
    v5->_frames = v14;

    v5->_shouldReturnAllCachedFrames = 0;
    refinedFrameNumber = v5->_refinedFrameNumber;
    v5->_refinedFrameNumber = &unk_2837F3220;
    v5->_firstIndexToLookForTransitions = 0;

    if (![(PTCinematographyRefinementOptions *)v5->_options disableDetectionSmoothing])
    {
      v17 = objc_alloc_init(PTCinematographyFrameDetectionSmoother);
      smoother = v5->_smoother;
      v5->_smoother = v17;
    }
  }

  return v5;
}

- (void)addFrames:(id)frames
{
  v28 = *MEMORY[0x277D85DE8];
  framesCopy = frames;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [framesCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138412290;
    v20 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(framesCopy);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        refinedFrameNumber = [(PTCinematographyRefinement *)self refinedFrameNumber];

        if (refinedFrameNumber)
        {
          refinedFrameNumber2 = [(PTCinematographyRefinement *)self refinedFrameNumber];
          [v10 _setFrameNumber:refinedFrameNumber2];

          v13 = MEMORY[0x277CCABB0];
          refinedFrameNumber3 = [(PTCinematographyRefinement *)self refinedFrameNumber];
          v15 = [v13 numberWithInteger:{objc_msgSend(refinedFrameNumber3, "integerValue") + 1}];
          [(PTCinematographyRefinement *)self setRefinedFrameNumber:v15];
        }

        if (-[PTCinematographyRefinement _needSnapshotForPolicy:](self, "_needSnapshotForPolicy:", [v10 _snapshotPolicy]))
        {
          _snapshot = [v10 _snapshot];

          if (_snapshot)
          {
            _snapshot2 = [v10 _snapshot];
            [(PTCinematographyRefinement *)self _updateRecordingStateForSnapshot:_snapshot2];
          }

          else
          {
            _snapshot2 = _PTLogSystem();
            if (os_log_type_enabled(_snapshot2, OS_LOG_TYPE_INFO))
            {
              _frameNumber = [v10 _frameNumber];
              *buf = v20;
              v26 = _frameNumber;
              _os_log_impl(&dword_2243FB000, _snapshot2, OS_LOG_TYPE_INFO, "warning: snapshot missing from refined frame %@", buf, 0xCu);
            }
          }
        }

        else
        {
          [v10 _setSnapshot:0];
        }

        smoother = self->_smoother;
        if (smoother)
        {
          [(PTCinematographyFrameDetectionSmoother *)smoother addFrame:v10];
        }

        else
        {
          [(NSMutableArray *)self->_frames addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [framesCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  if (self->_smoother)
  {
    [(PTCinematographyRefinement *)self _moveAlongSmoothedFrames];
  }
}

- (void)startRecording
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_2243FB000, v3, OS_LOG_TYPE_INFO, "Cinematography refinement <%p> start recording", &v4, 0xCu);
  }

  [(PTCinematographyRefinement *)self setRefinedFrameNumber:&unk_2837F3220];
  [(PTCinematographyRefinement *)self setRecordingState:1];
}

- (void)stopRecording
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_2243FB000, v3, OS_LOG_TYPE_INFO, "Cinematography refinement <%p> stop recording", &v4, 0xCu);
  }

  if (self->_smoother)
  {
    [(PTCinematographyRefinement *)self _endSmoothedFrames];
  }

  [(PTCinematographyRefinement *)self setRecordingState:0];
  self->_shouldReturnAllCachedFrames = 1;
}

- (id)refinedFrames
{
  if ([(NSMutableArray *)self->_frames count])
  {
    [(PTCinematographyRefinement *)self _performRackFocusPullsStartingAtIndex:self->_firstIndexToLookForTransitions];
    v3 = [(PTCinematographyRefinement *)self _extractFramesReturningAll:self->_shouldReturnAllCachedFrames];
    if ([(NSMutableArray *)self->_frames count])
    {
      v4 = [(NSMutableArray *)self->_frames count]- 1;
    }

    else
    {
      v4 = 0;
    }

    self->_firstIndexToLookForTransitions = v4;
    self->_shouldReturnAllCachedFrames = 0;
    v5 = _PTLogSystem();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      [PTCinematographyFrame _debugLogFrames:v3 label:@"Refined Cinematography"];
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)globalCinematographyDictionary
{
  globals = [(PTCinematographyRefinement *)self globals];
  v3 = [globals copy];

  return v3;
}

- (void)_moveAlongSmoothedFrames
{
  if ([(PTCinematographyFrameDetectionSmoother *)self->_smoother isNextFrameAvailable])
  {
    do
    {
      nextFrame = [(PTCinematographyFrameDetectionSmoother *)self->_smoother nextFrame];
      [(NSMutableArray *)self->_frames addObject:nextFrame];
    }

    while ([(PTCinematographyFrameDetectionSmoother *)self->_smoother isNextFrameAvailable]);
  }
}

- (void)_endSmoothedFrames
{
  [(PTCinematographyFrameDetectionSmoother *)self->_smoother endFrames];
  [(PTCinematographyRefinement *)self _moveAlongSmoothedFrames];
  if (![(PTCinematographyFrameDetectionSmoother *)self->_smoother isNextFrameAtEnd])
  {
    v3 = _PTLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(PTCinematographyRefinement *)v3 _endSmoothedFrames];
    }
  }
}

- (void)_performRackFocusPullsStartingAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_frames count]>= index + 2)
  {
    v5 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:index];
    focusTrackIdentifier = [v5 focusTrackIdentifier];

    v7 = index + 1;
    v8 = [(NSMutableArray *)self->_frames count];
    while (v7 < v8)
    {
      v9 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v7];
      focusTrackIdentifier2 = [v9 focusTrackIdentifier];

      if (focusTrackIdentifier2 != focusTrackIdentifier)
      {
        [(PTCinematographyRefinement *)self _performRackFocusPullToFrameAtIndex:v7];
      }

      ++v7;
      v8 = [(NSMutableArray *)self->_frames count];
      focusTrackIdentifier = focusTrackIdentifier2;
    }
  }
}

- (void)_performRackFocusPullToFrameAtIndex:(unint64_t)index
{
  v5 = [PTCinematographyFocusFrames alloc];
  frames = self->_frames;
  focusFramesOptions = [(PTCinematographyRefinementOptions *)self->_options focusFramesOptions];
  v9 = [(PTCinematographyFocusFrames *)v5 initWithFrames:frames options:focusFramesOptions];

  v8 = [(PTCinematographyFocusFrames *)v9 startIndexForLinearRackFocusPullToFrameAtIndex:index];
  [(PTCinematographyRefinement *)self _logRackFocusPullToFrameAtIndex:index fromIndex:v8 label:@"linear rack focus"];
  [(PTCinematographyRefinement *)self _performLinearRackFocusPullToFrameAtIndex:index fromIndex:v8];
}

- (void)_logRackFocusPullToFrameAtIndex:(unint64_t)index fromIndex:(unint64_t)fromIndex label:(id)label
{
  v32 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v9 = _PTLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v21 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:fromIndex];
    _frameNumber = [v21 _frameNumber];
    longValue = [_frameNumber longValue];
    v19 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:fromIndex];
    focusDetection = [v19 focusDetection];
    focusIdentifier = [focusDetection focusIdentifier];
    v12 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:index];
    _frameNumber2 = [v12 _frameNumber];
    longValue2 = [_frameNumber2 longValue];
    v15 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:index];
    focusDetection2 = [v15 focusDetection];
    focusIdentifier2 = [focusDetection2 focusIdentifier];
    *buf = 138413314;
    v23 = labelCopy;
    v24 = 2048;
    v25 = longValue;
    v26 = 2112;
    v27 = focusIdentifier;
    v28 = 2048;
    v29 = longValue2;
    v30 = 2112;
    v31 = focusIdentifier2;
    _os_log_impl(&dword_2243FB000, v9, OS_LOG_TYPE_INFO, "Cinematography %@ from frame %ld (%@) to frame %ld (%@)", buf, 0x34u);
  }
}

- (void)_performLinearRackFocusPullToFrameAtIndex:(unint64_t)index fromIndex:(int64_t)fromIndex
{
  v7 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:fromIndex];
  v8 = v7;
  if (v7)
  {
    [v7 time];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v10 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:index];
  v11 = v10;
  if (v10)
  {
    [v10 time];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v12 = CMTimeGetSeconds(&time);

  v13 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:fromIndex];
  [v13 focusDistance];
  v15 = v14;

  v16 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:index];
  [v16 focusDistance];
  v18 = v17;

  v20 = fromIndex + 1;
  if (v20 < index)
  {
    v21 = Seconds;
    v22 = v12;
    v23 = v22 - v21;
    *&v19 = v18 - v15;
    do
    {
      v24 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v20, v19];
      v25 = v24;
      if (v24)
      {
        [v24 time];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v26 = CMTimeGetSeconds(&time);

      v27 = v26 - v21;
      v28 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v20];
      *&v29 = v15 + (((v18 - v15) / v23) * v27);
      [v28 setFocusDistance:v29];

      v30 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v20];
      *&v31 = v27 / v23;
      [v30 setTransitionCoefficient:v31];

      v32 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v20];
      *&v33 = v27;
      [v32 setTransitionElapsedTime:v33];

      v34 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v20];
      *&v35 = v23;
      [v34 setTransitionDuration:v35];

      ++v20;
    }

    while (index != v20);
  }
}

- (id)_extractFramesReturningAll:(BOOL)all
{
  if (all)
  {
    v4 = [(NSMutableArray *)self->_frames count];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
    v5 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:[(NSMutableArray *)self->_frames count]- 1];
    v6 = v5;
    if (v5)
    {
      [v5 time];
    }

    else
    {
      memset(&v14, 0, sizeof(v14));
    }

    memset(&v13, 0, sizeof(v13));
    focusFramesOptions = [(PTCinematographyRefinementOptions *)self->_options focusFramesOptions];
    v8 = focusFramesOptions;
    if (focusFramesOptions)
    {
      [focusFramesOptions maximumRackFocusPullTime];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    v11 = v14;
    CMTimeSubtract(&v13, &v11, &rhs);

    rhs = v13;
    v4 = [(PTCinematographyRefinement *)self _framesIndexForTime:&rhs];
  }

  v9 = [(PTCinematographyRefinement *)self _extractFramesToIndex:v4];

  return v9;
}

- (id)_extractFramesToIndex:(unint64_t)index
{
  index = [(NSMutableArray *)self->_frames subarrayWithRange:0, index];
  [(NSMutableArray *)self->_frames removeObjectsInRange:0, index];

  return index;
}

- (unint64_t)_framesIndexForTime:(id *)time
{
  if (![(NSMutableArray *)self->_frames count])
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      [v6 time];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v10 = *time;
    v8 = CMTimeCompare(&time1, &v10);

    if ((v8 & 0x80000000) == 0)
    {
      break;
    }

    if (++v5 >= [(NSMutableArray *)self->_frames count])
    {
      return 0;
    }
  }

  return v5;
}

- (BOOL)_needSnapshotForPolicy:(unint64_t)policy
{
  if (policy == 2)
  {
    return 0;
  }

  if (policy)
  {
    return 1;
  }

  return [(PTCinematographyRefinement *)self recordingState:v3]== 1;
}

- (void)_updateRecordingStateForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if ([(PTCinematographyRefinement *)self recordingState]== 1)
  {
    [(PTCinematographyRefinement *)self setRecordingState:2];
    [(PTCinematographyRefinement *)self _updateGlobalsWithSnapshot:snapshotCopy];
  }
}

- (void)_updateGlobalsWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  globals = [(PTCinematographyRefinement *)self globals];
  [globals addEntriesFromDictionary:snapshotCopy];
}

@end