@interface FilteredImageProvider
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (void)cancelImageRequest:(int64_t)a3;
@end

@implementation FilteredImageProvider

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = _Block_copy(a7);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  swift_unknownObjectRetain();
  v15 = a6;
  v16 = self;
  v17 = sub_1B3FBA18C(a3, a5, a6, sub_1B3FBD220, v14, width, height);
  swift_unknownObjectRelease();

  return v17;
}

- (void)cancelImageRequest:(int64_t)a3
{
  v4 = self;
  sub_1B3FBA6C4(a3);
}

@end