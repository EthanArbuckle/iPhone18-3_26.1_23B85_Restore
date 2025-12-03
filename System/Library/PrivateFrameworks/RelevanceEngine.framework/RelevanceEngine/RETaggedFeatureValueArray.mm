@interface RETaggedFeatureValueArray
- (BOOL)isEqual:(id)equal;
- (RETaggedFeatureValueArray)initWithCapacity:(unint64_t)capacity;
- (RETaggedFeatureValueArray)initWithFeatureValues:(id)values;
- (RETaggedFeatureValueArray)initWithValues:(unint64_t *)values count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)count;
- (unint64_t)featureValueAtIndex:(unint64_t)index;
- (unint64_t)firstFeatureValue;
- (unint64_t)hash;
- (unint64_t)lastFeatureValue;
- (void)addFeatureValue:(unint64_t)value;
- (void)dealloc;
- (void)enumerateFeatureValuesUsingBlock:(id)block;
- (void)insertFeatureValue:(unint64_t)value atIndex:(unint64_t)index;
- (void)removeAllFeatureValues;
- (void)removeFeatureValueAtIndex:(unint64_t)index;
- (void)replaceFeatureValueAtIndex:(unint64_t)index withValue:(unint64_t)value;
@end

@implementation RETaggedFeatureValueArray

- (RETaggedFeatureValueArray)initWithCapacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = RETaggedFeatureValueArray;
  v4 = [(RETaggedFeatureValueArray *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_array = CFArrayCreateMutable(*MEMORY[0x277CBECE8], capacity, &kTaggedFeatureValueCallbacks);
  }

  return v5;
}

- (RETaggedFeatureValueArray)initWithFeatureValues:(id)values
{
  v19 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v5 = -[RETaggedFeatureValueArray initWithCapacity:](self, "initWithCapacity:", [valuesCopy count]);
  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = valuesCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = RECreateFeatureValueTaggedPointer(*(*(&v14 + 1) + 8 * v10));
          [(RETaggedFeatureValueArray *)v5 addFeatureValue:v11, v14];
          REReleaseFeatureValueTaggedPointer(v11);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (RETaggedFeatureValueArray)initWithValues:(unint64_t *)values count:(unint64_t)count
{
  countCopy = count;
  v6 = [(RETaggedFeatureValueArray *)self initWithCapacity:count];
  if (v6 && countCopy)
  {
    do
    {
      v7 = *values++;
      [(RETaggedFeatureValueArray *)v6 addFeatureValue:v7];
      --countCopy;
    }

    while (countCopy);
  }

  return v6;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  CFRelease(self->_array);
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = RETaggedFeatureValueArray;
  [(RETaggedFeatureValueArray *)&v3 dealloc];
}

- (unint64_t)hash
{
  os_unfair_lock_lock(&self->_lock);
  v3 = CFHash(self->_array);
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      os_unfair_lock_lock(&self->_lock);
      array = self->_array;
      v7 = v5->_array;

      v8 = CFEqual(array, v7) != 0;
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  _locked_count = [(RETaggedFeatureValueArray *)self _locked_count];
  os_unfair_lock_unlock(&self->_lock);
  return _locked_count;
}

- (unint64_t)featureValueAtIndex:(unint64_t)index
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RETaggedFeatureValueArray *)self _locked_featureValueAtIndex:index];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)addFeatureValue:(unint64_t)value
{
  os_unfair_lock_lock(&self->_lock);
  CFArrayAppendValue(self->_array, value);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)insertFeatureValue:(unint64_t)value atIndex:(unint64_t)index
{
  os_unfair_lock_lock(&self->_lock);
  CFArrayInsertValueAtIndex(self->_array, index, value);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeFeatureValueAtIndex:(unint64_t)index
{
  os_unfair_lock_lock(&self->_lock);
  CFArrayRemoveValueAtIndex(self->_array, index);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllFeatureValues
{
  os_unfair_lock_lock(&self->_lock);
  CFArrayRemoveAllValues(self->_array);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)replaceFeatureValueAtIndex:(unint64_t)index withValue:(unint64_t)value
{
  os_unfair_lock_lock(&self->_lock);
  CFArraySetValueAtIndex(self->_array, index, value);

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)firstFeatureValue
{
  os_unfair_lock_lock(&self->_lock);
  if ([(RETaggedFeatureValueArray *)self _locked_count])
  {
    v3 = [(RETaggedFeatureValueArray *)self _locked_featureValueAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)lastFeatureValue
{
  os_unfair_lock_lock(&self->_lock);
  _locked_count = [(RETaggedFeatureValueArray *)self _locked_count];
  if (_locked_count)
  {
    v4 = [(RETaggedFeatureValueArray *)self _locked_featureValueAtIndex:_locked_count - 1];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)enumerateFeatureValuesUsingBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  v6[1] = 0;
  v6[0] = MEMORY[0x22AABC5E0](blockCopy);
  array = self->_array;
  v7.length = [(RETaggedFeatureValueArray *)self _locked_count];
  v7.location = 0;
  CFArrayApplyFunction(array, v7, kTaggedFeatureCFApplier, v6);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RETaggedFeatureValueArray_copyWithZone___block_invoke;
  v7[3] = &unk_2785FBCA0;
  v5 = v4;
  v8 = v5;
  [(RETaggedFeatureValueArray *)self enumerateFeatureValuesUsingBlock:v7];

  return v5;
}

@end