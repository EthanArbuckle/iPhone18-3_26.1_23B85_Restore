@interface NSData(PosterUIFoundation)
+ (id)pui_loadImageDataFromFileURL:()PosterUIFoundation error:;
@end

@implementation NSData(PosterUIFoundation)

+ (id)pui_loadImageDataFromFileURL:()PosterUIFoundation error:
{
  if (a3)
  {
    [a3 path];
    MappedDataFromPath = CPBitmapCreateMappedDataFromPath();
    v6 = MappedDataFromPath;
    if (a4)
    {
      if (!MappedDataFromPath)
      {
        v7 = 0;
        *a4 = v7;
        if (v7)
        {
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end