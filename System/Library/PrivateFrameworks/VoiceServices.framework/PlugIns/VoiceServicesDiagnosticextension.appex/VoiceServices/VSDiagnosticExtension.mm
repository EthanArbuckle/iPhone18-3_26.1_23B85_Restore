@interface VSDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation VSDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = [(VSDiagnosticExtension *)self attachmentList];
  v4 = [v3 sortedArrayUsingComparator:&stru_100004080];

  v5 = [v4 count];
  if (v5 >= 0xF)
  {
    v6 = 15;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 subarrayWithRange:{0, v6}];

  return v7;
}

- (id)attachmentList
{
  if (_os_feature_enabled_impl())
  {
    v3 = &__NSArray0__struct;
  }

  else
  {
    v4 = [NSURL fileURLWithPath:@"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/"];
    v5 = [NSRegularExpression regularExpressionWithPattern:@"TTS.*\\.(wav|tailspin)" options:1 error:0];
    v3 = [(VSDiagnosticExtension *)self filesInDir:v4 matchingPattern:v5 excludingPattern:0];
  }

  return v3;
}

@end