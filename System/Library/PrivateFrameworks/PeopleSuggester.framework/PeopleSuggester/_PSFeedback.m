@interface _PSFeedback
+ (id)feedbackForAction:(id)a3 delay:(double)a4 context:(id)a5 suggestions:(id)a6 numberOfVisibleSuggestions:(float)a7 sessionIdentifier:(id)a8;
- (_PSFeedback)initWithAction:(id)a3 delay:(double)a4 context:(id)a5 suggestions:(id)a6 numberOfVisibleSuggestions:(float)a7 sessionIdentifier:(id)a8 isAirDropEvent:(BOOL)a9 wasAirDropShown:(BOOL)a10;
- (id)feedbackPayloadShowFamily:(id)a3;
- (id)getTrialID;
- (int)shareSheetFeedbackEngagementType;
- (unint64_t)indexOfEngagedSuggestion;
- (void)donateToBiome;
@end

@implementation _PSFeedback

+ (id)feedbackForAction:(id)a3 delay:(double)a4 context:(id)a5 suggestions:(id)a6 numberOfVisibleSuggestions:(float)a7 sessionIdentifier:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  v18 = [a1 alloc];
  *&v19 = a7;
  v20 = [v18 initWithAction:v17 delay:v16 context:v15 suggestions:v14 numberOfVisibleSuggestions:0 sessionIdentifier:0 isAirDropEvent:a4 wasAirDropShown:v19];

  return v20;
}

- (_PSFeedback)initWithAction:(id)a3 delay:(double)a4 context:(id)a5 suggestions:(id)a6 numberOfVisibleSuggestions:(float)a7 sessionIdentifier:(id)a8 isAirDropEvent:(BOOL)a9 wasAirDropShown:(BOOL)a10
{
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  v28.receiver = self;
  v28.super_class = _PSFeedback;
  v23 = [(_PSFeedback *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_action, a3);
    v24->_delay = a4;
    objc_storeStrong(&v24->_context, a5);
    objc_storeStrong(&v24->_suggestions, a6);
    v24->_numberOfVisibleSuggestions = a7;
    v25 = [v22 copy];
    sessionIdentifier = v24->_sessionIdentifier;
    v24->_sessionIdentifier = v25;

    v24->_isAirDropEvent = a9;
    v24->_wasAirDropShown = a10;
  }

  return v24;
}

- (id)getTrialID
{
  v3 = [(_PSFeedback *)self suggestions];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(_PSFeedback *)self suggestions];
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 trialID];
  }

  else
  {
    v8 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_PSFeedback *)v8 getTrialID];
    }

    v7 = @"default";
  }

  return v7;
}

- (unint64_t)indexOfEngagedSuggestion
{
  v3 = [(_PSFeedback *)self action];
  v4 = [v3 suggestion];

  if (v4)
  {
    v5 = [(_PSFeedback *)self suggestions];
    v6 = [v5 indexOfObject:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (id)feedbackPayloadShowFamily:(id)a3
{
  v35 = a3;
  v4 = [(_PSFeedback *)self context];
  v5 = [v4 timedOut];
  v6 = @"Model";
  if (v5)
  {
    v6 = @"Cached Suggestions";
  }

  v7 = v6;

  v8 = [(_PSFeedback *)self action];
  v9 = [v8 suggestion];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [(_PSFeedback *)self action];
  v12 = [v11 suggestion];
  v13 = [v12 reasonType];
  v14 = [v13 containsString:@"Heuristics"];

  if (v14)
  {
    v8 = [(_PSFeedback *)self action];
    v15 = [v8 suggestion];
    v16 = [v15 reason];

    v7 = v16;
LABEL_6:
    v37 = v7;

    goto LABEL_8;
  }

  v37 = v7;
LABEL_8:
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_PSFeedback indexOfEngagedSuggestion](self, "indexOfEngagedSuggestion")}];
  v34 = [(_PSFeedback *)self context];
  v30 = [v34 reasonType];
  v33 = [(_PSFeedback *)self context];
  v29 = [v33 bundleID];
  v32 = [(_PSFeedback *)self action];
  v28 = [v32 transportBundleID];
  v17 = MEMORY[0x1E696AD98];
  v31 = [(_PSFeedback *)self suggestions];
  v26 = [v17 numberWithUnsignedInteger:{objc_msgSend(v31, "count")}];
  v18 = [(_PSFeedback *)self sessionIdentifier];
  v19 = MEMORY[0x1E696AD98];
  [(_PSFeedback *)self delay];
  v20 = [v19 numberWithDouble:?];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PSFeedback dryRun](self, "dryRun")}];
  v22 = [(_PSFeedback *)self action];
  v23 = [v22 type];
  v24 = [(_PSFeedback *)self getTrialID];
  v27 = [_PSFeedbackUtils feedbackPayloadWithIndex:v36 reasonType:v30 reason:v37 sourceBundleId:v29 transportBundleId:v28 numberOfVisibleSuggestions:v26 sessionId:v18 delay:v20 testEvent:v21 iCloudFamilyInvocation:v35 engagementType:v23 trialID:v24];

  return v27;
}

- (int)shareSheetFeedbackEngagementType
{
  v2 = [(_PSFeedback *)self action];
  v3 = [v2 type];

  if (v3 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1B5FCA998[v3];
  }
}

- (void)donateToBiome
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error serializing share sheet attachments: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end