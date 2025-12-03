@interface WBSBrowserTabCompletionMatch
- (BOOL)isLessRelevant;
- (WBSBrowserTabCompletionMatch)initWithTabInfo:(id)info userTypedString:(id)string alternativeDisplayTextForURL:(id)l forQueryID:(int64_t)d;
- (WBSBrowserTabCompletionMatch)initWithTabUUID:(id)d windowUUID:(id)iD tabIndex:(unint64_t)index userTypedString:(id)string tabURL:(id)l tabTitle:(id)title forQueryID:(int64_t)queryID;
@end

@implementation WBSBrowserTabCompletionMatch

- (WBSBrowserTabCompletionMatch)initWithTabUUID:(id)d windowUUID:(id)iD tabIndex:(unint64_t)index userTypedString:(id)string tabURL:(id)l tabTitle:(id)title forQueryID:(int64_t)queryID
{
  dCopy = d;
  iDCopy = iD;
  v22.receiver = self;
  v22.super_class = WBSBrowserTabCompletionMatch;
  v18 = [(WBSTabCompletionMatch *)&v22 initWithUserTypedString:string url:l title:title forQueryID:queryID];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_tabUUID, d);
    objc_storeStrong(&v19->_windowUUID, iD);
    v19->_tabIndex = index;
    v20 = v19;
  }

  return v19;
}

- (WBSBrowserTabCompletionMatch)initWithTabInfo:(id)info userTypedString:(id)string alternativeDisplayTextForURL:(id)l forQueryID:(int64_t)d
{
  infoCopy = info;
  stringCopy = string;
  lCopy = l;
  tabGroupTitle = [infoCopy tabGroupTitle];
  if (tabGroupTitle && [stringCopy length] <= 2 && (objc_msgSend(stringCopy, "safari_allowsLooserMatchingInSearch") & 1) == 0 && (objc_msgSend(MEMORY[0x1E69C8880], "isStreamlinedCompletionListEnabled") & 1) != 0)
  {
    selfCopy2 = 0;
  }

  else
  {
    v27 = tabGroupTitle;
    v15 = lCopy;
    if ([infoCopy pageStatus] == 2)
    {
      title = 0;
    }

    else
    {
      title = [infoCopy title];
    }

    uuid = [infoCopy uuid];
    windowUUID = [infoCopy windowUUID];
    tabIndex = [infoCopy tabIndex];
    v20 = [infoCopy url];
    self = [(WBSBrowserTabCompletionMatch *)self initWithTabUUID:uuid windowUUID:windowUUID tabIndex:tabIndex userTypedString:stringCopy tabURL:v20 tabTitle:title forQueryID:d];

    lCopy = v15;
    tabGroupTitle = v27;
    if (self)
    {
      tabGroupUUID = [infoCopy tabGroupUUID];
      tabGroupUUID = self->_tabGroupUUID;
      self->_tabGroupUUID = tabGroupUUID;

      v23 = [v27 copy];
      tabGroupTitle = self->_tabGroupTitle;
      self->_tabGroupTitle = v23;

      [(WBSURLCompletionMatch *)self setAlternativeDisplayTextForURL:lCopy];
      selfCopy = self;
    }

    selfCopy2 = self;
  }

  return selfCopy2;
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
      userInput = [(WBSURLCompletionMatch *)self userInput];
      if ([userInput length] >= 2)
      {
      }

      else
      {
        userInput2 = [(WBSURLCompletionMatch *)self userInput];
        safari_allowsLooserMatchingInSearch = [userInput2 safari_allowsLooserMatchingInSearch];

        if ((safari_allowsLooserMatchingInSearch & 1) == 0)
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