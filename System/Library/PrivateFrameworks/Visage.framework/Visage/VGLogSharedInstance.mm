@interface VGLogSharedInstance
@end

@implementation VGLogSharedInstance

void ____VGLogSharedInstance_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v1 = [v0 UTF8String];

  v2 = os_log_create(v1, "Visage");
  v3 = sharedInstance;
  sharedInstance = v2;
}

@end