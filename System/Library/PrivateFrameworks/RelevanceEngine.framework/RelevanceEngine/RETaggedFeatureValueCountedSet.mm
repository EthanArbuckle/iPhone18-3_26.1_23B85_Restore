@interface RETaggedFeatureValueCountedSet
- (BOOL)isEqual:(id)equal;
- (RETaggedFeatureValueCountedSet)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)enumerateFeatureValuesUsingBlock:(id)block;
@end

@implementation RETaggedFeatureValueCountedSet

- (RETaggedFeatureValueCountedSet)init
{
  v4.receiver = self;
  v4.super_class = RETaggedFeatureValueCountedSet;
  v2 = [(RETaggedFeatureValueCountedSet *)&v4 init];
  if (v2)
  {
    v2->_bag = CFBagCreateMutable(*MEMORY[0x277CBECE8], 0, &kTaggedFeatureValueCallbacks_0);
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->_bag);
  v3.receiver = self;
  v3.super_class = RETaggedFeatureValueCountedSet;
  [(RETaggedFeatureValueCountedSet *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && CFEqual(self->_bag, equalCopy->_bag) != 0;
  }

  return v5;
}

- (void)enumerateFeatureValuesUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = objc_alloc_init(RETaggedFeatureValueCountedSet);
    v11 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__RETaggedFeatureValueCountedSet_enumerateFeatureValuesUsingBlock___block_invoke;
    v7[3] = &unk_2785FC248;
    v6 = v5;
    v8 = v6;
    v9 = blockCopy;
    context = MEMORY[0x22AABC5E0](v7);
    LOBYTE(v11) = 0;
    CFBagApplyFunction(self->_bag, kTaggedFeatureCFApplier, &context);
  }
}

uint64_t __67__RETaggedFeatureValueCountedSet_enumerateFeatureValuesUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsFeatureValue:a2];
  if ((result & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    v5 = *(a1 + 32);

    return [v5 addFeatureValue:a2];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  CFRelease(v4[1]);
  v4[1] = CFBagCreateMutableCopy(*MEMORY[0x277CBECE8], 0, self->_bag);
  return v4;
}

@end