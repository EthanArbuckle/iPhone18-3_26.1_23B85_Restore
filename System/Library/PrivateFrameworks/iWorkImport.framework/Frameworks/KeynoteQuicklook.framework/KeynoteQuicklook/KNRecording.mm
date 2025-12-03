@interface KNRecording
+ (id)p_correctedNavigationEventsFromNavigationEventTrack:(id)track;
+ (id)p_movieEventsDerivedFromNavigationEvents:(id)events;
- (KNRecording)initWithContext:(id)context;
- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration;
- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration modificationDate:(id)date;
- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration syncState:(id)state modificationDate:(id)date correctionHistory:(id)history;
- (id)description;
- (id)movieSegmentToTrimWhenReplacingAfterTime:(double)time trimDuration:(double *)duration;
- (id)recordingByAddingMissingEventsForRadar49654305;
- (id)recordingByMarkingAsOutOfSyncWithShow:(BOOL)show withLocalOutOfSyncToken:(id)token restoringModificationDate:(id)date;
- (id)recordingByReplacingAfterTime:(double)time withRecording:(id)recording trimmedMovieSegment:(id)segment;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)slideNodeWasAddedToDocument:(id)document;
- (void)slideNodeWillBeRemovedFromDocument:(id)document;
@end

@implementation KNRecording

- (id)recordingByAddingMissingEventsForRadar49654305
{
  v4 = objc_msgSend_eventTracks(self, a2, v2);
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = sub_275E334C0;
  v97 = sub_275E334D0;
  v98 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0x7FFFFFFFFFFFFFFFLL;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_275E334C0;
  v87 = sub_275E334D0;
  v88 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0x7FFFFFFFFFFFFFFFLL;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_275E334D8;
  v78[3] = &unk_27A699628;
  v78[4] = &v93;
  v78[5] = &v89;
  v78[6] = &v83;
  v78[7] = &v79;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v5, v78);
  v8 = v84[5];
  if (v8)
  {
    v9 = objc_msgSend_events(v8, v6, v7);
    if (objc_msgSend_count(v9, v10, v11))
    {

LABEL_19:
      selfCopy = self;
      goto LABEL_20;
    }

    v12 = v94[5];

    if (!v12)
    {
      goto LABEL_19;
    }
  }

  else if (!v94[5])
  {
    goto LABEL_19;
  }

  v77 = objc_msgSend_context(self, v6, v7);
  v13 = objc_opt_class();
  v15 = objc_msgSend_p_correctedNavigationEventsFromNavigationEventTrack_(v13, v14, v94[5]);
  v16 = objc_opt_class();
  v18 = objc_msgSend_p_movieEventsDerivedFromNavigationEvents_(v16, v17, v15);
  if (objc_msgSend_count(v18, v19, v20) || (objc_msgSend_events(v94[5], v21, v22), v23 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v15, v24, v23), v23, (isEqual & 1) == 0))
  {
    v76 = v18;
    v27 = objc_msgSend_mutableCopy(v4, v21, v22);
    v28 = [KNRecordingEventTrack alloc];
    v74 = objc_msgSend_initWithContext_type_events_(v28, v29, v77, @"com.apple.Keynote.recordingEventTrack-navigation", v15);
    v31 = v90[3];
    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[KNRecording(KNRecordingMovieEventTrackUpgradeAdditions) recordingByAddingMissingEventsForRadar49654305]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecording+KNRecordingMovieEventTrackUpgradeAdditions.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 63, 0, "If a navigation event track exists, it should have a valid index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
      v31 = v90[3];
    }

    objc_msgSend_setObject_atIndexedSubscript_(v27, v30, v74, v31, v74);
    v39 = [KNRecordingEventTrack alloc];
    v42 = objc_msgSend_initWithContext_type_events_(v39, v40, v77, @"com.apple.iwork.Keynote.recordingEventTrack-movie", v18);
    if (v80[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = v90[3];
      if (v43 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = MEMORY[0x277D81150];
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[KNRecording(KNRecordingMovieEventTrackUpgradeAdditions) recordingByAddingMissingEventsForRadar49654305]");
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecording+KNRecordingMovieEventTrackUpgradeAdditions.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v48, v45, v47, 70, 0, "If a navigation event track exists, it should have a valid index");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
        v43 = v90[3];
      }

      objc_msgSend_insertObject_atIndex_(v27, v41, v42, v43 + 1);
    }

    else
    {
      objc_msgSend_setObject_atIndexedSubscript_(v27, v41, v42);
    }

    v53 = v15;
    v54 = objc_msgSend_correctionHistory(self, v51, v52);
    v57 = objc_msgSend_correctionHistoryWithAddedMissingEventsForRadar49654305(v54, v55, v56);

    v58 = [KNRecording alloc];
    v61 = objc_msgSend_movieTrack(self, v59, v60);
    objc_msgSend_duration(self, v62, v63);
    v65 = v64;
    v68 = objc_msgSend_syncState(self, v66, v67);
    v71 = objc_msgSend_modificationDate(self, v69, v70);
    selfCopy = objc_msgSend_initWithContext_eventTracks_movieTrack_duration_syncState_modificationDate_correctionHistory_(v58, v72, v77, v27, v61, v68, v71, v57, v65);

    v15 = v53;
    v18 = v76;
  }

  else
  {
    selfCopy = 0;
  }

  if (!selfCopy)
  {
    goto LABEL_19;
  }

