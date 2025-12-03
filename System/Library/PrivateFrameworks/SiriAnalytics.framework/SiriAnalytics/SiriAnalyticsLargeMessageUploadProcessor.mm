@interface SiriAnalyticsLargeMessageUploadProcessor
- (void)processWithUploadEvent:(DUSchemaDUEvent *)event requestIdentifier:(NSUUID *)identifier completionHandler:(id)handler;
@end

@implementation SiriAnalyticsLargeMessageUploadProcessor

- (void)processWithUploadEvent:(DUSchemaDUEvent *)event requestIdentifier:(NSUUID *)identifier completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = event;
  v9[3] = identifier;
  v9[4] = v8;
  v9[5] = self;
  eventCopy = event;
  identifierCopy = identifier;

  sub_1D9905654(&unk_1D99324F8, v9);
}

@end