@interface _UIKBRTFingerDetectionFingerFeedbackView
- (UILabel)fingerLabel;
- (_UIKBRTFingerDetectionFingerCircleView)fingerDot;
- (_UIKBRTFingerDetectionFingerFeedbackView)initWithFrame:(CGRect)frame;
- (void)centerOn:(CGPoint)on withRadius:(double)radius andIdentifier:(unint64_t)identifier;
- (void)layoutSubviews;
- (void)setNeedsDisplay;
- (void)setUnknownSeen:(BOOL)seen;
@end

@implementation _UIKBRTFingerDetectionFingerFeedbackView

- (_UIKBRTFingerDetectionFingerFeedbackView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIKBRTFingerDetectionFingerFeedbackView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (UILabel)fingerLabel
{
  fingerLabel = self->_fingerLabel;
  if (!fingerLabel)
  {
    v4 = [UILabel alloc];
    v5 = [(UILabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_fingerLabel;
    self->_fingerLabel = v5;

    v7 = [UIColor colorWithWhite:1.0 alpha:0.6];
    [(UIView *)self->_fingerLabel setBackgroundColor:v7];

    [(UIView *)self addSubview:self->_fingerLabel];
    fingerLabel = self->_fingerLabel;
  }

  return fingerLabel;
}

- (_UIKBRTFingerDetectionFingerCircleView)fingerDot
{
  fingerDot = self->_fingerDot;
  if (!fingerDot)
  {
    v4 = [_UIKBRTFingerDetectionFingerCircleView alloc];
    v5 = [(_UIKBRTFingerDetectionFingerCircleView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_fingerDot;
    self->_fingerDot = v5;

    v7 = +[UIColor purpleColor];
    [(UIView *)self->_fingerDot setBackgroundColor:v7];

    [(UIView *)self addSubview:self->_fingerDot];
    fingerDot = self->_fingerDot;
  }

  return fingerDot;
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  fingerLabel = [(_UIKBRTFingerDetectionFingerFeedbackView *)self fingerLabel];
  [fingerLabel frame];
  v13 = v12;

  v14 = (v8 - v13) * 0.5;
  v15 = floorf(v14);
  fingerLabel2 = [(_UIKBRTFingerDetectionFingerFeedbackView *)self fingerLabel];
  [fingerLabel2 intrinsicContentSize];
  *&v17 = v17;
  v18 = ceilf(*&v17);
  *&v17 = v19;
  v20 = ceilf(*&v17);

  fingerLabel3 = [(_UIKBRTFingerDetectionFingerFeedbackView *)self fingerLabel];
  [fingerLabel3 setFrame:{v15, 0.0, v18, v20}];

  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  MidX = CGRectGetMidX(v29);
  [(_UIKBRTFingerDetectionFingerFeedbackView *)self radius];
  v24 = MidX - v23;
  [(_UIKBRTFingerDetectionFingerFeedbackView *)self radius];
  v26 = v25 + v25;
  fingerDot = [(_UIKBRTFingerDetectionFingerFeedbackView *)self fingerDot];
  [fingerDot setFrame:{v24, v20 + 0.0, v26, v26}];
}

- (void)centerOn:(CGPoint)on withRadius:(double)radius andIdentifier:(unint64_t)identifier
{
  y = on.y;
  x = on.x;
  if (qword_1ED499CB0 != -1)
  {
    dispatch_once(&qword_1ED499CB0, &__block_literal_global_294_0);
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = qword_1ED499CA8;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identifier];
  v13 = [v11 objectForKey:v12];
  v32 = [v10 stringWithFormat:@" %@ ", v13];

  p_framelocation = &self->_framelocation;
  v15 = x == self->_framelocation.x && y == self->_framelocation.y;
  if (!v15 || self->_radiusInt != radius || (-[_UIKBRTFingerDetectionFingerFeedbackView fingerLabel](self, "fingerLabel"), v16 = objc_claimAutoreleasedReturnValue(), [v16 text], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", v32), v17, v16, (v18 & 1) == 0))
  {
    p_framelocation->x = x;
    self->_framelocation.y = y;
    self->_radiusInt = radius;
    fingerLabel = [(_UIKBRTFingerDetectionFingerFeedbackView *)self fingerLabel];
    [fingerLabel setText:v32];

    fingerLabel2 = [(_UIKBRTFingerDetectionFingerFeedbackView *)self fingerLabel];
    [fingerLabel2 intrinsicContentSize];
    *&v21 = v21;
    v22 = ceilf(*&v21);
    *&v21 = v23;
    v24 = ceilf(*&v21);

    [(_UIKBRTFingerDetectionFingerFeedbackView *)self radius];
    v26 = v25 + 1.0;
    v27 = (v22 + 1.0) * 0.5;
    v28 = floorf(v27);
    if (v26 >= v28)
    {
      v29 = v26;
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    v31 = ceilf(v30);
    [(UIView *)self setFrame:p_framelocation->x - v31, self->_framelocation.y - v31 - v24, v31 + v31, v31 + v31 + v24];
    [(UIView *)self setNeedsLayout];
    [(_UIKBRTFingerDetectionFingerFeedbackView *)self setNeedsDisplay];
  }
}

- (void)setUnknownSeen:(BOOL)seen
{
  if (self->_unknownSeen != seen)
  {
    v12 = v4;
    v13 = v3;
    self->_unknownSeen = seen;
    if (seen)
    {
      +[UIColor redColor];
    }

    else
    {
      +[UIColor purpleColor];
    }
    v10 = ;
    v11 = [(_UIKBRTFingerDetectionFingerFeedbackView *)self fingerDot:v6];
    [v11 setBackgroundColor:v10];

    [(_UIKBRTFingerDetectionFingerFeedbackView *)self setNeedsDisplay];
  }
}

- (void)setNeedsDisplay
{
  v4.receiver = self;
  v4.super_class = _UIKBRTFingerDetectionFingerFeedbackView;
  [(UIView *)&v4 setNeedsDisplay];
  fingerDot = [(_UIKBRTFingerDetectionFingerFeedbackView *)self fingerDot];
  [fingerDot setNeedsDisplay];
}

@end