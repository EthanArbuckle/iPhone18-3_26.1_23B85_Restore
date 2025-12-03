@interface UIAutocorrectShadowView
- (void)drawRect:(CGRect)rect;
- (void)setEdgeType:(int)type;
@end

@implementation UIAutocorrectShadowView

- (void)setEdgeType:(int)type
{
  if (self->m_edgeType != type)
  {
    self->m_edgeType = type;
    [(UIView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  m_edgeType = self->m_edgeType;
  if (m_edgeType == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 8 * (m_edgeType == 1);
  }

  [(UIView *)self bounds:rect.origin.x];
  v26 = CGRectInset(v25, 8.0, 8.0);
  v27 = CGRectIntegral(v26);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  if (!_MergedGlobals_23_2)
  {
    v9 = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.06];
    v10 = _MergedGlobals_23_2;
    _MergedGlobals_23_2 = v9;
  }

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v29 = CGRectInset(v28, 1.0, 1.0);
  v11 = [UIBezierPath shadowBezierPath:v4 withRoundedEdges:v29.origin.x, v29.origin.y + 1.0, v29.size.width, v29.size.height + 1.0];
  [_MergedGlobals_23_2 set];
  [v11 fill];

  if (!qword_1ED49AF98)
  {
    v12 = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.05];
    v13 = qword_1ED49AF98;
    qword_1ED49AF98 = v12;
  }

  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v31 = CGRectInset(v30, 0.0, 1.0);
  v14 = [UIBezierPath shadowBezierPath:v4 withRoundedEdges:v31.origin.x, v31.origin.y + 1.0, v31.size.width, v31.size.height + 2.0];
  [qword_1ED49AF98 set];
  [v14 fill];

  if (!qword_1ED49AFA0)
  {
    v15 = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.05];
    v16 = qword_1ED49AFA0;
    qword_1ED49AFA0 = v15;
  }

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v33 = CGRectInset(v32, -1.0, 1.0);
  v17 = [UIBezierPath shadowBezierPath:v4 withRoundedEdges:v33.origin.x, v33.origin.y + 1.0, v33.size.width, v33.size.height + 3.0];
  [qword_1ED49AFA0 set];
  [v17 fill];

  if (!qword_1ED49AFA8)
  {
    v18 = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.04];
    v19 = qword_1ED49AFA8;
    qword_1ED49AFA8 = v18;
  }

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectInset(v34, -2.0, -1.0);
  v20 = [UIBezierPath shadowBezierPath:v4 withRoundedEdges:v35.origin.x, v35.origin.y, v35.size.width, v35.size.height + 4.0];
  [qword_1ED49AFA8 set];
  [v20 fill];

  if (!qword_1ED49AFB0)
  {
    v21 = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.02];
    v22 = qword_1ED49AFB0;
    qword_1ED49AFB0 = v21;
  }

  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v37 = CGRectInset(v36, -3.0, -2.0);
  v23 = [UIBezierPath shadowBezierPath:v4 withRoundedEdges:v37.origin.x, v37.origin.y + 0.0, v37.size.width, v37.size.height + 5.0];
  [qword_1ED49AFB0 set];
  [v23 fill];
}

@end