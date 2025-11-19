@interface SBIconListViewCaptureOnlyBackgroundAssertion
- (SBIcon)icon;
- (SBIconListViewCaptureOnlyBackgroundAssertion)initWithIcon:(id)a3 groupName:(id)a4 invalidation:(id)a5;
- (void)invalidate;
@end

@implementation SBIconListViewCaptureOnlyBackgroundAssertion

- (SBIconListViewCaptureOnlyBackgroundAssertion)initWithIcon:(id)a3 groupName:(id)a4 invalidation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SBIconListViewCaptureOnlyBackgroundAssertion;
  v11 = [(SBIconListViewCaptureOnlyBackgroundAssertion *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_icon, v8);
    objc_storeStrong(&v12->_groupName, a4);
    v13 = [v10 copy];
    invalidationBlock = v12->_invalidationBlock;
    v12->_invalidationBlock = v13;
  }

  return v12;
}

- (void)invalidate
{
  invalidationBlock = self->_invalidationBlock;
  if (invalidationBlock)
  {
    v5 = _Block_copy(invalidationBlock);
    v4 = self->_invalidationBlock;
    self->_invalidationBlock = 0;

    v5[2](v5, self);
  }
}

- (SBIcon)icon
{
  WeakRetained = objc_loadWeakRetained(&self->_icon);

  return WeakRetained;
}

@end