void sub_100001820(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v13[0] = location[0];
  v12 = -1;
  v9 = [v13[0] records];
  v10 = [v9 count];

  if (v10)
  {
    v5 = [v13[0] records];
    v11 = [v5 firstObject];

    v6 = [v11 valueForKey:@"index"];
    v12 = [v6 intValue];

    objc_storeStrong(&v11, 0);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }
  }

  else
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    NSLog(@"Error: Response is not of type WCAFetchKeyValuesResponse, instead its %@", v4);

    if (a1[4])
    {
      (*(a1[4] + 16))();
    }
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_100002094(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100015400;
  qword_100015400 = v1;
}

void sub_10000240C(uint64_t a1)
{
  NSLog(@"Received SIGTERM signal");
  [*(a1 + 32) _cancelDownload:&stru_100010A40];
  exit(15);
}

void sub_100002758(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v2 = a1[4];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10000288C;
  v7 = &unk_100010AB0;
  v8 = a1[4];
  v9 = a1[5];
  v10[0] = a1[6];
  [v2 _findLocallyInstalledAssetWithCompletion:?];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_10000288C(uint64_t a1)
{
  v21 = a1;
  v20 = a1;
  v12 = *(*(a1 + 32) + 8);
  v13 = [*(a1 + 40) asset];
  v14 = [v12 indexOfObject:?];

  v19 = v14;
  v18 = 0;
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:v19];
    v2 = v18;
    v18 = v1;
  }

  v17 = 0;
  v10 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = [v16 keys];
    v3 = [v8 _readInstalledKeys:? ofAsset:?];
    v4 = v17;
    v17 = v3;

    objc_storeStrong(&v16, 0);
  }

  else
  {
    v7 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = *(a1 + 40);
      v5 = [*(a1 + 32) _readSQLiteDataBase:v15 ofAsset:v18];
      v6 = v17;
      v17 = v5;

      objc_storeStrong(&v15, 0);
    }
  }

  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
}

