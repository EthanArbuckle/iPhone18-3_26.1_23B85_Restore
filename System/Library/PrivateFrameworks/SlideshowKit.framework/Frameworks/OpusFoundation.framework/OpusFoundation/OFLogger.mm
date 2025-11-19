@interface OFLogger
+ (void)finalize;
+ (void)initialize;
+ (void)logMessageWithLevel:(int64_t)a3 file:(const char *)a4 line:(unsigned int)a5 andFormat:(id)a6;
@end

@implementation OFLogger

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

+ (void)logMessageWithLevel:(int64_t)a3 file:(const char *)a4 line:(unsigned int)a5 andFormat:(id)a6
{
  v8 = objc_opt_class();
  objc_sync_enter(v8);
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a6 arguments:&v11];
  v10 = asl_new(0);
  asl_set(v10, "Level", _aslLogLevelStrings[a3]);
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