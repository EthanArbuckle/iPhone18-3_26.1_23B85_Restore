@interface PGGraphPortraitKnowledgeToDonate
- (PGGraphPortraitKnowledgeToDonate)initWithTopics:(id)a3 namedEntities:(id)a4 locationNamedEntities:(id)a5;
@end

@implementation PGGraphPortraitKnowledgeToDonate

- (PGGraphPortraitKnowledgeToDonate)initWithTopics:(id)a3 namedEntities:(id)a4 locationNamedEntities:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGGraphPortraitKnowledgeToDonate;
  v12 = [(PGGraphPortraitKnowledgeToDonate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topics, a3);
    objc_storeStrong(&v13->_namedEntities, a4);
    objc_storeStrong(&v13->_locationNamedEntities, a5);
  }

  return v13;
}

@end