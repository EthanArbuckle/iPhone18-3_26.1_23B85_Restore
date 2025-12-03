@interface KNRecordingMovieTrack
- (KNRecordingMovieTrack)initWithContext:(id)context movieSegments:(id)segments;
- (id)movieSegmentToTrimWhenReplacingAfterTime:(double)time trimDuration:(double *)duration;
- (id)movieTrackByReplacingAfterTime:(double)time withMovieTrack:(id)track trimmedMovieSegment:(id)segment;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNRecordingMovieTrack

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9 = objc_msgSend_context(self, v7, v8);
  v10 = *(archive + 8);
  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_initWithCapacity_(v11, v12, v10);
  if (v10 >= 1)
  {
    v14 = 8;
    do
    {
      v15 = *(*(archive + 5) + v14);
      v16 = [KNMovieSegment alloc];
      v18 = objc_msgSend_initWithContext_message_unarchiver_(v16, v17, v9, v15, unarchiverCopy);
      objc_msgSend_addObject_(v13, v19, v18);

      v14 += 8;
      --v10;
    }

    while (v10);
  }

  v20 = (*(archive + 4) & 1) == 0 || (*(archive + 48) & 1) == 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_275DE1D48;
  v24[3] = &unk_27A6990F0;
  v21 = v13;
  v25 = v21;
  v28 = v20;
  v22 = v9;
  v26 = v22;
  selfCopy = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v23, v24);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v29 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = objc_msgSend_movieSegments(self, v7, v8, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v28, 16);
  if (v12)
  {
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        v16 = *(archive + 5);
        if (!v16)
        {
          goto LABEL_11;
        }

        v17 = *(archive + 8);
        v18 = *v16;
        if (v17 < *v16)
        {
          *(archive + 8) = v17 + 1;
          objc_msgSend_saveToMessage_archiver_(v15, v11, *&v16[2 * v17 + 2], archiverCopy);
          goto LABEL_13;
        }

        if (v18 == *(archive + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v16 = *(archive + 5);
          v18 = *v16;
        }

        *v16 = v18 + 1;
        v19 = sub_275E21188(*(archive + 3));
        v20 = *(archive + 8);
        v21 = *(archive + 5) + 8 * v20;
        *(archive + 8) = v20 + 1;
        *(v21 + 8) = v19;
        objc_msgSend_saveToMessage_archiver_(v15, v22, v19, archiverCopy);
LABEL_13:
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v24, v28, 16);
    }

    while (v12);
  }

  isMovieSegmentDataTrimmedToDuration = self->_isMovieSegmentDataTrimmedToDuration;
  *(archive + 4) |= 1u;
  *(archive + 48) = isMovieSegmentDataTrimmedToDuration;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[88]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275DE23E0, off_2812EA908[88]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (KNRecordingMovieTrack)initWithContext:(id)context movieSegments:(id)segments
{
  contextCopy = context;
  segmentsCopy = segments;
  v15.receiver = self;
  v15.super_class = KNRecordingMovieTrack;
  v10 = [(KNRecordingMovieTrack *)&v15 initWithContext:contextCopy];
  if (v10)
  {
    v11 = objc_msgSend_copy(segmentsCopy, v8, v9);
    movieSegments = v10->_movieSegments;
    v10->_movieSegments = v11;

    v10->_isMovieSegmentDataTrimmedToDuration = objc_msgSend_canTrimMovieSegmentsInContext_(KNRecordingMovieSegmentTrimmer, v13, contextCopy);
  }

  return v10;
}

- (id)movieSegmentToTrimWhenReplacingAfterTime:(double)time trimDuration:(double *)duration
{
  v28 = *MEMORY[0x277D85DE8];
  objc_msgSend_movieSegments(self, a2, duration);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v26 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v24;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v16 = *(*(&v23 + 1) + 8 * v14);
        objc_msgSend_startTime(v16, v9, v10, v23);
        if (v17 >= time)
        {
          v12 = v15;
          goto LABEL_12;
        }

        v12 = v16;

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v23, v27, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_12:

  objc_msgSend_startTime(v12, v18, v19);
  v21 = time - v20;
  if (v21 == 0.0)
  {

    v12 = 0;
  }

  *duration = v21;

  return v12;
}

- (id)movieTrackByReplacingAfterTime:(double)time withMovieTrack:(id)track trimmedMovieSegment:(id)segment
{
  v81 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  segmentCopy = segment;
  v12 = segmentCopy;
  if (segmentCopy)
  {
    objc_msgSend_startTime(segmentCopy, v10, v11);
    if (v13 > time)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNRecordingMovieTrack movieTrackByReplacingAfterTime:withMovieTrack:trimmedMovieSegment:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecordingMovieTrack.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 67, 0, "The trimmed movie segment should overlap the replacement start time.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }
  }

  v21 = objc_msgSend_movieSegments(self, v10, v11);
  v24 = objc_msgSend_movieSegments(trackCopy, v22, v23);
  v25 = objc_alloc(MEMORY[0x277CBEB18]);
  v28 = objc_msgSend_count(v21, v26, v27);
  v31 = objc_msgSend_count(v24, v29, v30);
  v35 = objc_msgSend_initWithCapacity_(v25, v32, v31 + v28);
  timeCopy = time;
  if (v12)
  {
    objc_msgSend_startTime(v12, v33, v34);
    timeCopy = v37;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v38 = v21;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v75, v80, 16);
  if (v40)
  {
    v43 = v40;
    v44 = *v76;
LABEL_8:
    v45 = 0;
    while (1)
    {
      if (*v76 != v44)
      {
        objc_enumerationMutation(v38);
      }

      v46 = *(*(&v75 + 1) + 8 * v45);
      objc_msgSend_startTime(v46, v41, v42);
      if (v48 >= timeCopy)
      {
        break;
      }

      objc_msgSend_addObject_(v35, v47, v46);
      if (v43 == ++v45)
      {
        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v75, v80, 16);
        if (v43)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  if (v12)
  {
    objc_msgSend_addObject_(v35, v49, v12);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v50 = v24;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v71, v79, 16);
  if (v52)
  {
    v55 = v52;
    v56 = *v72;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v72 != v56)
        {
          objc_enumerationMutation(v50);
        }

        v58 = objc_msgSend_movieSegmentByAddingTimeOffset_(*(*(&v71 + 1) + 8 * i), v53, v54, time, v71);
        objc_msgSend_addObject_(v35, v59, v58);
      }

      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v71, v79, 16);
    }

    while (v55);
  }

  v60 = [KNRecordingMovieTrack alloc];
  v63 = objc_msgSend_context(self, v61, v62);
  v65 = objc_msgSend_initWithContext_movieSegments_(v60, v64, v63, v35);

  if (self->_isMovieSegmentDataTrimmedToDuration && (trackCopy[72] & 1) != 0)
  {
    v68 = objc_msgSend_context(v65, v66, v67);
    v65[72] = objc_msgSend_canTrimMovieSegmentsInContext_(KNRecordingMovieSegmentTrimmer, v69, v68);
  }

  else
  {
    v65[72] = 0;
  }

  return v65;
}

@end