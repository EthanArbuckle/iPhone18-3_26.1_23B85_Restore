@interface _UISEHybridEdgesFailGestureFeature
- (_UISEHybridEdgesFailGestureFeature)initWithSubfeatures:(id)a3;
- (id)debugDictionary;
- (unint64_t)touchedEdges;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3;
- (void)featureDidChangeState:(id)a3;
@end

@implementation _UISEHybridEdgesFailGestureFeature

- (_UISEHybridEdgesFailGestureFeature)initWithSubfeatures:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = _UISEHybridEdgesFailGestureFeature;
  v4 = [(_UISEHybridEdgesFailGestureFeature *)&v16 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_subfeatures, a3);
    v5->_fails = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = a3;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) setDelegate:{v5, v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (unint64_t)touchedEdges
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_subfeatures;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) touchedEdges];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)featureDidChangeState:(id)a3
{
  if ([a3 state] == 2)
  {
    v4 = self->_fails + 1;
    self->_fails = v4;
    if (v4 == [(NSArray *)self->_subfeatures count])
    {

      [(_UISEGestureFeature *)self _setState:2];
    }
  }
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

        v9 = [*(*(&v14 + 1) + 8 * i) debugDictionary];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13.receiver = self;
  v13.super_class = _UISEHybridEdgesFailGestureFeature;
  v10 = [(_UISEGestureFeature *)&v13 debugDictionary];
  v11 = [v10 mutableCopy];

  [v11 setObject:v3 forKeyedSubscript:@"subfeatures"];

  return v11;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3
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

      [v10 incorporateSample:a3];
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