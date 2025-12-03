@interface _PSFeedback
+ (id)feedbackForAction:(id)action delay:(double)delay context:(id)context suggestions:(id)suggestions numberOfVisibleSuggestions:(float)visibleSuggestions sessionIdentifier:(id)identifier;
- (_PSFeedback)initWithAction:(id)action delay:(double)delay context:(id)context suggestions:(id)suggestions numberOfVisibleSuggestions:(float)visibleSuggestions sessionIdentifier:(id)identifier isAirDropEvent:(BOOL)event wasAirDropShown:(BOOL)self0;
- (id)feedbackPayloadShowFamily:(id)family;
- (id)getTrialID;
- (int)shareSheetFeedbackEngagementType;
- (unint64_t)indexOfEngagedSuggestion;
- (void)donateToBiome;
@end

@implementation _PSFeedback

+ (id)feedbackForAction:(id)action delay:(double)delay context:(id)context suggestions:(id)suggestions numberOfVisibleSuggestions:(float)visibleSuggestions sessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  suggestionsCopy = suggestions;
  contextCopy = context;
  actionCopy = action;
  v18 = [self alloc];
  *&v19 = visibleSuggestions;
  v20 = [v18 initWithAction:actionCopy delay:contextCopy context:suggestionsCopy suggestions:identifierCopy numberOfVisibleSuggestions:0 sessionIdentifier:0 isAirDropEvent:delay wasAirDropShown:v19];

  return v20;
}

- (_PSFeedback)initWithAction:(id)action delay:(double)delay context:(id)context suggestions:(id)suggestions numberOfVisibleSuggestions:(float)visibleSuggestions sessionIdentifier:(id)identifier isAirDropEvent:(BOOL)event wasAirDropShown:(BOOL)self0
{
  actionCopy = action;
  contextCopy = context;
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = _PSFeedback;
  v23 = [(_PSFeedback *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_action, action);
    v24->_delay = delay;
    objc_storeStrong(&v24->_context, context);
    objc_storeStrong(&v24->_suggestions, suggestions);
    v24->_numberOfVisibleSuggestions = visibleSuggestions;
    v25 = [identifierCopy copy];
    sessionIdentifier = v24->_sessionIdentifier;
    v24->_sessionIdentifier = v25;

    v24->_isAirDropEvent = event;
    v24->_wasAirDropShown = shown;
  }

  return v24;
}

- (id)getTrialID
{
  suggestions = [(_PSFeedback *)self suggestions];
  v4 = [suggestions count];

  if (v4)
  {
    suggestions2 = [(_PSFeedback *)self suggestions];
    v6 = [suggestions2 objectAtIndex:0];
    trialID = [v6 trialID];
  }

  else
  {
    v8 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_PSFeedback *)v8 getTrialID];
    }

    trialID = @"default";
  }

  return trialID;
}

- (unint64_t)indexOfEngagedSuggestion
{
  action = [(_PSFeedback *)self action];
  suggestion = [action suggestion];

  if (suggestion)
  {
    suggestions = [(_PSFeedback *)self suggestions];
    v6 = [suggestions indexOfObject:suggestion];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (id)feedbackPayloadShowFamily:(id)family
{
  familyCopy = family;
  context = [(_PSFeedback *)self context];
  timedOut = [context timedOut];
  v6 = @"Model";
  if (timedOut)
  {
    v6 = @"Cached Suggestions";
  }

  v7 = v6;

  action = [(_PSFeedback *)self action];
  suggestion = [action suggestion];
  if (!suggestion)
  {
    goto LABEL_6;
  }

  v10 = suggestion;
  action2 = [(_PSFeedback *)self action];
  suggestion2 = [action2 suggestion];
  reasonType = [suggestion2 reasonType];
  v14 = [reasonType containsString:@"Heuristics"];

  if (v14)
  {
    action = [(_PSFeedback *)self action];
    suggestion3 = [action suggestion];
    reason = [suggestion3 reason];

    v7 = reason;
LABEL_6:
    v37 = v7;

    goto LABEL_8;
  }

  v37 = v7;
LABEL_8:
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_PSFeedback indexOfEngagedSuggestion](self, "indexOfEngagedSuggestion")}];
  context2 = [(_PSFeedback *)self context];
  reasonType2 = [context2 reasonType];
  context3 = [(_PSFeedback *)self context];
  bundleID = [context3 bundleID];
  action3 = [(_PSFeedback *)self action];
  transportBundleID = [action3 transportBundleID];
  v17 = MEMORY[0x1E696AD98];
  suggestions = [(_PSFeedback *)self suggestions];
  v26 = [v17 numberWithUnsignedInteger:{objc_msgSend(suggestions, "count")}];
  sessionIdentifier = [(_PSFeedback *)self sessionIdentifier];
  v19 = MEMORY[0x1E696AD98];
  [(_PSFeedback *)self delay];
  v20 = [v19 numberWithDouble:?];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PSFeedback dryRun](self, "dryRun")}];
  action4 = [(_PSFeedback *)self action];
  type = [action4 type];
  getTrialID = [(_PSFeedback *)self getTrialID];
  v27 = [_PSFeedbackUtils feedbackPayloadWithIndex:v36 reasonType:reasonType2 reason:v37 sourceBundleId:bundleID transportBundleId:transportBundleID numberOfVisibleSuggestions:v26 sessionId:sessionIdentifier delay:v20 testEvent:v21 iCloudFamilyInvocation:familyCopy engagementType:type trialID:getTrialID];

  return v27;
}

- (int)shareSheetFeedbackEngagementType
{
  action = [(_PSFeedback *)self action];
  type = [action type];

  if (type > 4)
  {
    return 0;
  }

  else
  {
    return dword_1B5FCA998[type];
  }
}

- (void)donateToBiome
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error serializing share sheet attachments: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end