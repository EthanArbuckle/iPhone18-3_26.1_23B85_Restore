@interface SBSnapshotSlotIdWrapper
- (SBSnapshotSlotIdWrapper)init;
- (SBSnapshotSlotIdWrapper)initWithContext:(id)a3 slotId:(unsigned int)a4;
- (void)dealloc;
@end

@implementation SBSnapshotSlotIdWrapper

- (SBSnapshotSlotIdWrapper)initWithContext:(id)a3 slotId:(unsigned int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBSnapshotSlotIdWrapper;
  v8 = [(SBSnapshotSlotIdWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a3);
    v9->_slotId = a4;
  }

  return v9;
}

- (SBSnapshotSlotIdWrapper)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSnapshotUtilities.m" lineNumber:56 description:@"use initWithContext:"];

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