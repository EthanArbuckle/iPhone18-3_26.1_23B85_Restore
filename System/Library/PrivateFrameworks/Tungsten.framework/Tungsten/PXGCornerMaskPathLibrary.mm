@interface PXGCornerMaskPathLibrary
+ (PXGCornerMaskPathLibrary)sharedLibrary;
- (PXGCornerMaskPathLibrary)init;
- (id)pathForCornerRadius:(double)radius continuousCorners:(BOOL)corners screenScale:(double)scale maskColor:(id)color;
@end

@implementation PXGCornerMaskPathLibrary

- (id)pathForCornerRadius:(double)radius continuousCorners:(BOOL)corners screenScale:(double)scale maskColor:(id)color
{
  cornersCopy = corners;
  v26[2] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v11 = radius * scale;
  v12 = objc_alloc(MEMORY[0x277D3CE08]);
  scale = [MEMORY[0x277CCABB0] numberWithDouble:radius * scale];
  v26[0] = scale;
  v26[1] = colorCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v15 = [v12 initWithObjects:v14];

  v16 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v15];
  if (!v16)
  {
    v17 = vcvtd_n_f64_s64(llround(ceil(radius * 1.528665 + radius * 1.528665) * scale), 1uLL);
    v18 = round(v17);
    v19 = (2 * llround(v17));
    v20 = [MEMORY[0x277D75208] px_bezierPathWithRoundedRect:cornersCopy cornerRadius:0.0 continuousCorners:{0.0, v19, v19, v11}];
    bezierPathByReversingPath = [v20 bezierPathByReversingPath];

    cGPath = [bezierPathByReversingPath CGPath];
    BoundingBox = CGPathGetBoundingBox(cGPath);
    v23 = CGPathCreateWithRect(BoundingBox, 0);
    Mutable = CGPathCreateMutable();
    CGPathAddPath(Mutable, 0, v23);
    CGPathAddPath(Mutable, 0, cGPath);
    v16 = [[PXGPath alloc] initWithBounds:Mutable CGPath:0 strokeColor:colorCopy lineWidth:0 fillColor:0.0 drawingMode:0.0, v18, v18, 0.0];
    [(NSMutableDictionary *)self->_cache setObject:v16 forKeyedSubscript:v15];
    CGPathRelease(Mutable);
    CGPathRelease(v23);
  }

  return v16;
}

- (PXGCornerMaskPathLibrary)init
{
  v6.receiver = self;
  v6.super_class = PXGCornerMaskPathLibrary;
  v2 = [(PXGCornerMaskPathLibrary *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

+ (PXGCornerMaskPathLibrary)sharedLibrary
{
  if (sharedLibrary_onceToken != -1)
  {
    dispatch_once(&sharedLibrary_onceToken, &__block_literal_global_145);
  }

  v3 = sharedLibrary_sharedLibrary;

  return v3;
}

void __41__PXGCornerMaskPathLibrary_sharedLibrary__block_invoke()
{
  v0 = objc_alloc_init(PXGCornerMaskPathLibrary);
  v1 = sharedLibrary_sharedLibrary;
  sharedLibrary_sharedLibrary = v0;
}

@end