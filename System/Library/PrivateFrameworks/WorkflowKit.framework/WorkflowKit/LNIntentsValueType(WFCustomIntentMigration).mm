@interface LNIntentsValueType(WFCustomIntentMigration)
- (id)wf_titleWithCustomIntentSerializedRepresentation:()WFCustomIntentMigration;
@end

@implementation LNIntentsValueType(WFCustomIntentMigration)

- (id)wf_titleWithCustomIntentSerializedRepresentation:()WFCustomIntentMigration
{
  v4 = a3;
  v5 = [a1 typeIdentifier];
  if (v5 == 14)
  {
    v6 = WFINCurrencyAmountFromSerialization(v4, 0, 0);
    v8 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    v9 = [v6 _intents_readableTitleWithLocalizer:v8];

    if (v9)
    {
      v7 = [objc_alloc(MEMORY[0x1E69AC9E0]) initWithKey:v9 table:0 bundleURL:0];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (v5 != 13)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v6 = [v4 objectForKeyedSubscript:@"name"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [objc_alloc(MEMORY[0x1E69AC9E0]) initWithKey:v6 table:0 bundleURL:0];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_13:

  return v7;
}

@end