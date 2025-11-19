@interface SBLiveIconImageView
- (id)snapshot;
- (void)setIcon:(id)a3 location:(id)a4 animated:(BOOL)a5;
@end

@implementation SBLiveIconImageView

- (void)setIcon:(id)a3 location:(id)a4 animated:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = SBLiveIconImageView;
  [(SBIconImageView *)&v7 setIcon:a3 location:a4 animated:a5];
  v6 = [(SBIconImageView *)self icon];

  if (v6)
  {
    [(SBLiveIconImageView *)self updateUnanimated];
  }
}

- (id)snapshot
{
  v3 = [(SBIconImageView *)self icon];
  [(SBIconImageView *)self iconImageInfo];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBLiveIconImageView *)self traitCollection];
  v13 = [v3 iconImageWithInfo:v12 traitCollection:1 options:{v5, v7, v9, v11}];

  return v13;
}

@end