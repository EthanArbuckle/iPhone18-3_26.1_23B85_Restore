@interface TIStickerCandidateGenerator
+ (TIStickerCandidateGenerator)sharedInstance;
- (CGImage)_scaledImageForStickerImage:(CGImage *)a3 cellHeight:(double)a4;
- (CGImage)getRetainedCachedStickerImageForIdentifier:(id)a3;
- (TIStickerCandidateGenerator)init;
- (id)_ckAttributionInfoFromSticker:(id)a3;
- (id)_generateKeyboardCandidatesForStickers:(id)a3 withQuery:(id)a4 withRenderTraits:(id)a5;
- (id)keyboardStickerWithIdentifier:(id)a3 roles:(id)a4;
- (id)stickersForStickerIdentifiers:(id)a3 roles:(id)a4;
- (void)_clearSpotlightCaches;
- (void)_generateStickerCandidatesForGenerativeEmojiSearchableQueries:(id)a3 withRenderTraits:(id)a4 shouldAppend:(BOOL)a5 language:(id)a6 completionHandler:(id)a7;
- (void)_purgeStickerImageCache;
- (void)cacheStickerImage:(CGImage *)a3 forIdentifier:(id)a4;
- (void)clearCache;
- (void)createContext;
- (void)dealloc;
- (void)generateStickerCandidatesForTaxonomySearchableQueries:(id)a3 generativeEmojiSearchableQueries:(id)a4 withRenderTraits:(id)a5 shouldAppend:(BOOL)a6 language:(id)a7 completionHandler:(id)a8;
@end

@implementation TIStickerCandidateGenerator

- (id)_generateKeyboardCandidatesForStickers:(id)a3 withQuery:(id)a4 withRenderTraits:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v48 = a4;
  v45 = a5;
  v47 = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v8;
  v50 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v50)
  {
    v49 = *v56;
    v9 = MEMORY[0x277D85CD0];
    while (2)
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v56 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v55 + 1) + 8 * i);
        v12 = TIStickerCandidateGeneratorOSLogFacility();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v35 = MEMORY[0x277CCACA8];
          v36 = [v11 identifier];
          v37 = [v35 stringWithFormat:@"%s Setting up candidate for sticker %@.", "-[TIStickerCandidateGenerator _generateKeyboardCandidatesForStickers:withQuery:withRenderTraits:]", v36];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v37;
          _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }

        v13 = [v11 representations];
        v14 = [v13 firstObject];

        if (v14)
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v62 = 0x2020000000;
          v15 = [v14 identifier];
          v16 = [(TIStickerCandidateGenerator *)self getRetainedCachedStickerImageForIdentifier:v15];

          v63 = v16;
          if (!*(*(&buf + 1) + 24))
          {
            v17 = [v14 data];
            v18 = CGImageSourceCreateWithData(v17, 0);

            ImageAtIndex = CGImageSourceCreateImageAtIndex(v18, 0, 0);
            if (v18)
            {
              CFRelease(v18);
            }

            if (ImageAtIndex)
            {
              [v45 singleCellHeight];
              v21 = v20;
              [v45 screenScale];
              v23 = [(TIStickerCandidateGenerator *)self _scaledImageForStickerImage:ImageAtIndex cellHeight:fmax(v21 * v22, 1.0)];
              *(*(&buf + 1) + 24) = v23;
              v24 = [v14 identifier];
              [(TIStickerCandidateGenerator *)self cacheStickerImage:v23 forIdentifier:v24];

              CGImageRelease(ImageAtIndex);
            }
          }

          v51 = 0;
          v52 = &v51;
          v53 = 0x2020000000;
          v54 = 0;
          TIDispatchSync();
          if (!*(v52 + 6))
          {
            TIDispatchSync();

            if (!*(v52 + 6))
            {
              CGImageRelease(*(*(&buf + 1) + 24));
              v41 = TIStickerCandidateGeneratorOSLogFacility();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s SlotID is still 0 after recreating remote context", "-[TIStickerCandidateGenerator _generateKeyboardCandidatesForStickers:withQuery:withRenderTraits:]"];
                *v59 = 138412290;
                v60 = v44;
                _os_log_error_impl(&dword_22CA55000, v41, OS_LOG_TYPE_ERROR, "%@", v59, 0xCu);
              }

              _Block_object_dispose(&v51, 8);
              _Block_object_dispose(&buf, 8);

              goto LABEL_25;
            }
          }

          TIDispatchSync();

          CGImageRelease(*(*(&buf + 1) + 24));
          v25 = MEMORY[0x277D6F3D8];
          v26 = *(v52 + 6);
          v27 = [v11 identifier];
          v28 = [v25 secureCandidateWithCandidate:&stru_283FDFAF8 forInput:v48 slotID:v26 customInfoType:4096 stickerIdentifier:v27];

          v29 = self;
          objc_sync_enter(v29);
          v30 = +[TIAppAutofillManager sharedInstance];
          v31 = [v30 secureCandidateRenderer];
          v32 = [v11 identifier];
          v33 = [v31 updateCachedCandidate:v28 withStickerIdentifier:v32];

          objc_sync_exit(v29);
          [v47 addObject:v28];
          v34 = TIStickerCandidateGeneratorOSLogFacility();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v38 = MEMORY[0x277CCACA8];
            v39 = [v11 identifier];
            v40 = [v38 stringWithFormat:@"%s Submitting sticker %@.", "-[TIStickerCandidateGenerator _generateKeyboardCandidatesForStickers:withQuery:withRenderTraits:]", v39];
            *v59 = 138412290;
            v60 = v40;
            _os_log_debug_impl(&dword_22CA55000, v34, OS_LOG_TYPE_DEBUG, "%@", v59, 0xCu);
          }

          _Block_object_dispose(&v51, 8);
          _Block_object_dispose(&buf, 8);
        }
      }

      v50 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v50)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  v42 = *MEMORY[0x277D85DE8];

  return v47;
}

