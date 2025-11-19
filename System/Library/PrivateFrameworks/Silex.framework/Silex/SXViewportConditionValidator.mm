@interface SXViewportConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXViewportConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 viewportSize];
  v8 = v7;
  v10 = v9;
  [v6 contentScaleFactor];
  v12 = 1.0 / v11;
  [v6 contentScaleFactor];
  v14 = v13;

  CGAffineTransformMakeScale(&v29, v12, 1.0 / v14);
  v15 = round(v10 * v29.c + v29.a * v8);
  v16 = 1;
  if (v15 > 0.0)
  {
    v17 = round(v10 * v29.d + v29.b * v8);
    if (v17 > 0.0)
    {
      if (([v5 minViewportWidth], v18 < 0.0) || (objc_msgSend(v5, "minViewportWidth"), v20 > 0.0) && (objc_msgSend(v5, "minViewportWidth"), v21 > v15) || (objc_msgSend(v5, "maxViewportWidth"), v22 != 1.79769313e308) && (objc_msgSend(v5, "maxViewportWidth"), v23 < v15) || (v24 = v15 / v17, objc_msgSend(v5, "minViewportAspectRatio"), v25 > 0.0) && (objc_msgSend(v5, "minViewportAspectRatio"), v26 > v24) || (objc_msgSend(v5, "maxViewportAspectRatio"), v27 != 1.79769313e308) && (objc_msgSend(v5, "maxViewportAspectRatio"), v28 < v24))
      {
        v16 = 0;
      }
    }
  }

  return v16;
}

@end