@interface NSShadow
+ (id)defaultShadowColor;
+ (id)shadow;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CGSize)shadowOffset;
- (NSShadow)init;
- (NSShadow)initWithCoder:(NSCoder *)coder;
- (NSShadow)initWithShadow:(id)shadow;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)shadowColor;
- (void)applyToGraphicsContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setShadowColor:(id)shadowColor;
@end

@implementation NSShadow

- (id)shadowColor
{
  objc_sync_enter(self);
  if (self->_shadowFlags)
  {
    shadowColor = self->_shadowColor;
  }

  else
  {
    shadowColor = [objc_opt_class() defaultShadowColor];
  }

  objc_sync_exit(self);
  return shadowColor;
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    [NSShadow setVersion:1];
    __NSShadowClass = self;
  }
}

- (NSShadow)init
{
  v3.receiver = self;
  v3.super_class = NSShadow;
  return [(NSShadow *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSShadow;
  [(NSShadow *)&v3 dealloc];
}

- (void)applyToGraphicsContext:(id)context
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  cGContext = [context CGContext];
  v7 = cGContext;
  if (self->_shadowFlags)
  {
    cGColor = [(NSColor *)self->_shadowColor CGColor];
    if (cGColor)
    {
      shadowBlurRadius = self->_shadowBlurRadius;
      v13 = width;
      v14 = height;

      CGContextSetShadowWithColor(v7, *&v13, shadowBlurRadius, cGColor);
    }
  }

  else
  {
    v8 = self->_shadowBlurRadius;
    v9 = width;
    v10 = height;

    CGContextSetShadow(cGContext, *&v9, v8);
  }
}

+ (id)shadow
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)defaultShadowColor
{
  result = defaultShadowColor_defaultShadowColor;
  if (!defaultShadowColor_defaultShadowColor)
  {
    result = [getNSColorClass_2[0]() colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:0.333333333];
    defaultShadowColor_defaultShadowColor = result;
  }

  return result;
}

- (NSShadow)initWithShadow:(id)shadow
{
  v4 = [(NSShadow *)self init];
  v5 = v4;
  if (shadow && v4)
  {
    if (object_getClass(v4) == __NSShadowClass && object_getClass(shadow) == __NSShadowClass)
    {
      v5->_shadowOffset = *(shadow + 1);
      v5->_shadowBlurRadius = *(shadow + 4);
      v7 = *(shadow + 1);
      v5->_shadowFlags = v7;
      if (v7)
      {
        v5->_shadowColor = [*(shadow + 5) copyWithZone:{-[NSShadow zone](v5, "zone")}];
      }
    }

    else
    {
      [shadow shadowOffset];
      [(NSShadow *)v5 setShadowOffset:?];
      [shadow shadowBlurRadius];
      [(NSShadow *)v5 setShadowBlurRadius:?];
      -[NSShadow setShadowColor:](v5, "setShadowColor:", [shadow shadowColor]);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithShadow:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    goto LABEL_20;
  }

  if (!equal)
  {
LABEL_16:
    LOBYTE(v11) = 0;
    return v11;
  }

  if (object_getClass(self) != __NSShadowClass || object_getClass(equal) != __NSShadowClass)
  {
    if (objc_opt_isKindOfClass())
    {
      [(NSShadow *)self shadowOffset];
      v6 = v5;
      v8 = v7;
      [equal shadowOffset];
      v22.width = v9;
      v22.height = v10;
      v21.width = v6;
      v21.height = v8;
      v11 = NSEqualSizes(v21, v22);
      if (!v11)
      {
        return v11;
      }

      [(NSShadow *)self shadowBlurRadius];
      v13 = v12;
      [equal shadowBlurRadius];
      if (v13 == v14)
      {
        shadowColor = [(NSShadow *)self shadowColor];
        shadowColor2 = [equal shadowColor];
        if (shadowColor != shadowColor2)
        {
          v17 = shadowColor2;
          shadowColor = shadowColor;
          goto LABEL_10;
        }

LABEL_20:
        LOBYTE(v11) = 1;
        return v11;
      }
    }

    goto LABEL_16;
  }

  if (self->_shadowOffset.width != *(equal + 2) || self->_shadowOffset.height != *(equal + 3) || self->_shadowBlurRadius != *(equal + 4))
  {
    goto LABEL_16;
  }

  if ((self->_shadowFlags & 1) == 0 && (*(equal + 8) & 1) == 0)
  {
    goto LABEL_20;
  }

  shadowColor = self->_shadowColor;
  v17 = *(equal + 5);
  if (shadowColor == v17)
  {
    goto LABEL_20;
  }

LABEL_10:

  LOBYTE(v11) = [(NSColor *)shadowColor isEqual:v17];
  return v11;
}

- (void)setShadowColor:(id)shadowColor
{
  objc_sync_enter(self);
  self->_shadowFlags |= 1uLL;
  v5 = self->_shadowColor;
  if (v5 != shadowColor)
  {

    self->_shadowColor = [shadowColor copyWithZone:{-[NSShadow zone](self, "zone")}];
  }

  objc_sync_exit(self);
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_shadowOffset.width != 0.0)
  {
    [coder encodeDouble:@"NSShadowHoriz" forKey:?];
  }

  height = self->_shadowOffset.height;
  if (height != 0.0)
  {
    [coder encodeDouble:@"NSShadowVert" forKey:-height];
  }

  if (self->_shadowBlurRadius != 0.0)
  {
    [coder encodeDouble:@"NSShadowBlurRadius" forKey:?];
  }

  if (self->_shadowFlags)
  {
    shadowColor = self->_shadowColor;

    [coder encodeObject:shadowColor forKey:@"NSShadowColor"];
  }
}

