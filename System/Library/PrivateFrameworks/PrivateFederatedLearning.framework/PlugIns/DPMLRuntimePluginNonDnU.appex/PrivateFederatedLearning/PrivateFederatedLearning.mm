id sub_1000019B8(id a1, NSArray *a2, id *a3)
{
  v3 = a2;
  v4 = [(NSArray *)v3 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = 0;
  if (isKindOfClass)
  {
    v7 = [(NSArray *)v3 objectAtIndexedSubscript:0];
    v6 = [FedStatsUtil sha1:v7];
  }

  return v6;
}

id sub_100001A68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([v3 objectAtIndexedSubscript:0], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "rangeOfCharacterFromSet:", *(a1 + 32)), v6, v7 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [v3 objectAtIndexedSubscript:0];
    v9 = [NSNumber numberWithInt:[FedStatsUtil bitStringToInt:v8]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_100003E4C(uint64_t a1)
{
  qword_10003D558 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_100004078(uint64_t a1)
{
  qword_10003D568 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000045C8(id a1)
{
  off_10003D360 = os_log_create("com.apple.FedStats", "Framework");

  _objc_release_x1();
}

id sub_100005208(id a1)
{

  return a1;
}

void sub_10000522C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100006AD0(uint64_t a1)
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (!v2)
  {
    v22 = [_DPMLRuntimeError errorWithCode:300 description:@"Cannot load class bundle"];
    v23 = qword_10003D588;
    qword_10003D588 = v22;

    goto LABEL_30;
  }

  v4 = [v2 URLForResource:@"DPMLRecipeIDAssociations" withExtension:@"plist"];
  if (!v4)
  {
    v24 = [_DPMLRuntimeError errorWithCode:300 description:@"Cannot find associations file from class bundle"];
    v25 = qword_10003D588;
    qword_10003D588 = v24;

    goto LABEL_29;
  }

  v5 = [NSDictionary dictionaryWithContentsOfURL:v4];
  v6 = v5;
  if (!v5)
  {
    v26 = [_DPMLRuntimeError errorWithCode:300 description:@"Cannot load association file from class bundle file"];
    v21 = qword_10003D588;
    qword_10003D588 = v26;
    goto LABEL_25;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = *v41;
  v10 = &sqlite3_close_ptr;
  v35 = v7;
  v32 = a1;
  v33 = *v41;
  while (2)
  {
    v11 = 0;
    v34 = v8;
    do
    {
      if (*v41 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v40 + 1) + 8 * v11);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = [_DPMLRuntimeError errorWithCode:300 description:@"Associations must have strings as keys"];
        v13 = qword_10003D588;
        qword_10003D588 = v29;
LABEL_27:

        goto LABEL_28;
      }

      v13 = [v7 objectForKey:v12];
      v14 = v10[145];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = [_DPMLRuntimeError errorWithCode:300 description:@"Associations must have arrays of strings as values"];
        v31 = qword_10003D588;
        qword_10003D588 = v30;

        goto LABEL_27;
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = v13;
      v15 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = [_DPMLRuntimeError errorWithCode:300 description:@"Associations must have arrays of strings as values"];
              v28 = qword_10003D588;
              qword_10003D588 = v27;

              v7 = v35;
              goto LABEL_27;
            }
          }

          v16 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v11 = v11 + 1;
      v7 = v35;
      v9 = v33;
      v10 = &sqlite3_close_ptr;
    }

    while (v11 != v34);
    v8 = [v35 countByEnumeratingWithState:&v40 objects:v45 count:16];
    a1 = v32;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v20 = [objc_alloc(*(a1 + 32)) initWithAssociation:v7];
  v21 = qword_10003D580;
  qword_10003D580 = v20;
LABEL_25:

LABEL_28:
LABEL_29:

LABEL_30:
}

void sub_1000075DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007604(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000761C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length] >= 2)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void sub_10000A2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A314(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A32C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = (*(a1 + 40) - 1);
  if (v5 == [a3 index])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }
}

