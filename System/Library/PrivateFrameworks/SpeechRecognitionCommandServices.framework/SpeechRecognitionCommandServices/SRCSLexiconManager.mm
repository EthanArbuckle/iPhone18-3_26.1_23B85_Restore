@interface SRCSLexiconManager
- (SRCSLexiconManager)initWithLocaleIdentifier:(id)identifier;
@end

@implementation SRCSLexiconManager

- (SRCSLexiconManager)initWithLocaleIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = SRCSLexiconManager;
  return [(SRCSLexiconManager *)&v4 init];
}

@end