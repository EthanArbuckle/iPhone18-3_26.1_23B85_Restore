@interface WBSTabCompletionMatch
+ (int64_t)_matchLocationForString:(id)a3 url:(id)a4 title:(id)a5;
- (WBSTabCompletionMatch)initWithUserTypedString:(id)a3 url:(id)a4 title:(id)a5 forQueryID:(int64_t)a6;
@end

@implementation WBSTabCompletionMatch

- (WBSTabCompletionMatch)initWithUserTypedString:(id)a3 url:(id)a4 title:(id)a5 forQueryID:(int64_t)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v14 = [[WBSURLCompletionUserTypedString alloc] initWithString:v13];

  v15 = [objc_opt_class() _matchLocationForString:v14 url:v11 title:v12];
  if (v15 >= 5 && (v16 = v15, [(WBSURLCompletionUserTypedString *)v14 normalizedString], v17 = objc_claimAutoreleasedReturnValue(), v22.receiver = self, v22.super_class = WBSTabCompletionMatch, self = [(WBSURLCompletionMatch *)&v22 initWithMatchLocation:v16 userInput:v17 forQueryID:a6], v17, self))
  {
    objc_storeStrong(&self->_url, a4);
    v18 = [v12 copy];
    title = self->_title;
    self->_title = v18;

    self = self;
    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (int64_t)_matchLocationForString:(id)a3 url:(id)a4 title:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!a4)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v10 = [a4 safari_userVisibleString];
  v11 = [v8 normalizedString];
  if ([v11 safari_isPrefixOfWwwDot])
  {
    v12 = [MEMORY[0x1E69C8880] isStreamlinedCompletionListEnabled];

    if (!v12)
    {
      goto LABEL_6;
    }

    [v10 safari_simplifiedUserVisibleURLStringWithSimplifications:8 forDisplayOnly:0 simplifiedStringOffset:0];
    v10 = v11 = v10;
  }

LABEL_6:
  v13 = [a1 matchLocationForString:v8 inURLString:v10];
  if ((v13 - 9) >= 2)
  {
    v14 = [a1 matchLocationForString:v8 inTitle:v9];
    if (v13 <= v14)
    {
      v13 = v14;
    }
  }

LABEL_11:
  return v13;
}

@end