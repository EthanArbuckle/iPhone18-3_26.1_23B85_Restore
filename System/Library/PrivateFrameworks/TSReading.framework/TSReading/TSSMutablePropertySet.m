@interface TSSMutablePropertySet
- (TSSMutablePropertySet)init;
- (TSSMutablePropertySet)initWithFirstProperty:(int)a3 argumentList:(char *)a4;
- (TSSMutablePropertySet)initWithPropertySet:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addProperties:(id)a3;
- (void)intersectPropertySet:(id)a3;
- (void)removeProperties:(id)a3;
@end

@implementation TSSMutablePropertySet

- (TSSMutablePropertySet)init
{
  v3.receiver = self;
  v3.super_class = TSSMutablePropertySet;
  return -[TSSPropertySet initWithIndexSet:](&v3, sel_initWithIndexSet_, [MEMORY[0x277CCAB58] indexSet]);
}

- (TSSMutablePropertySet)initWithFirstProperty:(int)a3 argumentList:(char *)a4
{
  v5 = [objc_opt_class() p_mutableIndexSetWithFirstProperty:*&a3 argumentList:a4];

  return [(TSSPropertySet *)self initWithIndexSet:v5];
}

- (TSSMutablePropertySet)initWithPropertySet:(id)a3
{
  v4 = [*(a3 + 1) mutableCopy];

  return [(TSSPropertySet *)self initWithIndexSet:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSSPropertySet alloc];
  v5 = [self->super.mIndexSet copy];

  return [(TSSPropertySet *)v4 initWithIndexSet:v5];
}

- (void)addProperties:(id)a3
{
  if (a3)
  {
    [self->super.mIndexSet addIndexes:*(a3 + 1)];
  }
}

- (void)removeProperties:(id)a3
{
  if (a3)
  {
    [self->super.mIndexSet removeIndexes:*(a3 + 1)];
  }
}

- (void)intersectPropertySet:(id)a3
{
  v5 = [(TSSMutablePropertySet *)self mutableCopy];
  [v5 removeProperties:a3];
  [(TSSMutablePropertySet *)self removeProperties:v5];
}

@end