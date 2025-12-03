@interface PETAggregateState
+ (unsigned)hashForString:(id)string;
- (BOOL)checkIntegrity;
- (PETAggregateState)initWithPath:(id)path;
- (PETAggregateState)initWithStorage:(id)storage;
- (id)description;
- (id)initInMemory;
- (void)enumerateAndResetCounters:(id)counters distributions:(id)distributions;
- (void)enumerateCounters:(id)counters distributions:(id)distributions;
- (void)incrementCounterBy:(double)by forKey:(const void *)key keyLength:(unsigned __int16)length;
- (void)incrementCounterBy:(double)by forKey:(id)key;
- (void)updateCounterTo:(double)to forKey:(const void *)key keyLength:(unsigned __int16)length;
- (void)updateCounterTo:(double)to forKey:(id)key;
- (void)updateDistributionWithValue:(double)value forKey:(const void *)key keyLength:(unsigned __int16)length maxSampleSize:(unsigned __int16)size;
- (void)updateDistributionWithValue:(double)value forKey:(id)key maxSampleSize:(unsigned __int16)size;
@end

@implementation PETAggregateState

- (BOOL)checkIntegrity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  storage = self->_storage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PETAggregateState_checkIntegrity__block_invoke;
  v5[3] = &unk_1E86C2A80;
  v5[4] = self;
  v5[5] = &v6;
  [(PETAggregateStateStorage *)storage runWithLock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return (v3 & 1) == 0;
}

uint64_t __35__PETAggregateState_checkIntegrity__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  while (2)
  {
    result = getBucketPtr(a2, a3, 4 * v6, *(*(a1 + 32) + 8));
    while (result != -1)
    {
      v8 = result + 10;
      if (v8 <= a3)
      {
        v9 = (a2 + result);
        if (*v9 == 228)
        {
          v10 = v8 + *(v9 + 2) + *(v9 + 1) > a3 || result >= *(v9 + 6);
          result = *(v9 + 6);
          if (!v10)
          {
            continue;
          }
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      return result;
    }

    if (++v6 != 256)
    {
      continue;
    }

    break;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendString:@"Stat aggregation store\n======================\n"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__PETAggregateState_description__block_invoke;
  v10[3] = &unk_1E86C2A30;
  v11 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__PETAggregateState_description__block_invoke_2;
  v8[3] = &unk_1E86C2A58;
  v4 = v11;
  v9 = v4;
  [(PETAggregateState *)self enumerateCounters:v10 distributions:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __32__PETAggregateState_description__block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, double a4)
{
  v5 = *(a1 + 32);
  v6 = displayStringForKey(a2, a3);
  [v5 appendFormat:@"\nCOUNTER '%@': %g\n", v6, *&a4];
}

uint64_t __32__PETAggregateState_description__block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned __int16 *a8, double a9, double a10, double a11, double a12)
{
  v22 = a6;
  if (a6 < 1)
  {
    v23 = 0;
  }

  else
  {
    LODWORD(v23) = 0;
    v24 = a8;
    v25 = a6;
    do
    {
      v26 = *v24++;
      v23 = (v23 + v26);
      --v25;
    }

    while (v25);
  }

  v27 = *(a1 + 32);
  v28 = displayStringForKey(a2, a3);
  [v27 appendFormat:@"\nDISTRIBUTION '%@' (sampled %i of %u from %u observations)\n", v28, v23, a4, a5];

  [*(a1 + 32) appendFormat:@"    mean: %g\n    std. dev: %g\n    range: [%g, %g]\n    samples: [", *&a9, sqrt(a10), *&a11, *&a12];
  if (a6 >= 1)
  {
    v29 = 0;
    do
    {
      if (a8[v29])
      {
        v30 = 0;
        do
        {
          [*(a1 + 32) appendFormat:@"%g, ", *(*(a7 + 8 * v29) + 8 * v30++)];
        }

        while (v30 < a8[v29]);
      }

      ++v29;
    }

    while (v29 != v22);
  }

  if (v23)
  {
    [*(a1 + 32) deleteCharactersInRange:{objc_msgSend(*(a1 + 32), "length") - 2, 2}];
  }

  v31 = *(a1 + 32);

  return [v31 appendString:@"]\n"];
}

- (void)enumerateAndResetCounters:(id)counters distributions:(id)distributions
{
  countersCopy = counters;
  distributionsCopy = distributions;
  storage = self->_storage;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PETAggregateState_enumerateAndResetCounters_distributions___block_invoke;
  v11[3] = &unk_1E86C2A08;
  v11[4] = self;
  v12 = countersCopy;
  v13 = distributionsCopy;
  v9 = distributionsCopy;
  v10 = countersCopy;
  [(PETAggregateStateStorage *)storage expand:0 andRunWithLock:v11];
}

uint64_t __61__PETAggregateState_enumerateAndResetCounters_distributions___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  for (i = 0; i != 1024; i += 4)
  {
    BucketPtr = getBucketPtr(a2, a3, i, *(*(a1 + 32) + 8));
    enumerateChain(a2, a3, BucketPtr, *(a1 + 40), *(a1 + 48), *(*(a1 + 32) + 8));
  }

  *a5 = 1;
  return 0;
}

- (void)enumerateCounters:(id)counters distributions:(id)distributions
{
  countersCopy = counters;
  distributionsCopy = distributions;
  storage = self->_storage;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PETAggregateState_enumerateCounters_distributions___block_invoke;
  v11[3] = &unk_1E86C29E0;
  v11[4] = self;
  v12 = countersCopy;
  v13 = distributionsCopy;
  v9 = distributionsCopy;
  v10 = countersCopy;
  [(PETAggregateStateStorage *)storage runWithLock:v11];
}

void __53__PETAggregateState_enumerateCounters_distributions___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    BucketPtr = getBucketPtr(a2, a3, i, *(*(a1 + 32) + 8));
    enumerateChain(a2, a3, BucketPtr, *(a1 + 40), *(a1 + 48), *(*(a1 + 32) + 8));
  }
}

