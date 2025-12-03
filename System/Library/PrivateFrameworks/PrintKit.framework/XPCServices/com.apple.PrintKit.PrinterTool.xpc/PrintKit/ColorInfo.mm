@interface ColorInfo
- (ColorInfo)init;
- (void)dealloc;
- (void)grestore;
- (void)gsave;
- (void)setColorReason:(id)reason;
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

- (void)setColorReason:(id)reason
{
  reasonCopy = reason;
  colorReason = self->colorReason;
  p_colorReason = &self->colorReason;
  if (!colorReason)
  {
    v8 = reasonCopy;
    objc_storeStrong(p_colorReason, reason);
    reasonCopy = v8;
  }
}

- (void)gsave
{
  v6 = objc_alloc_init(GState);
  strokeColorspace = [(ColorInfo *)self strokeColorspace];
  [(GState *)v6 setStrokeColorspace:strokeColorspace];

  nonStrokeColorspace = [(ColorInfo *)self nonStrokeColorspace];
  [(GState *)v6 setNonStrokeColorspace:nonStrokeColorspace];

  gstateStack = [(ColorInfo *)self gstateStack];
  [gstateStack addObject:v6];
}

- (void)grestore
{
  gstateStack = [(ColorInfo *)self gstateStack];
  lastObject = [gstateStack lastObject];

  if (lastObject)
  {
    strokeColorspace = [lastObject strokeColorspace];
    [(ColorInfo *)self setStrokeColorspace:strokeColorspace];

    nonStrokeColorspace = [lastObject nonStrokeColorspace];
    [(ColorInfo *)self setNonStrokeColorspace:nonStrokeColorspace];

    gstateStack2 = [(ColorInfo *)self gstateStack];
    [gstateStack2 removeLastObject];
  }

  else
  {
    [(ColorInfo *)self setStrokeColorspace:@"DeviceGray"];
    [(ColorInfo *)self setNonStrokeColorspace:@"DeviceGray"];
  }
}

@end