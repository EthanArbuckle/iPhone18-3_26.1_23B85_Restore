@interface PLPhotoEditImportProperties
+ (id)importPropertiesWithEXIFOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation PLPhotoEditImportProperties

+ (id)importPropertiesWithEXIFOrientation:(int64_t)orientation duration:(double)duration
{
  v6 = objc_alloc_init(self);
  if ((orientation - 1) >= 8)
  {
    orientationCopy = 1;
  }

  else
  {
    orientationCopy = orientation;
  }

  *(v6 + 1) = orientationCopy;
  v6[2] = duration;

  return v6;
}

@end