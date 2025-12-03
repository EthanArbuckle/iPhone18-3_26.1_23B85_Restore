@interface _UIVibrancyEffectModernVibrancyImpl
- (BOOL)isEqual:(id)equal;
- (_UIVibrancyEffectModernVibrancyImpl)initWithFilter:(id)filter inputColor1:(id)color1 inputColor2:(id)color2 compositingColor:(id)color inputReversed:(BOOL)reversed;
- (id)implementationReplacingTintColor:(id)color;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)appendDescriptionTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIVibrancyEffectModernVibrancyImpl

- (_UIVibrancyEffectModernVibrancyImpl)initWithFilter:(id)filter inputColor1:(id)color1 inputColor2:(id)color2 compositingColor:(id)color inputReversed:(BOOL)reversed
{
  filterCopy = filter;
  color1Copy = color1;
  color2Copy = color2;
  colorCopy = color;
  v26.receiver = self;
  v26.super_class = _UIVibrancyEffectModernVibrancyImpl;
  v16 = [(_UIVibrancyEffectModernVibrancyImpl *)&v26 init];
  if (v16)
  {
    v17 = [filterCopy copy];
    filterType = v16->_filterType;
    v16->_filterType = v17;

    v19 = [color1Copy copy];
    inputColor1 = v16->_inputColor1;
    v16->_inputColor1 = v19;

    v21 = [color2Copy copy];
    inputColor2 = v16->_inputColor2;
    v16->_inputColor2 = v21;

    if (colorCopy)
    {
      v23 = [colorCopy copy];
    }

    else
    {
      v23 = +[UIColor whiteColor];
    }

    v24 = v23;
    objc_storeStrong(&v16->_compositingColor, v23);

    v16->_inputReversed = reversed;
  }

  return v16;
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
  selfCopy = [[_UIVibrancyEffectModernVibrancyImpl alloc] initWithFilter:self->_filterType inputColor1:self->_inputColor1 inputColor2:self->_inputColor2 compositingColor:v6 inputReversed:self->_inputReversed];
LABEL_10:
  v11 = selfCopy;

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *MEMORY[0x1E6979D90];
  filterType = self->_filterType;
  coderCopy = coder;
  [coderCopy encodeInteger:objc_msgSend(v4 forKey:{"isEqualToString:", filterType), @"UIVibrancyEffectFilterType"}];
  [coderCopy encodeObject:self->_inputColor1 forKey:@"UIVibrancyEffectColor1"];
  [coderCopy encodeObject:self->_inputColor2 forKey:@"UIVibrancyEffectColor2"];
  [coderCopy encodeObject:self->_compositingColor forKey:@"UIVibrancyEffectCompositingColor"];
  [coderCopy encodeBool:self->_inputReversed forKey:@"UIVibrancyEffectInputReversed"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    if (![v5[1] isEqualToString:self->_filterType])
    {
      goto LABEL_24;
    }

    inputColor1 = self->_inputColor1;
    v7 = v5[2];
    v8 = inputColor1;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_23;
      }

      v11 = [(UIColor *)v7 isEqual:v8];

      if (!v11)
      {
        goto LABEL_24;
      }
    }

    inputColor2 = self->_inputColor2;
    v7 = v5[3];
    v14 = inputColor2;
    v9 = v14;
    if (v7 == v14)
    {
    }

    else
    {
      if (!v7 || !v14)
      {
        goto LABEL_23;
      }

      v15 = [(UIColor *)v7 isEqual:v14];

      if (!v15)
      {
        goto LABEL_24;
      }
    }

    compositingColor = self->_compositingColor;
    v7 = v5[4];
    v17 = compositingColor;
    v9 = v17;
    if (v7 == v17)
    {

LABEL_28:
      v12 = *(v5 + 40) == self->_inputReversed;
      goto LABEL_25;
    }

    if (v7 && v17)
    {
      v18 = [(UIColor *)v7 isEqual:v17];

      if (v18)
      {
        goto LABEL_28;
      }

LABEL_24:
      v12 = 0;
LABEL_25:

      goto LABEL_26;
    }

LABEL_23:

    goto LABEL_24;
  }

  v12 = 0;
LABEL_26:

  return v12;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  filterType = self->_filterType;
  inputColor1 = self->_inputColor1;
  inputColor2 = self->_inputColor2;
  inputReversed = self->_inputReversed;
  descriptorCopy = descriptor;
  v11 = [UIVibrancyEffect _vibrancyEntryWithType:filterType inputColor1:inputColor1 inputColor2:inputColor2 inputReversed:inputReversed];
  [descriptorCopy addFilterEntry:v11];

  v12 = objc_alloc_init(_UITintColorViewEntry);
  [(_UITintColorViewEntry *)v12 setTintColor:self->_compositingColor];
  [descriptorCopy addViewEffect:v12];
  [descriptorCopy setTextShouldRenderWithTintColor:1];
}

- (void)appendDescriptionTo:(id)to
{
  toCopy = to;
  if ([(NSString *)self->_filterType isEqualToString:*MEMORY[0x1E6979D90]])
  {
    v4 = @" lightVibrancy";
  }

  else
  {
    v4 = @" darkVibrancy";
  }

  [toCopy appendString:v4];
  [toCopy appendFormat:@" inputColor1=%@ inputColor2=%@ compositingColor=%@", self->_inputColor1, self->_inputColor2, self->_compositingColor];
  if (self->_inputReversed)
  {
    [toCopy appendString:@" inputReversed"];
  }
}

@end