@interface SUScriptMediaLibrary
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (id)containsAdamID:(id)d;
- (id)containsAdamIDs:(id)ds;
- (id)makeCollectionWithItems:(id)items;
- (id)makePickerWithMediaTypes:(id)types;
- (id)makeQueryWithPreset:(id)preset;
- (id)musicPlayerForType:(id)type;
- (id)playSongsInCollectionWithAdamID:(id)d firstItemID:(id)iD;
- (id)playSongsWithAdamIDs:(id)ds;
- (id)playVideoWithAdamID:(id)d;
- (id)scriptAttributeKeys;
- (void)_launchMusicApp;
- (void)_launchMusicAppAfterPlayback:(id)playback firstItem:(id)item;
- (void)dealloc;
- (void)getProperties:(id)properties ofAdamIDs:(id)ds withCompletionFunction:(id)function;
@end

@implementation SUScriptMediaLibrary

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptMediaLibrary;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)containsAdamID:(id)d
{
  if (SSGetUnsignedLongLongFromValue())
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD98]);
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v5 = dispatch_semaphore_create(0);
    dispatch_retain(v5);
    v6 = +[SUMediaLibraryAdamIDCache sharedCache];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__SUScriptMediaLibrary_containsAdamID___block_invoke;
    v10[3] = &unk_1E8165C28;
    v10[5] = v5;
    v10[6] = &v11;
    v10[4] = self;
    [v6 getContainsAdamID:v4 completionBlock:v10];
    v7 = dispatch_time(0, 500000000);
    dispatch_semaphore_wait(v5, v7);
    dispatch_release(v5);
    [(SUScriptObject *)self lock];
    LODWORD(v5) = *(v12 + 24);
    [(SUScriptObject *)self unlock];

    _Block_object_dispose(&v11, 8);
    v8 = MEMORY[0x1E695E4D0];
    if (!v5)
    {
      v8 = MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v8 = MEMORY[0x1E695E4C0];
  }

  return *v8;
}

void __39__SUScriptMediaLibrary_containsAdamID___block_invoke(uint64_t a1, char a2)
{
  [*(a1 + 32) lock];
  *(*(*(a1 + 48) + 8) + 24) = a2;
  [*(a1 + 32) unlock];
  dispatch_semaphore_signal(*(a1 + 40));
  v4 = *(a1 + 40);

  dispatch_release(v4);
}

- (id)containsAdamIDs:(id)ds
{
  v37 = *MEMORY[0x1E69E9840];
  copyJavaScriptContext = [(SUScriptObject *)self copyJavaScriptContext];
  if (!copyJavaScriptContext)
  {
    return 0;
  }

  v6 = copyJavaScriptContext;
  v7 = JSObjectMake(copyJavaScriptContext, 0, 0);
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [ds webScriptValueAtIndex:0];
  v9 = SSGetUnsignedLongLongFromValue();
  if (v9)
  {
    v10 = v9;
    v11 = 1;
    do
    {
      v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithItemIdentifier:v10];
      [v8 addObject:v12];

      [ds webScriptValueAtIndex:v11];
      v10 = SSGetUnsignedLongLongFromValue();
      v11 = (v11 + 1);
    }

    while (v10);
  }

  v24 = v8;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__20;
  v34 = __Block_byref_object_dispose__20;
  v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = dispatch_semaphore_create(0);
  dispatch_retain(v13);
  v14 = +[SUMediaLibraryAdamIDCache sharedCache];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __40__SUScriptMediaLibrary_containsAdamIDs___block_invoke;
  v29[3] = &unk_1E8165C50;
  v29[5] = v13;
  v29[6] = &v30;
  v29[4] = self;
  [v14 getIntersectionWithSet:v8 completionBlock:v29];
  v15 = dispatch_time(0, 500000000);
  dispatch_semaphore_wait(v13, v15);
  dispatch_release(v13);
  [(SUScriptObject *)self lock];
  dsCopy = ds;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v31[5];
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v17)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", objc_msgSend(*(*(&v25 + 1) + 8 * i), "itemIdentifierValue")];
        SUJSObjectSetBooleanProperty(v6, v7, v20);
      }

      v17 = [v16 countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v17);
  }

  v31[5] = 0;
  [(SUScriptObject *)self unlock];

  v21 = [MEMORY[0x1E69E2F88] scriptObjectForJSObject:v7 originRootObject:objc_msgSend(dsCopy rootObject:{"_originRootObject"), objc_msgSend(dsCopy, "_rootObject")}];
  JSGlobalContextRelease(v6);
  _Block_object_dispose(&v30, 8);
  return v21;
}

