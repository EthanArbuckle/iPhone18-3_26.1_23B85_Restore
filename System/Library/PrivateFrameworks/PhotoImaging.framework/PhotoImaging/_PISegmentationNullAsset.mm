@interface _PISegmentationNullAsset
- (CGRect)acceptableCropRect;
- (CGRect)gazeAreaRect;
- (CGRect)preferredCropRect;
- (int)loadCropRectsWithResultHandler:(id)a3;
- (int)loadFocalLengthIn35mm:(id)a3;
- (int)loadMotionScore:(id)a3;
- (int)loadParallaxResource:(int64_t)a3 options:(id)a4 resultHandler:(id)a5;
- (int)loadPetsRegionsWithOptions:(id)a3 resultHandler:(id)a4;
@end

@implementation _PISegmentationNullAsset

- (CGRect)gazeAreaRect
{
  x = self->gazeAreaRect.origin.x;
  y = self->gazeAreaRect.origin.y;
  width = self->gazeAreaRect.size.width;
  height = self->gazeAreaRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)acceptableCropRect
{
  x = self->acceptableCropRect.origin.x;
  y = self->acceptableCropRect.origin.y;
  width = self->acceptableCropRect.size.width;
  height = self->acceptableCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredCropRect
{
  x = self->preferredCropRect.origin.x;
  y = self->preferredCropRect.origin.y;
  width = self->preferredCropRect.size.width;
  height = self->preferredCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)loadFocalLengthIn35mm:(id)a3
{
  v4 = MEMORY[0x1E69B3A48];
  v5 = a3;
  v6 = [v4 unsupportedError:@"Not available" object:0];
  (*(a3 + 2))(v5, 0, v6);

  return 0;
}

- (int)loadMotionScore:(id)a3
{
  v4 = MEMORY[0x1E69B3A48];
  v5 = a3;
  v6 = [v4 unsupportedError:@"Not available" object:0];
  (*(a3 + 2))(v5, v6, -1.0);

  return 0;
}

- (int)loadCropRectsWithResultHandler:(id)a3
{
  v4 = MEMORY[0x1E69B3A48];
  v5 = a3;
  v6 = [v4 unsupportedError:@"Not available" object:0];
  (*(a3 + 2))(v5, v6, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

  return 0;
}

- (int)loadPetsRegionsWithOptions:(id)a3 resultHandler:(id)a4
{
  v5 = MEMORY[0x1E69B3A48];
  v6 = a4;
  v7 = [v5 unsupportedError:@"Not available" object:0];
  (*(a4 + 2))(v6, 0, 0, v7);

  return 0;
}

- (int)loadParallaxResource:(int64_t)a3 options:(id)a4 resultHandler:(id)a5
{
  v6 = MEMORY[0x1E69B3A48];
  v7 = a5;
  v8 = [v6 unsupportedError:@"Not available" object:0];
  (*(a5 + 2))(v7, 0, v8);

  return 0;
}

@end