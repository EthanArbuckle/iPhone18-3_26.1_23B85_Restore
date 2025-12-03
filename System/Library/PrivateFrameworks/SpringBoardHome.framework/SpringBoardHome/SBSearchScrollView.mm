@interface SBSearchScrollView
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (SBSearchScrollViewDelegate)searchDelegate;
@end

@implementation SBSearchScrollView

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  panGestureRecognizer = [(SBSearchScrollView *)self panGestureRecognizer];

  if (panGestureRecognizer != beginCopy || ([beginCopy translationInView:self], v7 >= 0.0) && (WeakRetained = objc_loadWeakRetained(&self->_searchDelegate), v9 = objc_msgSend(WeakRetained, "searchScrollViewShouldRecognize:", self), WeakRetained, v9))
  {
    v11.receiver = self;
    v11.super_class = SBSearchScrollView;
    v6 = [(SBSearchScrollView *)&v11 gestureRecognizerShouldBegin:beginCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if ([SBIconView isIconTapGestureRecognizer:gestureRecognizerCopy])
  {
    v9 = 1;
  }

  else if ([+[SBSearchScrollView superclass](SBSearchScrollView "superclass")])
  {
    v11.receiver = self;
    v11.super_class = SBSearchScrollView;
    v9 = [(SBSearchScrollView *)&v11 gestureRecognizer:recognizerCopy shouldRequireFailureOfGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  view = [gestureRecognizer view];
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