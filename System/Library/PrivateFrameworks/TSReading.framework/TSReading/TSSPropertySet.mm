@interface TSSPropertySet
+ (id)p_mutableIndexSetWithFirstProperty:(int)property argumentList:(char *)list;
+ (id)propertySet;
- (BOOL)containsProperties:(id)properties;
- (BOOL)intersectsProperties:(id)properties;
- (BOOL)isEqual:(id)equal;
- (TSSPropertySet)init;
- (TSSPropertySet)initWithFirstProperty:(int)property argumentList:(char *)list;
- (TSSPropertySet)initWithIndexSet:(id)set;
- (TSSPropertySet)initWithPropertySet:(id)set;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)propertySetByAddingProperties:(int)properties;
- (id)propertySetByAddingPropertiesFromSet:(id)set;
- (id)propertySetByAddingProperty:(int)property;
- (id)propertySetByIntersectingWithPropertySet:(id)set;
- (id)propertySetByRemovingProperties:(int)properties;
- (id)propertySetByRemovingPropertiesFromSet:(id)set;
- (id)propertySetByRemovingProperty:(int)property;
- (id)propertyStrings;
- (void)dealloc;
- (void)enumeratePropertiesUsingBlock:(id)block;
@end

@implementation TSSPropertySet

- (TSSPropertySet)initWithIndexSet:(id)set
{
  v6.receiver = self;
  v6.super_class = TSSPropertySet;
  v4 = [(TSSPropertySet *)&v6 init];
  if (v4)
  {
    v4->mIndexSet = set;
  }

  return v4;
}

- (TSSPropertySet)init
{
  indexSet = [MEMORY[0x277CCAA78] indexSet];

  return [(TSSPropertySet *)self initWithIndexSet:indexSet];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSSPropertySet;
  [(TSSPropertySet *)&v3 dealloc];
}

+ (id)p_mutableIndexSetWithFirstProperty:(int)property argumentList:(char *)list
{
  if (!property)
  {
    goto LABEL_6;
  }

  for (i = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndex:property]; ; objc_msgSend(i, "addIndex:", v6))
  {
    listCopy = list;
    list += 8;
    v6 = *listCopy;
    if (!v6)
    {
      break;
    }
  }

  if (!i)
  {
LABEL_6:
    i = objc_opt_new();
  }

  return i;
}

- (TSSPropertySet)initWithFirstProperty:(int)property argumentList:(char *)list
{
  v5 = [objc_msgSend(objc_opt_class() p_mutableIndexSetWithFirstProperty:*&property argumentList:{list), "copy"}];

  return [(TSSPropertySet *)self initWithIndexSet:v5];
}

- (TSSPropertySet)initWithPropertySet:(id)set
{
  v4 = [*(set + 1) copy];

  return [(TSSPropertySet *)self initWithIndexSet:v4];
}

+ (id)propertySet
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)containsProperties:(id)properties
{
  if (properties && *(properties + 1))
  {
    return [self->mIndexSet containsIndexes:?];
  }

  else
  {
    return 1;
  }
}

- (void)enumeratePropertiesUsingBlock:(id)block
{
  mIndexSet = self->mIndexSet;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__TSSPropertySet_enumeratePropertiesUsingBlock___block_invoke;
  v4[3] = &unk_279D481F8;
  v4[4] = block;
  [mIndexSet enumerateIndexesUsingBlock:v4];
}

- (BOOL)intersectsProperties:(id)properties
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (properties && [properties count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__TSSPropertySet_intersectsProperties___block_invoke;
    v7[3] = &unk_279D47E98;
    v7[4] = properties;
    v7[5] = &v8;
    [(TSSPropertySet *)self enumeratePropertiesUsingBlock:v7];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __39__TSSPropertySet_intersectsProperties___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsProperty:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (id)propertySetByAddingProperties:(int)properties
{
  v4 = [objc_opt_class() p_mutableIndexSetWithFirstProperty:*&properties argumentList:&v6];
  [v4 addIndexes:self->mIndexSet];
  return [objc_alloc(objc_opt_class()) initWithIndexSet:v4];
}

- (id)propertySetByAddingPropertiesFromSet:(id)set
{
  v4 = [self->mIndexSet mutableCopy];
  [v4 addIndexes:*(set + 1)];
  v5 = [objc_alloc(objc_opt_class()) initWithIndexSet:v4];

  return v5;
}

- (id)propertySetByAddingProperty:(int)property
{
  v4 = [self->mIndexSet mutableCopy];
  [v4 addIndex:property];
  v5 = [objc_alloc(objc_opt_class()) initWithIndexSet:v4];

  return v5;
}

- (id)propertySetByRemovingProperty:(int)property
{
  v4 = [self->mIndexSet mutableCopy];
  [v4 removeIndex:property];
  v5 = [objc_alloc(objc_opt_class()) initWithIndexSet:v4];

  return v5;
}

- (id)propertySetByRemovingProperties:(int)properties
{
  v4 = [objc_opt_class() p_mutableIndexSetWithFirstProperty:*&properties argumentList:&v7];
  v5 = [self->mIndexSet mutableCopy];
  [v5 removeIndexes:v4];
  return [objc_alloc(objc_opt_class()) initWithIndexSet:v5];
}

- (id)propertySetByRemovingPropertiesFromSet:(id)set
{
  v4 = [self->mIndexSet mutableCopy];
  [v4 removeIndexes:*(set + 1)];
  v5 = [objc_alloc(objc_opt_class()) initWithIndexSet:v4];

  return v5;
}

- (id)propertySetByIntersectingWithPropertySet:(id)set
{
  v5 = [(TSSPropertySet *)self count];
  if (v5 >= [set count])
  {
    p_isa = set;
  }

  else
  {
    p_isa = &self->super.isa;
  }

  v7 = p_isa[1];
  v8 = [(TSSPropertySet *)self count];
  if (v8 >= [set count])
  {
    setCopy = &self->super.isa;
  }

  else
  {
    setCopy = set;
  }

  v10 = setCopy[1];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__TSSPropertySet_propertySetByIntersectingWithPropertySet___block_invoke;
  v13[3] = &unk_279D48220;
  v13[4] = v10;
  v13[5] = indexSet;
  [v7 enumerateIndexesUsingBlock:v13];
  return [objc_alloc(objc_opt_class()) initWithIndexSet:indexSet];
}

uint64_t __59__TSSPropertySet_propertySetByIntersectingWithPropertySet___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsIndex:a2];
  if (result)
  {
    v5 = *(a1 + 40);

    return [v5 addIndex:a2];
  }

  return result;
}

- (id)propertyStrings
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[TSSPropertySet count](self, "count")}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__TSSPropertySet_propertyStrings__block_invoke;
  v5[3] = &unk_279D47F10;
  v5[4] = v3;
  [(TSSPropertySet *)self enumeratePropertiesUsingBlock:v5];
  return v3;
}

uint64_t __33__TSSPropertySet_propertyStrings__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = String(a2);

  return [v2 addObject:v3];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSSMutablePropertySet alloc];

  return [(TSSMutablePropertySet *)v4 initWithPropertySet:self];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mIndexSet = self->mIndexSet;
  v6 = *(equal + 1);

  return [mIndexSet isEqual:v6];
}

@end