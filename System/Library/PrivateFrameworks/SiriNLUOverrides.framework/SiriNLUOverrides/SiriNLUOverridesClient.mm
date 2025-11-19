@interface SiriNLUOverridesClient
+ (void)clearCache;
@end

@implementation SiriNLUOverridesClient

+ (void)clearCache
{
  [MEMORY[0x277CCAC68] resetCache];

  +[_TtC16SiriNLUOverrides18RegexOverrideCache reset];
}

@end