void sub_10000C958(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 count];
  if (v5 && v7)
  {
    if (*(a1 + 72) < 1)
    {
      v12 = 1;
    }

    else
    {
      v8 = [SqliteClient alloc];
      v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v10 = [(SqliteClient *)v8 initWithFile:v9 error:*(a1 + 64)];

      v11 = [(SqliteClient *)v10 getTotalCount:*(a1 + 64)];
      if (!v10)
      {
        v17 = +[_PFLLog extension];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10001C8C8();
        }

        v19 = v5;
        goto LABEL_24;
      }

      v12 = v11;
    }

    v13 = *(a1 + 40);
    v36 = kDPMetadataAlgorithmParameters;
    v34 = kDPMetadataAlgoParamDimensionality;
    v14 = [NSNumber numberWithInt:((v12 << *(a1 + 76)) + 1)];
    v35 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v37 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v17 = [v13 updateMetadataWithDPParameters:v16];

    v18 = +[_PFLLog extension];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "metadata %@.", buf, 0xCu);
    }

    v19 = [NSString stringWithFormat:@"%@_%@", v5, @"prefix"];

    v20 = [*(a1 + 48) clientIdentifier];
    v31[0] = v20;
    v31[1] = v19;
    v21 = [*(a1 + 40) experimentIdentifier];
    v31[2] = v21;
    v22 = [*(a1 + 40) deploymentIdentifier];
    v31[3] = v22;
    v23 = [*(a1 + 40) treatmentIdentifier];
    v31[4] = v23;
    v24 = [NSArray arrayWithObjects:v31 count:5];

    v25 = [v24 componentsJoinedByString:@":"];
    v26 = +[_PFLLog extension];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "baseKey %@.", buf, 0xCu);
    }

    v27 = [FedStatsDataEncoder record:v6 metadata:v17 baseKey:v25];
    v28 = +[_PFLLog extension];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_10001C804(v6, v19, v28);
    }

    v29 = +[_PFLLog extension];
    v30 = v29;
    if (v27)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v19;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Record %@ data succeed.", buf, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) += [v6 count];
    }

    else
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10001C88C();
      }
    }

LABEL_24:
    v5 = v19;
  }
}

void sub_10000E0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) huffmanCode:v3 error:0];
  if (!v4)
  {
    v4 = *(a1 + 40);
    v5 = +[_PFLLog extension];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Can not encode the character %@.", &v6, 0xCu);
    }
  }

  [*(*(*(a1 + 48) + 8) + 40) appendString:v4];
}

void sub_10000FE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FE7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000FE94(id a1, BPSCompletion *a2)
{
  v2 = a2;
  v3 = [(BPSCompletion *)v2 state];
  v4 = +[_PFLLog extension];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = [(BPSCompletion *)v2 error];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BiomeKeyboardClient read data error: %@", &v7, 0xCu);
    }
  }

  else if (v5)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BiomeKeyboardClient read data succeed", &v7, 2u);
  }
}

