@interface PXAppleMusicCuration
+ (id)_parseAppleMusicCurationInfoFromJSONDictionary:(id)dictionary;
+ (id)curationFromDictionary:(id)dictionary photoLibrary:(id)library;
- (PXAppleMusicCuration)init;
- (PXAppleMusicCuration)initWithBestMusicSuggestions:(id)suggestions musicForYou:(id)you musicForLocation:(id)location musicForTime:(id)time musicForPerformer:(id)performer musicCurationInfo:(id)info;
@end

@implementation PXAppleMusicCuration

+ (id)_parseAppleMusicCurationInfoFromJSONDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"performerNames"];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [[PXAppleMusicCurationInfo alloc] initWithPerformerNames:v6];

  return v7;
}

PXAppleMusicAsset *__82__PXAppleMusicCuration_Creation__parseAppleMusicAssetsFromJSONArray_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"adamID"];
  if (v4)
  {
    v57 = a1;
    v5 = [v3 objectForKeyedSubscript:@"isExplicit"];
    v55 = [v5 BOOLValue];

    v68 = [v3 objectForKeyedSubscript:@"title"];
    v67 = [v3 objectForKeyedSubscript:@"artist"];
    v6 = [v3 objectForKeyedSubscript:@"album"];
    v66 = [v3 objectForKeyedSubscript:@"artworkURLFormat"];
    v7 = [v3 objectForKeyedSubscript:@"songURLPath"];
    v63 = v7;
    if (v7)
    {
      v65 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    }

    else
    {
      v65 = 0;
    }

    v9 = [v3 objectForKeyedSubscript:@"introPreviewPath"];
    v62 = v9;
    if (v9)
    {
      v53 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    }

    else
    {
      v53 = 0;
    }

    v50 = [v3 objectForKeyedSubscript:@"contentProvider"];
    if (!v50)
    {
      v10 = PLStoryGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurator) Song JSON is missing contentProvider.", &buf, 2u);
      }
    }

    buf = **&MEMORY[0x1E6960C70];
    v11 = [v3 objectForKeyedSubscript:@"duration"];
    v12 = v11;
    if (v11)
    {
      [v11 doubleValue];
      CMTimeMakeWithSeconds(&buf, v13, 300);
    }

    v61 = v12;
    v48 = [v3 objectForKeyedSubscript:@"arousal"];
    v47 = [v3 objectForKeyedSubscript:@"valence"];
    v45 = [v3 objectForKeyedSubscript:@"loudnessMainPeak"];
    v42 = [v3 objectForKeyedSubscript:@"loudnessMainValue"];
    v14 = [v3 objectForKeyedSubscript:@"flexMLAnalysis"];
    v59 = [v14 objectForKeyedSubscript:@"entryPoints"];
    if ([v59 count])
    {
      PXMap();
    }

    v15 = [v14 objectForKeyedSubscript:@"videoEvents"];
    v40 = [v15 objectForKeyedSubscript:@"score"];
    v54 = v15;
    v16 = [v15 objectForKeyedSubscript:@"timeInSeconds"];
    v17 = [v14 objectForKeyedSubscript:@"visualTempo"];
    v18 = [v17 objectForKeyedSubscript:@"value"];

    v64 = v4;
    v60 = v14;
    v52 = v18;
    v44 = v3;
    if ([v18 count])
    {
      v92 = 0u;
      v91 = 0u;
      v90 = 0u;
      v89 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v89 objects:v94 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v90;
        v23 = 0.0;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v90 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v89 + 1) + 8 * i) floatValue];
            v23 = v23 + v25;
          }

          v21 = [v19 countByEnumeratingWithState:&v89 objects:v94 count:16];
        }

        while (v21);
      }

      else
      {
        v23 = 0.0;
      }

      v27 = MEMORY[0x1E696AD98];
      *&v28 = v23 / [v19 count];
      v26 = [v27 numberWithFloat:v28];
      v4 = v64;
    }

    else
    {
      v26 = 0;
    }

    v38 = v6;
    v39 = [PXAppleMusicAsset alloc];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __82__PXAppleMusicCuration_Creation__parseAppleMusicAssetsFromJSONArray_photoLibrary___block_invoke_2;
    v69[3] = &unk_1E772DBA8;
    v70 = v4;
    v71 = v68;
    v72 = v67;
    v73 = v6;
    v74 = v66;
    v75 = v65;
    v76 = v53;
    v77 = v50;
    v87 = buf;
    v78 = v48;
    v79 = v47;
    v80 = v26;
    v81 = v45;
    v88 = v55;
    v82 = v42;
    v83 = v16;
    v84 = v40;
    v85 = 0;
    v86 = *(v57 + 32);
    v58 = 0;
    v56 = v40;
    v41 = v16;
    v43 = v42;
    v29 = v45;
    v46 = v26;
    v30 = v47;
    v49 = v48;
    v51 = v50;
    v31 = v53;
    v32 = v65;
    v33 = v66;
    v34 = v38;
    v35 = v67;
    v36 = v68;
    v8 = [(PXAppleMusicAsset *)v39 initWithConfiguration:v69];

    v4 = v64;
    v3 = v44;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __82__PXAppleMusicCuration_Creation__parseAppleMusicAssetsFromJSONArray_photoLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStoreID:v3];
  [v4 setTitle:*(a1 + 40)];
  [v4 setArtistName:*(a1 + 48)];
  [v4 setAlbumTitle:*(a1 + 56)];
  [v4 setArtworkURLFormat:*(a1 + 64)];
  [v4 setSongURL:*(a1 + 72)];
  [v4 setIntroPreviewURL:*(a1 + 80)];
  [v4 setContentProvider:*(a1 + 88)];
  v5 = *(a1 + 168);
  v6 = *(a1 + 184);
  [v4 setDuration:&v5];
  [v4 setEnergy:*(a1 + 96)];
  [v4 setValence:*(a1 + 104)];
  [v4 setVisualTempo:*(a1 + 112)];
  [v4 setLoudnessMainPeak:*(a1 + 120)];
  [v4 setLoudnessMainValue:*(a1 + 128)];
  [v4 setFlags:*(a1 + 192)];
  [v4 configureCuesWithVideoEventTimestampsInSeconds:*(a1 + 136) videoEventScores:*(a1 + 144)];
  [v4 setEntryPoints:*(a1 + 152)];
  [v4 setPhotoLibrary:*(a1 + 160)];
}

