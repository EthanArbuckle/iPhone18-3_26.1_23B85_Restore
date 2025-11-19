void sub_1000020B4(id a1)
{
  v3 = dispatch_get_global_queue(0, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  v2 = qword_10008BCE8;
  qword_10008BCE8 = v1;

  dispatch_source_set_timer(qword_10008BCE8, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(qword_10008BCE8, &stru_100078D60);
  dispatch_activate(qword_10008BCE8);
}

void sub_100003198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1000031DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _companionLinkClientInvalidated];
}

void sub_10000321C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _companionLinkClientDiscoveredDevice:v3];
}

void sub_100003278(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _companionLinkClientLostDevice:v3];
}

void sub_1000032D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _companionLinkClientActivatedWithError:v3];
}

void sub_1000041D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_100005BD4(uint64_t a1)
{
  if (a1)
  {
    [NSIndexSet indexSetWithIndexesInRange:1];
  }

  else
  {
    [NSIndexSet indexSetWithIndex:0];
  }
  v1 = ;

  return v1;
}

const __CFString *sub_1000066C8(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_100078B50[a1 - 1];
  }
}

void sub_1000071C8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100009008(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained requestTimeoutDidFire];
}

uint64_t sub_10000976C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100009DEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 userInfo];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  v12 = [v6 domain];
  v13 = [v12 isEqual:@"BMRapportErrorDomain"];

  if (v13)
  {
    v14 = [v11 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    if (v14)
    {
      [v11 setObject:v14 forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    else
    {
      v15 = BMRapportErrorToString([v6 code]);
      [v11 setObject:v15 forKeyedSubscript:NSLocalizedDescriptionKey];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = a1;
  v16 = [*(a1 + 32) deliveredToDevices];
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        v22 = [v21 rapportIdentifier];
        v23 = [v22 isEqual:v5];

        if (v23)
        {
          v24 = [v21 description];
          [v11 setObject:v24 forKeyedSubscript:@"Device"];

          goto LABEL_19;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v25 = *(v28 + 40);
  v26 = [v6 domain];
  v27 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v26, [v6 code], v11);
  [v25 addObject:v27];
}

void sub_10000A748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a35);
  _Unwind_Resume(a1);
}

void sub_10000A7B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained[2];
  v7 = *(a1 + 32);
  v6 = a1 + 32;
  v8 = [v7 buildAtomBatchRequestWithIsReciprocal:*(v6 + 24) syncReason:*(v6 + 16) sequenceNumber:0 transportType:2 device:v3];
  if (v8)
  {
    +[BMSyncCore resetEagerExitTimer];
    [v5 markAsInFlightToDevice:v3];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v6 siteSuffix];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: sending request to device: %@", &v12, 0x16u);
    }

    [*v6 sendFetchAtomBatchesRequest:v8 toDevice:v3 forRequest:v5];
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100047974();
    }
  }
}

void sub_10000A94C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[4] siteSuffix];
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: request timed out because no devices are nearby", buf, 0xCu);
  }

  v6 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:9 userInfo:0];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [WeakRetained completeRequest:v3 deliveredToDevices:&__NSArray0__struct withErrors:v7];
}

void sub_10000AF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a42);
  _Unwind_Resume(a1);
}

void sub_10000AF90(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained[2];
  v7 = *(a1 + 32);
  v6 = a1 + 32;
  v8 = [v7 buildAtomBatchRequestWithIsReciprocal:*(v6 + 24) syncReason:*(v6 + 16) sequenceNumber:0 transportType:2 device:v3];
  if (v8)
  {
    [v5 markAsInFlightToDevice:v3];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v6 siteSuffix];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: sending request to device: %@", &v12, 0x16u);
    }

    [*v6 sendFetchAtomBatchesRequest:v8 toDevice:v3 forRequest:v5];
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100047974();
    }
  }
}

void sub_10000B120(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[4] siteSuffix];
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: request timed out because no devices are nearby", buf, 0xCu);
  }

  v6 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:9 userInfo:0];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [WeakRetained completeRequest:v3 deliveredToDevices:&__NSArray0__struct withErrors:v7];
}

void sub_10000B380(void *a1, void *a2, void *a3, void *a4)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a4;
  v11 = a3;
  v12 = a2;
  [v6 handleFetchAtomBatchesResponse:v12 options:v11 error:v10 fromDevice:v7 forRequest:v8 isReciprocal:{objc_msgSend(v9, "isReciprocalRequest")}];
}

void sub_10000BB74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_assert_queue_V2(WeakRetained[8]);
  +[BMSyncCore resetEagerExitTimer];
  v82 = [v8 objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) siteSuffix];
    v13 = v82;
    v14 = [(__CFString *)v82 length];
    if (v14 >= 9)
    {
      v13 = [(__CFString *)v82 substringToIndex:8];
    }

    *buf = 138413058;
    v97 = v12;
    v98 = 2112;
    v99 = v13;
    v100 = 2112;
    v101 = v7;
    v102 = 2112;
    v103 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: received request BMRapportDevice[%@] %@ %@", buf, 0x2Au);
    if (v14 >= 9)
    {
    }
  }

  v15 = [v8 objectForKeyedSubscript:@"senderModelID"];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v81 = WeakRetained;
    v16 = BMDevicePlatformFromModelString();
    if (v16)
    {
      v17 = v16;
      v80 = v7;
      v18 = +[BMDeviceMetadataUtils platform];
      v19 = [v8 objectForKeyedSubscript:RPOptionStatusFlags];
      v20 = [v19 unsignedLongValue];

      if ((v17 & 0xFFFFFFFFFFFFFFFDLL) == 5 || (v18 & 0xFFFFFFFFFFFFFFFDLL) == 5)
      {
        if ((*&v20 & 0x82000) == 0)
        {
          v41 = __biome_log_for_category();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_100047BD0();
          }

          v88 = NSLocalizedDescriptionKey;
          v89 = @"Outside home";
          v22 = &v89;
          v23 = &v88;
          goto LABEL_43;
        }
      }

      else if ((v20 & 0x80000) == 0)
      {
        v21 = __biome_log_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100047AB4();
        }

        v90 = NSLocalizedDescriptionKey;
        v91 = @"Cross account";
        v22 = &v91;
        v23 = &v90;
LABEL_43:
        v27 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1];
        v28 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:8 userInfo:v27];
        (*(v9 + 2))(v9, 0, 0, v28);
        WeakRetained = v81;
        goto LABEL_20;
      }

      v31 = *(a1 + 32);
      v30 = (a1 + 32);
      v27 = [v31 accountFromRapportOptions:v8];
      v28 = [*v30 createDistributedSyncManagerForAccount:v27];
      if (!v28)
      {
        v38 = __biome_log_for_category();
        WeakRetained = v81;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_100047B40();
        }

        v86 = NSLocalizedDescriptionKey;
        v87 = @"Failed to create sync manager";
        v39 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v40 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:0 userInfo:v39];
        (*(v9 + 2))(v9, 0, 0, v40);
        goto LABEL_63;
      }

      v76 = [*v30 protocolVersion];
      v32 = [[BMPeerToPeerMessage alloc] initFromDictionary:v7];
      v78 = v32;
      if (+[BMDeviceMetadataUtils currentlyInGameMode])
      {
        v33 = __biome_log_for_category();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [*v30 siteSuffix];
          *buf = 138412290;
          v97 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: device is currently in game mode, evaluating request reason to determine policy", buf, 0xCu);
        }

        if ((v33, v32 = v78, v17 == 6) && ![v78 syncReason] || objc_msgSend(v78, "syncReason") != 5 && objc_msgSend(v78, "syncReason") != 7)
        {
          v69 = __biome_log_for_category();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = [*v30 siteSuffix];
            *buf = 138412290;
            v97 = v70;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: incoming request is not a user initiated force triggered sync, responding to request with temporarily unavailable", buf, 0xCu);
          }

          v84 = NSLocalizedDescriptionKey;
          v85 = @"Currently in Game Mode";
          v40 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v75 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:11 userInfo:v40];
          (*(v9 + 2))(v9, 0, 0);
          v7 = v80;
          WeakRetained = v81;
          v39 = v78;

          goto LABEL_63;
        }
      }

      v7 = v80;
      v79 = [[BMFetchAtomBatchesRequest alloc] initFromDictionary:v80];
      if ([v32 protocolVersion] == 1)
      {
        v35 = __biome_log_for_category();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [*v30 siteSuffix];
          *buf = 138412290;
          v97 = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: replying with CKXUncompressedFormatVersion atom batch", buf, 0xCu);
        }

        v73 = 1;
        v37 = v79;
      }

      else
      {
        if ([v32 protocolVersion] != v76)
        {
          v62 = v76;
          v63 = __biome_log_for_category();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v64 = [*v30 siteSuffix];
            v65 = [v78 protocolVersion];
            *buf = 138412802;
            v97 = v64;
            v98 = 2048;
            v99 = v65;
            v100 = 1024;
            LODWORD(v101) = v76;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: mismatched protocol version %lu, expected %d", buf, 0x1Cu);

            v62 = v76;
          }

          v66 = objc_opt_new();
          [v66 setProtocolVersion:v62];
          v67 = [v28 peerStatusTracker];
          v68 = [v67 localDeviceUpdatingIfNeccesaryWithProtocolVersion:{objc_msgSend(*v30, "protocolVersion")}];
          [v66 setPeer:v68];

          [v66 setWalltime:CFAbsoluteTimeGetCurrent()];
          [v66 setSyncReason:{objc_msgSend(v79, "syncReason")}];
          v74 = v66;
          v60 = [v66 dictionaryRepresentation];
          v61 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:7 userInfo:0];
          (*(v9 + 2))(v9, v60, 0, v61);
          WeakRetained = v81;
          goto LABEL_62;
        }

        v37 = v79;
        v73 = [v79 atomBatchVersion];
      }

      v42 = [v37 rangeClockVectors];

      if (v42)
      {
        v43 = [v37 rangeClockVectors];
      }

      else
      {
        v44 = [v37 vectorClock];
        v45 = [BMMultiStreamVectorClockConverter multiStreamVectorClockToTimestampVectorClock:v44];

        v43 = [BMMultiStreamVectorClockConverter multiStreamRangeClockVectorFromIndexClockVectors:v45];
      }

      v46 = [[BMAtomBatchChunker alloc] initWithChunkerPolicy:v81[4]];
      v47 = v73;
      v74 = v43;
      v72 = [v28 atomBatchesForChangesSinceClockVector:v43 targetPlatform:v17 transportType:2 direction:2 ckFormatVersion:v47 chunker:v46];
      v48 = objc_opt_new();
      [v48 setProtocolVersion:v76];
      v49 = [v28 peerStatusTracker];
      v50 = [v49 localDeviceUpdatingIfNeccesaryWithProtocolVersion:{objc_msgSend(*v30, "protocolVersion")}];
      [v48 setPeer:v50];

      [v48 setWalltime:CFAbsoluteTimeGetCurrent()];
      [v48 setSyncReason:{objc_msgSend(v79, "syncReason")}];
      [v48 setUnseenPeers:&__NSArray0__struct];
      [v48 setAtomBatches:v72];
      v77 = v46;
      [v48 setMoreComing:{-[BMAtomBatchChunker moreComing](v46, "moreComing")}];
      [v48 setBatchSequenceNumber:{objc_msgSend(v79, "batchSequenceNumber")}];
      v51 = [v28 deletedLocationsForTransportType:2];
      [v48 setDeletedLocations:v51];

      v71 = v48;
      v52 = [v48 dictionaryRepresentation];
      (*(v9 + 2))(v9, v52, 0, 0);
      v53 = ([v79 isReciprocalRequest] & 1) == 0 && objc_msgSend(v79, "batchSequenceNumber") == 0;
      v54 = __biome_log_for_category();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [*v30 siteSuffix];
        v56 = v55;
        v57 = @"NO";
        if (v53)
        {
          v57 = @"YES";
        }

        *buf = 138412546;
        v97 = v55;
        v98 = 2112;
        v99 = v57;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: should issue reciprocal request, %@", buf, 0x16u);
      }

      WeakRetained = v81;
      if (v53)
      {
        v58 = +[NSDate now];
        [v81[9] setLastRapportSyncAttemptDate:v58];

        v59 = *v30;
        v83[0] = _NSConcreteStackBlock;
        v83[1] = 3221225472;
        v83[2] = sub_10000C89C;
        v83[3] = &unk_100078CD8;
        v83[4] = v59;
        [v59 fetchAtomBatchesIsReciprocal:1 reason:6 activity:0 completionHandler:v83];
      }

      v7 = v80;
      v60 = v77;
      v61 = v72;
LABEL_62:

      v39 = v78;
      v40 = v79;

LABEL_63:
      goto LABEL_20;
    }

    v29 = __biome_log_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100047C5C();
    }

    v92 = NSLocalizedDescriptionKey;
    v93 = @"Unknown platform";
    v25 = &v93;
    v26 = &v92;
  }

  else
  {
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100047CE8();
    }

    v94 = NSLocalizedDescriptionKey;
    v95 = @"Unable to determine sender model info";
    v25 = &v95;
    v26 = &v94;
  }

  v27 = [NSDictionary dictionaryWithObjects:v25 forKeys:v26 count:1];
  v28 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:8 userInfo:v27];
  (*(v9 + 2))(v9, 0, 0, v28);
LABEL_20:
}

void sub_10000C89C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) siteSuffix];
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: fetch completion handler is reciprocal, YES, deviceIdentifiers, %@, errors, %@", &v10, 0x20u);
  }

  [*(*(a1 + 32) + 72) clearCachedStatements];
  v9 = *(*(a1 + 32) + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

void sub_10000D5DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

BOOL sub_10000DA5C(id a1, id a2)
{
  v2 = a2;
  v3 = +[NSNull null];

  return v3 != v2;
}

void sub_10000E680(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_10000E6C4(uint64_t a1)
{
  if ([*(a1 + 32) count] <= 1)
  {
    v2 = [*(a1 + 32) firstObject];
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = *(a1 + 32);
  v5 = NSMultipleUnderlyingErrorsKey;
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v2 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:1 userInfo:v4];

  if (v2)
  {
LABEL_5:
    [*(a1 + 40) invalidate];
  }

LABEL_6:
  (*(*(a1 + 48) + 16))();
}

void sub_10000EDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000EDFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleResponseUUID:*(a1 + 40) response:v7 options:v8 error:v9 handler:*(a1 + 48)];
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      if (v7)
      {
        v14 = v7;
      }

      else
      {
        v14 = v9;
      }

      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BMRapportClient[%@]: Warning: ignoring response arriving after deallocation: %@", &v15, 0x16u);
    }
  }
}

void sub_10000FC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void start()
{
  objc_autoreleasePoolPush();
  bzero(v7, 0x400uLL);
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v7, 0x400uLL))
    {
      v4 = realpath_DARWIN_EXTSN(v7, 0);
      if (v4)
      {
        free(v4);
        [NSError _setFileNameLocalizationEnabled:0];
        *buf = 0;
        vproc_swap_integer();
LABEL_9:
        exit(1);
      }

      v0 = __biome_log_for_category();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        v5 = *__error();
        *buf = 67109120;
        *&buf[4] = v5;
        v2 = "failed to resolve temporary directory: %{darwin.errno}d";
        goto LABEL_7;
      }
    }

    else
    {
      v0 = __biome_log_for_category();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        v1 = *__error();
        *buf = 67109120;
        *&buf[4] = v1;
        v2 = "failed to initialize temporary directory: %{darwin.errno}d";
LABEL_7:
        _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, v2, buf, 8u);
      }
    }
  }

  else
  {
    v0 = __biome_log_for_category();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v3 = *__error();
      *buf = 67109120;
      *&buf[4] = v3;
      v2 = "failed to set user dir suffix: %{darwin.errno}d";
      goto LABEL_7;
    }
  }

  goto LABEL_9;
}

void sub_100010680(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    v4 = objc_autoreleasePoolPush();
    if (xpc_activity_should_defer(v3))
    {
      if (!xpc_activity_set_state(v3, 3))
      {
        v5 = __biome_log_for_category();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1000481C8(v5, v6, v7, v8, v9, v10, v11, v12);
        }

        xpc_activity_set_state(v3, 5);
      }
    }

    else
    {
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "biome activity fired com.apple.biomesyncd.metrics-collection", buf, 2u);
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000107EC;
      v15[3] = &unk_100078E68;
      v14 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = v3;
      dispatch_sync(v14, v15);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000107EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) start];
  v4 = __biome_log_for_category();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "biome running activity com.apple.biomesyncd.metrics-collection", v6, 2u);
    }

    v4 = [*(a1 + 32) primaryDatabase];
    [v4 runMetricsCollectionTask:*(a1 + 40)];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Database unavailable for activity com.apple.biomesyncd.metrics-collection", buf, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000108D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "biome activity fired com.apple.biomesyncd.database-maintenance", buf, 2u);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000109E4;
    v7[3] = &unk_100078E68;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v3;
    dispatch_sync(v6, v7);

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000109E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) start];
  v4 = __biome_log_for_category();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "biome running activity com.apple.biomesyncd.database-maintenance", v6, 2u);
    }

    v4 = [*(a1 + 32) primaryDatabase];
    [v4 runVacuumingTask:*(a1 + 40)];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "database unavailable for activity com.apple.biomesyncd.database-maintenance", buf, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100010AC8(const char *a1, uint64_t a2, void *a3, void *a4)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000113FC;
  v9[3] = &unk_100078F90;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a2;
  v7 = v11;
  v8 = v10;
  xpc_activity_register(a1, XPC_ACTIVITY_CHECK_IN, v9);
}

void sub_100010B9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary && (string = xpc_dictionary_get_string(v3, "Notification")) != 0)
  {
    v6 = string;
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Received com.apple.notifyd.matching: %s", buf, 0xCu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100010D18;
    v9[3] = &unk_100078EB8;
    v11 = v6;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    dispatch_sync(v8, v9);
    v4 = v10;
  }

  else
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_100048240(v3, v4);
    }
  }
}

void sub_100010D18(uint64_t a1)
{
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Handling com.apple.notifyd.matching: %s", &v5, 0xCu);
  }

  if (!strcmp(*(a1 + 40), "com.apple.rapport.CompanionLinkDeviceAdded"))
  {
    if ([*(a1 + 32) start])
    {
      v4 = [*(a1 + 32) syncScheduler];
      [v4 syncNowIfPolicyAllowsWithReason:3 transportType:2 activity:0];
    }

    else
    {
      v4 = __biome_log_for_category();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v5) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Database unavailable to handle com.apple.rapport.CompanionLinkDeviceAdded", &v5, 2u);
      }
    }
  }
}