LABEL_20:
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);

  return selfCopy;
}

+ (id)p_correctedNavigationEventsFromNavigationEventTrack:(id)track
{
  v104 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  v75 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v6 = objc_msgSend_events(trackCopy, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v90, v103, 16);
  v73 = trackCopy;
  if (!v8)
  {
    v81 = 0;
    v10 = 0;
    goto LABEL_38;
  }

  v81 = 0;
  v9 = 0;
  v10 = 0;
  v77 = *v91;
  obj = v6;
  do
  {
    v11 = 0;
    v78 = v8;
    do
    {
      if (*v91 != v77)
      {
        objc_enumerationMutation(obj);
      }

      context = objc_autoreleasePoolPush();
      objc_opt_class();
      v12 = TSUCheckedDynamicCast();
      v15 = v12;
      if (v12)
      {
        objc_msgSend_startTime(v12, v13, v14, v73);
        v17 = v16;
        v84 = objc_msgSend_targetSlideNode(v15, v18, v19);
        v79 = objc_msgSend_targetEventIndex(v15, v20, v21);
        v76 = objc_msgSend_animationPhase(v15, v22, v23);
        if (v84 != v10)
        {
          v80 = v84;

          v82 = objc_msgSend_slide(v80, v26, v27);
          v28 = [KNAnimatedSlideModel alloc];
          v31 = objc_msgSend_buildChunks(v82, v29, v30);
          v34 = objc_msgSend_infosToDisplay(v82, v32, v33);
          v36 = objc_msgSend_initWithBuildChunks_infos_session_animatedSlideView_(v28, v35, v31, v34, 0, 0);

          *(v99 + 24) = 0;
          v95[3] = 0.0;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v39 = objc_msgSend_infosToDisplay(v82, v37, v38);
          v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v86, v102, 16);
          if (v41)
          {
            v42 = *v87;
            while (2)
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v87 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                objc_opt_class();
                v45 = TSUDynamicCast();
                if (v45)
                {
                  v46 = objc_msgSend_animatedBuildForInfo_atEvent_(v36, v44, v45, 0);
                  isInitialAmbientBuild = objc_msgSend_isInitialAmbientBuild(v46, v47, v48);

                  if (isInitialAmbientBuild)
                  {

                    v50 = MEMORY[0x277D85DD0];
                    *(v99 + 24) = 1;
                    v85[0] = v50;
                    v85[1] = 3221225472;
                    v85[2] = sub_275E33BC8;
                    v85[3] = &unk_27A699650;
                    v85[4] = &v98;
                    v85[5] = &v94;
                    objc_msgSend_enumerateAnimatedBuildsAndTimeRangesAtIndex_usingBlock_(v36, v51, 0, v85);

                    v10 = v80;
                    goto LABEL_21;
                  }
                }
              }

              v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v44, &v86, v102, 16);
              if (v41)
              {
                continue;
              }

              break;
            }
          }

          v10 = v80;
LABEL_19:
          objc_msgSend_addObject_(v75, v24, v15);
          v9 = 0;
LABEL_33:
          v69 = v15;

          v81 = v69;
          goto LABEL_34;
        }

        if ((v9 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_21:
        if (*(v99 + 24) == 1)
        {
          if (v79)
          {
            v52 = [KNRecordingNavigationEvent alloc];
            started = objc_msgSend_initWithStartTime_targetSlideNode_targetEventIndex_animationPhase_(v52, v53, v84, v79 + 1, v76, v17);
            objc_msgSend_addObject_(v75, v55, started);
            goto LABEL_31;
          }

          objc_msgSend_addObject_(v75, v24, v15);
          if ((v76 & 0xFFFFFFFFFFFFFFFDLL) == 0)
          {
            v62 = [KNRecordingNavigationEvent alloc];
            started = objc_msgSend_initWithStartTime_targetSlideNode_targetEventIndex_animationPhase_(v62, v63, v10, 1, 1, v17);
            objc_msgSend_addObject_(v75, v64, started);
            v65 = [KNRecordingNavigationEvent alloc];
            v67 = objc_msgSend_initWithStartTime_targetSlideNode_targetEventIndex_animationPhase_(v65, v66, v10, 1, 2, v17);
            objc_msgSend_addObject_(v75, v68, v67);

LABEL_31:
          }
        }

        else
        {
          if (v76 == 1 && v79 == 1)
          {
            v56 = v95[3];
            if (v56 > 0.0)
            {
              objc_msgSend_startTime(v81, v24, v25);
              v58 = v57;
              v59 = [KNRecordingNavigationEvent alloc];
              started = objc_msgSend_initWithStartTime_targetSlideNode_targetEventIndex_animationPhase_(v59, v60, v84, 1, 1, fmax(v17 - v56, v58));
              objc_msgSend_addObject_(v75, v61, started);
              goto LABEL_31;
            }
          }

          objc_msgSend_addObject_(v75, v24, v15);
        }

        v9 = 1;
        goto LABEL_33;
      }

LABEL_34:

      objc_autoreleasePoolPop(context);
      ++v11;
    }

    while (v11 != v78);
    v6 = obj;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v70, &v90, v103, 16);
  }

  while (v8);
