@interface TSSMutablePropertySet
- (TSSMutablePropertySet)init;
- (TSSMutablePropertySet)initWithFirstProperty:(int)property argumentList:(char *)list;
- (TSSMutablePropertySet)initWithPropertySet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addProperties:(id)properties;
- (void)intersectPropertySet:(id)set;
- (void)removeProperties:(id)properties;
@end

@implementation TSSMutablePropertySet

- (TSSMutablePropertySet)init
{
  v3.receiver = self;
  v3.super_class = TSSMutablePropertySet;
  return -[TSSPropertySet initWithIndexSet:](&v3, sel_initWithIndexSet_, [MEMORY[0x277CCAB58] indexSet]);
}

- (TSSMutablePropertySet)initWithFirstProperty:(int)property argumentList:(char *)list
{
  v5 = [objc_opt_class() p_mutableIndexSetWithFirstProperty:*&property argumentList:list];

  return [(TSSPropertySet *)self initWithIndexSet:v5];
}

- (TSSMutablePropertySet)initWithPropertySet:(id)set
{
  v4 = [*(set + 1) mutableCopy];

  return [(TSSPropertySet *)self initWithIndexSet:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSSPropertySet alloc];
  v5 = [self->super.mIndexSet copy];

  return [(TSSPropertySet *)v4 initWithIndexSet:v5];
}

- (void)addProperties:(id)properties
{
  if (properties)
  {
    [self->super.mIndexSet addIndexes:*(properties + 1)];
  }
}

- (void)removeProperties:(id)properties
{
  if (properties)
  {
    [self->super.mIndexSet removeIndexes:*(properties + 1)];
  }
}

- (void)intersectPropertySet:(id)set
{
  v5 = [(TSSMutablePropertySet *)self mutableCopy];
  [v5 removeProperties:set];
  [(TSSMutablePropertySet *)self removeProperties:v5];
}

@end