@interface SXComponentVisiblePercentageProvider
- (SXComponentVisiblePercentageProvider)initWithViewport:(id)a3;
- (double)visiblePercentageOfObject:(id)a3;
@end

@implementation SXComponentVisiblePercentageProvider

- (SXComponentVisiblePercentageProvider)initWithViewport:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXComponentVisiblePercentageProvider;
  v6 = [(SXComponentVisiblePercentageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewport, a3);
  }

  return v7;
}

- (double)visiblePercentageOfObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v4 absoluteFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(SXComponentVisiblePercentageProvider *)self viewport];
    [v14 dynamicBounds];
    v25.origin.x = v7;
    v25.origin.y = v9;
    v25.size.width = v11;
    v25.size.height = v13;
    v22 = CGRectIntersection(v21, v25);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;

    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v19 = CGRectGetHeight(v23);
    v24.origin.x = v7;
    v24.origin.y = v9;
    v24.size.width = v11;
    v24.size.height = v13;
    v5 = v19 / fmax(CGRectGetHeight(v24), 1.0);
  }

  return v5;
}

@end