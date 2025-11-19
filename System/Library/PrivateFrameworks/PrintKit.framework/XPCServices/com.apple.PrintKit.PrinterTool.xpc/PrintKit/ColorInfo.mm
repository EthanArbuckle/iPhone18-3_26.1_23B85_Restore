@interface ColorInfo
- (ColorInfo)init;
- (void)dealloc;
- (void)grestore;
- (void)gsave;
- (void)setColorReason:(id)a3;
@end

@implementation ColorInfo

- (ColorInfo)init
{
  v9.receiver = self;
  v9.super_class = ColorInfo;
  v2 = [(ColorInfo *)&v9 init];
  v3 = v2;
  if (v2)
  {
    strokeColorspace = v2->strokeColorspace;
    v2->strokeColorspace = @"DeviceGray";

    nonStrokeColorspace = v3->nonStrokeColorspace;
    v3->nonStrokeColorspace = @"DeviceGray";

    v6 = [NSMutableArray arrayWithCapacity:5];
    gstateStack = v3->gstateStack;
    v3->gstateStack = v6;
  }

  return v3;
}

- (void)dealloc
{
  [(ColorInfo *)self setGstateStack:0];
  [(ColorInfo *)self setStrokeColorspace:0];
  [(ColorInfo *)self setNonStrokeColorspace:0];
  [(ColorInfo *)self setColorReason:0];
  v3.receiver = self;
  v3.super_class = ColorInfo;
  [(ColorInfo *)&v3 dealloc];
}

- (void)setColorReason:(id)a3
{
  v5 = a3;
  colorReason = self->colorReason;
  p_colorReason = &self->colorReason;
  if (!colorReason)
  {
    v8 = v5;
    objc_storeStrong(p_colorReason, a3);
    v5 = v8;
  }
}

- (void)gsave
{
  v6 = objc_alloc_init(GState);
  v3 = [(ColorInfo *)self strokeColorspace];
  [(GState *)v6 setStrokeColorspace:v3];

  v4 = [(ColorInfo *)self nonStrokeColorspace];
  [(GState *)v6 setNonStrokeColorspace:v4];

  v5 = [(ColorInfo *)self gstateStack];
  [v5 addObject:v6];
}

- (void)grestore
{
  v3 = [(ColorInfo *)self gstateStack];
  v7 = [v3 lastObject];

  if (v7)
  {
    v4 = [v7 strokeColorspace];
    [(ColorInfo *)self setStrokeColorspace:v4];

    v5 = [v7 nonStrokeColorspace];
    [(ColorInfo *)self setNonStrokeColorspace:v5];

    v6 = [(ColorInfo *)self gstateStack];
    [v6 removeLastObject];
  }

  else
  {
    [(ColorInfo *)self setStrokeColorspace:@"DeviceGray"];
    [(ColorInfo *)self setNonStrokeColorspace:@"DeviceGray"];
  }
}

@end