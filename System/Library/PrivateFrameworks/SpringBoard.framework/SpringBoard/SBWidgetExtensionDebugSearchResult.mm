@interface SBWidgetExtensionDebugSearchResult
- (SBWidgetExtensionDebugSearchResult)initWithKind:(id)a3 family:(int64_t)a4;
@end

@implementation SBWidgetExtensionDebugSearchResult

- (SBWidgetExtensionDebugSearchResult)initWithKind:(id)a3 family:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBWidgetExtensionDebugSearchResult;
  v7 = [(SBWidgetExtensionDebugSearchResult *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    kind = v7->_kind;
    v7->_kind = v8;

    v7->_family = a4;
  }

  return v7;
}

@end