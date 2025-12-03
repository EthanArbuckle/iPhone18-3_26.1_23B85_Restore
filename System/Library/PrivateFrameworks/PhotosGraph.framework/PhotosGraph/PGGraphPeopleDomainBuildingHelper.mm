@interface PGGraphPeopleDomainBuildingHelper
- (PGGraphPeopleDomainBuildingHelper)init;
- (id)cachedAuthorNodeForShareParticipant:(id)participant;
- (id)insertIdentifiedPersonWithPersonNode:(id)node forPersonLocalIdentifier:(id)identifier;
- (void)cacheAuthorNode:(id)node forShareParticipant:(id)participant;
@end

@implementation PGGraphPeopleDomainBuildingHelper

- (id)cachedAuthorNodeForShareParticipant:(id)participant
{
  authorNodeByLocalIdentifier = self->_authorNodeByLocalIdentifier;
  localIdentifier = [participant localIdentifier];
  v5 = [(NSMutableDictionary *)authorNodeByLocalIdentifier objectForKeyedSubscript:localIdentifier];

  return v5;
}

- (void)cacheAuthorNode:(id)node forShareParticipant:(id)participant
{
  authorNodeByLocalIdentifier = self->_authorNodeByLocalIdentifier;
  nodeCopy = node;
  localIdentifier = [participant localIdentifier];
  [(NSMutableDictionary *)authorNodeByLocalIdentifier setObject:nodeCopy forKeyedSubscript:localIdentifier];
}

- (id)insertIdentifiedPersonWithPersonNode:(id)node forPersonLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nodeCopy = node;
  v8 = [[PGGraphBuilderInsertedIdentifiedPerson alloc] initWithPersonNode:nodeCopy];

  [(NSMutableDictionary *)self->_insertedIdentifiedPersonByPersonLocalIdentifier setObject:v8 forKeyedSubscript:identifierCopy];

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