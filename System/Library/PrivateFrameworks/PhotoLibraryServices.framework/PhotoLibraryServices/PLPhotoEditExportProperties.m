@interface PLPhotoEditExportProperties
+ (id)exportPropertiesWithImageWidth:(unint64_t)a3 imageHeight:(unint64_t)a4 exifOrientation:(int64_t)a5 duration:(double)a6;
@end

@implementation PLPhotoEditExportProperties

+ (id)exportPropertiesWithImageWidth:(unint64_t)a3 imageHeight:(unint64_t)a4 exifOrientation:(int64_t)a5 duration:(double)a6
{
  v10 = objc_alloc_init(a1);
  *(v10 + 1) = a5;
  *(v10 + 3) = a3;
  *(v10 + 4) = a4;
  v10[2] = a6;

  return v10;
}

@end