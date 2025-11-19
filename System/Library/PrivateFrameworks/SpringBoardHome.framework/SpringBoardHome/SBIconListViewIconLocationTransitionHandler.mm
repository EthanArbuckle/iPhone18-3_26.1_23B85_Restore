@interface SBIconListViewIconLocationTransitionHandler
- (SBIconListView)iconListView;
- (SBIconListViewIconLocationTransitionHandler)initWithIconLocation:(id)a3 reason:(id)a4 iconListView:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)completeTransition:(BOOL)a3;
- (void)setProgress:(double)a3;
@end

@implementation SBIconListViewIconLocationTransitionHandler

- (SBIconListViewIconLocationTransitionHandler)initWithIconLocation:(id)a3 reason:(id)a4 iconListView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = SBIconListViewIconLocationTransitionHandler;
  v11 = [(SBIconListViewIconLocationTransitionHandler *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_iconListView, v10);
    v13 = [v9 copy];
    reason = v12->_reason;
    v12->_reason = v13;

    v15 = [v8 copy];
    iconLocation = v12->_iconLocation;
    v12->_iconLocation = v15;
  }

  return v12;
}

- (void)setProgress:(double)a3
{
  self->_progress = a3;
  v5 = [(SBIconListViewIconLocationTransitionHandler *)self iconListView];
  [v5 iconLocationTransitionHandler:self setProgress:a3];
}

- (void)completeTransition:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBIconListViewIconLocationTransitionHandler *)self iconListView];
  [v5 iconLocationTransitionHandler:self completeTransition:v3];
}

- (id)succinctDescription
{
  v2 = [(SBIconListViewIconLocationTransitionHandler *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListViewIconLocationTransitionHandler *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListViewIconLocationTransitionHandler *)self succinctDescriptionBuilder];
  v5 = [(SBIconListViewIconLocationTransitionHandler *)self iconLocation];
  v6 = [v4 appendObject:v5 withName:@"iconLocation"];

  v7 = [(SBIconListViewIconLocationTransitionHandler *)self reason];
  v8 = [v4 appendObject:v7 withName:@"reason"];

  [(SBIconListViewIconLocationTransitionHandler *)self progress];
  v9 = [v4 appendFloat:@"progress" withName:?];
  v10 = [(SBIconListViewIconLocationTransitionHandler *)self iconListView];
  v11 = [v4 appendPointer:v10 withName:@"iconListView"];

  return v4;
}

- (SBIconListView)iconListView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconListView);

  return WeakRetained;
}

@end