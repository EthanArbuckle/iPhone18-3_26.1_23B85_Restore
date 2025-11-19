@interface WFGradient
- (BOOL)isEqual:(id)a3;
- (CGGradient)CGGradient;
- (WFGradient)initWithBaseColor:(id)a3 darkBaseColor:(id)a4 accessibilityBaseColor:(id)a5 darkAccessibilityBaseColor:(id)a6 startColor:(id)a7 endColor:(id)a8;
- (WFGradient)initWithCoder:(id)a3;
- (WFGradient)initWithColor:(id)a3;
- (WFGradient)initWithStartColor:(id)a3 endColor:(id)a4;
- (double)perceivedBrightness;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFGradient

- (double)perceivedBrightness
{
  v3 = [(WFGradient *)self endColor];
  [v3 red];
  v5 = v4;
  v6 = [(WFGradient *)self startColor];
  [v6 red];
  v8 = vabdd_f64(v5, v7) * 0.5;

  v9 = [(WFGradient *)self endColor];
  [v9 green];
  v11 = v10;
  v12 = [(WFGradient *)self startColor];
  [v12 green];
  v14 = vabdd_f64(v11, v13) * 0.5;

  v15 = [(WFGradient *)self endColor];
  [v15 blue];
  v17 = v16;
  v18 = [(WFGradient *)self startColor];
  [v18 blue];
  v20 = vabdd_f64(v17, v19) * 0.5;

  v21 = [(WFGradient *)self endColor];
  [v21 red];
  v23 = v8 + v22;

  v24 = [(WFGradient *)self endColor];
  [v24 green];
  v26 = v14 + v25;

  v27 = [(WFGradient *)self endColor];
  [v27 blue];
  v29 = v20 + v28;

  return v26 * 0.7152 + v23 * 0.2126 + v29 * 0.0722;
}

- (void)dealloc
{
  CGGradientRelease(self->_CGGradient);
  v3.receiver = self;
  v3.super_class = WFGradient;
  [(WFGradient *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFGradient *)self baseColor];
  [v4 encodeObject:v5 forKey:@"baseColor"];

  v6 = [(WFGradient *)self darkBaseColor];
  [v4 encodeObject:v6 forKey:@"darkBaseColor"];

  v7 = [(WFGradient *)self accessibilityBaseColor];
  [v4 encodeObject:v7 forKey:@"accessibilityBaseColor"];

  v8 = [(WFGradient *)self darkAccessibilityBaseColor];
  [v4 encodeObject:v8 forKey:@"darkAccessibilityBaseColor"];

  v9 = [(WFGradient *)self startColor];
  [v4 encodeObject:v9 forKey:@"startColor"];

  v10 = [(WFGradient *)self endColor];
  [v4 encodeObject:v10 forKey:@"endColor"];
}

- (WFGradient)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseColor"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"darkBaseColor"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityBaseColor"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"darkAccessibilityBaseColor"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startColor"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endColor"];

  v11 = 0;
  if (v5 && v6 && v7 && v8 && v9 && v10)
  {
    self = [(WFGradient *)self initWithBaseColor:v5 darkBaseColor:v6 accessibilityBaseColor:v7 darkAccessibilityBaseColor:v8 startColor:v9 endColor:v10];
    v11 = self;
  }

  return v11;
}

