@interface PGPublicEventFetchResults
- (PGPublicEventFetchResults)init;
@end

@implementation PGPublicEventFetchResults

- (PGPublicEventFetchResults)init
{
  v10.receiver = self;
  v10.super_class = PGPublicEventFetchResults;
  v2 = [(PGPublicEventFetchResults *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB98]);
    momentNodesForConsolidatedAddresses = v2->_momentNodesForConsolidatedAddresses;
    v2->_momentNodesForConsolidatedAddresses = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    publicEventsByTimeLocationTupleIdentifier = v2->_publicEventsByTimeLocationTupleIdentifier;
    v2->_publicEventsByTimeLocationTupleIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    consolidatedAddressesByMomentIdentifier = v2->_consolidatedAddressesByMomentIdentifier;
    v2->_consolidatedAddressesByMomentIdentifier = v7;
  }

  return v2;
}

@end