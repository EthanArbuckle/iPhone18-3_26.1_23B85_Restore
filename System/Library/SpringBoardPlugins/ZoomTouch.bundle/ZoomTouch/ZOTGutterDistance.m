@interface ZOTGutterDistance
@end

@implementation ZOTGutterDistance

void __ZOTGutterDistance_block_invoke(id a1)
{
  v1 = 80.0;
  if (ZOTIsWildcat)
  {
    v1 = 120.0;
  }

  ZOTGutterDistance__GutterDistance = *&v1;
  *&ZOTGutterDistance__GutterDistance = ZOTMainScreenScaleFactor() * v1;
}

@end