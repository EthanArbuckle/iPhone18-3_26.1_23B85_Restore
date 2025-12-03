@interface SXPlaceholderArticleThumbnailComponentSizer
- (SXPlaceholderArticleThumbnailComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options;
@end

@implementation SXPlaceholderArticleThumbnailComponentSizer

- (SXPlaceholderArticleThumbnailComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = SXPlaceholderArticleThumbnailComponentSizer;
  return [(SXComponentSizer *)&v8 initWithComponent:component componentLayout:layout componentStyle:style DOMObjectProvider:provider layoutOptions:options];
}

@end