void __40__SUScriptMediaLibrary_containsAdamIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) lock];
  [*(*(*(a1 + 48) + 8) + 40) unionSet:a2];
  [*(a1 + 32) unlock];
  dispatch_semaphore_signal(*(a1 + 40));
  v4 = *(a1 + 40);

  dispatch_release(v4);
}

- (void)getProperties:(id)properties ofAdamIDs:(id)ds withCompletionFunction:(id)function
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [ds copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
    v10 = [properties copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
    if ([v9 count] && objc_msgSend(v10, "count"))
    {
      v11 = +[SUMediaLibraryAdamIDCache sharedCache];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __71__SUScriptMediaLibrary_getProperties_ofAdamIDs_withCompletionFunction___block_invoke;
      v13[3] = &unk_1E8165C78;
      v13[4] = function;
      v13[5] = self;
      [v11 getProperties:v10 ofAdamIDs:v9 withCompletionBlock:v13];
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E2F88];

    [v12 throwException:@"Invalid argument"];
  }
}

void __71__SUScriptMediaLibrary_getProperties_ofAdamIDs_withCompletionFunction___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  [(SUScriptFunction *)v4 setThisObject:*(a1 + 40)];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = objc_alloc_init(SUScriptMediaItem);
        [(SUScriptObject *)v11 setNativeObject:[SUScriptNativeObject objectWithNativeObject:v10]];
        [v5 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  -[SUScriptFunction callWithArguments:](v4, "callWithArguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v5, 0}]);

  [(SUScriptFunction *)v4 setThisObject:0];
}

- (id)makeCollectionWithItems:(id)items
{
  if ([(SUScriptMediaLibrary *)self _isRestricted]|| (v5 = [[SUScriptMediaItemCollection alloc] initWithItems:items]) == 0)
  {
    v8 = MEMORY[0x1E695DFB0];

    return [v8 null];
  }

  else
  {
    v6 = v5;
    [(SUScriptObject *)self checkInScriptObject:v5];

    return v6;
  }
}

- (id)makePickerWithMediaTypes:(id)types
{
  if ([(SUScriptMediaLibrary *)self _isRestricted]|| (v5 = [[SUScriptMediaPickerController alloc] initWithMediaTypes:types]) == 0)
  {
    v8 = MEMORY[0x1E695DFB0];

    return [v8 null];
  }

  else
  {
    v6 = v5;
    [(SUScriptObject *)self checkInScriptObject:v5];

    return v6;
  }
}

- (id)makeQueryWithPreset:(id)preset
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__20;
  v13 = __Block_byref_object_dispose__20;
  v14 = 0;
  if (![(SUScriptMediaLibrary *)self _isRestricted])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (preset == 0) | objc_opt_isKindOfClass() & 1) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      WebThreadRunOnMainThread();
      [(SUScriptObject *)self checkInScriptObject:v10[5]];
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }
  }

  v5 = v10[5];
  if (v5)
  {
    null = v5;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v7 = null;
  _Block_object_dispose(&v9, 8);
  return v7;
}

