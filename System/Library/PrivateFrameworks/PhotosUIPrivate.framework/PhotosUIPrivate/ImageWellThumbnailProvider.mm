@interface ImageWellThumbnailProvider
- (void)cancelThumbnailRequest:(int64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation ImageWellThumbnailProvider

- (void)cancelThumbnailRequest:(int64_t)a3
{
  v4 = self;
  sub_1B371E224(a3);
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5 = a4;
  v7 = a3;
  v8 = self;
  sub_1B371E34C(v7, v5);
}

@end