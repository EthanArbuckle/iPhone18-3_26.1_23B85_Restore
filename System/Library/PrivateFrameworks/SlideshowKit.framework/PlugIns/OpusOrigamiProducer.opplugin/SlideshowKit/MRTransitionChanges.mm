@interface MRTransitionChanges
- (void)dealloc;
@end

@implementation MRTransitionChanges

- (void)dealloc
{
  self->_currentSublayer = 0;

  self->_nextSublayer = 0;
  self->_transition = 0;

  self->_pzr = 0;
  v3.receiver = self;
  v3.super_class = MRTransitionChanges;
  [(MRTransitionChanges *)&v3 dealloc];
}

@end