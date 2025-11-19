@interface PCLogging
+ (id)logFileDirectory;
@end

@implementation PCLogging

+ (id)logFileDirectory
{
  if (logFileDirectory_pred != -1)
  {
    +[PCLogging logFileDirectory];
  }

  v3 = logFileDirectory_directory;

  return v3;
}

void __29__PCLogging_logFileDirectory__block_invoke()
{
  v0 = MGCopyAnswer();
  Value = CFBooleanGetValue(v0);
  CFRelease(v0);
  if (Value)
  {
    v2 = @"Logs/PersistentConnection";
  }

  else
  {
    v2 = @"Logs/CrashReporter/PersistentConnection";
  }

  v5 = [@"/var/mobile" stringByAppendingPathComponent:@"Library"];
  v3 = [v5 stringByAppendingPathComponent:v2];
  v4 = logFileDirectory_directory;
  logFileDirectory_directory = v3;
}

@end