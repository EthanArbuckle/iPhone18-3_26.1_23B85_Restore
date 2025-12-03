@interface WFPlayMusicContextualAction
+ (WFContextualActionParameter)disambiguationParameter;
+ (WFTopHitItemContextualAction)disambiguationAction;
+ (id)disambiguationSummaryStringForCollection:(id)collection;
+ (id)disambiguationSummaryStringWithParameterDefined:(BOOL)defined;
+ (void)_unsafeDisambiguationEntriesForCollection:(id)collection limit:(int64_t)limit completionHandler:(id)handler;
- (WFPlayMusicContextualAction)initWithCoder:(id)coder;
- (WFPlayMusicContextualAction)initWithIntent:(id)intent artwork:(id)artwork namedQueryInfo:(id)info;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPlayMusicContextualAction

- (WFPlayMusicContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFPlayMusicContextualAction;
  v5 = [(WFContextualAction *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
    intent = v5->_intent;
    v5->_intent = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFPlayMusicContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFPlayMusicContextualAction *)self intent:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"intent"];
}

- (WFPlayMusicContextualAction)initWithIntent:(id)intent artwork:(id)artwork namedQueryInfo:(id)info
{
  intentCopy = intent;
  artworkCopy = artwork;
  infoCopy = info;
  if (!intentCopy)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v31 = v30 = infoCopy;
    [v31 handleFailureInMethod:a2 object:self file:@"WFPlayMusicContextualAction.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"intent"}];

    infoCopy = v30;
  }

  if (artworkCopy)
  {
    v11 = [[WFContextualActionIcon alloc] initWithImageData:artworkCopy scale:0 displayStyle:2.0];
  }

  else
  {
    v11 = 0;
  }

  v34 = v11;
  firstObject2 = MEMORY[0x1E696AEC0];
  v13 = WFLocalizedString(@"Play %@");
  mediaContainer = [intentCopy mediaContainer];
  title = [mediaContainer title];
  v16 = title;
  if (title)
  {
    v17 = [firstObject2 localizedStringWithFormat:v13, title];
  }

  else
  {
    selfCopy = self;
    mediaItems2 = infoCopy;
    mediaItems = [intentCopy mediaItems];
    firstObject = [mediaItems firstObject];
    title2 = [firstObject title];
    v21 = title2;
    if (title2)
    {
      v17 = [firstObject2 localizedStringWithFormat:v13, title2];
    }

    else
    {
      v22 = WFLocalizedString(@"Music");
      v17 = [firstObject2 localizedStringWithFormat:v13, v22];
    }

    self = selfCopy;
    infoCopy = mediaItems2;
  }

  v23 = WFLocalizedString(@"Play Music");
  mediaContainer2 = [intentCopy mediaContainer];
  title3 = [mediaContainer2 title];
  title4 = title3;
  if (!title3)
  {
    mediaItems2 = [intentCopy mediaItems];
    firstObject2 = [mediaItems2 firstObject];
    title4 = [firstObject2 title];
  }

  v36.receiver = self;
  v36.super_class = WFPlayMusicContextualAction;
  v27 = infoCopy;
  v28 = [(WFTopHitItemContextualAction *)&v36 initWithItem:intentCopy identifier:@"is.workflow.actions.playmusic" wfActionIdentifier:@"is.workflow.actions.playmusic" associatedAppBundleIdentifier:@"com.apple.Music" parameters:MEMORY[0x1E695E0F0] displayString:v17 title:v23 subtitle:title4 primaryColor:0 icon:v34 accessoryIcon:0 namedQueryInfo:infoCopy];
  if (!title3)
  {
  }

  [(WFPlayMusicContextualAction *)v28 setIntent:intentCopy];
  return v28;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Play %@");
  intent = [(WFPlayMusicContextualAction *)self intent];
  mediaContainer = [intent mediaContainer];
  title = [mediaContainer title];
  v8 = title;
  if (title)
  {
    v9 = [v3 localizedStringWithFormat:v4, title];
  }

  else
  {
    intent2 = [(WFPlayMusicContextualAction *)self intent];
    mediaItems = [intent2 mediaItems];
    firstObject = [mediaItems firstObject];
    title2 = [firstObject title];
    v14 = title2;
    if (title2)
    {
      v9 = [v3 localizedStringWithFormat:v4, title2];
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
  identifier = [(WFContextualAction *)self identifier];
  intent = [(WFPlayMusicContextualAction *)self intent];
  mediaContainer = [intent mediaContainer];
  identifier2 = [mediaContainer identifier];
  v7 = [identifier stringByAppendingFormat:@":%@", identifier2];

  return v7;
}

+ (id)disambiguationSummaryStringWithParameterDefined:(BOOL)defined
{
  if (defined)
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

+ (id)disambiguationSummaryStringForCollection:(id)collection
{
  if ([collection isEqualToString:@"Suggested"])
  {
    v3 = WFLocalizedStringWithKey(@"Recently Played (Disambiguation Action Title)", @"Recently Played");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)_unsafeDisambiguationEntriesForCollection:(id)collection limit:(int64_t)limit completionHandler:(id)handler
{
  collectionCopy = collection;
  handlerCopy = handler;
  v9 = +[VCVoiceShortcutClient standardClient];
  v10 = collectionCopy;
  v11 = v10;
  if (v10 == @"Suggested" || v10 && (v12 = [(__CFString *)v10 isEqualToString:@"Suggested"], v11, (v12 & 1) != 0))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__WFPlayMusicContextualAction__unsafeDisambiguationEntriesForCollection_limit_completionHandler___block_invoke;
    v14[3] = &unk_1E7B026A8;
    v15 = handlerCopy;
    [v9 getUpcomingMediaForBundleIdentifier:@"com.apple.Music" limit:limit completion:v14];
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TopHitItemContextualActionError" code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
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
  disambiguationParameter = [self disambiguationParameter];
  v12[0] = disambiguationParameter;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = WFLocalizedStringWithKey(@"Recently Played Music (Display Format String)", @"Play %@");
  v7 = WFLocalizedStringWithKey(@"Recently Played (Title)", @"Recently Played");
  v8 = [[WFContextualActionIcon alloc] initWithSystemName:@"music.quarternote.3"];
  v9 = [(WFTopHitItemContextualAction *)v3 initWithItem:0 identifier:@"is.workflow.actions.playmusic" wfActionIdentifier:@"is.workflow.actions.playmusic" associatedAppBundleIdentifier:@"com.apple.Music" parameters:v5 displayString:v6 title:v7 subtitle:0 primaryColor:0 icon:v8 accessoryIcon:0 namedQueryInfo:0];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end