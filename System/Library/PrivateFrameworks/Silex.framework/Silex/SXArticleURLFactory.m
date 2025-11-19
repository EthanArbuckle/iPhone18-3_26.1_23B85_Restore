@interface SXArticleURLFactory
- (id)createArticleURLWithIdentifier:(id)a3;
@end

@implementation SXArticleURLFactory

- (id)createArticleURLWithIdentifier:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://apple.news/%@", a3];
  v5 = [v3 URLWithString:v4];

  return v5;
}

@end