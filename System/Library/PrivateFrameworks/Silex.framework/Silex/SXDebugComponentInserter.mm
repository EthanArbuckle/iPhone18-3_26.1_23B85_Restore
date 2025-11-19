@interface SXDebugComponentInserter
- (id)componentInsertForMarker:(id)a3 DOMObjectProvider:(id)a4 layoutProvider:(id)a5;
@end

@implementation SXDebugComponentInserter

- (id)componentInsertForMarker:(id)a3 DOMObjectProvider:(id)a4 layoutProvider:(id)a5
{
  v5 = a5;
  v6 = objc_alloc_init(SXInsertedDebugComponent);
  v7 = [SXInsertComponentLayout alloc];
  v8 = [v5 columnLayout];

  v9 = [v8 documentLayout];
  v10 = -[SXInsertComponentLayout initWithColumnRange:](v7, "initWithColumnRange:", 0, [v9 columns]);

  [(SXInsertComponentLayout *)v10 setIgnoreDocumentMargin:3];
  v11 = [[SXComponentInsert alloc] initWithComponent:v6 componentLayout:v10];

  return v11;
}

@end