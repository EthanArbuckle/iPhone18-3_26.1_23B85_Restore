@interface WFImg
+ (id)imgWithNode:(_xmlNode *)a3;
- (int64_t)area;
- (void)dealloc;
@end

@implementation WFImg

+ (id)imgWithNode:(_xmlNode *)a3
{
  v3 = [[a1 alloc] initWithNode:a3];

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WFImg;
  [(XMLNode *)&v2 dealloc];
}

- (int64_t)area
{
  v3 = [(WFImg *)self width];
  v4 = [(WFImg *)self height];
  if (v4 == kWFImgDimensionUnknown || v3 == kWFImgDimensionUnknown)
  {
    return kWFImgDimensionUnknown;
  }

  else
  {
    return v4 * v3;
  }
}

@end