id __82__PXAppleMusicCuration_Creation__parseAppleMusicAssetsFromJSONArray_photoLibrary___block_invoke_65(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"timeInSeconds"];
  [v3 doubleValue];
  v5 = v4;
  v6 = [v2 objectForKeyedSubscript:@"gainTimeInSeconds"];
  v7 = [v2 objectForKeyedSubscript:@"gainValue"];

  v8 = PXAudioAssetEntryPointMake(v6, v7, v5);

  return v8;
}

+ (id)curationFromDictionary:(id)dictionary photoLibrary:(id)library
{
  libraryCopy = library;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"bestMusicSuggestions"];
  v9 = [self parseAppleMusicAssetsFromJSONArray:v8 photoLibrary:libraryCopy];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"musicForYou"];
  v11 = [self parseAppleMusicAssetsFromJSONArray:v10 photoLibrary:libraryCopy];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"musicForLocation"];
  v13 = [self parseAppleMusicAssetsFromJSONArray:v12 photoLibrary:libraryCopy];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"musicForTime"];
  v15 = [self parseAppleMusicAssetsFromJSONArray:v14 photoLibrary:libraryCopy];

  v16 = [dictionaryCopy objectForKeyedSubscript:@"musicForPerformer"];
  v17 = [self parseAppleMusicAssetsFromJSONArray:v16 photoLibrary:libraryCopy];

  v18 = [dictionaryCopy objectForKeyedSubscript:@"musicCurationInfo"];

  v19 = [self _parseAppleMusicCurationInfoFromJSONDictionary:v18];

  v20 = [[PXAppleMusicCuration alloc] initWithBestMusicSuggestions:v9 musicForYou:v11 musicForLocation:v13 musicForTime:v15 musicForPerformer:v17 musicCurationInfo:v19];

  return v20;
}

- (PXAppleMusicCuration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicCuration.m" lineNumber:59 description:{@"%s is not available as initializer", "-[PXAppleMusicCuration init]"}];

  abort();
}

- (PXAppleMusicCuration)initWithBestMusicSuggestions:(id)suggestions musicForYou:(id)you musicForLocation:(id)location musicForTime:(id)time musicForPerformer:(id)performer musicCurationInfo:(id)info
{
  suggestionsCopy = suggestions;
  youCopy = you;
  locationCopy = location;
  timeCopy = time;
  performerCopy = performer;
  infoCopy = info;
  v24.receiver = self;
  v24.super_class = PXAppleMusicCuration;
  v18 = [(PXAppleMusicCuration *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_bestMusicSuggestions, suggestions);
    objc_storeStrong(&v19->_musicForYou, you);
    objc_storeStrong(&v19->_musicForLocation, location);
    objc_storeStrong(&v19->_musicForTime, time);
    objc_storeStrong(&v19->_musicForPerformer, performer);
    objc_storeStrong(&v19->_musicCurationInfo, info);
  }

  return v19;
}

@end