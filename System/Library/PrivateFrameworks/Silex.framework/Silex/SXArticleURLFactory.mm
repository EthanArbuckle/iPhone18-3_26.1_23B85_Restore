@interface SXArticleURLFactory
- (id)createArticleURLWithIdentifier:(id)identifier;
@end

@implementation SXArticleURLFactory

- (id)createArticleURLWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E695DFF8];
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://apple.news/%@", identifier];
  v5 = [v3 URLWithString:identifier];

  return v5;
}

@end