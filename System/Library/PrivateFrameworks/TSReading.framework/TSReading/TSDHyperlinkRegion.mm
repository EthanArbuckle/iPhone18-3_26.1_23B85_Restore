@interface TSDHyperlinkRegion
+ (id)hyperlinkRegionWithURL:(id)l bezierPath:(id)path;
- (TSDHyperlinkRegion)initWithURL:(id)l bezierPath:(id)path;
- (void)dealloc;
@end

@implementation TSDHyperlinkRegion

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDHyperlinkRegion;
  [(TSDHyperlinkRegion *)&v3 dealloc];
}

+ (id)hyperlinkRegionWithURL:(id)l bezierPath:(id)path
{
  v4 = [[self alloc] initWithURL:l bezierPath:path];

  return v4;
}

- (TSDHyperlinkRegion)initWithURL:(id)l bezierPath:(id)path
{
  v9.receiver = self;
  v9.super_class = TSDHyperlinkRegion;
  v6 = [(TSDHyperlinkRegion *)&v9 init];
  if (v6)
  {
    v6->mURL = l;
    v7 = objc_alloc_init(TSDBezierPath);
    v6->mBezierPath = v7;
    [(TSDBezierPath *)v7 appendBezierPath:path];
  }

  return v6;
}

@end