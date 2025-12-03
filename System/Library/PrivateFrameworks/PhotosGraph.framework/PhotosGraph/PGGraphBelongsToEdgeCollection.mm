@interface PGGraphBelongsToEdgeCollection
- (void)enumerateImportancesUsingBlock:(id)block;
@end

@implementation PGGraphBelongsToEdgeCollection

- (void)enumerateImportancesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__PGGraphBelongsToEdgeCollection_enumerateImportancesUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MAEdgeCollection *)self enumerateDoublePropertyValuesForKey:@"importance" withBlock:v6];
}

@end