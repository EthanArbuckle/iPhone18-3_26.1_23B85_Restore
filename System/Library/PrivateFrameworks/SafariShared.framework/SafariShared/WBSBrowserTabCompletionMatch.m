@interface WBSBrowserTabCompletionMatch
- (BOOL)isLessRelevant;
- (WBSBrowserTabCompletionMatch)initWithTabInfo:(id)a3 userTypedString:(id)a4 alternativeDisplayTextForURL:(id)a5 forQueryID:(int64_t)a6;
- (WBSBrowserTabCompletionMatch)initWithTabUUID:(id)a3 windowUUID:(id)a4 tabIndex:(unint64_t)a5 userTypedString:(id)a6 tabURL:(id)a7 tabTitle:(id)a8 forQueryID:(int64_t)a9;
@end

@implementation WBSBrowserTabCompletionMatch

- (WBSBrowserTabCompletionMatch)initWithTabUUID:(id)a3 windowUUID:(id)a4 tabIndex:(unint64_t)a5 userTypedString:(id)a6 tabURL:(id)a7 tabTitle:(id)a8 forQueryID:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v22.receiver = self;
  v22.super_class = WBSBrowserTabCompletionMatch;
  v18 = [(WBSTabCompletionMatch *)&v22 initWithUserTypedString:a6 url:a7 title:a8 forQueryID:a9];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_tabUUID, a3);
    objc_storeStrong(&v19->_windowUUID, a4);
    v19->_tabIndex = a5;
    v20 = v19;
  }

  return v19;
}

- (WBSBrowserTabCompletionMatch)initWithTabInfo:(id)a3 userTypedString:(id)a4 alternativeDisplayTextForURL:(id)a5 forQueryID:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 tabGroupTitle];
  if (v13 && [v11 length] <= 2 && (objc_msgSend(v11, "safari_allowsLooserMatchingInSearch") & 1) == 0 && (objc_msgSend(MEMORY[0x1E69C8880], "isStreamlinedCompletionListEnabled") & 1) != 0)
  {
    v14 = 0;
  }

  else
  {
    v27 = v13;
    v15 = v12;
    if ([v10 pageStatus] == 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = [v10 title];
    }

    v17 = [v10 uuid];
    v18 = [v10 windowUUID];
    v19 = [v10 tabIndex];
    v20 = [v10 url];
    self = [(WBSBrowserTabCompletionMatch *)self initWithTabUUID:v17 windowUUID:v18 tabIndex:v19 userTypedString:v11 tabURL:v20 tabTitle:v16 forQueryID:a6];

    v12 = v15;
    v13 = v27;
    if (self)
    {
      v21 = [v10 tabGroupUUID];
      tabGroupUUID = self->_tabGroupUUID;
      self->_tabGroupUUID = v21;

      v23 = [v27 copy];
      tabGroupTitle = self->_tabGroupTitle;
      self->_tabGroupTitle = v23;

      [(WBSURLCompletionMatch *)self setAlternativeDisplayTextForURL:v12];
      v25 = self;
    }

    v14 = self;
  }

  return v14;
}

- (BOOL)isLessRelevant
{
  if (self->_tabGroupUUID)
  {
    return 1;
  }

  else
  {
    if ([(WBSURLCompletionMatch *)self matchLocation]>= 7)
    {
      v4 = [(WBSURLCompletionMatch *)self userInput];
      if ([v4 length] >= 2)
      {
      }

      else
      {
        v5 = [(WBSURLCompletionMatch *)self userInput];
        v6 = [v5 safari_allowsLooserMatchingInSearch];

        if ((v6 & 1) == 0)
        {
          return !self->_highlyRelevant;
        }
      }

      return 0;
    }

    return 1;
  }
}

@end