- (void)updateDistributionWithValue:(double)value forKey:(id)key maxSampleSize:(unsigned __int16)size
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PETAggregateState_updateDistributionWithValue_forKey_maxSampleSize___block_invoke;
  v5[3] = &unk_1E86C29B8;
  v5[4] = self;
  *&v5[5] = value;
  sizeCopy = size;
  callWithHashableBytesOfString(key, v5);
}

- (void)updateCounterTo:(double)to forKey:(id)key
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__PETAggregateState_updateCounterTo_forKey___block_invoke;
  v4[3] = &unk_1E86C2990;
  v4[4] = self;
  *&v4[5] = to;
  callWithHashableBytesOfString(key, v4);
}

- (void)incrementCounterBy:(double)by forKey:(id)key
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PETAggregateState_incrementCounterBy_forKey___block_invoke;
  v4[3] = &unk_1E86C2990;
  v4[4] = self;
  *&v4[5] = by;
  callWithHashableBytesOfString(key, v4);
}

- (void)updateDistributionWithValue:(double)value forKey:(const void *)key keyLength:(unsigned __int16)length maxSampleSize:(unsigned __int16)size
{
  storage = self->_storage;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__PETAggregateState_updateDistributionWithValue_forKey_keyLength_maxSampleSize___block_invoke;
  v8[3] = &unk_1E86C2940;
  sizeCopy = size;
  v8[4] = self;
  *&v8[5] = value;
  if (length)
  {
    v7 = 2048;
  }

  else
  {
    v7 = 48;
  }

  lookupBlockCreatingIfNotExists(storage, key, length, 2, v7, v8);
}

