@interface PLQueryChangeDetectionCriteria
- (PLQueryChangeDetectionCriteria)init;
- (void)addAttributeKeyPath:(id)a3 forEntityName:(id)a4;
- (void)addRelationshipKeyPath:(id)a3 forEntityName:(id)a4;
@end

@implementation PLQueryChangeDetectionCriteria

- (void)addRelationshipKeyPath:(id)a3 forEntityName:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_relationshipKeyPathsByEntityNameAffectingFetchResult objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMutableDictionary *)self->_relationshipKeyPathsByEntityNameAffectingFetchResult setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

- (void)addAttributeKeyPath:(id)a3 forEntityName:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_attributeKeyPathsByEntityNameAffectingFetchResult objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMutableDictionary *)self->_attributeKeyPathsByEntityNameAffectingFetchResult setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
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