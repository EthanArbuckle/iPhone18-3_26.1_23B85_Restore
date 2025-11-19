@interface VCUserDefaults
+ (id)sharedUserDefaults;
- (BOOL)setCodableObject:(id)a3 forKey:(id)a4 error:(id *)a5;
- (id)codableObjectOfClass:(Class)a3 forKey:(id)a4;
@end

@implementation VCUserDefaults

+ (id)sharedUserDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VCUserDefaults_sharedUserDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedUserDefaults_once != -1)
  {
    dispatch_once(&sharedUserDefaults_once, block);
  }

  v2 = sharedUserDefaults_userDefaults;

  return v2;
}

uint64_t __36__VCUserDefaults_sharedUserDefaults__block_invoke(uint64_t a1)
{
  sharedUserDefaults_userDefaults = [objc_alloc(*(a1 + 32)) initWithSuiteName:@"com.apple.siri.VoiceShortcuts"];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)setCodableObject:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"VCUserDefaults.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"key"}];

  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:a5];
  if (v11)
  {
LABEL_7:
    [(VCUserDefaults *)self setObject:v11 forKey:v10];

    v12 = 1;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)codableObjectOfClass:(Class)a3 forKey:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"VCUserDefaults.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v8 = [(VCUserDefaults *)self objectForKey:v7];
  if (v8)
  {
    v15 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:v8 error:&v15];
    v10 = v15;
    if (!v9)
    {
      v11 = getWFGeneralLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v17 = "[VCUserDefaults codableObjectOfClass:forKey:]";
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to unarchive object for key (%@) with Error: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

@end