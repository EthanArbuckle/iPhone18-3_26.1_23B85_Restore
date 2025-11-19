@interface WFLinkVoiceMemosPlayRecordingAction
- (id)localizedCategoryWithContext:(id)a3;
- (id)overrideLabelsByParameter;
@end

@implementation WFLinkVoiceMemosPlayRecordingAction

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"VoiceMemosSubcategoryRecordings", @"Recordings");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)overrideLabelsByParameter
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFLinkVoiceMemosPlayRecordingAction *)self entityParameterName];
  if (v3)
  {
    v4 = v3;
    v5 = [(WFLinkEntityAction *)self entityName];
    if (v5)
    {
      v6 = v5;
      v7 = [(WFLinkEntityAction *)self entityName];
      v8 = [v7 key];
      v9 = [v8 length];

      if (v9)
      {
        v10 = [(WFLinkVoiceMemosPlayRecordingAction *)self entityParameterName];
        v15 = v10;
        v11 = [(WFLinkEntityAction *)self entityName];
        v16[0] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_7:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end