@interface _TVNeedsMoreContentEvaluator
- (_TVNeedsMoreContentEvaluator)initWithScrollView:(id)view axis:(int64_t)axis;
- (void)evaluateForState:(int64_t)state;
- (void)setViewElement:(id)element;
@end

@implementation _TVNeedsMoreContentEvaluator

- (_TVNeedsMoreContentEvaluator)initWithScrollView:(id)view axis:(int64_t)axis
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = _TVNeedsMoreContentEvaluator;
  v8 = [(_TVNeedsMoreContentEvaluator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scrollView, view);
    v9->_axis = axis;
  }

  return v9;
}

- (void)setViewElement:(id)element
{
  objc_storeStrong(&self->_viewElement, element);
  viewElement = [(_TVNeedsMoreContentEvaluator *)self viewElement];
  attributes = [viewElement attributes];
  v7 = [attributes objectForKeyedSubscript:@"needsMoreThreshold"];

  [v7 doubleValue];
  [(_TVNeedsMoreContentEvaluator *)self setThreshold:fmax(v6, 1.0)];
}

- (void)evaluateForState:(int64_t)state
{
  scrollView = [(_TVNeedsMoreContentEvaluator *)self scrollView];
  window = [scrollView window];

  if (window)
  {
    viewElement = [(_TVNeedsMoreContentEvaluator *)self viewElement];

    if (viewElement)
    {
      state = [(_TVNeedsMoreContentEvaluator *)self state];
      if (state == 1 && !state)
      {
        [(_TVNeedsMoreContentEvaluator *)self setState:1];
        goto LABEL_6;
      }

      state2 = [(_TVNeedsMoreContentEvaluator *)self state];
      if (state == 2 && state2 == 1)
      {
        [window bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        scrollView2 = [(_TVNeedsMoreContentEvaluator *)self scrollView];
        [window convertRect:scrollView2 toView:{v10, v12, v14, v16}];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        scrollView3 = [(_TVNeedsMoreContentEvaluator *)self scrollView];
        [scrollView3 contentSize];
        v28 = v27;
        v30 = v29;

        axis = [(_TVNeedsMoreContentEvaluator *)self axis];
        v32 = v19;
        v33 = v21;
        v34 = v23;
        v35 = v25;
        if (axis == 1)
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
        viewElement2 = [(_TVNeedsMoreContentEvaluator *)self viewElement];
        scrollView4 = [(_TVNeedsMoreContentEvaluator *)self scrollView];
        [viewElement2 tv_dispatchEvent:@"needsmore" canBubble:0 isCancelable:0 extraInfo:0 targetResponder:scrollView4 completionBlock:0];
      }
    }
  }

LABEL_6:
}

@end