_BYTE *sub_1000107C8(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_1000107D8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_100010838(id a1)
{
  off_10003D4E8 = os_log_create("com.apple.PrivateFederatedLearning", "Framework");

  _objc_release_x1();
}

void sub_1000108C0(id a1)
{
  qword_10003D5A8 = os_log_create("com.apple.PrivateFederatedLearning", "Telemetry");

  _objc_release_x1();
}

void sub_100010948(id a1)
{
  off_10003D4F0 = os_log_create("com.apple.PrivateFederatedLearning", "MLRuntimePlugin");

  _objc_release_x1();
}

void sub_100011EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011EEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v6 = +[_PFLLog extension];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D080();
    }
  }

  else if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100011FD4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100015098(uint64_t a1)
{
  v17 = 0;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 URLForResource:@"DPMLSQLQueryAllowList" withExtension:@"plist"];
    if (v4)
    {
      v5 = [_DPMLSQLQueryValidator parseQueryPermissionList:v4 error:&v17];
      if (v5)
      {
        v6 = [v3 URLForResource:@"DPMLSQLQueryBlockList" withExtension:@"plist"];
        if (v6)
        {
          v7 = [_DPMLSQLQueryValidator parseQueryPermissionList:v6 error:&v17];
          if (v7)
          {
            v8 = [objc_alloc(*(a1 + 32)) initWithAllowList:v5 blockList:v7];
            v9 = qword_10003D5B8;
            qword_10003D5B8 = v8;
          }

          else
          {
            v16 = [_DPMLRuntimeError errorWithCode:300 underlyingError:v17 description:@"Cannot create block-list"];
            v9 = qword_10003D5C0;
            qword_10003D5C0 = v16;
          }
        }

        else
        {
          v15 = [_DPMLRuntimeError errorWithCode:300 description:@"Cannot find block-list from class bundle"];
          v7 = qword_10003D5C0;
          qword_10003D5C0 = v15;
        }
      }

      else
      {
        v14 = [_DPMLRuntimeError errorWithCode:300 underlyingError:v17 description:@"Cannot create allow-list"];
        v6 = qword_10003D5C0;
        qword_10003D5C0 = v14;
      }
    }

    else
    {
      v12 = [_DPMLRuntimeError errorWithCode:300 description:@"Cannot find allow-list from class bundle"];
      v13 = qword_10003D5C0;
      qword_10003D5C0 = v12;
    }
  }

  else
  {
    v10 = [_DPMLRuntimeError errorWithCode:300 description:@"Cannot load class bundle"];
    v11 = qword_10003D5C0;
    qword_10003D5C0 = v10;
  }
}

id sub_1000169BC(void *a1, void *a2)
{
  v18 = a1;
  v3 = a2;
  v17 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        v11 = [v10 objectForKey:@"dataType"];
        if ([FedStatsDataTypeFactory dataTypeFromString:v11]== 3)
        {
          v12 = [v10 objectForKey:@"categoryFile"];
          if (v12)
          {
            if (![FedStatsDataCohort checkCohortField:v12 forNamespaceID:v18])
            {
              v15 = +[_PFLLog extension];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_10001D440();
              }

              v14 = 0;
              v13 = v17;
              goto LABEL_17;
            }

            [v17 setObject:v12 forKey:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = v17;
  v14 = v17;
LABEL_17:

  return v14;
}

uint64_t sub_100016BFC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (([v6 hasSuffix:@"with-private-relay"] & 1) != 0 || objc_msgSend(&off_100034680, "containsObject:", v6))
  {
    v8 = +[_PFLLog extension];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D560();
    }

    if (![v6 hasSuffix:@"with-private-relay"] || (objc_msgSend(v5, "containsString:", @"privacyProxy = 1") & 1) != 0)
    {
      v9 = [v7 objectForKey:kDPMetadataDediscoServerConfiguration];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 objectForKey:kDPMetadataDediscoServerConfigurationHelpers];
        v12 = v11;
        if (v11)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v24;
            while (2)
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v24 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                if ([*(*(&v23 + 1) + 8 * i) containsString:{@"apple", v23}])
                {
                  v20 = +[_PFLLog extension];
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    sub_10001D59C();
                  }

                  v17 = 0;
                  goto LABEL_30;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v17 = 1;
LABEL_30:

          goto LABEL_35;
        }

        v21 = +[_PFLLog extension];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10001D5D0();
        }
      }

      else
      {
        v12 = +[_PFLLog extension];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10001D604();
        }
      }

      v17 = 0;
LABEL_35:

LABEL_42:
      goto LABEL_43;
    }

    v10 = +[_PFLLog extension];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v18 = [v6 hasSuffix:@"without-private-relay"];
  v10 = +[_PFLLog extension];
  v19 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (!v18)
  {
    if (v19)
    {
      sub_10001D4B4();
    }

    v17 = 1;
    goto LABEL_42;
  }

  if (v19)
  {
    sub_10001D4F0();
  }

  if (([v5 containsString:@"privacyProxy = 0"] & 1) == 0)
  {
    v10 = +[_PFLLog extension];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_40:
      sub_10001D52C();
    }

