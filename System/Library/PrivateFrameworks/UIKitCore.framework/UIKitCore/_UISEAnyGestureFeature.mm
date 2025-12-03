@interface _UISEAnyGestureFeature
- (_UISEAnyGestureFeature)initWithSubfeatures:(id)subfeatures;
- (id)debugDictionary;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
- (void)featureDidChangeState:(id)state;
@end

@implementation _UISEAnyGestureFeature

- (_UISEAnyGestureFeature)initWithSubfeatures:(id)subfeatures
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = _UISEAnyGestureFeature;
  v4 = [(_UISEAnyGestureFeature *)&v16 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_subfeatures, subfeatures);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    subfeaturesCopy = subfeatures;
    v7 = [subfeaturesCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(subfeaturesCopy);
          }

          [*(*(&v12 + 1) + 8 * v10++) setDelegate:{v5, v12}];
        }

        while (v8 != v10);
        v8 = [subfeaturesCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (void)featureDidChangeState:(id)state
{
  state = [state state];

  [(_UISEGestureFeature *)self _setState:state];
}

- (id)debugDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_subfeatures;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        debugDictionary = [*(*(&v14 + 1) + 8 * i) debugDictionary];
        [v3 addObject:debugDictionary];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13.receiver = self;
  v13.super_class = _UISEAnyGestureFeature;
  debugDictionary2 = [(_UISEGestureFeature *)&v13 debugDictionary];
  v11 = [debugDictionary2 mutableCopy];

  [v11 setObject:v3 forKeyedSubscript:@"subfeatures"];

  return v11;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_subfeatures;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v11 + 1) + 8 * v9);
      if ([(_UISEGestureFeature *)self state])
      {
        break;
      }

      [v10 incorporateSample:sample];
      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end