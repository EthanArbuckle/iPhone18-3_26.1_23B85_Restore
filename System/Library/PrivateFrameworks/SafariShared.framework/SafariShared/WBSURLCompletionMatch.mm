@interface WBSURLCompletionMatch
- (NSString)description;
- (NSString)uuidString;
- (SFSearchResult)sfSearchResultValue;
- (WBSURLCompletionMatch)initWithMatchLocation:(int64_t)a3 userInput:(id)a4 forQueryID:(int64_t)a5;
- (id)matchingStringWithUserTypedPrefix:(id)a3;
@end

@implementation WBSURLCompletionMatch

- (WBSURLCompletionMatch)initWithMatchLocation:(int64_t)a3 userInput:(id)a4 forQueryID:(int64_t)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WBSURLCompletionMatch;
  v9 = [(WBSURLCompletionMatch *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_matchLocation = a3;
    v11 = [v8 copy];
    userInput = v10->_userInput;
    v10->_userInput = v11;

    v10->_parsecQueryID = a5;
    v13 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBSURLCompletionMatch *)self title];
  v7 = [(WBSURLCompletionMatch *)self userVisibleURLString];
  v8 = [v3 stringWithFormat:@"<%@: %p title = %@; URL = %@>", v5, self, v6, v7];;

  return v8;
}

- (NSString)uuidString
{
  uuidString = self->_uuidString;
  if (!uuidString)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_uuidString;
    self->_uuidString = v5;

    uuidString = self->_uuidString;
  }

  return uuidString;
}

- (SFSearchResult)sfSearchResultValue
{
  sfSearchResultValue = self->_sfSearchResultValue;
  if (!sfSearchResultValue)
  {
    v4 = [MEMORY[0x1E69CA3E8] safari_sfSearchResultWithUniqueIdentifier];
    v5 = self->_sfSearchResultValue;
    self->_sfSearchResultValue = v4;

    v6 = [(WBSURLCompletionMatch *)self parsecDomainIdentifier];
    [(SFSearchResult *)self->_sfSearchResultValue setResultBundleId:v6];

    v7 = [(WBSURLCompletionMatch *)self parsecDomainIdentifier];
    [(SFSearchResult *)self->_sfSearchResultValue setSectionBundleIdentifier:v7];

    [(SFSearchResult *)self->_sfSearchResultValue setType:2];
    [(SFSearchResult *)self->_sfSearchResultValue setUserInput:self->_userInput];
    v8 = MEMORY[0x1E695DFF8];
    v9 = [(WBSURLCompletionMatch *)self originalURLString];
    v10 = [v8 URLWithString:v9];

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

- (id)matchingStringWithUserTypedPrefix:(id)a3
{
  v4 = a3;
  v5 = [(WBSURLCompletionMatch *)self userVisibleURLString];
  if (![v5 length] || !objc_msgSend(v4, "length"))
  {
    goto LABEL_19;
  }

  v6 = [(WBSURLCompletionMatch *)self matchLocation];
  if ((v6 - 6) < 3 || v6 == 3)
  {
    v8 = [(WBSURLCompletionMatch *)self title];
    if ([v8 safari_isRightToLeft])
    {
      v9 = 0;
    }

    else
    {
      v10 = [v8 rangeOfString:v4 options:1];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v8;
        v8 = 0;
      }

      else
      {
        v11 = [v8 substringFromIndex:v10];
        v9 = v8;
        v8 = v11;
      }
    }

    goto LABEL_20;
  }

  if (v6 == 4)
  {
    goto LABEL_19;
  }

  if ([v4 rangeOfString:@":"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 rangeOfString:@":"] + 1;
  }

  else
  {
    v7 = 0;
  }

  v12 = [v5 rangeOfString:v4 options:1 range:{v7, objc_msgSend(v5, "length") - v7}];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL && v7)
  {
    v12 = [v5 rangeOfString:v4 options:1];
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  v19 = 0;
  v14 = [v5 safari_simplifiedUserVisibleURLStringWithSimplifications:133 forDisplayOnly:0 simplifiedStringOffset:&v19];
  v15 = [v4 length];
  v16 = v19;
  if (v15 + v12 > [v14 length] + v16)
  {
    v17 = v5;
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

  v18 = [v5 substringWithRange:{v12, v19 - v12 + objc_msgSend(v14, "length")}];
LABEL_29:
  v8 = v18;

LABEL_20:

  return v8;
}

@end