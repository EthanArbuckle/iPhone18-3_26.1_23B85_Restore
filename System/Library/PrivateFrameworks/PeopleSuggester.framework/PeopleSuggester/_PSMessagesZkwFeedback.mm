@interface _PSMessagesZkwFeedback
- (_PSMessagesZkwFeedback)initWithChatGuidEngagaged:(id)engagaged suggestions:(id)suggestions;
- (id)feedbackPayload;
- (id)getTrialID;
- (id)reasonForSuggestionIndex:(unint64_t)index;
- (id)reasonTypeForSuggestionIndex:(unint64_t)index;
- (unint64_t)indexOfEngagedSuggestionForChatGuidEngaged;
@end

@implementation _PSMessagesZkwFeedback

- (_PSMessagesZkwFeedback)initWithChatGuidEngagaged:(id)engagaged suggestions:(id)suggestions
{
  engagagedCopy = engagaged;
  suggestionsCopy = suggestions;
  v14.receiver = self;
  v14.super_class = _PSMessagesZkwFeedback;
  v8 = [(_PSMessagesZkwFeedback *)&v14 init];
  if (v8)
  {
    v9 = [engagagedCopy copy];
    chatGuidEngaged = v8->_chatGuidEngaged;
    v8->_chatGuidEngaged = v9;

    v11 = [suggestionsCopy copy];
    suggestions = v8->_suggestions;
    v8->_suggestions = v11;
  }

  return v8;
}

- (id)getTrialID
{
  suggestions = [(_PSMessagesZkwFeedback *)self suggestions];
  v4 = [suggestions count];

  if (v4)
  {
    suggestions2 = [(_PSMessagesZkwFeedback *)self suggestions];
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
  indexOfEngagedSuggestionForChatGuidEngaged = [(_PSMessagesZkwFeedback *)self indexOfEngagedSuggestionForChatGuidEngaged];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:indexOfEngagedSuggestionForChatGuidEngaged];
  v5 = [(_PSMessagesZkwFeedback *)self reasonTypeForSuggestionIndex:indexOfEngagedSuggestionForChatGuidEngaged];
  v6 = [(_PSMessagesZkwFeedback *)self reasonForSuggestionIndex:indexOfEngagedSuggestionForChatGuidEngaged];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PSMessagesZkwFeedback dryRun](self, "dryRun")}];
  v8 = [(_PSMessagesZkwFeedback *)self feedbackActionTypeForSuggestionIndex:indexOfEngagedSuggestionForChatGuidEngaged];
  getTrialID = [(_PSMessagesZkwFeedback *)self getTrialID];
  v10 = [_PSFeedbackUtils feedbackPayloadWithIndex:v4 reasonType:v5 reason:v6 sourceBundleId:0 transportBundleId:0 numberOfVisibleSuggestions:0 sessionId:0 delay:0 testEvent:v7 iCloudFamilyInvocation:&unk_1F2D8B838 engagementType:v8 trialID:getTrialID];

  return v10;
}

- (unint64_t)indexOfEngagedSuggestionForChatGuidEngaged
{
  v21 = *MEMORY[0x1E69E9840];
  chatGuidEngaged = [(_PSMessagesZkwFeedback *)self chatGuidEngaged];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  suggestions = [(_PSMessagesZkwFeedback *)self suggestions];
  v5 = [suggestions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(suggestions);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        conversationIdentifier = [v9 conversationIdentifier];
        v11 = [conversationIdentifier isEqualToString:chatGuidEngaged];

        if (v11)
        {
          suggestions2 = [(_PSMessagesZkwFeedback *)self suggestions];
          v12 = [suggestions2 indexOfObject:v9];

          goto LABEL_11;
        }
      }

      v6 = [suggestions countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)reasonTypeForSuggestionIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    reasonType = 0;
  }

  else
  {
    suggestions = [(_PSMessagesZkwFeedback *)self suggestions];
    v6 = [suggestions objectAtIndex:index];
    reasonType = [v6 reasonType];
  }

  return reasonType;
}

- (id)reasonForSuggestionIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    reason = 0;
  }

  else
  {
    suggestions = [(_PSMessagesZkwFeedback *)self suggestions];
    v6 = [suggestions objectAtIndex:index];
    reason = [v6 reason];
  }

  return reason;
}

@end