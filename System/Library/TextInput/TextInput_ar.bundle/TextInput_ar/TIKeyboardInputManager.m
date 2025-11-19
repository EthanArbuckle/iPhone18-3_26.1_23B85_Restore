@interface TIKeyboardInputManager
@end

@implementation TIKeyboardInputManager

void __56__TIKeyboardInputManager_ar_generateKeyLayoutMapReverse__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setObject:v7 forKey:v6];
  v8 = *(a1 + 32);
  v9 = [v6 uppercaseString];

  [v8 setObject:v7 forKey:v9];
}

void __58__TIKeyboardInputManager_ar_generateKeyLayoutMapReverseV2__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setObject:v7 forKey:v6];
  v8 = *(a1 + 32);
  v9 = [v6 uppercaseString];

  [v8 setObject:v7 forKey:v9];
}

@end