@interface CAFilter(PhotosUICore)
+ (id)px_filterWithPXCompositingFilterType:()PhotosUICore;
@end

@implementation CAFilter(PhotosUICore)

+ (id)px_filterWithPXCompositingFilterType:()PhotosUICore
{
  if (a3 == 1)
  {
    v3 = *MEMORY[0x1E69798C8];
    if (v3)
    {
      v4 = [MEMORY[0x1E6979378] filterWithType:v3];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

@end