uint64_t __44__SUScriptMediaLibrary_makeQueryWithPreset___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetAlbums")}])
  {
    v2 = [MEMORY[0x1E6970618] albumsQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetArtists")}])
  {
    v2 = [MEMORY[0x1E6970618] artistsQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetSongs")}])
  {
    v2 = [MEMORY[0x1E6970618] songsQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetPlaylists")}])
  {
    v2 = [MEMORY[0x1E6970618] playlistsQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetPodcasts")}])
  {
    v2 = [MEMORY[0x1E6970618] podcastsQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetAudiobooks")}])
  {
    v2 = [MEMORY[0x1E6970618] audiobooksQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetCompilations")}])
  {
    v2 = [MEMORY[0x1E6970618] compilationsQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetComposers")}])
  {
    v2 = [MEMORY[0x1E6970618] composersQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetGenres")}])
  {
    v2 = [MEMORY[0x1E6970618] genresQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetMovies")}])
  {
    v2 = [MEMORY[0x1E6970618] moviesQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetMusicVideos")}])
  {
    v2 = [MEMORY[0x1E6970618] musicVideosQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetTVShows")}])
  {
    v2 = [MEMORY[0x1E6970618] tvShowsQuery];
    goto LABEL_27;
  }

  if ([*(a1 + 32) isEqualToString:{objc_msgSend(*(a1 + 40), "queryPresetVideoPodcasts")}])
  {
    v2 = [MEMORY[0x1E6970618] videoPodcastsQuery];
LABEL_27:
    v3 = v2;
    if (v2)
    {
      goto LABEL_29;
    }
  }

  v3 = objc_alloc_init(MEMORY[0x1E6970618]);
LABEL_29:
  *(*(*(a1 + 48) + 8) + 40) = objc_alloc_init(SUScriptMediaQuery);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = [SUScriptNativeObject objectWithNativeObject:v3];

  return [v4 setNativeObject:v5];
}

- (id)musicPlayerForType:(id)type
{
  v21 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    return [MEMORY[0x1E695DFB0] null];
  }

  if ([(SUScriptMediaLibrary *)self _isRestricted])
  {
    return [MEMORY[0x1E695DFB0] null];
  }

  [(SUScriptObject *)self lock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  musicPlayers = self->_musicPlayers;
  v6 = [(NSMutableArray *)musicPlayers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    [(SUScriptObject *)self unlock];
    goto LABEL_19;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v17;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(musicPlayers);
      }

      v11 = *(*(&v16 + 1) + 8 * i);
      if ([objc_msgSend(v11 "playerType")])
      {
        v8 = v11;
      }
    }

    v7 = [(NSMutableArray *)musicPlayers countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);
  [(SUScriptObject *)self unlock];
  if (!v8 || ![(SUScriptObject *)self scriptObjectIsCheckedIn:v8])
  {
LABEL_19:
    v13 = [[SUScriptMusicPlayerController alloc] initWithPlayerType:type];
    if (v13)
    {
      v8 = v13;
      [(SUScriptObject *)self checkInScriptObject:v13];
      [(SUScriptObject *)self lock];
      v14 = self->_musicPlayers;
      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        self->_musicPlayers = v14;
      }

      [(NSMutableArray *)v14 addObject:v8];
      [(SUScriptObject *)self unlock];
      v15 = v8;
      return v8;
    }

    return [MEMORY[0x1E695DFB0] null];
  }

  return v8;
}

- (id)playSongsInCollectionWithAdamID:(id)d firstItemID:(id)iD
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    iD = 0;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (!iD || (objc_opt_respondsToSelector()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  if (*(v9 + 24))
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  _Block_object_dispose(&v8, 8);
  return v6;
}

void __68__SUScriptMediaLibrary_playSongsInCollectionWithAdamID_firstItemID___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6970618] albumsQuery];
  v3 = MEMORY[0x1E6970610];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "longLongValue")}];
  [v2 addFilterPredicate:{objc_msgSend(v3, "predicateWithValue:forProperty:", v4, *MEMORY[0x1E696FB68])}];
  v5 = [v2 items];
  if ([v5 count])
  {
    v6 = [objc_alloc(MEMORY[0x1E69705E0]) initWithItems:v5];
    v7 = *(a1 + 48);
    if (v7 && (v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v7, "longLongValue")}], v33 = 0u, v34 = 0u, v35 = 0u, v36 = 0u, (v9 = objc_msgSend(v5, "countByEnumeratingWithState:objects:count:", &v33, v37, 16)) != 0))
    {
      v10 = v9;
      v11 = *v34;
      v12 = *MEMORY[0x1E696FB60];
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        if ([objc_msgSend(v14 valueForProperty:{v12), "isEqualToNumber:", v8}])
        {
          break;
        }

        if (v10 == ++v13)
        {
          v10 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
          v14 = 0;
          if (v10)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [MEMORY[0x1E69D4938] sharedConfig];
    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      v19 = [v5 count];
      v38 = 138412546;
      v39 = v18;
      v40 = 2048;
      v41 = v19;
      LODWORD(v32) = 22;
      v31 = &v38;
      v20 = _os_log_send_and_compose_impl();
      if (v20)
      {
        v21 = v20;
        v22 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v38, v32}];
        free(v21);
        v31 = v22;
        SSFileLog();
      }
    }

    v23 = [MEMORY[0x1E69707E8] systemMusicPlayer];
    [v23 setQueueWithItemCollection:v6];
    [*(a1 + 40) _launchMusicAppAfterPlayback:v23 firstItem:v14];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v24 = [MEMORY[0x1E69D4938] sharedConfig];
    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v26 &= 2u;
    }

    if (v26)
    {
      v27 = objc_opt_class();
      v28 = *(a1 + 32);
      v38 = 138412546;
      v39 = v27;
      v40 = 2112;
      v41 = v28;
      LODWORD(v32) = 22;
      v29 = _os_log_send_and_compose_impl();
      if (v29)
      {
        v30 = v29;
        [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:{4, &v38, v32}];
        free(v30);
        SSFileLog();
      }
    }
  }
}

- (id)playSongsWithAdamIDs:(id)ds
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [ds copyArrayValueWithValidator:SURespondsValidator context:sel_longLongValue];
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  if (*(v9 + 24))
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  _Block_object_dispose(&v8, 8);
  return v6;
}

void __45__SUScriptMediaLibrary_playSongsWithAdamIDs___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v35;
    v4 = *MEMORY[0x1E696FB60];
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v35 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [MEMORY[0x1E6970610] predicateWithValue:objc_msgSend(MEMORY[0x1E696AD98] forProperty:{"numberWithLongLong:", objc_msgSend(*(*(&v34 + 1) + 8 * i), "longLongValue")), v4}];
        v7 = objc_alloc(MEMORY[0x1E6970618]);
        v8 = [v7 initWithFilterPredicates:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObjects:", v6, 0)}];
        v9 = [v8 items];
        if ([v9 count] == 1)
        {
          [v32 addObject:{objc_msgSend(v9, "objectAtIndex:", 0)}];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v2);
  }

  if ([v32 count])
  {
    v10 = [objc_alloc(MEMORY[0x1E69705E0]) initWithItems:v32];
    v11 = [MEMORY[0x1E69D4938] sharedConfig];
    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 2;
    }

    if (v14)
    {
      v15 = objc_opt_class();
      v16 = [v10 count];
      v38 = 138412546;
      v39 = v15;
      v40 = 2048;
      v41 = v16;
      LODWORD(v30) = 22;
      v29 = &v38;
      v17 = _os_log_send_and_compose_impl();
      if (v17)
      {
        v18 = v17;
        v19 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v38, v30}];
        free(v18);
        v29 = v19;
        SSFileLog();
      }
    }

    v20 = [MEMORY[0x1E69707E8] systemMusicPlayer];
    [v20 setQueueWithItemCollection:v10];
    [*(a1 + 40) _launchMusicAppAfterPlayback:v20 firstItem:0];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v21 = [MEMORY[0x1E69D4938] sharedConfig];
    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    if (os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 2;
    }

    if (v24)
    {
      v25 = objc_opt_class();
      v26 = *(a1 + 32);
      v38 = 138412546;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      LODWORD(v30) = 22;
      v27 = _os_log_send_and_compose_impl();
      if (v27)
      {
        v28 = v27;
        [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, &v38, v30}];
        free(v28);
        SSFileLog();
      }
    }
  }
}

- (id)playVideoWithAdamID:(id)d
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  if (*(v7 + 24))
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  _Block_object_dispose(&v6, 8);
  return v4;
}

void __44__SUScriptMediaLibrary_playVideoWithAdamID___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "longLongValue")}];
  v3 = [MEMORY[0x1E6970610] predicateWithValue:v2 forProperty:*MEMORY[0x1E696FB60]];
  v4 = objc_alloc(MEMORY[0x1E6970618]);
  v5 = [v4 initWithFilterPredicates:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObjects:", v3, 0)}];
  if ([v5 _hasItems])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"videos://play?adam-id=%@", v2];
    v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
    v8 = [MEMORY[0x1E69D4938] sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v2;
      LODWORD(v22) = 22;
      v21 = &v23;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v23, v22}];
        free(v12);
        v21 = v13;
        SSFileLog();
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(MEMORY[0x1E6963608] defaultWorkspace];
  }

  else
  {
    v14 = [MEMORY[0x1E69D4938] sharedConfig];
    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = *(a1 + 32);
      v23 = 138412546;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      LODWORD(v22) = 22;
      v19 = _os_log_send_and_compose_impl();
      if (v19)
      {
        v20 = v19;
        [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v23, v22}];
        free(v20);
        SSFileLog();
      }
    }
  }
}

