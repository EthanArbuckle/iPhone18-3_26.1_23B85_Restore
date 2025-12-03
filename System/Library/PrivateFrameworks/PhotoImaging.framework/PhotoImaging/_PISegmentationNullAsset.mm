@interface _PISegmentationNullAsset
- (CGRect)acceptableCropRect;
- (CGRect)gazeAreaRect;
- (CGRect)preferredCropRect;
- (int)loadCropRectsWithResultHandler:(id)handler;
- (int)loadFocalLengthIn35mm:(id)in35mm;
- (int)loadMotionScore:(id)score;
- (int)loadParallaxResource:(int64_t)resource options:(id)options resultHandler:(id)handler;
- (int)loadPetsRegionsWithOptions:(id)options resultHandler:(id)handler;
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

- (int)loadFocalLengthIn35mm:(id)in35mm
{
  v4 = MEMORY[0x1E69B3A48];
  in35mmCopy = in35mm;
  v6 = [v4 unsupportedError:@"Not available" object:0];
  (*(in35mm + 2))(in35mmCopy, 0, v6);

  return 0;
}

- (int)loadMotionScore:(id)score
{
  v4 = MEMORY[0x1E69B3A48];
  scoreCopy = score;
  v6 = [v4 unsupportedError:@"Not available" object:0];
  (*(score + 2))(scoreCopy, v6, -1.0);

  return 0;
}

- (int)loadCropRectsWithResultHandler:(id)handler
{
  v4 = MEMORY[0x1E69B3A48];
  handlerCopy = handler;
  v6 = [v4 unsupportedError:@"Not available" object:0];
  (*(handler + 2))(handlerCopy, v6, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

  return 0;
}

- (int)loadPetsRegionsWithOptions:(id)options resultHandler:(id)handler
{
  v5 = MEMORY[0x1E69B3A48];
  handlerCopy = handler;
  v7 = [v5 unsupportedError:@"Not available" object:0];
  (*(handler + 2))(handlerCopy, 0, 0, v7);

  return 0;
}

- (int)loadParallaxResource:(int64_t)resource options:(id)options resultHandler:(id)handler
{
  v6 = MEMORY[0x1E69B3A48];
  handlerCopy = handler;
  v8 = [v6 unsupportedError:@"Not available" object:0];
  (*(handler + 2))(handlerCopy, 0, v8);

  return 0;
}

@end