void sub_100010E50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) != &_xpc_type_dictionary || (string = xpc_dictionary_get_string(v3, _xpc_event_key_name)) == 0)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000482B8(v3, v4);
    }

    goto LABEL_4;
  }

  v6 = string;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received com.apple.rapport.matching: %s", buf, 0xCu);
  }

  if (strcmp(v6, "CascadeRapportWake"))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010FF8;
    block[3] = &unk_100078EE0;
    v12 = v6;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v3;
    dispatch_sync(v8, block);

    v4 = v10;
LABEL_4:
  }
}

void sub_100010FF8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 136315138;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling com.apple.rapport.matching: %s", buf, 0xCu);
  }

  if ([*(a1 + 32) start])
  {
    v5 = [*(a1 + 32) rapportSyncEngine];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100011188;
    v7[3] = &unk_100078B70;
    v8 = *(a1 + 40);
    [v5 _startServerWithCompletion:v7];

    v6 = v8;
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Database unavailable to handle RapportWake", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100011188(uint64_t a1)
{
  if (xpc_dictionary_get_BOOL(*(a1 + 32), "replyRequired"))
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      v3 = reply;
      xpc_dictionary_send_reply();
      reply = v3;
    }
  }
}

void sub_1000111FC(id a1)
{
  v1 = __biome_log_for_category();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received SIGTERM", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_10001126C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_activity_get_state(v2) == 2)
  {
    v3 = objc_autoreleasePoolPush();
    if (xpc_activity_should_defer(v2))
    {
      if (xpc_activity_set_state(v2, 3))
      {
LABEL_11:
        objc_autoreleasePoolPop(v3);
        goto LABEL_12;
      }

      v4 = __biome_log_for_category();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100048330(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "com.apple.biomesyncd.cascade.periodic-sync";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "cascade activity fired %s", &v13, 0xCu);
      }

      xpc_activity_set_state(v2, 4);
      v4 = __biome_log_for_category();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "com.apple.biomesyncd.cascade.periodic-sync";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "activity %s not supported on this platform", &v13, 0xCu);
      }
    }

    xpc_activity_set_state(v2, 5);
    goto LABEL_11;
  }

LABEL_12:
}

void sub_1000113FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    v4 = objc_autoreleasePoolPush();
    if (xpc_activity_should_defer(v3))
    {
      if (!xpc_activity_set_state(v3, 3))
      {
        v5 = __biome_log_for_category();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1000483A8(a1, v5, v6, v7, v8, v9, v10, v11);
        }

        xpc_activity_set_state(v3, 5);
      }
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 48);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "biome activity fired %s", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v23 = 0x2020000000;
      v24 = 0;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011614;
      block[3] = &unk_100078F68;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      p_buf = &buf;
      v21 = v16;
      v19 = v15;
      dispatch_sync(v14, block);
      if ((*(*(&buf + 1) + 24) & 1) == 0)
      {
        v17 = [*(a1 + 40) syncScheduler];
        [v17 syncAllTransportsNowIfPolicyAllowsWithReason:*(a1 + 56) activity:v3];
      }

      _Block_object_dispose(&buf, 8);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000115F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011614(uint64_t a1)
{
  v2 = [*(a1 + 32) start];
  v3 = __biome_log_for_category();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 48);
      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "biome running activity %s", &v7, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 48);
      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Database unavailable for activity %s", &v7, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_1000130CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 timestamp];
  v5 = [*(a1 + 32) timestamp];
  v6 = [v5 siteIdentifier];
  [v4 setSiteIdentifier:v6];

  v7 = [v3 timestamp];
  v8 = [*(a1 + 32) timestamp];
  [v7 setClock:{objc_msgSend(v8, "clockValue")}];

  v9 = [v3 timestamp];
  v10 = [*(a1 + 32) timestamp];
  [v9 setModifier:{objc_msgSend(v10, "modifier")}];

  v11 = [v3 timestamp];
  v12 = [*(a1 + 32) timestamp];
  [v11 setUnordered:{objc_msgSend(v12, "unordered")}];

  v13 = [v3 references];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000132DC;
  v15[3] = &unk_100078FB8;
  v16 = *(a1 + 32);
  [v13 appendWithProxyBlock:v15];

  [v3 setAtomType:{objc_msgSend(*(a1 + 32), "type")}];
  if (![*(a1 + 32) type])
  {
    v14 = 0;
    goto LABEL_6;
  }

  if ([*(a1 + 32) type] == 2 || objc_msgSend(*(a1 + 32), "type") == 1)
  {
    v14 = 1;
LABEL_6:
    [v3 setAtomBehavior:v14];
  }

  [v3 setValue:*(a1 + 40)];
  [v3 setVersion:*(a1 + 48)];
}

void sub_1000132DC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setType:0];
  v4 = [v3 location];
  v5 = [*(a1 + 32) causalReference];
  v6 = [v5 location];
  v7 = [v6 identifier];
  [v4 setIdentifier:v7];

  v8 = [v3 timestamp];
  v9 = [*(a1 + 32) causalReference];
  v10 = [v9 timestamp];
  v11 = [v10 siteIdentifier];
  [v8 setSiteIdentifier:v11];

  v12 = [v3 timestamp];
  v13 = [*(a1 + 32) causalReference];
  v14 = [v13 timestamp];
  [v12 setClock:{objc_msgSend(v14, "clockValue")}];

  v15 = [v3 timestamp];
  v16 = [*(a1 + 32) causalReference];
  v17 = [v16 timestamp];
  [v15 setModifier:{objc_msgSend(v17, "modifier")}];

  v20 = [v3 timestamp];

  v18 = [*(a1 + 32) causalReference];
  v19 = [v18 timestamp];
  [v20 setUnordered:{objc_msgSend(v19, "unordered")}];
}

void sub_1000134B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 timestamp];
  v6 = [v5 siteIdentifierObject];

  v7 = [v4 timestamp];
  v8 = [v7 distributedSiteIdentifier];
  v9 = [v6 identifier];
  [v8 setIdentifier:v9];

  v10 = [v4 timestamp];
  v11 = [*(a1 + 32) timestamp];
  [v10 setClock:{objc_msgSend(v11, "clockValue")}];

  v12 = [v4 references];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100013644;
  v13[3] = &unk_100078FB8;
  v14 = *(a1 + 32);
  [v12 appendWithProxyBlock:v13];

  [v4 setAtomType:{objc_msgSend(*(a1 + 32), "type")}];
  [v4 setValue:*(a1 + 40)];
  [v4 setVersion:*(a1 + 48)];
}

void sub_100013644(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setType:0];
  v4 = [v3 location];
  v5 = [*(a1 + 32) causalReference];
  v6 = [v5 mergeableValueID];
  v7 = [v6 identifier];
  [v4 setIdentifier:v7];

  v8 = [*(a1 + 32) causalReference];
  v9 = [v8 timestamp];
  v16 = [v9 siteIdentifierObject];

  v10 = [v3 timestamp];
  v11 = [v10 distributedSiteIdentifier];
  v12 = [v16 identifier];
  [v11 setIdentifier:v12];

  v13 = [v3 timestamp];

  v14 = [*(a1 + 32) causalReference];
  v15 = [v14 timestamp];
  [v13 setClock:{objc_msgSend(v15, "clockValue")}];
}

void sub_100014234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 256), 8);
  _Block_object_dispose((v41 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000142AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000142D8(uint64_t a1, _BYTE *a2)
{
  v4 = [*(*(*(a1 + 56) + 8) + 40) bookmark];
  v5 = *(*(*(a1 + 56) + 8) + 40);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [v5 frame];
  v7 = [v6 state];

  if (v7 == 1)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(*(a1 + 56) + 8) + 40);
      v34 = 138412546;
      v35 = v9;
      v36 = 2048;
      v37 = [v4 offset];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "read new appended BMStoreEvent: %@ at offset %lu", &v34, 0x16u);
    }

    v10 = a1 + 32;
    v11 = [*(a1 + 32) ckAtomTableRecordForEvent:*(*(*(a1 + 56) + 8) + 40) ofType:0 atBookmark:v4 previousTableRecord:*(*(*(a1 + 64) + 8) + 40) siteIdentifier:*(a1 + 40)];
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (([*(*v10 + 48) addCKAtomRow:*(*(*(a1 + 64) + 8) + 40) inStream:*(*v10 + 16)] & 1) == 0)
    {
      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

LABEL_12:
    v20 = [*(*(*(a1 + 64) + 8) + 40) location];
    v21 = [v20 isEqual:*(*(*(a1 + 72) + 8) + 40)];

    if ((v21 & 1) == 0)
    {
      v22 = [*(*(*(a1 + 64) + 8) + 40) location];
      v23 = *(*(a1 + 72) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v25 = [*(*(a1 + 32) + 104) syncPolicy];
      v26 = [v25 supportsTransport:3 direction:3];

      if (v26)
      {
        [*(*v10 + 48) upsertCKRecordWithLocation:*(*(*(a1 + 72) + 8) + 40) inStream:*(*v10 + 16)];
      }
    }

    goto LABEL_15;
  }

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(*(*(a1 + 56) + 8) + 40);
      v34 = 138412546;
      v35 = v16;
      v36 = 2048;
      v37 = [v4 offset];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "read new deleted BMStoreEvent: %@ at offset %lu", &v34, 0x16u);
    }

    v10 = a1 + 32;
    v17 = [*(a1 + 32) ckAtomTableRecordForEvent:*(*(*(a1 + 56) + 8) + 40) ofType:0 atBookmark:v4 previousTableRecord:*(*(*(a1 + 64) + 8) + 40) siteIdentifier:*(a1 + 40)];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    if (([*(*v10 + 48) addCKAtomRow:*(*(*(a1 + 64) + 8) + 40) inStream:*(*v10 + 16)] & 1) == 0)
    {
      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        v30 = *(a1 + 56);
        v31 = *(*(*(a1 + 64) + 8) + 40);
        v32 = *(*(v30 + 8) + 40);
        v33 = [v4 offset];
        v34 = 138412802;
        v35 = v31;
        v36 = 2112;
        v37 = v32;
        v38 = 2048;
        v39 = v33;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to insert record %@ for BMStoreEvent: %@ at offset %lu", &v34, 0x20u);
      }

LABEL_17:

LABEL_18:
      *a2 = 1;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

LABEL_15:
  v27 = [*(a1 + 48) nextEvent];
  v28 = *(*(a1 + 56) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

LABEL_19:
}

void sub_10001471C(uint64_t a1, _BYTE *a2)
{
  v4 = [*(a1 + 32) nextEvent];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 bookmark];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [v5 eventBody];
    v10 = [BMStoreBookmark alloc];
    v11 = *(*(a1 + 40) + 8);
    v12 = [v9 segmentName];
    v13 = [v10 initWithStream:v11 segment:v12 iterationStartTime:objc_msgSend(v9 offset:{"offset"), 1.79769313e308}];

    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "read BMStoreEvent tombstone: %@ at tombstone bookmark %@", buf, 0x16u);
    }

    v16 = [v5 eventBody];
    v17 = [v16 deletionReason];

    if (v17 == 1)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v9);
    }

    else if ((v17 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v18 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v33) = 16;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100014B60;
      block[3] = &unk_100078AD8;
      block[4] = buf;
      if (qword_10008BD30 != -1)
      {
        dispatch_once(&qword_10008BD30, block);
      }

      v19 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412802;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        *&buf[22] = 2048;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v18, v19, "BMStoreEvent tombstone: %@ at tombstone bookmark: %@ with unexpected deletion reason %lu", buf, 0x20u);
      }
    }

    else
    {
      v21 = [*(a1 + 40) ckAtomTableRecordForEvent:0 ofType:2 atBookmark:v13 previousTableRecord:0 siteIdentifier:*(a1 + 48)];
      if (v21)
      {
        if ([*(*(a1 + 40) + 48) addCKAtomRow:v21 inStream:*(*(a1 + 40) + 16)])
        {
          v22 = [v21 location];
          v23 = [v22 isEqual:*(*(*(a1 + 72) + 8) + 40)];

          if ((v23 & 1) == 0)
          {
            v24 = [v21 location];
            v25 = *(*(a1 + 72) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;

            v27 = [*(*(a1 + 40) + 104) syncPolicy];
            v28 = [v27 supportsTransport:3 direction:3];

            if (v28)
            {
              [*(*(a1 + 40) + 48) upsertCKRecordWithLocation:*(*(*(a1 + 72) + 8) + 40) inStream:*(*(a1 + 40) + 16)];
            }
          }
        }

        else
        {
          v29 = __biome_log_for_category();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 138412802;
            *&buf[4] = v21;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            *&buf[22] = 2112;
            v33 = v30;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to insert record %@ for BMStoreEvent tombstone: %@ at tombstone bookmark: %@", buf, 0x20u);
          }

          *a2 = 1;
        }
      }
    }
  }

  else
  {
    *a2 = 1;
  }
}

void sub_1000150C4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000486D4();
  }

  v7 = [v5 location];
  v8 = [v7 state];

  if (v8 == 2)
  {
    if ([v5 type])
    {
      v9 = 0;
      goto LABEL_47;
    }

    v10 = [v5 location];
    v11 = [v10 location];
    v9 = [v11 siteIdentifier];

    v12 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:v9];
    if (!v12)
    {
      v12 = [*(a1 + 32) readerForSiteIdentifier:v9];
      [*(*(a1 + 32) + 88) setObject:v12 forKeyedSubscript:v9];
    }

    v13 = [*(a1 + 32) bookmarkForAtomRow:v5];
    if (!v13)
    {
      v19 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v57) = 16;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000159B4;
      block[3] = &unk_100078AD8;
      block[4] = buf;
      if (qword_10008BD38 != -1)
      {
        dispatch_once(&qword_10008BD38, block);
      }

      v20 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v19, v20))
      {
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v19, v20, "BMSyncCKAtomRow missing bookmark %@", buf, 0xCu);
      }

      goto LABEL_51;
    }

    v14 = v13;
    v15 = [v13 segmentName];
    v16 = [v15 isEqualToString:@"DOA"];

    if (v16)
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "bookmark is DOA, not attempting to resolve event", buf, 2u);
      }

      v18 = 0;
LABEL_46:

      v9 = v18;
LABEL_47:
      v42 = [*(a1 + 32) atomValueFromEvent:v9 ofType:objc_msgSend(v5 version:{"type"), *(a1 + 56)}];
      v12 = [v42 serialize];

      if (([*(a1 + 32) addAtomToAtomBatch:*(a1 + 40) ifChunkerAllows:*(a1 + 48) fromAtomTableRecord:v5 atomValueData:v12 version:*(a1 + 64) atomValueVersion:*(a1 + 56)] & 1) == 0)
      {
        v43 = __biome_log_for_category();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "chunker hit defined limit, returning and setting moreComing bit", buf, 2u);
        }

        [*(a1 + 48) setMoreComing:1];
        *a3 = 1;
      }

LABEL_51:

      goto LABEL_52;
    }

    v52 = v14;
    v21 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:v9];
    if (v21)
    {
      v22 = v21;
      v23 = +[NSFileManager defaultManager];
      v24 = [v22 currentFrameStore];
      v25 = [v24 segmentPath];
      v26 = [v23 fileExistsAtPath:v25];

      if (v26)
      {
        v27 = [v22 bookmark];
        v17 = v22;
        if ([v27 isEqual:v52])
        {
          v14 = v52;
LABEL_37:

          goto LABEL_38;
        }

        v50 = v22;
        v28 = [v27 segmentName];
        v29 = [v52 segmentName];
        v14 = v52;
        if ([v28 isEqualToString:v29])
        {
        }

        else
        {
          v30 = [v50 currentFrameStore];
          v48 = [v30 offsetIsStartOfFrameStore:{objc_msgSend(v52, "offset")}];

          if (v48)
          {
            v17 = v50;
            goto LABEL_37;
          }
        }

        v31 = [v27 segmentName];
        v32 = [v52 segmentName];
        v33 = [v31 isEqualToString:v32];

        if (v33)
        {
          v17 = v50;
          [v50 skipToBookmarkOffset:v52];
        }

        else
        {
          v34 = __biome_log_for_category();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v57) = 16;
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_1000159C8;
          v54[3] = &unk_100078AD8;
          v54[4] = buf;
          if (qword_10008BD40 != -1)
          {
            dispatch_once(&qword_10008BD40, v54);
          }

          v35 = *(*&buf[8] + 24);
          _Block_object_dispose(buf, 8);
          if (os_log_type_enabled(v34, v35))
          {
            *buf = 138412546;
            *&buf[4] = v27;
            *&buf[12] = 2112;
            *&buf[14] = v52;
            _os_log_impl(&_mh_execute_header, v34, v35, "Next enumerator bookmark %@ doesn't match expected %@", buf, 0x16u);
          }

          v17 = [v12 newEnumeratorFromBookmark:v52 options:7];
          [*(*(a1 + 32) + 96) setObject:v17 forKeyedSubscript:v9];
        }

        goto LABEL_37;
      }
    }

    v14 = v52;
    v17 = [v12 newEnumeratorFromBookmark:v52 options:7];
    [*(*(a1 + 32) + 96) setObject:v17 forKeyedSubscript:v9];
LABEL_38:
    v18 = [v17 nextEvent];
    v36 = __biome_log_for_category();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v51 = [v18 eventBodyData];
      v49 = [v51 length];
      v47 = [v14 offset];
      v44 = [v5 timestamp];
      [v44 bm_description];
      v46 = v45 = v17;
      *buf = 134218498;
      *&buf[4] = v49;
      *&buf[12] = 2048;
      *&buf[14] = v47;
      *&buf[22] = 2112;
      v57 = v46;
      _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Read event of size %llu at offset %lu for atom %@", buf, 0x20u);

      v17 = v45;
      v14 = v52;
    }

    v37 = [v18 bookmark];
    v38 = [v37 isEqual:v14];

    if ((v38 & 1) == 0)
    {
      v39 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v57) = 16;
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000159DC;
      v53[3] = &unk_100078AD8;
      v53[4] = buf;
      v40 = v17;
      if (qword_10008BD48 != -1)
      {
        dispatch_once(&qword_10008BD48, v53);
      }

      v41 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v39, v41))
      {
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v39, v41, "populateAtomBatch missing event for bookmark %@, adding a placeholder append", buf, 0xCu);
      }

      v18 = 0;
      v17 = v40;
      v14 = v52;
    }

    goto LABEL_46;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ location is not active", buf, 0xCu);
  }

LABEL_52:
}

