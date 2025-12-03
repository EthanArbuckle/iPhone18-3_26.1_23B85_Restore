@interface PLQueryChangeDetectionCriteria
- (PLQueryChangeDetectionCriteria)init;
- (void)addAttributeKeyPath:(id)path forEntityName:(id)name;
- (void)addRelationshipKeyPath:(id)path forEntityName:(id)name;
@end

@implementation PLQueryChangeDetectionCriteria

- (void)addRelationshipKeyPath:(id)path forEntityName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v7 = [(NSMutableDictionary *)self->_relationshipKeyPathsByEntityNameAffectingFetchResult objectForKeyedSubscript:nameCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMutableDictionary *)self->_relationshipKeyPathsByEntityNameAffectingFetchResult setObject:v7 forKeyedSubscript:nameCopy];
  }

  [v7 addObject:pathCopy];
}

- (void)addAttributeKeyPath:(id)path forEntityName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v7 = [(NSMutableDictionary *)self->_attributeKeyPathsByEntityNameAffectingFetchResult objectForKeyedSubscript:nameCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMutableDictionary *)self->_attributeKeyPathsByEntityNameAffectingFetchResult setObject:v7 forKeyedSubscript:nameCopy];
  }

  [v7 addObject:pathCopy];
}

- (PLQueryChangeDetectionCriteria)init
{
  v8.receiver = self;
  v8.super_class = PLQueryChangeDetectionCriteria;
  v2 = [(PLQueryChangeDetectionCriteria *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributeKeyPathsByEntityNameAffectingFetchResult = v2->_attributeKeyPathsByEntityNameAffectingFetchResult;
    v2->_attributeKeyPathsByEntityNameAffectingFetchResult = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    relationshipKeyPathsByEntityNameAffectingFetchResult = v2->_relationshipKeyPathsByEntityNameAffectingFetchResult;
    v2->_relationshipKeyPathsByEntityNameAffectingFetchResult = v5;
  }

  return v2;
}

@end