@interface PLPhotoEditExportProperties
+ (id)exportPropertiesWithImageWidth:(unint64_t)width imageHeight:(unint64_t)height exifOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation PLPhotoEditExportProperties

+ (id)exportPropertiesWithImageWidth:(unint64_t)width imageHeight:(unint64_t)height exifOrientation:(int64_t)orientation duration:(double)duration
{
  v10 = objc_alloc_init(self);
  *(v10 + 1) = orientation;
  *(v10 + 3) = width;
  *(v10 + 4) = height;
  v10[2] = duration;

  return v10;
}

@end