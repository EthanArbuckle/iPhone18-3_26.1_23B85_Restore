@interface PLChangeList
- (void)cleanupState;
@end

@implementation PLChangeList

- (void)cleanupState
{
  inserted = self->_inserted;
  self->_inserted = 0;

  updated = self->_updated;
  self->_updated = 0;

  deleted = self->_deleted;
  self->_deleted = 0;
}

@end