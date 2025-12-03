@interface PXPeopleBadgeViewConfiguration
- (PXPeopleBadgeViewConfiguration)initWithState:(int64_t)state displayScale:(double)scale badgeViewDelegate:(id)delegate;
- (PXPeopleBadgeViewDelegate)badgeViewDelegate;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXPeopleBadgeViewConfiguration

- (PXPeopleBadgeViewDelegate)badgeViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_badgeViewDelegate);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXPeopleBadgeViewConfiguration allocWithZone:zone];
  state = [(PXPeopleBadgeViewConfiguration *)self state];
  [(PXPeopleBadgeViewConfiguration *)self displayScale];
  v7 = v6;
  badgeViewDelegate = [(PXPeopleBadgeViewConfiguration *)self badgeViewDelegate];
  v9 = [(PXPeopleBadgeViewConfiguration *)v4 initWithState:state displayScale:badgeViewDelegate badgeViewDelegate:v7];

  return v9;
}

- (PXPeopleBadgeViewConfiguration)initWithState:(int64_t)state displayScale:(double)scale badgeViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10 = delegateCopy;
  if (scale <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBadgeViewConfiguration.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  else if (delegateCopy)
  {
    goto LABEL_3;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeopleBadgeViewConfiguration.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"badgeViewDelegate"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PXPeopleBadgeViewConfiguration;
  v11 = [(PXPeopleBadgeViewConfiguration *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_state = state;
    v11->_displayScale = scale;
    objc_storeWeak(&v11->_badgeViewDelegate, v10);
  }

  return v12;
}

@end