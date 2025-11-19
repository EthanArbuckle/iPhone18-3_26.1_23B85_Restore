@interface PLContentChanges
- (void)cleanupState;
@end

@implementation PLContentChanges

- (void)cleanupState
{
  container = self->_container;
  self->_container = 0;

  updatedContent = self->_updatedContent;
  self->_updatedContent = 0;
}

@end