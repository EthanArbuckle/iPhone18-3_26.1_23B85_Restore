@interface SRSSPhoneticCheckerResult
- (id)description;
@end

@implementation SRSSPhoneticCheckerResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  text = [(SRSSPhoneticCheckerResult *)self text];
  [(SRSSPhoneticCheckerResult *)self score];
  v6 = v5;
  [(SRSSPhoneticCheckerResult *)self phoneticSimilarity];
  v8 = v7;
  [(SRSSPhoneticCheckerResult *)self prior];
  v10 = [v3 stringWithFormat:@"%@(%f)(%f, %f)\n", text, v6, v8, v9];

  return v10;
}

@end