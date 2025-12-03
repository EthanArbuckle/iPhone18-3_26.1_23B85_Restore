@interface TITraceLogRecordContextEntry
- (TITraceLogRecordContextEntry)initWithToken:(id)token wordID:(id)d;
@end

@implementation TITraceLogRecordContextEntry

- (TITraceLogRecordContextEntry)initWithToken:(id)token wordID:(id)d
{
  tokenCopy = token;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = TITraceLogRecordContextEntry;
  v9 = [(TITraceLogRecordContextEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_token, token);
    objc_storeStrong(&v10->_wordID, d);
  }

  return v10;
}

@end