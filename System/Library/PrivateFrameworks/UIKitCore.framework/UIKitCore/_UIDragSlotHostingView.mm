@interface _UIDragSlotHostingView
- (_UIDragSlotHostingView)initWithFrame:(CGRect)frame contentSize:(id)size slotID:(unsigned int)d;
@end

@implementation _UIDragSlotHostingView

- (_UIDragSlotHostingView)initWithFrame:(CGRect)frame contentSize:(id)size slotID:(unsigned int)d
{
  v5 = *&d;
  v10.receiver = self;
  v10.super_class = _UIDragSlotHostingView;
  v6 = [(UIView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, size.var0, size.var1, size.var2];
  if (v6)
  {
    v7 = [MEMORY[0x1E6979320] objectForSlot:v5];
    layer = [(UIView *)v6 layer];
    [layer setContents:v7];
  }

  return v6;
}

@end