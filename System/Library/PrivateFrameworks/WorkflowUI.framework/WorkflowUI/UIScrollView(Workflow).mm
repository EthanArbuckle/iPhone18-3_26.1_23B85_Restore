@interface UIScrollView(Workflow)
- (uint64_t)wf_scrollToTopAnimated:()Workflow;
@end

@implementation UIScrollView(Workflow)

- (uint64_t)wf_scrollToTopAnimated:()Workflow
{
  if (a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {

    return [self _scrollToTopIfPossible:1];
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [self _effectiveContentInset];
    v6 = v5;
    [self _firstPageOffset];
    v8 = v7 - v6;
    [self _revealableContentPadding];
    [self setContentOffset:{0.0, v8 - v9}];
    return 1;
  }

  else
  {
    return 0;
  }
}

@end