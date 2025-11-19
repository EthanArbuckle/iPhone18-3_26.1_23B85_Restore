@interface VOSVoiceOverCommandInfo
- (id)brailleCommandsForCategory:(id)a3;
- (id)brailleVoiceOverCategories;
- (id)localizedNameForCategory:(id)a3;
- (id)localizedNameForCommand:(id)a3;
- (void)_loadBrailleCommandsIfNecessary;
@end

@implementation VOSVoiceOverCommandInfo

- (void)_loadBrailleCommandsIfNecessary
{
  if (!self->_brailleCommands)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v4 URLForResource:@"BrailleVoiceOverCommands" withExtension:@"plist"];

    v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7];
    brailleCommands = self->_brailleCommands;
    self->_brailleCommands = v5;
  }
}

- (id)brailleVoiceOverCategories
{
  [(VOSVoiceOverCommandInfo *)self _loadBrailleCommandsIfNecessary];
  v3 = [(NSDictionary *)self->_brailleCommands allKeys];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)brailleCommandsForCategory:(id)a3
{
  v4 = a3;
  [(VOSVoiceOverCommandInfo *)self _loadBrailleCommandsIfNecessary];
  v5 = [(NSDictionary *)self->_brailleCommands objectForKey:v4];

  v6 = [v5 keysOfEntriesPassingTest:&__block_literal_global_0];
  v7 = [v6 allObjects];

  return v7;
}

uint64_t __54__VOSVoiceOverCommandInfo_brailleCommandsForCategory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    v6 = [v5 objectForKey:@"tvOSAvailable"];
    v7 = __UIAccessibilityCastAsClass();

    if (AXDeviceIsTV() && v7 && ![v7 BOOLValue])
    {
      v10 = 0;
    }

    else
    {
      objc_opt_class();
      v8 = [v5 objectForKey:@"tvOSAvailable"];
      v9 = __UIAccessibilityCastAsClass();

      if (AXDeviceIsWatch() && v9 && ![v9 BOOLValue])
      {
        v10 = 0;
      }

      else if (AXDeviceIsPad())
      {
        v10 = 1;
      }

      else
      {
        v11 = [v5 objectForKey:@"MultittaskDeviceOnly"];
        v12 = [v11 BOOLValue];

        v10 = v12 ^ 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)localizedNameForCommand:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:0 table:@"VoiceOverCommands"];

  return v6;
}

- (id)localizedNameForCategory:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:0 table:@"VoiceOverCommands"];

  return v6;
}

@end