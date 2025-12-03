@interface _PSMapsFeedback
- (_PSMapsFeedback)initWithFeedbackAction:(id)action predictionContext:(id)context suggestions:(id)suggestions;
- (id)feedbackPayload;
- (id)getTrialID;
- (unint64_t)indexOfEngagedSuggestion;
- (void)donateToBiome;
@end

@implementation _PSMapsFeedback

- (_PSMapsFeedback)initWithFeedbackAction:(id)action predictionContext:(id)context suggestions:(id)suggestions
{
  actionCopy = action;
  contextCopy = context;
  suggestionsCopy = suggestions;
  v15.receiver = self;
  v15.super_class = _PSMapsFeedback;
  v12 = [(_PSMapsFeedback *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_action, action);
    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v13->_suggestions, suggestions);
  }

  return v13;
}

- (unint64_t)indexOfEngagedSuggestion
{
  v25 = *MEMORY[0x1E69E9840];
  action = [(_PSMapsFeedback *)self action];
  handle = [action handle];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  suggestions = [(_PSMapsFeedback *)self suggestions];
  v6 = [suggestions countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(suggestions);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        recipients = [v10 recipients];
        firstObject = [recipients firstObject];
        handle2 = [firstObject handle];
        v14 = [handle2 isEqualToString:handle];

        if (v14)
        {
          suggestions2 = [(_PSMapsFeedback *)selfCopy suggestions];
          v15 = [suggestions2 indexOfObject:v10];

          goto LABEL_11;
        }
      }

      v7 = [suggestions countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  suggestions = [(_PSMapsFeedback *)self suggestions];
  v4 = [suggestions count];

  if (v4)
  {
    suggestions2 = [(_PSMapsFeedback *)self suggestions];
    v6 = [suggestions2 objectAtIndex:0];
    trialID = [v6 trialID];
  }

  else
  {
    trialID = @"default";
  }

  return trialID;
}

- (id)feedbackPayload
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_PSMapsFeedback indexOfEngagedSuggestion](self, "indexOfEngagedSuggestion")}];
  action = [(_PSMapsFeedback *)self action];
  suggestion = [action suggestion];
  reasonType = [suggestion reasonType];
  action2 = [(_PSMapsFeedback *)self action];
  suggestion2 = [action2 suggestion];
  reason = [suggestion2 reason];
  context = [(_PSMapsFeedback *)self context];
  bundleID = [context bundleID];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PSMapsFeedback dryRun](self, "dryRun")}];
  action3 = [(_PSMapsFeedback *)self action];
  type = [action3 type];
  getTrialID = [(_PSMapsFeedback *)self getTrialID];
  v12 = [_PSFeedbackUtils feedbackPayloadWithIndex:v3 reasonType:reasonType reason:reason sourceBundleId:bundleID transportBundleId:0 numberOfVisibleSuggestions:0 sessionId:0 delay:0 testEvent:v8 iCloudFamilyInvocation:&unk_1F2D8B820 engagementType:type trialID:getTrialID];

  return v12;
}

- (void)donateToBiome
{
  action = [(_PSMapsFeedback *)self action];
  suggestion = [action suggestion];

  if (suggestion)
  {
    recipients = [suggestion recipients];
    firstObject = [recipients firstObject];
    contact = [firstObject contact];
    identifier = [contact identifier];

    recipients2 = [suggestion recipients];
    firstObject2 = [recipients2 firstObject];
    handle = [firstObject2 handle];
  }

  else
  {
    action2 = [(_PSMapsFeedback *)self action];
    identifier = [action2 contactId];

    recipients2 = [(_PSMapsFeedback *)self action];
    handle = [recipients2 handle];
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
  context = [(_PSMapsFeedback *)self context];
  bundleID = [context bundleID];
  context2 = [(_PSMapsFeedback *)self context];
  navigationStartLocationId = [context2 navigationStartLocationId];
  context3 = [(_PSMapsFeedback *)self context];
  navigationEndLocationId = [context3 navigationEndLocationId];
  v21 = [v14 initWithIdentifier:@"MapsShareETAFeedback" bundleId:bundleID handle:handle startLocationId:navigationStartLocationId endLocationId:navigationEndLocationId contactId:identifier groupId:0];

  v22 = BiomeLibrary();
  mapsShare = [v22 MapsShare];
  eTAFeedback = [mapsShare ETAFeedback];

  source = [eTAFeedback source];
  [source sendEvent:v21];
}

@end