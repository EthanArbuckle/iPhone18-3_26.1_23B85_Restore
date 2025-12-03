@interface OFLogger
+ (void)finalize;
+ (void)initialize;
+ (void)logMessageWithLevel:(int64_t)level file:(const char *)file line:(unsigned int)line andFormat:(id)format;
@end

@implementation OFLogger

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
    {
      v2 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
      if (v2 <= 7)
      {
        OFLoggerLevel = v2;
      }
    }

    v3 = asl_open("com.apple.opus", "mobile", 0);
    _aslClient = v3;
    if (v3)
    {

      asl_set_filter(v3, 255);
    }
  }
}

+ (void)finalize
{
  if (_aslClient)
  {
    MEMORY[0x26D654F20](_aslClient, a2);
    _aslClient = 0;
  }
}

+ (void)logMessageWithLevel:(int64_t)level file:(const char *)file line:(unsigned int)line andFormat:(id)format
{
  v8 = objc_opt_class();
  objc_sync_enter(v8);
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:format arguments:&v11];
  v10 = asl_new(0);
  asl_set(v10, "Level", _aslLogLevelStrings[level]);
  asl_set(v10, "Message", [v9 UTF8String]);
  if (v9)
  {
  }

  if (_aslClient)
  {
    asl_send(_aslClient, v10);
  }

  MEMORY[0x26D654F30](v10);
  objc_sync_exit(v8);
}

@end