uint64_t __44__SUScriptMediaLibrary__connectNativeObject__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SUScriptNativeObject objectWithNativeObject:](SUScriptMediaLibraryNativeObject, "objectWithNativeObject:", [MEMORY[0x1E69705E8] defaultMediaLibrary]);

  return [v1 setNativeObject:v2];
}

- (void)_launchMusicApp
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  if (([defaultWorkspace openSensitiveURL:objc_msgSend(MEMORY[0x1E695DFF8] withOptions:{"URLWithString:", @"music://show-now-playing", 0}] & 1) == 0)
  {

    MEMORY[0x1EEE425E8](@"com.apple.Music", 0);
  }
}

- (void)_launchMusicAppAfterPlayback:(id)playback firstItem:(id)item
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__20;
  v19 = __Block_byref_object_dispose__20;
  v20 = 0;
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v9 = *MEMORY[0x1E6970268];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__SUScriptMediaLibrary__launchMusicAppAfterPlayback_firstItem___block_invoke;
  v14[3] = &unk_1E8165CF0;
  v14[4] = playback;
  v14[5] = self;
  v14[6] = defaultCenter;
  v14[7] = &v15;
  v10 = [defaultCenter addObserverForName:v9 object:playback queue:mainQueue usingBlock:v14];
  v16[5] = v10;
  v11 = v10;
  v12 = dispatch_time(0, 5000000000);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__SUScriptMediaLibrary__launchMusicAppAfterPlayback_firstItem___block_invoke_92;
  v13[3] = &unk_1E8165D18;
  v13[4] = self;
  v13[5] = defaultCenter;
  v13[6] = playback;
  v13[7] = &v15;
  dispatch_after(v12, MEMORY[0x1E69E96A0], v13);
  [playback beginGeneratingPlaybackNotifications];
  if (item)
  {
    [playback setNowPlayingItem:item];
  }

  [playback play];
  _Block_object_dispose(&v15, 8);
}