void __97__TIStickerCandidateGenerator__generateKeyboardCandidatesForStickers_withQuery_withRenderTraits___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  *(*(*(a1 + 40) + 8) + 24) = [v2 createSlot];
}

void __97__TIStickerCandidateGenerator__generateKeyboardCandidatesForStickers_withQuery_withRenderTraits___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) createContext];
  v2 = [*(a1 + 32) context];
  *(*(*(a1 + 40) + 8) + 24) = [v2 createSlot];
}

void __97__TIStickerCandidateGenerator__generateKeyboardCandidatesForStickers_withQuery_withRenderTraits___block_invoke_152(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [v2 setObject:*(*(*(a1 + 40) + 8) + 24) forSlot:*(*(*(a1 + 48) + 8) + 24)];

  v3 = +[TIKeyboardSecureTouchManager sharedInstance];
  [v3 registerSlotID:*(*(*(a1 + 48) + 8) + 24)];
}

- (CGImage)_scaledImageForStickerImage:(CGImage *)a3 cellHeight:(double)a4
{
  Width = CGImageGetWidth(a3);
  v7 = ceil(a4 * 0.5);
  v8 = ceil(v7 / CGImageGetHeight(a3) * Width);
  ColorSpace = CGImageGetColorSpace(a3);
  v10 = CGBitmapContextCreate(0, a4, a4, 8uLL, 0, ColorSpace, 2u);
  CGContextSetInterpolationQuality(v10, kCGInterpolationHigh);
  v13.origin.x = floor((a4 - v8) * 0.5);
  v13.origin.y = floor((a4 - v7) * 0.5);
  v13.size.width = v8;
  v13.size.height = v7;
  CGContextDrawImage(v10, v13, a3);
  Image = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  return Image;
}

