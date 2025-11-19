@interface WFCloudKitWebServiceRequest
- (WFCloudKitWebServiceRequest)initWithContainer:(id)a3 database:(id)a4;
- (id)cloudKitAPIToken;
- (id)cloudKitEnvironment;
- (id)databaseName;
- (id)extractRecordDictFromRecordIfNecessary:(id)a3 recordType:(id)a4;
- (id)fetchProxiedRecordWithIdentifier:(id)a3 possibleItemTypes:(id)a4 completionHandler:(id)a5;
- (id)fetchRecordsWithItemType:(Class)a3 filter:(id)a4 cacheKey:(id)a5 completionHandler:(id)a6;
- (id)getJSONFromURL:(id)a3 headers:(id)a4 completionHandler:(id)a5;
- (id)pathComponentsForType:(unint64_t)a3 parameters:(id)a4;
- (id)postJSON:(id)a3 toURL:(id)a4 cacheKey:(id)a5 completionHandler:(id)a6;
- (id)queryWithItemType:(Class)a3 filter:(id)a4;
- (id)recordsFromQueryResponse:(id)a3;
- (id)urlForType:(unint64_t)a3 parameters:(id)a4;
- (void)parseRecord:(id)a3 intoItem:(id)a4 allKeys:(BOOL)a5;
@end

@implementation WFCloudKitWebServiceRequest

- (void)parseRecord:(id)a3 intoItem:(id)a4 allKeys:(BOOL)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E696ADC8];
  v9 = a3;
  v10 = [v8 currentQueue];
  v11 = [objc_opt_class() recordType];
  v12 = [(WFCloudKitWebServiceRequest *)self extractRecordDictFromRecordIfNecessary:v9 recordType:v11];

  v13 = [v12 objectForKeyedSubscript:@"fields"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass_47426(v13, v14);

  if (v15)
  {
    v16 = v7;
    v17 = [objc_opt_class() properties];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __60__WFCloudKitWebServiceRequest_parseRecord_intoItem_allKeys___block_invoke;
    v52[3] = &unk_1E837AEC0;
    v18 = v17;
    v53 = v18;
    v19 = v16;
    v54 = v19;
    v55 = v10;
    v56 = v19;
    [v15 enumerateKeysAndObjectsUsingBlock:v52];
    v20 = [v12 objectForKeyedSubscript:@"recordName"];
    v21 = objc_opt_class();
    v22 = WFEnforceClass_47426(v20, v21);

    v23 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v22];
    [v19 willChangeValueForKey:@"identifier"];
    v51 = v23;
    [v19 setValue:v23 forKey:@"identifier"];
    [v19 didChangeValueForKey:@"identifier"];
    if (objc_opt_respondsToSelector())
    {
      v46 = v22;
      v47 = v18;
      v49 = v10;
      v24 = [v12 objectForKeyedSubscript:@"created"];
      v25 = objc_opt_class();
      v26 = WFEnforceClass_47426(v24, v25);

      v27 = [v12 objectForKeyedSubscript:@"modified"];
      v28 = objc_opt_class();
      v50 = WFEnforceClass_47426(v27, v28);

      v29 = v26;
      v30 = [v26 objectForKeyedSubscript:@"timestamp"];
      v31 = objc_opt_class();
      v32 = WFEnforceClass_47426(v30, v31);

      v48 = v11;
      v45 = v32;
      if (v32)
      {
        v33 = MEMORY[0x1E695DF00];
        [v32 doubleValue];
        v35 = [v33 dateWithTimeIntervalSince1970:v34 / 1000.0];
      }

      else
      {
        v35 = 0;
      }

      v36 = [v50 objectForKeyedSubscript:@"timestamp"];
      v37 = objc_opt_class();
      v38 = WFEnforceClass_47426(v36, v37);

      if (v38)
      {
        v39 = MEMORY[0x1E695DF00];
        [v38 doubleValue];
        v41 = [v39 dateWithTimeIntervalSince1970:v40 / 1000.0];
      }

      else
      {
        v41 = 0;
      }

      v42 = [v29 objectForKeyedSubscript:@"userRecordName"];
      v43 = objc_opt_class();
      v44 = WFEnforceClass_47426(v42, v43);

      [v19 setCreatedAt:v35 modifiedAt:v41 createdBy:v44];
      v11 = v48;
      v10 = v49;
      v22 = v46;
      v18 = v47;
    }
  }
}

