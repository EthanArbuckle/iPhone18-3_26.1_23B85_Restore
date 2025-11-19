@interface PCLibrarySearchPaths
@end

@implementation PCLibrarySearchPaths

uint64_t ___PCLibrarySearchPaths_block_invoke()
{
  _PCLibrarySearchPaths_paths = [MEMORY[0x277CBEA60] arrayWithObjects:{@"/usr/lib", 0}];

  return MEMORY[0x2821F96F8]();
}

@end