LABEL_38:

  v71 = v75;
  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v98, 8);

  return v71;
}

+ (id)p_movieEventsDerivedFromNavigationEvents:(id)events
{
  v94 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v70 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = eventsCopy;
  v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v88, v93, 16);
  if (v69)
  {
    v71 = 0;
    v6 = 0;
    v7 = 0;
    v68 = *v89;
    v66 = v79;
    while (1)
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v89 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v88 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        objc_msgSend_startTime(v9, v11, v12, v66);
        v14 = v13;
        v17 = objc_msgSend_targetSlideNode(v9, v15, v16);
        v20 = objc_msgSend_targetEventIndex(v9, v18, v19);
        v23 = objc_msgSend_animationPhase(v9, v21, v22);
        if (v17 == v7 && (!v23 ? (v24 = v20 == v6) : (v24 = 1), v24 && (v23 == 1 ? (v25 = v20 == v6 + 1) : (v25 = 1), v25)))
        {
          if (v23 != 1)
          {
            v6 = v20;
          }
        }

        else
        {
          v72 = v23;
          v73 = v10;
          v76 = v20;
          v77 = v17;
          v74 = v6;
          v75 = v7;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v26 = v70;
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v84, v92, 16);
          if (v28)
          {
            v29 = v28;
            v30 = *v85;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v85 != v30)
                {
                  objc_enumerationMutation(v26);
                }

                v32 = *(*(&v84 + 1) + 8 * j);
                v33 = [KNRecordingMovieEvent alloc];
                started = objc_msgSend_initWithStartTime_movieInfo_movieSlideNodeUUID_didPlayAcrossSlides_movieEventType_movieEventValue_(v33, v34, v32, 0, 0, 2, v14, 0.0);
                objc_msgSend_addObject_(v4, v36, started);
                v37 = [KNRecordingMovieEvent alloc];
                v39 = objc_msgSend_initWithStartTime_movieInfo_movieSlideNodeUUID_didPlayAcrossSlides_movieEventType_movieEventValue_(v37, v38, v32, 0, 0, 4, v14, NAN);
                objc_msgSend_addObject_(v4, v40, v39);
              }

              v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v41, &v84, v92, 16);
            }

            while (v29);
          }

          v7 = v75;
          v17 = v77;

          objc_msgSend_removeAllObjects(v26, v42, v43);
          v23 = v72;
          v6 = v74;
          v44 = v76 != v74 || v77 != v75;
          v20 = v76;
          if (v72 != 1 && v44)
          {
            v6 = v76;
          }

          if (v77 == v75)
          {
            v10 = v73;
          }

          else
          {
            v10 = v73;
            if (v72 != 1 && v44)
            {
              v45 = v77;

              v48 = objc_msgSend_slide(v45, v46, v47);
              v49 = [KNAnimatedSlideModel alloc];
              v52 = objc_msgSend_buildChunks(v48, v50, v51);
              v55 = objc_msgSend_infosToDisplay(v48, v53, v54);
              v57 = objc_msgSend_initWithBuildChunks_infos_session_animatedSlideView_(v49, v56, v52, v55, 0, 0);

              v7 = v45;
              v71 = v57;
              v6 = v76;
              v17 = v77;
LABEL_45:

              goto LABEL_46;
            }
          }
        }

        if (v23 == 1 && v17 == v7 && v20 == v6 + 1)
        {
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v79[0] = sub_275E34148;
          v79[1] = &unk_27A699678;
          v60 = v71;
          v80 = v60;
          v61 = v70;
          v83 = v14;
          v81 = v61;
          v82 = v4;
          v71 = v60;
          objc_msgSend_enumerateAnimatedBuildsAndTimeRangesAtIndex_usingBlock_(v60, v62, v6, v78);

          v48 = v80;
          goto LABEL_45;
        }

