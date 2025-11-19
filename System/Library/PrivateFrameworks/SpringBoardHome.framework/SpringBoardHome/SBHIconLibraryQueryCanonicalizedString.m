@interface SBHIconLibraryQueryCanonicalizedString
@end

@implementation SBHIconLibraryQueryCanonicalizedString

uint64_t ___SBHIconLibraryQueryCanonicalizedString_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\uFFFC"];
  v1 = _SBHIconLibraryQueryCanonicalizedString_queryDisallowedCharacterSet;
  _SBHIconLibraryQueryCanonicalizedString_queryDisallowedCharacterSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end