@interface SBWidgetExtensionDebugSearchResult
- (SBWidgetExtensionDebugSearchResult)initWithKind:(id)kind family:(int64_t)family;
@end

@implementation SBWidgetExtensionDebugSearchResult

- (SBWidgetExtensionDebugSearchResult)initWithKind:(id)kind family:(int64_t)family
{
  kindCopy = kind;
  v11.receiver = self;
  v11.super_class = SBWidgetExtensionDebugSearchResult;
  v7 = [(SBWidgetExtensionDebugSearchResult *)&v11 init];
  if (v7)
  {
    v8 = [kindCopy copy];
    kind = v7->_kind;
    v7->_kind = v8;

    v7->_family = family;
  }

  return v7;
}

@end