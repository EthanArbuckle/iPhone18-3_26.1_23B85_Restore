@interface PGGraphPeopleDomainBuildingHelper
- (PGGraphPeopleDomainBuildingHelper)init;
- (id)cachedAuthorNodeForShareParticipant:(id)a3;
- (id)insertIdentifiedPersonWithPersonNode:(id)a3 forPersonLocalIdentifier:(id)a4;
- (void)cacheAuthorNode:(id)a3 forShareParticipant:(id)a4;
@end

@implementation PGGraphPeopleDomainBuildingHelper

- (id)cachedAuthorNodeForShareParticipant:(id)a3
{
  authorNodeByLocalIdentifier = self->_authorNodeByLocalIdentifier;
  v4 = [a3 localIdentifier];
  v5 = [(NSMutableDictionary *)authorNodeByLocalIdentifier objectForKeyedSubscript:v4];

  return v5;
}

- (void)cacheAuthorNode:(id)a3 forShareParticipant:(id)a4
{
  authorNodeByLocalIdentifier = self->_authorNodeByLocalIdentifier;
  v6 = a3;
  v7 = [a4 localIdentifier];
  [(NSMutableDictionary *)authorNodeByLocalIdentifier setObject:v6 forKeyedSubscript:v7];
}

- (id)insertIdentifiedPersonWithPersonNode:(id)a3 forPersonLocalIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PGGraphBuilderInsertedIdentifiedPerson alloc] initWithPersonNode:v7];

  [(NSMutableDictionary *)self->_insertedIdentifiedPersonByPersonLocalIdentifier setObject:v8 forKeyedSubscript:v6];

  return v8;
}

- (PGGraphPeopleDomainBuildingHelper)init
{
  v8.receiver = self;
  v8.super_class = PGGraphPeopleDomainBuildingHelper;
  v2 = [(PGGraphPeopleDomainBuildingHelper *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    insertedIdentifiedPersonByPersonLocalIdentifier = v2->_insertedIdentifiedPersonByPersonLocalIdentifier;
    v2->_insertedIdentifiedPersonByPersonLocalIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    authorNodeByLocalIdentifier = v2->_authorNodeByLocalIdentifier;
    v2->_authorNodeByLocalIdentifier = v5;
  }

  return v2;
}

@end