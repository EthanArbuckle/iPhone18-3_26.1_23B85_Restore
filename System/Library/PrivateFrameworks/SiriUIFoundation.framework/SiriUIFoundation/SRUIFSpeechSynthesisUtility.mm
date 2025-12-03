@interface SRUIFSpeechSynthesisUtility
+ (BOOL)isSpeechSynthesisErrorUserCancelled:(id)cancelled;
@end

@implementation SRUIFSpeechSynthesisUtility

+ (BOOL)isSpeechSynthesisErrorUserCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  code = [cancelledCopy code];
  domain = [cancelledCopy domain];

  v6 = code == 1 && ([domain isEqualToString:@"TTSError"] & 1) != 0;
  return v6;
}

@end