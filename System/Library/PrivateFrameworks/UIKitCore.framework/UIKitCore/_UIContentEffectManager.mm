@interface _UIContentEffectManager
+ (id)sharedManager;
- (id)compatibleEffectForDescriptor:(id)a3;
- (id)compatibleEffectForKey:(id)a3 descriptor:(id)a4 constructor:(id)a5;
- (id)objectForKeyedSubscript:(id)a3;
- (void)_stopManagingEffect:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation _UIContentEffectManager

+ (id)sharedManager
{
  if (_MergedGlobals_1322 != -1)
  {
    dispatch_once(&_MergedGlobals_1322, &__block_literal_global_594);
  }

  v3 = qword_1ED4A2248;

  return v3;
}

- (id)compatibleEffectForKey:(id)a3 descriptor:(id)a4 constructor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__204;
  v37 = __Block_byref_object_dispose__204;
  v38 = [(_UIContentEffectManager *)self objectForKeyedSubscript:v8];
  v11 = v34[5];
  if (v11)
  {
    goto LABEL_5;
  }

  location = 0;
  p_location = &location;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__204;
  v31 = __Block_byref_object_dispose__204;
  v32 = 0;
  v12 = [(_UIContentEffectManager *)self effects];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73___UIContentEffectManager_compatibleEffectForKey_descriptor_constructor___block_invoke;
  v23[3] = &unk_1E7124CA0;
  v24 = v9;
  v25 = &location;
  v26 = &v33;
  [v12 enumerateKeysAndObjectsUsingBlock:v23];

  if (p_location[5])
  {
    [(_UIContentEffectManager *)self setObject:0 forKeyedSubscript:?];
    [(_UIContentEffectManager *)self setObject:v34[5] forKeyedSubscript:v8];
  }

  _Block_object_dispose(&location, 8);
  v11 = v34[5];
  if (v11)
  {
LABEL_5:
    [v11 setDescriptor:v9 andKey:v8];
  }

  else
  {
    v15 = v10[2](v10);
    v16 = v34[5];
    v34[5] = v15;

    objc_initWeak(&location, self);
    v17 = v34[5];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __73___UIContentEffectManager_compatibleEffectForKey_descriptor_constructor___block_invoke_2;
    v21 = &unk_1E7124CC8;
    objc_copyWeak(&v22, &location);
    [v17 addCompletion:&v18];
    [(_UIContentEffectManager *)self setObject:v34[5] forKeyedSubscript:v8, v18, v19, v20, v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  v13 = v34[5];
  _Block_object_dispose(&v33, 8);

  return v13;
}

- (id)compatibleEffectForDescriptor:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(_UIContentEffectManager *)self effects];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 descriptor];
        canTransitionBetweenEffects = _canTransitionBetweenEffects(v11, v4);

        if (canTransitionBetweenEffects)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_stopManagingEffect:(id)a3
{
  v4 = a3;
  v5 = [(_UIContentEffectManager *)self effects];
  v7 = [v5 allKeysForObject:v4];

  if ([v7 count])
  {
    v6 = [(_UIContentEffectManager *)self effects];
    [v6 removeObjectsForKeys:v7];
  }
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(_UIContentEffectManager *)self effects];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIContentEffectManager *)self effects];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

@end