uint64_t __63__SUScriptMediaLibrary__launchMusicAppAfterPlayback_firstItem___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) playbackState];
  if (result == 1)
  {
    v3 = [MEMORY[0x1E69D4938] sharedConfig];
    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v11 = 138412290;
      v12 = objc_opt_class();
      LODWORD(v10) = 12;
      v9 = &v11;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v11, v10}];
        free(v7);
        v9 = v8;
        SSFileLog();
      }
    }

    [*(a1 + 40) _launchMusicApp];
    [*(a1 + 48) removeObserver:*(*(*(a1 + 56) + 8) + 40)];

    *(*(*(a1 + 56) + 8) + 40) = 0;
    return [*(a1 + 32) endGeneratingPlaybackNotifications];
  }

  return result;
}

uint64_t __63__SUScriptMediaLibrary__launchMusicAppAfterPlayback_firstItem___block_invoke_92(uint64_t result)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 56) + 8) + 40))
  {
    v1 = result;
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      LODWORD(v9) = 12;
      v8 = &v10;
      v5 = _os_log_send_and_compose_impl();
      if (v5)
      {
        v6 = v5;
        v7 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, &v10, v9}];
        free(v6);
        v8 = v7;
        SSFileLog();
      }
    }

    [*(v1 + 32) _launchMusicApp];
    [*(v1 + 40) removeObserver:*(*(*(v1 + 56) + 8) + 40)];

    *(*(*(v1 + 56) + 8) + 40) = 0;
    return [*(v1 + 48) endGeneratingPlaybackNotifications];
  }

  return result;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_34 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaLibrary;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_28, 10);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaLibrary;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMediaLibrary;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_34 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_28 = sel_containsAdamID_;
    *algn_1EBF3AFA8 = @"containsAdamID";
    qword_1EBF3AFB0 = sel_containsAdamIDs_;
    unk_1EBF3AFB8 = @"containsAdamIDs";
    qword_1EBF3AFC0 = sel_getProperties_ofAdamIDs_withCompletionFunction_;
    unk_1EBF3AFC8 = @"getItemProperties";
    qword_1EBF3AFD0 = sel_makeCollectionWithItems_;
    unk_1EBF3AFD8 = @"createCollection";
    qword_1EBF3AFE0 = sel_makePickerWithMediaTypes_;
    unk_1EBF3AFE8 = @"createPicker";
    qword_1EBF3AFF0 = sel_makeQueryWithPreset_;
    unk_1EBF3AFF8 = @"createQuery";
    qword_1EBF3B000 = sel_musicPlayerForType_;
    unk_1EBF3B008 = @"getMusicPlayer";
    qword_1EBF3B010 = sel_playSongsInCollectionWithAdamID_firstItemID_;
    unk_1EBF3B018 = @"playCollection";
    qword_1EBF3B020 = sel_playSongsWithAdamIDs_;
    unk_1EBF3B028 = @"playMusic";
    qword_1EBF3B030 = sel_playVideoWithAdamID_;
    unk_1EBF3B038 = @"playVideo";
    __KeyMapping_34 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"ITEM_ALBUM_ARTIST", @"itemPropertyAlbumArtist", @"ITEM_ALBUM_TITLE", @"itemPropertyAlbumTitle", @"ITEM_ARTIST", @"itemPropertyArtist", @"ITEM_COMPOSER", @"itemPropertyComposer", @"ITEM_DISC_COUNT", @"itemPropertyDiscCount", @"ITEM_DISC_NUMBER", 0x1F41BD000, @"ITEM_GENRE", @"itemPropertyGenre", @"ITEM_IS_COMPILATION", @"itemPropertyIsCompilation", @"ITEM_IS_HD", @"itemPropertyIsHD", @"ITEM_IS_RENTAL", @"itemPropertyIsRental", @"ITEM_LAST_PLAYED_DATE", @"itemPropertyLastPlayedDate", @"ITEM_LYRICS", @"itemPropertyLyrics", @"ITEM_MEDIA_TYPE", @"itemPropertyMediaType", @"ITEM_PERSISTENT_ID", @"itemPropertyPersistentID", @"ITEM_PLAY_COUNT", @"itemPropertyPlayCount", @"ITEM_PLAYBACK_DURATION", @"itemPropertyPlaybackDuration", @"ITEM_PODCAST_TITLE", @"itemPropertyPodcastTitle", @"ITEM_RATING", @"itemPropertyRating", @"ITEM_SKIP_COUNT", @"itemPropertySkipCount", @"ITEM_STORE_ID", @"itemPropertyStoreID", @"ITEM_TITLE", @"itemPropertyTitle", @"ITEM_TRACK_COUNT", @"itemPropertyTrackCount", @"ITEM_TRACK_NUMBER", @"itemPropertyTrackNumber", @"MEDIA_TYPE_ANY", @"mediaTypeAny", @"MEDIA_TYPE_ANY_AUDIO", @"mediaTypeAnyAudio", @"MEDIA_TYPE_ANY_VIDEO", @"mediaTypeAnyVideo", @"MEDIA_TYPE_AUDIOBOOK", @"mediaTypeAudiobook", @"MEDIA_TYPE_MOVIE", @"mediaTypeMovie", @"MEDIA_TYPE_MUSIC", @"mediaTypeMusic", @"MEDIA_TYPE_MUSIC_VIDEO", @"mediaTypeMusicVideo", @"MEDIA_TYPE_PODCAST"}];
  }
}

@end