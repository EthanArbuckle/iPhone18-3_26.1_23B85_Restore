@interface RTTUIReplyActionCell
- (RTTUIReplyActionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier andDelegate:(id)delegate;
- (RTTUIReplyActionCellDelegate)delegate;
@end

@implementation RTTUIReplyActionCell

- (RTTUIReplyActionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier andDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = RTTUIReplyActionCell;
  v9 = [(RTTUIReplyActionCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v9)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(RTTUIReplyActionCell *)v9 setBackgroundColor:clearColor];

    [(RTTUIReplyActionCell *)v9 setDelegate:delegateCopy];
  }

  return v9;
}

- (RTTUIReplyActionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end