LABEL_46:

        objc_autoreleasePoolPop(v10);
      }

      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v88, v93, 16);
      if (!v69)
      {
        goto LABEL_50;
      }
    }
  }

  v71 = 0;
  v7 = 0;
LABEL_50:

  v64 = v4;
  return v4;
}

- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration syncState:(id)state modificationDate:(id)date correctionHistory:(id)history
{
  tracksCopy = tracks;
  trackCopy = track;
  stateCopy = state;
  dateCopy = date;
  historyCopy = history;
  v39.receiver = self;
  v39.super_class = KNRecording;
  v23 = [(KNRecording *)&v39 initWithContext:context];
  if (v23)
  {
    v24 = objc_msgSend_copy(tracksCopy, v21, v22);
    eventTracks = v23->_eventTracks;
    v23->_eventTracks = v24;

    objc_storeStrong(&v23->_movieTrack, track);
    v23->_duration = duration;
    v28 = objc_msgSend_copy(stateCopy, v26, v27);
    syncState = v23->_syncState;
    v23->_syncState = v28;

    v32 = objc_msgSend_copy(dateCopy, v30, v31);
    modificationDate = v23->_modificationDate;
    v23->_modificationDate = v32;

    v36 = objc_msgSend_copy(historyCopy, v34, v35);
    correctionHistory = v23->_correctionHistory;
    v23->_correctionHistory = v36;
  }

  return v23;
}

- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration modificationDate:(id)date
{
  dateCopy = date;
  trackCopy = track;
  tracksCopy = tracks;
  contextCopy = context;
  v16 = [KNRecordingSyncState alloc];
  canClearOutOfSyncToken = objc_msgSend_initWithOutOfSyncToken_canClearOutOfSyncToken_(v16, v17, 0, 1);
  v19 = objc_alloc_init(KNRecordingCorrectionHistory);
  v21 = objc_msgSend_initWithContext_eventTracks_movieTrack_duration_syncState_modificationDate_correctionHistory_(self, v20, contextCopy, tracksCopy, trackCopy, canClearOutOfSyncToken, dateCopy, v19, duration);

  return v21;
}

- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration
{
  v10 = MEMORY[0x277CBEAA8];
  trackCopy = track;
  tracksCopy = tracks;
  contextCopy = context;
  v16 = objc_msgSend_date(v10, v14, v15);
  v18 = objc_msgSend_initWithContext_eventTracks_movieTrack_duration_modificationDate_(self, v17, contextCopy, tracksCopy, trackCopy, v16, duration);

  return v18;
}