- (id)stickersForStickerIdentifiers:(id)a3 roles:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D681D8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v16 = 0;
  v9 = [v8 stickersWithIdentifiers:v7 roles:v6 error:&v16];

  v10 = v16;
  if (v10)
  {
    v11 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Error returned from Stickers %@.", "-[TIStickerCandidateGenerator stickersForStickerIdentifiers:roles:]", v10];
      *buf = 138412290;
      v18 = v15;
      _os_log_error_impl(&dword_22CA55000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_ckAttributionInfoFromSticker:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 attributionInfo];
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v6 = [v4 adamID];
    [v5 setObject:v6 forKeyedSubscript:@"adam-id"];

    v7 = [v4 bundleIdentifier];
    [v5 setObject:v7 forKeyedSubscript:@"bundle-id"];

    v8 = [v4 name];
    [v5 setObject:v8 forKeyedSubscript:@"name"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)keyboardStickerWithIdentifier:(id)a3 roles:(id)a4
{
  v76[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v76[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:1];
  v9 = [(TIStickerCandidateGenerator *)self stickersForStickerIdentifiers:v8 roles:v7];

  if ([v9 count])
  {
    v10 = objc_alloc_init(MEMORY[0x277D681D8]);
    v72 = 0;
    [v10 touchStickerWithIdentifier:v6 error:&v72];
    v11 = v72;
    if (v11)
    {
      v12 = TIStickerCandidateGeneratorOSLogFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Error returned from touching sticker with identifier %@: %@.", "-[TIStickerCandidateGenerator keyboardStickerWithIdentifier:roles:]", v6, v11];
        *buf = 138412290;
        v75 = v56;
        _os_log_error_impl(&dword_22CA55000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      v58 = self;
      v59 = v10;
      v60 = v9;
      v61 = v7;
      v62 = v6;
      v14 = [v9 firstObject];
      v67 = [MEMORY[0x277CBEB18] array];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v64 = v14;
      obj = [v14 representations];
      v15 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v69;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v69 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v68 + 1) + 8 * i);
            v20 = objc_alloc(MEMORY[0x277D6F4A0]);
            v21 = [v19 data];
            v22 = [v19 uti];
            v23 = [v19 role];
            [v19 size];
            v25 = v24;
            v27 = v26;
            v28 = [v19 effect];
            v29 = [v28 description];
            v30 = [v29 isEqualToString:@".none"];

            if (v30)
            {
              v31 = 0;
            }

            else
            {
              v32 = [v28 description];
              v33 = [v32 isEqualToString:@".stroke"];

              if (v33)
              {
                v31 = 1;
              }

              else
              {
                v34 = [v28 description];
                v35 = [v34 isEqualToString:@".comic"];

                if (v35)
                {
                  v31 = 2;
                }

                else
                {
                  v36 = [v28 description];
                  v37 = [v36 isEqualToString:@".puffy"];

                  if (v37)
                  {
                    v31 = 3;
                  }

                  else
                  {
                    v38 = [v28 description];
                    v39 = [v38 isEqualToString:@".iridescent"];

                    if (v39)
                    {
                      v31 = 4;
                    }

                    else
                    {
                      v31 = 0;
                    }
                  }
                }
              }
            }

            v40 = [v20 initWithData:v21 uti:v22 role:v23 size:v31 effect:{v25, v27}];
            [v67 addObject:v40];
          }

          v16 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
        }

        while (v16);
      }

      if (objc_opt_respondsToSelector())
      {
        obja = [v64 performSelector:sel_effectType];
      }

      else
      {
        obja = -1;
      }

      if (objc_opt_respondsToSelector())
      {
        v41 = [v64 metadata];
      }

      else
      {
        v41 = 0;
      }

      v6 = v62;
      if (objc_opt_respondsToSelector())
      {
        v42 = [v64 searchText];
      }

      else
      {
        v42 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v64 accessibilityName];
      }

      v43 = [(TIStickerCandidateGenerator *)v58 _ckAttributionInfoFromSticker:v64];
      v44 = v43;
      v45 = MEMORY[0x277CBEC10];
      if (v43)
      {
        v45 = v43;
      }

      v46 = v45;

      v47 = objc_alloc(MEMORY[0x277D6F498]);
      v48 = [v64 identifier];
      v49 = [v64 name];
      v50 = [v64 externalURI];
      v51 = [v64 accessibilityName];
      v52 = [v64 accessibilityName];
      v57 = v42;
      v63 = v42;
      v53 = v41;
      v13 = [v47 initWithIdentifier:v48 representations:v67 effectType:obja name:v49 externalURI:v50 accessibilityLabel:v51 metadata:v41 attributionInfo:v46 searchText:v57 accessibilityName:v52];

      v12 = v64;
      v9 = v60;
      v7 = v61;
      v11 = 0;
      v10 = v59;
    }
  }

  else
  {
    v13 = 0;
  }

  v54 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)createContext
{
  v12[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBED28];
  v4 = *MEMORY[0x277CDA100];
  v11[0] = *MEMORY[0x277CDA118];
  v11[1] = v4;
  v5 = *MEMORY[0x277CBED10];
  v12[0] = v3;
  v12[1] = v5;
  v6 = *MEMORY[0x277CDA110];
  v11[2] = *MEMORY[0x277CDA108];
  v11[3] = v6;
  v12[2] = v3;
  v12[3] = v3;
  v11[4] = *MEMORY[0x277CDA0E8];
  v12[4] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v8 = [MEMORY[0x277CD9E38] remoteContextWithOptions:v7];
  context = self->_context;
  self->_context = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (CGImage)getRetainedCachedStickerImageForIdentifier:(id)a3
{
  stickerToThumbnailLock = self->_stickerToThumbnailLock;
  v5 = a3;
  [(NSLock *)stickerToThumbnailLock lock];
  v6 = [(NSMutableDictionary *)self->_stickerToThumbnail objectForKey:v5];

  if (v6)
  {
    CGImageRetain(v6);
  }

  [(NSLock *)self->_stickerToThumbnailLock unlock];
  return v6;
}

- (void)cacheStickerImage:(CGImage *)a3 forIdentifier:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (a3 && v6)
  {
    [(NSLock *)self->_stickerToThumbnailLock lock];
    [(NSMutableDictionary *)self->_stickerToThumbnail setObject:a3 forKey:v7];
    [(NSLock *)self->_stickerToThumbnailLock unlock];
  }

  else
  {
    v8 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Could not cache sticker image sticker image ref (%p) and/or identifier (%@) were nil.", "-[TIStickerCandidateGenerator cacheStickerImage:forIdentifier:]", a3, v7];;
      *buf = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_22CA55000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_purgeStickerImageCache
{
  [(NSLock *)self->_stickerToThumbnailLock lock];
  [(NSMutableDictionary *)self->_stickerToThumbnail removeAllObjects];
  stickerToThumbnailLock = self->_stickerToThumbnailLock;

  [(NSLock *)stickerToThumbnailLock unlock];
}

- (void)clearCache
{
  [(TIStickerCandidateGenerator *)self _purgeStickerImageCache];
  v3 = +[TIKeyboardSecureTouchManager sharedInstance];
  [v3 clearRegistrations];

  context = self->_context;
  self->_context = 0;
}

- (void)_clearSpotlightCaches
{
  [(NSCache *)self->_queryToUUID removeAllObjects];
  negativeQueryStrings = self->_negativeQueryStrings;

  [(NSCache *)negativeQueryStrings removeAllObjects];
}

- (void)_generateStickerCandidatesForGenerativeEmojiSearchableQueries:(id)a3 withRenderTraits:(id)a4 shouldAppend:(BOOL)a5 language:(id)a6 completionHandler:(id)a7
{
  v101[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a6;
  v14 = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke;
  aBlock[3] = &unk_278731E78;
  aBlock[4] = self;
  v98 = a5;
  v50 = v12;
  v96 = v50;
  v15 = v14;
  v97 = v15;
  v16 = a3;
  v53 = _Block_copy(aBlock);
  v17 = [v16 reverseObjectEnumerator];

  v18 = [v17 allObjects];

  v49 = [MEMORY[0x277CC34D8] emptySuggestion];
  v19 = [MEMORY[0x277CC3508] userQueryContextWithCurrentSuggestion:?];
  v51 = v13;
  [v19 setKeyboardLanguage:v13];
  [v19 setBundleIDs:&unk_28400BA30];
  [v19 setFetchAttributes:&unk_28400BA48];
  [v19 setMaxSuggestionCount:50];
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__13855;
  v93 = __Block_byref_object_dispose__13856;
  v94 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__13855;
  v87 = __Block_byref_object_dispose__13856;
  v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__13855;
  v81 = __Block_byref_object_dispose__13856;
  v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0;
  v73 = &v72;
  v74 = 0x2810000000;
  v75 = "";
  v76 = 0;
  v52 = dispatch_group_create();
  if ([v18 count])
  {
    v20 = 0;
    v47 = v19;
    v48 = v15;
    while (1)
    {
      v21 = [v18 objectAtIndex:v20];
      if ([v21 length] < 3)
      {
        goto LABEL_28;
      }

      v22 = [v90[5] length];
      if (v22 > [v21 length])
      {
        goto LABEL_28;
      }

      if ([v21 isStopWord])
      {
        break;
      }

      v23 = [v21 normalizedQueryString];
      v24 = [(NSCache *)self->_negativeQueryStrings objectForKey:v23];
      v25 = [MEMORY[0x277CBEB68] null];

      if (v24 == v25)
      {

LABEL_28:
        goto LABEL_29;
      }

      v26 = [(NSCache *)self->_queryToUUID objectForKey:v23];
      if (v26)
      {
        v27 = v26;
        os_unfair_lock_lock(v73 + 8);
        v28 = v90[5];
        v90[5] = v21;
        v29 = v21;

        [v84[5] addObjectsFromArray:v27];
        os_unfair_lock_unlock(v73 + 8);

        goto LABEL_10;
      }

      v30 = [v19 copy];
      v31 = _createFilterQueryForQueryString_onceToken;
      v32 = v23;
      if (v31 != -1)
      {
        dispatch_once(&_createFilterQueryForQueryString_onceToken, &__block_literal_global_222);
      }

      if (_createFilterQueryForQueryString___shouldUseTokenizedFilterQuery)
      {
        v33 = @"(searchText == %@cdwt) || (captionText == %@cdwt) || (kMDItemPhotosSceneClassificationLabels == %@cwd || kMDItemPhotosSceneClassificationSynonyms == %@cwd)";
      }

      else
      {
        v33 = @"(searchText == %@cdw) || (captionText == %@cdwt) || (kMDItemPhotosSceneClassificationLabels == %@cwd || kMDItemPhotosSceneClassificationSynonyms == %@cwd)";
      }

      v34 = [MEMORY[0x277CCACA8] stringWithFormat:v33, v32, v32, v32, v32];

      v101[0] = v34;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:1];
      [v30 setFilterQueries:v35];

      v36 = [objc_alloc(MEMORY[0x277CC3500]) initWithUserQueryString:v32 userQueryContext:v30];
      v70[0] = 0;
      v70[1] = v70;
      v70[2] = 0x3032000000;
      v70[3] = __Block_byref_object_copy__13855;
      v70[4] = __Block_byref_object_dispose__13856;
      v71 = 0;
      v68[0] = 0;
      v68[1] = v68;
      v68[2] = 0x3032000000;
      v68[3] = __Block_byref_object_copy__13855;
      v68[4] = __Block_byref_object_dispose__13856;
      v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_95;
      v61[3] = &unk_278731EC0;
      v64 = v68;
      v61[4] = self;
      v37 = v32;
      v62 = v37;
      v65 = &v72;
      v38 = v21;
      v63 = v38;
      v66 = &v89;
      v67 = &v77;
      [v36 setFoundItemsHandler:v61];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_2;
      v60[3] = &unk_278731EE8;
      v60[4] = v70;
      [v36 setFoundSuggestionsHandler:v60];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_3;
      v54[3] = &unk_278731F10;
      v57 = &v77;
      v54[4] = self;
      v39 = v37;
      v55 = v39;
      v58 = &v72;
      v59 = &v83;
      v40 = v52;
      v56 = v40;
      [v36 setCompletionHandler:v54];
      dispatch_group_enter(v40);
      [v36 start];
      v41 = dispatch_time(0, 200000000);
      if (dispatch_group_wait(v40, v41))
      {
        v42 = TIStickerCandidateGeneratorOSLogFacility();
        v15 = v48;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Genmoji: Timeout before genmoji search could finish.", "-[TIStickerCandidateGenerator _generateStickerCandidatesForGenerativeEmojiSearchableQueries:withRenderTraits:shouldAppend:language:completionHandler:]"];
          *buf = 138412290;
          v100 = v44;
          _os_log_debug_impl(&dword_22CA55000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        (*(v48 + 2))(v48, 0, 0);
        v43 = 1;
      }

      else
      {
        v15 = v48;
        if ([v78[5] count])
        {
          os_unfair_lock_lock(v73 + 8);
          [v78[5] removeAllObjects];
          os_unfair_lock_unlock(v73 + 8);
          v43 = 0;
        }

        else
        {
          v43 = 2;
        }
      }

      v19 = v47;

      _Block_object_dispose(v68, 8);
      _Block_object_dispose(v70, 8);

      if (v43)
      {
        if (v43 != 2)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

LABEL_11:
      if ([v18 count] <= ++v20)
      {
        goto LABEL_29;
      }
    }

    v23 = v21;
LABEL_10:

    goto LABEL_11;
  }

LABEL_29:
  os_unfair_lock_lock(v73 + 8);
  v45 = [v84[5] copy];
  v53[2](v53, v45, v90[5]);

  os_unfair_lock_unlock(v73 + 8);
LABEL_30:

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v89, 8);

  v46 = *MEMORY[0x277D85DE8];
}

void __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(*(a1 + 32) + 16);
    v8 = [v6 normalizedQueryString];
    [v7 setObject:v5 forKey:v8 cost:{objc_msgSend(v5, "count")}];

    if (*(a1 + 56))
    {
      v9 = &stru_283FDFAF8;
    }

    else
    {
      v9 = [v6 queryString];
    }

    v11 = *(a1 + 32);
    v19[0] = @"com.apple.stickers.role.keyboard";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v13 = [v11 stickersForStickerIdentifiers:v5 roles:v12];

    v14 = [*(a1 + 32) _generateKeyboardCandidatesForStickers:v13 withQuery:v9 withRenderTraits:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Genmoji: No sticker suggestions have been received.", "-[TIStickerCandidateGenerator _generateStickerCandidatesForGenerativeEmojiSearchableQueries:withRenderTraits:shouldAppend:language:completionHandler:]_block_invoke"];
      *buf = 138412290;
      v18 = v16;
      _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_95(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Genmoji: CoreSpotlight returned %lu items.", "-[TIStickerCandidateGenerator _generateStickerCandidatesForGenerativeEmojiSearchableQueries:withRenderTraits:shouldAppend:language:completionHandler:]_block_invoke", objc_msgSend(v3, "count")];
      *buf = 138412290;
      v24 = v16;
      _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v17 = v3;
    v5 = [v3 sortedArrayUsingComparator:&__block_literal_global_102];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v18 + 1) + 8 * v9) attributeSet];
          v11 = [v10 attributeDictionary];
          v12 = [v11 objectForKey:@"stickerIdentifier"];

          v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
          if (v13)
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v13];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [*(*(a1 + 32) + 16) setObject:*(a1 + 40) forKey:*(*(*(a1 + 56) + 8) + 40)];
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    v14 = [*(a1 + 48) length];
    if (v14 > [*(*(*(a1 + 72) + 8) + 40) length])
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 48));
      [*(*(*(a1 + 80) + 8) + 40) addObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];
    }

    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));

    v3 = v17;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Genmoji: Error returned from CoreSpotlight %@.", "-[TIStickerCandidateGenerator _generateStickerCandidatesForGenerativeEmojiSearchableQueries:withRenderTraits:shouldAppend:language:completionHandler:]_block_invoke_3", v3];
      *buf = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    v5 = [*(*(*(a1 + 56) + 8) + 40) mutableCopy];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  }

  else
  {
    v8 = *(*(a1 + 32) + 24);
    v9 = [MEMORY[0x277CBEB68] null];
    [v8 setObject:v9 forKey:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_99(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 attributeSet];
  v7 = [v6 lastUsedDate];
  v8 = [v5 attributeSet];

  if (v7)
  {
    [v8 lastUsedDate];
  }

  else
  {
    [v8 contentCreationDate];
  }
  v9 = ;

  v10 = [v4 attributeSet];
  v11 = [v10 lastUsedDate];
  v12 = [v4 attributeSet];
  v13 = v12;
  if (v11)
  {
    [v12 lastUsedDate];
  }

  else
  {
    [v12 contentCreationDate];
  }
  v14 = ;

  [v9 timeIntervalSinceReferenceDate];
  v16 = v15;
  [v14 timeIntervalSinceReferenceDate];
  if (v16 > v17)
  {
    v18 = -1;
  }

  else
  {
    v18 = v16 < v17;
  }

  return v18;
}

- (void)generateStickerCandidatesForTaxonomySearchableQueries:(id)a3 generativeEmojiSearchableQueries:(id)a4 withRenderTraits:(id)a5 shouldAppend:(BOOL)a6 language:(id)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  if (TIGetShowStickersValue_onceToken != -1)
  {
    dispatch_once(&TIGetShowStickersValue_onceToken, &__block_literal_global_211);
  }

  v18 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v19 = [v18 valueForPreferenceKey:@"ShowStickers"];

  LOBYTE(v18) = [v19 BOOLValue];
  if (v18)
  {
    v20 = TIStickerCandidateGeneratorOSLogFacility();
    v21 = os_signpost_id_generate(v20);

    v22 = TIStickerCandidateGeneratorOSLogFacility();
    v23 = v22;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "Generate Stickers", &unk_22CCA4FEF, buf, 2u);
    }

    *buf = 0;
    v42 = buf;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__13855;
    v45 = __Block_byref_object_dispose__13856;
    v46 = MEMORY[0x277CBEBF8];
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__13855;
    v39[4] = __Block_byref_object_dispose__13856;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__13855;
    v37 = __Block_byref_object_dispose__13856;
    v38 = dispatch_group_create();
    if (_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl())
    {
      if (!v14)
      {
LABEL_16:
        v28 = [(TIStickerCandidateGenerator *)self backgroundOperationQueue];
        v29 = v17;
        v24 = v17;
        TIDispatchAsync();

        _Block_object_dispose(&v33, 8);
        _Block_object_dispose(v39, 8);

        _Block_object_dispose(buf, 8);
        v25 = v46;
        goto LABEL_17;
      }
    }

    else
    {
      v26 = _os_feature_enabled_impl();
      if (!v14 || (v26 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if ([v14 count])
    {
      dispatch_group_enter(v34[5]);
      v27 = [(TIStickerCandidateGenerator *)self backgroundOperationQueue];
      v30 = v14;
      v31 = v15;
      v32 = v16;
      TIDispatchAsync();
    }

    goto LABEL_16;
  }

  v47 = MEMORY[0x277D85DD0];
  v48 = 3221225472;
  v49 = __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke;
  v50 = &unk_2787338C0;
  v51 = v17;
  v24 = v17;
  TIDispatchAsync();
  v25 = v51;
LABEL_17:
}

uint64_t __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_55(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 88);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_2;
  v7[3] = &unk_278731D88;
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  return [v2 _generateStickerCandidatesForGenerativeEmojiSearchableQueries:v1 withRenderTraits:v4 shouldAppend:v3 language:v5 completionHandler:v7];
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_3(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = dispatch_time(0, 200000000);
  if (dispatch_group_wait(*(*(*(a1 + 40) + 8) + 40), v2))
  {
    v3 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Top level completion handler timed out for stickers search", "-[TIStickerCandidateGenerator generateStickerCandidatesForTaxonomySearchableQueries:generativeEmojiSearchableQueries:withRenderTraits:shouldAppend:language:completionHandler:]_block_invoke_3"];
      *buf = 138412290;
      v34 = v15;
      _os_log_error_impl(&dword_22CA55000, v3, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_61;
    v30 = &unk_278731DD8;
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v31 = v4;
    v32 = v5;
    TIDispatchAsync();
    v6 = v31;
  }

  else if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count")}];
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_65;
    v18[3] = &unk_278731E00;
    v19 = v8;
    v10 = v7;
    v20 = v10;
    v6 = v8;
    [v9 enumerateObjectsUsingBlock:v18];
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    v11 = v10;
    TIDispatchAsync();
  }

  else
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_62;
    v24 = &unk_278731DD8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v25 = v12;
    v26 = v13;
    TIDispatchAsync();
    v6 = v25;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_61(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = TIStickerCandidateGeneratorOSLogFacility();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_22CA55000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Generate Stickers", &unk_22CCA4FEF, v5, 2u);
  }
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_62(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = TIStickerCandidateGeneratorOSLogFacility();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_22CA55000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Generate Stickers", &unk_22CCA4FEF, v5, 2u);
  }
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 stickerIdentifier];
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    [*(a1 + 40) addObject:v4];
    [*(a1 + 32) addObject:v3];
  }
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_2_67(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) copy];
  (*(v2 + 16))(v2, v3);

  v4 = TIStickerCandidateGeneratorOSLogFacility();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v6, "Generate Stickers", &unk_22CCA4FEF, v7, 2u);
  }
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  v9 = a3;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(*(a1[6] + 8) + 40));
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, 0, 0);
  v4.receiver = self;
  v4.super_class = TIStickerCandidateGenerator;
  [(TIStickerCandidateGenerator *)&v4 dealloc];
}

