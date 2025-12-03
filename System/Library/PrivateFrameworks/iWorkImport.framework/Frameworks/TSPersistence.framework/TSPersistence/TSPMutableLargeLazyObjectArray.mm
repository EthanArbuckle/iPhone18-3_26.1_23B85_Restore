@interface TSPMutableLargeLazyObjectArray
- (id)convertElementToSegmentElement:(id)element;
- (id)convertSegmentElementToElement:(id)element;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSPMutableLargeLazyObjectArray

- (id)convertElementToSegmentElement:(id)element
{
  elementCopy = element;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v6 = objc_msgSend_referenceForObject_(TSPLazyReference, v5, v4);

  return v6;
}

- (id)convertSegmentElementToElement:(id)element
{
  elementCopy = element;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v51 = 0;
  v6 = objc_msgSend_objectAndReturnError_(v4, v5, &v51);
  v7 = v51;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    v50 = v7;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = objc_msgSend_domain(v50, v12, v13);
    v17 = objc_msgSend_code(v50, v15, v16);
    isRecoverable = objc_msgSend_tsp_isRecoverable(v50, v18, v19);
    v23 = objc_msgSend_tsp_hintsDescription(v50, v21, v22);
    v24 = v23;
    if (isRecoverable)
    {
      v25 = @"recoverable=YES, ";
    }

    else
    {
      v25 = &stru_2885C9BB8;
    }

    v47 = v23;
    v45 = v17;
    v46 = v25;
    TSUSetCrashReporterInfo();

    v26 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPMutableLargeLazyObjectArray convertSegmentElementToElement:]", "[TSPMutableLargeLazyObjectArray convertSegmentElementToElement:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeLazyObjectArray.mm", 48, v11, v14, v45, v46, v47, v50);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeLazyObjectArray.mm");
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v35 = objc_msgSend_domain(v50, v33, v34);
    v38 = objc_msgSend_code(v50, v36, v37);
    v49 = objc_msgSend_tsp_isRecoverable(v50, v39, v40);
    v48 = objc_msgSend_tsp_hintsDescription(v50, v41, v42);
    if (v49)
    {
      v44 = @"recoverable=YES, ";
    }

    else
    {
      v44 = &stru_2885C9BB8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v43, v28, v30, 48, 1, "Failed to load lazy reference with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v32, v35, v38, v44, v48, v50);

    TSUCrashBreakpoint();
    abort();
  }

  return v6;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276AEC80C, off_2812FC248[84]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276AEC62C;
  v9[3] = &unk_27A6E2898;
  v10 = archiverCopy;
  selfCopy = self;
  v7 = archiverCopy;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v9);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FC248[84]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276AEC7C8;
  v9[3] = &unk_27A6E46B8;
  v10 = unarchiverCopy;
  selfCopy = self;
  v7 = unarchiverCopy;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v9);
}

@end