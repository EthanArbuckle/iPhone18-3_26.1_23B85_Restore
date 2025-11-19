@interface MRRenderArguments
- (MRRenderArguments)initWithRenderer:(id)a3;
- (id)copyForPreloading;
- (void)cleanup;
- (void)dealloc;
@end

@implementation MRRenderArguments

- (MRRenderArguments)initWithRenderer:(id)a3
{
  v6.receiver = self;
  v6.super_class = MRRenderArguments;
  v4 = [(MRRenderArguments *)&v6 init];
  if (v4)
  {
    v4->_renderer = a3;
  }

  return v4;
}

- (void)dealloc
{
  [(MRRenderArguments *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRRenderArguments;
  [(MRRenderArguments *)&v3 dealloc];
}

- (void)cleanup
{
  renderer = self->_renderer;
  if (renderer)
  {

    self->_renderer = 0;
    self->_preloadQueue = 0;

    self->_forcedState = 0;
  }
}

- (id)copyForPreloading
{
  v3 = [[MRRenderArguments alloc] initWithRenderer:self->_renderer];
  v3->_preloadQueue = self->_preloadQueue;
  v3->_forcedState = self->_forcedState;
  v3->_unalteredTime = self->_unalteredTime;
  v3->_currentLayoutIndex = self->_currentLayoutIndex;
  v3->_thumbnailPolicy = self->_thumbnailPolicy;
  v3->_freezesSizeOfImageRequests = self->_freezesSizeOfImageRequests;
  v3->_isPreloading = 1;
  v3->_timeWasSet = self->_timeWasSet;
  return v3;
}

@end