@interface UIGradient
- (id)initVerticalWithValues:(id *)values;
- (void)dealloc;
- (void)fillRect:(CGRect)rect;
- (void)fillRect:(CGRect)rect inContext:(CGContext *)context;
@end

@implementation UIGradient

- (id)initVerticalWithValues:(id *)values
{
  valuesCopy = values;
  selfCopy = self;
  if (!values)
  {
    NSLog(&cfstr_UigradientInit.isa, a2);
    goto LABEL_12;
  }

  v5 = 0;
  do
  {
    v6 = v5 + 1;
    var4 = values[v5++].var4;
  }

  while (var4 < 1.0);
  if (v6 > 1)
  {
    v11.receiver = self;
    v11.super_class = UIGradient;
    selfCopy = [(UIGradient *)&v11 init];
    if (selfCopy)
    {
      v8 = 40 * v6;
      v9 = malloc_type_malloc(v8, 0x10000400A747E1EuLL);
      selfCopy->_values = v9;
      if (!v9)
      {
        goto LABEL_6;
      }

      memcpy(v9, valuesCopy, v8);
    }

    selfCopy = selfCopy;
    valuesCopy = selfCopy;
    goto LABEL_12;
  }

  NSLog(&cfstr_UigradientInit_0.isa, a2, 1.0);
LABEL_6:
  valuesCopy = 0;
LABEL_12:

  return valuesCopy;
}

- (void)fillRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = self->_height;
  shader = self->_shader;
  if (rect.size.height == v10)
  {
    if (shader)
    {
LABEL_10:
      CGContextSaveGState(context);
      v16.origin.x = x;
      v16.origin.y = y;
      v16.size.width = width;
      v16.size.height = height;
      CGContextClipToRect(context, v16);
      CGContextTranslateCTM(context, x, y);
      CGContextDrawShading(context, self->_shader);
      CGContextRestoreGState(context);
      return;
    }
  }

  else
  {
    if (shader)
    {
      CGShadingRelease(shader);
      self->_shader = 0;
    }

    self->_height = height;
  }

  if (!fillRect_inContext____gradientColorSpace)
  {
    fillRect_inContext____gradientColorSpace = CGColorSpaceCreateDeviceRGB();
  }

  values = self->_values;
  v14 = *byte_1EFB04950;
  v13 = CGFunctionCreate(values, 1uLL, createGradientShaderFunction_domain, 4uLL, createGradientShaderFunction_range, &v14);
  v15.y = self->_height;
  v15.x = 0.0;
  self->_shader = CGShadingCreateAxial(fillRect_inContext____gradientColorSpace, *MEMORY[0x1E695EFF8], v15, v13, 0, 0);
  CGFunctionRelease(v13);
  if (self->_shader)
  {
    goto LABEL_10;
  }
}

- (void)fillRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  [(UIGradient *)self fillRect:v9 inContext:x, y, width, height];
}

- (void)dealloc
{
  shader = self->_shader;
  if (shader)
  {
    CGShadingRelease(shader);
  }

  free(self->_values);
  v4.receiver = self;
  v4.super_class = UIGradient;
  [(UIGradient *)&v4 dealloc];
}

@end