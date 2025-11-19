@interface _UIDraggingImageSlotOwner
- (_UIDragManager)dragManager;
- (_UIDraggingImageSlotOwner)initWithDragManager:(id)a3;
- (unsigned)uploadImage:(CGImage *)a3;
- (void)addUsedSlotID:(unsigned int)a3;
- (void)dealloc;
@end

@implementation _UIDraggingImageSlotOwner

- (_UIDraggingImageSlotOwner)initWithDragManager:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"dragManager must be non-nil"];
  }

  v8.receiver = self;
  v8.super_class = _UIDraggingImageSlotOwner;
  v5 = [(_UIDraggingImageSlotOwner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dragManager, v4);
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_dragManager);
  usedSlotIDs = self->_usedSlotIDs;
  if (usedSlotIDs)
  {
    v5 = usedSlotIDs;
    v6 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36___UIDraggingImageSlotOwner_dealloc__block_invoke;
    block[3] = &unk_1E70F35B8;
    v10 = WeakRetained;
    v11 = v5;
    v7 = v5;
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);

    usedSlotIDs = self->_usedSlotIDs;
  }

  self->_usedSlotIDs = 0;

  v8.receiver = self;
  v8.super_class = _UIDraggingImageSlotOwner;
  [(_UIDraggingImageSlotOwner *)&v8 dealloc];
}

- (void)addUsedSlotID:(unsigned int)a3
{
  if (a3)
  {
    v3 = *&a3;
    usedSlotIDs = self->_usedSlotIDs;
    if (!usedSlotIDs)
    {
      v6 = objc_opt_new();
      v7 = self->_usedSlotIDs;
      self->_usedSlotIDs = v6;

      usedSlotIDs = self->_usedSlotIDs;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    [(NSMutableArray *)usedSlotIDs addObject:v8];
  }
}

- (unsigned)uploadImage:(CGImage *)a3
{
  v5 = [(_UIDraggingImageSlotOwner *)self dragManager];
  v6 = [v5 uploadImage:a3];

  [(_UIDraggingImageSlotOwner *)self addUsedSlotID:v6];
  return v6;
}

- (_UIDragManager)dragManager
{
  WeakRetained = objc_loadWeakRetained(&self->_dragManager);

  return WeakRetained;
}

@end