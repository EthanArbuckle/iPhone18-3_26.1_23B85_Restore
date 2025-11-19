@interface SBInCallTransientOverlayPresentationContext
- (SBInCallTransientOverlayPresentationContext)initWithRequestBuilder:(id)a3;
@end

@implementation SBInCallTransientOverlayPresentationContext

- (SBInCallTransientOverlayPresentationContext)initWithRequestBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBInCallTransientOverlayPresentationContext;
  v5 = [(SBInCallTransientOverlayPresentationContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    requestBuilder = v5->_requestBuilder;
    v5->_requestBuilder = v6;
  }

  return v5;
}

@end