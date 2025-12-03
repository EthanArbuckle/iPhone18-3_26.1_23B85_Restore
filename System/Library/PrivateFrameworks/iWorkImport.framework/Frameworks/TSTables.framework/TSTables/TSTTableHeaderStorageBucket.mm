@interface TSTTableHeaderStorageBucket
- (TSTTableHeaderStorageBucket)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTTableHeaderStorageBucket

- (TSTTableHeaderStorageBucket)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = TSTTableHeaderStorageBucket;
  v5 = [(TSTTableHeaderStorageBucket *)&v10 initWithContext:contextCopy];
  v6 = v5;
  if (v5)
  {
    v5->_bounds = *MEMORY[0x277D81490];
    v5->_styleCount = 0;
    v7 = objc_alloc_init(MEMORY[0x277D81330]);
    data = v6->_data;
    v6->_data = v7;
  }

  return v6;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[48], v6, v7);

  if (*(v8 + 48) != 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableHeaderStorageBucket(Archiving) loadFromUnarchiver:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 597, 0, "Don't know how to handle this bucket hash function!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = *(v8 + 32);
  v25 = objc_msgSend_preUFFVersion(unarchiverCopy, v9, v10, v11, v12);
  v26 = objc_alloc_init(MEMORY[0x277D81330]);
  data = self->_data;
  self->_data = v26;

  self->_styleCount = 0;
  if (v24 >= 1)
  {
    v31 = 0;
    v32 = 8;
    do
    {
      TST::HeaderStorageBucket_Header::HeaderStorageBucket_Header(v41, *(*(v8 + 40) + v32));
      v40 = 0;
      v33 = sub_22148024C([TSTTableHeaderInfo alloc], v41, unarchiverCopy, &v40);
      v36 = v33;
      if (v25 <= 0x5200561C4 && sub_2216F7E9C(v33) && sub_2216F7E9C(v36) != 1)
      {
        if ((v31 & 1) == 0)
        {
          objc_msgSend_willModifyForUpgrade(self, v34, v37, v38, v35);
        }

        v31 = 1;
        sub_2216F7EA8(v36, 1);
      }

      objc_msgSend_setObject_forKey_(self->_data, v34, v36, v40, v35);

      TST::HeaderStorageBucket_Header::~HeaderStorageBucket_Header(v41);
      v32 += 8;
      --v24;
    }

    while (v24);
  }

  self->_bounds = *MEMORY[0x277D81490];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2211AE1D8;
  v39[3] = &unk_27845E3F8;
  v39[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v28, v39, v29, v30);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2211AE538, off_2812E4498[48], v6);

  *(v7 + 16) |= 1u;
  *(v7 + 48) = 1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  data = self->_data;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_2211AE40C;
  v26 = &unk_278460968;
  v29 = v7;
  v9 = archiverCopy;
  v27 = v9;
  v28 = &v30;
  objc_msgSend_foreach_(data, v10, &v23, v11, v12);
  if (self->_styleCount != v31[3])
  {
    TSUSetCrashReporterInfo();
    v13 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableHeaderStorageBucket(Archiving) saveToArchiver:]", v15, v16, "[TSTTableHeaderStorageBucket(Archiving) saveToArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", 666, v23, v24, v25, v26);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v22, v17, v21, 666, 1, "Cached style count was wrong!");

    TSUCrashBreakpoint();
    abort();
  }

  _Block_object_dispose(&v30, 8);
}

@end