- (id)debugDescription
{
  v22[7] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, {\n", v5, self];

  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v6];
  v22[0] = @"baseColor";
  v22[1] = @"darkBaseColor";
  v22[2] = @"accessibilityBaseColor";
  v22[3] = @"accessibilityBaseColor";
  v22[4] = @"darkAccessibilityBaseColor";
  v22[5] = @"startColor";
  v22[6] = @"endColor";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:7];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [(WFGradient *)self valueForKey:v13];
        [v7 appendFormat:@"\t%@: %@\n", v13, v14, v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [v7 appendString:@"}>"];
  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFGradient *)self baseColor];
      v6 = [(WFGradient *)v4 baseColor];
      v7 = v5;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = 0;
        v11 = v8;
        v12 = v7;
        if (!v7 || !v8)
        {
          goto LABEL_31;
        }

        v13 = [v7 isEqual:v8];

        if (!v13)
        {
          v10 = 0;
LABEL_32:

          goto LABEL_33;
        }
      }

      v14 = [(WFGradient *)self darkBaseColor];
      v15 = [(WFGradient *)v4 darkBaseColor];
      v12 = v14;
      v16 = v15;
      v11 = v16;
      if (v12 == v16)
      {
      }

      else
      {
        v10 = 0;
        v17 = v16;
        v18 = v12;
        if (!v12 || !v16)
        {
          goto LABEL_30;
        }

        v19 = [v12 isEqual:v16];

        if (!v19)
        {
          v10 = 0;
LABEL_31:

          goto LABEL_32;
        }
      }

      v20 = [(WFGradient *)self startColor];
      v21 = [(WFGradient *)v4 startColor];
      v18 = v20;
      v22 = v21;
      v17 = v22;
      v29 = v18;
      if (v18 == v22)
      {
      }

      else
      {
        v10 = 0;
        v23 = v22;
        if (!v18 || !v22)
        {
LABEL_29:

          v18 = v29;
          goto LABEL_30;
        }

        v24 = [v18 isEqual:v22];

        if (!v24)
        {
          v10 = 0;
LABEL_30:

          goto LABEL_31;
        }
      }

      v25 = [(WFGradient *)self endColor];
      v26 = [(WFGradient *)v4 endColor];
      v18 = v25;
      v27 = v26;
      v23 = v27;
      if (v18 == v27)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if (v18 && v27)
        {
          v10 = [v18 isEqual:v27];
        }
      }

      goto LABEL_29;
    }

    v10 = 0;
  }

LABEL_33:

  return v10;
}

- (CGGradient)CGGradient
{
  v6[2] = *MEMORY[0x1E69E9840];
  result = self->_CGGradient;
  if (!result)
  {
    v6[0] = [(WFColor *)self->_startColor CGColor];
    v6[1] = [(WFColor *)self->_endColor CGColor];
    v5 = xmmword_1B1F36780;
    result = CGGradientCreateWithColors(0, [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2], &v5);
    self->_CGGradient = result;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (WFGradient)initWithBaseColor:(id)a3 darkBaseColor:(id)a4 accessibilityBaseColor:(id)a5 darkAccessibilityBaseColor:(id)a6 startColor:(id)a7 endColor:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  obj = a6;
  v17 = a6;
  v32 = a7;
  v18 = a7;
  v33 = a8;
  v19 = a8;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"baseColor"}];

    if (v15)
    {
LABEL_3:
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"darkBaseColor"}];

  if (v16)
  {
LABEL_4:
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"accessibilityBaseColor"}];

  if (v17)
  {
LABEL_5:
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_14:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"startColor"}];

    if (v19)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"darkAccessibilityBaseColor"}];

  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v19)
  {
    goto LABEL_7;
  }

LABEL_15:
  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"endColor"}];

LABEL_7:
  v35.receiver = self;
  v35.super_class = WFGradient;
  v20 = [(WFGradient *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_baseColor, a3);
    objc_storeStrong(&v21->_darkBaseColor, a4);
    objc_storeStrong(&v21->_accessibilityBaseColor, a5);
    objc_storeStrong(&v21->_darkAccessibilityBaseColor, obj);
    objc_storeStrong(&v21->_startColor, v32);
    objc_storeStrong(&v21->_endColor, v33);
    v22 = v21;
  }

  return v21;
}

- (WFGradient)initWithStartColor:(id)a3 endColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if ([v8 isEqual:v7])
  {
    v9 = v8;
  }

  else
  {
    v20 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    v17 = 0.0;
    [v8 getRed:&v20 green:&v19 blue:&v18 alpha:&v17];
    v15 = 0.0;
    v16 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    [v7 getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
    v9 = [WFColor colorWithRed:(v20 + v16) * 0.5 green:(v19 + v15) * 0.5 blue:(v18 + v14) * 0.5 alpha:(v17 + v13) * 0.5];
  }

  v10 = v9;

  v11 = [(WFGradient *)self initWithBaseColor:v10 startColor:v8 endColor:v7];
  return v11;
}

- (WFGradient)initWithColor:(id)a3
{
  v4 = a3;
  v5 = +[WFColor clearColor];
  v6 = +[WFColor clearColor];
  v7 = [(WFGradient *)self initWithBaseColor:v4 startColor:v5 endColor:v6];

  return v7;
}

@end