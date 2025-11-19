@interface ATXModeFeatureSet
- (ATXModeFeatureSet)init;
- (ATXModeFeatureSet)initWithCoder:(id)a3;
- (ATXModeFeatureSet)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_enumerateFeaturesUsingBlock:(id)a3;
- (void)mergeWithFeatures:(id)a3;
@end

@implementation ATXModeFeatureSet

- (ATXModeFeatureSet)init
{
  v7.receiver = self;
  v7.super_class = ATXModeFeatureSet;
  v2 = [(ATXModeFeatureSet *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    features = v2->_features;
    v2->_features = v3;

    v5 = v2;
  }

  return v2;
}

- (ATXModeFeatureSet)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ATXModeFeatureSet;
  v5 = [(ATXModeFeatureSet *)&v10 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    features = v5->_features;
    v5->_features = v6;

    v8 = v5;
  }

  return v5;
}

- (void)_enumerateFeaturesUsingBlock:(id)a3
{
  v4 = a3;
  features = self->_features;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ATXModeFeatureSet__enumerateFeaturesUsingBlock___block_invoke;
  v7[3] = &unk_279AB8290;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)features enumerateKeysAndObjectsUsingBlock:v7];
}

void __50__ATXModeFeatureSet__enumerateFeaturesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  (*(v6 + 16))(v6, [a2 intValue], v7, a4);
}

- (void)mergeWithFeatures:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__ATXModeFeatureSet_mergeWithFeatures___block_invoke;
  v3[3] = &unk_279AB82B8;
  v3[4] = self;
  [a3 _enumerateFeaturesUsingBlock:v3];
}

void __39__ATXModeFeatureSet_mergeWithFeatures___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setValue:v5 forFeatureType:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setString:v5 forFeatureType:a2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) setNullForFeatureType:a2];
      }
    }
  }
}

- (id)dictionaryRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = objc_opt_new();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ATXModeFeatureSet_dictionaryRepresentation__block_invoke;
  v5[3] = &unk_279AB82E0;
  v5[4] = &v6;
  [(ATXModeFeatureSet *)self _enumerateFeaturesUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__ATXModeFeatureSet_dictionaryRepresentation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 copy];
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (a2 >= 0x1D)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a2];
  }

  else
  {
    v6 = off_279AB8300[a2];
  }

  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ATXModeFeatureSet *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (ATXModeFeatureSet)initWithCoder:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"fs"];

  if (!v10)
  {
    v12 = [v4 error];

    if (v12)
    {
      v13 = __atxlog_handle_modes();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ATXModeFeatureSet *)v4 initWithCoder:v13];
      }

      goto LABEL_10;
    }

    v22 = [v4 containsValueForKey:@"fs"];
    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = *MEMORY[0x277CCA450];
    if (v22)
    {
      v29 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"archive contains illegal nil value for key %@", @"fs"];
      v30[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v17 = v23;
      v18 = -1;
    }

    else
    {
      v27 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ not present", @"fs"];
      v28 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v17 = v23;
      v18 = -2;
    }

LABEL_9:
    v19 = [v17 initWithDomain:@"com.apple.duetexpertd.modes" code:v18 userInfo:v16];

    [v4 failWithError:v19];
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ maps to unexpected class", @"fs"];
    v26 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v17 = v14;
    v18 = -3;
    goto LABEL_9;
  }

  self = [(ATXModeFeatureSet *)self initWithDictionary:v10];
  v11 = self;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_260C9F000, a2, OS_LOG_TYPE_ERROR, "ATXModeFeatureSet: error initWithCoder: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end