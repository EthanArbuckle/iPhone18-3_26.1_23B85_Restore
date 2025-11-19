@interface UIScreenshotMetadataRequestAction
- (void)fulfillRequest;
@end

@implementation UIScreenshotMetadataRequestAction

- (void)fulfillRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v3 = _MergedGlobals_1106;
  v9 = _MergedGlobals_1106;
  if (!_MergedGlobals_1106)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getSSScreenshotMetadataHarvesterClass_block_invoke;
    v5[3] = &unk_1E70F2F20;
    v5[4] = &v6;
    __getSSScreenshotMetadataHarvesterClass_block_invoke(v5);
    v3 = v7[3];
  }

  v4 = v3;
  _Block_object_dispose(&v6, 8);
  [v3 harvestScreenshotMetadataAndRespondToAction:self];
}

@end