@interface SSVGetFairPlayContext
@end

@implementation SSVGetFairPlayContext

void ____SSVGetFairPlayContext_block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"iTunes_Control", @"iTunes", 0}];
  v0 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];
  v1 = __SSVGetFairPlayContext_sFolderPath;
  __SSVGetFairPlayContext_sFolderPath = v0;

  SSVFairPlayGetHardwareInfo(__SSVGetFairPlayContext_sHardwareInfo);
}

@end