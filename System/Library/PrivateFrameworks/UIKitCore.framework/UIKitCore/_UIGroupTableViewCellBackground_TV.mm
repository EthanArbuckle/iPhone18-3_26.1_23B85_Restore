@interface _UIGroupTableViewCellBackground_TV
- (_UIGroupTableViewCellBackground_TV)initWithFrame:(CGRect)frame backgroundImageColor:(id)color cornerRadius:(double)radius;
- (void)updateBackgroundImageColor:(id)color cornerRadius:(double)radius;
@end

@implementation _UIGroupTableViewCellBackground_TV

- (_UIGroupTableViewCellBackground_TV)initWithFrame:(CGRect)frame backgroundImageColor:(id)color cornerRadius:(double)radius
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v15.receiver = self;
  v15.super_class = _UIGroupTableViewCellBackground_TV;
  height = [(UIView *)&v15 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    [(_UIGroupTableViewCellBackground_TV *)height updateBackgroundImageColor:colorCopy cornerRadius:radius];
  }

  return v13;
}

- (void)updateBackgroundImageColor:(id)color cornerRadius:(double)radius
{
  colorCopy = color;
  v7 = colorCopy;
  v8 = MEMORY[0x1E696B098];
  v35 = 0u;
  v36 = 0u;
  radiusCopy = radius;
  if (colorCopy)
  {
    [colorCopy getRed:&v35 green:&v35 + 8 blue:&v36 alpha:&v36 + 8];
  }

  v9 = [v8 valueWithBytes:&v35 objCType:"{TVShadowComponentsKey=ddddd}"];
  if (![(NSValue *)self->_currentShadowKey isEqualToValue:v9, v35, v36, *&radiusCopy])
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
      v39.size.width = radius + radius + 10.0;
      v39.size.height = v39.size.width;
      v13 = CGRectGetWidth(v39) + 20.0;
      v40.origin.x = 10.0;
      v40.origin.y = 10.0;
      v40.size.width = radius + radius + 10.0;
      v40.size.height = v40.size.width;
      Height = CGRectGetHeight(v40);
      v15 = CGBitmapContextCreate(0, v13, (Height + 20.0), 8uLL, 0, DeviceRGB, 0x2002u);
      CGColorSpaceRelease(DeviceRGB);
      CGContextSaveGState(v15);
      if (radius == 0.0)
      {
        [UIBezierPath bezierPathWithRect:10.0, 10.0, radius + radius + 10.0, radius + radius + 10.0];
      }

      else
      {
        [UIBezierPath _bezierPathWithPillRect:10.0 cornerRadius:10.0, radius + radius + 10.0, radius + radius + 10.0, radius + 1.0];
      }
      v16 = ;
      CGContextAddPath(v15, [v16 CGPath]);
      v17 = [UIColor colorWithWhite:0.0 alpha:0.05];
      cGColor = [v17 CGColor];

      v19 = +[UIColor blackColor];
      cGColor2 = [v19 CGColor];

      v38.width = 0.0;
      v38.height = 0.0;
      CGContextSetShadowWithColor(v15, v38, 10.0, cGColor2);
      CGContextSetFillColorWithColor(v15, cGColor);
      CGContextFillPath(v15);
      CGContextRestoreGState(v15);
      v21 = 10.0;
      v22 = 10.0;
      v23 = radius + radius + 10.0;
      v24 = v23;
      if (radius == 0.0)
      {
        v25 = CGPathCreateWithRect(*&v21, 0);
      }

      else
      {
        v25 = CGPathCreateWithRoundedRect(*&v21, radius, radius, 0);
      }

      v26 = v25;
      CGContextAddPath(v15, v25);
      if (v7)
      {
        cGColor3 = [v11 CGColor];
      }

      else
      {
        v28 = +[UIColor clearColor];
        cGColor3 = [v28 CGColor];
      }

      CGContextSetFillColorWithColor(v15, cGColor3);
      CGContextSetBlendMode(v15, kCGBlendModeCopy);
      CGContextFillPath(v15);
      CGPathRelease(v26);
      Image = CGBitmapContextCreateImage(v15);
      CFRelease(v15);
      v30 = [UIImage imageWithCGImage:Image];
      CGImageRelease(Image);
      v10 = [v30 resizableImageWithCapInsets:1 resizingMode:{radius + 10.0, radius + 10.0, radius + 10.0, radius + 10.0}];

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