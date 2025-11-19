@interface _PSMapsFeedback
- (_PSMapsFeedback)initWithFeedbackAction:(id)a3 predictionContext:(id)a4 suggestions:(id)a5;
- (id)feedbackPayload;
- (id)getTrialID;
- (unint64_t)indexOfEngagedSuggestion;
- (void)donateToBiome;
@end

@implementation _PSMapsFeedback

- (_PSMapsFeedback)initWithFeedbackAction:(id)a3 predictionContext:(id)a4 suggestions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _PSMapsFeedback;
  v12 = [(_PSMapsFeedback *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_action, a3);
    objc_storeStrong(&v13->_context, a4);
    objc_storeStrong(&v13->_suggestions, a5);
  }

  return v13;
}

- (unint64_t)indexOfEngagedSuggestion
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(_PSMapsFeedback *)self action];
  v4 = [v3 handle];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(_PSMapsFeedback *)self suggestions];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = self;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 recipients];
        v12 = [v11 firstObject];
        v13 = [v12 handle];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          v16 = [(_PSMapsFeedback *)v19 suggestions];
          v15 = [v16 indexOfObject:v10];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)getTrialID
{
  v3 = [(_PSMapsFeedback *)self suggestions];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(_PSMapsFeedback *)self suggestions];
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 trialID];
  }

  else
  {
    v7 = @"default";
  }

  return v7;
}

- (id)feedbackPayload
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_PSMapsFeedback indexOfEngagedSuggestion](self, "indexOfEngagedSuggestion")}];
  v17 = [(_PSMapsFeedback *)self action];
  v16 = [v17 suggestion];
  v14 = [v16 reasonType];
  v15 = [(_PSMapsFeedback *)self action];
  v4 = [v15 suggestion];
  v5 = [v4 reason];
  v6 = [(_PSMapsFeedback *)self context];
  v7 = [v6 bundleID];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PSMapsFeedback dryRun](self, "dryRun")}];
  v9 = [(_PSMapsFeedback *)self action];
  v10 = [v9 type];
  v11 = [(_PSMapsFeedback *)self getTrialID];
  v12 = [_PSFeedbackUtils feedbackPayloadWithIndex:v3 reasonType:v14 reason:v5 sourceBundleId:v7 transportBundleId:0 numberOfVisibleSuggestions:0 sessionId:0 delay:0 testEvent:v8 iCloudFamilyInvocation:&unk_1F2D8B820 engagementType:v10 trialID:v11];

  return v12;
}

- (void)donateToBiome
{
  v3 = [(_PSMapsFeedback *)self action];
  v4 = [v3 suggestion];

  if (v4)
  {
    v5 = [v4 recipients];
    v6 = [v5 firstObject];
    v7 = [v6 contact];
    v26 = [v7 identifier];

    v8 = [v4 recipients];
    v9 = [v8 firstObject];
    v10 = [v9 handle];
  }

  else
  {
    v11 = [(_PSMapsFeedback *)self action];
    v26 = [v11 contactId];

    v8 = [(_PSMapsFeedback *)self action];
    v10 = [v8 handle];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v12 = getBMMapsShareETAFeedbackClass_softClass;
  v31 = getBMMapsShareETAFeedbackClass_softClass;
  if (!getBMMapsShareETAFeedbackClass_softClass)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __getBMMapsShareETAFeedbackClass_block_invoke;
    v27[3] = &unk_1E7C23BF0;
    v27[4] = &v28;
    __getBMMapsShareETAFeedbackClass_block_invoke(v27);
    v12 = v29[3];
  }

  v13 = v12;
  _Block_object_dispose(&v28, 8);
  v14 = [v12 alloc];
  v15 = [(_PSMapsFeedback *)self context];
  v16 = [v15 bundleID];
  v17 = [(_PSMapsFeedback *)self context];
  v18 = [v17 navigationStartLocationId];
  v19 = [(_PSMapsFeedback *)self context];
  v20 = [v19 navigationEndLocationId];
  v21 = [v14 initWithIdentifier:@"MapsShareETAFeedback" bundleId:v16 handle:v10 startLocationId:v18 endLocationId:v20 contactId:v26 groupId:0];

  v22 = BiomeLibrary();
  v23 = [v22 MapsShare];
  v24 = [v23 ETAFeedback];

  v25 = [v24 source];
  [v25 sendEvent:v21];
}

@end