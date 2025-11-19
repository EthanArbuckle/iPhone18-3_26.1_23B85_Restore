@interface PTCinematographyFrameDetectionSmoother
- (BOOL)_computeIsNextFrameAvailable;
- (BOOL)isNextFrameAtEnd;
- (BOOL)isNextFrameAvailable;
- (PTCinematographyFrameDetectionSmoother)init;
- (id)_focusSmootherForAppendingWithTrackIdentifier:(int64_t)a3;
- (id)_focusSmootherForReadingWithTrackIdentifier:(int64_t)a3;
- (id)nextFrame;
- (void)_dropAllFocusSmoothersIfLeaked;
- (void)_endFocusSmoothersForTrackNumbers:(id)a3;
- (void)_reinit;
- (void)_skipToNextFocusSmootherWithTrackIdentifier:(int64_t)a3;
- (void)_updateFocusDetectionForFrame:(id)a3;
- (void)addFrame:(id)a3;
- (void)endFrames;
- (void)nextFrame;
@end

@implementation PTCinematographyFrameDetectionSmoother

- (PTCinematographyFrameDetectionSmoother)init
{
  v5.receiver = self;
  v5.super_class = PTCinematographyFrameDetectionSmoother;
  v2 = [(PTCinematographyFrameDetectionSmoother *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PTCinematographyFrameDetectionSmoother *)v2 _reinit];
  }

  return v3;
}

- (void)_reinit
{
  v3 = objc_opt_new();
  frames = self->_frames;
  self->_frames = v3;

  lastKnownFocusDetection = self->_lastKnownFocusDetection;
  self->_lastKnownFocusDetection = 0;

  v6 = objc_opt_new();
  firstFocusSmootherByTrackNumber = self->_firstFocusSmootherByTrackNumber;
  self->_firstFocusSmootherByTrackNumber = v6;

  *&self->_didEndFrames = 0;
}

- (void)addFrame:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_didEndFrames)
  {
    [(PTCinematographyFrameDetectionSmoother *)self _reinit];
  }

  v5 = MEMORY[0x277CBEB58];
  v6 = [(PTCinematographyFrameDetectionSmoother *)self _activeTrackNumbers];
  v7 = [v5 setWithArray:v6];

  [(NSMutableArray *)self->_frames addObject:v4];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = v4;
  v8 = [v4 allDetections];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = -[PTCinematographyFrameDetectionSmoother _focusSmootherForAppendingWithTrackIdentifier:](self, "_focusSmootherForAppendingWithTrackIdentifier:", [v13 trackIdentifier]);
        [v13 focusDistance];
        [v14 addSample:?];
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "trackIdentifier")}];
        [v7 removeObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v7 allObjects];
  [(PTCinematographyFrameDetectionSmoother *)self _endFocusSmoothersForTrackNumbers:v16];

  [(PTCinematographyFrameDetectionSmoother *)self _invalidateIsNextFrameAvailableCache];
}

- (void)endFrames
{
  v3 = [(PTCinematographyFrameDetectionSmoother *)self _activeTrackNumbers];
  [(PTCinematographyFrameDetectionSmoother *)self _endFocusSmoothersForTrackNumbers:v3];

  [(PTCinematographyFrameDetectionSmoother *)self _invalidateIsNextFrameAvailableCache];
  self->_didEndFrames = 1;
}