void sub_100015CC4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "creating new batch with location %@", buf, 0xCu);
  }

  v9 = [v6 location];
  v10 = [v9 ckMergeableValueIDWithFormatVersion:0];

  v14 = 0;
  v11 = [[CKAtomBatch alloc] initWriterWithMergeableValueID:v10 metadata:0 formatVersion:2 error:&v14];
  v12 = v14;
  if (v12)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000487C4();
    }
  }

  else
  {
    [*(a1 + 32) populateAtomBatch:v11 withAtomsInClockVector:*(a1 + 40) forLocation:v6 ckFormatVersion:*(a1 + 64) valueVersion:0 chunker:*(a1 + 48)];
    if ([v11 count])
    {
      (*(*(a1 + 56) + 16))();
    }

    *a4 = [*(a1 + 48) moreComing];
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100016278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001629C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) bookmarkForAtomRow:v3];
  v5 = v4;
  if (v4 && ([v4 segmentName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", @"DOA"), v6, !v7))
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "deleting event at bookmark %@", buf, 0xCu);
    }

    v10 = *(a1 + 40);
    v15 = 0;
    v11 = [v10 deleteEventAtBookmark:v5 outTombstoneBookmark:&v15];
    v12 = v15;
    if ((v11 & 1) == 0)
    {
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_100048834();
      }
    }

    v14 = *(*(a1 + 48) + 8);
    v8 = *(v14 + 40);
    *(v14 + 40) = v12;
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "bookmark is nil, presumably because the referenced atom was a placeholder append (dead on arrival) %@", buf, 0xCu);
    }
  }
}

void sub_10001725C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  [*(a1 + 32) markOperationStarted];
  v9 = [v7 timestamp];
  v10 = [v9 timestamp];

  v11 = a1 + 40;
  if ([*(*(a1 + 40) + 48) containsCKAtomRowWithTimestamp:v10 inStream:*(*(a1 + 40) + 16) onDisk:1])
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v10 bm_description];
      v14 = *(*v11 + 8);
      *buf = 138412546;
      v65 = v13;
      v66 = 2112;
      v67 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Warning: dropping atom %@ in stream %@ because it is already merged", buf, 0x16u);
    }

    v15 = [*(a1 + 48) originatingSiteIdentifier];
    v16 = [NSString alloc];
    v17 = [v7 timestamp];
    v18 = [v17 siteIdentifier];
    v19 = [v16 initWithData:v18 encoding:4];

    v20 = *(a1 + 40);
    v21 = *(v20 + 112);
    v22 = *(v20 + 16);
    v23 = [v19 length];
    v24 = v19;
    if (!v23)
    {
      v24 = *(a1 + 56);
    }

    [v21 recordAtomMergeResult:1 inStream:v22 ownerSite:v24 originatingSite:v15 eventCreatedAt:*(a1 + 48) sessionContext:0.0];
    goto LABEL_7;
  }

  if (![*(*v11 + 48) containsCKAtomRowWithTimestamp:v10 inStream:*(*v11 + 16) onDisk:0])
  {
    v62 = a3;
    v26 = [v7 references];
    v27 = [v26 proxyAtIndex:0];
    v15 = [v27 reference];

    v28 = [v15 timestamp];
    v29 = [v28 clockValue];

    if (v29)
    {
      v30 = [v15 mergeableValueID];
      if (!v30)
      {
        goto LABEL_22;
      }

      v31 = v30;
      v32 = [v15 mergeableValueID];
      v33 = [v32 identifier];

      if (!v33)
      {
LABEL_22:
        p_super = __biome_log_for_category();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
        {
          sub_100048B94();
        }

        goto LABEL_24;
      }

      v61 = v8;
      v34 = *(a1 + 64);
      v35 = [v15 mergeableValueID];
      v36 = [v35 name];
      v37 = [v34 objectForKey:v36];

      if (!v37)
      {
        v38 = [BMStreamCRDTLocation alloc];
        v39 = [v15 mergeableValueID];
        v37 = [(BMStreamCRDTLocation *)v38 initWithCKMergeableValueID:v39 streamName:*(*(a1 + 40) + 16)];

        v40 = *(a1 + 64);
        v41 = [v15 mergeableValueID];
        v42 = [v41 name];
        [v40 setObject:v37 forKey:v42];
      }

      v43 = [*(a1 + 72) objectForKey:v37];
      v59 = a4;
      v60 = v10;
      v58 = v37;
      if (v37 && !v43)
      {
        v44 = [*(*v11 + 48) locationRowWithLocation:v37];
        if (v44 || ([*(*v11 + 48) insertLocationIfNotExists:v37 withState:1], (v44 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v29 = v44;
          [*(a1 + 72) setObject:v44 forKey:v37];
          goto LABEL_27;
        }

        p_super = &v37->super;
        v54 = __biome_log_for_category();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
        {
          sub_100048B24();
        }

        v8 = v61;
LABEL_24:

        *a4 = 1;
        goto LABEL_8;
      }

      v29 = v43;
    }

    else
    {
      v59 = a4;
      v60 = v10;
      v61 = v8;

      v58 = 0;
      v15 = 0;
    }

LABEL_27:
    v56 = [BMSyncCKAtomRow alloc];
    v46 = *(a1 + 80);
    v47 = [v7 timestamp];
    v48 = [v47 timestamp];
    v57 = v7;
    v49 = [v7 atomType];
    v50 = [*(a1 + 88) objectAtIndexedSubscript:*(a1 + 96)];
    v55 = v62;
    v63 = v29;
    v51 = [(BMSyncCKAtomRow *)v56 initWithLocation:v46 timestamp:v48 referenceLocation:v29 causalReference:v15 type:v49 referenceAtomBatchFilename:v50 atomBatchFileIndex:v55];

    v52 = __biome_log_for_category();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      sub_100048BD0();
    }

    v10 = v60;
    v8 = v61;
    if ([*(*v11 + 48) addCKAtomRow:v51 inStream:*(*v11 + 16)])
    {
      v7 = v57;
      if ([*(a1 + 32) markOperationComplete])
      {
LABEL_37:

        goto LABEL_8;
      }

      v53 = __biome_log_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_100048D90();
      }
    }

    else
    {
      v53 = __biome_log_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_100048CB0();
      }

      v7 = v57;
    }

    *v59 = 1;
    goto LABEL_37;
  }

  v15 = __biome_log_for_category();
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_8;
  }

  v19 = [v10 bm_description];
  v25 = *(*v11 + 8);
  *buf = 138412546;
  v65 = v19;
  v66 = 2112;
  v67 = v25;
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Warning: atom %@ in stream %@ already in table but not on disk", buf, 0x16u);
LABEL_7:

LABEL_8:
  objc_autoreleasePoolPop(v8);
}

void sub_100017A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017A80(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (![v5 type])
  {
    v7 = [*(*(*(a1 + 48) + 8) + 40) frame];
    v8 = [v7 data];

    [v8 bytes];
    [v8 length];
    LODWORD(v7) = bm_generateChecksum();
    v9 = [*(a1 + 32) atomValueFromAtomRow:v5];
    v10 = [v9 value];
    v11 = [v10 eventData];
    [v11 bytes];
    [v11 length];
    if (v7 == bm_generateChecksum())
    {
      v26 = v6;
      v28 = v10;
      v29 = v9;
      v30 = v8;
      v31 = a3;
      v12 = [*(*(*(a1 + 48) + 8) + 40) bookmark];
      v25 = [BMSyncCKAtomRow alloc];
      v13 = [v5 location];
      v14 = [v5 timestamp];
      v15 = [v5 referenceLocation];
      v16 = [v5 causalReference];
      v17 = [v5 type];
      v18 = [v12 segmentName];
      v27 = v12;
      v19 = -[BMSyncCKAtomRow initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:](v25, "initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:", v13, v14, v15, v16, v17, v18, [v12 offset]);

      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "updating row for atom inferred to be applied to disk %@", buf, 0xCu);
      }

      v9 = v29;
      v8 = v30;
      v10 = v28;
      v6 = v26;
      if (([*(*(a1 + 32) + 48) updateCKAtomRow:v19 inStream:*(*(a1 + 32) + 16)] & 1) == 0)
      {
        v21 = __biome_log_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100048DCC();
        }
      }

      a3 = v31;
    }
  }

  v22 = [*(a1 + 40) nextEvent];
  v23 = *(*(a1 + 48) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    *a3 = 1;
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10001804C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_100018090(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) originatingSiteIdentifier];
  v8 = [NSString alloc];
  v9 = [v5 timestamp];
  v10 = [v9 siteIdentifierObject];
  v11 = [v10 identifier];
  v12 = [v8 initWithData:v11 encoding:4];

  v13 = [v5 causalReference];
  v14 = [*(*(*(a1 + 72) + 8) + 40) isEqualToReference:v13];
  if (!v13)
  {
    goto LABEL_8;
  }

  if (v14)
  {
    goto LABEL_8;
  }

  v15 = *(*(a1 + 40) + 48);
  v16 = [v13 timestamp];
  LOBYTE(v15) = [v15 containsCKAtomRowWithTimestamp:v16 inStream:*(*(a1 + 40) + 16) onDisk:1];

  if (v15)
  {
    goto LABEL_8;
  }

  v17 = [v5 referenceLocation];
  v18 = [v17 state];

  v19 = __biome_log_for_category();
  v20 = v19;
  if ((v18 - 3) <= 1)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = [v5 referenceLocation];
      *buf = 138412290;
      v71 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "causal reference location %@ points to dead location, not a violation", buf, 0xCu);
    }

LABEL_8:
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100048F78();
    }

    if ([v5 type])
    {
      v65 = a3;
      *(*(*(a1 + 88) + 8) + 24) = 1;
      v23 = *(a1 + 40);
      v24 = *(a1 + 56);
      v67 = 0;
      v68 = 0;
      v25 = [v23 handleDeleteAtomRow:v5 usingPruner:v24 outBookmark:&v68 outTombstoneBookmark:&v67];
      v26 = v68;
      v27 = v67;
      v28 = *(a1 + 40);
      v29 = *(a1 + 64);
      v30 = *(v28 + 16);
      v66 = v27;
      [*(v28 + 48) saveLatestTombstoneBookmark:? forSiteIdentifier:? inStream:?];
      v31 = 0;
      if ((v25 & 1) == 0)
      {
LABEL_28:
        v45 = __biome_log_for_category();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_10004903C();
        }

LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
      v31 = [*(a1 + 40) atomValueFromAtomRow:v5];
      if (!v31)
      {
        v26 = 0;
        v66 = 0;
        goto LABEL_28;
      }

      v65 = a3;
      *(*(*(a1 + 80) + 8) + 24) = 1;
      v32 = *(a1 + 40);
      v33 = *(a1 + 48);
      v69 = 0;
      v34 = [v32 writeAtomValue:v31 fromAtomRow:v5 usingWriter:v33 outBookmark:&v69];
      v26 = v69;
      v66 = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v61 = v13;
    v62 = v12;
    v63 = v7;
    v64 = v6;
    v60 = v31;
    v35 = [v31 value];
    v36 = [v35 eventData];
    v37 = v36 | v26;

    if (!v37)
    {
      v26 = [[BMStoreBookmark alloc] initWithStream:*(*(a1 + 40) + 8) segment:@"DOA" iterationStartTime:clock_gettime_nsec_np(_CLOCK_MONOTONIC) offset:0.0];
    }

    v38 = [BMSyncCKAtomRow alloc];
    v39 = [v5 location];
    v40 = [v5 timestamp];
    v41 = [v5 referenceLocation];
    v42 = [v5 causalReference];
    v43 = [v5 type];
    v44 = [v26 segmentName];
    v45 = -[BMSyncCKAtomRow initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:](v38, "initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:", v39, v40, v41, v42, v43, v44, [v26 offset]);

    if ([*(*(a1 + 40) + 48) updateCKAtomRow:v45 inStream:*(*(a1 + 40) + 16)])
    {
      v13 = v61;
      v12 = v62;
      if (![v5 type])
      {
        v46 = [v5 location];
        v47 = [v46 location];
        v48 = [v47 ckMergeableValueIDWithFormatVersion:0];

        v49 = [CKAtomReference alloc];
        v50 = [v5 timestamp];
        v51 = [v49 initWithMergeableValueID:v48 timestamp:v50 type:0];
        v52 = *(*(a1 + 72) + 8);
        v53 = *(v52 + 40);
        *(v52 + 40) = v51;
      }

      v54 = *(a1 + 40);
      v55 = *(v54 + 112);
      v56 = *(v54 + 16);
      v31 = v60;
      v57 = [v60 value];
      [v57 dataTimestamp];
      v58 = v56;
      v7 = v63;
      [v55 recordAtomMergeResult:3 inStream:v58 ownerSite:v62 originatingSite:v63 eventCreatedAt:*(a1 + 32) sessionContext:?];

      v6 = v64;
    }

    else
    {
      v59 = __biome_log_for_category();
      v12 = v62;
      v7 = v63;
      v13 = v61;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_100048DCC();
      }

      v6 = v64;
      *v65 = 1;
      v31 = v60;
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_100048E3C(v5, v13, v20);
  }

  [*(*(a1 + 40) + 112) recordAtomMergeResult:2 inStream:*(*(a1 + 40) + 16) ownerSite:v12 originatingSite:v7 eventCreatedAt:*(a1 + 32) sessionContext:0.0];
  *a3 = 1;
LABEL_31:

  objc_autoreleasePoolPop(v6);
}

void sub_10001884C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100018874(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v4 = *(a1 + 32);
  v16 = 0;
  [v4 removeFileAtPath:v3 error:&v16];
  v5 = v16;
  v6 = __biome_log_for_category();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000491A4();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Removed file: %@, error: %@", buf, 0x16u);
  }

  v8 = [*(a1 + 40) vectorFileNameFromORCFileName:v3];
  v9 = *(a1 + 32);
  v15 = v5;
  [v9 removeFileAtPath:v8 error:&v15];
  v10 = v15;

  if (v10 && ([v10 userInfo], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", NSUnderlyingErrorKey), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "code"), v12, v11, v13 != 2))
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100049210();
    }
  }

  else
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Removed file: %@, error: %@", buf, 0x16u);
    }
  }
}

uint64_t sub_100018DFC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(BMPBStoreEventAtomValue);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10003A848(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100019E0C(uint64_t a1)
{
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BMRapportManager: received SIGTERM", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

void sub_10001A060(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  if (v3)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000495D4(v3, v4);
    }

    [*(a1 + 40) addObject:v3];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10001A0F8(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  if (v3)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10004964C(v3, v4);
    }

    [*(a1 + 40) addObject:v3];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10001A190(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (v2 > 1)
  {
    v4 = *(a1 + 32);
    v8 = NSMultipleUnderlyingErrorsKey;
    v9 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:1 userInfo:v5];
    (*(v3 + 16))(v3, v6);
  }

  else
  {
    v7 = [*(a1 + 32) firstObject];
    (*(v3 + 16))(v3);
  }
}

void sub_10001AB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_10001ABD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateClientWithError:0];
}

void sub_10001AC1C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleActivationForDevice:v4 error:v3];
}

void sub_10001B214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001B240(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  (*(*(a1 + 40) + 16))();
  if ([v9 code] == -71148 && (objc_msgSend(v9, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", RPErrorDomain), v5, v6))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained invalidateClientWithError:v9];
  }

  else
  {
    v8 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v8 sendNextRequestToDevice:WeakRetained];
  }
}

void sub_10001B6E4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_10001C694(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_10001DD34(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [v3 stringForColumnIndex:0];
  v4 = [CKDistributedSiteIdentifier alloc];
  v5 = [v10 dataUsingEncoding:4];
  v6 = [v4 initWithIdentifier:v5];

  v7 = [NSIndexSet alloc];
  v8 = [v3 unsignedLongLongIntForColumnIndex:1];

  v9 = [v7 initWithIndex:v8];
  [*(a1 + 32) addClockValuesInIndexSet:v9 forSiteIdentifier:v6];
}

id sub_10001E150(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 intForColumn:@"clock"];

  return [v2 addIndex:v3];
}

void sub_10001E408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E42C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001E444(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 stringForColumn:@"site"];
  v4 = [CKDistributedSiteIdentifier alloc];
  v5 = [v3 dataUsingEncoding:4];
  v6 = [v4 initWithIdentifier:v5];

  v7 = [v15 intForColumn:@"type"];
  v8 = [[NSIndexSet alloc] initWithIndex:{objc_msgSend(v15, "intForColumn:", @"clock"}];
  if (v7 == 2)
  {
    [*(*(*(a1 + 32) + 8) + 40) addClockValuesInIndexSet:v8 withAtomState:1 forSiteIdentifier:v6];
    v9 = [v15 stringForColumn:@"ref_site"];
    v10 = v9;
    if (v9 && [v9 length])
    {
      v11 = [CKDistributedSiteIdentifier alloc];
      v12 = [v10 dataUsingEncoding:4];
      v13 = [v11 initWithIdentifier:v12];

      v14 = [[NSIndexSet alloc] initWithIndex:{objc_msgSend(v15, "intForColumn:", @"ref_clock"}];
      [*(*(*(a1 + 32) + 8) + 40) addClockValuesInIndexSet:v14 withAtomState:2 forSiteIdentifier:v13];
    }
  }

  else if (!v7)
  {
    [*(*(*(a1 + 32) + 8) + 40) addClockValuesInIndexSet:v8 withAtomState:1 forSiteIdentifier:v6];
  }
}

void sub_10001F8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = [[BMSyncCKAtomRow alloc] initWithFMResultSet:*(a1 + 32)];
  (*(v4 + 16))(v4, v5, a3);
}

void sub_10001FB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = [[BMSyncCKAtomRow alloc] initWithFMResultSet:*(a1 + 32)];
  (*(v4 + 16))(v4, v5, a3);
}

void sub_1000203B0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = v5 + 1;
  if (v5 < 0x1F5)
  {
    if (a3 == 1)
    {
      v11 = *(*(*(a1 + 48) + 8) + 24);
      v12 = *(a1 + 32);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v13 = @"AND clock = ? ";
      }

      else
      {
        v13 = @"OR clock = ? ";
      }
    }

    else
    {
      v14 = sub_100005BA8(a2, a3);
      v15 = *(*(*(a1 + 48) + 8) + 24);
      v12 = *(a1 + 32);
      if (!v14)
      {
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          v19 = @"AND clock BETWEEN ? ";
        }

        else
        {
          v19 = @"OR clock BETWEEN ? ";
        }

        [v12 addObject:v19];
        v20 = *(a1 + 32);
        v21 = [NSNumber numberWithUnsignedInteger:a2];
        [v20 addObject:v21];

        [*(a1 + 32) addObject:@" AND ?"];
        v22 = *(a1 + 32);
        v17 = [NSNumber numberWithUnsignedInteger:a3 + a2 - 1];
        v18 = v22;
        goto LABEL_18;
      }

      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v13 = @"AND clock >= ? ";
      }

      else
      {
        v13 = @"OR clock >= ? ";
      }
    }

    [v12 addObject:v13];
    v16 = *(a1 + 32);
    v17 = [NSNumber numberWithUnsignedInteger:a2];
    v18 = v16;
