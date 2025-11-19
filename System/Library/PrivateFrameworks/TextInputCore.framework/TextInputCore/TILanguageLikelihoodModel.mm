@interface TILanguageLikelihoodModel
@end

@implementation TILanguageLikelihoodModel

uint64_t __58___TILanguageLikelihoodModel_rankedLanguagesForRecipient___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  [v7 floatValue];
  v9 = v8;

  v10 = [*(a1 + 32) objectForKey:v6];

  [v10 floatValue];
  v12 = v11;

  if (v9 > v12)
  {
    return -1;
  }

  else
  {
    return v9 < v12;
  }
}

uint64_t __47___TILanguageLikelihoodModel_singletonInstance__block_invoke()
{
  v0 = objc_alloc_init(_TILanguageLikelihoodModel);
  v1 = +[_TILanguageLikelihoodModel singletonInstance]::singletonInstance;
  +[_TILanguageLikelihoodModel singletonInstance]::singletonInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end