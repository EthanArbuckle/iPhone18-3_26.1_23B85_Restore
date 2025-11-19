@interface SBSearchScrollView
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (SBSearchScrollViewDelegate)searchDelegate;
@end

@implementation SBSearchScrollView

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SBSearchScrollView *)self panGestureRecognizer];

  if (v5 != v4 || ([v4 translationInView:self], v7 >= 0.0) && (WeakRetained = objc_loadWeakRetained(&self->_searchDelegate), v9 = objc_msgSend(WeakRetained, "searchScrollViewShouldRecognize:", self), WeakRetained, v9))
  {
    v11.receiver = self;
    v11.super_class = SBSearchScrollView;
    v6 = [(SBSearchScrollView *)&v11 gestureRecognizerShouldBegin:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([SBIconView isIconTapGestureRecognizer:v8])
  {
    v9 = 1;
  }

  else if ([+[SBSearchScrollView superclass](SBSearchScrollView "superclass")])
  {
    v11.receiver = self;
    v11.super_class = SBSearchScrollView;
    v9 = [(SBSearchScrollView *)&v11 gestureRecognizer:v7 shouldRequireFailureOfGestureRecognizer:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v4 = [a4 view];
  NSClassFromString(&cfstr_Ncnotification.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (SBSearchScrollViewDelegate)searchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);

  return WeakRetained;
}

@end