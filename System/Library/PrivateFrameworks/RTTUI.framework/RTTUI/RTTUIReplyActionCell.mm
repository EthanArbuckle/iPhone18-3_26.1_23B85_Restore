@interface RTTUIReplyActionCell
- (RTTUIReplyActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 andDelegate:(id)a5;
- (RTTUIReplyActionCellDelegate)delegate;
@end

@implementation RTTUIReplyActionCell

- (RTTUIReplyActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 andDelegate:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = RTTUIReplyActionCell;
  v9 = [(RTTUIReplyActionCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v9)
  {
    v10 = [MEMORY[0x277D75348] clearColor];
    [(RTTUIReplyActionCell *)v9 setBackgroundColor:v10];

    [(RTTUIReplyActionCell *)v9 setDelegate:v8];
  }

  return v9;
}

- (RTTUIReplyActionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end