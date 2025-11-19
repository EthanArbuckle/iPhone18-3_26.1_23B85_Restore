@interface PASGetQuotationMarkCharacterSet
@end

@implementation PASGetQuotationMarkCharacterSet

CFCharacterSetRef ___PASGetQuotationMarkCharacterSet_block_invoke()
{
  result = CFCharacterSetCreateWithCharactersInString(0, @"'«»‘’‚‛“”„‟‹›「」『』〝〞〟﹁﹂﹃﹄＂＇｢｣");
  _PASGetQuotationMarkCharacterSet_quotationMarks = result;
  return result;
}

@end