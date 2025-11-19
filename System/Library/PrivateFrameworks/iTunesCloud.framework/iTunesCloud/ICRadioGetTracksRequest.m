@interface ICRadioGetTracksRequest
- (ICRadioGetTracksRequest)init;
- (NSDictionary)additionalRequestParameters;
- (id)copyWithZone:(_NSZone *)a3;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation ICRadioGetTracksRequest

- (void)performWithResponseHandler:(id)a3
{
  v5 = a3;
  v6 = [(ICRadioGetTracksRequest *)self requestContext];
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"ICRadioGetTracksRequest.m" lineNumber:72 description:@"Request context must not be nil."];
  }

  v7 = +[ICURLBagProvider sharedBagProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__ICRadioGetTracksRequest_performWithResponseHandler___block_invoke;
  v11[3] = &unk_1E7BF9DB0;
  v12 = v6;
  v13 = self;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  [v7 getBagForRequestContext:v9 withCompletionHandler:v11];
}

void __54__ICRadioGetTracksRequest_performWithResponseHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v21 = a1[6];
    if (v21)
    {
      if (v6)
      {
        v21[2](a1[6], 0, v6);
      }

      else
      {
        v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7200 userInfo:0];
        v21[2](v21, 0, v24);
      }
    }
  }

  else
  {
    v8 = [v5 radioConfiguration];
    v9 = [v8 baseURL];
    v10 = [v9 URLByAppendingPathComponent:@"getTracks" isDirectory:0];
    if (v10)
    {
      v26 = v9;
      v11 = [a1[4] clientInfo];
      v12 = [ICNetworkConstraints alloc];
      v25 = v11;
      v13 = [v11 clientBundleIdentifier];
      v14 = [(ICNetworkConstraints *)v12 initWithBundleIdentifier:v13];

      v15 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v10];
      [v15 setHTTPMethod:@"POST"];
      [v15 setAllowsCellularAccess:{-[ICNetworkConstraints shouldAllowDataForCellularNetworkTypes](v14, "shouldAllowDataForCellularNetworkTypes")}];
      v16 = [[ICRadioURLRequest alloc] initWithURLRequest:v15 requestContext:a1[4]];
      [(ICRadioURLRequest *)v16 setPrivateListeningEnabled:*(a1[5] + 3)];
      [(ICRadioURLRequest *)v16 setDelegatedPrivateListeningEnabled:*(a1[5] + 4)];
      -[ICRadioURLRequest setProtocolVersion:](v16, "setProtocolVersion:", [v8 maxSupportedProtocolVersion]);
      [(ICURLRequest *)v16 setRequestName:@"RadioGetTracks"];
      objc_initWeak(&location, a1[5]);
      v17 = +[ICMusicSubscriptionStatusController sharedStatusController];
      v18 = [a1[4] identity];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __54__ICRadioGetTracksRequest_performWithResponseHandler___block_invoke_2;
      v27[3] = &unk_1E7BF6658;
      v19 = v16;
      v20 = a1[5];
      v28 = v19;
      v29 = v20;
      objc_copyWeak(&v32, &location);
      v30 = v8;
      v31 = a1[6];
      [v17 getSubscriptionStatusForUserIdentity:v18 withCompletionHandler:v27];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);

      v9 = v26;
    }

    else
    {
      v22 = a1[6];
      if (v22)
      {
        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
        v22[2](v22, 0, v23);
      }
    }
  }
}

void __54__ICRadioGetTracksRequest_performWithResponseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__ICRadioGetTracksRequest_performWithResponseHandler___block_invoke_3;
  v17[3] = &unk_1E7BF6630;
  v7 = *(a1 + 32);
  v17[4] = *(a1 + 40);
  objc_copyWeak(&v20, (a1 + 64));
  v18 = *(a1 + 48);
  v8 = v5;
  v19 = v8;
  [v7 setRadioContentDictionaryCreationBlock:v17];
  v9 = +[ICURLSessionManager highPrioritySession];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__ICRadioGetTracksRequest_performWithResponseHandler___block_invoke_81;
  v13[3] = &unk_1E7BF9F60;
  v12 = *(a1 + 32);
  v10 = v12.i64[0];
  v14 = vextq_s8(v12, v12, 8uLL);
  v11 = v6;
  v15 = v11;
  v16 = *(a1 + 56);
  [v9 enqueueDataRequest:v10 withCompletionHandler:v13];

  objc_destroyWeak(&v20);
}

