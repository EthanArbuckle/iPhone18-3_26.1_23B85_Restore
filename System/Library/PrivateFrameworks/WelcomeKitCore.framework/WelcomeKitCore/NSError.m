@interface NSError
@end

@implementation NSError

uint64_t __56__NSError_WelcomeKit__wl_encodableErrorSupportedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  wl_encodableErrorSupportedClasses_supportedClasses = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

void __61__NSError_WelcomeKit___wl_encodableDictionaryFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 40) _wl_encodableObjectFromObject:v5];
    if (v6)
    {
      [*(a1 + 32) setObject:v6 forKey:v7];
    }
  }
}

void __65__NSError_WelcomeKit___wl_objectIsKindOfNonCollectionPlistClass___block_invoke()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  v1 = _wl_objectIsKindOfNonCollectionPlistClass__nonCollectionPlistClasses;
  _wl_objectIsKindOfNonCollectionPlistClass__nonCollectionPlistClasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end