void __60__WFCloudKitWebServiceRequest_parseRecord_intoItem_allKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    v6 = [v23 objectForKeyedSubscript:@"value"];
    v7 = [v23 objectForKeyedSubscript:@"type"];
    if ([v7 isEqualToString:@"ASSETID"] && (objc_msgSend(v5, "isIgnoredByDefault") & 1) == 0)
    {
      v14 = [v6 objectForKeyedSubscript:@"downloadURL"];
      v15 = objc_opt_class();
      v16 = WFEnforceClass_47426(v14, v15);

      if (!v16)
      {
LABEL_13:

        goto LABEL_14;
      }

      v17 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v13 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:v17];

      v18 = [MEMORY[0x1E695DFF8] URLWithString:v13];
      if (v18)
      {
        v19 = [WFCloudKitWebServiceAssetDownloadOperation alloc];
        v20 = *(a1 + 40);
        v21 = [v5 name];
        v22 = [(WFCloudKitWebServiceAssetDownloadOperation *)v19 initWithAssetURL:v18 item:v20 key:v21];

        [*(a1 + 48) addOperation:v22];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_13;
      }

      if (!v6)
      {
LABEL_14:

        goto LABEL_15;
      }

      v8 = *(a1 + 56);
      v9 = [v5 name];
      [v8 willChangeValueForKey:v9];

      v10 = *(a1 + 56);
      v11 = [v5 name];
      [v10 setValue:v6 forKey:v11];

      v12 = *(a1 + 56);
      v13 = [v5 name];
      [v12 didChangeValueForKey:v13];
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (id)extractRecordDictFromRecordIfNecessary:(id)a3 recordType:(id)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:a4];
  v7 = [v6 objectForKeyedSubscript:@"record"];
  v8 = objc_opt_class();
  v9 = WFEnforceClass_47426(v7, v8);

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v11;
}

- (id)recordsFromQueryResponse:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = WFEnforceClass_47426(v3, v4);

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"results"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_47426(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)urlForType:(unint64_t)a3 parameters:(id)a4
{
  v31[5] = *MEMORY[0x1E69E9840];
  v7 = [(WFCloudKitWebServiceRequest *)self pathComponentsForType:a3 parameters:a4];
  v8 = [(WFCloudKitWebServiceRequest *)self webServiceForRequestType:a3];
  if (v8 == 1)
  {
    v20 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
    v21 = [v20 stringForKey:@"WFWebServiceProxyDevelopmentHostnameKey"];

    v14 = [&unk_1F4A9B698 arrayByAddingObjectsFromArray:v7];

    v18 = 0;
    v19 = @"https://www.icloud.com";
    goto LABEL_5;
  }

  if (!v8)
  {
    v31[0] = @"database";
    v31[1] = @"1";
    v9 = [(WFCloudKitWebServiceRequest *)self container];
    v10 = [v9 containerIdentifier];
    v31[2] = v10;
    v11 = [(WFCloudKitWebServiceRequest *)self cloudKitEnvironment];
    v31[3] = v11;
    v12 = [(WFCloudKitWebServiceRequest *)self databaseName];
    v31[4] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
    v14 = [v13 arrayByAddingObjectsFromArray:v7];

    v15 = MEMORY[0x1E696AF60];
    v16 = [(WFCloudKitWebServiceRequest *)self cloudKitAPIToken];
    v17 = [v15 queryItemWithName:@"ckAPIToken" value:v16];
    v30 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];

    v19 = @"https://api.apple-cloudkit.com";
LABEL_5:
    v7 = v14;
    goto LABEL_7;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"WFCloudKitWebServiceRequest.m" lineNumber:389 description:@"baseURL not provided for request type"];

  v18 = 0;
  v19 = 0;
LABEL_7:
  v23 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v19];
  v24 = [v7 componentsJoinedByString:@"/"];
  v25 = [@"/" stringByAppendingString:v24];
  [v23 setPath:v25];

  [v23 setQueryItems:v18];
  v26 = [v23 URL];
  if (!v26)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"WFCloudKitWebServiceRequest.m" lineNumber:395 description:{@"Could not create URL for web service request of type: %lu", a3}];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)cloudKitAPIToken
{
  v2 = [(WFCloudKitWebServiceRequest *)self container];
  v3 = [v2 containerIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E6997148]];

  if (v4)
  {
    return @"7488b9154a1a645448ca0b434fe1e0a63f312198ae1edf687920e274850d536c";
  }

  else
  {
    return @"8ab06078c4a6b3fa9dfb17508d0ca33174297a2382da5b17b272c5546780d68d";
  }
}