LABEL_18:
    [v18 addObject:v17];

    *(*(*(a1 + 48) + 8) + 24) = 0;
    return;
  }

  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100049E94();
  }

  *a4 = 1;
}

void sub_100020568(uint64_t a1)
{
  [*(*(a1 + 32) + 8) SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EEF8 JOIN:&off_10007EF10 WHERE:*(a1 + 40) GROUP_BY:&off_10007EF28 HAVING:0 ORDER_BY:&off_10007EF40 LIMIT:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100020680;
  v6 = v5[3] = &unk_1000792E0;
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v2 = v4;
  v8 = v4;
  v3 = v6;
  [v3 enumerateWithBlock:v5];
  [v3 close];
}

void sub_100020680(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:*(a1 + 32) modifier:1];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    v6 = [NSString stringWithFormat:@"received nil CRDTLocation while enumerating active locations for stream: %@", *(a1 + 48), NSDebugDescriptionErrorKey];
    v12 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:@"BMSyncDatabaseErrorDomain" code:1 userInfo:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a3 = 1;
  }
}

void sub_100020BF0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = v5 + 1;
  if (v5 < 0x1F5)
  {
    if (a3 == 1)
    {
      v11 = *(*(*(a1 + 48) + 8) + 24);
      v12 = *(a1 + 32);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v13 = @"AND clock = ? ";
      }

      else
      {
        v13 = @"OR clock = ? ";
      }
    }

    else
    {
      v14 = sub_100005BA8(a2, a3);
      v15 = *(*(*(a1 + 48) + 8) + 24);
      v12 = *(a1 + 32);
      if (!v14)
      {
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          v19 = @"AND clock BETWEEN ? ";
        }

        else
        {
          v19 = @"OR clock BETWEEN ? ";
        }

        [v12 addObject:v19];
        v20 = *(a1 + 32);
        v21 = [NSNumber numberWithUnsignedInteger:a2];
        [v20 addObject:v21];

        [*(a1 + 32) addObject:@" AND ?"];
        v22 = *(a1 + 32);
        v17 = [NSNumber numberWithUnsignedInteger:a3 + a2 - 1];
        v18 = v22;
        goto LABEL_18;
      }

      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v13 = @"AND clock >= ? ";
      }

      else
      {
        v13 = @"OR clock >= ? ";
      }
    }

    [v12 addObject:v13];
    v16 = *(a1 + 32);
    v17 = [NSNumber numberWithUnsignedInteger:a2];
    v18 = v16;
LABEL_18:
    [v18 addObject:v17];

    *(*(*(a1 + 48) + 8) + 24) = 0;
    return;
  }

  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100049E94();
  }

  *a4 = 1;
}

void sub_100020DA8(uint64_t a1)
{
  v2 = [*(a1 + 32) SELECT_ATOMS_WHERE:*(a1 + 40) ORDER_BY:&off_10007EF58 LIMIT:0];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100020E6C;
  v8 = &unk_100079290;
  v3 = *(a1 + 48);
  v9 = v2;
  v10 = v3;
  v4 = v2;
  [v4 enumerateWithBlock:&v5];
  [v4 close];
}

void sub_100020E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = [[BMSyncCKAtomRow alloc] initWithFMResultSet:*(a1 + 32)];
  (*(v4 + 16))(v4, v5, a3);
}

void sub_1000214DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_100021668(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x2020000000;
  v16 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002197C;
  v13[3] = &unk_100078AD8;
  v13[4] = &v14;
  [v3 setExpirationHandler:v13];
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = @"com.apple.biomesyncd.deferredMerge";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Called from BGSystemTaskScheduler to process atom batches via mergeDeferredAtomBatchesWithShouldDefer (%@)", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5 && ([v5 start] & 1) == 0)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = @"com.apple.biomesyncd.deferredMerge";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to run %@ as Database unavailable for activity", buf, 0xCu);
    }
  }

  v7 = [*(a1 + 32) primaryUserSyncStreamManager];

  if (v7)
  {
    v8 = [*(a1 + 32) primaryUserSyncStreamManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100021990;
    v12[3] = &unk_100079330;
    v12[4] = &v14;
    v9 = [v8 mergeDeferredAtomBatchesWithShouldDefer:v12];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100049F48(v8);
    }

    v9 = 2;
  }

  [v3 setTaskCompleted];
  if (v9 == 2 || *(v15[0] + 24) == 1)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004A050(v15, v9, v10);
    }

    +[BMSyncBackgroundTasks submitBackgroundTaskForDeferredMerge];
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100049FCC(v11);
    }
  }

  _Block_object_dispose(&v14, 8);
}

void sub_100021944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021E68(void *a1)
{
  if (([*(a1[4] + 8) start] & 1) == 0)
  {
    v2 = a1[5];
    if (v2)
    {
      v3 = [NSError errorWithDomain:BMSyncErrorDomain code:2 userInfo:0];
      (*(v2 + 16))(v2, v3);
    }

    v4 = a1[6];
    if (v4)
    {
      v5 = [NSError errorWithDomain:BMSyncErrorDomain code:2 userInfo:0];
      v7 = v5;
      v6 = [NSArray arrayWithObjects:&v7 count:1];
      (*(v4 + 16))(v4, &__NSArray0__struct, v6);
    }
  }
}

uint64_t sub_100021F8C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100021FA4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100022084(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) start])
  {
    v2 = [*(*(a1 + 32) + 8) syncScheduler];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100022244;
    v9[3] = &unk_1000793A8;
    v10 = *(a1 + 48);
    [v2 syncRapportNowIfPolicyAllowsWithReason:5 activity:0 completionHandler:v9];

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }

    v4 = v10;
    goto LABEL_9;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [NSError errorWithDomain:BMSyncErrorDomain code:2 userInfo:0];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v4 = [NSError errorWithDomain:BMSyncErrorDomain code:2 userInfo:0];
    v11 = v4;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    (*(v7 + 16))(v7, &__NSArray0__struct, v8);

LABEL_9:
  }
}

uint64_t sub_100022244(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002234C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) start])
  {
    v2 = [*(*(a1 + 32) + 8) syncScheduler];
    v3 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100022514;
    v10[3] = &unk_1000793A8;
    v11 = *(a1 + 56);
    [v2 syncRapportNowIfPolicyAllowsWithDevices:v3 reason:5 activity:0 completionHandler:v10];

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }

    v5 = v11;
    goto LABEL_9;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = [NSError errorWithDomain:BMSyncErrorDomain code:2 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v5 = [NSError errorWithDomain:BMSyncErrorDomain code:2 userInfo:0];
    v12 = v5;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    (*(v8 + 16))(v8, &__NSArray0__struct, v9);

LABEL_9:
  }
}

uint64_t sub_100022514(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10002267C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100022804(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100022930(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100022B70(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100022C9C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100022D4C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) start])
  {
    v26 = a1;
    v2 = [*(*(a1 + 32) + 8) primaryDatabase];
    v3 = [[BMSyncDevicePeerStatusTracker alloc] initWithDatabase:v2];
    v4 = [(BMSyncDevicePeerStatusTracker *)v3 localDeviceIdentifierCreatingIfNecessary];
    v5 = [(BMSyncDevicePeerStatusTracker *)v3 allPeers];

    v6 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      v27 = v6;
      v28 = v4;
      do
      {
        v10 = 0;
        v29 = v8;
        do
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * v10);
          v12 = [v11 deviceIdentifier];
          v13 = [v12 isEqualToString:v4];

          if ((v13 & 1) == 0)
          {
            v31 = [BMDevice alloc];
            v14 = [v11 deviceIdentifier];
            v15 = [v11 idsDeviceIdentifier];
            v16 = [v11 metadata];
            v17 = [v16 name];
            v18 = [v11 metadata];
            [v18 model];
            v20 = v19 = v9;
            v21 = [v11 metadata];
            v22 = v14;
            v23 = [v31 initWithDeviceIdentifier:v14 idsDeviceIdentifier:v15 name:v17 model:v20 platform:{objc_msgSend(v21, "platform")}];

            v9 = v19;
            v8 = v29;

            v4 = v28;
            v6 = v27;
            [v27 addObject:v23];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v8);
    }

    v24 = *(v26 + 40);
    if (v24)
    {
      (*(v24 + 16))(v24, v6, 0);
    }
  }

  else
  {
    v25 = *(a1 + 40);
    if (v25)
    {
      v32 = [NSError errorWithDomain:BMSyncErrorDomain code:2 userInfo:0];
      (*(v25 + 16))(v25, &__NSArray0__struct);
    }
  }
}

void sub_100023130(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) start])
  {
    v2 = [BMSyncDevicePeerStatusTracker alloc];
    v22 = a1;
    v3 = [*(*(a1 + 32) + 8) primaryDatabase];
    v4 = [(BMSyncDevicePeerStatusTracker *)v2 initWithDatabase:v3];

    v5 = [(BMSyncDevicePeerStatusTracker *)v4 allPeers];
    v21 = v4;
    v6 = [(BMSyncDevicePeerStatusTracker *)v4 localDeviceIdentifierCreatingIfNecessary];
    v7 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v12 dictionaryRepresentation];
          v14 = [v13 mutableCopy];

          v15 = [v12 deviceIdentifier];
          v16 = [v15 isEqual:v6];

          if (v16)
          {
            [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isMe"];
          }

          v17 = [v12 metadata];
          [v17 platform];
          v18 = BMDevicePlatformGetDescription();
          [v14 setObject:v18 forKeyedSubscript:@"platformDescription"];

          [v7 addObject:v14];
        }

        v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    v19 = *(v22 + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, v7, 0);
    }
  }

  else
  {
    v20 = *(a1 + 40);
    if (v20)
    {
      obja = [NSError errorWithDomain:BMSyncErrorDomain code:2 userInfo:0];
      (*(v20 + 16))(v20, &__NSArray0__struct);
    }
  }
}

void sub_1000234C8(id a1)
{
  v1 = objc_alloc_init(BMSyncDevice);
  v2 = qword_10008BD50;
  qword_10008BD50 = v1;

  v3 = +[BMDeviceMetadataUtils platform];
  *(qword_10008BD50 + 8) = v3;
}

__CFString *BMRapportErrorToString(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [NSString stringWithFormat:@"Unknown error (code %ld)", a1];
  }

  else
  {
    v2 = off_100079468[a1];
  }

  return v2;
}

id sub_100025DD8(unint64_t a1)
{
  if (a1 >= 5)
  {
    v1 = [[NSString alloc] initWithFormat:@"BMSyncAtomType(%llu)", a1];
  }

  else
  {
    v1 = *(&off_100079508 + a1);
  }

  return v1;
}

void sub_100026CB8(id a1)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = +[BMStreamSyncPolicy syncableStreamConfigurations];
  v1 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v1)
  {
    v3 = v1;
    v4 = *v37;
    v5 = BMUseCaseLegacy;
    v6 = &bm_generateChecksum_ptr;
    *&v2 = 138412546;
    v31 = v2;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v37 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = [v8 storeConfig];
        v10 = [v9 datastorePath];
        v11 = [v8 streamIdentifier];
        v12 = [v10 stringByAppendingPathComponent:v11];

        v13 = [v6[230] fileManagerWithMediatedAccessToDirectory:v12 useCase:v5 domain:0 user:getuid()];
        v14 = +[BMStoreDirectory remoteDevices];
        v15 = [v12 stringByAppendingPathComponent:v14];

        v35 = 0;
        LOBYTE(v14) = [v13 removeDirectoryAtPath:v15 error:&v35];
        v16 = v35;
        v17 = v16;
        if ((v14 & 1) == 0)
        {
          v18 = [v16 userInfo];
          [v18 objectForKeyedSubscript:NSUnderlyingErrorKey];
          v33 = v17;
          v19 = v13;
          v20 = v6;
          v21 = v3;
          v22 = v5;
          v24 = v23 = v4;
          v34 = v15;
          v25 = v8;
          v26 = [v24 code];

          v4 = v23;
          v5 = v22;
          v3 = v21;
          v6 = v20;
          v13 = v19;
          v17 = v33;

          v27 = v26 == 2;
          v28 = v25;
          v15 = v34;
          if (!v27)
          {
            v29 = __biome_log_for_category();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [v28 streamIdentifier];
              *buf = v31;
              v41 = v30;
              v42 = 2112;
              v43 = v33;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to delete remotes for stream %@: %@", buf, 0x16u);
            }
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v3);
  }
}

void sub_100027140(uint64_t a1)
{
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = +[BMStreamSyncPolicy syncableStreamConfigurations];
  v1 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v1)
  {
    v3 = v1;
    v29 = *v35;
    v4 = BMUseCaseLegacy;
    v5 = &bm_generateChecksum_ptr;
    v6 = &bm_generateChecksum_ptr;
    *&v2 = 138412802;
    v27 = v2;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v34 + 1) + 8 * v7);
        v8 = [v5[231] pathForSharedSyncWithAccount:*(a1 + 32) streamType:2 domain:{0, v27}];
        v9 = [v6[230] fileManagerWithMediatedAccessToDirectory:v8 useCase:v4 domain:0 user:getuid()];
        v10 = +[BMStoreDirectory remoteDevices];
        v11 = [v8 stringByAppendingPathComponent:v10];

        v33 = 0;
        v12 = v11;
        LOBYTE(v10) = [v9 removeDirectoryAtPath:v11 error:&v33];
        v13 = v33;
        v14 = v13;
        if ((v10 & 1) == 0)
        {
          v15 = [v13 userInfo];
          [v15 objectForKeyedSubscript:NSUnderlyingErrorKey];
          v16 = v31 = v9;
          v17 = v6;
          v18 = v5;
          v19 = v4;
          v20 = v3;
          v21 = v14;
          v22 = [v16 code];

          v9 = v31;
          v23 = v22 == 2;
          v14 = v21;
          v3 = v20;
          v4 = v19;
          v5 = v18;
          v6 = v17;
          if (!v23)
          {
            v24 = __biome_log_for_category();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v30 streamIdentifier];
              v26 = *(a1 + 32);
              *buf = v27;
              v39 = v25;
              v40 = 2112;
              v41 = v26;
              v42 = 2112;
              v43 = v14;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to delete remotes for stream %@ BM Account %@: %@", buf, 0x20u);

              v9 = v31;
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v3 != v7);
      v3 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v3);
  }
}

__CFString *sub_100027674(unint64_t a1)
{
  if (a1 >= 4)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_10004A818();
    }

    v2 = [NSString stringWithFormat:@"(unknown: %lu)", a1];
  }

  else
  {
    v2 = off_100079878[a1];
  }

  return v2;
}

uint64_t sub_100027710(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"syncRecord"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"zoneVersion"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"highestDeletedLocation"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100027D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100027DB0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained syncSessionDidStartWithReason:*(a1 + 48)];
  v5 = objc_opt_new();
  v6 = WeakRetained[3];
  WeakRetained[3] = v5;

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027E94;
  v8[3] = &unk_1000795B0;
  v8[4] = WeakRetained;
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  [WeakRetained fetchChangesWithError:v8];
}

void sub_100027E94(uint64_t a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100027F60;
  v6[3] = &unk_100079588;
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v10 = *(a1 + 48);
  v5 = v7;
  [v3 uploadChangesWithError:v6];
}

void sub_100027F60(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [NSMutableArray arrayWithCapacity:2];
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 addObject:?];
  }

  if (v7)
  {
    [v4 addObject:v7];
  }

  v5 = *(a1 + 48);
  v6 = [*(*(a1 + 40) + 24) allObjects];
  (*(v5 + 16))(v5, v6, v4);

  (*(*(a1 + 56) + 16))();
  [*(a1 + 40) syncSessionDidEnd];
}

void sub_1000281A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028260;
  v7[3] = &unk_100079600;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, v7);
}

void sub_100028C7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 72) state];
  v5 = [v4 pendingRecordZoneChanges];
  v6 = [v5 count];

  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(*(a1 + 32) + 72) state];
      v9 = [v8 pendingRecordZoneChanges];
      *buf = 134217984;
      v25 = [v9 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "after modifying changes, we have %lu pending record changes to sync as a result of error handling", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(v11 + 72);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100028E90;
    v21[3] = &unk_100079650;
    v21[4] = v11;
    v22 = v3;
    v23 = v10;
    v13 = v3;
    [v12 sendChangesWithCompletionHandler:v21];

    v14 = v23;
  }

  else
  {
    v15 = *(*(a1 + 32) + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100028F4C;
    block[3] = &unk_100079600;
    v16 = *(a1 + 40);
    v19 = v3;
    v20 = v16;
    v17 = v3;
    dispatch_sync(v15, block);

    v14 = v20;
  }
}

void sub_100028E90(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100028F38;
  v3[3] = &unk_100079600;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_sync(v2, v3);
}

void sub_1000292B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[7] || !v2[8] || !v2[9])
  {
    v3 = objc_opt_new();
    [v3 setFetchChangesForMergeableValues:1];
    v4 = [[CKContainerID alloc] initWithContainerIdentifier:@"com.apple.biome.sync" environment:1];
    v5 = [[CKContainer alloc] initWithContainerID:v4 options:v3];
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;

    if (!*(*(a1 + 32) + 56))
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10004AA48();
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    if (*(*(*(a1 + 40) + 8) + 24) != 1)
    {
      goto LABEL_27;
    }

    [*(a1 + 32) handleTransitionToNewMergeableValueRecordValueKey];
    v9 = [*(*(a1 + 32) + 16) ckSyncEngineMetaData];
    v10 = +[NSNull null];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = v9;
      v9 = 0;
    }

    else
    {
      if (!v9)
      {
        v12 = 0;
        v13 = 0;
        goto LABEL_17;
      }

      v26 = 0;
      v12 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v26];
      v13 = v26;
      if (!v13)
      {
LABEL_18:
        v16 = [CKSyncEngineConfiguration alloc];
        v17 = [*(*(a1 + 32) + 56) privateCloudDatabase];
        v18 = [v16 initWithDatabase:v17 stateSerialization:v12 delegate:*(a1 + 32)];
        v19 = *(a1 + 32);
        v20 = *(v19 + 64);
        *(v19 + 64) = v18;

        if (!*(*(a1 + 32) + 64))
        {
          v21 = __biome_log_for_category();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10004AAF4();
          }

          *(*(*(a1 + 40) + 8) + 24) = 0;
        }

        if (*(*(*(a1 + 40) + 8) + 24))
        {
          [*(*(a1 + 32) + 64) setAutomaticSyncingEnabled:0];
          v22 = [[CKSyncEngine alloc] initWithConfiguration:*(*(a1 + 32) + 64)];
          v23 = *(a1 + 32);
          v24 = *(v23 + 72);
          *(v23 + 72) = v22;

          if (!*(*(a1 + 32) + 72))
          {
            v25 = __biome_log_for_category();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_10004AB30();
            }

            *(*(*(a1 + 40) + 8) + 24) = 0;
          }
        }

