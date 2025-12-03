@interface SBLiveIconImageView
- (id)snapshot;
- (void)setIcon:(id)icon location:(id)location animated:(BOOL)animated;
@end

@implementation SBLiveIconImageView

- (void)setIcon:(id)icon location:(id)location animated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = SBLiveIconImageView;
  [(SBIconImageView *)&v7 setIcon:icon location:location animated:animated];
  icon = [(SBIconImageView *)self icon];

  if (icon)
  {
    [(SBLiveIconImageView *)self updateUnanimated];
  }
}

- (id)snapshot
{
  icon = [(SBIconImageView *)self icon];
  [(SBIconImageView *)self iconImageInfo];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  traitCollection = [(SBLiveIconImageView *)self traitCollection];
  v13 = [icon iconImageWithInfo:traitCollection traitCollection:1 options:{v5, v7, v9, v11}];

  return v13;
}

@end