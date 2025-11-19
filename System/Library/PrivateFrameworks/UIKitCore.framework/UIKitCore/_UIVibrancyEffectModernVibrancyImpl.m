@interface _UIVibrancyEffectModernVibrancyImpl
- (BOOL)isEqual:(id)a3;
- (_UIVibrancyEffectModernVibrancyImpl)initWithFilter:(id)a3 inputColor1:(id)a4 inputColor2:(id)a5 compositingColor:(id)a6 inputReversed:(BOOL)a7;
- (id)implementationReplacingTintColor:(id)a3;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)appendDescriptionTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIVibrancyEffectModernVibrancyImpl

- (_UIVibrancyEffectModernVibrancyImpl)initWithFilter:(id)a3 inputColor1:(id)a4 inputColor2:(id)a5 compositingColor:(id)a6 inputReversed:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = _UIVibrancyEffectModernVibrancyImpl;
  v16 = [(_UIVibrancyEffectModernVibrancyImpl *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    filterType = v16->_filterType;
    v16->_filterType = v17;

    v19 = [v13 copy];
    inputColor1 = v16->_inputColor1;
    v16->_inputColor1 = v19;

    v21 = [v14 copy];
    inputColor2 = v16->_inputColor2;
    v16->_inputColor2 = v21;

    if (v15)
    {
      v23 = [v15 copy];
    }

    else
    {
      v23 = +[UIColor whiteColor];
    }

    v24 = v23;
    objc_storeStrong(&v16->_compositingColor, v23);

    v16->_inputReversed = a7;
  }

  return v16;
}

- (id)implementationReplacingTintColor:(id)a3
{
  v4 = a3;
  compositingColor = self->_compositingColor;
  v6 = v4;
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
    v10 = self;
    goto LABEL_10;
  }

LABEL_9:
  v10 = [[_UIVibrancyEffectModernVibrancyImpl alloc] initWithFilter:self->_filterType inputColor1:self->_inputColor1 inputColor2:self->_inputColor2 compositingColor:v6 inputReversed:self->_inputReversed];
LABEL_10:
  v11 = v10;

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *MEMORY[0x1E6979D90];
  filterType = self->_filterType;
  v6 = a3;
  [v6 encodeInteger:objc_msgSend(v4 forKey:{"isEqualToString:", filterType), @"UIVibrancyEffectFilterType"}];
  [v6 encodeObject:self->_inputColor1 forKey:@"UIVibrancyEffectColor1"];
  [v6 encodeObject:self->_inputColor2 forKey:@"UIVibrancyEffectColor2"];
  [v6 encodeObject:self->_compositingColor forKey:@"UIVibrancyEffectCompositingColor"];
  [v6 encodeBool:self->_inputReversed forKey:@"UIVibrancyEffectInputReversed"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
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

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  filterType = self->_filterType;
  inputColor1 = self->_inputColor1;
  inputColor2 = self->_inputColor2;
  inputReversed = self->_inputReversed;
  v10 = a3;
  v11 = [UIVibrancyEffect _vibrancyEntryWithType:filterType inputColor1:inputColor1 inputColor2:inputColor2 inputReversed:inputReversed];
  [v10 addFilterEntry:v11];

  v12 = objc_alloc_init(_UITintColorViewEntry);
  [(_UITintColorViewEntry *)v12 setTintColor:self->_compositingColor];
  [v10 addViewEffect:v12];
  [v10 setTextShouldRenderWithTintColor:1];
}

- (void)appendDescriptionTo:(id)a3
{
  v5 = a3;
  if ([(NSString *)self->_filterType isEqualToString:*MEMORY[0x1E6979D90]])
  {
    v4 = @" lightVibrancy";
  }

  else
  {
    v4 = @" darkVibrancy";
  }

  [v5 appendString:v4];
  [v5 appendFormat:@" inputColor1=%@ inputColor2=%@ compositingColor=%@", self->_inputColor1, self->_inputColor2, self->_compositingColor];
  if (self->_inputReversed)
  {
    [v5 appendString:@" inputReversed"];
  }
}

@end