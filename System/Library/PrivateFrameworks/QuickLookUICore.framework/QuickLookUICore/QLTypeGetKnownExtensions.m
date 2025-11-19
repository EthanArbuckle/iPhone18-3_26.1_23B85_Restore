@interface QLTypeGetKnownExtensions
@end

@implementation QLTypeGetKnownExtensions

void ___QLTypeGetKnownExtensions_block_invoke()
{
  v0 = QLFrameworkBundle();
  v4 = [v0 URLForResource:@"KnownExtensions" withExtension:@"plist"];

  v1 = v4;
  if (v4)
  {
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
    v3 = _QLTypeGetKnownExtensions__knownExtensions;
    _QLTypeGetKnownExtensions__knownExtensions = v2;

    v1 = v4;
  }

  if (!_QLTypeGetKnownExtensions__knownExtensions)
  {
    _QLTypeGetKnownExtensions__knownExtensions = MEMORY[0x277CBEC10];

    v1 = v4;
  }
}

@end