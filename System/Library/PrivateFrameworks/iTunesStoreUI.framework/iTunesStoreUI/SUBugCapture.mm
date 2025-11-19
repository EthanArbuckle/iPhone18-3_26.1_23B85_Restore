@interface SUBugCapture
+ (void)captureLegacyWebViewReportWithUrl:(id)a3 isLegacyAllowed:(BOOL)a4;
- (SUBugCapture)init;
@end

@implementation SUBugCapture

+ (void)captureLegacyWebViewReportWithUrl:(id)a3 isLegacyAllowed:(BOOL)a4
{
  v5 = sub_1C23130D8();
  sub_1C2311E7C(v5, v6, a4);
}

- (SUBugCapture)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BugCapture();
  return [(SUBugCapture *)&v3 init];
}

@end