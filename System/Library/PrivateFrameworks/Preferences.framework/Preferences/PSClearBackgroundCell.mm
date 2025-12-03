@interface PSClearBackgroundCell
- (PSClearBackgroundCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PSClearBackgroundCell

- (PSClearBackgroundCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = PSClearBackgroundCell;
  v4 = [(PSTableCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    titleLabel = [(PSTableCell *)v4 titleLabel];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [titleLabel setBackgroundColor:clearColor];

    detailTextLabel = [(PSClearBackgroundCell *)v5 detailTextLabel];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [detailTextLabel setBackgroundColor:clearColor2];
  }

  return v5;
}

@end