- (BOOL)isNextFrameAtEnd
{
  if (self->_didEndFrames)
  {
    return ![(PTCinematographyFrameDetectionSmoother *)self isNextFrameAvailable:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isNextFrameAvailable
{
  if (self->_didCacheIsNextFrameAvailable)
  {
    return self->_isNextFrameAvailableCache;
  }

  else
  {
    v3 = [(PTCinematographyFrameDetectionSmoother *)self _computeIsNextFrameAvailable];
    self->_isNextFrameAvailableCache = v3;
    self->_didCacheIsNextFrameAvailable = 1;
  }

  return v3;
}

- (void)_updateFocusDetectionForFrame:(id)a3
{
  v4 = a3;
  v5 = [v4 detectionForTrackIdentifier:{objc_msgSend(v4, "focusTrackIdentifier")}];
  if (v5)
  {
    v6 = v5;
    [(PTCinematographyFrameDetectionSmoother *)self setLastKnownFocusDetection:v5];
  }

  else
  {
    v7 = [(PTCinematographyFrameDetectionSmoother *)self lastKnownFocusDetection];
    if (v7 && (v8 = v7, -[PTCinematographyFrameDetectionSmoother lastKnownFocusDetection](self, "lastKnownFocusDetection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 trackIdentifier], v11 = objc_msgSend(v4, "focusTrackIdentifier"), v9, v8, v10 == v11))
    {
      v12 = [(PTCinematographyFrameDetectionSmoother *)self lastKnownFocusDetection];
    }

    else
    {
      v13 = _PTLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PTCinematographyFrameDetectionSmoother *)v4 _updateFocusDetectionForFrame:v13];
      }

      v12 = [v4 focusDetection];
    }

    v6 = v12;
  }

  [v4 focusOnDetection:v6];
}

- (id)nextFrame
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(PTCinematographyFrameDetectionSmoother *)self isNextFrameAvailable])
  {
    v3 = [(NSMutableArray *)self->_frames firstObject];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [v3 allDetections];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 trackIdentifier];
          v11 = [(PTCinematographyFrameDetectionSmoother *)self _focusSmootherForReadingWithTrackIdentifier:v10];
          v12 = v11;
          if (v11)
          {
            [v11 nextSmoothedSample];
            [v9 setFocusDistance:?];
            if ([v12 isEndOfSmoothedSamples])
            {
              [(PTCinematographyFrameDetectionSmoother *)self _skipToNextFocusSmootherWithTrackIdentifier:v10];
            }
          }

          else
          {
            v13 = _PTLogSystem();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [(PTCinematographyFrameDetectionSmoother *)v20 nextFrame:v10];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v6);
    }

    [(PTCinematographyFrameDetectionSmoother *)self _updateFocusDetectionForFrame:v3];
    v14 = [v3 focusDetection];
    [v14 focusDistance];
    [v3 setFocusDistance:?];

    [(NSMutableArray *)self->_frames removeObjectAtIndex:0];
    [(PTCinematographyFrameDetectionSmoother *)self _invalidateIsNextFrameAvailableCache];
    if (![(NSMutableArray *)self->_frames count])
    {
      [(PTCinematographyFrameDetectionSmoother *)self _dropAllFocusSmoothersIfLeaked];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_computeIsNextFrameAvailable
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(NSMutableArray *)self->_frames count])
  {
    return 0;
  }

  v3 = [(NSMutableArray *)self->_frames firstObject];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 allDetections];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[PTCinematographyFrameDetectionSmoother _focusSmootherForReadingWithTrackIdentifier:](self, "_focusSmootherForReadingWithTrackIdentifier:", [*(*(&v13 + 1) + 8 * i) trackIdentifier]);
        v10 = [v9 isSmoothedSampleAvailable];

        if (!v10)
        {
          v11 = 0;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (id)_focusSmootherForReadingWithTrackIdentifier:(int64_t)a3
{
  if (PTTrackIDIsInvalid(a3))
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PTCinematographyFrameDetectionSmoother *)self firstFocusSmootherByTrackNumber];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v5 = [v6 objectForKeyedSubscript:v7];
  }

  return v5;
}

- (void)_skipToNextFocusSmootherWithTrackIdentifier:(int64_t)a3
{
  firstFocusSmootherByTrackNumber = self->_firstFocusSmootherByTrackNumber;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v10 = [(NSMutableDictionary *)firstFocusSmootherByTrackNumber objectForKeyedSubscript:v6];

  v7 = [v10 nextFocusSmoother];
  v8 = self->_firstFocusSmootherByTrackNumber;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
}

- (id)_focusSmootherForAppendingWithTrackIdentifier:(int64_t)a3
{
  if (PTTrackIDIsInvalid(a3))
  {
    v5 = 0;
    goto LABEL_8;
  }

  firstFocusSmootherByTrackNumber = self->_firstFocusSmootherByTrackNumber;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [(NSMutableDictionary *)firstFocusSmootherByTrackNumber objectForKeyedSubscript:v7];
  v5 = [v8 lastFocusSmoother];

  if (v5)
  {
    if (![v5 didEndSamples])
    {
      goto LABEL_8;
    }

    v9 = [(PTCinematographyFrameDetectionSmoother *)self _newFocusSmoother];
    [v5 setNextFocusSmoother:v9];

    v10 = [v5 nextFocusSmoother];
  }

  else
  {
    v10 = [(PTCinematographyFrameDetectionSmoother *)self _newFocusSmoother];
    v11 = self->_firstFocusSmootherByTrackNumber;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v5];
  }

  v5 = v10;
LABEL_8:

  return v5;
}

- (void)_endFocusSmoothersForTrackNumbers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_firstFocusSmootherByTrackNumber objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v8)];
        v10 = [v9 lastFocusSmoother];

        [v10 endSamples];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_dropAllFocusSmoothersIfLeaked
{
  if ([(NSMutableDictionary *)self->_firstFocusSmootherByTrackNumber count])
  {
    v3 = _PTLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(PTCinematographyFrameDetectionSmoother *)v3 _dropAllFocusSmoothersIfLeaked];
    }

    [(NSMutableDictionary *)self->_firstFocusSmootherByTrackNumber removeAllObjects];
  }
}

- (void)_updateFocusDetectionForFrame:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 focusTrackIdentifier];
  v7 = [a1 focusDetection];
  v8 = [v7 focusIdentifier];
  v9 = [a2 lastKnownFocusDetection];
  v10 = 134218498;
  v11 = v6;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_2243FB000, a3, OS_LOG_TYPE_ERROR, "hanging focus track id %ld (%@?) with mismatching last known detection: %@", &v10, 0x20u);
}

- (void)nextFrame
{
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_2243FB000, a4, OS_LOG_TYPE_ERROR, "error: attempt to read from nonexistent focus smoother for track %@", a1, 0xCu);
}

@end