LABEL_27:

        return;
      }

      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10004AA84();
      }
    }

LABEL_17:
    [*(*(a1 + 32) + 16) clearCKSyncEngineMetaData];
    v15 = [[CKSyncEngineStateSerialization alloc] initWithDeprecatedData:v9];

    v12 = v15;
    goto LABEL_18;
  }
}

void sub_100029604(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004AB6C();
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) isManateeAvailable:v5], v6);
}

void sub_100029BA4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 16) deleteCKRecordAtLocation:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_100029E8C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) recordID];
  v4 = [v3 recordName];

  v5 = [*(a1 + 32) recordID];
  v6 = [v5 zoneID];
  v7 = [v6 zoneName];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"crdtDeleted"];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) recordID];
  v11 = [v10 zoneID];
  v12 = [v9 streamConfigurationForZoneID:v11];

  if (![v8 isEqual:&__kCFBooleanFalse])
  {
    [*(*(a1 + 40) + 16) resetMetadataForRecord:v4 zoneName:v7];
    v13 = 0;
    goto LABEL_3;
  }

  if (sub_10004A694(v12) && [*(a1 + 40) isRecordNewerThanMostRecentDeleteForSiteIdentifier:*(a1 + 32)])
  {
    v17 = [*(a1 + 32) encryptedValues];
    v18 = [*(a1 + 40) mergeableRecordValueKey];
    v13 = [v17 objectForKeyedSubscript:v18];

    if (!v13)
    {
      v21 = [*(a1 + 32) encryptedValues];
      v22 = [v21 objectForKeyedSubscript:@"biomeCRDT"];

      if (v22)
      {
        goto LABEL_13;
      }

      v14 = __biome_log_for_category();
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_FAULT))
      {
        sub_10004AE48();
      }

LABEL_12:

LABEL_13:
      goto LABEL_14;
    }

    v23 = 0;
    v14 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v23];
    v19 = v23;
    if (v19)
    {
      v15 = v19;
      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        v25 = v4;
        v26 = 2114;
        v27 = v7;
        v28 = 2114;
        v29 = v15;
        _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Error encoding serverValue for %{public}@ %{public}@, %{public}@", buf, 0x20u);
      }

      goto LABEL_11;
    }

    v13 = v14;
LABEL_3:
    v14 = [[BMStreamCRDTLocation alloc] initWithZoneName:v7 recordName:v4];
    if (v14)
    {
      v15 = [*(*(a1 + 40) + 16) insertLocationIfNotExists:v14 withState:2];
      if (([*(*(a1 + 40) + 16) saveCKRecordServerMergeableValue:v13 recordName:v4 zoneName:v7 locationRow:v15] & 1) == 0)
      {
        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          sub_10004AD60();
        }
      }

      [*(*(a1 + 40) + 16) saveSystemFieldsDataForRecord:*(a1 + 32) syncToCloudKit:0 recordType:1 crdtDeleted:0];
    }

    else
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_10004ADD8();
      }
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_14:

  objc_autoreleasePoolPop(v2);
}

void sub_10002A2D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) recordID];
  v4 = [v3 zoneID];
  v5 = [v4 zoneName];

  v6 = [*(*(a1 + 40) + 16) ckZoneForZoneName:v5];
  v7 = [v6 zoneUUID];
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"zoneVersionUUID"];
  if ((!v7 || ([v7 isEqualToString:v8] & 1) == 0) && objc_msgSend(*(*(a1 + 40) + 16), "resetCKRecordsMetaDataAndSetToSyncForZone:", v5))
  {
    [*(*(a1 + 40) + 16) ckZoneSetZoneVersionUUID:v8 forZoneName:v5];
  }

  [*(*(a1 + 40) + 16) saveSystemFieldsDataForRecord:*(a1 + 32) syncToCloudKit:0 recordType:2 crdtDeleted:0];

  objc_autoreleasePoolPop(v2);
}

void sub_10002A488(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) recordID];
  v4 = [v3 zoneID];
  v5 = [v4 zoneName];

  v6 = [*(a1 + 32) recordID];
  v7 = [v6 recordName];

  v8 = [*(*(a1 + 40) + 16) highestDeletedLocationForSiteIdentifier:v7 inStream:v5];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 location];
    v11 = [v10 day];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [*(a1 + 32) objectForKeyedSubscript:@"day"];
  v15 = [v14 longValue];

  if (v13 < v15)
  {
    v16 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v15];
    v17 = [[BMStreamCRDTLocation alloc] initWithStreamName:v5 siteIdentifier:v7 day:v16];
    v18 = [*(*(a1 + 40) + 8) distributedSyncManagers];
    v19 = [v18 objectForKeyedSubscript:v5];

    v20 = [v19 streamCRDT];
    [v20 handleDeletedLocation:v17 deleteCKRecord:1];

    v21 = [*(*(a1 + 40) + 16) ckRecordForRecordName:v7 zoneName:v5 recordType:3];
    v22 = [*(*(a1 + 40) + 16) locationRowWithLocation:v17];
    [*(*(a1 + 40) + 16) saveCKRecordHighestDeletedLocationRow:v22 recordName:v7 zoneName:v5 recordExists:v21 != 0];
  }

  [*(*(a1 + 40) + 16) saveSystemFieldsDataForRecord:*(a1 + 32) syncToCloudKit:0 recordType:3 crdtDeleted:0];

  objc_autoreleasePoolPop(v2);
}

void sub_10002A960(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 16) saveSystemFieldsDataForRecord:a1[5] syncToCloudKit:0 recordType:2 crdtDeleted:0];
  [*(a1[4] + 16) ckZoneSetZoneVersionUUID:a1[6] forZoneName:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_10002AA5C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 16) saveSystemFieldsDataForRecord:*(a1 + 40) syncToCloudKit:0 recordType:3 crdtDeleted:0];

  objc_autoreleasePoolPop(v2);
}

void sub_10002AC04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 16) saveSystemFieldsDataForRecord:*(a1 + 40) syncToCloudKit:&__kCFBooleanFalse recordType:1 crdtDeleted:*(a1 + 48)];
  v3 = [*(a1 + 40) encryptedValues];
  v4 = [*(a1 + 32) mergeableRecordValueKey];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = (a1 + 56);
    v7 = (a1 + 64);
    v8 = [*(*(a1 + 32) + 16) ckRecordForRecordName:*(a1 + 56) zoneName:*(a1 + 64) recordType:1];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 localMergeableValue];
      if (v10)
      {
        v11 = v10;
        v12 = objc_opt_class();
        v13 = [v9 localMergeableValue];
        v34 = 0;
        v14 = [NSKeyedUnarchiver unarchivedObjectOfClass:v12 fromData:v13 error:&v34];
        v15 = v34;

        if (v15)
        {
          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            v27 = *v6;
            v28 = *v7;
            *buf = 138543874;
            v36 = v27;
            v37 = 2114;
            v38 = v28;
            v39 = 2114;
            v40 = v15;
            _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "handleDidSaveRecordSyncRecord: Unable to unarchive localMergeableValue for %{public}@ %{public}@ %{public}@", buf, 0x20u);
          }
        }

        if (v14)
        {
LABEL_9:
          if (([v14 isEqual:v5] & 1) == 0)
          {
            v33 = 0;
            [v14 mergeRecordValue:v5 error:&v33];
            v17 = v33;
            if (v17)
            {
              v18 = __biome_log_for_category();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
              {
                v29 = *v6;
                v30 = *v7;
                *buf = 138544130;
                v36 = v5;
                v37 = 2114;
                v38 = v29;
                v39 = 2114;
                v40 = v30;
                v41 = 2114;
                v42 = v17;
                _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Error [localRecordValue mergeRecordValue:serverValue] for serverValue:%{public}@ record:%{public}@ zone:%{public}@ %{public}@", buf, 0x2Au);
              }
            }

            goto LABEL_27;
          }

LABEL_26:
          v17 = 0;
LABEL_27:
          v32 = v17;
          v22 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v32];
          v19 = v32;

          if (v19)
          {
            v23 = __biome_log_for_category();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              sub_10004AFEC();
            }
          }

          else
          {
            v31 = v2;
            v24 = *(*(a1 + 32) + 16);
            v25 = [[BMStreamCRDTLocation alloc] initWithZoneName:*(a1 + 64) recordName:*(a1 + 56)];
            v23 = [v24 locationRowWithLocation:v25];

            if (v23)
            {
              [*(*(a1 + 32) + 16) saveCKRecordLocalMergeableValue:v22 recordName:*(a1 + 56) zoneName:*(a1 + 64) locationRow:v23];
              v2 = v31;
            }

            else
            {
              v26 = __biome_log_for_category();
              v2 = v31;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
              {
                sub_10004B05C(v7);
              }
            }
          }

          goto LABEL_36;
        }
      }

      else
      {
        v14 = objc_opt_new();
        if (v14)
        {
          goto LABEL_9;
        }
      }

      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_10004AF78((a1 + 56));
      }

      v14 = v5;
      goto LABEL_26;
    }

    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_10004B0D0(v6);
    }

LABEL_21:
    v19 = 0;
LABEL_36:

    goto LABEL_37;
  }

  if (([*(a1 + 48) isEqual:&__kCFBooleanTrue] & 1) == 0)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10004B144(a1);
    }

    goto LABEL_21;
  }

  v19 = 0;
LABEL_37:

  objc_autoreleasePoolPop(v2);
}

void sub_10002B414(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) ckZoneForZoneName:*(a1 + 40)];
  if ([v3 recoveryState])
  {
    v4 = objc_autoreleasePoolPush();
    [*(*(a1 + 32) + 16) ckZoneSetAttemptingRecoveryForZoneName:*(a1 + 40) state:0];
    objc_autoreleasePoolPop(v4);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002B530(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 16) saveCKSyncEngineMetaData:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B7D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) ckZoneForZoneName:*(a1 + 40)];
  if ([v3 recoveryState])
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = 138543618;
      v7 = v5;
      v8 = 1026;
      v9 = [v3 recoveryState];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "failedToSaveRecordZone: %{public}@ and recoveryState:%{public}d", &v6, 0x12u);
    }

    [*(*(a1 + 32) + 16) ckZoneSetAttemptingRecoveryForZoneName:*(a1 + 40) state:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002BA68(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) recordID];
  v5 = [v4 recordName];
  v6 = [*(a1 + 40) recordID];
  v7 = [v6 zoneID];
  v8 = [v7 zoneName];
  [v3 resetMetadataForRecord:v5 zoneName:v8];

  objc_autoreleasePoolPop(v2);
}

void sub_10002BDE0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 16) saveSystemFieldsDataForRecord:*(a1 + 40) syncToCloudKit:0 recordType:1 crdtDeleted:0];

  objc_autoreleasePoolPop(v2);
}

void sub_10002BF38(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1[4] userInfo];
  v4 = [v3 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

  if (!v4)
  {
    [*(a1[5] + 2) saveSystemFieldsDataForRecord:a1[7] syncToCloudKit:&__kCFBooleanFalse recordType:1 crdtDeleted:0];
    v18 = [CKSyncEnginePendingRecordZoneChange alloc];
    v19 = [a1[7] recordID];
    v20 = [v18 initWithRecordID:v19 type:0];

    v50 = v20;
    v9 = [NSArray arrayWithObjects:&v50 count:1];
    v21 = [*(a1[5] + 9) state];
    [v21 addPendingRecordZoneChanges:v9];
    goto LABEL_25;
  }

  v47 = v2;
  v5 = [a1[4] userInfo];
  v6 = [v5 objectForKeyedSubscript:CKRecordChangedErrorClientRecordKey];

  v7 = [v4 encryptedValues];
  v8 = [a1[5] mergeableRecordValueKey];
  v9 = [v7 objectForKeyedSubscript:v8];

  v46 = v6;
  v10 = [v6 encryptedValues];
  v11 = [a1[5] mergeableRecordValueKey];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = __biome_log_for_category();
  v14 = v13;
  v45 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v53 = v12;
      v54 = 2114;
      v55 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Handling handleFailedToSaveSyncRecordServerRecordChanged: Merging clientCRDT into serverCRDT %{public}@ -> %{public}@", buf, 0x16u);
    }

    if (([v9 isEqual:v12] & 1) == 0)
    {
      v49 = 0;
      [v9 mergeRecordValue:v12 error:&v49];
      v15 = v49;
      if (v15)
      {
        v16 = v15;
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10004B328();
        }
      }
    }

LABEL_14:
    v48 = 0;
    v22 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v48];
    v23 = v48;
    v44 = v22;
    if (v23)
    {
      v43 = v23;
      v24 = __biome_log_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_10004B41C(a1 + 4);
      }
    }

    else
    {
      v43 = 0;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_10004B398(a1 + 4);
  }

  v9 = v12;
  if (v9)
  {
    goto LABEL_14;
  }

  v43 = 0;
  v44 = 0;
LABEL_20:
  v25 = *(a1[5] + 2);
  v26 = [BMStreamCRDTLocation alloc];
  v27 = [a1[6] zoneName];
  v28 = [v4 recordID];
  v29 = [v28 recordName];
  v30 = [(BMStreamCRDTLocation *)v26 initWithZoneName:v27 recordName:v29];
  v31 = [v25 locationRowWithLocation:v30];

  if (v31)
  {
    v32 = *(a1[5] + 2);
    v33 = [v4 recordID];
    v34 = [v33 recordName];
    v35 = [a1[6] zoneName];
    v36 = v44;
    [v32 saveCKRecordLocalMergeableValue:v44 recordName:v34 zoneName:v35 locationRow:v31];

    [*(a1[5] + 2) saveSystemFieldsDataForRecord:v4 syncToCloudKit:&__kCFBooleanFalse recordType:1 crdtDeleted:0];
    v37 = [CKSyncEnginePendingRecordZoneChange alloc];
    v38 = v4;
    v39 = [v4 recordID];
    v40 = [v37 initWithRecordID:v39 type:0];

    v51 = v40;
    v41 = [NSArray arrayWithObjects:&v51 count:1];
    v42 = [*(a1[5] + 9) state];
    [v42 addPendingRecordZoneChanges:v41];
  }

  else
  {
    v38 = v4;
    v40 = __biome_log_for_category();
    v36 = v44;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_10004B488();
    }
  }

  v2 = v47;
  v21 = v45;

  v20 = v46;
  v4 = v38;
LABEL_25:

  objc_autoreleasePoolPop(v2);
}

void sub_10002C614(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) zoneName];
  [v3 handleZoneReset:v4];

  objc_autoreleasePoolPop(v2);
}

void sub_10002C878(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 16) saveSystemFieldsDataForRecord:*(a1 + 40) syncToCloudKit:0 recordType:2 crdtDeleted:0];

  objc_autoreleasePoolPop(v2);
}

void sub_10002C9FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 16) saveSystemFieldsDataForRecord:*(a1 + 40) syncToCloudKit:0 recordType:3 crdtDeleted:0];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10002D0CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002D0E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) recordName];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) zoneID];
  v6 = [v4 streamConfigurationForZoneID:v5];

  v7 = *(*(a1 + 40) + 16);
  v8 = [v6 syncIdentifier];
  v9 = [v7 ckRecordForRecordName:v3 zoneName:v8 recordType:3];

  v10 = *(*(a1 + 40) + 16);
  v11 = [v9 locationID];
  v12 = [v10 locationRowWithLocationID:v11];

  if (v12)
  {
    v13 = [*(*(a1 + 40) + 16) createCKRecordFromRecordID:*(a1 + 32) newRecord:0 recordType:3];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [v12 location];
    v17 = [v16 day];
    [v17 timeIntervalSinceReferenceDate];
    v19 = [NSNumber numberWithLong:v18];
    [*(*(*(a1 + 48) + 8) + 40) setObject:v19 forKeyedSubscript:@"day"];

    v20 = [BMStreamCRDTLocation alloc];
    v21 = [v6 syncIdentifier];
    v22 = objc_opt_new();
    v23 = [(BMStreamCRDTLocation *)v20 initWithStreamName:v21 siteIdentifier:v3 day:v22];

    [(BMStreamCRDTLocation *)v23 secondsUntilExpirationWithStreamConfiguration:v6];
    v24 = *(*(*(a1 + 48) + 8) + 40);
    v25 = [NSNumber numberWithDouble:?];
    [v24 setExpirationAfterTimeInterval:v25];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002D41C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(NSUUID);
  v4 = [v3 UUIDString];

  v5 = [[CKRecord alloc] initWithRecordType:@"zoneVersion" recordID:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(*(a1 + 40) + 8) + 40) setObject:v4 forKeyedSubscript:@"zoneVersionUUID"];

  objc_autoreleasePoolPop(v2);
}

