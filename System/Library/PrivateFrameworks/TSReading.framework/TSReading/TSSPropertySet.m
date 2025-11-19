@interface TSSPropertySet
+ (id)p_mutableIndexSetWithFirstProperty:(int)a3 argumentList:(char *)a4;
+ (id)propertySet;
- (BOOL)containsProperties:(id)a3;
- (BOOL)intersectsProperties:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TSSPropertySet)init;
- (TSSPropertySet)initWithFirstProperty:(int)a3 argumentList:(char *)a4;
- (TSSPropertySet)initWithIndexSet:(id)a3;
- (TSSPropertySet)initWithPropertySet:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)propertySetByAddingProperties:(int)a3;
- (id)propertySetByAddingPropertiesFromSet:(id)a3;
- (id)propertySetByAddingProperty:(int)a3;
- (id)propertySetByIntersectingWithPropertySet:(id)a3;
- (id)propertySetByRemovingProperties:(int)a3;
- (id)propertySetByRemovingPropertiesFromSet:(id)a3;
- (id)propertySetByRemovingProperty:(int)a3;
- (id)propertyStrings;
- (void)dealloc;
- (void)enumeratePropertiesUsingBlock:(id)a3;
@end

@implementation TSSPropertySet

- (TSSPropertySet)initWithIndexSet:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSSPropertySet;
  v4 = [(TSSPropertySet *)&v6 init];
  if (v4)
  {
    v4->mIndexSet = a3;
  }

  return v4;
}

- (TSSPropertySet)init
{
  v3 = [MEMORY[0x277CCAA78] indexSet];

  return [(TSSPropertySet *)self initWithIndexSet:v3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSSPropertySet;
  [(TSSPropertySet *)&v3 dealloc];
}

+ (id)p_mutableIndexSetWithFirstProperty:(int)a3 argumentList:(char *)a4
{
  if (!a3)
  {
    goto LABEL_6;
  }

  for (i = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndex:a3]; ; objc_msgSend(i, "addIndex:", v6))
  {
    v5 = a4;
    a4 += 8;
    v6 = *v5;
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

- (TSSPropertySet)initWithFirstProperty:(int)a3 argumentList:(char *)a4
{
  v5 = [objc_msgSend(objc_opt_class() p_mutableIndexSetWithFirstProperty:*&a3 argumentList:{a4), "copy"}];

  return [(TSSPropertySet *)self initWithIndexSet:v5];
}

- (TSSPropertySet)initWithPropertySet:(id)a3
{
  v4 = [*(a3 + 1) copy];

  return [(TSSPropertySet *)self initWithIndexSet:v4];
}

+ (id)propertySet
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)containsProperties:(id)a3
{
  if (a3 && *(a3 + 1))
  {
    return [self->mIndexSet containsIndexes:?];
  }

  else
  {
    return 1;
  }
}

- (void)enumeratePropertiesUsingBlock:(id)a3
{
  mIndexSet = self->mIndexSet;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__TSSPropertySet_enumeratePropertiesUsingBlock___block_invoke;
  v4[3] = &unk_279D481F8;
  v4[4] = a3;
  [mIndexSet enumerateIndexesUsingBlock:v4];
}

- (BOOL)intersectsProperties:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a3 && [a3 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__TSSPropertySet_intersectsProperties___block_invoke;
    v7[3] = &unk_279D47E98;
    v7[4] = a3;
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

- (id)propertySetByAddingProperties:(int)a3
{
  v4 = [objc_opt_class() p_mutableIndexSetWithFirstProperty:*&a3 argumentList:&v6];
  [v4 addIndexes:self->mIndexSet];
  return [objc_alloc(objc_opt_class()) initWithIndexSet:v4];
}

- (id)propertySetByAddingPropertiesFromSet:(id)a3
{
  v4 = [self->mIndexSet mutableCopy];
  [v4 addIndexes:*(a3 + 1)];
  v5 = [objc_alloc(objc_opt_class()) initWithIndexSet:v4];

  return v5;
}

- (id)propertySetByAddingProperty:(int)a3
{
  v4 = [self->mIndexSet mutableCopy];
  [v4 addIndex:a3];
  v5 = [objc_alloc(objc_opt_class()) initWithIndexSet:v4];

  return v5;
}

- (id)propertySetByRemovingProperty:(int)a3
{
  v4 = [self->mIndexSet mutableCopy];
  [v4 removeIndex:a3];
  v5 = [objc_alloc(objc_opt_class()) initWithIndexSet:v4];

  return v5;
}

- (id)propertySetByRemovingProperties:(int)a3
{
  v4 = [objc_opt_class() p_mutableIndexSetWithFirstProperty:*&a3 argumentList:&v7];
  v5 = [self->mIndexSet mutableCopy];
  [v5 removeIndexes:v4];
  return [objc_alloc(objc_opt_class()) initWithIndexSet:v5];
}

- (id)propertySetByRemovingPropertiesFromSet:(id)a3
{
  v4 = [self->mIndexSet mutableCopy];
  [v4 removeIndexes:*(a3 + 1)];
  v5 = [objc_alloc(objc_opt_class()) initWithIndexSet:v4];

  return v5;
}

- (id)propertySetByIntersectingWithPropertySet:(id)a3
{
  v5 = [(TSSPropertySet *)self count];
  if (v5 >= [a3 count])
  {
    p_isa = a3;
  }

  else
  {
    p_isa = &self->super.isa;
  }

  v7 = p_isa[1];
  v8 = [(TSSPropertySet *)self count];
  if (v8 >= [a3 count])
  {
    v9 = &self->super.isa;
  }

  else
  {
    v9 = a3;
  }

  v10 = v9[1];
  v11 = [MEMORY[0x277CCAB58] indexSet];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__TSSPropertySet_propertySetByIntersectingWithPropertySet___block_invoke;
  v13[3] = &unk_279D48220;
  v13[4] = v10;
  v13[5] = v11;
  [v7 enumerateIndexesUsingBlock:v13];
  return [objc_alloc(objc_opt_class()) initWithIndexSet:v11];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSSMutablePropertySet alloc];

  return [(TSSMutablePropertySet *)v4 initWithPropertySet:self];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mIndexSet = self->mIndexSet;
  v6 = *(a3 + 1);

  return [mIndexSet isEqual:v6];
}

@end