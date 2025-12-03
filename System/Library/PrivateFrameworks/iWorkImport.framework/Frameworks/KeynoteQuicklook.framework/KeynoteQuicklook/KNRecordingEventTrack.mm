@interface KNRecordingEventTrack
- (KNRecordingEventTrack)initWithContext:(id)context type:(id)type events:(id)events;
- (id)description;
- (id)eventTrackByReplacingSegmentAfterTime:(double)time withEventTrack:(id)track;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_slideNodeWasAddedToOrRemovedFromDocument;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNRecordingEventTrack

- (KNRecordingEventTrack)initWithContext:(id)context type:(id)type events:(id)events
{
  typeCopy = type;
  eventsCopy = events;
  v20.receiver = self;
  v20.super_class = KNRecordingEventTrack;
  v12 = [(KNRecordingEventTrack *)&v20 initWithContext:context];
  if (v12)
  {
    v13 = objc_msgSend_copy(typeCopy, v10, v11);
    type = v12->_type;
    v12->_type = v13;

    v17 = objc_msgSend_copy(eventsCopy, v15, v16);
    events = v12->_events;
    v12->_events = v17;
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277D811A8]);
  v5 = objc_msgSend_initWithObject_(v3, v4, self);
  v8 = objc_msgSend_type(self, v6, v7);
  objc_msgSend_addField_value_(v5, v9, @"type", v8);

  v12 = objc_msgSend_events(self, v10, v11);
  v13 = objc_alloc(MEMORY[0x277D811A8]);
  v15 = objc_msgSend_initWithObject_(v13, v14, v12);
  v18 = objc_msgSend_count(v12, v16, v17);
  objc_msgSend_addFieldWithFormat_(v15, v19, @"%tu elements", v18);
  v22 = objc_msgSend_descriptionString(v15, v20, v21);
  objc_msgSend_addField_value_(v5, v23, @"events", v22);

  v26 = objc_msgSend_descriptionString(v5, v24, v25);

  return v26;
}

- (id)eventTrackByReplacingSegmentAfterTime:(double)time withEventTrack:(id)track
{
  v86 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  v9 = objc_msgSend_type(self, v7, v8);
  v12 = objc_msgSend_type(trackCopy, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v13, v12);

  if ((isEqualToString & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[KNRecordingEventTrack eventTrackByReplacingSegmentAfterTime:withEventTrack:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecordingEventTrack.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 51, 0, "Invalid parameter not satisfying: %{public}s", "[type isEqualToString:replacementEventTrack.type]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_events(self, v15, v16);
  v27 = objc_msgSend_events(trackCopy, v25, v26);
  v28 = MEMORY[0x277CBEB18];
  v31 = objc_msgSend_count(v24, v29, v30);
  v34 = objc_msgSend_count(v27, v32, v33);
  v36 = objc_msgSend_arrayWithCapacity_(v28, v35, v34 + v31);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v37 = v24;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v80, v85, 16);
  if (v39)
  {
    v42 = v39;
    v43 = *v81;
LABEL_5:
    v44 = 0;
    while (1)
    {
      if (*v81 != v43)
      {
        objc_enumerationMutation(v37);
      }

      v45 = *(*(&v80 + 1) + 8 * v44);
      objc_msgSend_startTime(v45, v40, v41);
      if (v47 >= time)
      {
        break;
      }

      objc_msgSend_addObject_(v36, v46, v45);
      if (v42 == ++v44)
      {
        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v80, v85, 16);
        if (v42)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v50 = objc_msgSend_lastObject(v36, v48, v49);
  if (v50)
  {
    v53 = v50;
    do
    {
      if (objc_msgSend_canPrecedeDiscontinuity(v53, v51, v52))
      {
        break;
      }

      objc_msgSend_removeLastObject(v36, v54, v55);
      v58 = objc_msgSend_lastObject(v36, v56, v57);

      v53 = v58;
    }

    while (v58);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v59 = v27;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v76, v84, 16);
  if (v61)
  {
    v64 = v61;
    v65 = *v77;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v77 != v65)
        {
          objc_enumerationMutation(v59);
        }

        v67 = objc_msgSend_recordingEventByAddingTimeOffset_(*(*(&v76 + 1) + 8 * i), v62, v63, time);
        objc_msgSend_addObject_(v36, v68, v67);
      }

      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v62, &v76, v84, 16);
    }

    while (v64);
  }

  v69 = [KNRecordingEventTrack alloc];
  v72 = objc_msgSend_context(self, v70, v71);
  v74 = objc_msgSend_initWithContext_type_events_(v69, v73, v72, v9, v36);

  return v74;
}

- (void)p_slideNodeWasAddedToOrRemovedFromDocument
{
  v16 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_documentRoot(v16, v4, v5);
  if (objc_msgSend_isCollaborativeClient(v6, v7, v8))
  {
    v11 = objc_msgSend_type(self, v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"com.apple.Keynote.recordingEventTrack-navigation");

    if (isEqualToString)
    {

      objc_msgSend_willModify(self, v14, v15);
    }
  }

  else
  {
  }
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = *(archive + 8);
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithCapacity_(v7, v8, v6);
  if (v6 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = *(*(archive + 5) + v10);
      v12 = *(v11 + 16);
      if ((v12 & 1) != 0 || (v12 & 4) != 0 || (v12 & 2) != 0 || (v12 & 8) != 0)
      {
        v13 = objc_opt_class();
        if (v13)
        {
          v14 = [v13 alloc];
          v16 = objc_msgSend_initWithMessage_unarchiver_parentEventTrack_(v14, v15, v11, unarchiverCopy, self);
          objc_msgSend_addObject_(v9, v17, v16);
        }
      }

      v10 += 8;
      --v6;
    }

    while (v6);
  }

  objc_storeStrong(&self->_events, v9);
  if (*(archive + 16))
  {
    v19 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v18, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL);
    v22 = objc_msgSend_copy(v19, v20, v21);
    type = self->_type;
    self->_type = v22;
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v35 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = objc_msgSend_events(self, v7, v8, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v30, v34, 16);
  if (v12)
  {
    v13 = *v31;
    do
    {
      v14 = 0;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
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
        v19 = sub_275E20DD4(*(archive + 3));
        v20 = *(archive + 8);
        v21 = *(archive + 5) + 8 * v20;
        *(archive + 8) = v20 + 1;
        *(v21 + 8) = v19;
        objc_msgSend_saveToMessage_archiver_(v15, v22, v19, archiverCopy);
LABEL_13:
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v30, v34, 16);
    }

    while (v12);
  }

  v25 = objc_msgSend_type(self, v23, v24);
  v28 = v25;
  if (v25)
  {
    v29 = objc_msgSend_tsp_protobufString(v25, v26, v27);
    sub_275DC45F0(archive, v29);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[76]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275DC486C, off_2812EA908[76]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end