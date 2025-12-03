@interface CSDSecureImageTranscoder
- (void)generatePreviewImageFromData:(NSData *)data completionHandler:(id)handler;
@end

@implementation CSDSecureImageTranscoder

- (void)generatePreviewImageFromData:(NSData *)data completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = data;
  v7[3] = v6;
  v7[4] = self;
  dataCopy = data;
  selfCopy = self;

  sub_10044D610(&unk_100586B00, v7);
}

@end