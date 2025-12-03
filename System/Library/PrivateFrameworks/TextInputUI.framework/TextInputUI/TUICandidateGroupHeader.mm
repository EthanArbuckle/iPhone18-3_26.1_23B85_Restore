@interface TUICandidateGroupHeader
- (CGRect)virtualLabelContainerFrame;
- (CGRect)visibleBounds;
- (TUICandidateGroupHeader)initWithCoder:(id)coder;
- (TUICandidateGroupHeader)initWithFrame:(CGRect)frame;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setAlignment:(int64_t)alignment;
- (void)setStyle:(id)style;
- (void)setText:(id)text;
- (void)setVirtualLabelContainerFrame:(CGRect)frame;
- (void)setVisibleBounds:(CGRect)bounds;
- (void)updateGroupHeaderLabelPosition;
@end

@implementation TUICandidateGroupHeader

- (CGRect)virtualLabelContainerFrame
{
  x = self->_virtualLabelContainerFrame.origin.x;
  y = self->_virtualLabelContainerFrame.origin.y;
  width = self->_virtualLabelContainerFrame.size.width;
  height = self->_virtualLabelContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setVirtualLabelContainerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_virtualLabelContainerFrame = frame;
  style = [(TUICandidateGroupHeader *)self style];
  [style extraCellPadding];
  v9 = x + v8;
  v11 = y + v10;
  v13 = width - (v8 + v12);
  v15 = height - (v10 + v14);
  if (objc_opt_respondsToSelector())
  {
    [style groupHeaderPadding];
    v9 = v9 + v16;
    v11 = v11 + v17;
    v13 = v13 - (v16 + v18);
    v15 = v15 - (v17 + v19);
  }

  textLabel = [(TUICandidateGroupHeader *)self textLabel];
  [textLabel setFrame:{v9, v11, v13, v15}];
}

