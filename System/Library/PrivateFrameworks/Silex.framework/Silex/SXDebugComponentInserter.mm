@interface SXDebugComponentInserter
- (id)componentInsertForMarker:(id)marker DOMObjectProvider:(id)provider layoutProvider:(id)layoutProvider;
@end

@implementation SXDebugComponentInserter

- (id)componentInsertForMarker:(id)marker DOMObjectProvider:(id)provider layoutProvider:(id)layoutProvider
{
  layoutProviderCopy = layoutProvider;
  v6 = objc_alloc_init(SXInsertedDebugComponent);
  v7 = [SXInsertComponentLayout alloc];
  columnLayout = [layoutProviderCopy columnLayout];

  documentLayout = [columnLayout documentLayout];
  v10 = -[SXInsertComponentLayout initWithColumnRange:](v7, "initWithColumnRange:", 0, [documentLayout columns]);

  [(SXInsertComponentLayout *)v10 setIgnoreDocumentMargin:3];
  v11 = [[SXComponentInsert alloc] initWithComponent:v6 componentLayout:v10];

  return v11;
}

@end