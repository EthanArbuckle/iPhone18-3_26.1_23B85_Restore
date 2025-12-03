@interface SXIssueCoverComponentSizer
- (SXIssueCoverComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options layoutOptionsFactory:(id)factory;
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
@end

@implementation SXIssueCoverComponentSizer

- (SXIssueCoverComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options layoutOptionsFactory:(id)factory
{
  factoryCopy = factory;
  v19.receiver = self;
  v19.super_class = SXIssueCoverComponentSizer;
  v16 = [(SXComponentSizer *)&v19 initWithComponent:component componentLayout:layout componentStyle:style DOMObjectProvider:provider layoutOptions:options];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_layoutOptionsFactory, factory);
  }

  return v17;
}

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  v6 = [SXIssueCover alloc];
  component = [(SXComponentSizer *)self component];
  issueIdentifier = [component issueIdentifier];
  v9 = [(SXIssueCover *)v6 initWithIssueIdentifier:issueIdentifier];

  v10 = [[SXIssueCoverLayoutOptions alloc] initWithBoundingWidth:width];
  layoutOptionsFactory = [(SXIssueCoverComponentSizer *)self layoutOptionsFactory];
  v12 = [layoutOptionsFactory createAttributesWithIssueCover:v9 options:v10];

  [v12 frame];
  v14 = v13;

  return v14;
}

@end