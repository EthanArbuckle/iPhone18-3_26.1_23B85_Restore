@interface PXPeopleBadgeViewConfiguration
- (PXPeopleBadgeViewConfiguration)initWithState:(int64_t)a3 displayScale:(double)a4 badgeViewDelegate:(id)a5;
- (PXPeopleBadgeViewDelegate)badgeViewDelegate;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXPeopleBadgeViewConfiguration

- (PXPeopleBadgeViewDelegate)badgeViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_badgeViewDelegate);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXPeopleBadgeViewConfiguration allocWithZone:a3];
  v5 = [(PXPeopleBadgeViewConfiguration *)self state];
  [(PXPeopleBadgeViewConfiguration *)self displayScale];
  v7 = v6;
  v8 = [(PXPeopleBadgeViewConfiguration *)self badgeViewDelegate];
  v9 = [(PXPeopleBadgeViewConfiguration *)v4 initWithState:v5 displayScale:v8 badgeViewDelegate:v7];

  return v9;
}

- (PXPeopleBadgeViewConfiguration)initWithState:(int64_t)a3 displayScale:(double)a4 badgeViewDelegate:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (a4 <= 0.0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPeopleBadgeViewConfiguration.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  else if (v9)
  {
    goto LABEL_3;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PXPeopleBadgeViewConfiguration.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"badgeViewDelegate"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PXPeopleBadgeViewConfiguration;
  v11 = [(PXPeopleBadgeViewConfiguration *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_state = a3;
    v11->_displayScale = a4;
    objc_storeWeak(&v11->_badgeViewDelegate, v10);
  }

  return v12;
}

@end