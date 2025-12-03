@interface PPCoalescedScoredNamedEntity
- (PPCoalescedScoredNamedEntity)initWithScoredNamedEntity:(id)entity occurrencesInSource:(unsigned __int16)source;
@end

@implementation PPCoalescedScoredNamedEntity

- (PPCoalescedScoredNamedEntity)initWithScoredNamedEntity:(id)entity occurrencesInSource:(unsigned __int16)source
{
  entityCopy = entity;
  v11.receiver = self;
  v11.super_class = PPCoalescedScoredNamedEntity;
  v8 = [(PPCoalescedScoredNamedEntity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scoredNamedEntity, entity);
    v9->_occurrencesInSource = source;
  }

  return v9;
}

@end