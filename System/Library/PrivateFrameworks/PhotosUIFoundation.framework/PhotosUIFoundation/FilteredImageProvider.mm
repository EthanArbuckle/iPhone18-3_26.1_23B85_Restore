@interface FilteredImageProvider
- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (void)cancelImageRequest:(int64_t)request;
@end

@implementation FilteredImageProvider

- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  v17 = sub_1B3FBA18C(asset, mode, options, sub_1B3FBD220, v14, width, height);
  swift_unknownObjectRelease();

  return v17;
}

- (void)cancelImageRequest:(int64_t)request
{
  selfCopy = self;
  sub_1B3FBA6C4(request);
}

@end