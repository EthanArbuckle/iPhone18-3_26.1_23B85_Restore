@interface AppStateTracker
- (id)description;
@end

@implementation AppStateTracker

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"AppStateTracker, pid %d, uuid %@ display identifier %@ foreground %d", self->_pid, self->_uuid, self->_identifier, self->_foreground];

  return v2;
}

@end