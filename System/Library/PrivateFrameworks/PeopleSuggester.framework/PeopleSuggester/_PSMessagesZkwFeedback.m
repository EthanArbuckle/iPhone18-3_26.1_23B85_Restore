@interface _PSMessagesZkwFeedback
- (_PSMessagesZkwFeedback)initWithChatGuidEngagaged:(id)a3 suggestions:(id)a4;
- (id)feedbackPayload;
- (id)getTrialID;
- (id)reasonForSuggestionIndex:(unint64_t)a3;
- (id)reasonTypeForSuggestionIndex:(unint64_t)a3;
- (unint64_t)indexOfEngagedSuggestionForChatGuidEngaged;
@end

@implementation _PSMessagesZkwFeedback

- (_PSMessagesZkwFeedback)initWithChatGuidEngagaged:(id)a3 suggestions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _PSMessagesZkwFeedback;
  v8 = [(_PSMessagesZkwFeedback *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    chatGuidEngaged = v8->_chatGuidEngaged;
    v8->_chatGuidEngaged = v9;

    v11 = [v7 copy];
    suggestions = v8->_suggestions;
    v8->_suggestions = v11;
  }

  return v8;
}

- (id)getTrialID
{
  v3 = [(_PSMessagesZkwFeedback *)self suggestions];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(_PSMessagesZkwFeedback *)self suggestions];
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
  v3 = [(_PSMessagesZkwFeedback *)self indexOfEngagedSuggestionForChatGuidEngaged];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  v5 = [(_PSMessagesZkwFeedback *)self reasonTypeForSuggestionIndex:v3];
  v6 = [(_PSMessagesZkwFeedback *)self reasonForSuggestionIndex:v3];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PSMessagesZkwFeedback dryRun](self, "dryRun")}];
  v8 = [(_PSMessagesZkwFeedback *)self feedbackActionTypeForSuggestionIndex:v3];
  v9 = [(_PSMessagesZkwFeedback *)self getTrialID];
  v10 = [_PSFeedbackUtils feedbackPayloadWithIndex:v4 reasonType:v5 reason:v6 sourceBundleId:0 transportBundleId:0 numberOfVisibleSuggestions:0 sessionId:0 delay:0 testEvent:v7 iCloudFamilyInvocation:&unk_1F2D8B838 engagementType:v8 trialID:v9];

  return v10;
}

- (unint64_t)indexOfEngagedSuggestionForChatGuidEngaged
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(_PSMessagesZkwFeedback *)self chatGuidEngaged];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(_PSMessagesZkwFeedback *)self suggestions];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 conversationIdentifier];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          v13 = [(_PSMessagesZkwFeedback *)self suggestions];
          v12 = [v13 indexOfObject:v9];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)reasonTypeForSuggestionIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(_PSMessagesZkwFeedback *)self suggestions];
    v6 = [v5 objectAtIndex:a3];
    v3 = [v6 reasonType];
  }

  return v3;
}

- (id)reasonForSuggestionIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(_PSMessagesZkwFeedback *)self suggestions];
    v6 = [v5 objectAtIndex:a3];
    v3 = [v6 reason];
  }

  return v3;
}

@end