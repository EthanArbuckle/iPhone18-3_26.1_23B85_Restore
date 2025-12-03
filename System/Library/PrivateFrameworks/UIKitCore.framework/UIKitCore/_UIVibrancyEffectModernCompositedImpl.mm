@interface _UIVibrancyEffectModernCompositedImpl
- (BOOL)isEqual:(id)equal;
- (_UIVibrancyEffectModernCompositedImpl)initWithCompositingMode:(int64_t)mode compositingColor:(id)color;
- (id)implementationReplacingTintColor:(id)color;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)appendDescriptionTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIVibrancyEffectModernCompositedImpl

- (_UIVibrancyEffectModernCompositedImpl)initWithCompositingMode:(int64_t)mode compositingColor:(id)color
{
  colorCopy = color;
  v16.receiver = self;
  v16.super_class = _UIVibrancyEffectModernCompositedImpl;
  v8 = [(_UIVibrancyEffectModernCompositedImpl *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_compositingMode = mode;
    v10 = _UICompositingFilterForMode(mode);
    filterType = v9->_filterType;
    v9->_filterType = v10;

    if (v9->_filterType)
    {
      if (colorCopy)
      {
LABEL_4:
        v12 = [colorCopy copy];
LABEL_7:
        v14 = v12;
        objc_storeStrong(&v9->_compositingColor, v12);

        goto LABEL_8;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"UIVibrancyEffect.m" lineNumber:792 description:{@"Invalid compositing mode %li", mode}];

      if (colorCopy)
      {
        goto LABEL_4;
      }
    }

    v12 = +[UIColor whiteColor];
    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

- (id)implementationReplacingTintColor:(id)color
{
  colorCopy = color;
  compositingColor = self->_compositingColor;
  v6 = colorCopy;
  v7 = compositingColor;
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_7;
  }

  if (v6 && v7)
  {
    v9 = [(UIColor *)v6 isEqual:v7];

    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_7:
    selfCopy = self;
    goto LABEL_10;
  }

LABEL_9:
  selfCopy = [[_UIVibrancyEffectModernCompositedImpl alloc] initWithCompositingMode:self->_compositingMode compositingColor:v6];
LABEL_10:
  v11 = selfCopy;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5[1] == self->_compositingMode)
    {
      compositingColor = self->_compositingColor;
      v8 = v5[3];
      v9 = compositingColor;
      v10 = v9;
      if (v8 == v9)
      {
        v12 = 1;
      }

      else
      {
        if (v8)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = [(UIColor *)v8 isEqual:v9];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  compositingMode = self->_compositingMode;
  coderCopy = coder;
  [coderCopy encodeInteger:compositingMode forKey:@"UIVibrancyCompositedType"];
  [coderCopy encodeObject:self->_compositingColor forKey:@"UIVibrancyEffectCompositingColor"];
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  v8 = objc_alloc_init(_UICompositingEffectViewEntry);
  [(_UICompositingEffectViewEntry *)v8 setFilterType:self->_filterType];
  [descriptorCopy addViewEffect:v8];
  v7 = objc_alloc_init(_UITintColorViewEntry);
  [(_UITintColorViewEntry *)v7 setTintColor:self->_compositingColor];
  [descriptorCopy addViewEffect:v7];
  [descriptorCopy setTextShouldRenderWithTintColor:1];
}

- (void)appendDescriptionTo:(id)to
{
  compositingMode = self->_compositingMode;
  toCopy = to;
  v6 = _UICompositingModeName(compositingMode);
  [toCopy appendFormat:@" compositingMode=%@ compositingColor=%@", v6, self->_compositingColor];
}

@end