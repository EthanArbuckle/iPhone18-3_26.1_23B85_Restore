@interface SHRecorderConfiguration
- (SHRecorderConfiguration)initWithPromise:(id)a3;
- (SHRecorderConfiguration)initWithValues:(id)a3;
- (id)cacheValuesForIdentifier:(id)a3;
- (unint64_t)availableRecordersForClientIdentifier:(id)a3;
@end

@implementation SHRecorderConfiguration

- (unint64_t)availableRecordersForClientIdentifier:(id)a3
{
  v3 = [(SHRecorderConfiguration *)self cacheValuesForIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 containsObject:@"internal"];
    v6 = [v4 containsObject:@"external"];
    v7 = [v4 containsObject:@"musical-features-internal"];
    v8 = [v4 containsObject:@"musical-features-external"];
    v9 = v5;
    if (v6)
    {
      v9 = v5 | 2;
    }

    if (v7)
    {
      v9 |= 4uLL;
    }

    if (v8)
    {
      v10 = v9 | 8;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 15;
  }

  return v10;
}

- (id)cacheValuesForIdentifier:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"recorders", a3];
  v5 = [(SHRecorderConfiguration *)self cacheValues];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(SHRecorderConfiguration *)self cacheValues];
    v8 = [v9 objectForKeyedSubscript:@"recorders"];
  }

  return v8;
}

- (SHRecorderConfiguration)initWithValues:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHRecorderConfiguration;
  v6 = [(SHRecorderConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheValues, a3);
  }

  return v7;
}

- (SHRecorderConfiguration)initWithPromise:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SHRecorderConfiguration;
  v6 = [(SHRecorderConfiguration *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_promise, a3);
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy_;
    v11[4] = __Block_byref_object_dispose_;
    v12 = v7;
    promise = v7->_promise;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__SHRecorderConfiguration_initWithPromise___block_invoke;
    v10[3] = &unk_2788FB048;
    v10[4] = v11;
    [(AMSPromise *)promise addSuccessBlock:v10];
    _Block_object_dispose(v11, 8);
  }

  return v7;
}

void __43__SHRecorderConfiguration_initWithPromise___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    v9 = v3;
    v5 = v3;
    v6 = v4[1];
    v4[1] = v5;
    v7 = v4;

    v8 = v7[2];
    v7[2] = 0;

    v3 = v9;
  }
}

@end