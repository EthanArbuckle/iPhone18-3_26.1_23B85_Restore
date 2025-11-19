@interface RENowPlayingRelevanceProviderManager
+ (id)_features;
- (RENowPlayingRelevanceProviderManager)initWithQueue:(id)a3;
- (id)_valueForProvider:(id)a3 feature:(id)a4;
- (void)_updateActiveRoute;
- (void)_updatePlaybackState;
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
- (void)pause;
- (void)resume;
@end

@implementation RENowPlayingRelevanceProviderManager

- (RENowPlayingRelevanceProviderManager)initWithQueue:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RENowPlayingRelevanceProviderManager;
  v5 = [(RERelevanceProviderManager *)&v11 initWithQueue:v4];
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getMPRequestResponseControllerClass_softClass;
    v16 = getMPRequestResponseControllerClass_softClass;
    if (!getMPRequestResponseControllerClass_softClass)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getMPRequestResponseControllerClass_block_invoke;
      v12[3] = &unk_2785F9BC0;
      v12[4] = &v13;
      __getMPRequestResponseControllerClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    v8 = objc_alloc_init(v6);
    requestResponseController = v5->_requestResponseController;
    v5->_requestResponseController = v8;

    [(MPRequestResponseController *)v5->_requestResponseController setDelegate:v5];
  }

  return v5;
}

+ (id)_features
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature nowPlayingStateFeature];
  v3 = +[REFeature currentlyPlayingMediaDonationFeature];
  v8[1] = v3;
  v4 = +[REFeature currentlyPlayingFromAppFeature];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_valueForProvider:(id)a3 feature:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = +[REFeature nowPlayingStateFeature];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [v8 state] == self->_state;