- (void)updateGroupHeaderLabelPosition
{
  [(TUICandidateGroupHeader *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TUICandidateGroupHeader *)self visibleBounds];
  v34.origin.x = v11;
  v34.origin.y = v12;
  v34.size.width = v13;
  v34.size.height = v14;
  [(TUICandidateGroupHeader *)self virtualLabelContainerFrame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  style = [(TUICandidateGroupHeader *)self style];
  layoutOrientation = [style layoutOrientation];

  [(TUICandidateGroupHeader *)self rowHeight];
  if (layoutOrientation == 1)
  {
    v16 = (v25 - v20) * 0.5;
    v36.origin.x = v4;
    v36.origin.y = v6;
    v36.size.width = v8;
    v36.size.height = v10;
    v26 = CGRectGetMaxX(v36) - v16 - v20;
    if (CGRectIsEmpty(v34) || (v37.origin.x = v26, v37.origin.y = v18, v37.size.width = v20, v37.size.height = v22, MinX = CGRectGetMinX(v37), v28 = CGRectGetMaxX(v34) - v16, v38.origin.x = v26, v38.origin.y = v18, v38.size.width = v20, v38.size.height = v22, v28 - CGRectGetWidth(v38) >= MinX) || (v29 = CGRectGetMaxX(v34) - v16, v39.origin.x = v26, v39.origin.y = v18, v39.size.width = v20, v39.size.height = v22, v26 = v29 - CGRectGetWidth(v39), v40.origin.x = v26, v40.origin.y = v18, v40.size.width = v20, v40.size.height = v22, CGRectGetMinX(v40) >= v16))
    {
      v16 = v26;
    }
  }

  else
  {
    v18 = (v25 - v22) * 0.5;
    if (!CGRectIsEmpty(v34))
    {
      v41.origin.x = v16;
      v41.origin.y = v18;
      v41.size.width = v20;
      v41.size.height = v22;
      MinY = CGRectGetMinY(v41);
      v42.origin.x = v4;
      v42.origin.y = v6;
      v42.size.width = v8;
      v42.size.height = v10;
      MaxY = CGRectGetMaxY(v42);
      v43.origin.x = v4;
      v43.origin.y = v6;
      v43.size.width = v8;
      v43.size.height = v10;
      v30 = CGRectGetMinY(v43);
      if (v18 + CGRectGetMinY(v34) > MinY)
      {
        v31 = MaxY - (MinY - v30);
        v18 = v18 + CGRectGetMinY(v34);
        v44.origin.x = v16;
        v44.origin.y = v18;
        v44.size.width = v20;
        v44.size.height = v22;
        if (CGRectGetMaxY(v44) > v31)
        {
          v45.origin.x = v16;
          v45.origin.y = v18;
          v45.size.width = v20;
          v45.size.height = v22;
          v18 = v31 - CGRectGetHeight(v45);
        }
      }
    }
  }

  [(TUICandidateGroupHeader *)self virtualLabelContainerFrame];
  v47.origin.x = v16;
  v47.origin.y = v18;
  v47.size.width = v20;
  v47.size.height = v22;
  if (!CGRectEqualToRect(v46, v47))
  {

    [(TUICandidateGroupHeader *)self setVirtualLabelContainerFrame:v16, v18, v20, v22];
  }
}

- (void)setVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  p_visibleBounds = &self->_visibleBounds;
  if (!CGRectEqualToRect(self->_visibleBounds, bounds))
  {
    p_visibleBounds->origin.x = x;
    p_visibleBounds->origin.y = y;
    p_visibleBounds->size.width = width;
    p_visibleBounds->size.height = height;

    [(TUICandidateGroupHeader *)self updateGroupHeaderLabelPosition];
  }
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (([(TUICandidateViewStyle *)self->_style isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_style, style);
    [styleCopy rowHeight];
    self->_rowHeight = v5;
    candidateFont = [styleCopy candidateFont];
    textLabel = [(TUICandidateGroupHeader *)self textLabel];
    [textLabel setFont:candidateFont];

    textColor = [styleCopy textColor];
    textLabel2 = [(TUICandidateGroupHeader *)self textLabel];
    [textLabel2 setTextColor:textColor];

    groupHeaderBackgroundColor = [styleCopy groupHeaderBackgroundColor];
    [(TUICandidateGroupHeader *)self setBackgroundColor:groupHeaderBackgroundColor];

    v11 = [styleCopy layoutOrientation] == 1;
    textLabel3 = [(TUICandidateGroupHeader *)self textLabel];
    [textLabel3 setTextAlignment:v11];
  }
}

- (void)setAlignment:(int64_t)alignment
{
  if (self->_alignment != alignment)
  {
    textLabel = [(TUICandidateGroupHeader *)self textLabel];
    [textLabel setTextAlignment:alignment];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [textCopy copy];
    text = self->_text;
    self->_text = v4;

    v6 = self->_text;
    textLabel = [(TUICandidateGroupHeader *)self textLabel];
    [textLabel setText:v6];
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = TUICandidateGroupHeader;
  [(TUICandidateGroupHeader *)&v26 layoutSubviews];
  [(TUICandidateGroupHeader *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  style = [(TUICandidateGroupHeader *)self style];
  layoutOrientation = [style layoutOrientation];

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  if (layoutOrientation == 1)
  {
    v27 = CGRectInset(*&v13, 0.0, 10.0);
    x = v27.origin.x;
    y = v27.origin.y;
    height = v27.size.height;
    [(TUICandidateGroupHeader *)self rowHeight];
    v21 = v20;
    [(TUICandidateGroupHeader *)self bounds];
    Width = CGRectGetWidth(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = v21;
    v29.size.height = height;
    v23 = Width - CGRectGetMinX(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = v21;
    v30.size.height = height;
    v24 = v23 - CGRectGetWidth(v30);
  }

  else
  {
    v31 = CGRectInset(*&v13, 10.0, 0.0);
    v24 = v31.origin.x;
    y = v31.origin.y;
    v21 = v31.size.width;
    [(TUICandidateGroupHeader *)self rowHeight];
    height = v25;
  }

  [(TUICandidateGroupHeader *)self setVirtualLabelContainerFrame:v24, y, v21, height];
}

- (TUICandidateGroupHeader)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUICandidateGroupHeader;
  v3 = [(TUICandidateGroupHeader *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateGroupHeader *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateGroupHeader)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUICandidateGroupHeader;
  v3 = [(TUICandidateGroupHeader *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateGroupHeader *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  self->_alignment = 0;
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  [(TUICandidateGroupHeader *)self bounds];
  v4 = [v3 initWithFrame:?];
  textLabel = self->_textLabel;
  self->_textLabel = v4;

  [(UILabel *)self->_textLabel setLineBreakMode:4];
  [(UILabel *)self->_textLabel setBaselineAdjustment:1];
  [(UILabel *)self->_textLabel setTextAlignment:0];
  self->_rowHeight = 41.0;
  v6 = self->_textLabel;

  [(TUICandidateGroupHeader *)self addSubview:v6];
}

@end