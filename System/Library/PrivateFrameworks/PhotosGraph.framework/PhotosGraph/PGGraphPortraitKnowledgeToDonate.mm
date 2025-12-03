@interface PGGraphPortraitKnowledgeToDonate
- (PGGraphPortraitKnowledgeToDonate)initWithTopics:(id)topics namedEntities:(id)entities locationNamedEntities:(id)namedEntities;
@end

@implementation PGGraphPortraitKnowledgeToDonate

- (PGGraphPortraitKnowledgeToDonate)initWithTopics:(id)topics namedEntities:(id)entities locationNamedEntities:(id)namedEntities
{
  topicsCopy = topics;
  entitiesCopy = entities;
  namedEntitiesCopy = namedEntities;
  v15.receiver = self;
  v15.super_class = PGGraphPortraitKnowledgeToDonate;
  v12 = [(PGGraphPortraitKnowledgeToDonate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topics, topics);
    objc_storeStrong(&v13->_namedEntities, entities);
    objc_storeStrong(&v13->_locationNamedEntities, namedEntities);
  }

  return v13;
}

@end