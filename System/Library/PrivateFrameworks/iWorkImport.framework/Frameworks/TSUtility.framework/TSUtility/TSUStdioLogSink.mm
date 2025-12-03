@interface TSUStdioLogSink
+ (id)sharedInstance;
- (TSUStdioLogSink)init;
- (id)logSinkBlockWithFilePointer:(__sFILE *)pointer;
@end

@implementation TSUStdioLogSink

- (TSUStdioLogSink)init
{
  v8.receiver = self;
  v8.super_class = TSUStdioLogSink;
  v2 = [(TSUStdioLogSink *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("TSUStdioLogSinkQueue", 0);
    logQueue = v2->_logQueue;
    v2->_logQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v5;

    [(NSDateFormatter *)v2->_dateFormatter setFormatterBehavior:1040];
    [(NSDateFormatter *)v2->_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_280A63E88[0] != -1)
  {
    sub_277115950();
  }

  v3 = qword_280A63E80;

  return v3;
}

- (id)logSinkBlockWithFilePointer:(__sFILE *)pointer
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2770FB8D8;
  v6[3] = &unk_27A703B18;
  v6[4] = self;
  v6[5] = pointer;
  v3 = _Block_copy(v6);
  v4 = [v3 copy];

  return v4;
}

@end