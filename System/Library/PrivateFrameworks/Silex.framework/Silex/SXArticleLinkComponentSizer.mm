@interface SXArticleLinkComponentSizer
- (SXArticleLinkComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options;
@end

@implementation SXArticleLinkComponentSizer

- (SXArticleLinkComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = SXArticleLinkComponentSizer;
  return [(SXComponentSizer *)&v8 initWithComponent:component componentLayout:layout componentStyle:style DOMObjectProvider:provider layoutOptions:options];
}

@end