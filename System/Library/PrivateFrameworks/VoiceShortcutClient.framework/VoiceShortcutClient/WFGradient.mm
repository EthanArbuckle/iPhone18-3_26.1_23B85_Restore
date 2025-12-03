@interface WFGradient
- (BOOL)isEqual:(id)equal;
- (CGGradient)CGGradient;
- (WFGradient)initWithBaseColor:(id)color darkBaseColor:(id)baseColor accessibilityBaseColor:(id)accessibilityBaseColor darkAccessibilityBaseColor:(id)darkAccessibilityBaseColor startColor:(id)startColor endColor:(id)endColor;
- (WFGradient)initWithCoder:(id)coder;
- (WFGradient)initWithColor:(id)color;
- (WFGradient)initWithStartColor:(id)color endColor:(id)endColor;
- (double)perceivedBrightness;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFGradient

- (double)perceivedBrightness
{
  endColor = [(WFGradient *)self endColor];
  [endColor red];
  v5 = v4;
  startColor = [(WFGradient *)self startColor];
  [startColor red];
  v8 = vabdd_f64(v5, v7) * 0.5;

  endColor2 = [(WFGradient *)self endColor];
  [endColor2 green];
  v11 = v10;
  startColor2 = [(WFGradient *)self startColor];
  [startColor2 green];
  v14 = vabdd_f64(v11, v13) * 0.5;

  endColor3 = [(WFGradient *)self endColor];
  [endColor3 blue];
  v17 = v16;
  startColor3 = [(WFGradient *)self startColor];
  [startColor3 blue];
  v20 = vabdd_f64(v17, v19) * 0.5;

  endColor4 = [(WFGradient *)self endColor];
  [endColor4 red];
  v23 = v8 + v22;

  endColor5 = [(WFGradient *)self endColor];
  [endColor5 green];
  v26 = v14 + v25;

  endColor6 = [(WFGradient *)self endColor];
  [endColor6 blue];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  baseColor = [(WFGradient *)self baseColor];
  [coderCopy encodeObject:baseColor forKey:@"baseColor"];

  darkBaseColor = [(WFGradient *)self darkBaseColor];
  [coderCopy encodeObject:darkBaseColor forKey:@"darkBaseColor"];

  accessibilityBaseColor = [(WFGradient *)self accessibilityBaseColor];
  [coderCopy encodeObject:accessibilityBaseColor forKey:@"accessibilityBaseColor"];

  darkAccessibilityBaseColor = [(WFGradient *)self darkAccessibilityBaseColor];
  [coderCopy encodeObject:darkAccessibilityBaseColor forKey:@"darkAccessibilityBaseColor"];

  startColor = [(WFGradient *)self startColor];
  [coderCopy encodeObject:startColor forKey:@"startColor"];

  endColor = [(WFGradient *)self endColor];
  [coderCopy encodeObject:endColor forKey:@"endColor"];
}

- (WFGradient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseColor"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"darkBaseColor"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityBaseColor"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"darkAccessibilityBaseColor"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startColor"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endColor"];

  selfCopy = 0;
  if (v5 && v6 && v7 && v8 && v9 && v10)
  {
    self = [(WFGradient *)self initWithBaseColor:v5 darkBaseColor:v6 accessibilityBaseColor:v7 darkAccessibilityBaseColor:v8 startColor:v9 endColor:v10];
    selfCopy = self;
  }

  return selfCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      baseColor = [(WFGradient *)self baseColor];
      baseColor2 = [(WFGradient *)equalCopy baseColor];
      v7 = baseColor;
      v8 = baseColor2;
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

      darkBaseColor = [(WFGradient *)self darkBaseColor];
      darkBaseColor2 = [(WFGradient *)equalCopy darkBaseColor];
      v12 = darkBaseColor;
      v16 = darkBaseColor2;
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

      startColor = [(WFGradient *)self startColor];
      startColor2 = [(WFGradient *)equalCopy startColor];
      v18 = startColor;
      v22 = startColor2;
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

      endColor = [(WFGradient *)self endColor];
      endColor2 = [(WFGradient *)equalCopy endColor];
      v18 = endColor;
      v27 = endColor2;
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

- (WFGradient)initWithBaseColor:(id)color darkBaseColor:(id)baseColor accessibilityBaseColor:(id)accessibilityBaseColor darkAccessibilityBaseColor:(id)darkAccessibilityBaseColor startColor:(id)startColor endColor:(id)endColor
{
  colorCopy = color;
  baseColorCopy = baseColor;
  accessibilityBaseColorCopy = accessibilityBaseColor;
  obj = darkAccessibilityBaseColor;
  darkAccessibilityBaseColorCopy = darkAccessibilityBaseColor;
  startColorCopy = startColor;
  startColorCopy2 = startColor;
  endColorCopy = endColor;
  endColorCopy2 = endColor;
  if (colorCopy)
  {
    if (baseColorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"baseColor"}];

    if (baseColorCopy)
    {
LABEL_3:
      if (accessibilityBaseColorCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"darkBaseColor"}];

  if (accessibilityBaseColorCopy)
  {
LABEL_4:
    if (darkAccessibilityBaseColorCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"accessibilityBaseColor"}];

  if (darkAccessibilityBaseColorCopy)
  {
LABEL_5:
    if (startColorCopy2)
    {
      goto LABEL_6;
    }

LABEL_14:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"startColor"}];

    if (endColorCopy2)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"darkAccessibilityBaseColor"}];

  if (!startColorCopy2)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (endColorCopy2)
  {
    goto LABEL_7;
  }

LABEL_15:
  currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler6 handleFailureInMethod:a2 object:self file:@"WFGradient.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"endColor"}];

LABEL_7:
  v35.receiver = self;
  v35.super_class = WFGradient;
  v20 = [(WFGradient *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_baseColor, color);
    objc_storeStrong(&v21->_darkBaseColor, baseColor);
    objc_storeStrong(&v21->_accessibilityBaseColor, accessibilityBaseColor);
    objc_storeStrong(&v21->_darkAccessibilityBaseColor, obj);
    objc_storeStrong(&v21->_startColor, startColorCopy);
    objc_storeStrong(&v21->_endColor, endColorCopy);
    v22 = v21;
  }

  return v21;
}

- (WFGradient)initWithStartColor:(id)color endColor:(id)endColor
{
  colorCopy = color;
  endColorCopy = endColor;
  v8 = colorCopy;
  if ([v8 isEqual:endColorCopy])
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
    [endColorCopy getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
    v9 = [WFColor colorWithRed:(v20 + v16) * 0.5 green:(v19 + v15) * 0.5 blue:(v18 + v14) * 0.5 alpha:(v17 + v13) * 0.5];
  }

  v10 = v9;

  v11 = [(WFGradient *)self initWithBaseColor:v10 startColor:v8 endColor:endColorCopy];
  return v11;
}

- (WFGradient)initWithColor:(id)color
{
  colorCopy = color;
  v5 = +[WFColor clearColor];
  v6 = +[WFColor clearColor];
  v7 = [(WFGradient *)self initWithBaseColor:colorCopy startColor:v5 endColor:v6];

  return v7;
}

@end