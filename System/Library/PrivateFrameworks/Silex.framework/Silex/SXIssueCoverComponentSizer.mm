@interface SXIssueCoverComponentSizer
- (SXIssueCoverComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 layoutOptionsFactory:(id)a8;
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
@end

@implementation SXIssueCoverComponentSizer

- (SXIssueCoverComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 layoutOptionsFactory:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = SXIssueCoverComponentSizer;
  v16 = [(SXComponentSizer *)&v19 initWithComponent:a3 componentLayout:a4 componentStyle:a5 DOMObjectProvider:a6 layoutOptions:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_layoutOptionsFactory, a8);
  }

  return v17;
}

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v6 = [SXIssueCover alloc];
  v7 = [(SXComponentSizer *)self component];
  v8 = [v7 issueIdentifier];
  v9 = [(SXIssueCover *)v6 initWithIssueIdentifier:v8];

  v10 = [[SXIssueCoverLayoutOptions alloc] initWithBoundingWidth:a3];
  v11 = [(SXIssueCoverComponentSizer *)self layoutOptionsFactory];
  v12 = [v11 createAttributesWithIssueCover:v9 options:v10];

  [v12 frame];
  v14 = v13;

  return v14;
}

@end