void __54__ICRadioGetTracksRequest_performWithResponseHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v91[1] = *MEMORY[0x1E69E9840];
  v68 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([*(*(a1 + 32) + 16) count])
  {
    [v9 addEntriesFromDictionary:*(*(a1 + 32) + 16)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = [*(a1 + 40) getTracksDPInfoKBSyncCount];
  v12 = [v7 DSID];
  v13 = [v12 unsignedLongLongValue];

  v69 = WeakRetained;
  v67 = v8;
  if (v11 < 1)
  {
    v15 = 0;
  }

  else
  {
    v63 = v7;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v14;
      v74 = v14;
      v75 = 0;
      v17 = ICFairPlayCopyKeyBagSyncData(v13, 9, &v75, &v74);
      v18 = v75;
      v14 = v74;

      if (!v17)
      {
        if (!v14)
        {
          v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7002 userInfo:0];
        }

        if (v14)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }

      v19 = [v18 base64EncodedStringWithOptions:0];
      if ([v19 length])
      {
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v15 addObject:v19];
      }

      --v11;
    }

    while (v11);
    if (v14)
    {
LABEL_12:
      v20 = v67;
      (*(v67 + 2))(v67, 0, v14);
      v7 = v63;
      WeakRetained = v69;
      goto LABEL_53;
    }

LABEL_17:
    v7 = v63;
    WeakRetained = v69;
  }

  if ([v15 count])
  {
    [v9 setObject:v15 forKey:@"kbsyncs"];
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = [WeakRetained stationStringID];
  v23 = 0x1E696A000;
  if (!v22)
  {
    v24 = [WeakRetained stationURL];
    v25 = [v24 absoluteString];
    if (v25)
    {
      [v21 setObject:v25 forKey:@"url"];
LABEL_30:

      v23 = 0x1E696A000uLL;
      goto LABEL_31;
    }

    v26 = [WeakRetained stationID];
    if (v26)
    {
      v27 = [MEMORY[0x1E696AD98] numberWithLongLong:v26];
      v28 = @"station-id";
    }

    else
    {
      v29 = [WeakRetained stationHash];
      v30 = WeakRetained;
      v27 = v29;
      if (!v29)
      {
        v66 = v7;
        [v30 seedContentReference];
        v58 = v57 = v21;
        v59 = [v58 matchDictionaryWithSubscriptionStatus:*(a1 + 48)];

        v21 = v57;
        if ([v59 count])
        {
          [v57 setObject:v59 forKey:@"match"];
        }

        v22 = 0;
        v7 = v66;
        goto LABEL_29;
      }

      v28 = @"station-hash";
    }

    [v21 setObject:v27 forKey:v28];
LABEL_29:

    WeakRetained = v69;
    goto LABEL_30;
  }

  [v21 setObject:v22 forKey:@"radio-station-id"];
LABEL_31:
  if (*(*(a1 + 32) + 56) >= 2)
  {
    v31 = [*(v23 + 3480) numberWithInteger:?];
    [v21 setObject:v31 forKey:@"count"];
  }

  v32 = [*(v23 + 3480) numberWithBool:{objc_msgSend(WeakRetained, "allowsExplicitContent") ^ 1}];
  [v21 setObject:v32 forKey:@"clean"];

  v91[0] = v21;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:1];
  [v9 setObject:v33 forKey:@"station-requests"];

  [v9 setObject:&unk_1F2C92218 forKey:@"global-version"];
  v34 = MEMORY[0x1E695E118];
  [v9 setObject:MEMORY[0x1E695E118] forKey:@"include-metadata"];
  [v9 setObject:v34 forKey:@"include-asset-info"];
  if ([WeakRetained shouldResponseContainStationMetadata])
  {
    [v9 setObject:MEMORY[0x1E695E118] forKey:@"include-station-dict"];
  }

  v35 = [WeakRetained nowPlayingContentReference];
  v36 = [v35 matchDictionaryWithSubscriptionStatus:*(a1 + 48)];

  if ([v36 count])
  {
    [v9 setObject:v36 forKey:@"now-playing-match"];
  }

  v62 = v36;
  v37 = [WeakRetained reasonType];
  if (v37)
  {
    v38 = v37;
    if (v37 == 6)
    {
      v60 = v21;
      v61 = v22;
      v64 = v7;
      v39 = [WeakRetained queueContentReferences];
      v40 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v39, "count")}];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v41 = v39;
      v42 = [v41 countByEnumeratingWithState:&v70 objects:v90 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v71;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v71 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = [*(*(&v70 + 1) + 8 * i) rawContentDictionaryWithSubscriptionStatus:*(a1 + 48)];
            if ([v46 count])
            {
              [v40 addObject:v46];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v70 objects:v90 count:16];
        }

        while (v43);
      }

      v88 = @"queue";
      v89 = v40;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      [v9 setObject:v47 forKeyedSubscript:@"playback-context"];

      v7 = v64;
      WeakRetained = v69;
      v21 = v60;
      v22 = v61;
      v23 = 0x1E696A000uLL;
    }

    v48 = [*(v23 + 3480) numberWithInteger:v38];
    [v9 setObject:v48 forKey:@"reason-type"];
  }

  v49 = [*(v23 + 3480) numberWithBool:{objc_msgSend(WeakRetained, "isPreservingCurrentlyPlayingItem")}];
  [v9 setObject:v49 forKey:@"will-continue-playback"];

  v50 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v65 = [WeakRetained isPrivateListeningEnabled];
    v51 = [v65 BOOLValue];
    v52 = [v69 isDelegatedPrivateListeningEnabled];
    v53 = v22;
    v54 = v21;
    v55 = [v52 BOOLValue];
    v56 = [v69 allowsExplicitContent];
    *buf = 134219266;
    v77 = v69;
    v78 = 1024;
    v79 = v51;
    WeakRetained = v69;
    v80 = 1024;
    v81 = v55;
    v21 = v54;
    v22 = v53;
    v82 = 1024;
    v83 = v56;
    v84 = 2114;
    v85 = v21;
    v86 = 2114;
    v87 = v9;
    _os_log_impl(&dword_1B4491000, v50, OS_LOG_TYPE_DEFAULT, "<ICRadioGetTracksRequest %p> Configured ICRadioURLRequest. privateListeningEnabled=%{BOOL}u delegatedPrivateListeningEnabled=%{BOOL}u allowsExplicitContent=%{BOOL}u stationDictionary=%{public}@ contentDictionary=%{public}@", buf, 0x32u);
  }

  v20 = v67;
  (*(v67 + 2))(v67, v9, 0);

  v14 = 0;
