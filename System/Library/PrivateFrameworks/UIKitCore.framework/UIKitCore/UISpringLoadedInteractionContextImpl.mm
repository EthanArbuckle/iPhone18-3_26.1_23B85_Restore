@interface UISpringLoadedInteractionContextImpl
- (CGPoint)locationInView:(id)view;
- (UIDropSession)dropSession;
- (UISpringLoadedGestureRecognizer)currentRecognizer;
@end

@implementation UISpringLoadedInteractionContextImpl

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  currentRecognizer = [(UISpringLoadedInteractionContextImpl *)self currentRecognizer];
  [currentRecognizer locationInView:viewCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (UIDropSession)dropSession
{
  currentRecognizer = [(UISpringLoadedInteractionContextImpl *)self currentRecognizer];
  dropSession = [currentRecognizer dropSession];

  return dropSession;
}

- (UISpringLoadedGestureRecognizer)currentRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_currentRecognizer);

  return WeakRetained;
}

@end