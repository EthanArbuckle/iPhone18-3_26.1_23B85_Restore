@interface PGGraphPerformerNodeCollection
- (NSSet)performerIdentifiers;
@end

@implementation PGGraphPerformerNodeCollection

- (NSSet)performerIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PGGraphPerformerNodeCollection_performerIdentifiers__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"id" withBlock:v6];

  return v4;
}

@end