- (id)cloudKitEnvironment
{
  v2 = [MEMORY[0x1E6996CA8] sharedContext];
  v3 = [v2 applicationBundle];
  v4 = [v3 wf_entitlements];

  v5 = [v4 objectForKeyedSubscript:@"com.apple.developer.icloud-container-environment"];
  v6 = objc_opt_class();
  v7 = WFEnforceClass_47426(v5, v6);

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"development";
  }

  v9 = [(__CFString *)v8 lowercaseString];

  return v9;
}

- (id)pathComponentsForType:(unint64_t)a3 parameters:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v6 = [a4 objectForKeyedSubscript:@"WFCloudKitURLParameterIdentifier"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_47426(v6, v7);

    if (!v8)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"WFCloudKitWebServiceRequest.m" lineNumber:319 description:{@"Missing %@ for proxied record lookup", @"WFCloudKitURLParameterIdentifier"}];
    }

    v13[0] = @"records";
    v13[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  }

  else
  {
    v9 = &unk_1F4A9B680;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)databaseName
{
  v2 = [(WFCloudKitWebServiceRequest *)self database];
  v3 = [v2 databaseScope];

  v4 = @"public";
  if (v3 == 3)
  {
    v4 = @"shared";
  }

  if (v3 == 2)
  {
    return @"private";
  }

  else
  {
    return v4;
  }
}

- (id)getJSONFromURL:(id)a3 headers:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E696AD68];
  v9 = a4;
  v10 = [v8 requestWithURL:a3];
  [v10 setHTTPMethod:@"GET"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__WFCloudKitWebServiceRequest_getJSONFromURL_headers_completionHandler___block_invoke;
  v21[3] = &unk_1E837B748;
  v22 = v10;
  v11 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v21];

  v12 = [MEMORY[0x1E696AF78] wf_sharedSession];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __72__WFCloudKitWebServiceRequest_getJSONFromURL_headers_completionHandler___block_invoke_2;
  v19 = &unk_1E837AE90;
  v20 = v7;
  v13 = v7;
  v14 = [v12 dataTaskWithRequest:v11 completionHandler:&v16];

  [v14 resume];

  return v14;
}

void __72__WFCloudKitWebServiceRequest_getJSONFromURL_headers_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = WFEnforceClass_47426(v9, v10);

  if (v7 && !v8 && [v11 statusCode] == 200)
  {
    v18 = 0;
    v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v18];
    v8 = v18;
    v13 = *(*(a1 + 32) + 16);
LABEL_12:
    v13();

    goto LABEL_13;
  }

  v14 = [v8 domain];
  v15 = *MEMORY[0x1E696A978];
  if ([v14 isEqualToString:*MEMORY[0x1E696A978]])
  {
    v16 = [v8 code];

    if (v16 == -999)
    {
      v17 = *(a1 + 32);
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitErrorDomain" code:0 userInfo:0];
      v13 = *(v17 + 16);
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (!v8)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:v15 code:objc_msgSend(v11 userInfo:{"statusCode"), 0}];
  }

  (*(*(a1 + 32) + 16))();
LABEL_13:
}

- (id)postJSON:(id)a3 toURL:(id)a4 cacheKey:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v23 = 0;
  v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:0 error:&v23];
  v13 = v23;
  if (v13)
  {
    v11[2](v11, 0, v13);
    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E696AD68] requestWithURL:v9];
    [v15 setHTTPMethod:@"POST"];
    [v15 setHTTPBody:v12];
    [v15 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [v15 setValue:v10 forHTTPHeaderField:@"X-Apple-Cache-Key"];
    v16 = [MEMORY[0x1E696AF78] wf_sharedSession];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __73__WFCloudKitWebServiceRequest_postJSON_toURL_cacheKey_completionHandler___block_invoke;
    v21 = &unk_1E837AE90;
    v22 = v11;
    v14 = [v16 dataTaskWithRequest:v15 completionHandler:&v18];

    [v14 resume];
  }

  return v14;
}

void __73__WFCloudKitWebServiceRequest_postJSON_toURL_cacheKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = WFEnforceClass_47426(v9, v10);

  if (v7 && !v8 && [v11 statusCode] == 200)
  {
    v18 = 0;
    v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v18];
    v8 = v18;
    v13 = *(*(a1 + 32) + 16);
LABEL_12:
    v13();

    goto LABEL_13;
  }

  v14 = [v8 domain];
  v15 = *MEMORY[0x1E696A978];
  if ([v14 isEqualToString:*MEMORY[0x1E696A978]])
  {
    v16 = [v8 code];

    if (v16 == -999)
    {
      v17 = *(a1 + 32);
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitErrorDomain" code:0 userInfo:0];
      v13 = *(v17 + 16);
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (!v8)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:v15 code:objc_msgSend(v11 userInfo:{"statusCode"), 0}];
  }

  (*(*(a1 + 32) + 16))();
