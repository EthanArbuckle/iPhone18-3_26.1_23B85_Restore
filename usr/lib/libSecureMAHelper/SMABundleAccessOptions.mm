@interface SMABundleAccessOptions
- (SMABundleAccessOptions)init;
@end

@implementation SMABundleAccessOptions

- (SMABundleAccessOptions)init
{
  v7.receiver = self;
  v7.super_class = SMABundleAccessOptions;
  v2 = [(SMABundleAccessOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_flags = 0;
    v4 = [MEMORY[0x29EDB8E50] set];
    pathsToPurgeOnGraftFailureInEarlyBootTask = v3->_pathsToPurgeOnGraftFailureInEarlyBootTask;
    v3->_pathsToPurgeOnGraftFailureInEarlyBootTask = v4;
  }

  return v3;
}

@end