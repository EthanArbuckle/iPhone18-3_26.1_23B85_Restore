@interface WLKContinueWatchingRequestOperation
+ (BOOL)isHeicFormatAllowed;
+ (void)donateMediaItems:(id)a3;
- (WLKContinueWatchingRequestOperation)initWithQueryParameters:(id)a3;
- (void)processResponse;
@end

@implementation WLKContinueWatchingRequestOperation

- (WLKContinueWatchingRequestOperation)initWithQueryParameters:(id)a3
{
  v4 = a3;
  if (WLKIsTVApp())
  {
    v5 = 0;
  }

  else
  {
    v5 = WLKIsTool() ^ 1;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:15.0];
  v7 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"shelves/uts.col.UpNext" queryParameters:v4 httpMethod:0 headers:0 caller:0 timeout:v6 apiVersion:&unk_288222C08 options:v5];

  v10.receiver = self;
  v10.super_class = WLKContinueWatchingRequestOperation;
  v8 = [(WLKUTSNetworkRequestOperation *)&v10 initWithRequestProperties:v7];

  return v8;
}

+ (BOOL)isHeicFormatAllowed
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = WLKIsTVApp();
  }

  return v2;
}

- (void)processResponse
{
  v10 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v10 setObjectClass:objc_opt_class()];
  v3 = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v10 processResponseData:v3 error:0];
  [(WLKContinueWatchingRequestOperation *)self setResponse:v4];

  v5 = [(WLKUTSNetworkRequestOperation *)self requestProperties];
  v6 = [v5 queryParameters];

  if (![v6 count] && WLKIsTVApp())
  {
    if ([(WLKNetworkRequestOperation *)self resourceFetchType]== 1)
    {
      v7 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v7 postNotificationName:@"WLKContinueWatchingRequestDidCompleteNotification" object:0];
    }

    v8 = objc_opt_class();
    v9 = [(WLKContinueWatchingResponse *)self->_response items];
    [v8 donateMediaItems:v9];
  }
}

+ (void)donateMediaItems:(id)a3
{
  v137 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v98 = objc_alloc_init(MEMORY[0x277CBEB40]);
  MGGetFloat32Answer();
  v5 = v4;
  v6 = WLKSiriActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    *buf = 138412290;
    v133 = v7;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKContinueWatchingResponse - UpNext items: %@", buf, 0xCu);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v126 objects:v136 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = v5 * 60.0;
    v111 = *v127;
    do
    {
      v11 = 0;
      v103 = v9;
      do
      {
        if (*v127 != v111)
        {
          objc_enumerationMutation(obj);
        }

        v118 = *(*(&v126 + 1) + 8 * v11);
        v12 = [v118 movieOrShowContent];
        v13 = [v12 contentType];
        v14 = [v12 canonicalID];
        v15 = [v12 title];
        v16 = [v12 images];
        v17 = [v16 artworkVariantOfType:26];
        v18 = v17;
        v121 = v15;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          [v12 images];
          v115 = v11;
          v20 = v14;
          v22 = v21 = v12;
          v19 = [v22 artworkVariantOfType:4];

          v12 = v21;
          v14 = v20;
          v11 = v115;
        }

        switch(v13)
        {
          case 1:
            v120 = v14;
            v112 = v12;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v116 = 11;
            goto LABEL_29;
          case 4:
            objc_opt_class();
            v120 = v14;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v34 = 0;
              v33 = 0;
              v32 = 0;
              v35 = 13;
              goto LABEL_26;
            }

            v23 = v12;
            v28 = [v23 images];
            v29 = [v28 artworkVariantOfType:26];
            v30 = v29;
            v105 = v19;
            if (v29)
            {
              v27 = v29;
            }

            else
            {
              [v23 images];
              v39 = v38 = v12;
              v27 = [v39 artworkVariantOfType:17];

              v12 = v38;
            }

            v32 = [v23 canonicalShowID];
            v33 = [v23 showTitle];
            v35 = 13;
            break;
          case 2:
            v105 = v19;
            v23 = [v118 movieOrShowContent];
            v24 = [v23 images];
            v25 = [v24 artworkVariantOfType:26];
            v26 = v25;
            v120 = v14;
            if (v25)
            {
              v27 = v25;
            }

            else
            {
              [v118 movieOrShowContent];
              v36 = v113 = v12;
              v37 = [v36 images];
              v27 = [v37 artworkVariantOfType:4];

              v12 = v113;
            }

            v33 = 0;
            v32 = 0;
            v35 = 12;
            break;
          default:
            goto LABEL_65;
        }

        v34 = v27;
        v19 = v105;
        v9 = v103;
LABEL_26:
        if (![v32 length] || !objc_msgSend(v33, "length"))
        {
          v42 = WLKSiriActionsLogObject();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v133 = v32;
            v134 = 2112;
            v135 = v33;
            _os_log_impl(&dword_272A0F000, v42, OS_LOG_TYPE_DEFAULT, "WLKContinueWatchingResponse - Skipping donation, missing media container info. mediaContainerCanonicalId: %@, mediaContainerItemTitle: %@", buf, 0x16u);
          }

          goto LABEL_64;
        }

        v116 = v35;
        v112 = v12;
        v31 = 1;
