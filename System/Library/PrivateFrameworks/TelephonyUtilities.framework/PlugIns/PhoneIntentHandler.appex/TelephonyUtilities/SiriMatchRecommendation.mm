@interface SiriMatchRecommendation
- (BOOL)contactsAvailableInPool:(id)pool;
- (SiriMatchRecommendation)initWithType:(int64_t)type contactIdentifiers:(id)identifiers;
@end

@implementation SiriMatchRecommendation

- (SiriMatchRecommendation)initWithType:(int64_t)type contactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = SiriMatchRecommendation;
  v11.receiver = [(SiriMatchRecommendation *)&v12 init];
  v11.super_class = SiriMatchRecommendation;
  v8 = [(SiriMatchRecommendation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_contactIdentifiers, identifiers);
  }

  return v9;
}

- (BOOL)contactsAvailableInPool:(id)pool
{
  poolCopy = pool;
  contactIdentifiers = [(SiriMatchRecommendation *)self contactIdentifiers];
  v6 = [NSSet setWithArray:contactIdentifiers];

  allContactIds = [poolCopy allContactIds];

  LOBYTE(poolCopy) = [v6 isSubsetOfSet:allContactIds];
  return poolCopy;
}

@end