@interface VTUIColorLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (VTUIColorLayer)init;
- (id)actionForKey:(id)a3;
- (void)display;
@end

@implementation VTUIColorLayer

- (VTUIColorLayer)init
{
  v10.receiver = self;
  v10.super_class = VTUIColorLayer;
  v2 = [(VTUIColorLayer *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.96875 green:0.25390625 blue:0.36328125 alpha:1.0];
    redColor = v2->_redColor;
    v2->_redColor = v3;

    v5 = [MEMORY[0x277D75348] colorWithRed:0.15625 green:0.52734375 blue:0.9921875 alpha:1.0];
    blueColor = v2->_blueColor;
    v2->_blueColor = v5;

    v7 = [MEMORY[0x277D75348] labelColor];
    backgroundColor = v2->_backgroundColor;
    v2->_backgroundColor = v7;
  }

  return v2;
}

+ (BOOL)needsDisplayForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"phase"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VTUIColorLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, v4);
  }

  return v5;
}

- (void)display
{
  [(VTUIColorLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VTUIColorLayer *)self bounds];
  v45.width = v11;
  v45.height = v12;
  v13 = 0.0;
  UIGraphicsBeginImageContextWithOptions(v45, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v40 = v4;
  v41 = v10;
  v46.origin.x = v4;
  v46.origin.y = v6;
  v42 = v8;
  v46.size.width = v8;
  v46.size.height = v10;
  CGContextClearRect(CurrentContext, v46);
  v15 = [(VTUIColorLayer *)self presentationLayer];
  [v15 phase];
  v17 = v16;

  v18 = ((v17 + -0.57) / 0.4) * 12.0;
  if (v18 > -10.0)
  {
    v13 = 1.0;
    if (v18 < 10.0)
    {
      v19 = 1.0 / (exp(-v18) + 1.0);
      v13 = v19;
    }
  }

  v38 = v13;
  v20 = ((v17 + -0.4) / 0.8) * 12.0;
  v21 = 0.0;
  v22 = 0.0;
  if (v20 > -10.0)
  {
    v22 = 1.0;
    if (v20 < 10.0)
    {
      v22 = 1.0 / (exp(-v20) + 1.0);
    }
  }

  v23 = ((v17 + -0.6) / 0.3) * 12.0;
  if (v23 > -10.0)
  {
    v21 = 1.0;
    if (v23 < 10.0)
    {
      v21 = 1.0 / (exp(-v23) + 1.0);
    }
  }

  v24 = ((v17 + -0.35) / 0.6) * 12.0;
  v25 = 0.0;
  v26 = 0.0;
  if (v24 > -10.0)
  {
    v26 = 1.0;
    if (v24 < 10.0)
    {
      v26 = 1.0 / (exp(-v24) + 1.0);
    }
  }

  v27 = ((v17 + -0.3) / 0.4) * 12.0;
  if (v27 > -10.0)
  {
    v25 = 1.0;
    if (v27 < 10.0)
    {
      v25 = 1.0 / (exp(-v27) + 1.0);
    }
  }

  v28 = [MEMORY[0x277D75C80] currentTraitCollection];
  v29 = [v28 userInterfaceStyle];

  v30 = v42;
  v31 = v25 * v30;
  v32 = v26 * v30;
  v33 = v22 * v30;
  CGContextSetFillColorWithColor(CurrentContext, [(UIColor *)self->_redColor CGColor]);
  v47.size.width = v31;
  v47.origin.x = v40;
  v47.origin.y = v6;
  v47.size.height = v41;
  CGContextFillRect(CurrentContext, v47);
  CGContextSetFillColorWithColor(CurrentContext, [(UIColor *)self->_blueColor CGColor]);
  v48.size.width = v32;
  v48.origin.x = v40;
  v48.origin.y = v6;
  v48.size.height = v41;
  CGContextFillRect(CurrentContext, v48);
  v43 = [MEMORY[0x277D75348] colorWithRed:((1.0 - v21) * 0.37891) green:((1.0 - v21) * 0.98828) blue:((1.0 - v21) * 0.67578) alpha:1.0];
  v34 = v43;
  CGContextSetFillColorWithColor(CurrentContext, [v43 CGColor]);
  v49.size.width = v33;
  v49.origin.x = v40;
  v49.origin.y = v6;
  v49.size.height = v41;
  CGContextFillRect(CurrentContext, v49);
  v35 = 0.0;
  if (v29 != 1)
  {
    v35 = v39;
  }

  v36 = [(UIColor *)self->_backgroundColor colorWithAlphaComponent:v35];
  CGContextSetFillColorWithColor(CurrentContext, [v36 CGColor]);
  [(VTUIColorLayer *)self bounds];
  CGContextFillRect(CurrentContext, v50);
  v37 = UIGraphicsGetImageFromCurrentImageContext();
  -[VTUIColorLayer setContents:](self, "setContents:", [v37 CGImage]);

  UIGraphicsEndImageContext();
}

- (id)actionForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"phase"])
  {
    v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:v4];

    v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v5 setTimingFunction:v6];

    v7 = MEMORY[0x277CCABB0];
    [(VTUIColorLayer *)self phase];
    v8 = [v7 numberWithFloat:?];
    [v5 setFromValue:v8];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VTUIColorLayer;
    v5 = [(VTUIColorLayer *)&v10 actionForKey:v4];
  }

  return v5;
}

@end