LABEL_53:
}

void __54__ICRadioGetTracksRequest_performWithResponseHandler___block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    *buf = 134218498;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "<ICRadioGetTracksRequest %p> Received response for %{public}@ error=%{public}@", buf, 0x20u);
  }

  if (v5 && !v6)
  {
    v12 = [v5 statusCode];
    if (v12 < 400)
    {
      v14 = [(ICRadioResponse *)[ICRadioGetTracksResponse alloc] initWithURLResponse:v5];
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7101 debugDescription:{@"httpStatusCode=%ld", v12}];
      v14 = 0;
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      (*(v16 + 16))(v16, v14, v13);
    }

    goto LABEL_14;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    if (!v6)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      (*(v15 + 16))(v15, 0, v14);
LABEL_14:

      goto LABEL_15;
    }

    (*(v15 + 16))(v15, 0, v6);
  }

LABEL_15:
}

- (NSDictionary)additionalRequestParameters
{
  if (self->_additionalRequestParameters)
  {
    return self->_additionalRequestParameters;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSDictionary *)self->_additionalRequestParameters copyWithZone:a3];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    *(v5 + 8) = self->_allowsExplicitContent;
    v8 = [(NSNumber *)self->_delegatedPrivateListeningEnabled copyWithZone:a3];
    v9 = *(v5 + 32);
    *(v5 + 32) = v8;

    v10 = [(NSNumber *)self->_privateListeningEnabled copyWithZone:a3];
    v11 = *(v5 + 24);
    *(v5 + 24) = v10;

    v12 = [(ICRadioContentReference *)self->_nowPlayingContentReference copyWithZone:a3];
    v13 = *(v5 + 104);
    *(v5 + 104) = v12;

    *(v5 + 9) = self->_preservingCurrentlyPlayingItem;
    *(v5 + 40) = self->_reasonType;
    objc_storeStrong((v5 + 48), self->_requestContext);
    v14 = [(ICRadioContentReference *)self->_seedContentReference copyWithZone:a3];
    v15 = *(v5 + 96);
    *(v5 + 96) = v14;

    *(v5 + 10) = self->_shouldResponseContainStationMetadata;
    *(v5 + 56) = self->_requestedTrackCount;
    objc_storeStrong((v5 + 80), self->_stationStringID);
    objc_storeStrong((v5 + 88), self->_stationURL);
    objc_storeStrong((v5 + 64), self->_stationHash);
    *(v5 + 72) = self->_stationID;
    v16 = [(NSArray *)self->_queueContentReferences copyWithZone:a3];
    v17 = *(v5 + 112);
    *(v5 + 112) = v16;
  }

  return v5;
}

- (ICRadioGetTracksRequest)init
{
  v3.receiver = self;
  v3.super_class = ICRadioGetTracksRequest;
  result = [(ICRadioGetTracksRequest *)&v3 init];
  if (result)
  {
    result->_allowsExplicitContent = 1;
  }

  return result;
}

@end