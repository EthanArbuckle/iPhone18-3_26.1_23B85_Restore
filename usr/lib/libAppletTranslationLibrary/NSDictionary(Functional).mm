@interface NSDictionary(Functional)
- (id)filter:()Functional;
- (id)map:()Functional;
@end

@implementation NSDictionary(Functional)

- (id)filter:()Functional
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__NSDictionary_Functional__filter___block_invoke;
  v8[3] = &unk_278874860;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)map:()Functional
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__NSDictionary_Functional__map___block_invoke;
  v8[3] = &unk_278874860;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

@end