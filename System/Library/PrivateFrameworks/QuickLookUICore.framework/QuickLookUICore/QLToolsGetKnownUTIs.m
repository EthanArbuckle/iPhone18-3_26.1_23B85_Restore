@interface QLToolsGetKnownUTIs
@end

@implementation QLToolsGetKnownUTIs

void ___QLToolsGetKnownUTIs_block_invoke()
{
  v0 = QLFrameworkBundle();
  v3 = [v0 pathForResource:@"KnownUTIs" ofType:@"plist"];

  v1 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v3];
  v2 = _QLToolsGetKnownUTIs__knownUTIs;
  _QLToolsGetKnownUTIs__knownUTIs = v1;

  if (!_QLToolsGetKnownUTIs__knownUTIs)
  {
    _QLToolsGetKnownUTIs__knownUTIs = MEMORY[0x277CBEC10];
  }
}

@end