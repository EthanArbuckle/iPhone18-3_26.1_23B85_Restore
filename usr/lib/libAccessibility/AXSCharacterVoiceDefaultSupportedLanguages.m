@interface AXSCharacterVoiceDefaultSupportedLanguages
@end

@implementation AXSCharacterVoiceDefaultSupportedLanguages

CFArrayRef ___AXSCharacterVoiceDefaultSupportedLanguages_block_invoke()
{
  v2[35] = *MEMORY[0x1E69E9840];
  memcpy(v2, off_1E6F45578, 0x118uLL);
  result = CFArrayCreate(*MEMORY[0x1E695E480], v2, 35, MEMORY[0x1E695E9C0]);
  _AXSCharacterVoiceDefaultSupportedLanguages_supportedLanguages = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end