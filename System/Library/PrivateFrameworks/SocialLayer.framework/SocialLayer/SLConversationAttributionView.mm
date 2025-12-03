@interface SLConversationAttributionView
- (SLConversationAttributionView)initWithCoder:(id)coder;
- (SLConversationAttributionView)initWithHighlight:(id)highlight variant:(int64_t)variant;
- (SLConversationAttributionView)initWithVariant:(int64_t)variant;
@end

@implementation SLConversationAttributionView

- (SLConversationAttributionView)initWithVariant:(int64_t)variant
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (SLConversationAttributionView)initWithHighlight:(id)highlight variant:(int64_t)variant
{
  highlightCopy = highlight;
  v5 = specialized CollaborationAttributionView.init(highlight:variant:)(highlightCopy, 2);

  return v5;
}

- (SLConversationAttributionView)initWithCoder:(id)coder
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

@end