LABEL_13:
}

- (id)queryWithItemType:(Class)a3 filter:(id)a4
{
  v13[6] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(objc_class *)a3 recordType];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.*", v6];
  v8 = [v5 stringRepresentationWithRecordType:v6];

  v13[0] = @"SELECT";
  v13[1] = v7;
  v13[2] = @"FROM";
  v13[3] = v6;
  v13[4] = @"WHERE";
  v13[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:6];
  v10 = [v9 componentsJoinedByString:@" "];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)fetchProxiedRecordWithIdentifier:(id)a3 possibleItemTypes:(id)a4 completionHandler:(id)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = objc_opt_new();
  v32 = @"WFCloudKitURLParameterIdentifier";
  v33[0] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v14 = [(WFCloudKitWebServiceRequest *)self urlForType:1 parameters:v13];

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __100__WFCloudKitWebServiceRequest_fetchProxiedRecordWithIdentifier_possibleItemTypes_completionHandler___block_invoke;
  v26 = &unk_1E837AE68;
  v30 = v10;
  v31 = a2;
  v27 = v9;
  v28 = self;
  v15 = v12;
  v29 = v15;
  v16 = v9;
  v17 = v10;
  v18 = [(WFCloudKitWebServiceRequest *)self getJSONFromURL:v14 headers:0 completionHandler:&v23];
  [v15 setDataTask:{v18, v23, v24, v25, v26}];

  v19 = v29;
  v20 = v15;

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

