@interface TITraceLogRecord
- (TITraceLogRecord)initWithRecordUUID:(id)d context:(id)context logText:(id)text logVersion:(unint64_t)version;
- (TITraceLogRecord)initWithRecordUUID:(id)d logText:(id)text logVersion:(unint64_t)version;
@end

@implementation TITraceLogRecord

- (TITraceLogRecord)initWithRecordUUID:(id)d context:(id)context logText:(id)text logVersion:(unint64_t)version
{
  dCopy = d;
  contextCopy = context;
  textCopy = text;
  v19.receiver = self;
  v19.super_class = TITraceLogRecord;
  v13 = [(TITraceLogRecord *)&v19 init];
  if (v13)
  {
    v14 = [dCopy copy];
    recordUUID = v13->_recordUUID;
    v13->_recordUUID = v14;

    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v13->_logText, text);
    v13->_logVersion = version;
    v13->_parsingStatus = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    parsedSections = v13->_parsedSections;
    v13->_parsedSections = v16;
  }

  return v13;
}

- (TITraceLogRecord)initWithRecordUUID:(id)d logText:(id)text logVersion:(unint64_t)version
{
  dCopy = d;
  textCopy = text;
  v16.receiver = self;
  v16.super_class = TITraceLogRecord;
  v10 = [(TITraceLogRecord *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copy];
    recordUUID = v10->_recordUUID;
    v10->_recordUUID = v11;

    objc_storeStrong(&v10->_logText, text);
    v10->_logVersion = version;
    v10->_parsingStatus = 0;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    parsedSections = v10->_parsedSections;
    v10->_parsedSections = v13;
  }

  return v10;
}

@end