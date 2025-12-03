@interface BRCFSEventsPersistedState
- (BRCFSEventsPersistedState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRCFSEventsPersistedState

- (BRCFSEventsPersistedState)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = BRCFSEventsPersistedState;
  return [(BRCFSEventsPersistedState *)&v4 init];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = BRCFSEventsPersistedState;
  [(BRCPersistedState *)&v3 encodeWithCoder:coder];
}

@end