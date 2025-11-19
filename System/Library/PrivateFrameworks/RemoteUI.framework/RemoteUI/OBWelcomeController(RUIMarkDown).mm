@interface OBWelcomeController(RUIMarkDown)
- (void)setSubtitleMarkdown:()RUIMarkDown;
@end

@implementation OBWelcomeController(RUIMarkDown)

- (void)setSubtitleMarkdown:()RUIMarkDown
{
  v4 = a3;
  v6 = [a1 headerView];
  v5 = [v6 detailLabel];
  [v5 setMarkdown:v4 baseURL:0];
}

@end