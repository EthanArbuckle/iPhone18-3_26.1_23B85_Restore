@interface _TVListDescriptionViewCell
- (id)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation _TVListDescriptionViewCell

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(_TVListDescriptionViewCell *)self contentView];
  v3 = [v2 subviews];
  v4 = [v3 firstObject];

  if (v4)
  {
    v7[0] = v4;
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
  v3 = [(_TVListDescriptionViewCell *)self contentView];
  v4 = [v3 subviews];
  [v4 makeObjectsPerformSelector:sel_removeFromSuperview];
}

- (void)layoutSubviews
{
  [(_TVListDescriptionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_TVListDescriptionViewCell *)self contentView];
  v12 = [v11 subviews];
  v22 = [v12 firstObject];

  [v22 tv_padding];
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
  [v22 setFrame:{v16, v14, v21, CGRectGetHeight(v25) - v14 - v18}];
}

@end