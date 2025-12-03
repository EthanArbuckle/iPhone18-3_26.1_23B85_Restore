@interface TPSContextualBiomeEventBuilder
+ (id)contextualBiomeEventFromDictionary:(id)dictionary;
+ (id)contextualBiomeEventFromDuetEventDictionary:(id)dictionary;
@end

@implementation TPSContextualBiomeEventBuilder

+ (id)contextualBiomeEventFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [TPSContextualBiomeEvent streamFromDictionary:dictionaryCopy];
  if ([v4 isEqualToString:@"App.InFocus"])
  {
    v5 = off_1E8100920;
LABEL_13:
    v6 = [objc_alloc(*v5) initWithDictionary:dictionaryCopy];
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"AppLaunch"])
  {
    v5 = off_1E8100928;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"Device.Wireless.Bluetooth"])
  {
    v5 = off_1E8100930;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"Discoverability.Signals"])
  {
    v5 = off_1E8100938;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"GenerativeExperiences.GeneratedImageFeatures.UserInteraction"])
  {
    v5 = off_1E8100950;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"UserFocusComputedMode"])
  {
    v5 = off_1E8100958;
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)contextualBiomeEventFromDuetEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"stream"];
  v5 = [v4 isEqualToString:@"/discoverability/signals"];

  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    [v6 setObject:@"Discoverability.Signals" forKeyedSubscript:@"stream"];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:3];
    [v6 setObject:v7 forKeyedSubscript:@"type"];

    v8 = [MEMORY[0x1E695E0F8] mutableCopy];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    v10 = [v9 copy];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__TPSContextualBiomeEventBuilder_contextualBiomeEventFromDuetEventDictionary___block_invoke;
    v15[3] = &unk_1E8101BD0;
    v16 = v8;
    v11 = v8;
    [v10 enumerateKeysAndObjectsUsingBlock:v15];
    [v6 removeObjectForKey:@"value"];
    v12 = [v11 copy];
    [v6 setObject:v12 forKeyedSubscript:@"filter"];

    [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_7];
    v13 = [(TPSContextualBiomeEvent *)[TPSContextualBiomeDiscoverabilitySignalsEvent alloc] initWithDictionary:v6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __78__TPSContextualBiomeEventBuilder_contextualBiomeEventFromDuetEventDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [(__CFString *)v9 isEqualToString:@"stringValue"];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = @"contentIdentifier";
  }

  else
  {
    v8 = v9;
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
}

@end