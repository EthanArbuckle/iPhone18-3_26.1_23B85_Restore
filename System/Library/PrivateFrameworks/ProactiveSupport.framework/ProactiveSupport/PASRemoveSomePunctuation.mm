@interface PASRemoveSomePunctuation
@end

@implementation PASRemoveSomePunctuation

CFCharacterSetRef ___PASRemoveSomePunctuation_block_invoke()
{
  result = CFCharacterSetCreateWithCharactersInString(0, @"\\/'<>");
  _PASRemoveSomePunctuation_charset = result;
  return result;
}

@end