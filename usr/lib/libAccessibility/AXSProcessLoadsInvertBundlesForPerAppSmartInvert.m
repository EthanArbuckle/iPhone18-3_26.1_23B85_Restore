@interface AXSProcessLoadsInvertBundlesForPerAppSmartInvert
@end

@implementation AXSProcessLoadsInvertBundlesForPerAppSmartInvert

void ___AXSProcessLoadsInvertBundlesForPerAppSmartInvert_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.springboard";
  v3[1] = @"com.apple.iMessageAppsViewService";
  v3[2] = @"com.apple.Animoji.StickersApp.MessagesExtension";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_appIDs;
  _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_appIDs = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end