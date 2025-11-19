@interface _TVNeedsMoreContentEvaluator
- (_TVNeedsMoreContentEvaluator)initWithScrollView:(id)a3 axis:(int64_t)a4;
- (void)evaluateForState:(int64_t)a3;
- (void)setViewElement:(id)a3;
@end

@implementation _TVNeedsMoreContentEvaluator

- (_TVNeedsMoreContentEvaluator)initWithScrollView:(id)a3 axis:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _TVNeedsMoreContentEvaluator;
  v8 = [(_TVNeedsMoreContentEvaluator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scrollView, a3);
    v9->_axis = a4;
  }

  return v9;
}

- (void)setViewElement:(id)a3
{
  objc_storeStrong(&self->_viewElement, a3);
  v4 = [(_TVNeedsMoreContentEvaluator *)self viewElement];
  v5 = [v4 attributes];
  v7 = [v5 objectForKeyedSubscript:@"needsMoreThreshold"];

  [v7 doubleValue];
  [(_TVNeedsMoreContentEvaluator *)self setThreshold:fmax(v6, 1.0)];
}

- (void)evaluateForState:(int64_t)a3
{
  v5 = [(_TVNeedsMoreContentEvaluator *)self scrollView];
  v42 = [v5 window];

  if (v42)
  {
    v6 = [(_TVNeedsMoreContentEvaluator *)self viewElement];

    if (v6)
    {
      v7 = [(_TVNeedsMoreContentEvaluator *)self state];
      if (a3 == 1 && !v7)
      {
        [(_TVNeedsMoreContentEvaluator *)self setState:1];
        goto LABEL_6;
      }

      v8 = [(_TVNeedsMoreContentEvaluator *)self state];
      if (a3 == 2 && v8 == 1)
      {
        [v42 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [(_TVNeedsMoreContentEvaluator *)self scrollView];
        [v42 convertRect:v17 toView:{v10, v12, v14, v16}];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v26 = [(_TVNeedsMoreContentEvaluator *)self scrollView];
        [v26 contentSize];
        v28 = v27;
        v30 = v29;

        v31 = [(_TVNeedsMoreContentEvaluator *)self axis];
        v32 = v19;
        v33 = v21;
        v34 = v23;
        v35 = v25;
        if (v31 == 1)
        {
          v36 = v28 - CGRectGetMaxX(*&v32);
          [(_TVNeedsMoreContentEvaluator *)self threshold];
          if (v36 > v14 * v37)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v38 = v30 - CGRectGetMaxY(*&v32);
          [(_TVNeedsMoreContentEvaluator *)self threshold];
          if (v38 > v16 * v39)
          {
            goto LABEL_6;
          }
        }

        [(_TVNeedsMoreContentEvaluator *)self setState:2];
        v40 = [(_TVNeedsMoreContentEvaluator *)self viewElement];
        v41 = [(_TVNeedsMoreContentEvaluator *)self scrollView];
        [v40 tv_dispatchEvent:@"needsmore" canBubble:0 isCancelable:0 extraInfo:0 targetResponder:v41 completionBlock:0];
      }
    }
  }

LABEL_6:
}

@end