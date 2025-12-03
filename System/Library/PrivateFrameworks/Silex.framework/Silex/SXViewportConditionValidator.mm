@interface SXViewportConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXViewportConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  contextCopy = context;
  [contextCopy viewportSize];
  v8 = v7;
  v10 = v9;
  [contextCopy contentScaleFactor];
  v12 = 1.0 / v11;
  [contextCopy contentScaleFactor];
  v14 = v13;

  CGAffineTransformMakeScale(&v29, v12, 1.0 / v14);
  v15 = round(v10 * v29.c + v29.a * v8);
  v16 = 1;
  if (v15 > 0.0)
  {
    v17 = round(v10 * v29.d + v29.b * v8);
    if (v17 > 0.0)
    {
      if (([conditionCopy minViewportWidth], v18 < 0.0) || (objc_msgSend(conditionCopy, "minViewportWidth"), v20 > 0.0) && (objc_msgSend(conditionCopy, "minViewportWidth"), v21 > v15) || (objc_msgSend(conditionCopy, "maxViewportWidth"), v22 != 1.79769313e308) && (objc_msgSend(conditionCopy, "maxViewportWidth"), v23 < v15) || (v24 = v15 / v17, objc_msgSend(conditionCopy, "minViewportAspectRatio"), v25 > 0.0) && (objc_msgSend(conditionCopy, "minViewportAspectRatio"), v26 > v24) || (objc_msgSend(conditionCopy, "maxViewportAspectRatio"), v27 != 1.79769313e308) && (objc_msgSend(conditionCopy, "maxViewportAspectRatio"), v28 < v24))
      {
        v16 = 0;
      }
    }
  }

  return v16;
}

@end