NSDictionary *__cdecl sub_100002FBC(id a1)
{
  v2 = @"event";
  v3 = @"no-network-connectivity";
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

void sub_10000304C(id *a1, void *a2)
{
  v12[3] = a1;
  v12[2] = a2;
  v12[1] = a1;
  if (a2)
  {
    v2 = [a1[5] name];
    NSLog(@"[%s][%@] Metdata download failed", "[WCAServer _fetchAssetCatalogueFromServer:completion:]_block_invoke_2", v2);

    AnalyticsSendEventLazy();
    (*(a1[6] + 2))();
  }

  else
  {
    v4 = a1[4];
    v3 = a1[5];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000031E0;
    v10 = &unk_100010B18;
    v11 = a1[4];
    v12[0] = a1[6];
    [v4 _queryAndFindBestVersionOfAsset:v3 completion:&v6];
    objc_storeStrong(v12, 0);
    objc_storeStrong(&v11, 0);
  }
}

NSDictionary *__cdecl sub_100003230(id a1)
{
  v2 = @"event";
  v3 = @"metdata-download-failed";
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

uint64_t sub_100003450(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v18 = a1;
  NSLog(@"Query MAQueryResult: %ld", a2);
  v13 = [*(a1 + 32) results];
  v14 = [v13 count];

  if (v14)
  {
    memset(__b, 0, sizeof(__b));
    obj = [*(a1 + 32) results];
    v11 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
    if (v11)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v11;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(__b[1] + 8 * v8);
        v3 = [v17 attributes];
        v15 = [v3 objectForKeyedSubscript:@"WiFiCloudAssetType"];

        v4 = *(*(a1 + 40) + 40);
        v5 = [v17 getLocalUrl];
        [v4 setObject:? forKey:?];

        objc_storeStrong(&v15, 0);
        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
          if (!v9)
          {
            break;
          }
        }
      }
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100003C88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(@"Query MAQueryResult: %ld", a2);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) results];
    v8 = [v7 count];

    if (v8)
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = [*(a1 + 32) results];
      v2 = *(a1 + 56);
      [v5 _findBestVersionOfAsset:v4 fromResults:? completion:?];
    }

    else
    {
      v3 = [*(a1 + 48) name];
      NSLog(@"[%s][%@] Empty results for asset update query", "[WCAServer _queryAndFindBestVersionOfAsset:completion:]_block_invoke", v3);

      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_100004834(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  NSLog(@"[%s][%@] %s: Asset version %@ purged", "[WCAServer _findBestVersionOfAsset:fromResults:completion:]_block_invoke", v2, "[WCAServer _findBestVersionOfAsset:fromResults:completion:]_block_invoke", *(a1 + 40));
}

void sub_100004A60(id a1, MAProgressNotification *a2)
{
  v2 = a1;
  location[1] = a1;
  v4 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = v2;
  v3 = [location[0] totalWritten];
  NSLog(@"Progress callback: %lld %lld", v3, [location[0] totalExpected]);
  objc_storeStrong(v4, v5);
}

uint64_t sub_100004AE8(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v24 = a1;
  v23 = a2;
  v22[1] = a1;
  v10 = [*(a1 + 32) assetType];
  v9 = [*(v8 + 32) getLocalUrl];
  NSLog(@"Got the download asset reply: %@, and %@", v10, v9);

  if (v23)
  {
    v3 = [*(v8 + 40) name];
    NSLog(@"[%s][%@] %s: Asset download failed - error %ld", "[WCAServer _downloadAsset:withLocalAsset:completion:]_block_invoke_2", v3, "[WCAServer _downloadAsset:withLocalAsset:completion:]_block_invoke_2", v23);

    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_100004E90;
    v15 = &unk_100010C38;
    v16 = v23;
    AnalyticsSendEventLazy();
  }

  else
  {
    v4 = [*(v8 + 40) name];
    NSLog(@"[%s][%@] %s: Asset download completed", "[WCAServer _downloadAsset:withLocalAsset:completion:]_block_invoke_2", v4, "[WCAServer _downloadAsset:withLocalAsset:completion:]_block_invoke_2");

    v5 = &v17;
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_100004D98;
    v21 = &unk_100010C18;
    location = v22;
    v22[0] = *(v8 + 32);
    AnalyticsSendEventLazy();
    v6 = [*(v8 + 40) latestNotInstalledAsset];
    [*(v8 + 40) setLatestInstalledAsset:?];

    objc_storeStrong(location, 0);
  }

  return (*(*(v8 + 48) + 16))();
}

NSDictionary *sub_100004D98(uint64_t a1)
{
  v4[0] = @"event";
  v5[0] = @"asset-download-completed";
  v4[1] = @"asset-type";
  v2 = [*(a1 + 32) assetType];
  v5[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v3;
}

NSDictionary *sub_100004E90(uint64_t a1)
{
  v4[0] = @"event";
  v5[0] = @"asset-download-failed";
  v4[1] = @"error";
  v2 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v3;
}

NSDictionary *__cdecl sub_100005A08(id a1)
{
  v2 = @"event";
  v3 = @"default-assets";
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

NSDictionary *__cdecl sub_100005A98(id a1)
{
  v2 = @"event";
  v3 = @"locally-installed-assets";
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

NSDictionary *sub_100005B28(uint64_t a1)
{
  v6[0] = @"event";
  v7[0] = @"found-local-overrides";
  v6[1] = @"key";
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"KeyPath"];
  v7[1] = v5;
  v6[2] = @"value";
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"Value"];
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

void sub_1000064E8(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

id WFRunSqliteQuery(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v101 = 0;
  objc_storeStrong(&v101, a2);
  v100 = 0;
  objc_storeStrong(&v100, a3);
  v99 = 0;
  objc_storeStrong(&v99, a4);
  v98 = a5;
  v97 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  v61 = v99;
  v62 = [v61 countByEnumeratingWithState:__b objects:v107 count:16];
  if (v62)
  {
    v54 = *__b[2];
    v55 = 0;
    v56 = v62;
    while (1)
    {
      v53 = v55;
      if (*__b[2] != v54)
      {
        objc_enumerationMutation(v61);
      }

      v96 = *(__b[1] + 8 * v55);
      v51 = v97;
      v52 = [NSString stringWithFormat:@"%@", v96];
      [v51 addObject:?];

      ++v55;
      if (v53 + 1 >= v56)
      {
        v55 = 0;
        v56 = [v61 countByEnumeratingWithState:__b objects:v107 count:16];
        if (!v56)
        {
          break;
        }
      }
    }
  }

  v94 = 0;
  if ([v97 count])
  {
    v5 = [v97 componentsJoinedByString:{@", "}];
    v6 = v94;
    v94 = v5;
  }

  else
  {
    objc_storeStrong(&v94, @"*");
  }

  v93 = 0;
  v50 = location;
  v7 = location;
  if (sqlite3_open_v2([v50 fileSystemRepresentation], &v93, 1, 0))
  {
    sqlite3_close(v93);
    NSLog(@"Failed to open db connection");
    v103 = 0;
    v91 = 1;
  }

  else
  {
    v90 = objc_opt_new();
    [v90 appendFormat:@"SELECT %@ FROM %@ WHERE ", v94, v100];
    v89 = objc_opt_new();
    memset(v87, 0, sizeof(v87));
    v48 = v101;
    v49 = [v48 countByEnumeratingWithState:v87 objects:v106 count:16];
    if (v49)
    {
      v45 = *v87[2];
      v46 = 0;
      v47 = v49;
      while (1)
      {
        v44 = v46;
        if (*v87[2] != v45)
        {
          objc_enumerationMutation(v48);
        }

        v88 = *(v87[1] + 8 * v46);
        v42 = v89;
        v43 = [NSString stringWithFormat:@"(%@ = ?)", v88];
        [v42 addObject:?];

        ++v46;
        if (v44 + 1 >= v47)
        {
          v46 = 0;
          v47 = [v48 countByEnumeratingWithState:v87 objects:v106 count:16];
          if (!v47)
          {
            break;
          }
        }
      }
    }

    v86 = [v89 componentsJoinedByString:@" AND "];
    v83 = 0;
    if (v98 <= 0)
    {
      v8 = &stru_1000127D0;
    }

    else
    {
      v84 = [NSString stringWithFormat:@"LIMIT %d", v98];
      v83 = 1;
      v8 = v84;
    }

    v85 = v8;
    if (v83)
    {
    }

    [v90 appendFormat:@"%@ %@;", v86, v85];
    v82 = 0;
    db = v93;
    v40 = v90;
    v9 = v90;
    v81 = sqlite3_prepare_v2(db, [v40 UTF8String], -1, &v82, 0);
    if (v81)
    {
      v103 = 0;
      v91 = 1;
    }

    else
    {
      v80 = 1;
      memset(v78, 0, sizeof(v78));
      v38 = v101;
      v39 = [v38 countByEnumeratingWithState:v78 objects:v105 count:16];
      if (v39)
      {
        v35 = *v78[2];
        v36 = 0;
        v37 = v39;
        while (1)
        {
          v34 = v36;
          if (*v78[2] != v35)
          {
            objc_enumerationMutation(v38);
          }

          v79 = *(v78[1] + 8 * v36);
          v77 = [v101 objectForKeyedSubscript:v79];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v76 = v77;
            v33 = v76;
            v10 = v76;
            if (!strcmp([v33 objCType], "i") || (v32 = v76, v11 = v76, !strcmp(objc_msgSend(v32, "objCType"), "B")))
            {
              sqlite3_bind_int(v82, v80, [v76 intValue]);
            }

            else
            {
              v31 = v76;
              v12 = v76;
              if (!strcmp([v31 objCType], "f"))
              {
                v29 = v82;
                v30 = v80;
                [v76 doubleValue];
                sqlite3_bind_double(v29, v30, v13);
              }

              else
              {
                v28 = v76;
                v14 = v76;
                if (!strcmp([v28 objCType], "q"))
                {
                  sqlite3_bind_int64(v82, v80, [v76 longLongValue]);
                }
              }
            }

            objc_storeStrong(&v76, 0);
          }

          else
          {
            v75 = [v77 description];
            v74 = [v75 lengthOfBytesUsingEncoding:?];
            v27 = v75;
            v15 = v75;
            v73 = [v27 cStringUsingEncoding:4];
            sqlite3_bind_text(v82, v80, v73, v74, 0);
            objc_storeStrong(&v75, 0);
          }

          ++v80;
          objc_storeStrong(&v77, 0);
          ++v36;
          if (v34 + 1 >= v37)
          {
            v36 = 0;
            v37 = [v38 countByEnumeratingWithState:v78 objects:v105 count:16];
            if (!v37)
            {
              break;
            }
          }
        }
      }

      v72 = 0;
      v71 = objc_opt_new();
      v70 = objc_opt_new();
      while (1)
      {
        v81 = sqlite3_step(v82);
        if (v81 != 100)
        {
          break;
        }

        if ((v72 & 1) == 0)
        {
          v69 = sqlite3_column_count(v82);
          for (N = 0; N < v69; ++N)
          {
            v67 = [NSString stringWithUTF8String:sqlite3_column_name(v82, N)];
            [v71 addObject:v67];
            objc_storeStrong(&v67, 0);
          }

          v72 = 1;
        }

        v66 = objc_opt_new();
        iCol = 0;
        memset(v64, 0, 0x40uLL);
        v25 = v71;
        v26 = [v25 countByEnumeratingWithState:v64 objects:v104 count:16];
        if (v26)
        {
          v22 = *v64[2];
          v23 = 0;
          v24 = v26;
          while (1)
          {
            v21 = v23;
            if (*v64[2] != v22)
            {
              objc_enumerationMutation(v25);
            }

            v64[8] = *(v64[1] + 8 * v23);
            v63 = sqlite3_column_type(v82, iCol);
            switch(v63)
            {
              case 1:
                v20 = [NSNumber numberWithLongLong:sqlite3_column_int64(v82, iCol)];
                [v66 setObject:? forKeyedSubscript:?];

                break;
              case 2:
                v19 = [NSNumber numberWithDouble:sqlite3_column_double(v82, iCol)];
                [v66 setObject:? forKeyedSubscript:?];

                break;
              case 3:
                v18 = [NSString stringWithUTF8String:sqlite3_column_text(v82, iCol)];
                [v66 setObject:? forKeyedSubscript:?];

                break;
            }

            ++iCol;
            ++v23;
            if (v21 + 1 >= v24)
            {
              v23 = 0;
              v24 = [v25 countByEnumeratingWithState:v64 objects:v104 count:16];
              if (!v24)
              {
                break;
              }
            }
          }
        }

        [v70 addObject:v66];
        objc_storeStrong(&v66, 0);
      }

      v103 = v70;
      v91 = 1;
      objc_storeStrong(&v70, 0);
      objc_storeStrong(&v71, 0);
    }

    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v89, 0);
    objc_storeStrong(&v90, 0);
  }

  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v97, 0);
  objc_storeStrong(&v99, 0);
  objc_storeStrong(&v100, 0);
  objc_storeStrong(&v101, 0);
  objc_storeStrong(&location, 0);
  v16 = v103;

  return v16;
}

void sub_1000076E8(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v38 = 0;
  objc_storeStrong(&v38, a3);
  v37 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = location[0];
    v34 = objc_opt_new();
    v6 = [v35 keyValues];
    v5 = [v6 objectForKeyedSubscript:@"WiFiInternalSSIDs"];
    v4 = [v5 arrayValue];
    [v34 setInternalSSIDs:?];

    v9 = [v35 keyValues];
    v8 = [v9 objectForKeyedSubscript:@"MacRandomization"];
    v7 = [v8 dictionaryValue];
    [v34 setDisabledMacRandomizationVersions:?];

    v12 = [v35 keyValues];
    v11 = [v12 objectForKeyedSubscript:@"SoftErrors"];
    v10 = [v11 dictionaryValue];
    [v34 setSoftErrors:?];

    v15 = [v35 keyValues];
    v14 = [v15 objectForKeyedSubscript:@"DataPathTelemetry"];
    v13 = [v14 dictionaryValue];
    [v34 setDatapathTelemetry:?];

    v18 = [v35 keyValues];
    v17 = [v18 objectForKeyedSubscript:@"JTRN"];
    v16 = [v17 dictionaryValue];
    [v34 setJtrnDefaults:?];

    v21 = [v35 keyValues];
    v20 = [v21 objectForKeyedSubscript:@"WiFiAmbiguousSSIDs"];
    v19 = [v20 arrayValue];
    [v34 setAmbiguousSSIDs:?];

    v24 = [v35 keyValues];
    v23 = [v24 objectForKeyedSubscript:@"AccessPointProfile"];
    v22 = [v23 dictionaryValue];
    [v34 setApProfile:?];

    v27 = [v35 keyValues];
    v26 = [v27 objectForKeyedSubscript:@"BeaconParsing"];
    v25 = [v26 dictionaryValue];
    [v34 setBeaconParsing:?];

    v30 = [v35 keyValues];
    v29 = [v30 objectForKeyedSubscript:@"LQMDistribution"];
    v28 = [v29 dictionaryValue];
    [v34 setLqmDistribution:?];

    if (a1[4])
    {
      (*(a1[4] + 16))();
    }

    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    v36 = 0;
  }

  else
  {
    v3 = objc_opt_class();
    v31 = NSStringFromClass(v3);
    NSLog(@"Error: Response is not of type WCAFetchKeyValuesResponse, instead its %@", v31);

    if (a1[4])
    {
      (*(a1[4] + 16))();
    }

    v36 = 1;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

int main(int argc, const char **argv, const char **envp)
{
  v7 = 0;
  v6 = argc;
  v5[1] = argv;
  v5[0] = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [(NSXPCListener *)v4 setDelegate:v5[0]];
  [(NSXPCListener *)v4 resume];
  v7 = 0;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);
  return v7;
}