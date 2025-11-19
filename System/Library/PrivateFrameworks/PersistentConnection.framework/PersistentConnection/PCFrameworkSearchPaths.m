@interface PCFrameworkSearchPaths
@end

@implementation PCFrameworkSearchPaths

uint64_t ___PCFrameworkSearchPaths_block_invoke()
{
  _PCFrameworkSearchPaths_paths = [MEMORY[0x277CBEA60] arrayWithObjects:{@"/System/Library/Frameworks", @"/System/Library/PrivateFrameworks", 0}];

  return MEMORY[0x2821F96F8]();
}

@end