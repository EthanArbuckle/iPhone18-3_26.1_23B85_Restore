@interface NSURL
@end

@implementation NSURL

uint64_t __61__NSURL_QueryParameters__URLByDeletingQueryParameterWithKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

uint64_t __53__NSURL_TUSanitizedCopying__tu_defaultAllowedSchemes__block_invoke()
{
  tu_defaultAllowedSchemes_defaultAllowedSchemes = [MEMORY[0x1E695DFD8] setWithObject:@"https"];

  return MEMORY[0x1EEE66BB8]();
}

@end