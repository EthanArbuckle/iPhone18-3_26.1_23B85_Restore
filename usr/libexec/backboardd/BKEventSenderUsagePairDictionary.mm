@interface BKEventSenderUsagePairDictionary
- (id)description;
@end

@implementation BKEventSenderUsagePairDictionary

- (id)description
{
  p_isa = &self->super.isa;
  if (self)
  {
    v3 = [BSDescriptionBuilder builderWithObject:self];
    v4 = p_isa[1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100013FA8;
    v7[3] = &unk_1000F9E28;
    v5 = v3;
    v8 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];

    p_isa = [v5 build];
  }

  return p_isa;
}

@end