LABEL_29:
        v40 = +[WLKContinueWatchingRequestOperation isHeicFormatAllowed];
        v41 = @"jpeg";
        if (v40)
        {
          v41 = @"heic";
        }

        v42 = v41;
        v109 = v34;
        v110 = v32;
        v106 = v31;
        if (v31)
        {
          [v34 artworkSize];
          v44 = v43;
          [v34 artworkSize];
          v46 = v44 / v45;
          v47 = v19;
          v48 = v9;
          v49 = v33;
          v50 = v32;
          v51 = MEMORY[0x277CD3D10];
          v52 = [v34 artworkURLForSize:v42 format:{v10, v10 * v46}];
          v53 = [v51 imageWithURL:v52 width:60.0 height:v46 * 60.0];

          v54 = objc_alloc(MEMORY[0x277CD3DB8]);
          v55 = v50;
          v33 = v49;
          v9 = v48;
          v19 = v47;
          v56 = [v54 initWithIdentifier:v55 title:v33 type:v116 artwork:v53];
          v57 = 0;
LABEL_38:

          v32 = v110;
          goto LABEL_40;
        }

        if ([v120 length] && objc_msgSend(v121, "length"))
        {
          [v19 artworkSize];
          v59 = v58;
          [v19 artworkSize];
          v61 = v59 / v60;
          v62 = MEMORY[0x277CD3D10];
          v63 = [v19 artworkURLForSize:v42 format:{v10, v10 * v61}];
          v53 = [v62 imageWithURL:v63 width:60.0 height:v61 * 60.0];

          v57 = [objc_alloc(MEMORY[0x277CD3DB8]) initWithIdentifier:v120 title:v121 type:v116 artwork:v53];
          v56 = 0;
          goto LABEL_38;
        }

        v57 = 0;
        v56 = 0;
LABEL_40:
        v114 = v56;
        v108 = v57;
        if (!(v57 | v56))
        {
          v88 = WLKSiriActionsLogObject();
          v34 = v109;
          v107 = v88;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v133 = v118;
            _os_log_impl(&dword_272A0F000, v88, OS_LOG_TYPE_DEFAULT, "WLKContinueWatchingResponse - Skipping donation, no mediaItem or container %@", buf, 0xCu);
          }

          v12 = v112;
          goto LABEL_63;
        }

        v64 = 0;
        v100 = v42;
        if (v57 && v106 != 1)
        {
          v131 = v57;
          v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
        }

        v101 = v33;
        v65 = objc_alloc(MEMORY[0x277CD3EC0]);
        v66 = [v118 playable];
        v67 = [v66 playEvent];
        if (v67)
        {
          v68 = MEMORY[0x277CBEC38];
        }

        else
        {
          v68 = MEMORY[0x277CBEC28];
        }

        v107 = v64;
        v69 = [v65 initWithMediaItems:v64 mediaContainer:v114 playShuffled:MEMORY[0x277CBEC28] playbackRepeatMode:1 resumePlayback:v68 playbackQueueLocation:1 playbackSpeed:&unk_288222C20 mediaSearch:0];

        v70 = [v118 siriActionsExpirationEpochMillis];
        [v70 floatValue];
        v72 = v71 / 1000.0;

        [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v72];
        v99 = v104 = v69;
        [v69 setExpirationDate:?];
        v73 = [v118 siriActionsCategories];
        v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v75 = v73;
        v76 = [v75 countByEnumeratingWithState:&v122 objects:v130 count:16];
        if (v76)
        {
          v77 = v76;
          v78 = *v123;
          do
          {
            for (i = 0; i != v77; ++i)
            {
              if (*v123 != v78)
              {
                objc_enumerationMutation(v75);
              }

              v80 = [objc_alloc(MEMORY[0x277CD4188]) initWithVocabularyIdentifier:*(*(&v122 + 1) + 8 * i) spokenPhrase:@"TV" pronunciationHint:@"TV"];
              [v74 addObject:v80];
            }

            v77 = [v75 countByEnumeratingWithState:&v122 objects:v130 count:16];
          }

          while (v77);
        }

        v117 = v11;
        v81 = v19;

        [v104 setBuckets:v74];
        v82 = WLKTVAppBundleID();
        [v104 _setLaunchId:v82];
        [v104 _setExtensionBundleId:0];
        v83 = [v118 playable];
        v84 = [v83 channelDetails];
        v85 = [v84 appBundleIDs];
        v86 = [v85 firstObject];

        if (![v86 length])
        {
          goto LABEL_61;
        }

        v87 = [v83 channelDetails];
        if ([v87 isiTunes])
        {

LABEL_61:
          v90 = v82;

          v86 = v90;
          goto LABEL_62;
        }

        v89 = [v83 channelDetails];
        v119 = [v89 isFirstParty];

        if (v119)
        {
          goto LABEL_61;
        }

LABEL_62:
        v19 = v81;
        [v104 setProxiedBundleIdentifier:v86];
        [v98 addObject:v104];

        v9 = v103;
        v12 = v112;
        v11 = v117;
        v34 = v109;
        v32 = v110;
        v42 = v100;
        v33 = v101;
LABEL_63:

LABEL_64:
        v14 = v120;
LABEL_65:

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v126 objects:v136 count:16];
    }

    while (v9);
  }

  v91 = [MEMORY[0x277CD42A0] sharedManager];
  [v91 setPredictionMode:1 forType:12];

  v92 = [MEMORY[0x277CD42A0] sharedManager];
  [v92 setPredictionMode:1 forType:13];

  v93 = [MEMORY[0x277CD42A0] sharedManager];
  [v93 setPredictionMode:1 forType:11];

  v94 = [MEMORY[0x277CD42A0] sharedManager];
  v95 = [v98 copy];
  [v94 setSuggestedMediaIntents:v95];

  v96 = WLKSiriActionsLogObject();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v133 = v98;
    _os_log_impl(&dword_272A0F000, v96, OS_LOG_TYPE_DEFAULT, "WLKContinueWatchingResponse - Donated media intents: %@", buf, 0xCu);
  }

  v97 = *MEMORY[0x277D85DE8];
}

@end