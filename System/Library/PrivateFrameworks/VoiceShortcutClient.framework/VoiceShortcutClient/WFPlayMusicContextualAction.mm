@interface WFPlayMusicContextualAction
+ (WFContextualActionParameter)disambiguationParameter;
+ (WFTopHitItemContextualAction)disambiguationAction;
+ (id)disambiguationSummaryStringForCollection:(id)a3;
+ (id)disambiguationSummaryStringWithParameterDefined:(BOOL)a3;
+ (void)_unsafeDisambiguationEntriesForCollection:(id)a3 limit:(int64_t)a4 completionHandler:(id)a5;
- (WFPlayMusicContextualAction)initWithCoder:(id)a3;
- (WFPlayMusicContextualAction)initWithIntent:(id)a3 artwork:(id)a4 namedQueryInfo:(id)a5;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFPlayMusicContextualAction

- (WFPlayMusicContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFPlayMusicContextualAction;
  v5 = [(WFContextualAction *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
    intent = v5->_intent;
    v5->_intent = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFPlayMusicContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v6 encodeWithCoder:v4];
  v5 = [(WFPlayMusicContextualAction *)self intent:v6.receiver];
  [v4 encodeObject:v5 forKey:@"intent"];
}

- (WFPlayMusicContextualAction)initWithIntent:(id)a3 artwork:(id)a4 namedQueryInfo:(id)a5
{
  v9 = a3;
  v35 = a4;
  v10 = a5;
  if (!v9)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v31 = v30 = v10;
    [v31 handleFailureInMethod:a2 object:self file:@"WFPlayMusicContextualAction.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"intent"}];

    v10 = v30;
  }

  if (v35)
  {
    v11 = [[WFContextualActionIcon alloc] initWithImageData:v35 scale:0 displayStyle:2.0];
  }

  else
  {
    v11 = 0;
  }

  v34 = v11;
  v12 = MEMORY[0x1E696AEC0];
  v13 = WFLocalizedString(@"Play %@");
  v14 = [v9 mediaContainer];
  v15 = [v14 title];
  v16 = v15;
  if (v15)
  {
    v17 = [v12 localizedStringWithFormat:v13, v15];
  }

  else
  {
    v32 = self;
    v33 = v10;
    v18 = [v9 mediaItems];
    v19 = [v18 firstObject];
    v20 = [v19 title];
    v21 = v20;
    if (v20)
    {
      v17 = [v12 localizedStringWithFormat:v13, v20];
    }

    else
    {
      v22 = WFLocalizedString(@"Music");
      v17 = [v12 localizedStringWithFormat:v13, v22];
    }

    self = v32;
    v10 = v33;
  }

  v23 = WFLocalizedString(@"Play Music");
  v24 = [v9 mediaContainer];
  v25 = [v24 title];
  v26 = v25;
  if (!v25)
  {
    v33 = [v9 mediaItems];
    v12 = [v33 firstObject];
    v26 = [v12 title];
  }

  v36.receiver = self;
  v36.super_class = WFPlayMusicContextualAction;
  v27 = v10;
  v28 = [(WFTopHitItemContextualAction *)&v36 initWithItem:v9 identifier:@"is.workflow.actions.playmusic" wfActionIdentifier:@"is.workflow.actions.playmusic" associatedAppBundleIdentifier:@"com.apple.Music" parameters:MEMORY[0x1E695E0F0] displayString:v17 title:v23 subtitle:v26 primaryColor:0 icon:v34 accessoryIcon:0 namedQueryInfo:v10];
  if (!v25)
  {
  }

  [(WFPlayMusicContextualAction *)v28 setIntent:v9];
  return v28;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Play %@");
  v5 = [(WFPlayMusicContextualAction *)self intent];
  v6 = [v5 mediaContainer];
  v7 = [v6 title];
  v8 = v7;
  if (v7)
  {
    v9 = [v3 localizedStringWithFormat:v4, v7];
  }

  else
  {
    v10 = [(WFPlayMusicContextualAction *)self intent];
    v11 = [v10 mediaItems];
    v12 = [v11 firstObject];
    v13 = [v12 title];
    v14 = v13;
    if (v13)
    {
      v9 = [v3 localizedStringWithFormat:v4, v13];
    }

    else
    {
      v15 = WFLocalizedString(@"Music");
      v9 = [v3 localizedStringWithFormat:v4, v15];
    }
  }

  return v9;
}

- (id)uniqueIdentifier
{
  v3 = [(WFContextualAction *)self identifier];
  v4 = [(WFPlayMusicContextualAction *)self intent];
  v5 = [v4 mediaContainer];
  v6 = [v5 identifier];
  v7 = [v3 stringByAppendingFormat:@":%@", v6];

  return v7;
}

+ (id)disambiguationSummaryStringWithParameterDefined:(BOOL)a3
{
  if (a3)
  {
    v3 = @"Populated Play Specific Music (Title)";
    v4 = @"Play ${WFMediaItems}";
  }

  else
  {
    v3 = @"Unpopulated Play Specific Music (Title)";
    v4 = @"Play Music…";
  }

  v5 = WFLocalizedStringWithKey(v3, v4);

  return v5;
}

+ (id)disambiguationSummaryStringForCollection:(id)a3
{
  if ([a3 isEqualToString:@"Suggested"])
  {
    v3 = WFLocalizedStringWithKey(@"Recently Played (Disambiguation Action Title)", @"Recently Played");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)_unsafeDisambiguationEntriesForCollection:(id)a3 limit:(int64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[VCVoiceShortcutClient standardClient];
  v10 = v7;
  v11 = v10;
  if (v10 == @"Suggested" || v10 && (v12 = [(__CFString *)v10 isEqualToString:@"Suggested"], v11, (v12 & 1) != 0))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__WFPlayMusicContextualAction__unsafeDisambiguationEntriesForCollection_limit_completionHandler___block_invoke;
    v14[3] = &unk_1E7B026A8;
    v15 = v8;
    [v9 getUpcomingMediaForBundleIdentifier:@"com.apple.Music" limit:a4 completion:v14];
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TopHitItemContextualActionError" code:0 userInfo:0];
    (*(v8 + 2))(v8, 0, v13);
  }
}

void __97__WFPlayMusicContextualAction__unsafeDisambiguationEntriesForCollection_limit_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = [a2 if_compactMap:&__block_literal_global_20263];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

WFPlayMusicContextualAction *__97__WFPlayMusicContextualAction__unsafeDisambiguationEntriesForCollection_limit_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WFAppShortcutNamedQueryInfo alloc];
  v4 = WFLocalizedString(@"Suggested");
  v5 = [(WFAppShortcutNamedQueryInfo *)v3 initWithName:v4 symbolName:@"music.and.sparkles"];

  v6 = [WFPlayMusicContextualAction alloc];
  v7 = [v2 intent];
  v8 = [v2 artwork];

  v9 = [(WFPlayMusicContextualAction *)v6 initWithIntent:v7 artwork:v8 namedQueryInfo:v5];

  return v9;
}

+ (WFContextualActionParameter)disambiguationParameter
{
  v2 = [[WFContextualActionParameter alloc] initWithType:@"WFMPMediaContentItem" displayString:&stru_1F28FBBB8 wfParameterKey:@"WFMediaItems" askEachTime:1];

  return v2;
}

+ (WFTopHitItemContextualAction)disambiguationAction
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [WFPlayMusicContextualAction alloc];
  v4 = [a1 disambiguationParameter];
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = WFLocalizedStringWithKey(@"Recently Played Music (Display Format String)", @"Play %@");
  v7 = WFLocalizedStringWithKey(@"Recently Played (Title)", @"Recently Played");
  v8 = [[WFContextualActionIcon alloc] initWithSystemName:@"music.quarternote.3"];
  v9 = [(WFTopHitItemContextualAction *)v3 initWithItem:0 identifier:@"is.workflow.actions.playmusic" wfActionIdentifier:@"is.workflow.actions.playmusic" associatedAppBundleIdentifier:@"com.apple.Music" parameters:v5 displayString:v6 title:v7 subtitle:0 primaryColor:0 icon:v8 accessoryIcon:0 namedQueryInfo:0];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end