@interface PPBaseScoreInputSet
- (PPBaseScoreInputSet)init;
- (unint64_t)indexForArrayScoreName:(id)a3;
- (unint64_t)indexForObjectScoreName:(id)a3;
- (unint64_t)indexForScalarScoreName:(id)a3;
@end

@implementation PPBaseScoreInputSet

- (unint64_t)indexForObjectScoreName:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9728;
  v18 = __Block_byref_object_dispose__9729;
  v19 = 0;
  objectMap = self->_objectMap;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__PPBaseScoreInputSet_indexForObjectScoreName___block_invoke;
  v11[3] = &unk_278974EA0;
  v11[4] = self;
  v13 = &v14;
  v6 = v4;
  v12 = v6;
  [(_PASLock *)objectMap runWithLockAcquired:v11];
  v7 = v15[5];
  if (v7)
  {
    v8 = [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = [(PPBaseScoreInputSet *)self undefinedObjectScoreIndex];
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __47__PPBaseScoreInputSet_indexForObjectScoreName___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if (![v13 count])
  {
    v3 = [*(a1 + 32) objectScoreIndexUpperBound];
    v4 = [*(a1 + 32) minObjectScoreIndex];
    v5 = [*(a1 + 32) undefinedObjectScoreIndex];
    if (v4 < v3)
    {
      do
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
        v7 = [*(a1 + 32) nameForObjectScoreIndex:v4];
        [v13 setObject:v6 forKeyedSubscript:v7];

        ++v4;
      }

      while (v3 != v4);
    }

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v9 = [*(a1 + 32) nameForObjectScoreIndex:v5];
    [v13 setObject:v8 forKeyedSubscript:v9];
  }

  v10 = [v13 objectForKeyedSubscript:*(a1 + 40)];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (unint64_t)indexForArrayScoreName:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9728;
  v18 = __Block_byref_object_dispose__9729;
  v19 = 0;
  arrayMap = self->_arrayMap;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__PPBaseScoreInputSet_indexForArrayScoreName___block_invoke;
  v11[3] = &unk_278974EA0;
  v11[4] = self;
  v13 = &v14;
  v6 = v4;
  v12 = v6;
  [(_PASLock *)arrayMap runWithLockAcquired:v11];
  v7 = v15[5];
  if (v7)
  {
    v8 = [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = [(PPBaseScoreInputSet *)self undefinedArrayScoreIndex];
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __46__PPBaseScoreInputSet_indexForArrayScoreName___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if (![v13 count])
  {
    v3 = [*(a1 + 32) arrayScoreIndexUpperBound];
    v4 = [*(a1 + 32) minArrayScoreIndex];
    v5 = [*(a1 + 32) undefinedArrayScoreIndex];
    if (v4 < v3)
    {
      do
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
        v7 = [*(a1 + 32) nameForArrayScoreIndex:v4];
        [v13 setObject:v6 forKeyedSubscript:v7];

        ++v4;
      }

      while (v3 != v4);
    }

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v9 = [*(a1 + 32) nameForArrayScoreIndex:v5];
    [v13 setObject:v8 forKeyedSubscript:v9];
  }

  v10 = [v13 objectForKeyedSubscript:*(a1 + 40)];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (unint64_t)indexForScalarScoreName:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9728;
  v18 = __Block_byref_object_dispose__9729;
  v19 = 0;
  scalarMap = self->_scalarMap;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__PPBaseScoreInputSet_indexForScalarScoreName___block_invoke;
  v11[3] = &unk_278974EA0;
  v11[4] = self;
  v13 = &v14;
  v6 = v4;
  v12 = v6;
  [(_PASLock *)scalarMap runWithLockAcquired:v11];
  v7 = v15[5];
  if (v7)
  {
    v8 = [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = [(PPBaseScoreInputSet *)self undefinedScalarScoreIndex];
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __47__PPBaseScoreInputSet_indexForScalarScoreName___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if (![v13 count])
  {
    v3 = [*(a1 + 32) scalarScoreIndexUpperBound];
    v4 = [*(a1 + 32) minScalarScoreIndex];
    v5 = [*(a1 + 32) undefinedScalarScoreIndex];
    if (v4 < v3)
    {
      do
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
        v7 = [*(a1 + 32) nameForScalarScoreIndex:v4];
        [v13 setObject:v6 forKeyedSubscript:v7];

        ++v4;
      }

      while (v3 != v4);
    }

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v9 = [*(a1 + 32) nameForScalarScoreIndex:v5];
    [v13 setObject:v8 forKeyedSubscript:v9];
  }

  v10 = [v13 objectForKeyedSubscript:*(a1 + 40)];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (PPBaseScoreInputSet)init
{
  v16.receiver = self;
  v16.super_class = PPBaseScoreInputSet;
  v2 = [(PPBaseScoreInputSet *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    scalarMap = v2->_scalarMap;
    v2->_scalarMap = v5;

    v7 = objc_alloc(MEMORY[0x277D425F8]);
    v8 = objc_opt_new();
    v9 = [v7 initWithGuardedData:v8];
    arrayMap = v2->_arrayMap;
    v2->_arrayMap = v9;

    v11 = objc_alloc(MEMORY[0x277D425F8]);
    v12 = objc_opt_new();
    v13 = [v11 initWithGuardedData:v12];
    objectMap = v2->_objectMap;
    v2->_objectMap = v13;
  }

  return v2;
}

@end