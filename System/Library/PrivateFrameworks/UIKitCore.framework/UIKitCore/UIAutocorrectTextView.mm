@interface UIAutocorrectTextView
- (BOOL)pointInside:(CGPoint)inside forEvent:(__GSEvent *)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_calculateRectForExpandedHitRegion;
- (UIAutocorrectTextView)initWithFrame:(CGRect)frame string:(id)string type:(int)type edgeType:(int)edgeType;
- (void)drawRect:(CGRect)rect;
- (void)setEdgeType:(int)type;
@end

@implementation UIAutocorrectTextView

- (UIAutocorrectTextView)initWithFrame:(CGRect)frame string:(id)string type:(int)type edgeType:(int)edgeType
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stringCopy = string;
  if (stringCopy)
  {
    if (edgeType)
    {
      inlinePromptTextFont();
    }

    else
    {
      textFont();
    }
    v14 = ;
  }

  else
  {
    v14 = 0;
  }

  if (type == 2)
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectInset(v25, -3.0, 0.0);
    v15 = v26.origin.y + -1.5;
    v16 = v26.size.width + -1.0;
    v17 = 1.0;
LABEL_16:
    v26.size.height = v26.size.height + v17;
    goto LABEL_17;
  }

  [stringCopy _legacy_sizeWithFont:v14 forWidth:2 lineBreakMode:3.40282347e38];
  v27.size.width = ceil(v18);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.height = height;
  v26 = CGRectInset(v27, -3.0, 0.0);
  if (type < 2)
  {
    v17 = 4.0;
    goto LABEL_16;
  }

  if (type == 3)
  {
    v17 = -1.0;
    goto LABEL_16;
  }

  if (type == 4)
  {
    v26.size.height = v26.size.height + -1.0;
  }

LABEL_17:
  if ((edgeType - 1) < 2)
  {
    v16 = v16 + v26.size.height * 0.68;
  }

  v28 = CGRectIntegral(v26);
  v24.receiver = self;
  v24.super_class = UIAutocorrectTextView;
  v19 = [(UIView *)&v24 initWithFrame:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
  v20 = v19;
  if (v19)
  {
    v19->m_edgeType = edgeType;
    v21 = [stringCopy copy];
    m_string = v20->m_string;
    v20->m_string = v21;

    v20->m_type = type;
    objc_storeStrong(&v20->m_textFont, v14);
    [(UIView *)v20 setOpaque:0];
    [(UIView *)v20 setUserInteractionEnabled:0];
  }

  return v20;
}

