@interface UISpringLoadedInteractionContextImpl
- (CGPoint)locationInView:(id)a3;
- (UIDropSession)dropSession;
- (UISpringLoadedGestureRecognizer)currentRecognizer;
@end

@implementation UISpringLoadedInteractionContextImpl

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  v5 = [(UISpringLoadedInteractionContextImpl *)self currentRecognizer];
  [v5 locationInView:v4];
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
  v2 = [(UISpringLoadedInteractionContextImpl *)self currentRecognizer];
  v3 = [v2 dropSession];

  return v3;
}

- (UISpringLoadedGestureRecognizer)currentRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_currentRecognizer);

  return WeakRetained;
}

@end