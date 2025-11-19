@interface WFPlayPodcastEpisodeContextualAction
+ (WFContextualActionParameter)disambiguationParameter;
+ (WFTopHitItemContextualAction)disambiguationAction;
+ (id)disambiguationSummaryStringForCollection:(id)a3;
+ (id)disambiguationSummaryStringWithParameterDefined:(BOOL)a3;
+ (void)_unsafeDisambiguationEntriesForCollection:(id)a3 limit:(int64_t)a4 completionHandler:(id)a5;
- (WFPlayPodcastEpisodeContextualAction)initWithCoder:(id)a3;
- (WFPlayPodcastEpisodeContextualAction)initWithIntent:(id)a3 artwork:(id)a4 namedQueryInfo:(id)a5;
- (id)_staticDisplayStringForDecoding;
- (id)mediaItem;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFPlayPodcastEpisodeContextualAction

- (WFPlayPodcastEpisodeContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFPlayPodcastEpisodeContextualAction;
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
  v6.super_class = WFPlayPodcastEpisodeContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v6 encodeWithCoder:v4];
  v5 = [(WFPlayPodcastEpisodeContextualAction *)self intent:v6.receiver];
  [v4 encodeObject:v5 forKey:@"intent"];
}

- (WFPlayPodcastEpisodeContextualAction)initWithIntent:(id)a3 artwork:(id)a4 namedQueryInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v37 = a5;
  if (!v9)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFPlayPodcastEpisodeContextualAction.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"intent"}];
  }

  v33 = self;
  if (v10)
  {
    v11 = [[WFContextualActionIcon alloc] initWithImageData:v10 scale:0 displayStyle:2.0];
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = WFLocalizedString(@"Play %@");
  v34 = [v9 mediaContainer];
  v14 = [v34 title];
  v15 = v14;
  v36 = v10;
  if (v14)
  {
    v32 = 0;
    v16 = v14;
  }

  else
  {
    v31 = [v9 mediaItems];
    v30 = [v31 firstObject];
    v17 = [v30 title];
    if (v17)
    {
      v32 = 0;
      v29 = v17;
      v16 = v17;
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
  v20 = [v9 mediaContainer];
  v21 = [v20 title];
  v22 = v21;
  if (!v21)
  {
    v28 = [v9 mediaItems];
    v27 = [v28 firstObject];
    v22 = [v27 title];
  }

  v38.receiver = v33;
  v38.super_class = WFPlayPodcastEpisodeContextualAction;
  v23 = v11;
  v24 = [(WFTopHitItemContextualAction *)&v38 initWithItem:v9 identifier:@"is.workflow.actions.playpodcast" wfActionIdentifier:@"is.workflow.actions.playpodcast" associatedAppBundleIdentifier:@"com.apple.podcasts" parameters:MEMORY[0x1E695E0F0] displayString:v18 title:v19 subtitle:v22 primaryColor:10 icon:v11 accessoryIcon:0 namedQueryInfo:v37];
  if (!v21)
  {
  }

  if (v32)
  {
  }

  if (!v15)
  {
  }

  [(WFPlayPodcastEpisodeContextualAction *)v24 setIntent:v9];
  return v24;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Play %@");
  v5 = [(WFPlayPodcastEpisodeContextualAction *)self intent];
  v6 = [v5 mediaContainer];
  v7 = [v6 title];
  v8 = v7;
  if (v7)
  {
    v9 = [v3 localizedStringWithFormat:v4, v7];
  }

  else
  {
    v10 = [(WFPlayPodcastEpisodeContextualAction *)self intent];
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
      v15 = WFLocalizedString(@"Podcast");
      v9 = [v3 localizedStringWithFormat:v4, v15];
    }
  }

  return v9;
}

- (id)uniqueIdentifier
{
  v3 = [(WFContextualAction *)self identifier];
  v4 = [(WFPlayPodcastEpisodeContextualAction *)self mediaItem];
  v5 = [v4 identifier];
  v6 = [v3 stringByAppendingFormat:@":%@", v5];

  return v6;
}

- (id)mediaItem
{
  v3 = [(WFPlayPodcastEpisodeContextualAction *)self intent];
  v4 = [v3 mediaItems];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(WFPlayPodcastEpisodeContextualAction *)self intent];
    v7 = [v8 mediaContainer];
  }

  return v7;
}

+ (id)disambiguationSummaryStringWithParameterDefined:(BOOL)a3
{
  if (a3)
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

+ (id)disambiguationSummaryStringForCollection:(id)a3
{
  if ([a3 isEqualToString:@"Suggested"])
  {
    v3 = WFLocalizedStringWithKey(@"Play Suggested Podcasts (Disambiguation Action Title)", @"Play Suggestions");
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
    v14[2] = __106__WFPlayPodcastEpisodeContextualAction__unsafeDisambiguationEntriesForCollection_limit_completionHandler___block_invoke;
    v14[3] = &unk_1E7B026A8;
    v15 = v8;
    [v9 getUpcomingMediaForBundleIdentifier:@"com.apple.podcasts" limit:a4 completion:v14];
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TopHitItemContextualActionError" code:0 userInfo:0];
    (*(v8 + 2))(v8, 0, v13);
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
  v4 = [a1 disambiguationParameter];
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = WFLocalizedStringWithKey(@"Play Suggested Podcast (Display Format String)", @"Play");
  v7 = WFLocalizedStringWithKey(@"Play Suggested Podcast (Title)", @"Play Suggested Podcast");
  v8 = [[WFContextualActionIcon alloc] initWithSystemName:@"music.mic"];
  v9 = [(WFTopHitItemContextualAction *)v3 initWithItem:0 identifier:@"is.workflow.actions.playpodcast" wfActionIdentifier:@"is.workflow.actions.playpodcast" associatedAppBundleIdentifier:@"com.apple.podcasts" parameters:v5 displayString:v6 title:v7 subtitle:0 primaryColor:10 icon:v8 accessoryIcon:0 namedQueryInfo:0];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end