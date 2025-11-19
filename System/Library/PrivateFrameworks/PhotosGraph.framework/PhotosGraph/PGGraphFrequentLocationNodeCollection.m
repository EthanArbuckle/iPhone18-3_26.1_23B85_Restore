@interface PGGraphFrequentLocationNodeCollection
- (PGGraphAddressNodeCollection)addressNodes;
- (PGGraphAddressNodeCollection)preciseAddressNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (void)enumerateUniversalEndDatesUsingBlock:(id)a3;
@end

@implementation PGGraphFrequentLocationNodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphFrequentLocationNode momentOfFrequentLocation];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)preciseAddressNodes
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C90];
  v4 = +[PGGraphFrequentLocationNode addressOfFrequentLocation];
  v12[0] = v4;
  v5 = +[PGGraphAddressNode preciseFilter];
  v6 = [v5 relation];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v3 chain:v7];

  v9 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphFrequentLocationNode addressOfFrequentLocation];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (void)enumerateUniversalEndDatesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__PGGraphFrequentLocationNodeCollection_enumerateUniversalEndDatesUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"universalEndDate" withBlock:v6];
}

void __78__PGGraphFrequentLocationNodeCollection_enumerateUniversalEndDatesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  (*(*(a1 + 32) + 16))();
}

@end