void sub_10002D6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10002D720(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 8) distributedSyncManagers];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  v5 = [[BMStreamCRDTLocation alloc] initWithZoneName:*(a1 + 40) recordName:*(a1 + 48)];
  v6 = [*(*(a1 + 32) + 16) locationRowWithLocation:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 location];
    v9 = [v4 streamConfiguration];
    [v8 secondsUntilExpirationWithStreamConfiguration:v9];
    v11 = v10;

    if (v11 <= 60.0)
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v28 = *(a1 + 56);
        *buf = 134218242;
        v55 = v11;
        v56 = 2114;
        v57 = v28;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "record is almost expired: %f, not saving recordID: %{public}@ because it will be TTL'd", buf, 0x16u);
      }

      goto LABEL_37;
    }

    v53 = 0;
    v12 = [*(*(a1 + 32) + 16) createCKRecordFromRecordID:*(a1 + 56) newRecord:&v53 recordType:1];
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v55) = v53;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "recordToSaveForRecordID: newRecord? %d", buf, 8u);
      }

      if (v53 == 1)
      {
        v16 = *(*(*(a1 + 64) + 8) + 40);
        v17 = [NSNumber numberWithDouble:v11];
        [v16 setExpirationAfterTimeInterval:v17];
      }

      if ([*(a1 + 32) isSiriCloudSyncEnabled])
      {
        v18 = [v4 streamCRDT];
        if (v18)
        {
          v19 = [[BMStreamCKRecordCRDT alloc] initWithStreamCRDT:v18 locationRow:v7 database:*(*(a1 + 32) + 16) queue:*(*(a1 + 32) + 48) maxDeltaSize:[CKMergeableDelta sessionContext:"suggestedDeltaSizeForContainer:" suggestedDeltaSizeForContainer:?], 0];
          v20 = *(*(a1 + 72) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;

          v22 = [*(*(a1 + 32) + 16) ckRecordForRecordName:*(a1 + 48) zoneName:*(a1 + 40) recordType:1];
          v23 = [v22 localMergeableValue];
          v49 = v22;
          if (v23)
          {
            v24 = objc_opt_class();
            v22 = [v22 localMergeableValue];
            v52 = 0;
            v25 = [NSKeyedUnarchiver unarchivedObjectOfClass:v24 fromData:v22 error:&v52];
            v26 = v52;
          }

          else
          {
            v25 = objc_opt_new();
            v26 = 0;
          }

          objc_storeStrong((*(*(a1 + 80) + 8) + 40), v25);
          if (v23)
          {

            v25 = v22;
          }

          if (v26)
          {
            v32 = __biome_log_for_category();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              v46 = *(a1 + 40);
              v45 = *(a1 + 48);
              *buf = 138543874;
              v55 = v45;
              v56 = 2114;
              v57 = v46;
              v58 = 2114;
              v59 = v26;
              _os_log_fault_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "handleSyncRecordRecordToSaveForRecordID: Unable to unarchive localMergeableValue for %{public}@ %{public}@ %{public}@", buf, 0x20u);
            }

            v33 = objc_opt_new();
            v34 = *(*(a1 + 80) + 8);
            v35 = *(v34 + 40);
            *(v34 + 40) = v33;
          }

          v36 = __biome_log_for_category();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = *(*(*(a1 + 80) + 8) + 40);
            *buf = 138543362;
            v55 = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "recordValue %{public}@", buf, 0xCu);
          }

          v38 = *(*(*(a1 + 80) + 8) + 40);
          v39 = *(*(*(a1 + 72) + 8) + 40);
          v51 = v26;
          v40 = [v38 addDeltasToSaveFromMergeable:v39 error:&v51];
          v30 = v51;

          if ((v40 & 1) == 0)
          {
            v41 = __biome_log_for_category();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              v48 = *(a1 + 40);
              v47 = *(a1 + 48);
              *buf = 138543874;
              v55 = v47;
              v56 = 2114;
              v57 = v48;
              v58 = 2114;
              v59 = v30;
              _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "Error adding deltas to save for %{public}@ %{public}@ %{public}@", buf, 0x20u);
            }
          }

          [*(*(*(a1 + 64) + 8) + 40) setObject:&__kCFBooleanFalse forKeyedSubscript:{@"crdtDeleted", v49}];
          v42 = *(*(*(a1 + 80) + 8) + 40);
          v43 = [*(*(*(a1 + 64) + 8) + 40) encryptedValues];
          v44 = [*(a1 + 32) mergeableRecordValueKey];
          [v43 setObject:v42 forKeyedSubscript:v44];
        }

        else
        {
          v30 = __biome_log_for_category();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = *(a1 + 56);
            *buf = 138412290;
            v55 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "streamCRDT is nil %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v29 = __biome_log_for_category();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Sync to iCloud for Siri disabled", buf, 2u);
        }

        [*(*(*(a1 + 64) + 8) + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"crdtDeleted"];
        v18 = [*(*(*(a1 + 64) + 8) + 40) encryptedValues];
        v30 = [*(a1 + 32) mergeableRecordValueKey];
        [v18 setObject:0 forKeyedSubscript:v30];
      }

LABEL_37:
    }
  }

  else
  {
    v27 = __biome_log_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10004B684(a1, (a1 + 40));
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002E0D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) ckZoneForZoneName:*(a1 + 40)];
  if ([v3 recoveryState])
  {
    [*(*(a1 + 32) + 16) ckZoneSetAttemptingRecoveryForZoneName:*(a1 + 40) state:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002E290(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 16) ckZoneForZoneName:a1[5]];
  v4 = [v3 recoveryState];
  v5 = __biome_log_for_category();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4 == 1)
  {
    if (v6)
    {
      v7 = a1[5];
      *buf = 138543362;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didDeleteRecordZoneWithID re-creating zone:%{public}@", buf, 0xCu);
    }

    v32 = v2;

    v8 = [[CKRecordZone alloc] initWithZoneName:a1[5]];
    v30 = [[CKSyncEnginePendingZoneSave alloc] initWithZone:v8];
    v42 = v30;
    v9 = [NSArray arrayWithObjects:&v42 count:1];
    v10 = [*(a1[4] + 72) state];
    v29 = v9;
    [v10 addPendingDatabaseChanges:v9];

    v11 = objc_alloc_init(NSMutableArray);
    v12 = a1[4];
    v31 = v8;
    v13 = [v8 zoneID];
    v14 = [v12 newZoneVersionRecordIDForZone:v13];

    v28 = v14;
    [v11 addObject:v14];
    v15 = [*(a1[4] + 16) ckRecordsToSyncToCloudKitForZone:a1[5]];
    if ([v15 count])
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v15 count];
        v18 = a1[5];
        *buf = 134218242;
        v39 = v17;
        v40 = 2114;
        v41 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "didDeleteRecordZoneWithID syncing %lu records for zone:%{public}@", buf, 0x16u);
      }

      [v11 addObjectsFromArray:v15];
    }

    v19 = objc_alloc_init(NSMutableArray);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v11;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        v24 = 0;
        do
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[CKSyncEnginePendingRecordZoneChange alloc] initWithRecordID:*(*(&v33 + 1) + 8 * v24) type:0];
          [v19 addObject:v25];

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v22);
    }

    v26 = [*(a1[4] + 72) state];
    [v26 addPendingRecordZoneChanges:v19];

    [*(a1[4] + 16) ckZoneSetAttemptingRecoveryForZoneName:a1[5] state:2];
    v2 = v32;
  }

  else
  {
    if (v6)
    {
      v27 = a1[5];
      *buf = 138543362;
      v39 = v27;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didDeleteRecordZoneWithID not re-creating zone:%{public}@, removing all local records in zone", buf, 0xCu);
    }

    [*(a1[4] + 16) deleteAllCKRecordsInZone:a1[6]];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002E798(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) zoneName];
  v5 = [v3 ckZoneForZoneName:v4];

  if (![v5 recoveryState])
  {
    [*(*(a1 + 32) + 16) deleteAllCKRecordsInZone:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002E8BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v3 = a1 + 32;
  v5 = [v4 zoneID];
  v6 = [v5 zoneName];

  v7 = [*(*(v3 + 8) + 8) distributedSyncManagers];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v8 streamCRDT];
  v10 = [BMStreamCRDTLocation alloc];
  v11 = [*v3 recordName];
  v12 = [(BMStreamCRDTLocation *)v10 initWithZoneName:v6 recordName:v11];

  if (!v12)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_10004B704(v6, v3);
    }

    goto LABEL_8;
  }

  if (!v9)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *v3;
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "streamCRDT is nil %{public}@", &v15, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  [v9 handleDeletedLocation:v12 deleteCKRecord:1];
LABEL_9:

  objc_autoreleasePoolPop(v2);
}

void sub_10002ECBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002ED4C;
  v5[3] = &unk_1000797E0;
  v5[4] = v3;
  [v4 enumerateRecordsWithBlock:v5];
  objc_autoreleasePoolPop(v2);
}

void sub_10002ED4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v67 = 0;
  v68[0] = &v67;
  v68[1] = 0x3032000000;
  v68[2] = sub_10002D0CC;
  v68[3] = sub_10002D0DC;
  v69 = 0;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 recordName];
    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "*** recordName:%{public}@", buf, 0xCu);
  }

  v6 = [v3 localMergeableValue];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [v3 localMergeableValue];
    v66 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:v7 fromData:v8 error:&v66];
    v10 = v66;
    v11 = *(v68[0] + 40);
    *(v68[0] + 40) = v9;

    if (v10)
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = [v3 recordName];
        v14 = [v3 streamIdentifier];
        *buf = 138543874;
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        *&buf[22] = 2114;
        v77 = v10;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "syncEngineDidEndFetchingChanges: Unable to unarchive localMergeableValue for %{public}@ %{public}@ %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = *(v68[0] + 40);
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Has a localMergeableValue: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Has no localMergeableValue", buf, 2u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v77) = 0;
  v16 = *(*(a1 + 32) + 16);
  v17 = [v3 recordName];
  v18 = [v3 streamIdentifier];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10002F710;
  v62[3] = &unk_1000797B8;
  v64 = buf;
  v19 = v3;
  v63 = v19;
  v65 = &v67;
  [v16 enumerateMergeableRecordValuesForRecordName:v17 zoneName:v18 withBlock:v62];

  v20 = __biome_log_for_category();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    if (*(*&buf[8] + 24))
    {
      v21 = "YES";
    }

    else
    {
      v21 = "NO";
    }

    *v70 = 136446210;
    v71 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Were there mergeableRecordValues: %{public}s", v70, 0xCu);
  }

  v22 = [*(*(a1 + 32) + 8) distributedSyncManagers];
  v23 = [v19 streamIdentifier];
  v24 = [v22 objectForKeyedSubscript:v23];
  v25 = [v24 streamCRDT];

  v26 = [BMStreamCRDTLocation alloc];
  v27 = [v19 streamIdentifier];
  v28 = [v19 recordName];
  v29 = [(BMStreamCRDTLocation *)v26 initWithZoneName:v27 recordName:v28];

  v30 = __biome_log_for_category();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *v70 = 138543362;
    v71 = v29;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "syncEngineDidEndFetchingChanges location: %{public}@", v70, 0xCu);
  }

  if (v29)
  {
    v31 = [*(*(a1 + 32) + 16) locationRowWithLocation:v29];
    v32 = __biome_log_for_category();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *v70 = 138543362;
      v71 = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "syncEngineDidEndFetchingChanges locationRow: %{public}@", v70, 0xCu);
    }

    if (v31)
    {
      v33 = [CKMergeableDelta suggestedDeltaSizeForContainer:*(*(a1 + 32) + 56)];
      v34 = [BMStreamCKRecordCRDT alloc];
      v35 = *(a1 + 32);
      v36 = v35[2];
      v37 = v35[6];
      v38 = [v35 sessionContext];
      v59 = [(BMStreamCKRecordCRDT *)v34 initWithStreamCRDT:v25 locationRow:v31 database:v36 queue:v37 maxDeltaSize:v33 sessionContext:v38];

      v39 = __biome_log_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = *(v68[0] + 40);
        *v70 = 138543362;
        v71 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "recordValue %{public}@", v70, 0xCu);
      }

      v41 = objc_autoreleasePoolPush();
      v42 = *(v68[0] + 40);
      v61 = 0;
      [v42 mergeIntoMergeable:v59 error:&v61];
      v43 = v61;
      objc_autoreleasePoolPop(v41);
      if (v43)
      {
        v44 = __biome_log_for_category();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          v57 = [v19 recordName];
          v58 = [v19 streamIdentifier];
          *v70 = 138543874;
          v71 = v57;
          v72 = 2114;
          v73 = v58;
          v74 = 2114;
          v75 = v43;
          _os_log_fault_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "Unable to  [recordValue mergeIntoMergeable:recordCRDT] for recordName:%{public}@ site:%{public}@ error:%{public}@", v70, 0x20u);
        }
      }

      v45 = [(BMStreamCRDTLocation *)v29 streamName];

      if (*(v68[0] + 40))
      {
        v46 = objc_autoreleasePoolPush();
        v47 = *(v68[0] + 40);
        v60 = 0;
        v48 = [NSKeyedArchiver archivedDataWithRootObject:v47 requiringSecureCoding:1 error:&v60];
        v49 = v60;
        objc_autoreleasePoolPop(v46);
        if (v49)
        {
          v50 = __biome_log_for_category();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            sub_10004B7A8(v68);
          }
        }

        else
        {
          v51 = *(*(a1 + 32) + 16);
          v50 = [v19 recordName];
          [v51 saveCKRecordLocalMergeableValue:v48 recordName:v50 zoneName:v45 locationRow:v31];
          v49 = 0;
        }
      }

      else
      {
        v49 = 0;
        v48 = 0;
      }

      v52 = *(*(a1 + 32) + 24);
      v53 = [(BMStreamCRDTLocation *)v29 siteIdentifier];
      [v52 addObject:v53];

      v54 = *(*(a1 + 32) + 16);
      v55 = [v19 recordName];
      v56 = [v19 streamIdentifier];
      [v54 clearCKMergeableRecordValueServerMergeableValuesForRecordName:v55 zoneName:v56];
    }

    else
    {
      v49 = __biome_log_for_category();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        sub_10004B82C();
      }
    }
  }

  else
  {
    v31 = __biome_log_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      [v19 streamIdentifier];
      objc_claimAutoreleasedReturnValue();
      [v19 recordName];
      objc_claimAutoreleasedReturnValue();
      sub_10004B894();
    }
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v67, 8);
}

void sub_10002F67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose((v13 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002F710(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v3 = a2;
  v18 = 0;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v18];

  v5 = v18;
  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10004B900();
    }

    v7 = objc_opt_new();
    v4 = v7;
  }

  v8 = *(*(a1 + 48) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, v4);
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Merging recordValue %{public}@", buf, 0xCu);
  }

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Merging serverValue %{public}@", buf, 0xCu);
  }

  if (([*(*(*(a1 + 48) + 8) + 40) isEqual:v4] & 1) == 0)
  {
    v14 = *(*(*(a1 + 48) + 8) + 40);
    v17 = v5;
    [v14 mergeRecordValue:v4 error:&v17];
    v15 = v17;

    v5 = v15;
  }

  if (v5)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_10004B9C0();
    }
  }
}

void sub_10002FAA0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10002D0CC;
  v24 = sub_10002D0DC;
  v25 = objc_alloc_init(NSMutableArray);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002FD18;
  v19[3] = &unk_100079808;
  v19[4] = v4;
  v19[5] = &v20;
  [v5 enumerateZonesWithBlock:v19];
  objc_autoreleasePoolPop(v3);
  if ([v21[5] count])
  {
    v6 = objc_alloc_init(NSMutableArray);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v21[5];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v26 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [CKSyncEnginePendingZoneDelete alloc];
          v13 = [v12 initWithZoneID:{v11, v15}];
          [v6 addObject:v13];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v26 count:16];
      }

      while (v8);
    }

    v14 = [*(*(a1 + 32) + 72) state];
    [v14 addPendingDatabaseChanges:v6];
  }

  _Block_object_dispose(&v20, 8);

  objc_autoreleasePoolPop(v2);
}

void sub_10002FCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002FD18(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 recoveryState] == 1)
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = [v8 zoneName];
    [v3 resetCKRecordsMetaDataAndSetToSyncForZone:v4];

    v5 = [CKRecordZoneID alloc];
    v6 = [v8 zoneName];
    v7 = [v5 initWithZoneName:v6 ownerName:CKCurrentUserDefaultName];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

void sub_10003064C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 ckSyncEngine];
  [v4 syncEngine:v7 failedToDeleteRecordZoneWithID:v6 error:v5];
}

id sub_100031334(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) syncEngine:*(a1 + 40) recordToSaveForRecordID:v3];
  if (!v4)
  {
    v5 = *(a1 + 48);
    v6 = [[CKSyncEnginePendingRecordZoneChange alloc] initWithRecordID:v3 type:0];
    [v5 addObject:v6];
  }

  return v4;
}

uint64_t *sub_100031548@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_1000329F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v5 = [v3 dataWithError:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004BEA4();
    }
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100034BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100034BF8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 40);
  if (v9 && (*(v9 + 16))())
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 2;
  }

  else
  {
    +[BMSyncCore resetEagerExitTimer];
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "mergeDeferredAtomBatchesForSessionContext: %@", &v13, 0xCu);
    }

    v11 = [BMStreamCRDTLocation locationFromAtomBatchFileName:v7];
    if (v11)
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) mergeDeferredAtomBatchesForLocation:v11 sessionContext:v8];
      if (*(*(*(a1 + 48) + 8) + 24) != 1)
      {
        *a4 = 1;
      }
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_10004C0E4(v7, v12);
      }
    }
  }
}

void sub_100035708(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleRequestID:*(a1 + 32) request:v9 options:v8 responseHandler:v7];
}

void sub_100037FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100037FE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100038000(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
}

void sub_1000388DC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id sub_100038A58(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"isExecuting"];
  *(*(a1 + 32) + 8) = 0;
  [*(a1 + 32) didChangeValueForKey:@"isExecuting"];
  [*(a1 + 32) willChangeValueForKey:@"isFinished"];
  *(*(a1 + 32) + 9) = 1;
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"isFinished"];
}

void sub_100038F80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003901C;
  v4[3] = &unk_100078CD8;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v1 syncRapportNowIfPolicyAllowsWithReason:v3 activity:v2 completionHandler:v4];
}

BOOL sub_10003902C(_BOOL8 result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = __biome_log_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "syncNowIfPolicyAllowsWithReason: group_notify done", v3, 2u);
    }

    return xpc_activity_set_state(*(v1 + 32), 5);
  }

  return result;
}

void sub_1000395EC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(a1[4] + 40));
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Rapport syncNowWithCompletionHandler %@, errors: %@", &v11, 0x16u);
  }

  [*(a1[4] + 32) clearCachedStatements];
  v8 = a1[5];
  v9 = objc_opt_self();
  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void sub_100039A74(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(a1[4] + 40));
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Rapport syncNowWithDevicesCompletionHandler %@, errors: %@", &v11, 0x16u);
  }

  [*(a1[4] + 32) clearCachedStatements];
  v8 = a1[5];
  v9 = objc_opt_self();
  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void sub_100039CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100039D08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100039D20(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 32) lastCloudKitSyncAttemptDate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_10003A06C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1[4] + 32) open] & 1) == 0)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unable to perform CloudKit sync now, because database is not currently accessible", v9, 2u);
    }

    v4 = [*(a1[4] + 32) state];
    v5 = a1[5];
    if (v5)
    {
      if (v4 == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      v7 = [NSError errorWithDomain:BMSyncErrorDomain code:v6 userInfo:0];
      v10 = v7;
      v8 = [NSArray arrayWithObjects:&v10 count:1];
      (*(v5 + 16))(v5, 0, v8);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003A1CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSDate now];
  [*(*(a1 + 32) + 32) setLastCloudKitSyncAttemptDate:v3];

  objc_autoreleasePoolPop(v2);
}

void sub_10003A238(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(v4 + 16);
    v7 = *(a1 + 64);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003A44C;
    v14[3] = &unk_100079940;
    v14[4] = v4;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    [v6 syncNowWithReason:v7 activity:v5 completionHandler:v14];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"[BMCloudKitSyncEngine start] failed: %@", a3];
    v20 = NSLocalizedDescriptionKey;
    v21 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v10 = [NSError errorWithDomain:@"BMSyncScheduler" code:1 userInfo:v9];

    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      v17 = v10;
      v13 = [NSArray arrayWithObjects:&v17 count:1];
      (*(v12 + 16))(v12, &__NSArray0__struct, v13);
    }
  }
}

