@interface SBIconListViewIconLocationTransitionHandler
- (SBIconListView)iconListView;
- (SBIconListViewIconLocationTransitionHandler)initWithIconLocation:(id)location reason:(id)reason iconListView:(id)view;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)completeTransition:(BOOL)transition;
- (void)setProgress:(double)progress;
@end

@implementation SBIconListViewIconLocationTransitionHandler

- (SBIconListViewIconLocationTransitionHandler)initWithIconLocation:(id)location reason:(id)reason iconListView:(id)view
{
  locationCopy = location;
  reasonCopy = reason;
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = SBIconListViewIconLocationTransitionHandler;
  v11 = [(SBIconListViewIconLocationTransitionHandler *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_iconListView, viewCopy);
    v13 = [reasonCopy copy];
    reason = v12->_reason;
    v12->_reason = v13;

    v15 = [locationCopy copy];
    iconLocation = v12->_iconLocation;
    v12->_iconLocation = v15;
  }

  return v12;
}

- (void)setProgress:(double)progress
{
  self->_progress = progress;
  iconListView = [(SBIconListViewIconLocationTransitionHandler *)self iconListView];
  [iconListView iconLocationTransitionHandler:self setProgress:progress];
}

- (void)completeTransition:(BOOL)transition
{
  transitionCopy = transition;
  iconListView = [(SBIconListViewIconLocationTransitionHandler *)self iconListView];
  [iconListView iconLocationTransitionHandler:self completeTransition:transitionCopy];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListViewIconLocationTransitionHandler *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListViewIconLocationTransitionHandler *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconListViewIconLocationTransitionHandler *)self succinctDescriptionBuilder];
  iconLocation = [(SBIconListViewIconLocationTransitionHandler *)self iconLocation];
  v6 = [succinctDescriptionBuilder appendObject:iconLocation withName:@"iconLocation"];

  reason = [(SBIconListViewIconLocationTransitionHandler *)self reason];
  v8 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  [(SBIconListViewIconLocationTransitionHandler *)self progress];
  v9 = [succinctDescriptionBuilder appendFloat:@"progress" withName:?];
  iconListView = [(SBIconListViewIconLocationTransitionHandler *)self iconListView];
  v11 = [succinctDescriptionBuilder appendPointer:iconListView withName:@"iconListView"];

  return succinctDescriptionBuilder;
}

- (SBIconListView)iconListView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconListView);

  return WeakRetained;
}

@end