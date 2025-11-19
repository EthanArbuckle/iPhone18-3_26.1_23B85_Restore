@interface _UISlotId
+ (id)snapshotContext;
- (_UISlotId)initWithSize:(CGSize)a3;
- (id)object;
- (void)dealloc;
@end

@implementation _UISlotId

+ (id)snapshotContext
{
  if (qword_1ED4A0608 != -1)
  {
    dispatch_once(&qword_1ED4A0608, &__block_literal_global_496);
  }

  v3 = qword_1ED4A0600;

  return v3;
}

- (id)object
{
  if (self->_value)
  {
    v3 = [MEMORY[0x1E6979320] objectForSlot:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_value)
  {
    v3 = +[_UISlotId snapshotContext];
    [v3 deleteSlot:self->_value];
  }

  v4.receiver = self;
  v4.super_class = _UISlotId;
  [(_UISlotId *)&v4 dealloc];
}

- (_UISlotId)initWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = _UISlotId;
  v5 = [(_UISlotId *)&v8 init];
  if (v5)
  {
    v6 = +[_UISlotId snapshotContext];
    v5->_value = [v6 createImageSlot:1 hasAlpha:{width, height}];
  }

  return v5;
}

@end