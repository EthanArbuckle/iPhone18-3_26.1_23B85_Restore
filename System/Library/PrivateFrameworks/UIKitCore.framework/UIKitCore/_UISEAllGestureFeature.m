@interface _UISEAllGestureFeature
- (_UISEAllGestureFeature)initWithSubfeatures:(id)a3;
- (id)debugDictionary;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3;
- (void)featureDidChangeState:(id)a3;
@end

@implementation _UISEAllGestureFeature

- (_UISEAllGestureFeature)initWithSubfeatures:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _UISEAllGestureFeature;
  v4 = [(_UISEAllGestureFeature *)&v18 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_subfeatures, a3);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = a3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
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

          [*(*(&v14 + 1) + 8 * v10++) setDelegate:{v5, v14}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    v11 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(v6, "count")}];
    unrecognizedIndexes = v5->_unrecognizedIndexes;
    v5->_unrecognizedIndexes = v11;
  }

  return v5;
}

- (void)featureDidChangeState:(id)a3
{
  if (![(_UISEGestureFeature *)self state])
  {
    v5 = [a3 state];
    if (v5 == 1)
    {
      v8 = [(NSArray *)self->_subfeatures indexOfObject:a3];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }

      [(NSMutableIndexSet *)self->_unrecognizedIndexes removeIndex:v8];
      if ([(NSMutableIndexSet *)self->_unrecognizedIndexes count])
      {
        return;
      }

      v6 = self;
      v7 = 1;
    }

    else
    {
      if (v5 != 2)
      {
        return;
      }

      v6 = self;
      v7 = 2;
    }

    [(_UISEGestureFeature *)v6 _setState:v7];
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
  v13.super_class = _UISEAllGestureFeature;
  v10 = [(_UISEGestureFeature *)&v13 debugDictionary];
  v11 = [v10 mutableCopy];

  [v11 setObject:v3 forKeyedSubscript:@"subfeatures"];

  return v11;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  var0 = a3->var0;
  if (a3->var0)
  {
    v6 = var0 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_subfeatures;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
LABEL_8:
      v11 = 0;
      while (1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if ([(_UISEGestureFeature *)self state])
        {
          break;
        }

        [v12 incorporateSample:a3];
        if (v9 == ++v11)
        {
          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }
  }

  else if (var0 == 1 && ![(_UISEGestureFeature *)self state])
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v14 = [(NSMutableIndexSet *)self->_unrecognizedIndexes firstIndex];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL || v14 == v13)
      {
        break;
      }

      v16 = v14;
      v17 = [(NSArray *)self->_subfeatures objectAtIndexedSubscript:v14];
      [v17 incorporateSample:a3];

      v13 = v16;
    }

    while (![(_UISEGestureFeature *)self state]);
  }
}

@end