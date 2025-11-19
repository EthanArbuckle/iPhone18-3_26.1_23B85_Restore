@interface AXSClarityUIConvertBundleIdentifier
@end

@implementation AXSClarityUIConvertBundleIdentifier

void ___AXSClarityUIConvertBundleIdentifier_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = _AXSClarityUIConvertBundleIdentifier_ClarityToStandardBundleIdentifiers;
  _AXSClarityUIConvertBundleIdentifier_ClarityToStandardBundleIdentifiers = &unk_1EF5507A8;

  v1 = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [&unk_1EF5507A8 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(&unk_1EF5507A8);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [&unk_1EF5507A8 objectForKeyedSubscript:v6];
        [v1 setObject:v6 forKeyedSubscript:v7];
      }

      v3 = [&unk_1EF5507A8 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v8 = [v1 copy];
  v9 = _AXSClarityUIConvertBundleIdentifier_StandardToClarityBundleIdentifiers;
  _AXSClarityUIConvertBundleIdentifier_StandardToClarityBundleIdentifiers = v8;

  v10 = *MEMORY[0x1E69E9840];
}

@end