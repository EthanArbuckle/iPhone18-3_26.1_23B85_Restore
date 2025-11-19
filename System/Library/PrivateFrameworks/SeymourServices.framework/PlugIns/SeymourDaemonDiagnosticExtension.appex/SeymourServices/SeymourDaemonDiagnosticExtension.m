@interface SeymourDaemonDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation SeymourDaemonDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Seymour/seymour_b.sqlite"];
  v4 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Seymour/seymour_c.sqlite"];
  v5 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Seymour/AirPlayKit/"];
  [v5 setDisplayName:@"AirPlayKit Logs"];
  [v5 setShouldCompress:&__kCFBooleanTrue];
  [v5 setDeleteOnAttach:&__kCFBooleanTrue];
  v6 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Seymour/Personalization/"];
  [v6 setDisplayName:@"Personalization Logs"];
  [v6 setShouldCompress:&__kCFBooleanTrue];
  [v6 setDeleteOnAttach:&__kCFBooleanTrue];
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

@end