@interface _UIGroupTableViewCellBackground_TV
- (_UIGroupTableViewCellBackground_TV)initWithFrame:(CGRect)a3 backgroundImageColor:(id)a4 cornerRadius:(double)a5;
- (void)updateBackgroundImageColor:(id)a3 cornerRadius:(double)a4;
@end

@implementation _UIGroupTableViewCellBackground_TV

- (_UIGroupTableViewCellBackground_TV)initWithFrame:(CGRect)a3 backgroundImageColor:(id)a4 cornerRadius:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = _UIGroupTableViewCellBackground_TV;
  v12 = [(UIView *)&v15 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(_UIGroupTableViewCellBackground_TV *)v12 updateBackgroundImageColor:v11 cornerRadius:a5];
  }

  return v13;
}

- (void)updateBackgroundImageColor:(id)a3 cornerRadius:(double)a4
{
  v6 = a3;
  v7 = v6;
  v8 = MEMORY[0x1E696B098];
  v35 = 0u;
  v36 = 0u;
  v37 = a4;
  if (v6)
  {
    [v6 getRed:&v35 green:&v35 + 8 blue:&v36 alpha:&v36 + 8];
  }

  v9 = [v8 valueWithBytes:&v35 objCType:"{TVShadowComponentsKey=ddddd}"];
  if (![(NSValue *)self->_currentShadowKey isEqualToValue:v9, v35, v36, *&v37])
  {
    objc_storeStrong(&self->_currentShadowKey, v9);
    if (_MergedGlobals_1_28 != -1)
    {
      dispatch_once(&_MergedGlobals_1_28, &__block_literal_global_559);
    }

    v10 = [qword_1ED4994A8 objectForKey:v9];
    if (!v10)
    {
      v11 = v7;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v39.origin.x = 10.0;
      v39.origin.y = 10.0;
      v39.size.width = a4 + a4 + 10.0;
      v39.size.height = v39.size.width;
      v13 = CGRectGetWidth(v39) + 20.0;
      v40.origin.x = 10.0;
      v40.origin.y = 10.0;
      v40.size.width = a4 + a4 + 10.0;
      v40.size.height = v40.size.width;
      Height = CGRectGetHeight(v40);
      v15 = CGBitmapContextCreate(0, v13, (Height + 20.0), 8uLL, 0, DeviceRGB, 0x2002u);
      CGColorSpaceRelease(DeviceRGB);
      CGContextSaveGState(v15);
      if (a4 == 0.0)
      {
        [UIBezierPath bezierPathWithRect:10.0, 10.0, a4 + a4 + 10.0, a4 + a4 + 10.0];
      }

      else
      {
        [UIBezierPath _bezierPathWithPillRect:10.0 cornerRadius:10.0, a4 + a4 + 10.0, a4 + a4 + 10.0, a4 + 1.0];
      }
      v16 = ;
      CGContextAddPath(v15, [v16 CGPath]);
      v17 = [UIColor colorWithWhite:0.0 alpha:0.05];
      v18 = [v17 CGColor];

      v19 = +[UIColor blackColor];
      v20 = [v19 CGColor];

      v38.width = 0.0;
      v38.height = 0.0;
      CGContextSetShadowWithColor(v15, v38, 10.0, v20);
      CGContextSetFillColorWithColor(v15, v18);
      CGContextFillPath(v15);
      CGContextRestoreGState(v15);
      v21 = 10.0;
      v22 = 10.0;
      v23 = a4 + a4 + 10.0;
      v24 = v23;
      if (a4 == 0.0)
      {
        v25 = CGPathCreateWithRect(*&v21, 0);
      }

      else
      {
        v25 = CGPathCreateWithRoundedRect(*&v21, a4, a4, 0);
      }

      v26 = v25;
      CGContextAddPath(v15, v25);
      if (v7)
      {
        v27 = [v11 CGColor];
      }

      else
      {
        v28 = +[UIColor clearColor];
        v27 = [v28 CGColor];
      }

      CGContextSetFillColorWithColor(v15, v27);
      CGContextSetBlendMode(v15, kCGBlendModeCopy);
      CGContextFillPath(v15);
      CGPathRelease(v26);
      Image = CGBitmapContextCreateImage(v15);
      CFRelease(v15);
      v30 = [UIImage imageWithCGImage:Image];
      CGImageRelease(Image);
      v10 = [v30 resizableImageWithCapInsets:1 resizingMode:{a4 + 10.0, a4 + 10.0, a4 + 10.0, a4 + 10.0}];

      [qword_1ED4994A8 setObject:v10 forKey:v9];
    }

    backgroundImageView = self->_backgroundImageView;
    if (!backgroundImageView)
    {
      v32 = [UIImageView alloc];
      [(UIView *)self bounds];
      v42 = CGRectInset(v41, -10.0, -10.0);
      v33 = [(UIImageView *)v32 initWithFrame:v42.origin.x, v42.origin.y, v42.size.width, v42.size.height];
      v34 = self->_backgroundImageView;
      self->_backgroundImageView = v33;

      [(UIView *)self->_backgroundImageView setAutoresizingMask:18];
      [(UIView *)self addSubview:self->_backgroundImageView];
      backgroundImageView = self->_backgroundImageView;
    }

    [(UIImageView *)backgroundImageView setImage:v10];
  }
}

@end