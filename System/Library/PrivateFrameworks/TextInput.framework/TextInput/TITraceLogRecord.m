@interface TITraceLogRecord
- (TITraceLogRecord)initWithRecordUUID:(id)a3 context:(id)a4 logText:(id)a5 logVersion:(unint64_t)a6;
- (TITraceLogRecord)initWithRecordUUID:(id)a3 logText:(id)a4 logVersion:(unint64_t)a5;
@end

@implementation TITraceLogRecord

- (TITraceLogRecord)initWithRecordUUID:(id)a3 context:(id)a4 logText:(id)a5 logVersion:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = TITraceLogRecord;
  v13 = [(TITraceLogRecord *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    recordUUID = v13->_recordUUID;
    v13->_recordUUID = v14;

    objc_storeStrong(&v13->_context, a4);
    objc_storeStrong(&v13->_logText, a5);
    v13->_logVersion = a6;
    v13->_parsingStatus = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    parsedSections = v13->_parsedSections;
    v13->_parsedSections = v16;
  }

  return v13;
}

- (TITraceLogRecord)initWithRecordUUID:(id)a3 logText:(id)a4 logVersion:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = TITraceLogRecord;
  v10 = [(TITraceLogRecord *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    recordUUID = v10->_recordUUID;
    v10->_recordUUID = v11;

    objc_storeStrong(&v10->_logText, a4);
    v10->_logVersion = a5;
    v10->_parsingStatus = 0;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    parsedSections = v10->_parsedSections;
    v10->_parsedSections = v13;
  }

  return v10;
}

@end