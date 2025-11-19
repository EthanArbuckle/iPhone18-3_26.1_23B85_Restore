@interface CSDSecureImageTranscoder
- (void)generatePreviewImageFromData:(NSData *)a3 completionHandler:(id)a4;
@end

@implementation CSDSecureImageTranscoder

- (void)generatePreviewImageFromData:(NSData *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_10044D610(&unk_100586B00, v7);
}

@end