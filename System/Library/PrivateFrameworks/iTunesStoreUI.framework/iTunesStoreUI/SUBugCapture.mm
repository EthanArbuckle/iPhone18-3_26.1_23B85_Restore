@interface SUBugCapture
+ (void)captureLegacyWebViewReportWithUrl:(id)url isLegacyAllowed:(BOOL)allowed;
- (SUBugCapture)init;
@end

@implementation SUBugCapture

+ (void)captureLegacyWebViewReportWithUrl:(id)url isLegacyAllowed:(BOOL)allowed
{
  v5 = sub_1C23130D8();
  sub_1C2311E7C(v5, v6, allowed);
}

- (SUBugCapture)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BugCapture();
  return [(SUBugCapture *)&v3 init];
}

@end