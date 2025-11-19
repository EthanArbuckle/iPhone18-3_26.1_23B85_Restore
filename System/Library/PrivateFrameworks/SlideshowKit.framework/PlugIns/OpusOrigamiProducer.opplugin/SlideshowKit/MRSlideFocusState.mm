@interface MRSlideFocusState
- (void)dealloc;
@end

@implementation MRSlideFocusState

- (void)dealloc
{
  self->_delegate = 0;

  self->_action = 0;
  self->_slideInfo = 0;

  self->_slideID = 0;
  self->_previousSlideInfo = 0;

  self->_previousSlideID = 0;
  self->_nextSlideInfo = 0;

  self->_nextSlideID = 0;
  v3.receiver = self;
  v3.super_class = MRSlideFocusState;
  [(MRSlideFocusState *)&v3 dealloc];
}

@end