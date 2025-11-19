@interface NSURLSession
@end

@implementation NSURLSession

void __42__NSURLSession_Workflow__wf_sharedSession__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedSession];
  v2 = [v1 configuration];
  v5 = [v2 copy];

  [v5 set_sourceApplicationBundleIdentifier:@"com.apple.shortcuts"];
  v3 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v5];
  v4 = wf_sharedSession_sharedSession;
  wf_sharedSession_sharedSession = v3;
}

@end