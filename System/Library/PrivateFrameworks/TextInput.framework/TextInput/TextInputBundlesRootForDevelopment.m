@interface TextInputBundlesRootForDevelopment
@end

@implementation TextInputBundlesRootForDevelopment

void ___TextInputBundlesRootForDevelopment_block_invoke()
{
  v2 = TIGetTextInputFrameworkPath();
  v0 = [v2 stringByDeletingLastPathComponent];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/System/Library/PrivateFrameworks"];
  if (v0 && ([v0 isEqualToString:v1] & 1) == 0)
  {
    objc_storeStrong(&_TextInputBundlesRootForDevelopment_bundlesRoot, v0);
  }
}

@end