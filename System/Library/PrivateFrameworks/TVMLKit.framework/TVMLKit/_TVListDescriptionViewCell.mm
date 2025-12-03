@interface _TVListDescriptionViewCell
- (id)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation _TVListDescriptionViewCell

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  contentView = [(_TVListDescriptionViewCell *)self contentView];
  subviews = [contentView subviews];
  firstObject = [subviews firstObject];

  if (firstObject)
  {
    v7[0] = firstObject;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = _TVListDescriptionViewCell;
  [(_TVListDescriptionViewCell *)&v5 prepareForReuse];
  contentView = [(_TVListDescriptionViewCell *)self contentView];
  subviews = [contentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
}

- (void)layoutSubviews
{
  [(_TVListDescriptionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(_TVListDescriptionViewCell *)self contentView];
  subviews = [contentView subviews];
  firstObject = [subviews firstObject];

  [firstObject tv_padding];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v21 = CGRectGetWidth(v24) - v16 - v20;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  [firstObject setFrame:{v16, v14, v21, CGRectGetHeight(v25) - v14 - v18}];
}

@end