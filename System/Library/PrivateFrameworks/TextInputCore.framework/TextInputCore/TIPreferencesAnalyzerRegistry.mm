@interface TIPreferencesAnalyzerRegistry
- (TIPreferencesAnalyzerRegistry)init;
- (void)enumerateRegisteredPreferencesUsingBlock:(id)block;
@end

@implementation TIPreferencesAnalyzerRegistry

- (void)enumerateRegisteredPreferencesUsingBlock:(id)block
{
  blockCopy = block;
  registry = self->_registry;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__TIPreferencesAnalyzerRegistry_enumerateRegisteredPreferencesUsingBlock___block_invoke;
  v7[3] = &unk_278732C78;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)registry enumerateObjectsUsingBlock:v7];
}

void __74__TIPreferencesAnalyzerRegistry_enumerateRegisteredPreferencesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = [v6 domain];
  v7 = [v6 key];
  v8 = [v6 defaultValue];
  v9 = [v6 reportingMode];

  (*(v5 + 16))(v5, v10, v7, v8, v9, a4);
}

- (TIPreferencesAnalyzerRegistry)init
{
  v8.receiver = self;
  v8.super_class = TIPreferencesAnalyzerRegistry;
  v2 = [(TIPreferencesAnalyzerRegistry *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    registry = v2->_registry;
    v2->_registry = v3;

    v5 = *MEMORY[0x277D6F7C0];
    v6 = MEMORY[0x277CBEC38];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:*MEMORY[0x277D6F7C0] domain:@"com.apple.keyboard.preferences" defaultValue:MEMORY[0x277CBEC38] reportingMode:2];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:*MEMORY[0x277D6F9E8] domain:@"com.apple.InputModePreferences" defaultValue:v6 reportingMode:1];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:v5 domain:@"com.apple.keyboard.preferences" defaultValue:v6 reportingMode:1];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:*MEMORY[0x277D6F878] domain:@"com.apple.keyboard.preferences" defaultValue:v6 reportingMode:1];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:*MEMORY[0x277D6F9E0] domain:@"com.apple.keyboard.preferences" defaultValue:MEMORY[0x277CBEC28] reportingMode:1];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:*MEMORY[0x277D6F7B0] domain:@"com.apple.preferences.sounds" defaultValue:v6 reportingMode:1];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:*MEMORY[0x277D6F7A0] domain:@"com.apple.keyboard.preferences" defaultValue:v6 reportingMode:1];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:*MEMORY[0x277D6F608] domain:@"com.apple.assistant.support" defaultValue:v6 reportingMode:1];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:*MEMORY[0x277D6FA00] domain:@"com.apple.InputModePreferences" defaultValue:&unk_28400BEC8 reportingMode:1];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:*MEMORY[0x277D6F610] domain:@"com.apple.assistant.support" defaultValue:v6 reportingMode:1];
    [(TIPreferencesAnalyzerRegistry *)v2 _registerPreference:*MEMORY[0x277D6F8A8] domain:@"com.apple.keyboard.preferences" defaultValue:v6 reportingMode:1];
  }

  return v2;
}

@end