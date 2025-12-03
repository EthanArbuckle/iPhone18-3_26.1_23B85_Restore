@interface SKUIButtonBorderStyle
- (BOOL)_usesBackgroundWithAlpha:(id)alpha;
- (IKCornerRadii)cornerRadii;
- (SKUIButtonBorderStyle)initWithElementStyle:(id)style;
- (UIEdgeInsets)contentInset;
- (id)bezierPathWithBounds:(CGRect)bounds;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKUIButtonBorderStyle

- (SKUIButtonBorderStyle)initWithElementStyle:(id)style
{
  styleCopy = style;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIButtonBorderStyle initWithElementStyle:];
  }

  ikBorderColor = [styleCopy ikBorderColor];
  if (!ikBorderColor)
  {
    v6 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v37.receiver = self;
  v37.super_class = SKUIButtonBorderStyle;
  v6 = [(SKUIButtonBorderStyle *)&v37 init];
  if (v6)
  {
    v7 = [ikBorderColor copy];
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    ikBackgroundColor = [styleCopy ikBackgroundColor];
    color = [ikBackgroundColor color];
    v11 = [v6 _usesBackgroundWithAlpha:color];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277D1B070]);
      clearColor = [MEMORY[0x277D75348] clearColor];
      v14 = [v12 initWithColor:clearColor];
    }

    else
    {
      clearColor = [styleCopy ikBackgroundColor];
      v14 = [clearColor copy];
    }

    v15 = *(v6 + 11);
    *(v6 + 11) = v14;

    v16 = [styleCopy valueForStyle:*MEMORY[0x277D1AFB8]];
    self = v16;
    if (v16)
    {
      memset(v36, 0, sizeof(v36));
      [(SKUIButtonBorderStyle *)v16 getValue:v36];
      *(v6 + 2) = v36[0].receiver;
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      *(v6 + 2) = 1.0 / v18;
    }

    v19 = [styleCopy valueForStyle:*MEMORY[0x277D1AFF0]];
    v20 = v19;
    if (v19)
    {
      [v19 getValue:v6 + 24];
    }

    else
    {
      *(v6 + 24) = xmmword_215F3F120;
      *(v6 + 40) = xmmword_215F3F120;
    }

    borderRadius = [styleCopy borderRadius];
    v22 = borderRadius;
    if (borderRadius)
    {
      namedStyle = [borderRadius namedStyle];
      v24 = namedStyle;
      if (namedStyle)
      {
        if ([namedStyle isEqualToString:@"square"])
        {
          *(v6 + 72) = 0u;
          *(v6 + 56) = 0u;
        }

        else
        {
          __asm { FMOV            V0.2D, #7.0 }

          *(v6 + 72) = _Q0;
          *(v6 + 56) = _Q0;
          objc_storeStrong(v6 + 12, v24);
        }
      }

      else
      {
        [v22 cornerRadiiValue];
        *(v6 + 7) = v30;
        *(v6 + 8) = v31;
        *(v6 + 9) = v32;
        *(v6 + 10) = v33;
      }
    }

    else
    {
      __asm { FMOV            V0.2D, #7.0 }

      *(v6 + 72) = _Q0;
      *(v6 + 56) = _Q0;
    }

    goto LABEL_26;
  }

LABEL_27:

  return v6;
}

- (id)bezierPathWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  bottomRight = self->_cornerRadii.bottomRight;
  bottomLeft = self->_cornerRadii.bottomLeft;
  topLeft = self->_cornerRadii.topLeft;
  topRight = self->_cornerRadii.topRight;
  if ([(NSString *)self->_namedCornerStyle isEqualToString:@"circle-caps"])
  {
    v12 = height * 0.5;
    topRight = floorf(v12);
    topLeft = topRight;
    bottomRight = topRight;
    bottomLeft = topRight;
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v13 = topLeft + CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  [bezierPath moveToPoint:{v13, CGRectGetMinY(v26)}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v14 = CGRectGetMaxX(v27) - topRight;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [bezierPath addLineToPoint:{v14, CGRectGetMinY(v28)}];
  if (topRight > 0.00000011920929)
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v15 = CGRectGetMaxX(v29) - topRight;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    [bezierPath addArcWithCenter:1 radius:v15 startAngle:topRight + CGRectGetMinY(v30) endAngle:topRight clockwise:{4.71238898, 6.28318531}];
  }

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MaxX = CGRectGetMaxX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  [bezierPath addLineToPoint:{MaxX, CGRectGetMaxY(v32) - bottomRight}];
  if (bottomRight > 0.00000011920929)
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v17 = CGRectGetMaxX(v33) - bottomRight;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    [bezierPath addArcWithCenter:1 radius:v17 startAngle:CGRectGetMaxY(v34) - bottomRight endAngle:bottomRight clockwise:{0.0, 1.57079633}];
  }

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v18 = bottomLeft + CGRectGetMinX(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  [bezierPath addLineToPoint:{v18, CGRectGetMaxY(v36)}];
  if (bottomLeft > 0.00000011920929)
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v19 = bottomLeft + CGRectGetMinX(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    [bezierPath addArcWithCenter:1 radius:v19 startAngle:CGRectGetMaxY(v38) - bottomLeft endAngle:bottomLeft clockwise:{1.57079633, 3.14159265}];
  }

  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MinX = CGRectGetMinX(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  [bezierPath addLineToPoint:{MinX, topLeft + CGRectGetMinY(v40)}];
  if (topLeft != 0.0)
  {
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v21 = topLeft + CGRectGetMinX(v41);
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    [bezierPath addArcWithCenter:1 radius:v21 startAngle:topLeft + CGRectGetMinY(v42) endAngle:topLeft clockwise:{3.14159265, 4.71238898}];
  }

  return bezierPath;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(IKColor *)self->_borderColor copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_borderWidth;
  v8 = *&self->_contentInset.top;
  *(v5 + 40) = *&self->_contentInset.bottom;
  *(v5 + 24) = v8;
  v9 = *&self->_cornerRadii.bottomLeft;
  *(v5 + 72) = *&self->_cornerRadii.topLeft;
  *(v5 + 56) = v9;
  v10 = [(IKColor *)self->_fillColor copyWithZone:zone];
  v11 = *(v5 + 88);
  *(v5 + 88) = v10;

  v12 = [(NSString *)self->_namedCornerStyle copyWithZone:zone];
  v13 = *(v5 + 96);
  *(v5 + 96) = v12;

  return v5;
}

- (BOOL)_usesBackgroundWithAlpha:(id)alpha
{
  v7 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0.0;
  return [alpha getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4] && v4 < 1.0 && v4 != 0.0;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (IKCornerRadii)cornerRadii
{
  bottomLeft = self->_cornerRadii.bottomLeft;
  bottomRight = self->_cornerRadii.bottomRight;
  topLeft = self->_cornerRadii.topLeft;
  topRight = self->_cornerRadii.topRight;
  result.topRight = topRight;
  result.topLeft = topLeft;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  return result;
}

- (void)initWithElementStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIButtonBorderStyle initWithElementStyle:]";
}

@end