- (KNRecording)initWithContext:(id)context
{
  v4 = MEMORY[0x277CBEA60];
  contextCopy = context;
  v8 = objc_msgSend_array(v4, v6, v7);
  v9 = [KNRecordingMovieTrack alloc];
  v11 = objc_msgSend_initWithContext_movieSegments_(v9, v10, contextCopy, MEMORY[0x277CBEBF8]);
  v14 = objc_msgSend_date(MEMORY[0x277CBEAA8], v12, v13);
  v16 = objc_msgSend_initWithContext_eventTracks_movieTrack_duration_modificationDate_(self, v15, contextCopy, v8, v11, v14, 0.0);

  return v16;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277D811A8]);
  v5 = objc_msgSend_initWithObject_(v3, v4, self);
  v8 = objc_msgSend_eventTracks(self, v6, v7);
  v11 = objc_msgSend_description(v8, v9, v10);
  objc_msgSend_addField_value_(v5, v12, @"eventTracks", v11);

  v15 = objc_msgSend_movieTrack(self, v13, v14);
  v18 = objc_msgSend_description(v15, v16, v17);
  objc_msgSend_addField_value_(v5, v19, @"movieTrack", v18);

  v20 = MEMORY[0x277CCABB0];
  objc_msgSend_duration(self, v21, v22);
  v25 = objc_msgSend_numberWithDouble_(v20, v23, v24);
  v28 = objc_msgSend_description(v25, v26, v27);
  objc_msgSend_addField_value_(v5, v29, @"duration", v28);

  v32 = objc_msgSend_syncState(self, v30, v31);
  v35 = objc_msgSend_description(v32, v33, v34);
  objc_msgSend_addField_value_(v5, v36, @"syncState", v35);

  v39 = objc_msgSend_modificationDate(self, v37, v38);
  v42 = objc_msgSend_description(v39, v40, v41);
  objc_msgSend_addField_value_(v5, v43, @"modificationDate", v42);

  v46 = objc_msgSend_correctionHistory(self, v44, v45);
  v49 = objc_msgSend_description(v46, v47, v48);
  objc_msgSend_addField_value_(v5, v50, @"correctionHistory", v49);

  v53 = objc_msgSend_descriptionString(v5, v51, v52);

  return v53;
}

- (id)movieSegmentToTrimWhenReplacingAfterTime:(double)time trimDuration:(double *)duration
{
  v6 = objc_msgSend_movieTrack(self, a2, duration);
  v8 = objc_msgSend_movieSegmentToTrimWhenReplacingAfterTime_trimDuration_(v6, v7, duration, time);

  return v8;
}

- (id)recordingByReplacingAfterTime:(double)time withRecording:(id)recording trimmedMovieSegment:(id)segment
{
  v112 = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  segmentCopy = segment;
  v94 = objc_msgSend_context(self, v9, v10);
  selfCopy = self;
  v13 = objc_msgSend_eventTracks(self, v11, v12);
  v95 = recordingCopy;
  v16 = objc_msgSend_eventTracks(recordingCopy, v14, v15);
  v19 = objc_msgSend_mutableCopy(v16, v17, v18);

  v20 = objc_alloc(MEMORY[0x277CBEB18]);
  v23 = objc_msgSend_count(v13, v21, v22);
  v100 = objc_msgSend_initWithCapacity_(v20, v24, v23);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v13;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v106, v111, 16);
  if (v26)
  {
    v28 = v26;
    v29 = *v107;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v107 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v106 + 1) + 8 * i);
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = sub_275E3A764;
        v105[3] = &unk_27A6996C8;
        v105[4] = v31;
        v32 = objc_msgSend_indexOfObjectPassingTest_(v19, v27, v105);
        if (v32 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v33 = v32;
          v34 = objc_msgSend_objectAtIndexedSubscript_(v19, v27, v32);
          v36 = objc_msgSend_eventTrackByReplacingSegmentAfterTime_withEventTrack_(v31, v35, v34, time);
          objc_msgSend_addObject_(v100, v37, v36);

          objc_msgSend_removeObjectAtIndex_(v19, v38, v33);
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v106, v111, 16);
    }

    while (v28);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v39 = v19;
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v101, v110, 16);
  if (v41)
  {
    v42 = v41;
    v43 = *v102;
    v44 = MEMORY[0x277CBEBF8];
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v102 != v43)
        {
          objc_enumerationMutation(v39);
        }

        v46 = *(*(&v101 + 1) + 8 * j);
        v47 = [KNRecordingEventTrack alloc];
        v50 = objc_msgSend_type(v46, v48, v49);
        v52 = objc_msgSend_initWithContext_type_events_(v47, v51, v94, v50, v44);

        v54 = objc_msgSend_eventTrackByReplacingSegmentAfterTime_withEventTrack_(v52, v53, v46, time);
        objc_msgSend_addObject_(v100, v55, v54);
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v56, &v101, v110, 16);
    }

    while (v42);
  }

  v59 = objc_msgSend_movieTrack(selfCopy, v57, v58);
  v62 = objc_msgSend_movieTrack(v95, v60, v61);
  v64 = v62;
  if (v59 || !v62)
  {
    v67 = segmentCopy;
    if (v59 && !v62)
    {
      v68 = [KNRecordingMovieTrack alloc];
      v64 = objc_msgSend_initWithContext_movieSegments_(v68, v69, v94, MEMORY[0x277CBEBF8]);
    }
  }

  else
  {
    v65 = [KNRecordingMovieTrack alloc];
    v59 = objc_msgSend_initWithContext_movieSegments_(v65, v66, v94, MEMORY[0x277CBEBF8]);
    v67 = segmentCopy;
  }

  v93 = v64;
  v92 = objc_msgSend_movieTrackByReplacingAfterTime_withMovieTrack_trimmedMovieSegment_(v59, v63, v64, v67, time);
  v72 = objc_msgSend_modificationDate(v95, v70, v71);
  v75 = objc_msgSend_modificationDate(selfCopy, v73, v74);
  v77 = v75;
  if (v75 && objc_msgSend_compare_(v75, v76, v72) >= 1)
  {
    v78 = v77;

    v72 = v78;
  }

  v79 = [KNRecording alloc];
  objc_msgSend_duration(v95, v80, v81);
  v83 = v82 + time;
  v84 = [KNRecordingSyncState alloc];
  canClearOutOfSyncToken = objc_msgSend_initWithOutOfSyncToken_canClearOutOfSyncToken_(v84, v85, 0, 1);
  v89 = objc_msgSend_correctionHistory(selfCopy, v87, v88);
  v98 = objc_msgSend_initWithContext_eventTracks_movieTrack_duration_syncState_modificationDate_correctionHistory_(v79, v90, v94, v100, v92, canClearOutOfSyncToken, v72, v89, v83);

  return v98;
}

