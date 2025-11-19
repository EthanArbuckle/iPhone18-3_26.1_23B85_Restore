@interface _TVRUIHorizontalLoadingCell
- (_TVRUIHorizontalLoadingCell)initWithFrame:(CGRect)a3;
- (void)animate;
- (void)configureHierarchy;
@end

@implementation _TVRUIHorizontalLoadingCell

- (_TVRUIHorizontalLoadingCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIHorizontalLoadingCell;
  v3 = [(_TVRUIHorizontalLoadingCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v2 = [(_TVRUIHorizontalLoadingCell *)self contentView];
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [v2 addSubview:v3];
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
  v10 = [(UIActivityIndicatorView *)v3 centerXAnchor];
  v11 = [v2 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v23[0] = v12;
  v13 = [(UIActivityIndicatorView *)v3 centerYAnchor];
  v14 = [v2 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v23[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v9 activateConstraints:v16];

  activityIndicatorView = self->_activityIndicatorView;
  self->_activityIndicatorView = v3;
}

- (void)animate
{
  v2 = [(_TVRUIHorizontalLoadingCell *)self activityIndicatorView];
  [v2 startAnimating];
}

@end