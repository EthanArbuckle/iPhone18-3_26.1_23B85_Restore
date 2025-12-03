@interface WFPlayPodcastEpisodeContextualAction
+ (WFContextualActionParameter)disambiguationParameter;
+ (WFTopHitItemContextualAction)disambiguationAction;
+ (id)disambiguationSummaryStringForCollection:(id)collection;
+ (id)disambiguationSummaryStringWithParameterDefined:(BOOL)defined;
+ (void)_unsafeDisambiguationEntriesForCollection:(id)collection limit:(int64_t)limit completionHandler:(id)handler;
- (WFPlayPodcastEpisodeContextualAction)initWithCoder:(id)coder;
- (WFPlayPodcastEpisodeContextualAction)initWithIntent:(id)intent artwork:(id)artwork namedQueryInfo:(id)info;
- (id)_staticDisplayStringForDecoding;
- (id)mediaItem;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPlayPodcastEpisodeContextualAction

- (WFPlayPodcastEpisodeContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFPlayPodcastEpisodeContextualAction;
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
  v6.super_class = WFPlayPodcastEpisodeContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFPlayPodcastEpisodeContextualAction *)self intent:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"intent"];
}

- (WFPlayPodcastEpisodeContextualAction)initWithIntent:(id)intent artwork:(id)artwork namedQueryInfo:(id)info
{
  intentCopy = intent;
  artworkCopy = artwork;
  infoCopy = info;
  if (!intentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPlayPodcastEpisodeContextualAction.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"intent"}];
  }

  selfCopy = self;
  if (artworkCopy)
  {
    v11 = [[WFContextualActionIcon alloc] initWithImageData:artworkCopy scale:0 displayStyle:2.0];
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = WFLocalizedString(@"Play %@");
  mediaContainer = [intentCopy mediaContainer];
  title = [mediaContainer title];
  v15 = title;
  v36 = artworkCopy;
  if (title)
  {
    v32 = 0;
    v16 = title;
  }

  else
  {
    mediaItems = [intentCopy mediaItems];
    firstObject = [mediaItems firstObject];
    title2 = [firstObject title];
    if (title2)
    {
      v32 = 0;
      v29 = title2;
      v16 = title2;
    }

    else
    {
      v16 = WFLocalizedString(@"Podcast");
      v29 = 0;
      v32 = 1;
    }
  }

  v35 = v13;
  v18 = [v12 localizedStringWithFormat:v13, v16];
  v19 = WFLocalizedString(@"Play Podcast");
  mediaContainer2 = [intentCopy mediaContainer];
  title3 = [mediaContainer2 title];
  title4 = title3;
  if (!title3)
  {
    mediaItems2 = [intentCopy mediaItems];
    firstObject2 = [mediaItems2 firstObject];
    title4 = [firstObject2 title];
  }

  v38.receiver = selfCopy;
  v38.super_class = WFPlayPodcastEpisodeContextualAction;
  v23 = v11;
  v24 = [(WFTopHitItemContextualAction *)&v38 initWithItem:intentCopy identifier:@"is.workflow.actions.playpodcast" wfActionIdentifier:@"is.workflow.actions.playpodcast" associatedAppBundleIdentifier:@"com.apple.podcasts" parameters:MEMORY[0x1E695E0F0] displayString:v18 title:v19 subtitle:title4 primaryColor:10 icon:v11 accessoryIcon:0 namedQueryInfo:infoCopy];
  if (!title3)
  {
  }

  if (v32)
  {
  }

  if (!v15)
  {
  }

  [(WFPlayPodcastEpisodeContextualAction *)v24 setIntent:intentCopy];
  return v24;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Play %@");
  intent = [(WFPlayPodcastEpisodeContextualAction *)self intent];
  mediaContainer = [intent mediaContainer];
  title = [mediaContainer title];
  v8 = title;
  if (title)
  {
    v9 = [v3 localizedStringWithFormat:v4, title];
  }

  else
  {
    intent2 = [(WFPlayPodcastEpisodeContextualAction *)self intent];
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
      v15 = WFLocalizedString(@"Podcast");
      v9 = [v3 localizedStringWithFormat:v4, v15];
    }
  }

  return v9;
}

