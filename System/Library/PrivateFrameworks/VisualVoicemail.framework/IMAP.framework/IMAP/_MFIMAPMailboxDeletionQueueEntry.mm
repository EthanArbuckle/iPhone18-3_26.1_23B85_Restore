@interface _MFIMAPMailboxDeletionQueueEntry
- (void)dealloc;
@end

@implementation _MFIMAPMailboxDeletionQueueEntry

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFIMAPMailboxDeletionQueueEntry;
  [(_MFIMAPMailboxDeletionQueueEntry *)&v2 dealloc];
}

@end