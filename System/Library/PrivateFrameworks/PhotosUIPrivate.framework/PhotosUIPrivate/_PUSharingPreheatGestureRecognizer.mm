@interface _PUSharingPreheatGestureRecognizer
- (_PUSharingPreheatGestureRecognizer)initWithSharingPreheatBlock:(id)block;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation _PUSharingPreheatGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = _PUSharingPreheatGestureRecognizer;
  [(_PUSharingPreheatGestureRecognizer *)&v6 touchesBegan:began withEvent:event];
  sharingPreheatBlock = self->_sharingPreheatBlock;
  if (sharingPreheatBlock)
  {
    sharingPreheatBlock[2]();
  }

  [(_PUSharingPreheatGestureRecognizer *)self setState:5];
}

- (_PUSharingPreheatGestureRecognizer)initWithSharingPreheatBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = _PUSharingPreheatGestureRecognizer;
  v5 = [(_PUSharingPreheatGestureRecognizer *)&v9 initWithTarget:0 action:0];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    sharingPreheatBlock = v5->_sharingPreheatBlock;
    v5->_sharingPreheatBlock = v6;
  }

  return v5;
}

@end