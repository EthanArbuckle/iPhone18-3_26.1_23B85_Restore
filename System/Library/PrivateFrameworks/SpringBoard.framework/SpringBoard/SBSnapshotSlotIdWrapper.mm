@interface SBSnapshotSlotIdWrapper
- (SBSnapshotSlotIdWrapper)init;
- (SBSnapshotSlotIdWrapper)initWithContext:(id)context slotId:(unsigned int)id;
- (void)dealloc;
@end

@implementation SBSnapshotSlotIdWrapper

- (SBSnapshotSlotIdWrapper)initWithContext:(id)context slotId:(unsigned int)id
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SBSnapshotSlotIdWrapper;
  v8 = [(SBSnapshotSlotIdWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
    v9->_slotId = id;
  }

  return v9;
}

- (SBSnapshotSlotIdWrapper)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSnapshotUtilities.m" lineNumber:56 description:@"use initWithContext:"];

  return 0;
}

- (void)dealloc
{
  if (self->_slotId)
  {
    [(CAContext *)self->_context deleteSlot:?];
  }

  v3.receiver = self;
  v3.super_class = SBSnapshotSlotIdWrapper;
  [(SBSnapshotSlotIdWrapper *)&v3 dealloc];
}

@end