- (TIStickerCandidateGenerator)init
{
  v18.receiver = self;
  v18.super_class = TIStickerCandidateGenerator;
  v2 = [(TIStickerCandidateGenerator *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.TextInput.TIStickerCandidateGenerator.bgQueue", v3);
    backgroundOperationQueue = v2->_backgroundOperationQueue;
    v2->_backgroundOperationQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEA78]);
    queryToUUID = v2->_queryToUUID;
    v2->_queryToUUID = v6;

    [(NSCache *)v2->_queryToUUID setCountLimit:100];
    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    negativeQueryStrings = v2->_negativeQueryStrings;
    v2->_negativeQueryStrings = v8;

    [(NSCache *)v2->_negativeQueryStrings setCountLimit:250];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    stickerToThumbnail = v2->_stickerToThumbnail;
    v2->_stickerToThumbnail = v10;

    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    stickerToThumbnailLock = v2->_stickerToThumbnailLock;
    v2->_stickerToThumbnailLock = v12;

    v14 = objc_alloc_init(TISceneTaxonomyGenerator);
    sceneTaxonomyGenerator = v2->_sceneTaxonomyGenerator;
    v2->_sceneTaxonomyGenerator = v14;

    [(TIStickerCandidateGenerator *)v2 createContext];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _stickersAddedOrDeletedNotificationCallback, @"com.apple.stickers.addedOrDeleted", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (TIStickerCandidateGenerator)sharedInstance
{
  if (sharedInstance_onceToken_13947 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_13947, &__block_literal_global_13948);
  }

  v3 = sharedInstance___stickerCandidateGenerator;

  return v3;
}

uint64_t __45__TIStickerCandidateGenerator_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TIStickerCandidateGenerator);
  v1 = sharedInstance___stickerCandidateGenerator;
  sharedInstance___stickerCandidateGenerator = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end