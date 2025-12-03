@interface WBSTabCompletionMatch
+ (int64_t)_matchLocationForString:(id)string url:(id)url title:(id)title;
- (WBSTabCompletionMatch)initWithUserTypedString:(id)string url:(id)url title:(id)title forQueryID:(int64_t)d;
@end

@implementation WBSTabCompletionMatch

- (WBSTabCompletionMatch)initWithUserTypedString:(id)string url:(id)url title:(id)title forQueryID:(int64_t)d
{
  urlCopy = url;
  titleCopy = title;
  stringCopy = string;
  v14 = [[WBSURLCompletionUserTypedString alloc] initWithString:stringCopy];

  v15 = [objc_opt_class() _matchLocationForString:v14 url:urlCopy title:titleCopy];
  if (v15 >= 5 && (v16 = v15, [(WBSURLCompletionUserTypedString *)v14 normalizedString], v17 = objc_claimAutoreleasedReturnValue(), v22.receiver = self, v22.super_class = WBSTabCompletionMatch, self = [(WBSURLCompletionMatch *)&v22 initWithMatchLocation:v16 userInput:v17 forQueryID:d], v17, self))
  {
    objc_storeStrong(&self->_url, url);
    v18 = [titleCopy copy];
    title = self->_title;
    self->_title = v18;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (int64_t)_matchLocationForString:(id)string url:(id)url title:(id)title
{
  stringCopy = string;
  titleCopy = title;
  if (!url)
  {
    v13 = 0;
    goto LABEL_11;
  }

  safari_userVisibleString = [url safari_userVisibleString];
  normalizedString = [stringCopy normalizedString];
  if ([normalizedString safari_isPrefixOfWwwDot])
  {
    isStreamlinedCompletionListEnabled = [MEMORY[0x1E69C8880] isStreamlinedCompletionListEnabled];

    if (!isStreamlinedCompletionListEnabled)
    {
      goto LABEL_6;
    }

    [safari_userVisibleString safari_simplifiedUserVisibleURLStringWithSimplifications:8 forDisplayOnly:0 simplifiedStringOffset:0];
    safari_userVisibleString = normalizedString = safari_userVisibleString;
  }

LABEL_6:
  v13 = [self matchLocationForString:stringCopy inURLString:safari_userVisibleString];
  if ((v13 - 9) >= 2)
  {
    v14 = [self matchLocationForString:stringCopy inTitle:titleCopy];
    if (v13 <= v14)
    {
      v13 = v14;
    }
  }

LABEL_11:
  return v13;
}

@end