void sub_10003A44C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CloudKit syncNowWithCompletionHandler %@, errors: %@", &v11, 0x16u);
  }

  [*(a1[4] + 32) clearCachedStatements];
  v8 = a1[5];
  v9 = objc_opt_self();
  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void sub_10003A55C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) metricsCollector];
  v4 = [v3 sessionContext];
  v5 = [v4 sessionID];
  [v3 recordSessionStart:v5 transport:3 reason:2 isReciprocal:0];

  v6 = [v4 sessionID];
  v7 = [*(*(a1 + 32) + 32) lastCloudKitSyncDate];
  [v3 recordSessionEnd:v6 lastSyncDate:v7];

  [*(*(a1 + 32) + 32) clearCachedStatements];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10003A848(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = PBReaderReadData();
        v24 = *(a1 + 24);
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        *(a1 + 32) |= 1u;
        v28 = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v28;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v30 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v30 & 0x7F) << v14;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_38:
        *(a1 + 16) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *sub_10003AF24()
{
  v0 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, aCreateTableMet, 0x8000100u, kCFAllocatorNull);

  return v0;
}

id sub_10003AF74()
{
  v20[0] = &off_10007F438;
  v19 = [[BMSyncDatabaseCustomFunctionMigration alloc] initWithCustomFunctionName:@"migration_StarSkySchema11ToSydRoSchema12"];
  v21[0] = v19;
  v20[1] = &off_10007F450;
  v18 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F1B0];
  v21[1] = v18;
  v20[2] = &off_10007F468;
  v17 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F1C8];
  v21[2] = v17;
  v20[3] = &off_10007F480;
  v16 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F1E0];
  v21[3] = v16;
  v20[4] = &off_10007F498;
  v15 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F1F8];
  v21[4] = v15;
  v21[5] = &__NSArray0__struct;
  v20[5] = &off_10007F4B0;
  v20[6] = &off_10007F4C8;
  v14 = [[BMSyncDatabaseCustomFunctionMigration alloc] initWithCustomFunctionName:@"migration_Schema20ToSchema21"];
  v21[6] = v14;
  v20[7] = &off_10007F4E0;
  v13 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F210];
  v21[7] = v13;
  v20[8] = &off_10007F4F8;
  v12 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F228];
  v21[8] = v12;
  v20[9] = &off_10007F510;
  v11 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F240];
  v21[9] = v11;
  v20[10] = &off_10007F528;
  v0 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F258];
  v21[10] = v0;
  v20[11] = &off_10007F540;
  v1 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F270];
  v21[11] = v1;
  v20[12] = &off_10007F558;
  v2 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F288];
  v21[12] = v2;
  v20[13] = &off_10007F570;
  v3 = [[BMSyncDatabaseCustomFunctionMigration alloc] initWithCustomFunctionName:@"migration_Schema27ToSchema28"];
  v21[13] = v3;
  v20[14] = &off_10007F588;
  v4 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F2A0];
  v21[14] = v4;
  v20[15] = &off_10007F5A0;
  v5 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F2B8];
  v21[15] = v5;
  v20[16] = &off_10007F5B8;
  v6 = [[BMSyncDatabaseCustomFunctionMigration alloc] initWithCustomFunctionName:@"migration_Schema31ToSchema32"];
  v21[16] = v6;
  v20[17] = &off_10007F5D0;
  v7 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F2D0];
  v21[17] = v7;
  v20[18] = &off_10007F5E8;
  v8 = [[BMSyncDatabaseSQLStatementMigration alloc] initWithSQLStatements:&off_10007F2E8];
  v21[18] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:19];

  return v9;
}

uint64_t sub_10003CE18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void sub_10003D190(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL sub_10003DFE0(uint64_t a1)
{
  should_defer = xpc_activity_should_defer(*(a1 + 32));
  if (should_defer)
  {
    xpc_activity_set_state(*(a1 + 32), 5);
  }

  return !should_defer;
}

void sub_10003EF80(id a1)
{
  qword_10008BD80 = objc_opt_new();

  _objc_release_x1();
}

void sub_100040498(uint64_t a1)
{
  v1 = [*(a1 + 32) FMDBUserVersion];
  v2 = [v1 componentsSeparatedByString:@"."];
  v3 = [v2 count];

  if (v3 > 2)
  {
    v6 = v1;
  }

  else
  {
    do
    {
      v11 = [v1 stringByAppendingString:@".0"];

      v4 = [v11 componentsSeparatedByString:@"."];
      v5 = [v4 count];

      v6 = v11;
      v1 = v11;
    }

    while (v5 < 3);
  }

  v12 = v6;
  v7 = [v6 componentsSeparatedByString:@"."];
  for (i = 0; i != 3; ++i)
  {
    v9 = [v7 objectAtIndexedSubscript:i];
    v10 = [v9 intValue];

    if (v10 >= 16)
    {
      NSLog(@"FMDBVersion is invalid: Please use FMDBUserVersion instead.");
      v10 = 15;
    }

    dword_10008BD98 = v10 | (16 * dword_10008BD98);
  }
}

uint64_t sub_100040960(void *a1, int a2)
{
  v3 = a1;
  +[NSDate timeIntervalSinceReferenceDate];
  if (a2)
  {
    v5 = v4 - v3[3];
    [v3 maxBusyRetryTimeInterval];
    if (v5 >= v6)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v7 = arc4random_uniform(0x32u);
    v8 = v7 + 50;
    v9 = sqlite3_sleep(v7 + 50);
    if (v9 != v8)
    {
      NSLog(@"WARNING: Requested sleep of %i milliseconds, but SQLite returned %i. Maybe SQLite wasn't built with HAVE_USLEEP=1?", v8, v9);
    }
  }

  else
  {
    v3[3] = v4;
  }

  v10 = 1;
LABEL_8:

  return v10;
}

BOOL sub_100040E4C(id a1, _bmFMStatement *a2, BOOL *a3)
{
  result = ![(_bmFMStatement *)a2 inUse];
  *a3 = result;
  return result;
}

void *sub_100042704(void *result, int a2, void *a3, void *a4)
{
  if (result)
  {
    v7 = objc_retainBlock(result);
    v8 = a2;
    v9 = [NSMutableDictionary dictionaryWithCapacity:a2];
    if (a2 >= 1)
    {
      do
      {
        v10 = [NSString stringWithUTF8String:*a4];
        if (*a3)
        {
          [NSString stringWithUTF8String:?];
        }

        else
        {
          +[NSNull null];
        }
        v11 = ;
        if (!v11)
        {
          v11 = +[NSNull null];
        }

        [v9 setObject:v11 forKey:v10];

        ++a3;
        ++a4;
        --v8;
      }

      while (v8);
    }

    v12 = v7[2](v7, v9);

    return v12;
  }

  return result;
}

void sub_100043058(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  v6 = sqlite3_user_data(a1);
  if (v6)
  {
    v8 = v6;
    v7 = objc_autoreleasePoolPush();
    v8[2](v8, a1, a2, a3);
    objc_autoreleasePoolPop(v7);
    v6 = v8;
  }
}

void sub_100043644(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMDatabase.m" lineNumber:411 description:{@"Invalid parameter not satisfying: %@", @"query"}];

  NSLog(@"API misuse, [_bmFMDatabase setCachedStatement:forQuery:] query must not be nil");
}

void sub_1000436C8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMDatabase.m" lineNumber:550 description:{@"The _bmFMDatabase %@ is currently in use.", a2}];

  abort();
}

void sub_100043728(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMDatabase.m" lineNumber:564 description:{@"The _bmFMDatabase %@ is not open.", a2}];

  abort();
}

void sub_100043788(void *a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [a1 lastErrorCode];
  v6 = [a1 lastErrorMessage];
  [v4 handleFailureInMethod:a2 object:a1 file:@"FMDatabase.m" lineNumber:875 description:{@"DB Error: %d %@", v5, v6}];

  abort();
}

void sub_100043810(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMDatabase.m" lineNumber:1256 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

void sub_10004388C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMDatabase.m" lineNumber:1270 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

void sub_100043908(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMDatabase.m" lineNumber:1284 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

void sub_100043984(void *a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [a1 lastErrorMessage];
  [v4 handleFailureInMethod:a2 object:a1 file:@"FMDatabase.m" lineNumber:1351 description:{@"%@", v5}];

  abort();
}

void sub_10004544C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMResultSet.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"![statement inUse]"}];
}

void sub_1000454C8(id *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = [*a1 lastErrorMessage];
  v7 = [*v5 lastErrorCode];
  LODWORD(v5) = [*v5 lastExtendedErrorCode];
  v8 = [*(a2 + 40) query];
  v9 = 138413314;
  v10 = v6;
  v11 = 1024;
  v12 = v7;
  v13 = 1024;
  v14 = v5;
  v15 = 1024;
  v16 = a3;
  v17 = 2112;
  v18 = v8;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "fmdb: error: %@ errCode: %u extendedErrCode: %u while fetching column %u for statement: %@", &v9, 0x28u);
}

id sub_100045AD8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    v2 = [NSException exceptionWithName:@"Database already in pool" reason:@"The _bmFMDatabase being put back into the pool is already present in the pool" userInfo:0];
    [v2 raise];
  }

  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 24);

  return [v4 removeObject:v3];
}

void sub_100045C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100045C5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100045C74(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) lastObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    [*(v5 + 24) addObject:*(v6 + 40)];
    [*(*(a1 + 32) + 16) removeLastObject];
  }

  else
  {
    if (*(v5 + 56))
    {
      v8 = [*(v5 + 24) count];
      v9 = &v8[[*(*(a1 + 32) + 16) count]];
      if (v9 >= *(*(a1 + 32) + 56))
      {
        NSLog(@"Maximum number of databases (%ld) has already been reached!", v9);
        return;
      }
    }

    v10 = [objc_msgSend(objc_opt_class() "databaseClass")];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = [*(*(*(a1 + 40) + 8) + 40) openWithFlags:*(*(a1 + 32) + 32) vfs:*(*(a1 + 32) + 64)];
  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = *(v14 + 48);
    if (objc_opt_respondsToSelector() & 1) == 0 || ([*(*(a1 + 32) + 48) databasePool:*(a1 + 32) shouldAddDatabaseToPool:*(*(*(a1 + 40) + 8) + 40)])
    {
      if (([*(*(a1 + 32) + 24) containsObject:*(*(*(a1 + 40) + 8) + 40)] & 1) == 0)
      {
        [*(*(a1 + 32) + 24) addObject:*(*(*(a1 + 40) + 8) + 40)];
        if (!v7)
        {
          v16 = *(*(a1 + 32) + 48);
          if (objc_opt_respondsToSelector())
          {
            v17 = *(*(a1 + 32) + 48);
            v18 = *(*(*(a1 + 40) + 8) + 40);

            [v17 databasePool:? didAddDatabase:?];
          }
        }
      }

      return;
    }

    [*(*(*(a1 + 40) + 8) + 40) close];
  }

  else
  {
    NSLog(@"Could not open up the database at path %@", *(v14 + 40));
  }

  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}

void sub_100045F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100045F44(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100046020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100046038(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100046114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10004612C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) count];
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = &v2[result];
  return result;
}

id sub_1000461E4(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(*(a1 + 32) + 16);

  return [v2 removeAllObjects];
}

void sub_100046A84(uint64_t a1)
{
  [*(*(a1 + 32) + 16) close];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void sub_100046C88(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  (*(*(a1 + 40) + 16))();
  if ([v2 hasOpenResultSets])
  {
    NSLog(@"Warning: there is at least one open result set around after performing [_bmFMDatabaseQueue inDatabase:]");
  }
}

void sub_100046DA8(uint64_t a1)
{
  v8 = 0;
  v2 = *(a1 + 48);
  if (v2 == 2)
  {
    v3 = [*(a1 + 32) database];
    [v3 beginImmediateTransaction];
  }

  else if (v2 == 1)
  {
    v3 = [*(a1 + 32) database];
    [v3 beginDeferredTransaction];
  }

  else
  {
    if (v2)
    {
      goto LABEL_8;
    }

    v3 = [*(a1 + 32) database];
    [v3 beginTransaction];
  }

LABEL_8:
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) database];
  (*(v4 + 16))(v4, v5, &v8);

  LODWORD(v4) = v8;
  v6 = [*(a1 + 32) database];
  v7 = v6;
  if (v4 == 1)
  {
    [v6 rollback];
  }

  else
  {
    [v6 commit];
  }
}

uint64_t sub_100046FD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100046FEC(uint64_t a1)
{
  v2 = [NSString alloc];
  v3 = qword_10008BDB0++;
  v4 = [v2 initWithFormat:@"savePoint%ld", v3];
  v17 = 0;
  v5 = [*(a1 + 32) database];
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v5 startSavePointWithName:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) database];
    (*(v8 + 16))(v8, v9, &v17);

    if (v17 == 1)
    {
      v10 = [*(a1 + 32) database];
      v11 = *(*(a1 + 48) + 8);
      v15 = *(v11 + 40);
      [v10 rollbackToSavePointWithName:v4 error:&v15];
      objc_storeStrong((v11 + 40), v15);
    }

    v12 = [*(a1 + 32) database];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    [v12 releaseSavePointWithName:v4 error:&v14];
    objc_storeStrong((v13 + 40), v14);
  }
}

void sub_100047268(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  *(*(*(a1 + 48) + 8) + 24) = [v2 checkpoint:*(a1 + 80) name:*(a1 + 40) logFrameCount:*(a1 + 56) checkpointCount:*(a1 + 64) error:*(a1 + 72)];
}

void sub_10004738C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 64);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BMRapportClient[%@]: invalidated", &v3, 0xCu);
}

void sub_100047408(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 64);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "BMRapportClient[%@]: Must be inactive before creating and activating companion link client", &v3, 0xCu);
}

void sub_1000475A4(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 locationRow];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_fault_impl(&_mh_execute_header, a4, OS_LOG_TYPE_FAULT, "location is unexpectedly nil, unable to parse from locationRow %@", a1, 0xCu);
}

void sub_10004768C(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BMStreamCKRecordCRDT: failed to calculate batch size with error %@", buf, 0xCu);
}

void sub_1000476D4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "unexpected modifier %lu", &v2, 0xCu);
}

void sub_10004774C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "BMMultiStreamVectorClockConverter found nil modifier on siteIdentifier: %@", &v2, 0xCu);
}

void sub_1000478D8(id *a1, NSObject *a2)
{
  v3 = [*a1 lastErrorMessage];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to insert: %@", &v4, 0xCu);
}

void sub_100047974()
{
  sub_10000D614();
  v1 = [*v0 siteSuffix];
  sub_10000D5C4();
  sub_10000D5DC(&_mh_execute_header, v2, v3, "BMRapportSyncEngine%@: fetchAtomBatchRequest is nil, skip sending request to device: %@", v4, v5, v6, v7, v8);
}

void sub_100047A04()
{
  sub_10000D614();
  v2 = [v1 siteSuffix];
  v9 = [v0 account];
  sub_10000D5DC(&_mh_execute_header, v3, v4, "BMRapportSyncEngine%@: unable to create a sync manager for account %@", v5, v6, v7, v8, 2u);
}

void sub_100047AB4()
{
  sub_10000D614();
  v1 = [sub_10000D620(v0) siteSuffix];
  sub_10000D5C4();
  sub_10000D5DC(&_mh_execute_header, v2, v3, "BMRapportSyncEngine%@: rejecting request from personal device to sync cross account %@", v4, v5, v6, v7, v8);
}

void sub_100047B40()
{
  sub_10000D614();
  v1 = [*v0 siteSuffix];
  sub_10000D5FC();
  sub_10000D5DC(&_mh_execute_header, v2, v3, "BMRapportSyncEngine%@: unable to create sync manager for %{public}@", v4, v5, v6, v7, v8);
}

void sub_100047BD0()
{
  sub_10000D614();
  v1 = [sub_10000D620(v0) siteSuffix];
  sub_10000D5C4();
  sub_10000D5DC(&_mh_execute_header, v2, v3, "BMRapportSyncEngine%@: rejecting request from communal device to sync outside home %@", v4, v5, v6, v7, v8);
}

void sub_100047C5C()
{
  sub_10000D614();
  v1 = [sub_10000D620(v0) siteSuffix];
  sub_10000D5FC();
  sub_10000D5DC(&_mh_execute_header, v2, v3, "BMRapportSyncEngine%@: unable to determine platform for model %{public}@", v4, v5, v6, v7, v8);
}

void sub_100047CE8()
{
  sub_10000D614();
  v1 = [sub_10000D620(v0) siteSuffix];
  sub_10000D5C4();
  sub_10000D5DC(&_mh_execute_header, v2, v3, "BMRapportSyncEngine%@: unable to determine sender model info: %@", v4, v5, v6, v7, v8);
}

void sub_100047D74()
{
  sub_10000D614();
  v1 = [v0 siteSuffix];
  sub_10000D5C4();
  sub_10000D5DC(&_mh_execute_header, v2, v3, "BMRapportSyncEngine%@: fetchAtomBatchRequest is nil, skip sending request to device: %@", v4, v5, v6, v7, v8);
}

void sub_100047E00()
{
  sub_10000D614();
  v1 = [v0 siteSuffix];
  sub_10000D5FC();
  sub_10000D5DC(&_mh_execute_header, v2, v3, "BMRapportSyncEngine%@: unable to create sync manager for %{public}@", v4, v5, v6, v7, v8);
}

void sub_100047E8C()
{
  sub_10000D614();
  v1 = [v0 siteSuffix];
  sub_10000D5C4();
  sub_10000D5DC(&_mh_execute_header, v2, v3, "BMRapportSyncEngine%@: createDistributedSyncManagerFromOptions unable to determine sender account info: %@", v4, v5, v6, v7, v8);
}

void sub_100047F18(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to access sync resources with error %@", &v2, 0xCu);
}

void sub_100047F90(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BMRapportDiscoveryManager: skipping RPCompanionLinkDevice missing model: %@", &v2, 0xCu);
}

void sub_100048008(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BMRapportDiscoveryManager: skipping RPCompanionLinkDevice missing identifier: %@", &v2, 0xCu);
}

void sub_100048080(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sub_10000D5C4();
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@ - has validStreamNames: %@", v6, 0x16u);
}

void sub_100048124(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sub_10000D5C4();
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@ could not archive state vector: %@", v6, 0x16u);
}

void sub_100048240(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Received unexpected object on com.apple.notifyd.matching: %@", &v2, 0xCu);
}

void sub_1000482B8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Received unexpected object on com.apple.rapport.matching: %@", &v2, 0xCu);
}

void sub_100048418()
{
  sub_100018C54();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"BMStreamCKCRDT.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"streamConfiguration"}];
}

void sub_100048490()
{
  sub_100018C54();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"BMStreamCKCRDT.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"database"}];
}

