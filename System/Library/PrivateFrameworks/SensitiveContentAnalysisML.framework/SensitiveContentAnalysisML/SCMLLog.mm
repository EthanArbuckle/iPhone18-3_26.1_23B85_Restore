@interface SCMLLog
+ (id)handler;
+ (id)imageAnalyzer;
+ (id)signpost;
+ (id)textAnalyzer;
+ (id)videoAnalyzer;
@end

@implementation SCMLLog

+ (id)signpost
{
  if (signpost_onceToken != -1)
  {
    +[SCMLLog signpost];
  }

  v3 = signpost__framework;

  return v3;
}

+ (id)textAnalyzer
{
  if (textAnalyzer_onceToken != -1)
  {
    +[SCMLLog textAnalyzer];
  }

  v3 = textAnalyzer__framework;

  return v3;
}

+ (id)handler
{
  if (handler_onceToken[0] != -1)
  {
    +[SCMLLog handler];
  }

  v3 = handler__framework;

  return v3;
}

uint64_t __18__SCMLLog_handler__block_invoke()
{
  handler__framework = os_log_create("com.apple.SensitiveContentAnalysisML", "handler");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)imageAnalyzer
{
  if (imageAnalyzer_onceToken[0] != -1)
  {
    +[SCMLLog imageAnalyzer];
  }

  v3 = imageAnalyzer__framework;

  return v3;
}

uint64_t __24__SCMLLog_imageAnalyzer__block_invoke()
{
  imageAnalyzer__framework = os_log_create("com.apple.SensitiveContentAnalysisML", "imageAnalyzer");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __23__SCMLLog_textAnalyzer__block_invoke()
{
  textAnalyzer__framework = os_log_create("com.apple.SensitiveContentAnalysisML", "textAnalyzer");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)videoAnalyzer
{
  if (videoAnalyzer_onceToken != -1)
  {
    +[SCMLLog videoAnalyzer];
  }

  v3 = videoAnalyzer__framework;

  return v3;
}

uint64_t __24__SCMLLog_videoAnalyzer__block_invoke()
{
  videoAnalyzer__framework = os_log_create("com.apple.SensitiveContentAnalysisML", "videoAnalyzer");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __19__SCMLLog_signpost__block_invoke()
{
  signpost__framework = os_log_create("com.apple.SensitiveContentAnalysisML", "signpost");

  return MEMORY[0x1EEE66BB8]();
}

@end