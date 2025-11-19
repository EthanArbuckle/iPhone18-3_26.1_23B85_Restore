@interface _UIVibrancyEffectModernCompositedImpl
- (BOOL)isEqual:(id)a3;
- (_UIVibrancyEffectModernCompositedImpl)initWithCompositingMode:(int64_t)a3 compositingColor:(id)a4;
- (id)implementationReplacingTintColor:(id)a3;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)appendDescriptionTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIVibrancyEffectModernCompositedImpl

- (_UIVibrancyEffectModernCompositedImpl)initWithCompositingMode:(int64_t)a3 compositingColor:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = _UIVibrancyEffectModernCompositedImpl;
  v8 = [(_UIVibrancyEffectModernCompositedImpl *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_compositingMode = a3;
    v10 = _UICompositingFilterForMode(a3);
    filterType = v9->_filterType;
    v9->_filterType = v10;

    if (v9->_filterType)
    {
      if (v7)
      {
LABEL_4:
        v12 = [v7 copy];
LABEL_7:
        v14 = v12;
        objc_storeStrong(&v9->_compositingColor, v12);

        goto LABEL_8;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:v9 file:@"UIVibrancyEffect.m" lineNumber:792 description:{@"Invalid compositing mode %li", a3}];

      if (v7)
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
  v10 = [[_UIVibrancyEffectModernCompositedImpl alloc] initWithCompositingMode:self->_compositingMode compositingColor:v6];
LABEL_10:
  v11 = v10;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  compositingMode = self->_compositingMode;
  v5 = a3;
  [v5 encodeInteger:compositingMode forKey:@"UIVibrancyCompositedType"];
  [v5 encodeObject:self->_compositingColor forKey:@"UIVibrancyEffectCompositingColor"];
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v6 = a3;
  v8 = objc_alloc_init(_UICompositingEffectViewEntry);
  [(_UICompositingEffectViewEntry *)v8 setFilterType:self->_filterType];
  [v6 addViewEffect:v8];
  v7 = objc_alloc_init(_UITintColorViewEntry);
  [(_UITintColorViewEntry *)v7 setTintColor:self->_compositingColor];
  [v6 addViewEffect:v7];
  [v6 setTextShouldRenderWithTintColor:1];
}

- (void)appendDescriptionTo:(id)a3
{
  compositingMode = self->_compositingMode;
  v5 = a3;
  v6 = _UICompositingModeName(compositingMode);
  [v5 appendFormat:@" compositingMode=%@ compositingColor=%@", v6, self->_compositingColor];
}

@end