LABEL_35:
    v31 = [REFeatureValue featureValueWithBool:v11];
    goto LABEL_36;
  }

  v12 = +[REFeature currentlyPlayingFromAppFeature];
  v13 = [v7 isEqual:v12];

  if (!v13)
  {
    if (self->_state == 1 && ([v8 bundleIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
    {
      v21 = [(MPRequestResponseController *)self->_requestResponseController response];
      v22 = [v21 playerPath];
      v23 = [v22 representedBundleID];

      v24 = [v8 bundleIdentifier];
      LODWORD(v22) = [v23 isEqualToString:v24];

      if (v22)
      {
        v25 = [v8 itemIdentifer];
        if (v25)
        {
          v50 = [(MPRequestResponseController *)self->_requestResponseController response];
          v49 = [v50 tracklist];
          v26 = [v49 playingItem];
          v27 = [v26 metadataObject];
          v28 = [v27 song];
          v29 = [v28 title];
          if (v25 == v29 || ([v25 isEqual:v29] & 1) != 0)
          {
            v30 = 1;
          }

          else
          {
            v48 = [(MPRequestResponseController *)self->_requestResponseController response];
            v47 = [v48 tracklist];
            v46 = [v47 playingItem];
            v45 = [v46 metadataObject];
            v44 = [v45 song];
            v32 = [v44 album];
            if (v25 == v32)
            {
              v30 = 1;
            }

            else
            {
              v43 = v32;
              if ([v25 isEqual:v32])
              {
                v30 = 1;
              }

              else
              {
                v39 = [(MPRequestResponseController *)self->_requestResponseController response];
                v42 = [v39 tracklist];
                v41 = [v42 playingItem];
                v40 = [v41 metadataObject];
                v38 = [v40 song];
                v33 = [v38 artist];
                v34 = [v33 name];
                if (v25 == v34)
                {
                  v30 = 1;
                }

                else
                {
                  v35 = v34;
                  v36 = [v25 isEqual:v34];
                  v34 = v35;
                  v30 = v36;
                }
              }

              v32 = v43;
            }
          }
        }

        else
        {
          v30 = 1;
        }
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v11 = v30;
    goto LABEL_35;
  }

  v14 = [(MPRequestResponseController *)self->_requestResponseController response];
  v15 = [v14 playerPath];
  v16 = [v15 representedBundleID];

  if (self->_state == 1)
  {
    v17 = [v8 bundleIdentifier];
    if (v17)
    {
      v18 = [v8 bundleIdentifier];
      v19 = [v16 isEqualToString:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v31 = [REFeatureValue featureValueWithBool:v19];

LABEL_36:

  return v31;
}

- (void)resume
{
  [(MPRequestResponseController *)self->_requestResponseController beginAutomaticResponseLoading];
  if (MediaPlayerLibraryCore())
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = getMPAVRoutingControllerActiveSystemRouteDidChangeNotification();
    [v3 addObserver:self selector:sel__handleRoutingControllerActiveSystemRouteDidChange_ name:v4 object:0];
  }

  [(RENowPlayingRelevanceProviderManager *)self _updateActiveRoute];
}

- (void)pause
{
  [(MPRequestResponseController *)self->_requestResponseController endAutomaticResponseLoading];
  if (MediaPlayerLibraryCore())
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v3 = getMPAVRoutingControllerActiveSystemRouteDidChangeNotification();
    [v4 removeObserver:self name:v3 object:0];
  }
}

- (void)_updatePlaybackState
{
  [(RERelevanceProviderManager *)self beginFetchingData];
  v3 = [(MPRequestResponseController *)self->_requestResponseController response];
  self->_playbackState = [v3 state];

  v4 = self->_playbackState - 1;
  if (v4 <= 5 && ((0x2Bu >> v4) & 1) != 0)
  {
    self->_state = qword_2286B2A60[v4];
  }

  [(RERelevanceProviderManager *)self finishFetchingData];
  v5 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v5];
}

- (void)_updateActiveRoute
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = getMPAVRoutingControllerClass_softClass;
  v10 = getMPAVRoutingControllerClass_softClass;
  if (!getMPAVRoutingControllerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPAVRoutingControllerClass_block_invoke;
    v6[3] = &unk_2785F9BC0;
    v6[4] = &v7;
    __getMPAVRoutingControllerClass_block_invoke(v6);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__RENowPlayingRelevanceProviderManager__updateActiveRoute__block_invoke;
  v5[3] = &unk_2785FC448;
  v5[4] = self;
  [v3 getProactiveRouteWithCompletion:v5];
}

void __58__RENowPlayingRelevanceProviderManager__updateActiveRoute__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__RENowPlayingRelevanceProviderManager__updateActiveRoute__block_invoke_2;
  v6[3] = &unk_2785F9AE0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__RENowPlayingRelevanceProviderManager__updateActiveRoute__block_invoke_2(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v2 = getMPCPlayerRequestClass_softClass;
  v16 = getMPCPlayerRequestClass_softClass;
  if (!getMPCPlayerRequestClass_softClass)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __getMPCPlayerRequestClass_block_invoke;
    v11 = &unk_2785F9BC0;
    v12 = &v13;
    __getMPCPlayerRequestClass_block_invoke(&v8);
    v2 = v14[3];
  }

  v3 = v2;
  _Block_object_dispose(&v13, 8);
  v4 = objc_alloc_init(v2);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = getMPCPlayerPathClass_softClass;
  v16 = getMPCPlayerPathClass_softClass;
  if (!getMPCPlayerPathClass_softClass)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __getMPCPlayerPathClass_block_invoke;
    v11 = &unk_2785F9BC0;
    v12 = &v13;
    __getMPCPlayerPathClass_block_invoke(&v8);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  v7 = [v5 pathWithRoute:*(a1 + 32) bundleID:0 playerID:0];
  [v4 setPlayerPath:v7];

  [*(*(a1 + 40) + 112) setRequest:v4];
}

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__RENowPlayingRelevanceProviderManager_controller_defersResponseReplacement___block_invoke;
  v7[3] = &unk_2785FA150;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __77__RENowPlayingRelevanceProviderManager_controller_defersResponseReplacement___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _updatePlaybackState];
}

@end