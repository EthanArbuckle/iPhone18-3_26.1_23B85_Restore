@interface SBInCallTransientOverlayPresentationContext
- (SBInCallTransientOverlayPresentationContext)initWithRequestBuilder:(id)builder;
@end

@implementation SBInCallTransientOverlayPresentationContext

- (SBInCallTransientOverlayPresentationContext)initWithRequestBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = SBInCallTransientOverlayPresentationContext;
  v5 = [(SBInCallTransientOverlayPresentationContext *)&v9 init];
  if (v5)
  {
    v6 = [builderCopy copy];
    requestBuilder = v5->_requestBuilder;
    v5->_requestBuilder = v6;
  }

  return v5;
}

@end