LABEL_41:
    v17 = 0;
    goto LABEL_42;
  }

  v17 = 1;
LABEL_43:

  return v17;
}

void sub_1000192D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100019308(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_10001A390(uint64_t a1)
{
  v2 = +[_PFLLog extension];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001DA64(a1);
  }
}

void sub_10001A3F4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[_PFLLog extension];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001DAEC(a1);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10001A5DC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[_PFLLog extension];
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001DC0C(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001DC88(a1);
  }
}

void sub_10001B3F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[_PFLLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001DD28(a1, v6, v7);
    }
  }

  else
  {
    v8 = [v5 containingBundle];
    v7 = [v8 bundleIdentifier];

    if (v7)
    {
      v9 = [NSArray arrayWithObject:v5];
      v10 = INSupportedMediaCategories();
      v11 = [v5 objectForInfoDictionaryKey:INExtensionAttributesSupportedIntentsKey ofClass:objc_opt_class() inScope:0];
      if ([*(a1 + 40) _isSupportedIntentMediaApp:v7 :v10 :v11])
      {
        v12 = [InstalledApp alloc];
        v13 = [v10 allObjects];
        v14 = [(InstalledApp *)v12 initWithBundleIdentifier:v7 supportedMediaCategories:v13 supportedIntents:v11 appName:0];

        v15 = [*(*(a1 + 40) + 24) objectForKeyedSubscript:@"media"];
        [v15 addObject:v14];

        v16 = +[_PFLLog framework];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v5 bundleIdentifier];
          v18 = 138412802;
          v19 = v17;
          v20 = 2112;
          v21 = v11;
          v22 = 2112;
          v23 = v10;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "pluginkit record: %@ has supported intent %@ and supported media categories: %@", &v18, 0x20u);
        }
      }
    }

    else
    {
      v9 = +[_PFLLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001DDDC(v5, v9);
      }
    }
  }
}

BOOL sub_10001B884(id a1, InstalledApp *a2, BOOL *a3)
{
  v3 = [(InstalledApp *)a2 bundleIdentifier];
  v4 = [&off_100034698 containsObject:v3];

  return v4 ^ 1;
}

BOOL sub_10001B8CC(id a1, InstalledApp *a2, BOOL *a3)
{
  v3 = [(InstalledApp *)a2 supportedIntents];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 containsObject:v5];

  return v6;
}

BOOL sub_10001B934(id a1, InstalledApp *a2, BOOL *a3)
{
  v3 = [(InstalledApp *)a2 supportedMediaCategories];
  v4 = [v3 containsObject:@"INMediaCategoryVideo"];

  return v4 ^ 1;
}

void sub_10001BEB4(uint64_t a1)
{
  memset(&v6, 0, 512);
  uname(&v6);
  v2 = objc_alloc(*(a1 + 32));
  v3 = [NSString stringWithCString:v6.machine encoding:4];
  v4 = [v2 initWithDeviceType:v3];
  v5 = qword_10003D5E0;
  qword_10003D5E0 = v4;
}

void sub_10001C4A8(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Query execution failed, %@", &v4, 0xCu);
}

void sub_10001C554(void *a1)
{
  v1 = [a1 firstObject];
  v2 = objc_opt_class();
  v3 = sub_100005208(v2);
  sub_10000522C(&_mh_execute_header, v4, v5, "Recording data of type: %@ for key: %@", v6, v7, v8, v9, v10);
}

void sub_10001C5F0(void *a1)
{
  v1 = [a1 firstObject];
  v2 = objc_opt_class();
  v3 = sub_100005208(v2);
  sub_10000522C(&_mh_execute_header, v4, v5, "Recording data of type array, with first object class: %@ for key: %@", v6, v7, v8, v9, v10);
}

