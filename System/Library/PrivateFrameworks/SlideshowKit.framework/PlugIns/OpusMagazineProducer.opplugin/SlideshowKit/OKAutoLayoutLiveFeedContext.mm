@interface OKAutoLayoutLiveFeedContext
- (void)dealloc;
@end

@implementation OKAutoLayoutLiveFeedContext

- (void)dealloc
{
  layoutInfos = self->_layoutInfos;
  if (layoutInfos)
  {

    self->_layoutInfos = 0;
  }

  primaryResolutionKey = self->_primaryResolutionKey;
  if (primaryResolutionKey)
  {

    self->_primaryResolutionKey = 0;
  }

  v5.receiver = self;
  v5.super_class = OKAutoLayoutLiveFeedContext;
  [(OKAutoLayoutLiveFeedContext *)&v5 dealloc];
}

@end