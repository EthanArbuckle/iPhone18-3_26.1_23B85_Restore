@interface TFFeedbackFormBuilder
- (id)_buildEmailGroupWithDeveloperName:(id)name prefilledEmail:(id)email;
- (id)_buildUserFeedbackGroupWithContext:(unint64_t)context hasScreenshots:(BOOL)screenshots;
- (id)_feedbackCommentPlaceholderStringForContext:(unint64_t)context;
- (id)buildFormForContext:(unint64_t)context withDeveloperName:(id)name prefilledEmail:(id)email hasScreenshots:(BOOL)screenshots;
@end

@implementation TFFeedbackFormBuilder

- (id)buildFormForContext:(unint64_t)context withDeveloperName:(id)name prefilledEmail:(id)email hasScreenshots:(BOOL)screenshots
{
  screenshotsCopy = screenshots;
  v10 = MEMORY[0x277CBEB18];
  emailCopy = email;
  nameCopy = name;
  v13 = [[v10 alloc] initWithCapacity:2];
  v14 = [(TFFeedbackFormBuilder *)self _buildEmailGroupWithDeveloperName:nameCopy prefilledEmail:emailCopy];

  [v13 addObject:v14];
  v15 = [(TFFeedbackFormBuilder *)self _buildUserFeedbackGroupWithContext:context hasScreenshots:screenshotsCopy];
  [v13 addObject:v15];
  v16 = [TFFeedbackForm alloc];
  v17 = TFLocalizedString(@"FEEDBACK_NAVIGATION_TITLE");
  v18 = [(TFFeedbackForm *)v16 initWithTitle:v17 entryGroups:v13];

  return v18;
}

- (id)_buildEmailGroupWithDeveloperName:(id)name prefilledEmail:(id)email
{
  v29[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  emailCopy = email;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  v8 = TFLocalizedString(@"FEEDBACK_FORM_ENTRY_EMAIL_FOOTER_LEARN_MORE");
  if (!emailCopy)
  {
    if (nameCopy)
    {
      v12 = [nameCopy length] != 0;
      goto LABEL_12;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v9 = [emailCopy length];
  v10 = v9;
  if (!nameCopy)
  {
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v11 = [nameCopy length];
  v12 = v11 != 0;
  if (!v10)
  {
LABEL_12:
    v16 = [TFFeedbackEntryShortText alloc];
    v17 = TFLocalizedString(@"FEEDBACK_FORM_ENTRY_UNKNOWN_EMAIL_PLACEHOLDER");
    v13 = [(TFFeedbackEntryShortText *)v16 initWithIdentifier:@"a" title:0 placeholder:v17 contentType:1];

    [v7 addObject:v13];
    v15 = TFLocalizedString(@"FEEDBACK_FORM_ENTRY_UNKNOWN_EMAIL_HEADER");
    if (v12)
    {
      v18 = TFLocalizedString(@"FEEDBACK_FORM_ENTRY_DEVELOPER_FOOTER");
      [MEMORY[0x277CCACA8] stringWithFormat:v18, nameCopy, v8];
    }

    else
    {
      v18 = TFLocalizedString(@"FEEDBACK_FORM_ENTRY_FOOTER");
      [MEMORY[0x277CCACA8] stringWithFormat:v18, v8, v26];
    }
    v14 = ;

    goto LABEL_16;
  }

  if (!v11)
  {
LABEL_9:
    v13 = TFLocalizedString(@"FEEDBACK_FORM_ENTRY_EMAIL_FOOTER");
    [MEMORY[0x277CCACA8] stringWithFormat:v13, emailCopy, v8, v27];
    goto LABEL_10;
  }

  v13 = TFLocalizedString(@"FEEDBACK_FORM_ENTRY_DEVELOPER_EMAIL_FOOTER");
  [MEMORY[0x277CCACA8] stringWithFormat:v13, nameCopy, emailCopy, v8];
  v14 = LABEL_10:;
  v15 = 0;
LABEL_16:

  if (v14 && (v19 = [v14 rangeOfString:v8 options:4], v19 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v22 = [MEMORY[0x277CCAE60] valueWithRange:{v19, v20}];
    v28 = v22;
    v23 = [MEMORY[0x277CBEBC0] URLWithString:@"https://testflight.apple.com/feedback-learn-more"];
    v29[0] = v23;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  }

  else
  {
    v21 = 0;
  }

  v24 = [[TFFeedbackEntryGroup alloc] initWithIdentifier:@"email-section" entries:v7 title:0 election:0 headerText:v15 headerTextLinkMap:0 footerText:v14 footerTextLinkMap:v21];

  return v24;
}

- (id)_buildUserFeedbackGroupWithContext:(unint64_t)context hasScreenshots:(BOOL)screenshots
{
  screenshotsCopy = screenshots;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v8 = [(TFFeedbackFormBuilder *)self _feedbackCommentPlaceholderStringForContext:context];
  v9 = [[TFFeedbackEntryLongText alloc] initWithIdentifier:@"b" title:0 placeholder:v8];
  [v7 addObject:v9];
  if (screenshotsCopy)
  {
    v10 = [[TFFeedbackEntryImageCollection alloc] initWithIdentifier:@"c" title:0];
    [v7 addObject:v10];
  }

  v11 = [[TFFeedbackEntryGroup alloc] initWithIdentifier:@"feedback-section" entries:v7 title:0 election:0 headerText:0 headerTextLinkMap:0 footerText:0 footerTextLinkMap:0];

  return v11;
}

- (id)_feedbackCommentPlaceholderStringForContext:(unint64_t)context
{
  if (context == 2)
  {
    v3 = @"FEEDBACK_FORM_ENTRY_COMMENTS_CRASH_PLACEHOLDER";
  }

  else
  {
    v3 = @"FEEDBACK_FORM_ENTRY_COMMENTS_DEFAULT_PLACEHOLDER";
  }

  v4 = TFLocalizedString(v3);

  return v4;
}

@end