- (void)setEdgeType:(int)type
{
  if (self->m_edgeType != type)
  {
    [(UIView *)self frame];
    self->m_edgeType = type;
    [(UIView *)self setFrame:?];

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  [(UIView *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = 0;
  m_type = self->m_type;
  if (m_type > 2)
  {
    if (m_type == 3)
    {
      v16 = autocorrectTextBackgroundColor();
    }

    else
    {
      v14 = 0;
      v72 = 0;
      if (m_type != 4)
      {
        goto LABEL_61;
      }

      v16 = documentBackgroundColor();
    }

    v73 = v16;
    v15 = 1;
    v14 = typedTextColor();
    v17 = v73;
    v12 = 0;
  }

  else
  {
    if (m_type >= 2)
    {
      v14 = 0;
      v72 = 0;
      if (m_type != 2)
      {
        goto LABEL_61;
      }

      v71 = TypedTextBackgroundColor();
      v12 = TypedTextBackgroundColor();
      v15 = 0;
      v14 = 0;
    }

    else
    {
      v71 = autocorrectTextBackgroundColor();
      v14 = AutocorrectTextColor();
      v15 = 1;
      v12 = AutocorrectTextOutlineColor();
    }

    v17 = v71;
    if (v12 && !self->m_animating)
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
      v20 = v19;

      v21 = 0.5;
      if (v20 <= 1.0)
      {
        v21 = 0.0;
      }

      v69 = v21;
      v70 = v5;
      if (v20 <= 1.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 0.75;
      }

      v75.origin.x = v5;
      v75.origin.y = v7;
      v75.size.width = v9;
      v75.size.height = v11;
      v76 = CGRectInset(v75, v22, v22);
      x = v76.origin.x;
      y = v76.origin.y;
      width = v76.size.width;
      height = v76.size.height;
      [v12 set];
      m_edgeType = self->m_edgeType;
      if (m_edgeType == 2)
      {
        v29 = x;
        v30 = y;
        v31 = width;
        v32 = height;
        v33 = 2;
      }

      else
      {
        if (m_edgeType != 1)
        {
          if (m_edgeType)
          {
            v17 = v71;
            v5 = v70;
            goto LABEL_30;
          }

          v28 = [UIBezierPath roundedRectBezierPath:-1 withRoundedCorners:x withCornerRadius:y, width, height, 0.0];
          goto LABEL_25;
        }

        v29 = x;
        v30 = y;
        v31 = width;
        v32 = height;
        v33 = 8;
      }

      v28 = [UIBezierPath roundedRectBezierPath:v33 withRoundedEdges:v29, v30, v31, v32];
LABEL_25:
      v34 = v28;
      [v28 setLineWidth:v69];
      if (v20 <= 1.0)
      {
        [v34 fill];
      }

      else
      {
        [v34 stroke];
      }

      v5 = v70;

      v17 = v71;
    }
  }

LABEL_30:
  v72 = v17;
  if (!v17)
  {
    goto LABEL_38;
  }

  v77.origin.x = v5;
  v77.origin.y = v7;
  v77.size.width = v9;
  v77.size.height = v11;
  v78 = CGRectInset(v77, 1.0, 1.0);
  v35 = v78.origin.x;
  v36 = v78.origin.y;
  v37 = v78.size.width;
  v38 = v78.size.height;
  [v72 set];
  v39 = self->m_edgeType;
  switch(v39)
  {
    case 2:
      v40 = v35;
      v41 = v36;
      v42 = v37;
      v43 = v38;
      v44 = 2;
      goto LABEL_37;
    case 1:
      v40 = v35;
      v41 = v36;
      v42 = v37;
      v43 = v38;
      v44 = 8;
LABEL_37:
      v45 = [UIBezierPath roundedRectBezierPath:v44 withRoundedEdges:v40, v41, v42, v43];
      [v45 fill];

      break;
    case 0:
      UIRectFillUsingOperation(1, v35, v36, v37, v38);
      break;
  }

LABEL_38:
  if (v14)
  {
    [v14 set];
    v46 = self->m_type;
    if (v46 == 1)
    {
      v47 = 2.0;
    }

    else
    {
      v47 = 3.0;
      if (v46 != 2)
      {
        v47 = (2 * (v46 == 3));
      }
    }

    v48 = v47 + v15;
    v49 = v11 * 0.68 + 3.0;
    if (self->m_edgeType != 2)
    {
      v49 = 3.0;
    }

    if (self->m_isLongString)
    {
      v50 = v9 - v11;
      m_textFont = self->m_textFont;
      v52 = 4;
    }

    else
    {
      m_textFont = self->m_textFont;
      v50 = 3.40282347e38;
      v52 = 2;
    }

    [(NSString *)self->m_string _legacy_drawAtPoint:m_textFont forWidth:v52 withFont:v49 lineBreakMode:v48, v50];
  }

  if (self->m_type == 1)
  {
    v53 = v11 * 0.5;
    mainScreen2 = [objc_opt_self() mainScreen];
    [mainScreen2 scale];
    v56 = v55;

    v57 = AutoCorrectCancelImage();
    [v57 size];
    v59 = v58;
    v61 = v60;
    v62 = +[UIColor systemGrayColor];
    v63 = v62;
    v64 = self->m_edgeType;
    if (v64 == 2)
    {
      if (v56 <= 1.0)
      {
        v66 = 0.65;
      }

      else
      {
        v66 = dbl_18A67E670[v11 < 22.0];
      }

      v68 = v53 + v59 * -0.5 + -2.0 + 1.0;
    }

    else
    {
      if (v64 != 1)
      {
LABEL_60:

        goto LABEL_61;
      }

      v65 = v5 + v9;
      v66 = 1.0;
      v67 = 0.0;
      if (v56 > 1.0)
      {
        v67 = 0.5;
      }

      v68 = v67 + v65 - v53 - v59 * 0.5 + -1.0;
      [v62 set];
    }

    [v57 drawAtPoint:0 blendMode:v68 alpha:{v53 + v61 * -0.5 + 0.0, v66}];
    goto LABEL_60;
  }

LABEL_61:
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
  [(UIAutocorrectTextView *)self _calculateRectForExpandedHitRegion:inside.x];
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
  [(UIAutocorrectTextView *)self _calculateRectForExpandedHitRegion];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

@end