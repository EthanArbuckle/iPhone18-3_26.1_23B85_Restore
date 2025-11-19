@interface _PFLLog
+ (id)extension;
+ (id)framework;
+ (id)telemetry;
@end

@implementation _PFLLog

+ (id)framework
{
  if (framework_onceToken != -1)
  {
    +[_PFLLog framework];
  }

  v3 = framework__framework;

  return v3;
}

+ (id)telemetry
{
  if (telemetry_onceToken != -1)
  {
    +[_PFLLog telemetry];
  }

  v3 = telemetry_telemetry;

  return v3;
}

+ (id)extension
{
  if (extension_onceToken != -1)
  {
    +[_PFLLog extension];
  }

  v3 = extension__extension;

  return v3;
}

@end