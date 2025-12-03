@interface VKARWalkingFeatureSet
- (BOOL)isEqual:(id)equal;
- (VKARWalkingFeatureSet)initWithFeatures:(id)features;
- (id).cxx_construct;
- (id)description;
- (int64_t)state;
- (void)_stateWillChangeFromState:(int64_t)state nextState:(int64_t)nextState;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setState:(int64_t)state;
@end

@implementation VKARWalkingFeatureSet

- (id).cxx_construct
{
  *(self + 1) = &unk_1F2A4C2E8;
  *(self + 2) = 0;
  *(self + 6) = &unk_1F2A20388;
  *(self + 7) = 0;
  *(self + 9) = 850045863;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 16) = 0;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = *(self + 5) - 1;
  if (v7 > 4)
  {
    v8 = @"VKARWalkingFeatureSetStateNone";
  }

  else
  {
    v8 = off_1E7B38700[v7];
  }

  v9 = [v3 stringWithFormat:@"<%@: %p uniqueIdentifier:%llu state:%@ features:%@>", v5, self, *(self + 4), v8, *(self + 2)];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      features = [(VKARWalkingFeatureSet *)self features];
      features2 = [(VKARWalkingFeatureSet *)v7 features];

      if (features == features2)
      {
        v6 = 1;
      }

      else
      {
        v10 = MEMORY[0x1E695DFD8];
        features3 = [(VKARWalkingFeatureSet *)self features];
        v12 = [v10 setWithArray:features3];

        v13 = MEMORY[0x1E695DFD8];
        features4 = [(VKARWalkingFeatureSet *)v7 features];
        v15 = [v13 setWithArray:features4];

        v6 = [v12 isEqualToSet:v15];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  std::mutex::lock((self + 72));
  [*(self + 7) removeObject:observerCopy];
  std::mutex::unlock((self + 72));
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  std::mutex::lock((self + 72));
  [*(self + 7) addObject:observerCopy];
  std::mutex::unlock((self + 72));
}

- (void)_stateWillChangeFromState:(int64_t)state nextState:(int64_t)nextState
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(self + 7);
  v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    v9 = MEMORY[0x1E69E96A0];
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __61__VKARWalkingFeatureSet__stateWillChangeFromState_nextState___block_invoke;
        block[3] = &unk_1E7B386E0;
        block[4] = v11;
        block[5] = self;
        block[6] = state;
        block[7] = nextState;
        dispatch_async(v9, block);
        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)setState:(int64_t)state
{
  std::mutex::lock((self + 72));
  v5 = *(self + 5);
  if (v5 != state)
  {
    [(VKARWalkingFeatureSet *)self _stateWillChangeFromState:v5 nextState:state];
    *(self + 5) = state;
  }

  std::mutex::unlock((self + 72));
}

- (int64_t)state
{
  std::mutex::lock((self + 72));
  v3 = *(self + 5);
  std::mutex::unlock((self + 72));
  return v3;
}

- (VKARWalkingFeatureSet)initWithFeatures:(id)features
{
  featuresCopy = features;
  v11.receiver = self;
  v11.super_class = VKARWalkingFeatureSet;
  v5 = [(VKARWalkingFeatureSet *)&v11 init];
  v6 = v5;
  if (v5)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v5 + 8, featuresCopy);
    *(v6 + 4) = atomic_fetch_add(&nextIdentifier(void)::key, 1uLL) + 1;
    *(v6 + 5) = 0;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = v7;
    objc_storeStrong(v6 + 7, v7);

    v9 = v6;
  }

  return v6;
}

@end