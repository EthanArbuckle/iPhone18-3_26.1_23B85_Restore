@interface OBWelcomeController(RUIMarkDown)
- (void)setSubtitleMarkdown:()RUIMarkDown;
@end

@implementation OBWelcomeController(RUIMarkDown)

- (void)setSubtitleMarkdown:()RUIMarkDown
{
  v4 = a3;
  headerView = [self headerView];
  detailLabel = [headerView detailLabel];
  [detailLabel setMarkdown:v4 baseURL:0];
}

@end