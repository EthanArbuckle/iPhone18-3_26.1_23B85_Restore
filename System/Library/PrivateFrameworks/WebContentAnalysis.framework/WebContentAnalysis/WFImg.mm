@interface WFImg
+ (id)imgWithNode:(_xmlNode *)node;
- (int64_t)area;
- (void)dealloc;
@end

@implementation WFImg

+ (id)imgWithNode:(_xmlNode *)node
{
  v3 = [[self alloc] initWithNode:node];

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
  width = [(WFImg *)self width];
  height = [(WFImg *)self height];
  if (height == kWFImgDimensionUnknown || width == kWFImgDimensionUnknown)
  {
    return kWFImgDimensionUnknown;
  }

  else
  {
    return height * width;
  }
}

@end