- (id)recordingByMarkingAsOutOfSyncWithShow:(BOOL)show withLocalOutOfSyncToken:(id)token restoringModificationDate:(id)date
{
  showCopy = show;
  tokenCopy = token;
  dateCopy = date;
  if (dateCopy && showCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNRecording recordingByMarkingAsOutOfSyncWithShow:withLocalOutOfSyncToken:restoringModificationDate:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecording.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 183, 0, "A modification date should only be restored on a recording when it is being marked as in sync with the show.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (showCopy)
  {
  }

  else if (dateCopy)
  {
    goto LABEL_8;
  }

  dateCopy = objc_msgSend_date(MEMORY[0x277CBEAA8], v9, v10);
LABEL_8:
  v19 = objc_msgSend_recordingSyncStateByMarkingRecordingAsOutOfSync_withLocalOutOfSyncToken_(self->_syncState, v9, showCopy, tokenCopy);
  v20 = [KNRecording alloc];
  v23 = objc_msgSend_context(self, v21, v22);
  v26 = objc_msgSend_eventTracks(self, v24, v25);
  v29 = objc_msgSend_movieTrack(self, v27, v28);
  objc_msgSend_duration(self, v30, v31);
  v33 = v32;
  v36 = objc_msgSend_correctionHistory(self, v34, v35);
  v38 = objc_msgSend_initWithContext_eventTracks_movieTrack_duration_syncState_modificationDate_correctionHistory_(v20, v37, v23, v26, v29, v19, dateCopy, v36, v33);

  return v38;
}

- (void)slideNodeWasAddedToDocument:(id)document
{
  v19 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = objc_msgSend_eventTracks(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v18, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_slideNodeWasAddedToDocument_(*(*(&v14 + 1) + 8 * v13++), v10, documentCopy);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

- (void)slideNodeWillBeRemovedFromDocument:(id)document
{
  v19 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = objc_msgSend_eventTracks(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v18, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_slideNodeWillBeRemovedFromDocument_(*(*(&v14 + 1) + 8 * v13++), v10, documentCopy);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v10 = objc_msgSend_eventTracks(self, v6, v7);
  if (v10)
  {
    objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v8, v10, archive + 24);
  }

  v13 = objc_msgSend_movieTrack(self, v8, v9);
  if (v13)
  {
    *(archive + 4) |= 1u;
    v14 = *(archive + 6);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C8F050](v15);
      *(archive + 6) = v14;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v11, v13, v14);
  }

  objc_msgSend_duration(self, v11, v12);
  *(archive + 4) |= 0x10u;
  *(archive + 10) = v16;
  v20 = objc_msgSend_modificationDate(self, v17, v18);
  if (v20)
  {
    *(archive + 4) |= 2u;
    v21 = *(archive + 7);
    if (!v21)
    {
      v22 = *(archive + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C8EFE0](v22);
      *(archive + 7) = v21;
    }

    objc_msgSend_tsp_saveToMessage_(v20, v19, v21);
  }

  syncState = self->_syncState;
  if (syncState)
  {
    *(archive + 4) |= 4u;
    v24 = *(archive + 8);
    if (!v24)
    {
      v25 = *(archive + 1);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = sub_275E20C04(v25);
      *(archive + 8) = v24;
    }

    objc_msgSend_saveToArchive_archiver_(syncState, v19, v24, archiverCopy);
  }

  correctionHistory = self->_correctionHistory;
  *(archive + 4) |= 8u;
  v27 = *(archive + 9);
  if (!v27)
  {
    v28 = *(archive + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = sub_275E20CD4(v28);
    *(archive + 9) = v27;
  }

  objc_msgSend_saveToMessage_archiver_(correctionHistory, v19, v27, archiverCopy);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v29, 7, archive);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812EA908[70]);

  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = sub_275E555D4;
  v43 = &unk_27A697A10;
  selfCopy = self;
  v7 = unarchiverCopy;
  v8 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v7, v9, v6 + 24, v8, 0, &v40);

  v10 = *(v6 + 16);
  if (v10)
  {
    v11 = *(v6 + 48);
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = sub_275E555EC;
    v38 = &unk_27A699850;
    selfCopy2 = self;
    v12 = v7;
    v13 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v12, v14, v11, v13, 0, &v35);

    v10 = *(v6 + 16);
  }

  self->_duration = *(v6 + 80);
  if ((v10 & 2) != 0)
  {
    v15 = objc_alloc(MEMORY[0x277CBEAA8]);
    if (*(v6 + 56))
    {
      v17 = objc_msgSend_tsp_initWithMessage_(v15, v16, *(v6 + 56), v35, v36, v37, v38, selfCopy2, v40, v41, v42, v43, selfCopy);
    }

    else
    {
      v17 = objc_msgSend_tsp_initWithMessage_(v15, v16, MEMORY[0x277D809C0], v35, v36, v37, v38, selfCopy2, v40, v41, v42, v43, selfCopy);
    }

    modificationDate = self->_modificationDate;
    self->_modificationDate = v17;

    v10 = *(v6 + 16);
  }

  if ((v10 & 4) != 0)
  {
    v26 = [KNRecordingSyncState alloc];
    if (*(v6 + 64))
    {
      v28 = objc_msgSend_initWithArchive_unarchiver_(v26, v27, *(v6 + 64), v7, v35, v36, v37, v38, selfCopy2);
    }

    else
    {
      v28 = objc_msgSend_initWithArchive_unarchiver_(v26, v27, &qword_2812EB918, v7, v35, v36, v37, v38, selfCopy2);
    }
  }

  else
  {
    if ((v10 & 0x20) == 0 || *(v6 + 88))
    {
      v19 = [KNRecordingSyncState alloc];
      v22 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v20, v21);
      canClearOutOfSyncToken = objc_msgSend_initWithOutOfSyncToken_canClearOutOfSyncToken_(v19, v23, v22, 0);
      syncState = self->_syncState;
      self->_syncState = canClearOutOfSyncToken;

      goto LABEL_16;
    }

    v33 = [KNRecordingSyncState alloc];
    v28 = objc_msgSend_initWithOutOfSyncToken_canClearOutOfSyncToken_(v33, v34, 0, 1);
  }

  v22 = self->_syncState;
  self->_syncState = v28;
LABEL_16:

  if ((*(v6 + 16) & 8) != 0)
  {
    v30 = [KNRecordingCorrectionHistory alloc];
    if (*(v6 + 72))
    {
      v29 = objc_msgSend_initWithMessage_unarchiver_(v30, v31, *(v6 + 72), v7, v35, v36, v37, v38, selfCopy2);
    }

    else
    {
      v29 = objc_msgSend_initWithMessage_unarchiver_(v30, v31, &qword_2812EB940, v7, v35, v36, v37, v38, selfCopy2);
    }
  }

  else
  {
    v29 = objc_alloc_init(KNRecordingCorrectionHistory);
  }

  correctionHistory = self->_correctionHistory;
  self->_correctionHistory = v29;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275E556C0, off_2812EA908[70]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end