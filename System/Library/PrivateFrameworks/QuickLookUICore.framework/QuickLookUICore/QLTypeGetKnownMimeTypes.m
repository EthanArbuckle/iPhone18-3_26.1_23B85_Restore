@interface QLTypeGetKnownMimeTypes
@end

@implementation QLTypeGetKnownMimeTypes

void ___QLTypeGetKnownMimeTypes_block_invoke()
{
  v0 = QLFrameworkBundle();
  v4 = [v0 URLForResource:@"KnownMimeTypes" withExtension:@"plist"];

  v1 = v4;
  if (v4)
  {
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
    v3 = _QLTypeGetKnownMimeTypes__knownMimeTypes;
    _QLTypeGetKnownMimeTypes__knownMimeTypes = v2;

    v1 = v4;
  }

  if (!_QLTypeGetKnownMimeTypes__knownMimeTypes)
  {
    _QLTypeGetKnownMimeTypes__knownMimeTypes = MEMORY[0x277CBEC10];

    v1 = v4;
  }
}

@end