@interface NEClientAssertionTracker
- (id)description;
@end

@implementation NEClientAssertionTracker

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"processUUID %@ count %llu hasAppRecord %d", self->_processUUID, self->_count, self->_hasAppRecord];

  return v2;
}

@end