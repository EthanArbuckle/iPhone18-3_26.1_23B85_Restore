@interface _UIDragSlotHostingView
- (_UIDragSlotHostingView)initWithFrame:(CGRect)a3 contentSize:(id)a4 slotID:(unsigned int)a5;
@end

@implementation _UIDragSlotHostingView

- (_UIDragSlotHostingView)initWithFrame:(CGRect)a3 contentSize:(id)a4 slotID:(unsigned int)a5
{
  v5 = *&a5;
  v10.receiver = self;
  v10.super_class = _UIDragSlotHostingView;
  v6 = [(UIView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.var0, a4.var1, a4.var2];
  if (v6)
  {
    v7 = [MEMORY[0x1E6979320] objectForSlot:v5];
    v8 = [(UIView *)v6 layer];
    [v8 setContents:v7];
  }

  return v6;
}

@end