@interface PLPhotoEditImportProperties
+ (id)importPropertiesWithEXIFOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation PLPhotoEditImportProperties

+ (id)importPropertiesWithEXIFOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = objc_alloc_init(a1);
  if ((a3 - 1) >= 8)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3;
  }

  *(v6 + 1) = v7;
  v6[2] = a4;

  return v6;
}

@end