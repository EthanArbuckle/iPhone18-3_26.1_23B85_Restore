@interface _TVRUIHorizontalLoadingCell
- (_TVRUIHorizontalLoadingCell)initWithFrame:(CGRect)frame;
- (void)animate;
- (void)configureHierarchy;
@end

@implementation _TVRUIHorizontalLoadingCell

- (_TVRUIHorizontalLoadingCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIHorizontalLoadingCell;
  v3 = [(_TVRUIHorizontalLoadingCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIHorizontalLoadingCell *)v3 configureHierarchy];
  }

  return v4;
}

- (void)configureHierarchy
{
  v26 = *MEMORY[0x277D85DE8];
  contentView = [(_TVRUIHorizontalLoadingCell *)self contentView];
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [contentView addSubview:v3];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v24 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v19 + 1) + 8 * v8++) setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  v9 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UIActivityIndicatorView *)v3 centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v23[0] = v12;
  centerYAnchor = [(UIActivityIndicatorView *)v3 centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v23[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v9 activateConstraints:v16];

  activityIndicatorView = self->_activityIndicatorView;
  self->_activityIndicatorView = v3;
}

- (void)animate
{
  activityIndicatorView = [(_TVRUIHorizontalLoadingCell *)self activityIndicatorView];
  [activityIndicatorView startAnimating];
}

@end