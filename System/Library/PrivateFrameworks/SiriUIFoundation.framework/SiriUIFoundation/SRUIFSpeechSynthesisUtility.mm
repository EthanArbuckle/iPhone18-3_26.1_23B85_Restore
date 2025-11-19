@interface SRUIFSpeechSynthesisUtility
+ (BOOL)isSpeechSynthesisErrorUserCancelled:(id)a3;
@end

@implementation SRUIFSpeechSynthesisUtility

+ (BOOL)isSpeechSynthesisErrorUserCancelled:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];

  v6 = v4 == 1 && ([v5 isEqualToString:@"TTSError"] & 1) != 0;
  return v6;
}

@end