void sub_10001C68C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 firstObject];
  v7 = 138412546;
  v8 = objc_opt_class();
  v9 = 2112;
  v10 = a2;
  v6 = v8;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Recording data of type: %@ for key: %@", &v7, 0x16u);
}

void sub_10001C74C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to recordfor key: %@", &v2, 0xCu);
}

void sub_10001C804(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Record data %@ for %@.", &v3, 0x16u);
}

void sub_10001C88C()
{
  sub_10000E5B4();
  sub_10000E5A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001C9B0()
{
  sub_10000E5B4();
  sub_10000E5A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001C9EC()
{
  sub_10000E5B4();
  sub_10000E5A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001CB70(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create SqliteClient for database %@.", &v2, 0xCu);
}

void sub_10001CD1C()
{
  sub_100011FFC();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001CDCC()
{
  sub_10000E5B4();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001CE08()
{
  sub_10000E5B4();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001CEAC()
{
  sub_10000E5B4();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001CEE8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "End task with record events count: %@ error: %@", &v6, 0x16u);
}

void sub_10001D080()
{
  sub_100011FFC();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001D0F0()
{
  sub_10000E5B4();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001D12C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Bitacora donation error: %@", &v2, 0xCu);
}

void sub_10001D1A4(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 debugDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Cannot process data point: '%@', skipping", a1, 0xCu);
}

void sub_10001D21C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Non-dictionary or nil in the input, skipping...", buf, 2u);
}

void sub_10001D25C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Cannot process data point, skipping...", buf, 2u);
}

void sub_10001D29C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord with baseKey = %@", &v2, 0xCu);
}

void sub_10001D358(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord failed to record bit vectors for key '%@'", &v2, 0xCu);
}

void sub_10001D3D0()
{
  sub_100011FFC();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001D4B4()
{
  sub_10000E5B4();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001D4F0()
{
  sub_10000E5B4();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001D560()
{
  sub_10000E5B4();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001D638()
{
  sub_100011FFC();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001D6A8()
{
  sub_10000E5B4();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001D6E4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "No cohorts were required.", buf, 2u);
}

void sub_10001D724(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1000192F4(a1 a2)];
  v5 = [v4 componentsJoinedByString:{@"', '"}];
  *v3 = 138412290;
  *v2 = v5;
  sub_100019308(&_mh_execute_header, v6, v7, "factor fields in data = ['%@']");
}

void sub_10001D7A0()
{
  sub_10000E5B4();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001D7DC()
{
  sub_100011FFC();
  sub_100011FF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001D84C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1000192F4(a1 a2)];
  *v3 = 134217984;
  *v2 = v4;
  sub_100019308(&_mh_execute_header, v5, v6, "Recorded %lu data");
}

void sub_10001D89C(char a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "recordStatus %d for key: %@", v3, 0x12u);
}

void sub_10001D928(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10001AB1C();
  sub_10001AB30();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_10001D9EC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ does not exist, metadata is not changed, will use Dedisco V1.", &v2, 0xCu);
}

void sub_10001DA64(uint64_t a1)
{
  v5 = *(a1 + 32);
  sub_10001AB30();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
}

void sub_10001DAEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10001AB1C();
  sub_10001AB30();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_10001DB68(uint64_t a1, void *a2)
{
  v8 = [a2 namespaceIdentifier];
  sub_10000522C(&_mh_execute_header, v2, v3, "Removing factor %@ for namespace %@", v4, v5, v6, v7, 2u);
}

void sub_10001DC0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10001AB1C();
  sub_10001AB30();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_10001DC88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = [*(a1 + 40) namespaceIdentifier];
  sub_10000522C(&_mh_execute_header, v2, v3, "Removing factor %@ for namespace %@ succeed.", v4, v5, v6, v7, 2u);
}

void sub_10001DD28(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error enumerating plugins; matching query: %@, error: %@", &v6, 0x16u);
}

void sub_10001DDDC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error enumerating plugins; missing containing bundle of plugin: %@", &v2, 0xCu);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}