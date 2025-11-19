@interface _UISEPerTypeEdgesFailGestureFeature
- (_UISEPerTypeEdgesFailGestureFeature)initWithEdgeTypeSubfeatures:(id)a3;
- (id)debugDictionary;
- (unint64_t)touchedEdges;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3;
- (void)featureDidChangeState:(id)a3;
@end

@implementation _UISEPerTypeEdgesFailGestureFeature

- (unint64_t)touchedEdges
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_edgeTypeSubfeatures;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(NSDictionary *)self->_edgeTypeSubfeatures objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i), v11];
        v6 |= [v9 touchedEdges];
      }

      v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_UISEPerTypeEdgesFailGestureFeature)initWithEdgeTypeSubfeatures:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UISEPerTypeEdgesFailGestureFeature;
  v4 = [(_UISEPerTypeEdgesFailGestureFeature *)&v17 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_edgeTypeSubfeatures, a3);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = a3;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v6 objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * v10), v13}];
          [v11 setDelegate:v5];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (void)featureDidChangeState:(id)a3
{
  if ([a3 state] == 2)
  {

    [(_UISEGestureFeature *)self _setState:2];
  }
}

- (id)debugDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_edgeTypeSubfeatures;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_edgeTypeSubfeatures objectForKeyedSubscript:v9];
        v11 = [v10 debugDictionary];
        [v3 setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15.receiver = self;
  v15.super_class = _UISEPerTypeEdgesFailGestureFeature;
  v12 = [(_UISEGestureFeature *)&v15 debugDictionary];
  v13 = [v12 mutableCopy];

  [v13 setObject:v3 forKeyedSubscript:@"edgeTypeSubfeatures"];

  return v13;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3
{
  if (![(_UISEGestureFeature *)self state])
  {
    edgeTypeSubfeatures = self->_edgeTypeSubfeatures;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3->var3];
    v6 = [(NSDictionary *)edgeTypeSubfeatures objectForKeyedSubscript:v7];
    [v6 incorporateSample:a3];
  }
}

@end