@interface UITextCompletionView
- (BOOL)pointInside:(CGPoint)inside forEvent:(__GSEvent *)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_calculateRectForExpandedHitRegion;
- (UITextCompletionView)initWithFrame:(CGRect)frame string:(id)string type:(int)type edgeType:(int)edgeType;
- (void)drawRect:(CGRect)rect;
@end

@implementation UITextCompletionView

- (UITextCompletionView)initWithFrame:(CGRect)frame string:(id)string type:(int)type edgeType:(int)edgeType
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stringCopy = string;
  if (stringCopy)
  {
    v14 = _documentTextFont();
  }

  else
  {
    v14 = 0;
  }

  [stringCopy _legacy_sizeWithFont:v14 forWidth:2 lineBreakMode:3.40282347e38];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, 0.0, 0.0);
  if ((edgeType - 1) < 2)
  {
    v22.size.width = v22.size.width + v22.size.height * 0.68;
  }

  v23 = CGRectIntegral(v22);
  v20.receiver = self;
  v20.super_class = UITextCompletionView;
  v15 = [(UIView *)&v20 initWithFrame:v23.origin.x, v23.origin.y, v23.size.width, v23.size.height];
  v16 = v15;
  if (v15)
  {
    v15->_edgeType = edgeType;
    v17 = [stringCopy copy];
    string = v16->_string;
    v16->_string = v17;

    v16->_type = type;
    objc_storeStrong(&v16->_textFont, v14);
    [(UIView *)v16 setOpaque:0];
    [(UIView *)v16 setUserInteractionEnabled:0];
  }

  return v16;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  [(UIView *)self bounds:rect.origin.x];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = 0;
  type = self->_type;
  if (type > 8)
  {
    if (type == 9)
    {
      v21 = +[UIColor systemBackgroundColor];
      v45 = [v21 colorWithAlphaComponent:1.0];

      v19 = v45;
    }

    else
    {
      if (type != 10)
      {
        goto LABEL_43;
      }

      v19 = +[UIColor systemBlueColor];
    }

    v20 = 0;
  }

  else
  {
    if (type == 2)
    {
      v44 = _typedTextBackgroundColor();
      v18 = +[UIColor systemBlackColor];
    }

    else
    {
      if (type != 8)
      {
        goto LABEL_43;
      }

      v44 = _typedTextBackgroundColor();
      v15 = _textCompletionTextColor_color;
      if (!_textCompletionTextColor_color)
      {
        v16 = +[UIColor systemGrayColor];
        v17 = _textCompletionTextColor_color;
        _textCompletionTextColor_color = v16;

        v15 = _textCompletionTextColor_color;
      }

      v18 = v15;
    }

    v20 = v18;
    v19 = v44;
  }

  v46 = v19;
  if (!v19)
  {
    goto LABEL_22;
  }

  v48.origin.x = v6;
  v48.origin.y = v8;
  v48.size.width = v10;
  v48.size.height = v12;
  v49 = CGRectInset(v48, 1.0, 1.0);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  v25 = v49.size.height;
  [v46 set];
  edgeType = self->_edgeType;
  if (edgeType <= 1)
  {
    if (edgeType)
    {
      if (edgeType == 1)
      {
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = v25;
        v27 = CGRectGetHeight(v50) * 0.5;
        v51.origin.x = x;
        v51.origin.y = y;
        v51.size.width = width;
        v51.size.height = v25;
        v28 = CGRectGetWidth(v51) * 0.5;
        v29 = x;
        v30 = y;
        v31 = width;
        v32 = v25;
        v33 = 10;
        goto LABEL_47;
      }

      goto LABEL_22;
    }

LABEL_21:
    UIRectFillUsingOperation(1, x, y, width, v25);
    goto LABEL_22;
  }

  if (edgeType == 2)
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = v25;
    v27 = CGRectGetHeight(v52) * 0.5;
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = v25;
    v28 = CGRectGetWidth(v53) * 0.5;
    v29 = x;
    v30 = y;
    v31 = width;
    v32 = v25;
    v33 = 5;
LABEL_47:
    v43 = [UIBezierPath bezierPathWithRoundedRect:v33 byRoundingCorners:v29 cornerRadii:v30, v31, v32, v27, v28];
    [v43 fill];

    if (!v20)
    {
      goto LABEL_42;
    }

LABEL_23:
    [v20 set];
    string = self->_string;
    if (string && [(NSString *)string length])
    {
      [(NSString *)self->_string _legacy_sizeWithFont:self->_textFont forWidth:2 lineBreakMode:3.40282347e38];
      v36 = v35;
    }

    else
    {
      [@" " _legacy_sizeWithFont:self->_textFont forWidth:2 lineBreakMode:3.40282347e38];
      v36 = v37;
    }

    if (+[UIKeyboard isInputSystemUI])
    {
      v38 = +[UIKeyboard keyboardApplicationIdentifier];
    }

    else
    {
      v38 = 0;
    }

    v39 = height - v36;
    if ([v38 isEqualToString:@"com.apple.mobilemail"])
    {
      if (v39 < 1.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v39 + -1.0;
      }
    }

    else if (([v38 isEqualToString:@"com.apple.MobileSMS"] & 1) == 0)
    {
      v40 = [v38 isEqualToString:@"com.apple.mobilenotes"];
      v41 = 1.0;
      if (v39 < 1.0)
      {
        v41 = 0.0;
      }

      if (v40)
      {
        v39 = v41;
      }
    }

    v42 = 0.0;
    if (self->_edgeType == 2)
    {
      v42 = v12 * 0.68 + 0.0;
    }

    [(NSString *)self->_string _legacy_drawAtPoint:self->_textFont forWidth:2 withFont:v42 lineBreakMode:v39 + 0.0, 3.40282347e38];

    goto LABEL_42;
  }

  if (edgeType == 3)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_42:
  v13 = v46;
LABEL_43:
}

- (CGRect)_calculateRectForExpandedHitRegion
{
  [(UIView *)self bounds];
  v21 = CGRectInset(v20, -15.0, -30.0);
  x = v21.origin.x;
  y = v21.origin.y;
  height = v21.size.height;
  v6 = v21.size.width + 5.0;
  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = x;
  v16 = y;
  v17 = v6;
  v18 = height;

  return CGRectUnion(*&v15, *&v8);
}

- (BOOL)pointInside:(CGPoint)inside forEvent:(__GSEvent *)event
{
  [(UITextCompletionView *)self _calculateRectForExpandedHitRegion:inside.x];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  GSEventGetLocationInWindow();
  [(UIView *)self convertPoint:GSEventGetWindow() fromView:v13, v14];
  v16 = v15;
  v18 = v17;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  v22 = v12;

  return CGRectContainsPoint(*&v19, *&v16);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(UITextCompletionView *)self _calculateRectForExpandedHitRegion];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

@end