- (id)uniqueIdentifier
{
  identifier = [(WFContextualAction *)self identifier];
  mediaItem = [(WFPlayPodcastEpisodeContextualAction *)self mediaItem];
  identifier2 = [mediaItem identifier];
  v6 = [identifier stringByAppendingFormat:@":%@", identifier2];

  return v6;
}

- (id)mediaItem
{
  intent = [(WFPlayPodcastEpisodeContextualAction *)self intent];
  mediaItems = [intent mediaItems];
  firstObject = [mediaItems firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    mediaContainer = firstObject;
  }

  else
  {
    intent2 = [(WFPlayPodcastEpisodeContextualAction *)self intent];
    mediaContainer = [intent2 mediaContainer];
  }

  return mediaContainer;
}

+ (id)disambiguationSummaryStringWithParameterDefined:(BOOL)defined
{
  if (defined)
  {
    v3 = @"Populated Play Specific Podcast (Title)";
    v4 = @"Play ${WFPodcastShow}";
  }

  else
  {
    v3 = @"Unpopulated Play Specific Podcast (Title)";
    v4 = @"Play Podcast…";
  }

  v5 = WFLocalizedStringWithKey(v3, v4);

  return v5;
}

+ (id)disambiguationSummaryStringForCollection:(id)collection
{
  if ([collection isEqualToString:@"Suggested"])
  {
    v3 = WFLocalizedStringWithKey(@"Play Suggested Podcasts (Disambiguation Action Title)", @"Play Suggestions");
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
    v14[2] = __106__WFPlayPodcastEpisodeContextualAction__unsafeDisambiguationEntriesForCollection_limit_completionHandler___block_invoke;
    v14[3] = &unk_1E7B026A8;
    v15 = handlerCopy;
    [v9 getUpcomingMediaForBundleIdentifier:@"com.apple.podcasts" limit:limit completion:v14];
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TopHitItemContextualActionError" code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

void __106__WFPlayPodcastEpisodeContextualAction__unsafeDisambiguationEntriesForCollection_limit_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = [a2 if_map:&__block_literal_global_5835];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

WFPlayPodcastEpisodeContextualAction *__106__WFPlayPodcastEpisodeContextualAction__unsafeDisambiguationEntriesForCollection_limit_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WFAppShortcutNamedQueryInfo alloc];
  v4 = WFLocalizedString(@"Up Next");
  v5 = [(WFAppShortcutNamedQueryInfo *)v3 initWithName:v4 symbolName:@"apple.podcasts"];

  v6 = [WFPlayPodcastEpisodeContextualAction alloc];
  v7 = [v2 intent];
  v8 = [v2 artwork];

  v9 = [(WFPlayPodcastEpisodeContextualAction *)v6 initWithIntent:v7 artwork:v8 namedQueryInfo:v5];

  return v9;
}

+ (WFContextualActionParameter)disambiguationParameter
{
  v2 = [[WFContextualActionParameter alloc] initWithType:@"WFPodcastEpisodeContentItem" displayString:&stru_1F28FBBB8 wfParameterKey:@"WFPodcastShow" askEachTime:1];

  return v2;
}

+ (WFTopHitItemContextualAction)disambiguationAction
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [WFPlayPodcastEpisodeContextualAction alloc];
  disambiguationParameter = [self disambiguationParameter];
  v12[0] = disambiguationParameter;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = WFLocalizedStringWithKey(@"Play Suggested Podcast (Display Format String)", @"Play");
  v7 = WFLocalizedStringWithKey(@"Play Suggested Podcast (Title)", @"Play Suggested Podcast");
  v8 = [[WFContextualActionIcon alloc] initWithSystemName:@"music.mic"];
  v9 = [(WFTopHitItemContextualAction *)v3 initWithItem:0 identifier:@"is.workflow.actions.playpodcast" wfActionIdentifier:@"is.workflow.actions.playpodcast" associatedAppBundleIdentifier:@"com.apple.podcasts" parameters:v5 displayString:v6 title:v7 subtitle:0 primaryColor:10 icon:v8 accessoryIcon:0 namedQueryInfo:0];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end