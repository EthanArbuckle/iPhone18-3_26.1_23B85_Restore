@interface UIViewControllerDefinesBarBackgroundGroupName
@end

@implementation UIViewControllerDefinesBarBackgroundGroupName

void ___UIViewControllerDefinesBarBackgroundGroupName_block_invoke()
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.hulu.plus", @"com.chipotle.Chipotle", @"photo.glass.ios", @"com.apple.RealityComposer", @"com.yinzcam.49ersGamedayLive", @"com.barclaycardus.iphonesvc", @"com.secondhanding.WallaPop", 0}];
  v0 = _UIMainBundleIdentifier();
  if ([v2 containsObject:v0])
  {
    v1 = dyld_program_sdk_at_least();

    if ((v1 & 1) == 0)
    {
      byte_1ED49859A = 1;
    }
  }

  else
  {
  }
}

@end