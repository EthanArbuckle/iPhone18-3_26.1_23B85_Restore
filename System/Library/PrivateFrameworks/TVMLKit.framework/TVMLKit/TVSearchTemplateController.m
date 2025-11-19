@interface TVSearchTemplateController
@end

@implementation TVSearchTemplateController

uint64_t __43___TVSearchTemplateController__isAtWordEnd__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" -"];
  v1 = _isAtWordEnd_wordDelimiters;
  _isAtWordEnd_wordDelimiters = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end