void sub_10004857C()
{
  sub_100018C0C();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000485B8()
{
  sub_100018C0C();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000485F4()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100048664()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100048748()
{
  sub_100018BD0();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "currentRangeClockVector %@ minusVector clockVector %@", v2, 0x16u);
}

void sub_1000487C4()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100048834()
{
  sub_100018BE4();
  sub_100018C48();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004897C()
{
  sub_10000D614();
  v1 = [v0 referenceAtomBatchFilename];
  sub_100018BD0();
  sub_100018BFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100048A14()
{
  sub_10000D614();
  v1 = [v0 referenceAtomBatchFilename];
  sub_100018BD0();
  sub_100018BFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100048AAC()
{
  sub_100018C0C();
  sub_100018C48();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100048AE8()
{
  sub_100018C0C();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100048B24()
{
  sub_100018BE4();
  sub_100018C48();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100048B94()
{
  sub_100018C0C();
  sub_100018C48();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100048BD0()
{
  sub_10000D614();
  v3 = v2;
  v4 = [v2 timestamp];
  v5 = [v4 bm_description];
  v6 = sub_100025DD8([v3 type]);
  v7 = *v1;
  sub_100018C30();
  v10 = 2048;
  v11 = v8;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Received atom: %@ (%@), index: %lu", v9, 0x20u);
}

void sub_100048CB0()
{
  sub_10000D614();
  v2 = v1;
  v3 = [v1 timestamp];
  v4 = [v3 bm_description];
  v5 = sub_100025DD8([v2 type]);
  v6 = *(*v0 + 16);
  sub_100018C30();
  sub_100018BFC();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x2Au);
}

void sub_100048D90()
{
  sub_100018C0C();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100048DCC()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100048E3C(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 timestamp];
  v7 = [v6 bm_description];
  v8 = sub_100025DD8([a1 type]);
  v9 = [a2 timestamp];
  v10 = [v9 bm_description];
  v11 = [a1 referenceLocation];
  v12 = 138413314;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v10;
  v18 = 2112;
  v19 = a1;
  v20 = 2112;
  v21 = v11;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "causal reference violation: %@ -(%@)-> %@\nAtom: %@\nReference location: %@", &v12, 0x34u);
}

void sub_100048F78()
{
  sub_100018C54();
  v3 = [v2 timestamp];
  v4 = [v3 bm_description];
  v5 = sub_100025DD8([v1 type]);
  sub_100018C18();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Applying atom to disk: %@ (%@)", v6, 0x16u);
}

void sub_10004903C()
{
  sub_100018C54();
  v2 = [v1 timestamp];
  v3 = [v2 bm_description];
  v4 = sub_100025DD8([v0 type]);
  sub_100018C18();
  sub_100018BFC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000490F8()
{
  sub_100018C0C();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100049134()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t sub_10004927C(uint64_t result)
{
  if (result)
  {
    if (*(result + 24))
    {
      return *(result + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000492A8(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 24) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_1000492D0(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 24) = *(result + 24) & 0xFE | a2;
  }

  return result;
}

uint64_t sub_1000492F0(uint64_t result)
{
  if (result)
  {
    return *(result + 24) & 1;
  }

  return result;
}

__CFString *sub_100049308(__CFString *a1, uint64_t a2)
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2 < 5)
  {
    a1 = off_100079198[a2];
    goto LABEL_4;
  }

  a1 = [NSString stringWithFormat:@"(unknown: %i)", a2];

  return a1;
}

uint64_t sub_100049378(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Append"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"TTLDelete"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"RandomDelete"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"Modify"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"Unknown"])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_100049450(_BOOL8 result)
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

void sub_10004946C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 24))
    {
      v3[2] = *(a1 + 8);
      *(v3 + 24) |= 1u;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = v3;
      sub_1000494FC(v3, v4);
      v3 = v5;
    }
  }
}

void sub_1000494FC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

uint64_t sub_100049514(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3[6])
    {
      *(a1 + 8) = v3[2];
      *(a1 + 24) |= 1u;
    }

    v5 = *(a1 + 16);
    v6 = *(v4 + 2);
    if (v5)
    {
      if (v6)
      {
        sub_10004C9EC(v5, v6);
      }
    }

    else if (v6)
    {
      objc_storeStrong((a1 + 16), v6);
    }
  }

  return _objc_release_x2();
}

uint64_t sub_1000495C0(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void sub_1000495D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to activate requests manager %@", &v2, 0xCu);
}

void sub_10004964C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to activate discovery manager %@", &v2, 0xCu);
}

void sub_100049738(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 shortenedRapportIdentifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "BMRapportDevice[%@]: expected request id and response handler in %@", &v6, 0x16u);
}

void sub_100049A5C()
{
  sub_100018C54();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000214D0();
  [v0 handleFailureInMethod:@"location" object:? file:? lineNumber:? description:?];
}

void sub_100049AD0()
{
  sub_100018C54();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000214D0();
  [v0 handleFailureInMethod:@"timestamp" object:? file:? lineNumber:? description:?];
}

void sub_100049B44()
{
  sub_100018C54();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000214D0();
  [v0 handleFailureInMethod:@"location" object:? file:? lineNumber:? description:?];
}

void sub_100049BB8()
{
  sub_100018C54();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000214D0();
  [v0 handleFailureInMethod:@"timestamp" object:? file:? lineNumber:? description:?];
}

void sub_100049C2C()
{
  sub_100018C54();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000214D0();
  [v0 handleFailureInMethod:@"location" object:? file:? lineNumber:? description:?];
}

void sub_100049CA0()
{
  sub_100018C54();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000214D0();
  [v0 handleFailureInMethod:@"timestamp" object:? file:? lineNumber:? description:?];
}

void sub_100049D14(id *a1)
{
  v1 = [*a1 lastErrorMessage];
  sub_100018BE4();
  sub_1000214DC(&_mh_execute_header, v2, v3, "Failed to insert: %@", v4, v5, v6, v7, v8);
}

void sub_100049D9C(id *a1)
{
  v1 = [*a1 lastErrorMessage];
  sub_100018BE4();
  sub_1000214DC(&_mh_execute_header, v2, v3, "Failed to update: %@", v4, v5, v6, v7, v8);
}

void sub_100049E24()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100049F48(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.biomesyncd.deferredMerge";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Task %@ called before core.primaryUserSyncStreamManager was set", &v1, 0xCu);
}

void sub_100049FCC(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.biomesyncd.deferredMerge";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BGSystemTask completed: %@", &v1, 0xCu);
}

void sub_10004A050(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a1 + 24);
  v4 = 134218498;
  v5 = a2;
  v6 = 1024;
  v7 = v3;
  v8 = 2112;
  v9 = @"com.apple.biomesyncd.deferredMerge";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BGSystemTask rescheduled: completionStatus: %lu isCancelled: %d for %@", &v4, 0x1Cu);
}

void sub_10004A0F4(const __CFString *a1, NSObject *a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = 138412546;
  v4 = v2;
  v5 = 2112;
  v6 = @"com.apple.biomesyncd.deferredMerge";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BGSystemTask (submitBackgroundTaskForDeferredMerge) failed to submit task with error: %@ for %@", &v3, 0x16u);
}

void sub_10004A1A4(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_100023A24();
  sub_1000071C8(&_mh_execute_header, v2, v3, "BMRapportManager[%@]: skipping RPCompanionLinkDevice failed validation: %@");
}

void sub_10004A21C(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_100023A24();
  sub_1000071C8(&_mh_execute_header, v2, v3, "BMRapportManager[%@]: skipping RPCompanionLinkDevice missing model: %@");
}

void sub_10004A294(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_100023A24();
  sub_1000071C8(&_mh_execute_header, v2, v3, "BMRapportManager[%@]: skipping RPCompanionLinkDevice missing identifier: %@");
}

void sub_10004A30C()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100018BE4();
  sub_1000214DC(&_mh_execute_header, v2, v3, "%@: tried to initialize with a non-BMPBSyncAtomValue proto", v4, v5, v6, v7, v8);
}

void sub_10004A394()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100018BE4();
  sub_1000214DC(&_mh_execute_header, v2, v3, "%@: tried to initialize a BMPBSyncAtomValue proto, missing type or value", v4, v5, v6, v7, v8);
}

void sub_10004A490()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100018BE4();
  sub_1000214DC(&_mh_execute_header, v2, v3, "%@: tried to initialize with a non-BMPBStoreEventAtomValue proto", v4, v5, v6, v7, v8);
}

void sub_10004A518()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100018BE4();
  sub_1000214DC(&_mh_execute_header, v2, v3, "%@: tried to initialize a BMPBStoreEventAtomValue proto: missing dataVersion or dataTimestamp", v4, v5, v6, v7, v8);
}

void sub_10004A5A0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMSyncDatabase+Creation.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_10004A61C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "failed to open database for account: %@", a1, 0xCu);
}

id sub_10004A694(id result)
{
  if (result)
  {
    v1 = [result syncPolicy];
    v2 = [v1 supportsTransport:3 direction:3];

    return v2;
  }

  return result;
}

void sub_10004A880()
{
  sub_100018C0C();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A8BC()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A92C()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A99C()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004AA0C()
{
  sub_100018C0C();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004AA48()
{
  sub_100018C0C();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004AA84()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004AAF4()
{
  sub_100018C0C();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004AB30()
{
  sub_100018C0C();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004AB6C()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004ABDC()
{
  sub_100018C54();
  v2 = [v1 zoneID];
  v3 = [v2 zoneName];
  v4 = [v0 recordName];
  sub_1000314F4();
  sub_10003152C();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10004AC9C()
{
  sub_100018C54();
  v1 = [v0 recordID];
  v2 = [v1 zoneID];
  v3 = [v2 zoneName];
  sub_1000314F4();
  sub_10003152C();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10004AD60()
{
  sub_100031514();
  sub_100031504();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10004ADD8()
{
  sub_100031514();
  sub_100031504();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004AE48()
{
  sub_100031514();
  sub_100031504();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004AEB8()
{
  sub_100018C54();
  v2 = [v1 recordID];
  v3 = [v2 recordName];
  v4 = [v0 recordType];
  sub_1000314F4();
  sub_10003152C();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10004AF78(uint64_t *a1)
{
  sub_100031548(a1, __stack_chk_guard);
  v2 = *v1;
  sub_1000314DC();
  sub_100031504();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10004AFEC()
{
  sub_100031514();
  sub_100031504();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004B05C(uint64_t *a1)
{
  sub_100031548(a1, __stack_chk_guard);
  v2 = *v1;
  sub_1000314DC();
  sub_100031504();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10004B0D0(uint64_t *a1)
{
  sub_100031548(a1, __stack_chk_guard);
  v2 = *v1;
  sub_1000314DC();
  sub_100031504();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10004B144(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  sub_1000314DC();
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "handleDidSaveRecordSyncRecord: serverValue nil for %{public}@ %{public}@", v4, 0x16u);
}

void sub_10004B1BC()
{
  sub_10000D614();
  v2 = [v1 zoneName];
  v3 = [v0 recordID];
  v4 = [v3 recordName];
  sub_1000314F4();
  sub_10003153C();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x16u);
}

void sub_10004B280(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 recordName];
  sub_100018BE4();
  sub_10003153C();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

void sub_10004B328()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B398(uint64_t *a1)
{
  sub_100031548(a1, __stack_chk_guard);
  v3 = 138543618;
  v4 = 0;
  v5 = 2114;
  v6 = v1;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "handleFailedToSaveSyncRecordServerRecordChanged: serverCRDT is nil for record: %{public}@ for error: %{public}@", &v3, 0x16u);
}

void sub_10004B488()
{
  sub_10000D614();
  v2 = [*v1 zoneName];
  v3 = [v0 recordID];
  v4 = [v3 recordName];
  sub_1000314F4();
  sub_10003152C();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10004B684(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 56);
  v3 = *a2;
  sub_1000314DC();
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "locationID can not be found for recordID %{public}@, stream:%{public}@", v5, 0x16u);
}

void sub_10004B704(uint64_t a1, id *a2)
{
  v2 = [*a2 recordName];
  sub_1000314F4();
  sub_10003152C();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10004B7A8(uint64_t *a1)
{
  sub_100031548(a1, __stack_chk_guard);
  v7 = *(v1 + 40);
  sub_100031504();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004B894()
{
  sub_100018C54();
  *v2 = 138543618;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v4;
  _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "syncEngineDidEndFetchingChanges: Can't build location from record stream:%{public}@ recordName:%{public}@", v5, 0x16u);
}

void sub_10004B900()
{
  sub_10000D614();
  v1 = v0;
  v2 = [*(v0 + 32) recordName];
  v3 = [*(v1 + 32) streamIdentifier];
  sub_1000314F4();
  sub_10003152C();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10004B9C0()
{
  sub_10000D614();
  v1 = v0;
  v2 = [*(v0 + 32) recordName];
  v3 = [*(v1 + 32) streamIdentifier];
  sub_1000314F4();
  sub_10003152C();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10004BA80()
{
  sub_100018BE4();
  sub_100018BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004BCA0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 attributes];
  v6 = [v5 path];
  sub_100018BD0();
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Unable to create write atom batch vectors to file: %@ error: %@", v7, 0x16u);
}

void sub_10004BE2C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 mergeableValueID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_fault_impl(&_mh_execute_header, a4, OS_LOG_TYPE_FAULT, "location is unexpectedly nil, unable to parse from mergeableValueID %@", a1, 0xCu);
}

void sub_10004BF10()
{
  v0 = BMDevicePlatformGetDescription();
  sub_1000214DC(&_mh_execute_header, v1, v2, "BMRapportManager: could not determine appropriate control flags for device platform: %@", v3, v4, v5, v6, 2u);
}

void sub_10004BF9C()
{
  v0 = BMDevicePlatformGetDescription();
  sub_1000214DC(&_mh_execute_header, v1, v2, "BMRapportManager: could not determine appropriate control flags for device platform: %@", v3, v4, v5, v6, 2u);
}

void sub_10004C024(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMDistributedSyncMultiStreamManager.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"direction == BMResourceSyncDirectionOutbound"}];
}

void sub_10004C0E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "location is unexpectedly nil for atomBatchFile: %@", &v2, 0xCu);
}

void sub_10004C15C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 64);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BMRapportClient[%@]: Requests must be added before activation", &v3, 0xCu);
}

void sub_10004C1E4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 64);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "BMRapportClient[%@]: Requests must be registered during activation", &v3, 0xCu);
}

void sub_10004C6A0(void *a1, NSObject *a2)
{
  v3 = [a1 zoneName];
  sub_100018BE4();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to delete all data associated with zone %@", v4, 0xCu);
}

void sub_10004C734(id *a1, NSObject *a2)
{
  v3 = [*a1 lastErrorMessage];
  sub_100018BE4();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to insert: %@", v4, 0xCu);
}

uint64_t sub_10004C834(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 32) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_10004C85C(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 32) = *(result + 32) & 0xFD | v2;
  }

  return result;
}

uint64_t sub_10004C888(uint64_t result)
{
  if (result)
  {
    return (*(result + 32) >> 1) & 1;
  }

  return result;
}

uint64_t sub_10004C8A0(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 32) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_10004C8C8(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 32) = *(result + 32) & 0xFE | a2;
  }

  return result;
}

uint64_t sub_10004C8E8(uint64_t result)
{
  if (result)
  {
    return *(result + 32) & 1;
  }

  return result;
}

BOOL sub_10004C900(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

void sub_10004C91C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 32);
    if ((v4 & 2) != 0)
    {
      v3[4] = *(a1 + 16);
      *(v3 + 32) |= 2u;
      v4 = *(a1 + 32);
    }

    if (v4)
    {
      *(v3 + 1) = *(a1 + 8);
      *(v3 + 32) |= 1u;
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = v3;
      sub_10004C9D4(v3, v5);
      v3 = v6;
    }
  }
}

void sub_10004C9D4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_10004C9EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = v3[32];
    if ((v4 & 2) != 0)
    {
      *(a1 + 16) = *(v3 + 4);
      *(a1 + 32) |= 2u;
      v4 = v3[32];
    }

    if (v4)
    {
      *(a1 + 8) = *(v3 + 1);
      *(a1 + 32) |= 1u;
    }

    v5 = *(v3 + 3);
    if (v5)
    {
      v6 = v3;
      objc_storeStrong((a1 + 24), v5);
      v3 = v6;
    }
  }
}

uint64_t sub_10004CAA4(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

double sub_10004CAB8(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_10004CAD4(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void sub_10004CAE8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMSyncDatabase.m" lineNumber:315 description:{@"Invalid parameter not satisfying: %@", @"path"}];
}

void sub_10004CB64(uint64_t a1)
{
  sub_10003CE18(a1, __stack_chk_guard);
  sub_10003CE04();
  sub_1000388DC(&_mh_execute_header, v1, v2, "BMSyncDatabase%@ database corrupt: %@");
}

void sub_10004CBD0(uint64_t a1)
{
  sub_10003CE18(a1, __stack_chk_guard);
  v3 = 138412290;
  v4 = v1;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "BMSyncDatabase%@ database corrupt", &v3, 0xCu);
}

void sub_10004CC48(uint64_t a1)
{
  sub_10003CE18(a1, __stack_chk_guard);
  sub_10003CE04();
  sub_1000388DC(&_mh_execute_header, v1, v2, "BMSyncDatabase%@ unrecoverable error: %@");
}

void sub_10004CCC4(uint64_t a1)
{
  sub_10003CE18(a1, __stack_chk_guard);
  sub_10003CE04();
  v4 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "BMSyncDatabase%@ error: %@", v3, 0x16u);
}

void sub_10004CD84(uint64_t a1)
{
  sub_10003CE18(a1, __stack_chk_guard);
  v3 = 138412290;
  v4 = v1;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "BMSyncDatabase%@ state queried while opening", &v3, 0xCu);
}

void sub_10004CDFC(uint64_t a1, id *a2, NSObject *a3)
{
  v4 = *(a1 + 40);
  v5 = [*a2 lastError];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "BMSyncDatabase%@ failed to close db %@", &v6, 0x16u);
}

void sub_10004CEE8(uint64_t a1, NSObject *a2)
{
  v3 = 138412290;
  v4 = objc_opt_class();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%@ received nil deviceIdentifier", &v3, 0xCu);
}

void sub_10004CF74(uint64_t a1, NSObject *a2)
{
  v3 = sub_1000066C8(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Merge result: %@", &v4, 0xCu);
}

void sub_10004D23C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to properly parse the atom batch filename: %@", &v2, 0xCu);
}

void sub_10004D2F8(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "unknown mergeable value ID format version %lu", &v2, 0xCu);
}

void sub_10004D370(void *a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 16);
  if (*a1)
  {
    v4 = @"empty";
  }

  else
  {
    v4 = @"nil";
  }

  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = v3;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "_streamName is %@ for %@", &v5, 0x16u);
}