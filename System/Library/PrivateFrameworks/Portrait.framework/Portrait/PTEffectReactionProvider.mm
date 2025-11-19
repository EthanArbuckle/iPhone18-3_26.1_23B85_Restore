@interface PTEffectReactionProvider
- (BOOL)runGestureDetectionForTimeStamp:(id *)a3;
- (PTEffectReactionProvider)initWithEffectDescriptor:(id)a3 sharedResources:(id)a4 externalHandDetectionsEnabled:(BOOL)a5;
- (void)gesturesAvailable:(id)a3 forTimeStamp:(id *)a4;
- (void)updateWithFrame:(__CVBuffer *)a3 withTimeStamp:(id *)a4 withRotationDegrees:(int)a5 withDetectedHands:(id)a6 withDetectedFaces:(id)a7 asyncWork:(id)a8;
@end

@implementation PTEffectReactionProvider

- (PTEffectReactionProvider)initWithEffectDescriptor:(id)a3 sharedResources:(id)a4 externalHandDetectionsEnabled:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v36.receiver = self;
  v36.super_class = PTEffectReactionProvider;
  v10 = [(PTEffectReactionProvider *)&v36 init];
  v11 = v10;
  if (v10)
  {
    v10->_gestureDetectionFPS = 5.0;
    v12 = [MEMORY[0x277CBEB38] dictionary];
    personIdentifierToPerson = v11->_personIdentifierToPerson;
    v11->_personIdentifierToPerson = v12;

    v11->_globalTriggerID = 0;
    [v8 colorSize];
    v15 = v14;
    v17 = v16;
    v18 = [v9 handGestureDetector];
    if (!v18)
    {
      goto LABEL_9;
    }

    v19 = v18;
    v20 = [v9 handGestureDetector];
    [v20 frameSize];
    if (v21 == v15)
    {
      v22 = [v9 handGestureDetector];
      [v22 frameSize];
      if (v23 == v17)
      {
        v24 = [v9 handGestureDetector];
        v25 = [v24 externalCamera];
        v26 = [v8 externalCamera];

        if (v25 == v26)
        {
          v27 = [v9 handGestureDetector];
          gestureDetector = v11->_gestureDetector;
          v11->_gestureDetector = v27;

LABEL_10:
          [(PTHandGestureDetector *)v11->_gestureDetector setDelegate:v11];
          v33 = MEMORY[0x277CC0898];
          *&v11->_lastFrameTimeStamp.value = *MEMORY[0x277CC0898];
          v11->_lastFrameTimeStamp.epoch = *(v33 + 16);
          v34 = v11;
          goto LABEL_11;
        }

LABEL_9:
        v29 = [PTHandGestureDetector alloc];
        v30 = [v8 asyncInitQueue];
        v31 = -[PTHandGestureDetector initWithFrameSize:asyncInitQueue:externalHandDetectionsEnabled:externalCamera:](v29, "initWithFrameSize:asyncInitQueue:externalHandDetectionsEnabled:externalCamera:", v30, v5, [v8 externalCamera], v15, v17);
        v32 = v11->_gestureDetector;
        v11->_gestureDetector = v31;

        [v9 setHandGestureDetector:v11->_gestureDetector];
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

- (BOOL)runGestureDetectionForTimeStamp:(id *)a3
{
  if ((a3->var2 & 1) == 0)
  {
    v3 = _PTLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PTEffectReactionProvider runGestureDetectionForTimeStamp:v3];
    }

    return 1;
  }

  if ((self->_lastFrameTimeStamp.flags & 1) == 0)
  {
    return 1;
  }

  lhs = *a3;
  lastFrameTimeStamp = self->_lastFrameTimeStamp;
  CMTimeSubtract(&time, &lhs, &lastFrameTimeStamp);
  v5 = CMTimeGetSeconds(&time) * 1000.0;
  gestureDetectionFPS = self->_gestureDetectionFPS;
  if (gestureDetectionFPS < 0.01)
  {
    gestureDetectionFPS = 0.01;
  }

  return (1000.0 / fminf(gestureDetectionFPS, 30.0)) <= v5;
}

- (void)updateWithFrame:(__CVBuffer *)a3 withTimeStamp:(id *)a4 withRotationDegrees:(int)a5 withDetectedHands:(id)a6 withDetectedFaces:(id)a7 asyncWork:(id)a8
{
  v10 = *&a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v19 = *a4;
  if ([(PTEffectReactionProvider *)self runGestureDetectionForTimeStamp:&v19])
  {
    gestureDetector = self->_gestureDetector;
    v19 = *a4;
    if ([(PTHandGestureDetector *)gestureDetector detectGesturesFromBuffer:a3 timeStamp:&v19 withRotationDegrees:v10 withDetectedHands:v14 withDetectedFaces:v15 asyncWork:v16])
    {
      v18 = *&a4->var0;
      self->_lastFrameTimeStamp.epoch = a4->var3;
      *&self->_lastFrameTimeStamp.value = v18;
    }
  }
}

- (void)gesturesAvailable:(id)a3 forTimeStamp:(id *)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(PTEffectReactionProvider *)self setLatestGestures:v5];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v69 = self;
  v6 = [(NSMutableDictionary *)self->_personIdentifierToPerson allValues];
  v7 = [v6 countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v83;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v83 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v82 + 1) + 8 * i) setNumFramesInactive:{objc_msgSend(*(*(&v82 + 1) + 8 * i), "numFramesInactive") + 1}];
      }

      v8 = [v6 countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v8);
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  if ([v5 count])
  {
    v12 = 0;
    v13 = MEMORY[0x277CBEC28];
    do
    {
      [v11 addObject:v13];
      ++v12;
    }

    while ([v5 count] > v12);
  }

  v15 = v69;
  v70 = v11;
  if ([v5 count])
  {
    v16 = 0;
    v17 = 1;
    *&v14 = 67109120;
    v67 = v14;
    do
    {
      v18 = [v11 objectAtIndexedSubscript:{v16, v67}];
      v19 = [v18 intValue];

      if (v19)
      {
        ++v16;
      }

      else
      {
        personIdentifierToPerson = v15->_personIdentifierToPerson;
        v21 = [v5 objectAtIndexedSubscript:v16];
        v22 = [v21 personID];
        v23 = [(NSMutableDictionary *)personIdentifierToPerson objectForKeyedSubscript:v22];

        if (v23)
        {
          [(PTPersonWithReactions *)v23 setNumFramesInactive:0];
        }

        else
        {
          v24 = [PTPersonWithReactions alloc];
          v25 = [v5 objectAtIndexedSubscript:v16];
          v26 = [v25 personID];
          v23 = [(PTPersonWithReactions *)v24 initWithIdentifier:v26];

          [(PTPersonWithReactions *)v23 setReactionTriggerID:&v15->_globalTriggerID];
          v27 = v15->_personIdentifierToPerson;
          v28 = [(PTPersonWithReactions *)v23 identifier];
          [(NSMutableDictionary *)v27 setObject:v23 forKey:v28];

          v29 = _PTLogSystem();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [(PTPersonWithReactions *)v23 identifier];
            v31 = [v30 intValue];
            *buf = v67;
            *&buf[4] = v31;
            _os_log_impl(&dword_2243FB000, v29, OS_LOG_TYPE_INFO, "ReactionProvider: Created person %i", buf, 8u);
          }
        }

        v71 = v16 + 1;
        if ([v5 count] <= v16 + 1)
        {
          v32 = 0;
        }

        else
        {
          v32 = 0;
          v33 = v17;
          do
          {
            v34 = [v5 objectAtIndexedSubscript:v33];
            v35 = [v34 personID];
            v36 = [v5 objectAtIndexedSubscript:v16];
            v37 = [v36 personID];

            if (v35 == v37)
            {
              v38 = [v5 objectAtIndexedSubscript:v33];

              v39 = [v38 handChirality];
              v40 = [v5 objectAtIndexedSubscript:v16];
              v41 = [v40 handChirality];

              if (v39 == v41)
              {
                v42 = _PTLogSystem();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  [(PTEffectReactionProvider *)&v80 gesturesAvailable:v81 forTimeStamp:v42];
                }
              }

              [v70 setObject:MEMORY[0x277CBEC38] atIndexedSubscript:v33];
              v32 = v38;
            }

            ++v33;
          }

          while ([v5 count] > v33);
        }

        v43 = [v5 objectAtIndexedSubscript:v16];
        v44 = [v43 handChirality];

        if (v44 == 1)
        {
          v45 = [v5 objectAtIndexedSubscript:v16];
          v46 = v32;
        }

        else
        {
          v45 = v32;
          v46 = [v5 objectAtIndexedSubscript:v16];
        }

        v47 = v46;
        *buf = *&a4->var0;
        var3 = a4->var3;
        [(PTPersonWithReactions *)v23 updateWithLeftHand:v45 rightHand:v46 timeStamp:buf];

        v11 = v70;
        v16 = v71;
        v15 = v69;
      }

      ++v17;
    }

    while ([v5 count] > v16);
  }

  v48 = [MEMORY[0x277CBEB18] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v49 = [(NSMutableDictionary *)v15->_personIdentifierToPerson allValues];
  v50 = [v49 countByEnumeratingWithState:&v76 objects:v87 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v77;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v77 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v76 + 1) + 8 * j);
        if ([v54 numFramesInactive] >= 3)
        {
          v55 = [v54 identifier];
          [v48 addObject:v55];

          v56 = _PTLogSystem();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = [v54 identifier];
            v58 = [v57 intValue];
            *buf = 67109120;
            *&buf[4] = v58;
            _os_log_impl(&dword_2243FB000, v56, OS_LOG_TYPE_INFO, "ReactionProvider: Removed person %i", buf, 8u);
          }
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v76 objects:v87 count:16];
    }

    while (v51);
  }

  if ([v48 count])
  {
    [(NSMutableDictionary *)v69->_personIdentifierToPerson removeObjectsForKeys:v48];
  }

  v59 = [(NSMutableDictionary *)v69->_personIdentifierToPerson count];
  v60 = [MEMORY[0x277CBEB18] arrayWithCapacity:3 * v59];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v61 = [(NSMutableDictionary *)v69->_personIdentifierToPerson allValues];
  v62 = [v61 countByEnumeratingWithState:&v72 objects:v86 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v73;
    do
    {
      for (k = 0; k != v63; ++k)
      {
        if (*v73 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = [*(*(&v72 + 1) + 8 * k) reactions];
        [v60 addObjectsFromArray:v66];
      }

      v63 = [v61 countByEnumeratingWithState:&v72 objects:v86 count:16];
    }

    while (v63);
  }

  [(PTEffectReactionProvider *)v69 setLatestReactions:v60];
}

- (void)gesturesAvailable:(os_log_t)log forTimeStamp:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Both hands of current person have the same chirality!", buf, 2u);
}

@end