@interface TITraceLogRecordContextEntry
- (TITraceLogRecordContextEntry)initWithToken:(id)a3 wordID:(id)a4;
@end

@implementation TITraceLogRecordContextEntry

- (TITraceLogRecordContextEntry)initWithToken:(id)a3 wordID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TITraceLogRecordContextEntry;
  v9 = [(TITraceLogRecordContextEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_token, a3);
    objc_storeStrong(&v10->_wordID, a4);
  }

  return v10;
}

@end