@interface WBSURLCompletionMatch
- (NSString)description;
- (NSString)uuidString;
- (SFSearchResult)sfSearchResultValue;
- (WBSURLCompletionMatch)initWithMatchLocation:(int64_t)location userInput:(id)input forQueryID:(int64_t)d;
- (id)matchingStringWithUserTypedPrefix:(id)prefix;
@end

@implementation WBSURLCompletionMatch

- (WBSURLCompletionMatch)initWithMatchLocation:(int64_t)location userInput:(id)input forQueryID:(int64_t)d
{
  inputCopy = input;
  v15.receiver = self;
  v15.super_class = WBSURLCompletionMatch;
  v9 = [(WBSURLCompletionMatch *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_matchLocation = location;
    v11 = [inputCopy copy];
    userInput = v10->_userInput;
    v10->_userInput = v11;

    v10->_parsecQueryID = d;
    v13 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(WBSURLCompletionMatch *)self title];
  userVisibleURLString = [(WBSURLCompletionMatch *)self userVisibleURLString];
  v8 = [v3 stringWithFormat:@"<%@: %p title = %@; URL = %@>", v5, self, title, userVisibleURLString];;

  return v8;
}

- (NSString)uuidString
{
  uuidString = self->_uuidString;
  if (!uuidString)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_uuidString;
    self->_uuidString = uUIDString;

    uuidString = self->_uuidString;
  }

  return uuidString;
}

- (SFSearchResult)sfSearchResultValue
{
  sfSearchResultValue = self->_sfSearchResultValue;
  if (!sfSearchResultValue)
  {
    safari_sfSearchResultWithUniqueIdentifier = [MEMORY[0x1E69CA3E8] safari_sfSearchResultWithUniqueIdentifier];
    v5 = self->_sfSearchResultValue;
    self->_sfSearchResultValue = safari_sfSearchResultWithUniqueIdentifier;

    parsecDomainIdentifier = [(WBSURLCompletionMatch *)self parsecDomainIdentifier];
    [(SFSearchResult *)self->_sfSearchResultValue setResultBundleId:parsecDomainIdentifier];

    parsecDomainIdentifier2 = [(WBSURLCompletionMatch *)self parsecDomainIdentifier];
    [(SFSearchResult *)self->_sfSearchResultValue setSectionBundleIdentifier:parsecDomainIdentifier2];

    [(SFSearchResult *)self->_sfSearchResultValue setType:2];
    [(SFSearchResult *)self->_sfSearchResultValue setUserInput:self->_userInput];
    v8 = MEMORY[0x1E695DFF8];
    originalURLString = [(WBSURLCompletionMatch *)self originalURLString];
    v10 = [v8 URLWithString:originalURLString];

    if (v10)
    {
      v11 = [MEMORY[0x1E69CA320] punchoutWithURL:v10];
      [(SFSearchResult *)self->_sfSearchResultValue setPunchout:v11];
    }

    if ([(WBSURLCompletionMatch *)self isTopHit])
    {
      [(SFSearchResult *)self->_sfSearchResultValue setTopHit:2];
    }

    sfSearchResultValue = self->_sfSearchResultValue;
  }

  v12 = sfSearchResultValue;

  return v12;
}

- (id)matchingStringWithUserTypedPrefix:(id)prefix
{
  prefixCopy = prefix;
  userVisibleURLString = [(WBSURLCompletionMatch *)self userVisibleURLString];
  if (![userVisibleURLString length] || !objc_msgSend(prefixCopy, "length"))
  {
    goto LABEL_19;
  }

  matchLocation = [(WBSURLCompletionMatch *)self matchLocation];
  if ((matchLocation - 6) < 3 || matchLocation == 3)
  {
    title = [(WBSURLCompletionMatch *)self title];
    if ([title safari_isRightToLeft])
    {
      v9 = 0;
    }

    else
    {
      v10 = [title rangeOfString:prefixCopy options:1];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = title;
        title = 0;
      }

      else
      {
        v11 = [title substringFromIndex:v10];
        v9 = title;
        title = v11;
      }
    }

    goto LABEL_20;
  }

  if (matchLocation == 4)
  {
    goto LABEL_19;
  }

  if ([prefixCopy rangeOfString:@":"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [userVisibleURLString rangeOfString:@":"] + 1;
  }

  else
  {
    v7 = 0;
  }

  v12 = [userVisibleURLString rangeOfString:prefixCopy options:1 range:{v7, objc_msgSend(userVisibleURLString, "length") - v7}];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL && v7)
  {
    v12 = [userVisibleURLString rangeOfString:prefixCopy options:1];
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_19:
    title = 0;
    goto LABEL_20;
  }

  v19 = 0;
  v14 = [userVisibleURLString safari_simplifiedUserVisibleURLStringWithSimplifications:133 forDisplayOnly:0 simplifiedStringOffset:&v19];
  v15 = [prefixCopy length];
  v16 = v19;
  if (v15 + v12 > [v14 length] + v16)
  {
    v17 = userVisibleURLString;
LABEL_28:
    v18 = [v17 substringFromIndex:v12];
    goto LABEL_29;
  }

  if (v12 >= v19)
  {
    v17 = v14;
    v12 -= v19;
    goto LABEL_28;
  }

  v18 = [userVisibleURLString substringWithRange:{v12, v19 - v12 + objc_msgSend(v14, "length")}];
LABEL_29:
  title = v18;

LABEL_20:

  return title;
}

@end