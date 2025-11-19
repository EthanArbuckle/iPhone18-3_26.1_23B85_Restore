@interface _UISEMuxGestureFeature
- (_UISEMuxGestureFeature)initWithSettings:(id)a3 createFeatureBlock:(id)a4;
- (id)debugDictionary;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3;
- (void)featureDidChangeState:(id)a3;
@end

@implementation _UISEMuxGestureFeature

- (_UISEMuxGestureFeature)initWithSettings:(id)a3 createFeatureBlock:(id)a4
{
  v13.receiver = self;
  v13.super_class = _UISEMuxGestureFeature;
  v6 = [(_UISEMuxGestureFeature *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    v8 = _Block_copy(a4);
    createFeatureBlock = v7->_createFeatureBlock;
    v7->_createFeatureBlock = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    subfeatures = v7->_subfeatures;
    v7->_subfeatures = v10;

    v7->_fails = 0;
    v7->_recognizes = 0;
  }

  return v7;
}

- (void)featureDidChangeState:(id)a3
{
  if (![(_UISEGestureFeature *)self state])
  {
    v5 = [a3 state];
    v6 = v5;
    if (v5 == 1)
    {
      v7 = self->_recognizes + 1;
      self->_recognizes = v7;
      v8 = [(_UISEGestureFeatureSettings *)self->_settings minimumNumberOfSubfeatures];
    }

    else
    {
      if (v5 != 2)
      {
        return;
      }

      v7 = self->_fails + 1;
      self->_fails = v7;
      v8 = [(NSMutableDictionary *)self->_subfeatures count];
    }

    if (v7 >= v8)
    {

      [(_UISEGestureFeature *)self _setState:v6];
    }
  }
}

- (id)debugDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  subfeatures = self->_subfeatures;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41___UISEMuxGestureFeature_debugDictionary__block_invoke;
  v10[3] = &unk_1E710AF50;
  v11 = v3;
  v5 = v3;
  [(NSMutableDictionary *)subfeatures enumerateKeysAndObjectsUsingBlock:v10];
  v9.receiver = self;
  v9.super_class = _UISEMuxGestureFeature;
  v6 = [(_UISEGestureFeature *)&v9 debugDictionary];
  v7 = [v6 mutableCopy];

  [v7 setObject:v5 forKeyedSubscript:@"subfeatures"];

  return v7;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3->var4];
  v5 = [(NSMutableDictionary *)self->_subfeatures objectForKeyedSubscript:?];
  if (!v5)
  {
    v5 = (*(self->_createFeatureBlock + 2))();
    [v5 setDelegate:self];
    [(NSMutableDictionary *)self->_subfeatures setObject:v5 forKeyedSubscript:v6];
  }

  [v5 incorporateSample:a3];
}

@end