uint64_t __80__PETAggregateState_updateDistributionWithValue_forKey_keyLength_maxSampleSize___block_invoke(uint64_t a1, char a2, unsigned __int16 *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v7 = *(a1 + 48);
  if (*(a1 + 48))
  {
    if (v7 >= 0xFB)
    {
      LOWORD(v7) = 255 * ((16843010 * ((v7 - 250) + 254)) >> 32) + 250;
    }

    else
    {
      LOWORD(v7) = 250;
    }
  }

  if (a2)
  {
    v8 = 0;
    v9 = 0x4597AFFEFFFFFFFFLL;
    v10 = 1;
    v11 = 0.0;
    v12 = NAN;
    v13 = NAN;
    v14 = 0.0;
  }

  else
  {
    if (*a3 != v7)
    {
      goto LABEL_36;
    }

    v9 = *(a3 + 5);
    if (HIDWORD(v9) != 1167568894)
    {
      goto LABEL_36;
    }

    v8 = a3[1];
    v14 = *(a3 + 1);
    v11 = *(a3 + 2);
    v13 = *(a3 + 3);
    v12 = *(a3 + 4);
    v10 = *(a3 + 1) + 1;
  }

  v15 = *(a1 + 40);
  v16 = v14 + (v15 - v14) / v10;
  v17 = v11 + (v15 - v14) * (v15 - v16);
  if (v13 <= v15)
  {
    v18 = v13;
  }

  else
  {
    v18 = *(a1 + 40);
  }

  if (v12 < v15)
  {
    v12 = *(a1 + 40);
  }

  if (!v7)
  {
    result = 0;
    *a3 = 0;
LABEL_35:
    a3[1] = v8;
    *(a3 + 1) = v10;
    *(a3 + 1) = v16;
    *(a3 + 2) = v17;
    *(a3 + 3) = v18;
    *(a3 + 4) = v12;
    *(a3 + 5) = v9;
    return result;
  }

  if (v10 <= v7)
  {
    LOWORD(v24) = v10 - 1;
    ++v8;
  }

  else
  {
    v19 = *(a1 + 32);
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v22 = v21 + v20;
    v23 = v21 ^ v20;
    *(v19 + 16) = __ROR8__(v20, 9) ^ (v23 << 14) ^ v23;
    *(v19 + 24) = __ROR8__(v23, 28);
    v24 = v22 % v10;
    if (v24 >= v7)
    {
      result = 0;
LABEL_34:
      *a3 = v7;
      goto LABEL_35;
    }
  }

  if (v24 <= 0xF9u)
  {
    result = 0;
    *&a3[4 * v24 + 24] = v15;
    goto LABEL_34;
  }

  v26 = v24 - 250;
  v27 = v9;
  if (v9 == -1)
  {
    LODWORD(v29) = a3 + 40;
LABEL_31:
    if (v26 < 0xFF)
    {
      *a4 = 0xE47F4EAAFFFFFFFFLL;
      a4[v26 + 1] = *(a1 + 40);
      *a3 = v7;
      a3[1] = v8;
      *(a3 + 1) = v10;
      *(a3 + 1) = v16;
      *(a3 + 2) = v17;
      *(a3 + 3) = v18;
      *(a3 + 4) = v12;
      *(a3 + 5) = v9;
      setBucketPtr(a5, a6, v29 - a5, a4 - a5, *(*(a1 + 32) + 8));
      return 1;
    }
  }

  else
  {
    while (1)
    {
      v28 = v27;
      if (v27 + 2048 > a6)
      {
        break;
      }

      v29 = (a5 + v27);
      if (v29[1] != -461418838)
      {
        break;
      }

      if (v26 <= 0xFE)
      {
        result = 0;
        *&v29[2 * v26 + 2] = v15;
        goto LABEL_34;
      }

      v27 = *v29;
      if (v28 >= *v29)
      {
        break;
      }

      v26 -= 255;
      if (v27 == -1)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_36:
  [*(*(a1 + 32) + 8) saveCorruptState];
  result = [*(*(a1 + 32) + 8) resetLocked];
  __break(1u);
  return result;
}

- (void)updateCounterTo:(double)to forKey:(const void *)key keyLength:(unsigned __int16)length
{
  storage = self->_storage;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PETAggregateState_updateCounterTo_forKey_keyLength___block_invoke;
  v6[3] = &__block_descriptor_40_e23_B44__0B8_v12_v20_v28Q36l;
  *&v6[4] = to;
  lookupBlockCreatingIfNotExists(storage, key, length, 1, 8u, v6);
}

- (void)incrementCounterBy:(double)by forKey:(const void *)key keyLength:(unsigned __int16)length
{
  storage = self->_storage;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PETAggregateState_incrementCounterBy_forKey_keyLength___block_invoke;
  v6[3] = &__block_descriptor_40_e23_B44__0B8_v12_v20_v28Q36l;
  *&v6[4] = by;
  lookupBlockCreatingIfNotExists(storage, key, length, 1, 8u, v6);
}

uint64_t __57__PETAggregateState_incrementCounterBy_forKey_keyLength___block_invoke(uint64_t a1, char a2, double *a3)
{
  v3 = 0.0;
  if ((a2 & 1) == 0)
  {
    v3 = *a3;
  }

  *a3 = *(a1 + 32) + v3;
  return 0;
}

- (PETAggregateState)initWithPath:(id)path
{
  v4 = [PETAggregateStateStorage storageOnDisk:path];
  if (v4)
  {
    self = [(PETAggregateState *)self initWithStorage:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v6 = selfCopy;

  return v6;
}

- (id)initInMemory
{
  v3 = +[PETAggregateStateStorage storageInMemory];
  if (v3)
  {
    self = [(PETAggregateState *)self initWithStorage:v3];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v5 = selfCopy;

  return v5;
}

- (PETAggregateState)initWithStorage:(id)storage
{
  storageCopy = storage;
  if (!storageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PETAggregateState.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"storage"}];
  }

  v11.receiver = self;
  v11.super_class = PETAggregateState;
  v7 = [(PETAggregateState *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_storage, storage);
    v8->_rng = xmmword_1DF7521D0;
  }

  return v8;
}

+ (unsigned)hashForString:(id)string
{
  stringCopy = string;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__PETAggregateState_hashForString___block_invoke;
  v6[3] = &unk_1E86C2968;
  v6[4] = &v7;
  callWithHashableBytesOfString(stringCopy, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __35__PETAggregateState_hashForString___block_invoke(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  v3 = 8997;
  if (a3)
  {
    v4 = a3;
    do
    {
      v5 = *a2++;
      v3 = 435 * (v3 ^ v5);
      --v4;
    }

    while (v4);
  }

  *(*(*(result + 32) + 8) + 24) = v3 ^ HIBYTE(v3);
  return result;
}

@end