void __100__WFCloudKitWebServiceRequest_fetchProxiedRecordWithIdentifier_possibleItemTypes_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v26 = v5;
    v7 = [v5 objectForKeyedSubscript:@"recordType"];
    v8 = objc_opt_class();
    v9 = WFEnforceClass_47426(v7, v8);

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        if (([v15 conformsToProtocol:&unk_1F4AB1E68] & 1) == 0)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"WFCloudKitWebServiceRequest.m" lineNumber:153 description:@"Found type in possibleItemTypes that doesn't conform to WFCloudKitItem protocol"];
        }

        v16 = [v15 recordType];
        v17 = [v16 isEqualToString:v9];

        if (v17)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v12)
          {
            goto LABEL_5;
          }

          goto LABEL_13;
        }
      }

      v19 = objc_alloc_init(v15);

      if (!v19)
      {
        goto LABEL_16;
      }

      v20 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __100__WFCloudKitWebServiceRequest_fetchProxiedRecordWithIdentifier_possibleItemTypes_completionHandler___block_invoke_285;
      block[3] = &unk_1E837CAF0;
      v21 = *(a1 + 48);
      v22 = *(a1 + 40);
      v28 = v21;
      v29 = v22;
      v6 = v26;
      v30 = v26;
      v31 = v19;
      v32 = *(a1 + 56);
      v23 = v19;
      dispatch_async(v20, block);
    }

    else
    {
LABEL_13:

LABEL_16:
      v24 = getWFCloudKitWSLogObject();
      v6 = v26;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v38 = "[WFCloudKitWebServiceRequest fetchProxiedRecordWithIdentifier:possibleItemTypes:completionHandler:]_block_invoke";
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_ERROR, "%s Unable to find matching record type. Received response: %@", buf, 0x16u);
      }

      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitErrorDomain" code:1 userInfo:0];
      (*(*(a1 + 56) + 16))();
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __100__WFCloudKitWebServiceRequest_fetchProxiedRecordWithIdentifier_possibleItemTypes_completionHandler___block_invoke_285(uint64_t a1)
{
  v2 = [*(a1 + 32) operationQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100__WFCloudKitWebServiceRequest_fetchProxiedRecordWithIdentifier_possibleItemTypes_completionHandler___block_invoke_2;
  v8[3] = &unk_1E837C1E8;
  v3 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v3;
  v10 = *(a1 + 56);
  [v2 addOperationWithBlock:v8];

  v4 = [*(a1 + 32) operationQueue];
  [v4 waitUntilAllOperationsAreFinished];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__WFCloudKitWebServiceRequest_fetchProxiedRecordWithIdentifier_possibleItemTypes_completionHandler___block_invoke_3;
  block[3] = &unk_1E837E1F8;
  v7 = *(a1 + 64);
  v6 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)fetchRecordsWithItemType:(Class)a3 filter:(id)a4 cacheKey:(id)a5 completionHandler:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  if (([(objc_class *)a3 conformsToProtocol:&unk_1F4AB1E68]& 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFCloudKitWebServiceRequest.m" lineNumber:83 description:@"itemType passed to WFCloudKitServiceRequest must conform to WFCloudKitItem protocol"];
  }

  v14 = objc_opt_new();
  v15 = [(WFCloudKitWebServiceRequest *)self urlForType:0 parameters:0];
  v16 = [(WFCloudKitWebServiceRequest *)self queryWithItemType:a3 filter:v13];

  v17 = getWFCloudKitWSLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v38 = "[WFCloudKitWebServiceRequest fetchRecordsWithItemType:filter:cacheKey:completionHandler:]";
    v39 = 2112;
    v40 = v16;
    _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Querying CloudKit: %@", buf, 0x16u);
  }

  v35[0] = @"resultsLimit";
  v35[1] = @"zoneID";
  v36[0] = &unk_1F4A9A8E8;
  v36[1] = &unk_1F4A99EB0;
  v35[2] = @"queryString";
  v36[2] = v16;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __90__WFCloudKitWebServiceRequest_fetchRecordsWithItemType_filter_cacheKey_completionHandler___block_invoke;
  v30 = &unk_1E837AE40;
  v33 = v11;
  v34 = a3;
  v31 = self;
  v19 = v14;
  v32 = v19;
  v20 = v11;
  v21 = [(WFCloudKitWebServiceRequest *)self postJSON:v18 toURL:v15 cacheKey:v12 completionHandler:&v27];

  [v19 setDataTask:{v21, v27, v28, v29, v30, v31}];
  v22 = v32;
  v23 = v19;

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

void __90__WFCloudKitWebServiceRequest_fetchRecordsWithItemType_filter_cacheKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFCloudKitWSLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[WFCloudKitWebServiceRequest fetchRecordsWithItemType:filter:cacheKey:completionHandler:]_block_invoke";
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Unable to fetch records. Error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) recordsFromQueryResponse:v5];
    v9 = getWFCloudKitWSLogObject();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "[WFCloudKitWebServiceRequest fetchRecordsWithItemType:filter:cacheKey:completionHandler:]_block_invoke";
        v24 = 2048;
        v25 = [v8 count];
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_INFO, "%s Received %lu records from query.", buf, 0x16u);
      }

      v11 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __90__WFCloudKitWebServiceRequest_fetchRecordsWithItemType_filter_cacheKey_completionHandler___block_invoke_272;
      block[3] = &unk_1E837AE18;
      v19 = v8;
      v12 = *(a1 + 56);
      *&v13 = *(a1 + 40);
      *(&v13 + 1) = *(a1 + 32);
      v17 = v13;
      *&v14 = *(a1 + 48);
      *(&v14 + 1) = v12;
      v20 = v17;
      v21 = v14;
      dispatch_async(v11, block);

      v15 = v19;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[WFCloudKitWebServiceRequest fetchRecordsWithItemType:filter:cacheKey:completionHandler:]_block_invoke";
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Unable to fetch records. Received response: %@", buf, 0x16u);
      }

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitErrorDomain" code:1 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __90__WFCloudKitWebServiceRequest_fetchRecordsWithItemType_filter_cacheKey_completionHandler___block_invoke_272(uint64_t a1)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__WFCloudKitWebServiceRequest_fetchRecordsWithItemType_filter_cacheKey_completionHandler___block_invoke_2;
  v12[3] = &unk_1E837ADF0;
  v15 = *(a1 + 64);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v13 = v3;
  v14 = v4;
  v5 = [v2 if_map:v12];
  v6 = [*(a1 + 40) operationQueue];
  [v6 waitUntilAllOperationsAreFinished];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__WFCloudKitWebServiceRequest_fetchRecordsWithItemType_filter_cacheKey_completionHandler___block_invoke_4;
  block[3] = &unk_1E837E1F8;
  v7 = *(a1 + 56);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id __90__WFCloudKitWebServiceRequest_fetchRecordsWithItemType_filter_cacheKey_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(*(a1 + 48));
  v5 = [*(a1 + 32) operationQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__WFCloudKitWebServiceRequest_fetchRecordsWithItemType_filter_cacheKey_completionHandler___block_invoke_3;
  v11[3] = &unk_1E837C1E8;
  v11[4] = *(a1 + 40);
  v12 = v3;
  v6 = v4;
  v13 = v6;
  v7 = v3;
  [v5 addOperationWithBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

- (WFCloudKitWebServiceRequest)initWithContainer:(id)a3 database:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFCloudKitWebServiceRequest;
  v9 = [(WFCloudKitWebServiceRequest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_container, a3);
    objc_storeStrong(&v10->_database, a4);
    v11 = v10;
  }

  return v10;
}

@end