- (NSShadow)initWithCoder:(NSCoder *)coder
{
  if ([(NSCoder *)coder containsValueForKey:@"NSShadowHoriz"])
  {
    [(NSCoder *)coder decodeDoubleForKey:@"NSShadowHoriz"];
    self->_shadowOffset.width = v6;
    if ([(NSCoder *)coder error])
    {
      goto LABEL_27;
    }

    if ((*&self->_shadowOffset.width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v12 = @"decoded horizontal offset is invalid";
LABEL_22:
      v20 = _NSSecureDecodingError(self, a2, v12, v7, v8, v9, v10, v11, v22);

      [(NSCoder *)coder failWithError:v20];
      return 0;
    }
  }

  if ([(NSCoder *)coder containsValueForKey:@"NSShadowVert"])
  {
    [(NSCoder *)coder decodeDoubleForKey:@"NSShadowVert"];
    self->_shadowOffset.height = v13;
    if ([(NSCoder *)coder error])
    {
      goto LABEL_27;
    }

    height = self->_shadowOffset.height;
    if ((*&height & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v12 = @"decoded vertical offset is invalid";
      goto LABEL_22;
    }
  }

  else
  {
    height = self->_shadowOffset.height;
  }

  self->_shadowOffset.height = -height;
  if (![(NSCoder *)coder containsValueForKey:@"NSShadowBlurRadius"])
  {
    goto LABEL_23;
  }

  [(NSCoder *)coder decodeDoubleForKey:@"NSShadowBlurRadius"];
  self->_shadowBlurRadius = v15;
  if ([(NSCoder *)coder error])
  {
LABEL_27:

    return 0;
  }

  shadowBlurRadius = self->_shadowBlurRadius;
  v17 = (*&shadowBlurRadius & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v18 = shadowBlurRadius < 0.0 && ((*&shadowBlurRadius & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (shadowBlurRadius >= 0.0)
  {
    v17 = 0;
  }

  v19 = (*&shadowBlurRadius & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v17;
  if ((v19 | v18) == 1)
  {
    v12 = @"decoded blur radius is invalid";
    goto LABEL_22;
  }

LABEL_23:
  if ([(NSCoder *)coder containsValueForKey:@"NSShadowColor"])
  {
    if (initWithCoder__onceToken != -1)
    {
      [NSShadow initWithCoder:];
    }

    self->_shadowColor = [(NSCoder *)coder decodeTopLevelObjectOfClasses:initWithCoder__allowedClasses forKey:@"NSShadowColor" error:0];
    self->_shadowFlags |= 1uLL;
    if ([(NSCoder *)coder error])
    {
      goto LABEL_27;
    }
  }

  return self;
}

uint64_t __26__NSShadow_initWithCoder___block_invoke()
{
  v0 = NSClassFromString(@"UIColor");
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v0, getNSColorClass_2[0](), 0}];
  initWithCoder__allowedClasses = result;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"NSShadow %@", NSStringFromSize(self->_shadowOffset)];
  v4 = v3;
  if (self->_shadowBlurRadius != 0.0)
  {
    [v3 appendFormat:@" blur = %g", *&self->_shadowBlurRadius];
  }

  if (self->_shadowFlags)
  {
    [v4 appendFormat:@" color = {%@}", self->_shadowColor];
  }

  return v4;
}

@end