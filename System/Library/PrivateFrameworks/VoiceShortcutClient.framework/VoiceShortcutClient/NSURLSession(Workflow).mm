@interface NSURLSession(Workflow)
+ (id)wf_sharedSession;
@end

@implementation NSURLSession(Workflow)

+ (id)wf_sharedSession
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__NSURLSession_Workflow__wf_sharedSession__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (wf_sharedSession_onceToken != -1)
  {
    dispatch_once(&wf_sharedSession_onceToken, block);
  }

  v1 = wf_sharedSession_sharedSession;

  return v1;
}

@end