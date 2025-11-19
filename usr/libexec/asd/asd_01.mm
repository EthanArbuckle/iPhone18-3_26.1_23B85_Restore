void sub_10003E9D0(uint64_t a1)
{
  v2 = [NSEntityDescription entityForName:@"DB_C56902430" inManagedObjectContext:*(a1 + 32)];
  if (v2)
  {
    v3 = [[ASCacheEntry alloc] initWithEntity:v2 insertIntoManagedObjectContext:*(a1 + 32)];
    v4 = +[NSDate date];
    [(ASCacheEntry *)v3 setPresentTime:v4];

    [(ASCacheEntry *)v3 setDf_ttl:*(a1 + 64)];
    v5 = [*(a1 + 40) base64EncodedStringWithOptions:2];
    [(ASCacheEntry *)v3 setDfVal:v5];

    [(ASCacheEntry *)v3 setProfID:*(a1 + 72)];
    -[ASCacheEntry setQueryKey:](v3, "setQueryKey:", [*(a1 + 48) JmiV9VW8P3Gxz1H7]);
    v6 = [(ASCacheEntry *)v3 nC4QvxwoXaT2I88i];
    [(ASCacheEntry *)v3 setMacVal:v6];

    [*(a1 + 56) cZK3HwMuoGcCgDQI];
  }

  else if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_1005950B0();
  }
}

void sub_10003EC8C(uint64_t a1)
{
  v2 = [NSEntityDescription entityForName:@"DB_R101288420" inManagedObjectContext:*(a1 + 32)];
  if (v2)
  {
    v3 = [[ASClass101288420 alloc] initWithEntity:v2 insertIntoManagedObjectContext:*(a1 + 32)];
    [(ASClass101288420 *)v3 setVersion:2];
    v4 = +[NSDate date];
    [(ASClass101288420 *)v3 setPresentTime:v4];

    [(ASClass101288420 *)v3 setDfMaxAge:*(a1 + 64)];
    v5 = [*(a1 + 40) base64EncodedStringWithOptions:2];
    [(ASClass101288420 *)v3 setDfVal:v5];

    [(ASClass101288420 *)v3 setProfID:*(a1 + 72)];
    -[ASClass101288420 setQueryKey:](v3, "setQueryKey:", [*(a1 + 48) JmiV9VW8P3Gxz1H7]);
    v6 = [(ASClass101288420 *)v3 nC4QvxwoXaT2I88i];
    [(ASClass101288420 *)v3 setMacVal:v6];

    [*(a1 + 56) cZK3HwMuoGcCgDQI];
  }

  else if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_1005950EC();
  }
}

void sub_10003EEE8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v25 = v18;
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    v21 = [[NSString alloc] initWithFormat:@"Error cleaning up device data fields cache: %@"];
    *(v19 - 72) = NSLocalizedDescriptionKey;
    *(v19 - 64) = v21;
    v22 = [NSDictionary dictionaryWithObjects:v19 - 64 forKeys:v19 - 72 count:1];
    v23 = [NSString stringWithUTF8String:off_1006C9430];
    v24 = [v22 copy];
    *v25 = [NSError errorWithDomain:v23 code:-27109 userInfo:v24];

    JUMPOUT(0x10003EE9CLL);
  }

  _Block_object_dispose(&a18, 8);
  _Unwind_Resume(exc_buf);
}

void sub_10003F014(uint64_t a1)
{
  v2 = [*(a1 + 32) YKIcrg8ijyspX6ho:0 entityName:@"DB_R103115069"];
  v3 = [v2 finalResult];
  v4 = v3;
  if (v3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(a1 + 32) + 16) deleteObject:{*(*(&v9 + 1) + 8 * v8), v9}];
          ++*(*(*(a1 + 40) + 8) + 24);
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [*(a1 + 32) cZK3HwMuoGcCgDQI];
  }
}

void sub_10003F5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a35, 8);

  _Block_object_dispose((v44 - 208), 8);
  _Block_object_dispose((v44 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_10003F718(uint64_t a1)
{
  v12 = [*(a1 + 32) YKIcrg8ijyspX6ho:0 forVersion:1];
  v11 = [v12 finalResult];
  if (v11)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = [[NSMutableArray alloc] initWithArray:v11];
    v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v2)
    {
      v3 = *v15;
      do
      {
        for (i = 0; i != v2; i = i + 1)
        {
          if (*v15 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v14 + 1) + 8 * i);
          v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 queryKey]);
          v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
          if (v7)
          {
            v8 = [v5 presentTime];
            v9 = [v7 presentTime];
            v10 = [v8 compare:v9] == 1;
          }

          else
          {
            v10 = 0;
          }

          if ((*(a1 + 56) & 1) != 0 || v10 | (([v5 PJ7tY2vmxQ3CBhNO] & 1) == 0))
          {
            [*(*(a1 + 32) + 16) deleteObject:v5];
            ++*(*(*(a1 + 48) + 8) + 24);
          }

          else
          {
            [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
          }
        }

        v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v2);
    }

    [*(a1 + 32) cZK3HwMuoGcCgDQI];
  }
}

void sub_10003F9D4(uint64_t a1)
{
  v2 = [NSDate alloc];
  v3 = +[_TtC3asd23ASDConfigurationManager shared];
  [v3 cacheV2MaxAge];
  v5 = [v2 initWithTimeIntervalSinceNow:-v4];

  v6 = [NSFetchRequest fetchRequestWithEntityName:@"DB_R101288420"];
  if ((*(a1 + 56) & 1) == 0)
  {
    v7 = [NSPredicate predicateWithFormat:@"presentTime < %@", v5];
    [v6 setPredicate:v7];
  }

  v8 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v6];
  [v8 setResultType:2];
  v9 = *(*(a1 + 32) + 16);
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = [v9 executeRequest:v8 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40) || ([v11 result], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_self(), v13 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v13, v12, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100595128();
    }
  }

  else
  {
    v15 = [v11 result];
    *(*(*(a1 + 48) + 8) + 24) += [v15 integerValue];
  }
}

void sub_10003FC18(void *a1)
{
  v22 = [NSFetchRequest fetchRequestWithEntityName:@"DB_R101288420"];
  [v22 setPropertiesToFetch:&off_1006BAC28];
  [v22 setPropertiesToGroupBy:&off_1006BAC40];
  [v22 setResultType:2];
  v2 = *(a1[4] + 16);
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  v23 = [v2 executeFetchRequest:v22 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v4 = v23;
  if (*(*(a1[5] + 8) + 40))
  {
    v5 = 1;
  }

  else
  {
    v5 = v23 == 0;
  }

  if (!v5)
  {
    v6 = [NSFetchRequest fetchRequestWithEntityName:@"DB_R101288420"];
    v7 = [NSSortDescriptor sortDescriptorWithKey:@"presentTime" ascending:0];
    v34 = v7;
    v8 = [NSArray arrayWithObjects:&v34 count:1];
    [v6 setSortDescriptors:v8];

    [v6 setFetchOffset:1];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v23;
    v9 = [v24 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = *v29;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v24);
          }

          v12 = [*(*(&v28 + 1) + 8 * v11) objectForKeyedSubscript:@"queryKey"];
          v13 = [NSPredicate predicateWithFormat:@"queryKey == %@", v12];
          [v6 setPredicate:v13];

          v14 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v6];
          [v14 setResultType:2];
          v15 = *(a1[4] + 16);
          v16 = *(a1[5] + 8);
          v27 = *(v16 + 40);
          v17 = [v15 executeRequest:v14 error:&v27];
          objc_storeStrong((v16 + 40), v27);
          if (*(*(a1[5] + 8) + 40) || ([v17 result], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_self(), v19 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v19, v18, (isKindOfClass & 1) == 0))
          {
            if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
            {
              sub_100595164(&v25, v26);
            }
          }

          else
          {
            v21 = [v17 result];
            *(*(a1[6] + 8) + 24) += [v21 integerValue];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v24 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    v4 = v23;
  }
}

void sub_1000402B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000402EC(uint64_t a1)
{
  v2 = [*(a1 + 32) bag];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100040710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

id sub_100040784(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return [*(a1 + 32) cZK3HwMuoGcCgDQI];
}

void sub_100040B0C(uint64_t a1)
{
  v2 = [NSEntityDescription entityForName:@"DB_GeoCodeCache" inManagedObjectContext:*(a1 + 32)];
  for (i = 0; [*(a1 + 40) count] > i; ++i)
  {
    v4 = [[ASGeoCodeCacheEntry alloc] initWithEntity:v2 insertIntoManagedObjectContext:*(a1 + 32)];
    v5 = [*(a1 + 48) objectAtIndexedSubscript:i];
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_6;
    }

    v8 = objc_opt_self();
    v9 = objc_opt_isKindOfClass();

    if (v9)
    {

      v5 = 0;
LABEL_6:
      [(ASGeoCodeCacheEntry *)v4 setLocation:v5];
      v10 = [*(a1 + 40) objectAtIndexedSubscript:i];
      [(ASGeoCodeCacheEntry *)v4 setAddress:v10];

      v11 = *(a1 + 56);
      v12 = [*(a1 + 40) objectAtIndexedSubscript:i];
      v13 = [v11 canonicalStringForAddress:v12];
      [(ASGeoCodeCacheEntry *)v4 setAddressForLookup:v13];

      [(ASGeoCodeCacheEntry *)v4 setUpdatedAt:*(a1 + 64)];
      [(ASGeoCodeCacheEntry *)v4 setLastAccessed:*(a1 + 64)];
      goto LABEL_7;
    }

    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100595290(&v36, v37);
    }

LABEL_7:
  }

  [*(a1 + 56) cZK3HwMuoGcCgDQI];
  v14 = +[ASGeoCodeCacheEntry fetchRequest];
  v15 = *(a1 + 32);
  v35 = 0;
  v16 = [v15 countForFetchRequest:v14 error:&v35];
  v17 = v35;
  if (v17)
  {
    v18 = v17;
    v19 = qword_1006DF770;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v18 localizedDescription];
      sub_1005951E8(v20, v40);
    }

    goto LABEL_26;
  }

  if (v16 >= 0x3D)
  {
    [v14 setFetchLimit:v16 - 50];
    v21 = [[NSSortDescriptor alloc] initWithKey:@"lastAccessed" ascending:1];
    v39 = v21;
    v22 = [NSArray arrayWithObjects:&v39 count:1];
    [v14 setSortDescriptors:v22];

    [v14 setReturnsObjectsAsFaults:1];
    v23 = *(a1 + 32);
    v34 = 0;
    v19 = [v23 executeFetchRequest:v14 error:&v34];
    v18 = v34;
    if (v18)
    {
      v24 = qword_1006DF770;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v18 localizedDescription];
        sub_10059523C(v25, v40);
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v26 = v19;
      v27 = [v26 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v27)
      {
        v28 = *v31;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v31 != v28)
            {
              objc_enumerationMutation(v26);
            }

            [*(a1 + 32) deleteObject:{*(*(&v30 + 1) + 8 * j), v30}];
          }

          v27 = [v26 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v27);
      }

      [*(a1 + 56) cZK3HwMuoGcCgDQI];
      v19 = v26;
    }

LABEL_26:
  }
}

void sub_100041234(uint64_t a1)
{
  v2 = +[ASGeoCodeCacheEntry fetchRequest];
  [v2 setFetchLimit:1];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  v4 = 0;
  if (v3)
  {
    v22 = *v26;
    do
    {
      v23 = v3;
      v5 = 0;
      v6 = v4;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * v5);
        v8 = [*(a1 + 40) canonicalStringForAddress:v7];
        v9 = [NSPredicate predicateWithFormat:@"addressForLookup == %@", v8];
        [v2 setPredicate:v9];

        v10 = *(a1 + 48);
        v24 = v6;
        v11 = [v10 executeFetchRequest:v2 error:&v24];
        v4 = v24;

        v12 = [v11 firstObject];

        if (v12)
        {
          v13 = objc_opt_self();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v12 updatedAt];
            v15 = v14 == 0;

            if (!v15)
            {
              v16 = *(a1 + 56);
              v17 = objc_alloc(*(a1 + 72));
              v18 = [v12 location];
              v19 = [v12 updatedAt];
              v20 = [v17 initWithAddress:v7 location:v18 updated:v19];
              [v16 addObject:v20];

              [v12 setLastAccessed:*(a1 + 64)];
            }
          }

          else
          {
          }
        }

        v5 = v5 + 1;
        v6 = v4;
      }

      while (v23 != v5);
      v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v3);
  }
}

void sub_100041648(uint64_t a1)
{
  v16 = +[ASBindingKeyVal fetchRequest];
  v2 = *(*(a1 + 32) + 16);
  v21 = 0;
  v3 = [v2 executeFetchRequest:v16 error:&v21];
  v15 = v21;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 val];

        if (v9)
        {
          v10 = [BindingRecord alloc];
          v11 = [v8 key];
          v12 = [v8 updated];
          v13 = [v8 val];
          v14 = [(BindingRecord *)v10 initWithKey:v11 updatedDate:v12 value:v13];

          [*(a1 + 40) addObject:v14];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }
}

void sub_100041AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

id sub_100041B18(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return [*(a1 + 32) cZK3HwMuoGcCgDQI];
}

void sub_100041C58(uint64_t a1)
{
  v2 = [NSEntityDescription entityForName:@"DB_R100605578" inManagedObjectContext:*(*(a1 + 32) + 16)];
  if (v2)
  {
    if (*(a1 + 48) == 1)
    {
      v3 = +[ASBindingKeyVal fetchRequest];
      v4 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v3];
      [v4 setResultType:1];
      v5 = *(*(a1 + 32) + 16);
      v23 = 0;
      v6 = [v5 executeRequest:v4 error:&v23];
      v7 = v23;
      if (v7)
      {
        v8 = qword_1006DF770;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [v7 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          [v7 userInfo];
          objc_claimAutoreleasedReturnValue();
          sub_100595308();
        }
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [ASBindingKeyVal alloc];
          v15 = [(ASBindingKeyVal *)v14 initWithEntity:v2 insertIntoManagedObjectContext:*(*(a1 + 32) + 16), v19];
          v16 = [v13 key];
          [(ASBindingKeyVal *)v15 setKey:v16];

          v17 = [v13 value];
          [(ASBindingKeyVal *)v15 setVal:v17];

          v18 = [v13 updated];
          [(ASBindingKeyVal *)v15 setUpdated:v18];
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    [*(a1 + 32) cZK3HwMuoGcCgDQI];
  }

  else if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100595350();
  }
}

void sub_1000420B4(uint64_t a1)
{
  v6 = [NSPredicate predicateWithFormat:@"workflowID == %@", *(a1 + 32)];
  v2 = [*(a1 + 40) YKIcrg8ijyspX6ho:? entityName:?];
  v3 = [v2 finalResult];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
  }

  else
  {
    v4 = [DB_R103115069 insertNewObjectInManagedObjectContext:*(a1 + 56)];
    [v4 setWorkflowID:*(a1 + 32)];
  }

  [v4 setFields:*(a1 + 48)];
  v5 = +[NSDate now];
  [v4 setUpdatedAt:v5];

  [*(a1 + 40) cZK3HwMuoGcCgDQI];
}

void sub_1000423C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100042400(void *a1)
{
  v2 = +[DB_R103115069 fetchRequest];
  [v2 setFetchLimit:1];
  [v2 setResultType:0];
  v3 = [NSPredicate predicateWithFormat:@"workflowID = %@", a1[4]];
  [v2 setPredicate:v3];
  v4 = *(a1[5] + 16);
  v12 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v12];
  v6 = v12;
  v7 = v12;
  if (v7)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v6);
  }

  if ([v5 count] == 1)
  {
    v8 = [v5 firstObject];
    v9 = [v8 fields];
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_10004268C(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v11 = 0;
  v5 = [v4 ab491f0831ce63bb:v2 error:&v11];
  v6 = v11;
  if (v6)
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_1005953D0(v3);
    }
  }

  else
  {
    if (v5)
    {
      v7 = qword_1006DF770;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
      {
        v8 = *v3;
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Updating existing bag with id: %@", buf, 0xCu);
      }

      [v5 setBag:*(a1 + 48)];
      v9 = +[NSDate now];
      [v5 setUpdated:v9];
    }

    else
    {
      v9 = [DB_R115061196 insertNewObjectInManagedObjectContext:*(a1 + 56)];
      [v9 setId:*v3];
      [v9 setBag:*(a1 + 48)];
      v10 = +[NSDate now];
      [v9 setUpdated:v10];
    }

    [*(a1 + 32) cZK3HwMuoGcCgDQI];
  }
}

void sub_100042C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100042CC0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v15 = 0;
  v4 = [v2 ab491f0831ce63bb:v3 error:&v15];
  v5 = v15;
  v6 = v15;
  if (v6)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v5);
  }

  v7 = [v4 id];

  if (v7)
  {
    v8 = [JSONBagRecord alloc];
    v9 = [v4 id];
    v10 = [v4 bag];
    v11 = [v4 updated];
    v12 = [(JSONBagRecord *)v8 initWithBagID:v9 bag:v10 updatedAt:v11];
    v13 = *(a1[7] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_100043010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v33 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_10004308C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(a1[6] + 8) + 40);
  if (v8)
  {
    v9 = [v8 finalResult];
    v10 = [v9 firstObject];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 ravioli];
        v12 = *(a1[8] + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;
      }

      else if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        sub_100595518();
      }
    }

    else if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100595554();
    }
  }

  else
  {
    v10 = qword_1006DF770;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1[7] + 8) + 40) localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [*(*(a1[7] + 8) + 40) userInfo];
      objc_claimAutoreleasedReturnValue();
      sub_100595590();
    }
  }
}

uint64_t sub_100043304(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_100043330(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

uint64_t sub_100043D28()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100043D68()
{
  sub_100043D28();

  return _swift_deallocClassInstance(v0, 72, 7);
}

void sub_100043E3C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17[0] = v8;
      *v7 = 136315138;
      v9 = sub_1000447E4(v4);

      if (!v9)
      {
LABEL_14:
        __break(1u);
        return;
      }

      Dictionary.description.getter();

      v10 = sub_100052F7C();

      *(v7 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received push with payload: %s", v7, 0xCu);
      sub_100044850(v8);
    }

    else
    {
    }

    sub_1000446C4(v3 + OBJC_IVAR____TtCC3asd18PushServiceManager12PushDelegate_pushDispatchManager, v17);
    v13 = sub_100044728(v17, v17[3]);
    v14 = v4;
    if (sub_10004476C(v14))
    {
      v15 = *v13;
      sub_10009A078();

      sub_100044850(v17);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v11, "Push received with no message", v12, 2u);
  }
}

id sub_100044164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushServiceManager.PushDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id variable initialization expression of ASBiometricKitHelper.manager()
{
  v0 = [objc_opt_self() manager];

  return v0;
}

unint64_t sub_1000442B4()
{
  result = qword_1006CB560;
  if (!qword_1006CB560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CB560);
  }

  return result;
}

id variable initialization expression of ASMotionHelper.queue()
{
  v0 = objc_allocWithZone(NSOperationQueue);

  return [v0 init];
}

id variable initialization expression of S1ji7lMPfNbOh31Q.lock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

uint64_t variable initialization expression of PrecomputationManager.analyticsManager@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ASAnalyticsManager();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1006935C8;
  *a1 = result;
  return result;
}

uint64_t sub_1000443DC(uint64_t *a1)
{
  result = *a1;
  if (result < 0)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100044420()
{
  result = qword_1006C9878;
  if (!qword_1006C9878)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9878);
  }

  return result;
}

uint64_t sub_10004447C()
{
  type metadata accessor for UUID();
  sub_1000443DC(&qword_1006C9870);
  sub_100044420();

  return Dictionary.init(dictionaryLiteral:)();
}

id variable initialization expression of ASDConfigurationManager.notificationCenter()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

uint64_t type metadata accessor for PushServiceManager.PushDelegate()
{
  result = qword_1006C99D8;
  if (!qword_1006C99D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000445D8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for PDSPushEnvironment()
{
  if (!qword_1006C9AB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1006C9AB0);
    }
  }
}

uint64_t sub_1000446C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100044728(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10004476C(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000447E4(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100044850(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10004489C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000448B0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000448B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100044944()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006C9BE0);
  v1 = sub_100047504();
  sub_100046E6C(v1, v2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000449C4()
{
  v0 = sub_1000443DC(&qword_1006C9C48);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  sub_100046E08(v4, qword_1006DF790);
  v5 = sub_100047510();
  v7 = sub_100046E6C(v5, v6);
  URL.init(string:)();
  result = sub_100046EA4(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v7, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100044B1C()
{
  result = sub_100044B48(32123, 0xE200000000000000);
  qword_1006DF7A8 = result;
  unk_1006DF7B0 = v1;
  return result;
}

uint64_t sub_100044B48(uint64_t a1, unint64_t a2)
{
  *&v44 = a1;
  *(&v44 + 1) = a2;

  sub_1000443DC(&qword_1006C9C38);
  if (swift_dynamicCast())
  {
    sub_100046D90(v42, &v45);
    sub_100044728(&v45, v46);
    sub_1000473D8();
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v42[0] = v44;
    sub_100044850(&v45);
    goto LABEL_56;
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_100045460(v42);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v42[0] = a1;
    *(&v42[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v42;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1000465C0(v4, v5, &v45);
  v6 = *(&v45 + 1);
  v7 = v45;
  if (*(&v45 + 1) >> 60 != 15)
  {
    v42[0] = v45;
    goto LABEL_56;
  }

LABEL_9:
  *&v42[0] = Data._Representation.init(count:)();
  *(&v42[0] + 1) = v8;
  __chkstk_darwin(*&v42[0]);
  v9 = sub_1000466DC(sub_100046D1C);
  v11 = *(&v42[0] + 1) >> 62;
  v12 = v9;
  v14 = v13;
  v16 = v15;
  v17 = BYTE14(v42[0]);
  switch(*(&v42[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v18) = DWORD1(v42[0]) - LODWORD(v42[0]);
      if (__OFSUB__(DWORD1(v42[0]), v42[0]))
      {
        goto LABEL_63;
      }

      v18 = v18;
LABEL_19:
      if (v10 == v18)
      {
        goto LABEL_20;
      }

      if (v11 == 2)
      {
        v17 = *(*&v42[0] + 24);
      }

      else if (v11 == 1)
      {
        v17 = *&v42[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v20 = *(*&v42[0] + 16);
      v19 = *(*&v42[0] + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v10)
      {
        v17 = 0;
LABEL_53:
        if (v17 < v10)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v41 = v7;
      LOBYTE(v22) = 0;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v23 = v9 & 0xFFFFFFFFFFFFLL;
      }

      v24 = (v9 >> 59) & 1;
      if ((v14 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      v25 = 4 << v24;
      *(&v44 + 7) = 0;
      *&v44 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v18 = BYTE14(v42[0]);
      goto LABEL_19;
  }

  while (4 * v23 != v16 >> 14)
  {
    v26 = v16;
    if ((v16 & 0xC) == v25)
    {
      v30 = sub_1000474D0();
      v26 = sub_100046C88(v30, v31, v32);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v23)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v29 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      *&v45 = v12;
      *(&v45 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(&v45 + v27);
    }

    else
    {
      v28 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
    }

    if ((v16 & 0xC) == v25)
    {
      v33 = sub_1000474D0();
      v16 = sub_100046C88(v33, v34, v35);
      if ((v14 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v23 <= v16 >> 16)
    {
      goto LABEL_59;
    }

    sub_1000474D0();
    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v44 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_58;
    }

    if (v22 == 14)
    {
      sub_100047530();
      Data._Representation.append(contentsOf:)();
      LOBYTE(v22) = 0;
    }
  }

  if (!v22)
  {

    sub_10004489C(v41, v6);
    goto LABEL_56;
  }

  sub_100047530();
  Data._Representation.append(contentsOf:)();
  sub_10004489C(v41, v6);
LABEL_55:

LABEL_56:
  v36 = sub_100047510();
  sub_100046D38(v36, v37);

  v38 = sub_100047510();
  sub_1000448B0(v38, v39);
  return sub_100047510();
}

uint64_t sub_100044FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000443DC(&qword_1006C9C68);
  v14[3] = v8;
  v14[4] = sub_100047240();
  v9 = swift_allocObject();
  v14[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = sub_100044728(v14, v8);
  v12 = *v10;
  v13 = v10[1];
  sub_1000472E0(&qword_1006C9C78, &qword_1006C9C80);
  sub_1000473D8();
  Slice<>.withUnsafeBytes<A>(_:)();
  sub_100044850(v14);
  return sub_100047504();
}

uint64_t sub_1000450F0(uint64_t a1)
{
  v6 = sub_1000443DC(&qword_1006C9C50);
  v7 = sub_1000472E0(&qword_1006C9C58, &qword_1006C9C50);
  v5[0] = a1;
  v2 = sub_100044728(v5, v6);
  sub_100046AB0(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v4);
  sub_100044850(v5);
  return sub_100047504();
}

uint64_t sub_1000451D0@<X0>(void *a1@<X8>)
{
  if (qword_1006C9750 != -1)
  {
    swift_once();
  }

  v2 = qword_1006DF7A8;
  v3 = unk_1006DF7B0;
  *a1 = qword_1006DF7A8;
  a1[1] = v3;

  return sub_100046D38(v2, v3);
}

void sub_1000452C8(uint64_t a1@<X8>)
{
  strcpy(a1, "REASON_retry");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_10004530C()
{
  v0 = type metadata accessor for Date();
  sub_100046E08(v0, qword_1006DF7C0);
  v1 = sub_100047504();
  sub_100046E6C(v1, v2);
  return static Date.distantPast.getter();
}

uint64_t sub_1000453A4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = sub_100046E6C(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100045460(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006C9C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000454C0()
{
  type metadata accessor for Date();
  sub_1000471EC();
  result = Dictionary.init(dictionaryLiteral:)();
  qword_1006DF7D8 = result;
  return result;
}

uint64_t sub_100045510@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006ED34();
  *a1 = result;
  return result;
}

void sub_1000455B0(void *a1)
{
  if (!sub_100087AF0(a1) || ((sub_10004F534(), v1 >= 0.0) ? (v2 = v1 < 1000.0) : (v2 = 0), !v2))
  {
    sub_10009CD54(0.0, 1000.0);

    sub_100050820();
  }
}

void sub_100045690(unsigned __int8 *a1)
{
  v3 = type metadata accessor for PushPayload();
  v4 = sub_1000474C0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100047544();
  v49 = v9;
  sub_1000474F8();
  __chkstk_darwin(v10);
  v50 = &v47 - v11;
  sub_1000474F8();
  __chkstk_darwin(v12);
  v48 = &v47 - v13;
  sub_1000474F8();
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v47 = objc_opt_self();
  v17 = [v47 standardUserDefaults];
  v18 = sub_1000513BC();

  v57 = v18;
  v54 = a1;
  v56 = a1;
  v19 = sub_1000464D4(sub_100047120, v55, v18, type metadata accessor for PushPayload);
  v52 = v6;
  if ((v20 & 1) == 0)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      JUMPOUT(0x100045BFCLL);
    }

    v53 = v19;
    v51 = 0x80000001005A3250;
    while (1)
    {
      v23 = *(v18 + 16);
      if (v22 == v23)
      {
        break;
      }

      if (v22 >= v23)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v25 = v18 + v24;
      v26 = *(v6 + 72);
      v27 = v26 * v22;
      sub_100046ECC(v18 + v24 + v26 * v22, v16);
      v28 = *v54;
      v29 = 0xE200000000000000;
      v30 = 25202;
      switch(*v16)
      {
        case 1:
          v30 = sub_1000473C0() | 0x6464416800000000;
          v29 = 0xEF67614273736572;
          break;
        case 2:
          v30 = sub_1000473F0();
          v31 = 7562600;
          goto LABEL_12;
        case 3:
          v30 = sub_1000473C0() | 0x6E6F436800000000;
          v31 = 6777190;
LABEL_12:
          v29 = v31 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 4:
          v30 = sub_1000473C0() | 0x6F72506800000000;
          v29 = 0xED000073656C6966;
          break;
        case 5:
          v30 = sub_1000473C0() | 0x7265536800000000;
          v29 = 0xEE00676142726576;
          break;
        case 6:
          v30 = 0xD000000000000019;
          v29 = v51;
          break;
        default:
          break;
      }

      v1 = 0xE200000000000000;
      v32 = 25202;
      switch(v28)
      {
        case 1:
          sub_1000473CC();
          v32 = v33 | 0x6464416800000000;
          v1 = 0xEF67614273736572;
          break;
        case 2:
          sub_100047404();
          v35 = 7562600;
          goto LABEL_20;
        case 3:
          sub_1000473CC();
          v32 = v36 | 0x6E6F436800000000;
          v35 = 6777190;
LABEL_20:
          v1 = v35 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 4:
          sub_1000473CC();
          v32 = v34 | 0x6F72506800000000;
          v1 = 0xED000073656C6966;
          break;
        case 5:
          sub_1000473CC();
          v32 = v37 | 0x7265536800000000;
          v1 = 0xEE00676142726576;
          break;
        case 6:
          v32 = 0xD000000000000019;
          v1 = v51;
          break;
        default:
          break;
      }

      if (v30 == v32 && v29 == v1)
      {

        sub_100046F30(v16);
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100046F30(v16);
        if ((v6 & 1) == 0)
        {
          v39 = v53;
          if (v22 != v53)
          {
            if ((v53 & 0x8000000000000000) != 0)
            {
              goto LABEL_46;
            }

            v6 = *(v18 + 16);
            if (v53 >= v6)
            {
              goto LABEL_47;
            }

            v40 = v26 * v53;
            sub_100046ECC(v25 + v40, v50);
            if (v22 >= v6)
            {
              goto LABEL_48;
            }

            sub_100046ECC(v25 + v27, v49);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000637F0(v18);
              v18 = v41;
            }

            v6 = v18 + v24;
            sub_100046F8C(v49, v18 + v24 + v40);
            if (v22 >= *(v18 + 16))
            {
              goto LABEL_49;
            }

            sub_100046F8C(v50, v6 + v27);
            v57 = v18;
            v39 = v53;
          }

          v53 = v39 + 1;
        }

        v6 = v52;
      }

      ++v22;
    }

    v21 = v53;
    if (v22 >= v53)
    {
      goto LABEL_41;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v21 = *(v18 + 16);
  v22 = v21;
LABEL_41:
  sub_100046FF0(v21, v22);
  v1 = v48;
  sub_100046ECC(v54, v48);
  v6 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_51:
    v44 = *(v6 + 16);
    sub_100062574();
    v6 = v45;
  }

  v42 = *(v6 + 16);
  if (v42 >= *(v6 + 24) >> 1)
  {
    sub_100062574();
    v6 = v46;
  }

  *(v6 + 16) = v42 + 1;
  sub_100047140(v1, v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42);
  v43 = [v47 standardUserDefaults];
  sub_100050BD8();
}

uint64_t sub_100045C34(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 25202;
  switch(v2)
  {
    case 1:
      v4 = 0x6464416863746566;
      v3 = 0xEF67614273736572;
      break;
    case 2:
      v4 = 0x6361437261656C63;
      v5 = 7562600;
      goto LABEL_6;
    case 3:
      v4 = 0x6E6F436863746566;
      v5 = 6777190;
LABEL_6:
      v3 = v5 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      v4 = 0x6F72506863746566;
      v3 = 0xED000073656C6966;
      break;
    case 5:
      v4 = 0x7265536863746566;
      v3 = 0xEE00676142726576;
      break;
    case 6:
      v4 = 0xD000000000000019;
      v3 = 0x80000001005A3250;
      break;
    default:
      break;
  }

  v6 = 0xE200000000000000;
  v7 = 25202;
  switch(*a2)
  {
    case 1:
      v7 = 0x6464416863746566;
      v6 = 0xEF67614273736572;
      break;
    case 2:
      v7 = 0x6361437261656C63;
      v8 = 7562600;
      goto LABEL_14;
    case 3:
      v7 = 0x6E6F436863746566;
      v8 = 6777190;
LABEL_14:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      v7 = 0x6F72506863746566;
      v6 = 0xED000073656C6966;
      break;
    case 5:
      v7 = 0x7265536863746566;
      v6 = 0xEE00676142726576;
      break;
    case 6:
      v7 = 0xD000000000000019;
      v6 = 0x80000001005A3250;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

void sub_100045EA8(uint64_t a1)
{
  v2 = type metadata accessor for PushPayload();
  v3 = sub_1000474C0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100047544();
  v48 = v8;
  sub_1000474F8();
  __chkstk_darwin(v9);
  v49 = &v46 - v10;
  sub_1000474F8();
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v47 = objc_opt_self();
  v14 = [v47 standardUserDefaults];
  v15 = sub_1000513BC();

  v16 = 0;
  v53 = v15;
  v17 = *(v15 + 16);
  v50 = 0x80000001005A3250;
  v51 = a1;
  while (1)
  {
    if (v17 == v16)
    {
      v16 = *(v15 + 16);
      v29 = v16;
      goto LABEL_64;
    }

    v52 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = *(v5 + 72);
    v19 = 0xE200000000000000;
    v20 = 25202;
    switch(*(v15 + v52 + v18 * v16))
    {
      case 1:
        v21 = sub_1000473C0();
        v20 = sub_10004746C(v21);
        break;
      case 2:
        v20 = sub_1000473F0();
        v19 = 7562600;
        goto LABEL_8;
      case 3:
        v23 = sub_1000473C0();
        v20 = sub_10004751C(v23);
LABEL_8:
        v19 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 4:
        v22 = sub_1000473C0();
        v20 = sub_100047434(v22);
        break;
      case 5:
        v24 = sub_1000473C0();
        v20 = sub_100047418(v24);
        break;
      case 6:
        v20 = 0xD000000000000019;
        v19 = v50;
        break;
      default:
        break;
    }

    v25 = 0xE200000000000000;
    v26 = 25202;
    switch(a1)
    {
      case 1:
        sub_1000473CC();
        sub_1000474A4();
        break;
      case 2:
        sub_100047404();
        v25 = 7562600;
        goto LABEL_16;
      case 3:
        sub_1000473CC();
        sub_100047558();
LABEL_16:
        v25 = v25 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 4:
        sub_1000473CC();
        sub_100047488();
        break;
      case 5:
        sub_1000473CC();
        sub_100047450();
        break;
      case 6:
        v26 = 0xD000000000000019;
        v25 = v50;
        break;
      default:
        break;
    }

    if (v20 == v26 && v19 == v25)
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_27;
    }

    ++v16;
  }

LABEL_27:
  v29 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    goto LABEL_71;
  }

  for (i = v52 + v18 * (v16 + 1); ; i += v18)
  {
    v31 = *(v15 + 16);
    if (v29 == v31)
    {
      break;
    }

    if (v29 >= v31)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      JUMPOUT(0x1000463E0);
    }

    v32 = v15 + v52;
    sub_100046ECC(v15 + i, v13);
    v33 = 0xE200000000000000;
    v34 = 25202;
    switch(*v13)
    {
      case 1:
        v35 = sub_1000473C0();
        v34 = sub_10004746C(v35);
        break;
      case 2:
        v34 = sub_1000473F0();
        v33 = 7562600;
        goto LABEL_36;
      case 3:
        v37 = sub_1000473C0();
        v34 = sub_10004751C(v37);
LABEL_36:
        v33 = v33 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 4:
        v36 = sub_1000473C0();
        v34 = sub_100047434(v36);
        break;
      case 5:
        v38 = sub_1000473C0();
        v34 = sub_100047418(v38);
        break;
      case 6:
        v34 = 0xD000000000000019;
        v33 = v50;
        break;
      default:
        break;
    }

    v39 = 0xE200000000000000;
    v40 = 25202;
    switch(v51)
    {
      case 1:
        sub_1000473CC();
        sub_1000474A4();
        break;
      case 2:
        sub_100047404();
        v39 = 7562600;
        goto LABEL_44;
      case 3:
        sub_1000473CC();
        sub_100047558();
LABEL_44:
        v39 = v39 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 4:
        sub_1000473CC();
        sub_100047488();
        break;
      case 5:
        sub_1000473CC();
        sub_100047450();
        break;
      case 6:
        v40 = 0xD000000000000019;
        v39 = v50;
        break;
      default:
        break;
    }

    if (v34 == v40 && v33 == v39)
    {

      sub_100046F30(v13);
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100046F30(v13);
      if ((v42 & 1) == 0)
      {
        if (v29 != v16)
        {
          if (v16 < 0)
          {
            goto LABEL_66;
          }

          v43 = *(v15 + 16);
          if (v16 >= v43)
          {
            goto LABEL_67;
          }

          sub_100046ECC(v32 + v16 * v18, v49);
          if (v29 >= v43)
          {
            goto LABEL_68;
          }

          sub_100046ECC(v15 + i, v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000637F0(v15);
            v15 = v44;
          }

          sub_100046F8C(v48, v15 + v52 + v16 * v18);
          if (v29 >= *(v15 + 16))
          {
            goto LABEL_69;
          }

          sub_100046F8C(v49, v15 + i);
          v53 = v15;
        }

        ++v16;
      }
    }

    ++v29;
  }

  if (v29 < v16)
  {
    goto LABEL_70;
  }

LABEL_64:
  sub_100046FF0(v16, v29);
  v45 = [v47 standardUserDefaults];
  sub_100047504();
  sub_100050BD8();
}

uint64_t sub_100046450@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  *a3 = *a2;
}

uint64_t sub_1000464D4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return 0;
    }

    v10 = a4(0);
    sub_1000474C0(v10);
    result = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v12 + 72) * v8);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v8;
  }

  return v8;
}

uint64_t sub_1000465C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_100046688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_100046B70(sub_100046DE8, v5, a1, a2);
}

uint64_t sub_1000466DC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1000448B0(v6, v5);
      *v4 = xmmword_1005CA3F0;
      sub_1000448B0(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_100046BD4(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1000448B0(v6, v5);
      v19 = v6;
      v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1005CA3F0;
      sub_1000448B0(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v6 = v19;
      v9 = sub_100046BD4(*(v19 + 16), *(v19 + 24), a1);
      if (v2)
      {
        v10 = v20 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v20 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v21, 0, 15);
      a1(&v19, v21, v21);
      if (!v2)
      {
        return v19;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_1000448B0(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        v3 = v19;
      }

      v8 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v4 = v21[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_100046AB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_100046B28(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100046B70(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_100046BD4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100046C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_1000474E0(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_1000474E0(v3);
    return v4 | 8;
  }
}

void *sub_100046CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_100046688(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_100046D38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100046D90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100046DA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_100046B28(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t *sub_100046E08(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100046E6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100046ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushPayload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046F30(uint64_t a1)
{
  v2 = type metadata accessor for PushPayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushPayload();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046FF0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000CF19C(result, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for PushPayload() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_1000634FC(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100047140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushPayload();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000471A4(uint64_t *a1)
{
  result = *a1;
  if (result < 0)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000471EC()
{
  result = qword_1006C9C60;
  if (!qword_1006C9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9C60);
  }

  return result;
}

unint64_t sub_100047240()
{
  result = qword_1006C9C70;
  if (!qword_1006C9C70)
  {
    sub_1000471A4(&qword_1006C9C68);
    sub_1000472E0(&qword_1006C9C78, &qword_1006C9C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9C70);
  }

  return result;
}

uint64_t sub_1000472E0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t PKPass.SourceMode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000475A0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PKPass.SourceMode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000475E0()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006C9DD0);
  sub_100046E6C(v0, qword_1006C9DD0);
  return Logger.init(subsystem:category:)();
}

uint64_t ASBackgroundActivityManager.registerActivity(identifier:activity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1006C9778 != -1)
  {
    sub_10004886C();
  }

  v8 = type metadata accessor for Logger();
  sub_100046E6C(v8, qword_1006C9DD0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136446210;
    sub_1000488FC();
    *(v11 + 4) = sub_100052F7C();
    _os_log_impl(&_mh_execute_header, v9, v10, "Registering background activity: %{public}s.", v11, 0xCu);
    sub_100044850(v12);
    sub_1000488AC();
    sub_1000488AC();
  }

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v17[4] = sub_100047EB8;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10004788C;
  v17[3] = &unk_1006918D0;
  v14 = _Block_copy(v17);

  sub_1000488FC();
  v15 = String.utf8CString.getter();
  xpc_activity_register((v15 + 32), XPC_ACTIVITY_CHECK_IN, v14);

  _Block_release(v14);
}

uint64_t sub_10004788C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall ASBackgroundActivityManager.unregisterActivity(identifier:)(Swift::String identifier)
{
  if (qword_1006C9778 != -1)
  {
    sub_10004886C();
  }

  v1 = type metadata accessor for Logger();
  sub_100046E6C(v1, qword_1006C9DD0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v4 = 136446210;
    sub_1000488FC();
    *(v4 + 4) = sub_100052F7C();
    _os_log_impl(&_mh_execute_header, v2, v3, "Unregistering background activity: %{public}s.", v4, 0xCu);
    sub_100044850(v6);
    sub_1000488AC();
    sub_1000488AC();
  }

  sub_1000488FC();
  v5 = String.utf8CString.getter();
  xpc_activity_unregister((v5 + 32));
}

void sub_100047A38(_xpc_activity_s *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v10 = sub_1000443DC(&qword_1006C9E20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  state = xpc_activity_get_state(a1);
  if (state == 3)
  {
    if (qword_1006C9778 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100046E6C(v28, qword_1006C9DD0);
    v32 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v32, v29, "Background activity is being deferred.", v30, 2u);
    }

    v31 = v32;
  }

  else if (state == 2)
  {
    if (qword_1006C9778 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100046E6C(v15, qword_1006C9DD0);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = a4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_100052F7C();
      _os_log_impl(&_mh_execute_header, v16, v17, "Running background activity: %{public}s.", v19, 0xCu);
      sub_100044850(v20);

      a4 = v32;
    }

    xpc_activity_set_state(a1, 4);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_100052F7C();
      _os_log_impl(&_mh_execute_header, v21, v22, "Background activity %{public}s is continuing.", v23, 0xCu);
      sub_100044850(v24);
    }

    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    v26 = type metadata accessor for TaskPriority();
    sub_1000485F8(v13, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = a4;
    v27[5] = a5;
    v27[6] = sub_1000485D8;
    v27[7] = v25;
    v27[8] = a1;
    v27[9] = a2;
    v27[10] = a3;
    swift_unknownObjectRetain_n();

    sub_10006F27C(0, 0, v13, &unk_1005CA910, v27);
  }
}

uint64_t sub_100047E78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100047EC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100047EDC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = v16;
  v8[5] = v17;
  v8[3] = a8;
  v14 = (a4 + *a4);
  v11 = a4[1];
  v12 = swift_task_alloc();
  v8[6] = v12;
  *v12 = v8;
  v12[1] = sub_100047FF0;

  return v14(a6, a7);
}

uint64_t sub_100047FF0(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1000480F0, 0, 0);
}

uint64_t sub_1000480F0()
{
  v2 = *(v0 + 56);
  if (v2 == 1)
  {
    xpc_activity_set_state(*(v0 + 24), 5);
    if (qword_1006C9778 != -1)
    {
      sub_10004886C();
    }

    v11 = *(v0 + 40);
    v12 = type metadata accessor for Logger();
    sub_100046E6C(v12, qword_1006C9DD0);

    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v5, v13))
    {
      goto LABEL_12;
    }

    sub_1000488C4();
    v7 = sub_1000488E0();
    *(v1 + 4) = sub_10004888C(4.8751e-34);
    v10 = "Background activity %{public}s finished running.";
    goto LABEL_11;
  }

  if (!v2)
  {
    xpc_activity_set_state(*(v0 + 24), 3);
    if (qword_1006C9778 != -1)
    {
      sub_10004886C();
    }

    v3 = *(v0 + 40);
    v4 = type metadata accessor for Logger();
    sub_100046E6C(v4, qword_1006C9DD0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    sub_1000488C4();
    v7 = sub_1000488E0();
    *(v1 + 4) = sub_10004888C(4.8751e-34);
    v10 = "Background activity %{public}s was deferred";
LABEL_11:
    sub_100048908(&_mh_execute_header, v8, v9, v10);
    sub_100044850(v7);
    sub_1000488AC();
    sub_1000488AC();
LABEL_12:

    if (qword_1006C9778 != -1)
    {
      sub_10004886C();
    }

    v14 = *(v0 + 40);
    v15 = type metadata accessor for Logger();
    sub_100046E6C(v15, qword_1006C9DD0);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      sub_1000488C4();
      v22 = sub_1000488E0();
      *(v1 + 4) = sub_10004888C(4.8751e-34);
      sub_100048908(&_mh_execute_header, v18, v19, "Background activity %{public}s is exiting.");
      sub_100044850(v22);
      sub_1000488AC();
      sub_1000488AC();
    }

    v20 = *(v0 + 8);

    return v20();
  }

  *(v0 + 16) = v2;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

id ASScreenContinuityServicesHelper.ScreenMirroringStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASBackgroundActivityManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id ASScreenContinuityServicesHelper.ScreenMirroringStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000484B0()
{
  result = qword_1006C9DE8;
  if (!qword_1006C9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9DE8);
  }

  return result;
}

unint64_t sub_100048508()
{
  result = qword_1006C9DF0;
  if (!qword_1006C9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9DF0);
  }

  return result;
}

uint64_t sub_1000485A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048620()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];
  swift_unknownObjectRelease();
  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100048678(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10004876C;

  return sub_100047EDC(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_10004876C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10004886C()
{

  return swift_once();
}

uint64_t sub_10004888C(float a1)
{
  *v1 = a1;

  return sub_100052F7C();
}

uint64_t sub_1000488AC()
{
}

uint64_t sub_1000488C4()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  return swift_slowAlloc();
}

uint64_t sub_1000488E0()
{

  return swift_slowAlloc();
}

void sub_100048908(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

__n128 sub_100048928(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004893C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004897C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ASFinanceStoreHelper.AugmentedTransaction.Location(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000489D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100048A14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100048A5C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return sub_10004ED38(v2);
}

uint64_t sub_100048A84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100048AC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100048B28()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006C9E90);
  sub_100046E6C(v0, qword_1006C9E90);
  return Logger.init(subsystem:category:)();
}

id *sub_100048BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  for (i = _swiftEmptyArrayStorage; v1; --v1)
  {
    memcpy(__dst, v2, sizeof(__dst));
    memcpy(__src, v2, sizeof(__src));
    sub_10004D280(__dst, v10);
    sub_100048D54(__src, v11);
    memcpy(v10, __src, sizeof(v10));
    sub_10004D2B8(v10);
    if (v11[1])
    {
      memcpy(v9, v11, 0x68uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10004ECEC();
        sub_1000625BC();
        i = v5;
      }

      v4 = i[2];
      if (v4 >= i[3] >> 1)
      {
        sub_1000625BC();
        i = v6;
      }

      memcpy(v8, v9, sizeof(v8));
      i[2] = (v4 + 1);
      memcpy(&i[13 * v4 + 4], v8, 0x68uLL);
    }

    else
    {
      memcpy(v9, v11, 0x68uLL);
      sub_10004D2E8(v9, &qword_1006C9F68);
    }

    v2 += 112;
  }

  return i;
}

void sub_100048D54(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 48);
  v11 = *(a1 + 9);
  v32[0] = *(a1 + 7);
  v32[1] = v11;
  v33 = *(a1 + 11);
  v34 = a1[13];
  if (v4 && (v6 & 1) == 0)
  {
    v26 = v8;
    v27 = v5;
    v28 = v3;
    if (*&v32[0] == 1 || (v16 = v34) == 0)
    {

      v16 = 0xE100000000000000;
      v18 = 1;
      v17 = 67;
    }

    else
    {
      v17 = *(&v33 + 1);
      v18 = v34 == 0xE100000000000000;

      if (*(&v33 + 1) == 65 && v34 == 0xE100000000000000)
      {
        goto LABEL_18;
      }
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v17 == 67 && v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v20 = 4;
      }

      else if (v17 == 17217 && v16 == 0xE200000000000000)
      {

        v20 = 5;
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v25)
        {
          v20 = 5;
        }

        else
        {
          v20 = 4;
        }
      }

      goto LABEL_22;
    }

LABEL_18:

    v20 = 1;
LABEL_22:
    v35 = v10;
    sub_10004D344(v32, v29, &qword_1006C9F60);
    sub_10004BF2C(v32, v21, v29);
    *&v31[23] = v29[1];
    *&v31[7] = v29[0];
    v22 = *&v31[16];
    *(a2 + 57) = *v31;
    *&v31[39] = v30;
    v23 = v35;
    *a2 = v28;
    *(a2 + 8) = v4;
    *(a2 + 16) = v27;
    *(a2 + 24) = v7 & 1;
    *(a2 + 32) = v20;
    *(a2 + 40) = v26;
    *(a2 + 48) = v9;
    *(a2 + 56) = v23;
    *(a2 + 73) = v22;
    *(a2 + 88) = *&v31[31];
    return;
  }

  if (qword_1006C9780 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100046E6C(v12, qword_1006C9E90);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in config - Workflow missing workflowId or frequency", v15, 2u);
  }

  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

void sub_10004904C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 - 80;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = (v3 + 112 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      sub_100049178(v4);
      return;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = v5;
    v8 = v5[15];
    ++v1;
    v5 += 14;
    if (v8 && (v7[20] & 1) == 0)
    {
      v9 = *v5;
      v10 = v5[4];

      v11.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10004ECEC();
        sub_100062690();
        v4 = v14;
      }

      v12 = v4[2];
      if (v12 >= v4[3] >> 1)
      {
        sub_100062690();
        v4 = v15;
      }

      v4[2] = (v12 + 1);
      v13 = &v4[3 * v12];
      v13[4].super.super.isa = v9;
      v13[5].super.super.isa = v8;
      v13[6].super.super.isa = v11.super.super.isa;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void *sub_100049178(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000443DC(&qword_1006C9F48);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_10004D0B0(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void *sub_100049208(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (2)
  {
    while (2)
    {
      if (v6)
      {
        goto LABEL_9;
      }

      do
      {
LABEL_5:
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (v9 >= v7)
        {

          return _swiftEmptyDictionarySingleton;
        }

        v6 = *(v3 + 8 * v9);
        ++v8;
      }

      while (!v6);
      v8 = v9;
LABEL_9:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v8 << 6);
        v12 = *(a2 + 56) + 32 * v11;
        if ((*(v12 + 8) & 1) == 0)
        {
          break;
        }

        if (qword_1006C9780 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_100046E6C(v13, qword_1006C9E90);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "Error in config - Permitted binding confing missing ttl", v16, 2u);
        }

        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v17 = (*(a2 + 48) + 16 * v11);
      v19 = *v17;
      v18 = v17[1];
      v20 = *v12;
      LODWORD(v17) = *(v12 + 24);
      v21 = *(v12 + 16);
      if (v17)
      {
        v21 = 1;
      }

      v42 = v21;
      v43 = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v19;
      v41 = v18;
      v23 = sub_1000BFB60(v19, v18);
      v25 = _swiftEmptyDictionarySingleton[2];
      v26 = (v24 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_28;
      }

      v28 = v23;
      v29 = v24;
      sub_1000443DC(&qword_1006C9F40);
      if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27))
      {
        v30 = v41;
        if ((v29 & 1) == 0)
        {
          break;
        }

        goto LABEL_25;
      }

      v30 = v41;
      v31 = sub_1000BFB60(v40, v41);
      if ((v29 & 1) != (v32 & 1))
      {
        goto LABEL_30;
      }

      v28 = v31;
      if (v29)
      {
LABEL_25:

        v38 = (_swiftEmptyDictionarySingleton[7] + 16 * v28);
        *v38 = v43;
        v38[1] = v42;
        continue;
      }

      break;
    }

    _swiftEmptyDictionarySingleton[(v28 >> 6) + 8] |= 1 << v28;
    v33 = (_swiftEmptyDictionarySingleton[6] + 16 * v28);
    *v33 = v40;
    v33[1] = v30;
    v34 = (_swiftEmptyDictionarySingleton[7] + 16 * v28);
    *v34 = v43;
    v34[1] = v42;
    v35 = _swiftEmptyDictionarySingleton[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      _swiftEmptyDictionarySingleton[2] = v37;
      continue;
    }

    break;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100049504(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100691240, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100049550(char a1)
{
  result = 0x776F6C666B726F77;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x636E657571657266;
      break;
    case 3:
      result = 0x53676E69646E6962;
      break;
    case 4:
      result = 0x69646E6F63657270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100049648@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100049504(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100049678@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100049550(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000496AC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100049504(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000496E0(uint64_t a1)
{
  v2 = sub_10004D9B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004971C(uint64_t a1)
{
  v2 = sub_10004D9B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_100049758(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a1 + 25);
  v10 = *(a2 + 25);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v10 == 2 || ((v10 ^ v9) & 1) != 0)
    {
      return v11;
    }
  }

  if (a1[6])
  {
    if (!*(a2 + 48))
    {
      return 0;
    }

    goto LABEL_30;
  }

  v11 = 0;
  if ((*(a2 + 48) & 1) == 0 && a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40))
  {
LABEL_30:
    v25 = *(a1 + 7);
    v13 = *(a1 + 11);
    v26 = *(a1 + 9);
    v27 = v13;
    v14 = a1[13];
    v28 = v14;
    v15 = *(a2 + 72);
    v22[0] = *(a2 + 56);
    v22[1] = v15;
    v23 = *(a2 + 88);
    v16 = *(a2 + 104);
    v24 = v16;
    v17 = *&v22[0];
    if (v25 == 1)
    {
      if (*&v22[0] == 1)
      {
        sub_10004D344(&v25, v31, &qword_1006C9F60);
        sub_10004D344(v22, v31, &qword_1006C9F60);
        v11 = 1;
        v18 = 1;
LABEL_38:
        sub_10004DC58(v18);
        return v11;
      }
    }

    else if (*&v22[0] != 1)
    {
      v31[0] = v22[0];
      v31[1] = v15;
      v31[2] = v23;
      v32 = v16;
      v29[0] = v25;
      v29[1] = v26;
      v29[2] = v27;
      v30 = v14;
      v11 = sub_10004B12C(v29, v31);
      sub_10004D344(&v25, v21, &qword_1006C9F60);
      sub_10004D344(v22, v21, &qword_1006C9F60);
      sub_10004DC58(v17);
      v18 = sub_10004ED60();
      goto LABEL_38;
    }

    sub_10004D344(&v25, v31, &qword_1006C9F60);
    sub_10004D344(v22, v31, &qword_1006C9F60);
    v19 = sub_10004ED60();
    sub_10004DC58(v19);
    sub_10004DC58(v17);
    return 0;
  }

  return v11;
}

void sub_100049A30()
{
  sub_10004EC00();
  v2 = v0;
  v4 = v3;
  v5 = sub_1000443DC(&qword_1006C9FE0);
  v6 = sub_10004EAE0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  sub_10004ECE0();
  v11 = v4[4];
  sub_10004EBE8(v4, v4[3]);
  sub_10004D9B8();
  sub_10004ECD4();
  sub_10004EB7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v2;
  v13 = v2[1];
  LOBYTE(v22) = 0;
  sub_10004ECB8();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v22 = *(v2 + 2);
    LOBYTE(v23) = *(v2 + 48);
    v21 = 1;
    sub_10004DB5C();
    sub_10004EB6C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v2[2];
    v15 = *(v2 + 24);
    LOBYTE(v22) = 2;
    sub_10004ECB8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v22) = *(v2 + 25);
    v21 = 3;
    sub_10004DBB0();
    sub_10004EB6C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v2 + 9);
    v26[0] = *(v2 + 7);
    v26[1] = v16;
    v26[2] = *(v2 + 11);
    v27 = v2[13];
    v17 = *(v2 + 9);
    v22 = *(v2 + 7);
    v23 = v17;
    v24 = *(v2 + 11);
    v25 = v2[13];
    sub_10004D344(v26, &v21, &qword_1006C9F60);
    sub_10004DC04();
    sub_10004EB6C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10004DC58(v22);
  }

  v18 = *(v8 + 8);
  v19 = sub_10004ECC8();
  v20(v19);
  sub_10004EC18();
}

void sub_100049C64()
{
  sub_10004EC00();
  v2 = v1;
  v4 = v3;
  v5 = sub_1000443DC(&qword_1006C9FA8);
  v6 = sub_10004EAE0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v13 = v12 - v11;
  v14 = v2[4];
  sub_10004EBE8(v2, v2[3]);
  sub_10004D9B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100044850(v2);
  }

  else
  {
    v15 = v8;
    v33 = v4;
    LOBYTE(v35) = 0;
    v16 = v5;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v18;
    LOBYTE(v34[0]) = 1;
    sub_10004DA0C();
    sub_10004EC60();
    v20 = v15;
    v21 = v36;
    v32 = v35;
    v57 = v37;
    LOBYTE(v35) = 2;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v21;
    v58 = v22 & 1;
    LOBYTE(v34[0]) = 3;
    sub_10004DA60();
    sub_10004EC60();
    LOBYTE(v21) = v35;
    sub_10004DAB4();
    sub_10004EC60();
    (*(v20 + 8))(v13, v16);
    v28 = v51;
    v29 = v50;
    v26 = v53;
    v27 = v52;
    v24 = v55;
    v25 = v54;
    v23 = v56;
    v34[0] = v17;
    v34[1] = v19;
    v34[2] = v30;
    LOBYTE(v34[3]) = v58;
    BYTE1(v34[3]) = v21;
    v34[4] = v32;
    v34[5] = v31;
    LOBYTE(v20) = v57;
    LOBYTE(v34[6]) = v57;
    v34[7] = v50;
    v34[8] = v51;
    v34[9] = v52;
    v34[10] = v53;
    v34[11] = v54;
    v34[12] = v55;
    v34[13] = v56;
    sub_10004D280(v34, &v35);
    sub_100044850(v2);
    v35 = v17;
    v36 = v19;
    v37 = v30;
    v38 = v58;
    v39 = v21;
    v40 = v32;
    v41 = v31;
    v42 = v20;
    v43 = v29;
    v44 = v28;
    v45 = v27;
    v46 = v26;
    v47 = v25;
    v48 = v24;
    v49 = v23;
    sub_10004D2B8(&v35);
    memcpy(v33, v34, 0x70uLL);
  }

  sub_10004EC18();
}

void sub_100049F88(void *a1@<X8>)
{
  sub_100049C64();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

unint64_t sub_100049FF0()
{
  sub_10004ED74();
  v3 = v2[4];
  v4 = sub_100044728(v2, v2[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100044850(v0);
  }

  else
  {
    sub_10004EBE8(v7, v7[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100044850(v7);
    v4 = v5 == 2;
    sub_100044850(v0);
  }

  return v4;
}

uint64_t sub_10004A0AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63656C6C6F636572 && a2 == 0xEC0000006E6F6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373657567 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10004A184(char a1)
{
  if (a1)
  {
    return 0x7373657567;
  }

  else
  {
    return 0x63656C6C6F636572;
  }
}

void sub_10004A228()
{
  sub_10004EC00();
  v31 = v1;
  v3 = v2;
  v4 = sub_1000443DC(&qword_1006CA050);
  v5 = sub_10004EAE0(v4);
  v29 = v6;
  v30 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  sub_10004ED04();
  v28 = sub_1000443DC(&qword_1006CA058);
  v9 = sub_10004EAE0(v28);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10004EAF4();
  v16 = v15 - v14;
  v17 = sub_1000443DC(&qword_1006CA060);
  v18 = sub_10004EAE0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_10004EAF4();
  v25 = v24 - v23;
  v26 = v3[4];
  sub_10004EBE8(v3, v3[3]);
  sub_10004DE3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = (v20 + 8);
  if (v31)
  {
    sub_10004DE90();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v29 + 8))(v0, v30);
  }

  else
  {
    sub_10004DEE4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v11 + 8))(v16, v28);
  }

  (*v27)(v25, v17);
  sub_10004EC18();
}

uint64_t sub_10004A4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004A0AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004A4FC@<X0>(_BYTE *a1@<X8>)
{
  result = variable initialization expression of AirlineNameFormat.rev();
  *a1 = result;
  return result;
}

uint64_t sub_10004A524(uint64_t a1)
{
  v2 = sub_10004DE3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004A560(uint64_t a1)
{
  v2 = sub_10004DE3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004A5A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004A1F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004A5E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004A214();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004A614(uint64_t a1)
{
  v2 = sub_10004DE90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004A650(uint64_t a1)
{
  v2 = sub_10004DE90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004A68C(uint64_t a1)
{
  v2 = sub_10004DEE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004A6C8(uint64_t a1)
{
  v2 = sub_10004DEE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10004A704@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100049FF0();
  if (!v1)
  {
    *a1 = result & 1;
  }

  return result;
}

void sub_10004A750()
{
  sub_10004EC00();
  sub_10004ED74();
  v2 = sub_1000443DC(&qword_1006CA038);
  v3 = sub_10004EAE0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10004EAF4();
  sub_10004ED04();
  sub_10004EB88();
  sub_10004DDE8();
  sub_10004ED54();
  sub_10004EB7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_10004ECA8();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10004ED10();
    sub_10004ECA8();
    v6 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v7)
    {
      v10 = v6;
    }

    else
    {
      v10 = 65;
    }

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0xE100000000000000;
    }

    v12 = v10 == 65 && v11 == 0xE100000000000000;
    if (v12 || (sub_10004ED1C() & 1) != 0 || (v10 == 67 ? (v13 = v11 == 0xE100000000000000) : (v13 = 0), v13 || (sub_10004ED1C() & 1) != 0))
    {
      v14 = sub_10004EB5C();
      v15(v14);
    }

    else
    {
      if (v10 != 17217 || v11 != 0xE200000000000000)
      {
        sub_10004ED1C();
      }

      v8 = sub_10004EB5C();
      v9(v8);
    }
  }

  sub_100044850(v0);
  sub_10004EC18();
}

uint64_t sub_10004A974(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107700 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xED00007373616C43)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10004AA44(char a1)
{
  if (a1)
  {
    return 0x6465726975716572;
  }

  else
  {
    return 7107700;
  }
}

void sub_10004AA90()
{
  sub_10004EC00();
  sub_10004ED40();
  v2 = sub_1000443DC(&qword_1006CA048);
  v3 = sub_10004EAE0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10004EAF4();
  sub_10004ECE0();
  v8 = v0[4];
  sub_10004EBE8(v0, v0[3]);
  sub_10004DDE8();
  sub_10004ECD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10004EC80();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_10004ED10();
    sub_10004CDCC();
    sub_10004EC80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v9 = *(v5 + 8);
  v10 = sub_10004ECC8();
  v11(v10);
  sub_10004EC18();
}

uint64_t sub_10004ABCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004A974(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004ABF4(uint64_t a1)
{
  v2 = sub_10004DDE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004AC30(uint64_t a1)
{
  v2 = sub_10004DDE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10004AC6C(void *a1@<X8>)
{
  sub_10004A750();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

void sub_10004AC98()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10004AA90();
}

uint64_t sub_10004ACC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73694C776F6C6C61 && a2 == 0xEF736F6547646574;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473694C796E6564 && a2 == 0xEE00736F65476465;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001005A3770 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001005A3790 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7269757165526D67 && a2 == 0xEA00000000006465;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001005A37B0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000019 && 0x80000001005A37D0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6465726975716572 && a2 == 0xED00007373616C43)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int PKPass.BoardingPassDate.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_10004AFF0(char a1)
{
  result = 0x73694C776F6C6C61;
  switch(a1)
  {
    case 1:
      result = 0x7473694C796E6564;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x7269757165526D67;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0x6465726975716572;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10004B12C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (!v5 || (sub_1000DC48C(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if (v6)
  {
    if (!v7 || (sub_1000DC48C(v6, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
    {
      return result;
    }
  }

  v11 = *(a1 + 17);
  v12 = *(a2 + 17);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v12 == 2 || ((v12 ^ v11) & 1) != 0)
    {
      return result;
    }
  }

  v13 = *(a1 + 18);
  v14 = *(a2 + 18);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }

    goto LABEL_26;
  }

  result = 0;
  if (v14 != 2 && ((v14 ^ v13) & 1) == 0)
  {
LABEL_26:
    v15 = *(a1 + 24);
    v16 = *(a2 + 24);
    if (v15)
    {
      if (!v16 || (sub_1000DC48C(v15, v16) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    v17 = *(a1 + 32);
    v18 = *(a2 + 32);
    if (v17)
    {
      if (!v18 || (sub_1000DC48C(v17, v18) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }

    v19 = *(a1 + 48);
    v20 = *(a2 + 48);
    if (v19)
    {
      if (!v20)
      {
        return 0;
      }

      v21 = *(a1 + 40) == *(a2 + 40) && v19 == v20;
      return v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    return !v20;
  }

  return result;
}

uint64_t sub_10004B2A0(void *a1)
{
  v3 = v1;
  v5 = sub_1000443DC(&qword_1006CA028);
  v6 = sub_10004EAE0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  sub_10004ECE0();
  v11 = a1[4];
  sub_10004EBE8(a1, a1[3]);
  sub_10004DCC8();
  sub_10004ECD4();
  sub_10004EB7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v3;
  sub_1000443DC(&qword_1006CA018);
  sub_10004DD84(&qword_1006CA030);
  sub_10004EB30();
  if (!v2)
  {
    v22 = v3[1];
    sub_10004EB30();
    v12 = *(v3 + 16);
    sub_10004EB6C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 17);
    sub_10004EB6C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 18);
    sub_10004EB6C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v3[3];
    sub_10004EB30();
    v24 = v3[4];
    sub_10004EB30();
    v15 = v3[5];
    v16 = v3[6];
    sub_10004ECB8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v17 = *(v8 + 8);
  v18 = sub_10004ECC8();
  return v19(v18);
}

void sub_10004B4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004EC00();
  sub_10004ED74();
  v13 = v12;
  v14 = sub_1000443DC(&qword_1006CA008);
  v15 = sub_10004EAE0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_10004EAF4();
  v22 = v21 - v20;
  v23 = v10[3];
  v24 = v10[4];
  sub_10004EBE8(v10, v23);
  sub_10004DCC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    sub_10004EC8C();
    sub_10004EC98();
    sub_100044850(v10);
    v43 = 0;
    v44 = 0;
    v45 = v22;
    v46 = v13;
    v47 = v17;
    v48 = *(&a10 + 3);
    v49 = HIBYTE(a10);
    v50 = v24;
    v51 = v23;
    v52 = 0;
    v53 = 0;
    sub_10004DD1C(&v43);
  }

  else
  {
    sub_1000443DC(&qword_1006CA018);
    sub_10004DD84(&qword_1006CA020);
    sub_10004EB18();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v43;
    sub_10004EB18();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v43;
    v36 = sub_10004EBAC(2);
    v35 = v13;
    v25 = sub_10004EBAC(3);
    v26 = sub_10004EBAC(4);
    sub_10004EB18();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v43;
    sub_10004EB18();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = v43;
    sub_10004EBDC();
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v29;
    v31 = sub_10004EB04();
    v32(v31);
    *&v39 = v43;
    *(&v39 + 1) = v43;
    LOBYTE(v40) = v36;
    BYTE1(v40) = v25;
    BYTE2(v40) = v26;
    *(&v40 + 1) = v43;
    *&v41 = v43;
    *(&v41 + 1) = v34;
    v42 = v30;
    sub_10004DD4C(&v39, &v43);
    sub_100044850(v10);
    v43 = v38;
    v44 = v37;
    v45 = v36;
    v46 = v25;
    v47 = v26;
    v50 = v27;
    v51 = v28;
    v52 = v34;
    v53 = v30;
    sub_10004DD1C(&v43);
    v33 = v40;
    *v35 = v39;
    *(v35 + 16) = v33;
    *(v35 + 32) = v41;
    *(v35 + 48) = v42;
  }

  sub_10004EC18();
}

Swift::Int sub_10004B8BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10004B908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004ACC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004B930@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004AF68();
  *a1 = result;
  return result;
}

uint64_t sub_10004B958(uint64_t a1)
{
  v2 = sub_10004DCC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004B994(uint64_t a1)
{
  v2 = sub_10004DCC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004B9D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_10004B4B4(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (!v9)
  {
    *a9 = v13;
    *(a9 + 16) = v14;
    result = *&v15;
    *(a9 + 32) = v15;
    *(a9 + 48) = v16;
  }

  return result;
}

uint64_t sub_10004BA3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107700 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7473694878616DLL && a2 == 0xEA00000000007972)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10004BB0C(char a1)
{
  if (a1)
  {
    return 0x6F7473694878616DLL;
  }

  else
  {
    return 7107700;
  }
}

void sub_10004BB40()
{
  sub_10004EC00();
  v3 = v2;
  v4 = sub_1000443DC(&qword_1006CA000);
  v5 = sub_10004EAE0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  sub_10004ED04();
  v10 = v3[4];
  sub_10004EBE8(v3, v3[3]);
  sub_10004DB08();
  sub_10004ED54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    sub_10004ED10();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v7 + 8))(v1, v4);
  sub_10004EC18();
}

void sub_10004BC8C()
{
  sub_10004EC00();
  v3 = v2;
  v4 = sub_1000443DC(&qword_1006C9FD0);
  v5 = sub_10004EAE0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  sub_10004ED04();
  sub_10004EB88();
  sub_10004DB08();
  sub_10004ED54();
  sub_10004EB7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10004ED10();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v7 + 8))(v1, v4);
  }

  sub_100044850(v3);
  sub_10004EC18();
}

uint64_t sub_10004BE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004BA3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004BE3C(uint64_t a1)
{
  v2 = sub_10004DB08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004BE78(uint64_t a1)
{
  v2 = sub_10004DB08();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10004BEB4(uint64_t a1@<X8>)
{
  sub_10004BC8C();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6 & 1;
  }
}

void sub_10004BEF4()
{
  v1 = *v0;
  v2 = v0[2];
  v4 = *(v0 + 8);
  v3 = *(v0 + 24);
  sub_10004BB40();
}

uint64_t sub_10004BF2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*result == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = result;
    v10 = *(result + 18);
    v11 = *(result + 17);
    v12 = *(result + 16);
    v5 = *(result + 8);
    v7 = *(result + 24);
    v13 = *(result + 32);
    v20 = *result;
    v21 = v5;
    v22 = v7;
    v23 = v13;
    sub_10004ED80(&v20, a2);
    sub_10004ED80(&v21, v14);
    sub_10004ED80(&v22, v15);
    sub_10004ED80(&v23, v16);
    result = sub_10004D2E8(v9, &qword_1006C9F60);
    v8 = v23;
    v17 = 256;
    if ((v11 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = v17 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
    v19 = 0x10000;
    if ((v10 & 1) == 0)
    {
      v19 = 0;
    }

    v6 = v18 | v19;
  }

  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
  return result;
}

BOOL sub_10004C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_10004C0A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000004449;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xED00007373616C43)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10004C178(char a1)
{
  if (a1)
  {
    return 0x6465726975716572;
  }

  else
  {
    return 0x776F6C666B726F77;
  }
}

void sub_10004C1C0()
{
  sub_10004EC00();
  v2 = v1;
  v3 = sub_1000443DC(&qword_1006C9EC8);
  v4 = sub_10004EAE0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  sub_10004ECE0();
  v9 = v2[4];
  sub_10004EBE8(v2, v2[3]);
  sub_10004CD24();
  sub_10004ECD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10004EC80();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_10004ED10();
    sub_10004CDCC();
    sub_10004EC80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v10 = *(v6 + 8);
  v11 = sub_10004ECC8();
  v12(v11);
  sub_10004EC18();
}

Swift::Int sub_10004C30C(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

uint64_t sub_10004C374()
{
  sub_10004ED74();
  v3 = sub_1000443DC(&qword_1006C9EB0);
  v4 = sub_10004EAE0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  sub_10004ED04();
  sub_10004EB88();
  sub_10004CD24();
  sub_10004ED54();
  sub_10004EB7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_10004ECA8();
    v2 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10004CD78();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = sub_10004EB5C();
    v9(v8);
  }

  sub_100044850(v0);
  return v2;
}

uint64_t sub_10004C50C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001005A3750 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_10004C5E4(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10004C62C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x776F6C666B726F77;
  }
}

void sub_10004C66C()
{
  sub_10004EC00();
  sub_10004ED40();
  v2 = sub_1000443DC(&qword_1006C9F18);
  v3 = sub_10004EAE0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10004EAF4();
  sub_10004ECE0();
  v8 = v0[4];
  sub_10004EBE8(v0, v0[3]);
  sub_10004CE20();
  sub_10004ECD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000443DC(&qword_1006C9EE8);
  sub_10004CF1C(&qword_1006C9F20, sub_10004CF8C);
  sub_10004EC80();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_1000443DC(&qword_1006C9F00);
    sub_10004CFE0(&qword_1006C9F30, sub_10004D05C);
    sub_10004EC80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v9 = *(v5 + 8);
  v10 = sub_10004ECC8();
  v11(v10);
  sub_10004EC18();
}

uint64_t sub_10004C838(uint64_t *a1)
{
  v4 = sub_1000443DC(&qword_1006C9ED8);
  v5 = sub_10004EAE0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  v12 = v11 - v10;
  Dictionary.init(dictionaryLiteral:)();

  sub_10004EB88();
  sub_10004CE20();
  sub_10004EB7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000443DC(&qword_1006C9EE8);
    sub_10004CF1C(&qword_1006C9EF0, sub_10004CE74);
    sub_10004EC30();
    v2 = v14;
    sub_1000443DC(&qword_1006C9F00);
    sub_10004CFE0(&qword_1006C9F08, sub_10004CEC8);
    sub_10004EC30();
    (*(v7 + 8))(v12, v4);
  }

  sub_100044850(a1);
  return v2;
}

uint64_t sub_10004CA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004C0A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004CA80(uint64_t a1)
{
  v2 = sub_10004CD24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004CABC(uint64_t a1)
{
  v2 = sub_10004CD24();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10004CB10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_10004CB70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C374();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
    a1[2] = v5;
  }

  return result;
}

void sub_10004CBA0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_10004C1C0();
}

uint64_t sub_10004CBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004C50C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004CC0C(uint64_t a1)
{
  v2 = sub_10004CE20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004CC48(uint64_t a1)
{
  v2 = sub_10004CE20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004CC84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10004C838(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_10004CCB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10004C66C();
}

unint64_t sub_10004CCD0()
{
  result = qword_1006C9EA8;
  if (!qword_1006C9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9EA8);
  }

  return result;
}

unint64_t sub_10004CD24()
{
  result = qword_1006C9EB8;
  if (!qword_1006C9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9EB8);
  }

  return result;
}

unint64_t sub_10004CD78()
{
  result = qword_1006C9EC0;
  if (!qword_1006C9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9EC0);
  }

  return result;
}

unint64_t sub_10004CDCC()
{
  result = qword_1006C9ED0;
  if (!qword_1006C9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9ED0);
  }

  return result;
}

unint64_t sub_10004CE20()
{
  result = qword_1006C9EE0;
  if (!qword_1006C9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9EE0);
  }

  return result;
}

unint64_t sub_10004CE74()
{
  result = qword_1006C9EF8;
  if (!qword_1006C9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9EF8);
  }

  return result;
}

unint64_t sub_10004CEC8()
{
  result = qword_1006C9F10;
  if (!qword_1006C9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F10);
  }

  return result;
}

uint64_t sub_10004CF1C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(&qword_1006C9EE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004CF8C()
{
  result = qword_1006C9F28;
  if (!qword_1006C9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F28);
  }

  return result;
}

uint64_t sub_10004CFE0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(&qword_1006C9F00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004D05C()
{
  result = qword_1006C9F38;
  if (!qword_1006C9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F38);
  }

  return result;
}

uint64_t sub_10004D0B0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v29 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_1000BFB60(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v9[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        sub_1000443DC(&qword_1006C9F50);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_100085C58(v15, a2 & 1);
      v17 = *a3;
      v18 = sub_1000BFB60(v7, v6);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      v21 = *(v20[7] + 8 * v12);

      v22 = v20[7];
      v23 = *(v22 + 8 * v12);
      *(v22 + 8 * v12) = v21;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v24 = (v20[6] + 16 * v12);
      *v24 = v7;
      v24[1] = v6;
      *(v20[7] + 8 * v12) = v10;
      v25 = v20[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v20[2] = v27;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004D2E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000443DC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004D344(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000443DC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_10004D3A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10004D3C4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004D418(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10004D488(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_10004ED38(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ASFinanceStoreHelper.AugmentedTransaction.Location(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_10004D520(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10004D534(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004D554(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_10004D598(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004D5EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_10004D668(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004D67C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004D6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10004D754()
{
  result = qword_1006C9F70;
  if (!qword_1006C9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F70);
  }

  return result;
}

unint64_t sub_10004D7AC()
{
  result = qword_1006C9F78;
  if (!qword_1006C9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F78);
  }

  return result;
}

unint64_t sub_10004D804()
{
  result = qword_1006C9F80;
  if (!qword_1006C9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F80);
  }

  return result;
}

unint64_t sub_10004D85C()
{
  result = qword_1006C9F88;
  if (!qword_1006C9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F88);
  }

  return result;
}

unint64_t sub_10004D8B4()
{
  result = qword_1006C9F90;
  if (!qword_1006C9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F90);
  }

  return result;
}

unint64_t sub_10004D90C()
{
  result = qword_1006C9F98;
  if (!qword_1006C9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F98);
  }

  return result;
}

unint64_t sub_10004D964()
{
  result = qword_1006C9FA0;
  if (!qword_1006C9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9FA0);
  }

  return result;
}

unint64_t sub_10004D9B8()
{
  result = qword_1006C9FB0;
  if (!qword_1006C9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9FB0);
  }

  return result;
}

unint64_t sub_10004DA0C()
{
  result = qword_1006C9FB8;
  if (!qword_1006C9FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9FB8);
  }

  return result;
}

unint64_t sub_10004DA60()
{
  result = qword_1006C9FC0;
  if (!qword_1006C9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9FC0);
  }

  return result;
}

unint64_t sub_10004DAB4()
{
  result = qword_1006C9FC8;
  if (!qword_1006C9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9FC8);
  }

  return result;
}

unint64_t sub_10004DB08()
{
  result = qword_1006C9FD8;
  if (!qword_1006C9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9FD8);
  }

  return result;
}

unint64_t sub_10004DB5C()
{
  result = qword_1006C9FE8;
  if (!qword_1006C9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9FE8);
  }

  return result;
}

unint64_t sub_10004DBB0()
{
  result = qword_1006C9FF0;
  if (!qword_1006C9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9FF0);
  }

  return result;
}

unint64_t sub_10004DC04()
{
  result = qword_1006C9FF8;
  if (!qword_1006C9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9FF8);
  }

  return result;
}

uint64_t sub_10004DC58(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_10004DCC8()
{
  result = qword_1006CA010;
  if (!qword_1006CA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA010);
  }

  return result;
}

uint64_t sub_10004DD84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(&qword_1006CA018);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004DDE8()
{
  result = qword_1006CA040;
  if (!qword_1006CA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA040);
  }

  return result;
}

unint64_t sub_10004DE3C()
{
  result = qword_1006CA068;
  if (!qword_1006CA068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA068);
  }

  return result;
}

unint64_t sub_10004DE90()
{
  result = qword_1006CA070;
  if (!qword_1006CA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA070);
  }

  return result;
}

unint64_t sub_10004DEE4()
{
  result = qword_1006CA078;
  if (!qword_1006CA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA078);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASPrecomputationConfiguration.PreconditionsObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ASPrecomputationConfiguration.PreconditionsObject.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10004E0CCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10004E10C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10004ED38(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return sub_10004ED38((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_10004ED38((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10004ED38((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10004ED38(v8);
}

_BYTE *sub_10004E190(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10004E25CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Channel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10004E31C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10004E3E8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10004E420()
{
  result = qword_1006CA080;
  if (!qword_1006CA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA080);
  }

  return result;
}

unint64_t sub_10004E478()
{
  result = qword_1006CA088;
  if (!qword_1006CA088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA088);
  }

  return result;
}

unint64_t sub_10004E4D0()
{
  result = qword_1006CA090;
  if (!qword_1006CA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA090);
  }

  return result;
}

unint64_t sub_10004E528()
{
  result = qword_1006CA098;
  if (!qword_1006CA098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA098);
  }

  return result;
}

unint64_t sub_10004E580()
{
  result = qword_1006CA0A0;
  if (!qword_1006CA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0A0);
  }

  return result;
}

unint64_t sub_10004E5D8()
{
  result = qword_1006CA0A8;
  if (!qword_1006CA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0A8);
  }

  return result;
}

unint64_t sub_10004E630()
{
  result = qword_1006CA0B0;
  if (!qword_1006CA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0B0);
  }

  return result;
}

unint64_t sub_10004E688()
{
  result = qword_1006CA0B8;
  if (!qword_1006CA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0B8);
  }

  return result;
}

unint64_t sub_10004E6E0()
{
  result = qword_1006CA0C0;
  if (!qword_1006CA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0C0);
  }

  return result;
}

unint64_t sub_10004E738()
{
  result = qword_1006CA0C8;
  if (!qword_1006CA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0C8);
  }

  return result;
}

unint64_t sub_10004E790()
{
  result = qword_1006CA0D0;
  if (!qword_1006CA0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0D0);
  }

  return result;
}

unint64_t sub_10004E7E8()
{
  result = qword_1006CA0D8;
  if (!qword_1006CA0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0D8);
  }

  return result;
}

unint64_t sub_10004E840()
{
  result = qword_1006CA0E0;
  if (!qword_1006CA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0E0);
  }

  return result;
}

unint64_t sub_10004E898()
{
  result = qword_1006CA0E8;
  if (!qword_1006CA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0E8);
  }

  return result;
}

unint64_t sub_10004E8F0()
{
  result = qword_1006CA0F0;
  if (!qword_1006CA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0F0);
  }

  return result;
}

unint64_t sub_10004E948()
{
  result = qword_1006CA0F8;
  if (!qword_1006CA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA0F8);
  }

  return result;
}

unint64_t sub_10004E9A0()
{
  result = qword_1006CA100;
  if (!qword_1006CA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA100);
  }

  return result;
}

unint64_t sub_10004E9F8()
{
  result = qword_1006CA108;
  if (!qword_1006CA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA108);
  }

  return result;
}

unint64_t sub_10004EA50()
{
  result = qword_1006CA110;
  if (!qword_1006CA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA110);
  }

  return result;
}

uint64_t sub_10004EB30()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_10004EBAC@<X0>(char a1@<W8>)
{
  *(v1 - 144) = a1;

  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t sub_10004EC30()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10004EC60()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_10004ED1C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10004ED80(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_10004D344(a1, va, v2);
}

void static TypedUserDefaultsKey<>.value(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000541C0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1000443DC(&qword_1006C9C48);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_10004EAF4();
  v22 = v21 - v20;
  v23 = *(v13 + 8);
  v24 = *(v23 + 16);
  v25 = sub_100054004();
  v24(v25);
  v26 = String._bridgeToObjectiveC()();

  v27 = [v15 stringForKey:v26];

  if (v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();

    v28 = type metadata accessor for URL();
    if (sub_100046EA4(v22, 1, v28) == 1)
    {
      sub_100053BE8(v22, &qword_1006C9C48);
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v29 = type metadata accessor for Logger();
      v30 = sub_100053FD0(v29, qword_1006CA118);
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = sub_100053F78();
        v33 = sub_100053F60();
        *v32 = 136315138;
        v34 = sub_100054004();
        v24(v34);
        v35 = sub_100052F7C();

        *(v32 + 4) = v35;
        sub_100054168(&_mh_execute_header, v36, v37, "Invalid URL in defaults for key: %s");
        sub_100044850(v33);
        sub_1000488AC();
        sub_1000488AC();
      }

      v38 = *(v23 + 24);
      v39 = sub_100054004();
      v40(v39);
    }

    else
    {
      sub_100053F48(v28);
      (*(v50 + 32))(v17, v22, v28);
    }

    sub_100054088();
  }

  else
  {
    v41 = *(v23 + 24);
    sub_100054004();
    sub_100054088();

    v45(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }
}

uint64_t sub_10004F04C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    v6 = swift_unknownObjectRelease();
    sub_10005404C(v6, v7);
    if (sub_100053E20())
    {
      result = sub_100044850(v21);
      *a2 = v19;
    }

    else
    {
      sub_10004489C(0, 0xF000000000000000);
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v11 = type metadata accessor for Logger();
      v12 = sub_100053FD0(v11, qword_1006CA118);
      v13 = static os_log_type_t.error.getter();
      if (sub_100054100(v13))
      {
        v14 = sub_100053F78();
        v20 = sub_100053F60();
        *v14 = 136315138;
        *(v14 + 4) = sub_100052F7C();
        sub_100053FB0(&_mh_execute_header, v15, v16, "Unexpected type value found in defaults for key: %s");
        sub_100044850(v20);
        sub_1000488AC();
        sub_1000488AC();
      }

      if (qword_1006C9750 != -1)
      {
        sub_100053E90();
      }

      v17 = qword_1006DF7A8;
      v18 = qword_1006DF7B0;
      sub_100046D38(qword_1006DF7A8, qword_1006DF7B0);
      result = sub_100044850(v21);
      *a2 = v17;
      *(a2 + 8) = v18;
    }
  }

  else
  {
    if (qword_1006C9750 != -1)
    {
      sub_100053E90();
    }

    v9 = qword_1006DF7A8;
    v10 = qword_1006DF7B0;
    *a2 = qword_1006DF7A8;
    *(a2 + 8) = v10;

    return sub_100046D38(v9, v10);
  }

  return result;
}

void sub_10004F290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100054238();
  a25 = v27;
  a26 = v28;
  sub_100053F3C();
  v29 = String._bridgeToObjectiveC()();
  v30 = sub_100053E3C();
  v32 = [v30 v31];

  if (v32)
  {
    sub_100054064();
    v33 = swift_unknownObjectRelease();
    sub_10005404C(v33, v34);
    if (sub_100053E20())
    {
      sub_100044850(&a15);
    }

    else
    {
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v35 = type metadata accessor for Logger();
      v36 = sub_100053FD0(v35, qword_1006CA118);
      v37 = static os_log_type_t.error.getter();
      if (sub_100053DE8(v37))
      {
        sub_100053F78();
        sub_100053E48();
        sub_100053F30();
        sub_100053D84(4.8149e-34);
        *(v26 + 4) = sub_100052F7C();
        sub_100053DC8(&_mh_execute_header, v38, v39, "Unexpected type value found in defaults for key: %s");
        sub_100053D94();
        sub_100053E64();
      }

      sub_100044850(&a15);
    }
  }

  sub_100054224();
}

void sub_10004F3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100054238();
  a25 = v27;
  a26 = v28;
  sub_100053F3C();
  v29 = String._bridgeToObjectiveC()();
  v30 = sub_100053E3C();
  v32 = [v30 v31];

  if (v32)
  {
    sub_100054064();
    v33 = swift_unknownObjectRelease();
    sub_10005404C(v33, v34);
    if (sub_100053E20())
    {
      sub_100044850(&a15);
    }

    else
    {
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v35 = type metadata accessor for Logger();
      v36 = sub_100053FD0(v35, qword_1006CA118);
      v37 = static os_log_type_t.error.getter();
      if (sub_100053DE8(v37))
      {
        sub_100053F78();
        sub_100053E48();
        sub_100053F30();
        sub_100053D84(4.8149e-34);
        *(v26 + 4) = sub_100052F7C();
        sub_100053DC8(&_mh_execute_header, v38, v39, "Unexpected type value found in defaults for key: %s");
        sub_100053D94();
        sub_100053E64();
      }

      sub_100044850(&a15);
    }
  }

  sub_100054224();
}

void sub_10004F534()
{
  sub_100053F3C();
  sub_1000540A0();
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_100053E3C();
  v4 = [v2 v3];

  if (v4)
  {
    sub_100054064();
    v5 = swift_unknownObjectRelease();
    sub_10005404C(v5, v6);
    if (sub_100053E20())
    {
      sub_100044850(v17);
    }

    else
    {
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v10 = type metadata accessor for Logger();
      v11 = sub_100053FD0(v10, qword_1006CA118);
      v12 = static os_log_type_t.error.getter();
      if (sub_100053DE8(v12))
      {
        sub_100053F78();
        sub_100053E48();
        sub_100053F30();
        sub_100053D84(4.8149e-34);
        sub_1000540A0();
        *(v0 + 4) = sub_100052F7C();
        sub_100053DC8(&_mh_execute_header, v13, v14, "Unexpected type value found in defaults for key: %s");
        sub_100053D94();
        sub_100053E64();
      }

      v15 = sub_100053E80();
      sub_10009CD54(*&v15, v16);
      sub_100044850(v17);
    }

    sub_1000541A8();
  }

  else
  {
    sub_100053E80();
    sub_1000541A8();

    sub_10009CD54(v7, v8);
  }
}

void sub_10004F6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100054238();
  a25 = v27;
  a26 = v28;
  sub_100053F3C();
  v29 = String._bridgeToObjectiveC()();
  v30 = sub_100053E3C();
  v32 = [v30 v31];

  if (v32)
  {
    sub_100054064();
    v33 = swift_unknownObjectRelease();
    sub_10005404C(v33, v34);
    if (sub_100053E20())
    {
      sub_100044850(&a15);
    }

    else
    {
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v35 = type metadata accessor for Logger();
      v36 = sub_100053FD0(v35, qword_1006CA118);
      v37 = static os_log_type_t.error.getter();
      if (sub_100053DE8(v37))
      {
        sub_100053F78();
        sub_100053E48();
        sub_100053F30();
        sub_100053D84(4.8149e-34);
        *(v26 + 4) = sub_100052F7C();
        sub_100053DC8(&_mh_execute_header, v38, v39, "Unexpected type value found in defaults for key: %s");
        sub_100053D94();
        sub_100053E64();
      }

      sub_100044850(&a15);
    }
  }

  sub_100054224();
}

void sub_10004F7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100054238();
  a25 = v27;
  a26 = v28;
  sub_100053F3C();
  v29 = String._bridgeToObjectiveC()();
  v30 = sub_100053E3C();
  v32 = [v30 v31];

  if (v32)
  {
    sub_100054064();
    v33 = swift_unknownObjectRelease();
    sub_10005404C(v33, v34);
    if (sub_100053E20())
    {
      sub_100044850(&a15);
    }

    else
    {
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v35 = type metadata accessor for Logger();
      v36 = sub_100053FD0(v35, qword_1006CA118);
      v37 = static os_log_type_t.error.getter();
      if (sub_100053DE8(v37))
      {
        sub_100053F78();
        sub_100053E48();
        sub_100053F30();
        sub_100053D84(4.8149e-34);
        *(v26 + 4) = sub_100052F7C();
        sub_100053DC8(&_mh_execute_header, v38, v39, "Unexpected type value found in defaults for key: %s");
        sub_100053D94();
        sub_100053E64();
      }

      sub_100044850(&a15);
    }
  }

  sub_100054224();
}

void sub_10004F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100054238();
  a25 = v27;
  a26 = v28;
  sub_100053F3C();
  v29 = String._bridgeToObjectiveC()();
  v30 = sub_100053E3C();
  v32 = [v30 v31];

  if (v32)
  {
    sub_100054064();
    v33 = swift_unknownObjectRelease();
    sub_10005404C(v33, v34);
    if (sub_100053E20())
    {
      sub_100044850(&a15);
    }

    else
    {
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v35 = type metadata accessor for Logger();
      v36 = sub_100053FD0(v35, qword_1006CA118);
      v37 = static os_log_type_t.error.getter();
      if (sub_100053DE8(v37))
      {
        sub_100053F78();
        sub_100053E48();
        sub_100053F30();
        sub_100053D84(4.8149e-34);
        *(v26 + 4) = sub_100052F7C();
        sub_100053DC8(&_mh_execute_header, v38, v39, "Unexpected type value found in defaults for key: %s");
        sub_100053D94();
        sub_100053E64();
      }

      sub_100044850(&a15);
    }
  }

  sub_100054224();
}

void sub_10004FA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100054238();
  a25 = v27;
  a26 = v28;
  sub_100053F3C();
  sub_10005407C();
  v29 = String._bridgeToObjectiveC()();
  v30 = sub_100053E3C();
  v32 = [v30 v31];

  if (v32)
  {
    sub_100054064();
    v33 = swift_unknownObjectRelease();
    sub_10005404C(v33, v34);
    if (sub_100053E20())
    {
      sub_100044850(&a15);
    }

    else
    {
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v35 = type metadata accessor for Logger();
      v36 = sub_100053FD0(v35, qword_1006CA118);
      v37 = static os_log_type_t.error.getter();
      if (sub_100053DE8(v37))
      {
        sub_100053F78();
        sub_100053E48();
        sub_100053F30();
        sub_100053D84(4.8149e-34);
        sub_10005407C();
        *(v26 + 4) = sub_100052F7C();
        sub_100053DC8(&_mh_execute_header, v38, v39, "Unexpected type value found in defaults for key: %s");
        sub_100053D94();
        sub_100053E64();
      }

      sub_10005411C();
      sub_100044850(&a15);
    }
  }

  else
  {
    sub_10005411C();
  }

  sub_100054224();
}

uint64_t sub_10004FBD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000443DC(&qword_1006CA2B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10004EAF4();
  v8 = v7 - v6;
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 objectForKey:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10005346C(v31, &v30);
    v11 = type metadata accessor for Date();
    if (swift_dynamicCast())
    {
      sub_100044850(v31);
      sub_1000485F8(v8, 0, 1, v11);
      sub_100053F48(v11);
      return (*(v12 + 32))(a2, v8, v11);
    }

    else
    {
      sub_1000485F8(v8, 1, 1, v11);
      sub_100053BE8(v8, &qword_1006CA2B0);
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v19 = type metadata accessor for Logger();
      v20 = sub_100053FD0(v19, qword_1006CA118);
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = sub_100053F78();
        v23 = sub_100053F60();
        v30 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100052F7C();
        sub_100054188(&_mh_execute_header, v24, v25, "Unexpected type value found in defaults for key: %s");
        sub_100044850(v23);
        sub_1000488AC();
        sub_1000488AC();
      }

      if (qword_1006C9760 != -1)
      {
        sub_100053ED0();
      }

      sub_100046E6C(v11, qword_1006DF7C0);
      sub_100053F48(v11);
      v27 = *(v26 + 16);
      v28 = sub_100053F54();
      v29(v28);
      return sub_100044850(v31);
    }
  }

  else
  {
    if (qword_1006C9760 != -1)
    {
      sub_100053ED0();
    }

    v14 = type metadata accessor for Date();
    sub_100046E6C(v14, qword_1006DF7C0);
    sub_100053F48(v14);
    v16 = *(v15 + 16);
    v17 = sub_100053E3C();

    return v18(v17);
  }
}

float sub_10004FF0C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 objectForKey:v2];

  v4 = 1.0;
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10005346C(v13, &v12);
    if (swift_dynamicCast())
    {
      sub_100044850(v13);
      return v11;
    }

    else
    {
      if (qword_1006C9788 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100046E6C(v5, qword_1006CA118);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v12 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_100052F7C();
        _os_log_impl(&_mh_execute_header, v6, v7, "Unexpected type value found in defaults for key: %s", v8, 0xCu);
        sub_100044850(v9);
      }

      sub_100044850(v13);
    }
  }

  return v4;
}

double sub_1000500FC(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = sub_10004EAE0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 objectForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10005346C(v23, &v22);
    if (swift_dynamicCast())
    {
      sub_100044850(v23);
      return v21;
    }

    else
    {
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v11 = type metadata accessor for Logger();
      v12 = sub_100053FD0(v11, qword_1006CA118);
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = sub_100053F78();
        v15 = sub_100053F60();
        v22 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_100052F7C();
        sub_100054188(&_mh_execute_header, v16, v17, "Unexpected type value found in defaults for key: %s");
        sub_100044850(v15);
        sub_1000488AC();
        sub_1000488AC();
      }

      static Date.distantPast.getter();
      Date.timeIntervalSinceNow.getter();
      v18 = sub_10005413C();
      v19(v18);
      sub_100044850(v23);
    }
  }

  else
  {
    static Date.distantPast.getter();
    Date.timeIntervalSinceNow.getter();
    v9 = sub_10005413C();
    v10(v9);
  }

  return v1;
}

void static TypedUserDefaultsKey.value(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000541C0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  v22 = sub_10004EAE0(v21);
  v54 = v23;
  v55 = v22;
  v25 = *(v24 + 64);
  sub_100054130();
  __chkstk_darwin(v26);
  v28 = &v52 - v27;
  v29 = *(v19 + 16);
  v30 = sub_10004ECC8();
  v52 = v31;
  (v31)(v30);
  v32 = String._bridgeToObjectiveC()();

  v33 = [v15 objectForKey:v32];

  if (v33)
  {
    v53 = v17;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10005346C(v57, &v56);
    if (swift_dynamicCast())
    {
      sub_100044850(v57);
      sub_1000485F8(v28, 0, 1, AssociatedTypeWitness);
      sub_100053F48(AssociatedTypeWitness);
      (*(v34 + 32))(v53, v28, AssociatedTypeWitness);
    }

    else
    {
      sub_1000485F8(v28, 1, 1, AssociatedTypeWitness);
      (*(v54 + 8))(v28, v55);
      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v44 = type metadata accessor for Logger();
      v45 = sub_100053FD0(v44, qword_1006CA118);
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = sub_100053F78();
        v48 = sub_100053F60();
        v56 = v48;
        *v47 = 136315138;
        v52(v13, v19);
        v49 = sub_100052F7C();

        *(v47 + 4) = v49;
        sub_100054168(&_mh_execute_header, v50, v51, "Unexpected type value found in defaults for key: %s");
        sub_100044850(v48);
        sub_1000488AC();
        sub_1000488AC();
      }

      (*(v19 + 24))(v13, v19);
      sub_100044850(v57);
    }

    sub_100054088();
  }

  else
  {
    v35 = *(v19 + 24);
    sub_10004ECC8();
    sub_100054088();

    v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
  }
}

BOOL static UserDefaultsKey.isSet(inDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000540AC(a1, a2, a3);
  v4(v3);
  v5 = String._bridgeToObjectiveC()();

  v6 = sub_100053F54();
  v8 = [v6 v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000534C8(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_100053BE8(v11, &qword_1006CA130);
  return v8 != 0;
}

void sub_100050820()
{
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  sub_100054218();
  sub_1000540A0();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100053E3C();
  [v1 v2];
  swift_unknownObjectRelease();
}

void sub_1000508A0(void *a1)
{
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = String._bridgeToObjectiveC()();
  [a1 setObject:v2 forKey:v3];
  swift_unknownObjectRelease();
}

void sub_10005092C(uint64_t a1, unint64_t a2)
{
  sub_100046D38(a1, a2);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100053E3C();
  [v3 v4];
  swift_unknownObjectRelease();
}

void sub_1000509C0()
{
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  sub_100054218();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100053E3C();
  [v1 v2];
  swift_unknownObjectRelease();
}

void static TypedUserDefaultsKey.set(value:to:)()
{
  sub_1000541F0();
  sub_10005403C();
  v3 = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v3 + 16))(v0, v3);
  v7 = String._bridgeToObjectiveC()();

  [v1 setObject:v4 forKey:v7];
  swift_unknownObjectRelease();
  sub_100054204();
}

void static CodableUserDefaultsKey<>.value.getter()
{
  sub_1000541F0();
  sub_10005403C();
  v4 = [objc_opt_self() standardUserDefaults];
  static CodableUserDefaultsKey<>.value(from:)(v4, v1, v0);
  sub_100054204();
}

void sub_100050BD8()
{
  sub_1000541F0();
  v1 = type metadata accessor for JSONEncoder();
  sub_1000540C4(v1);
  JSONEncoder.init()();
  sub_1000443DC(&qword_1006CA288);
  sub_100053B14();
  sub_1000540DC();
  if (v0)
  {

    if (qword_1006C9788 != -1)
    {
      sub_100053D64();
    }

    v2 = type metadata accessor for Logger();
    v3 = sub_100053FD0(v2, qword_1006CA118);
    v4 = static os_log_type_t.fault.getter();
    if (sub_100053DE8(v4))
    {
      *sub_1000541D8() = 0;
      sub_100053F90(&_mh_execute_header, v5, v6, "Failed to encode defaults object");
      sub_100053E04();
    }
  }

  else
  {

    sub_10005415C();
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100054218();
    sub_10005407C();
    v8 = String._bridgeToObjectiveC()();
    v9 = sub_100053F54();
    [v9 v10];

    v11 = sub_10005415C();
    sub_1000448B0(v11, v12);
  }

  sub_100054204();
}

uint64_t sub_100050D50(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000443DC(&qword_1006CA2B8);
  sub_100053C94();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = String._bridgeToObjectiveC()();
  [a2 setObject:isa forKey:v10];

  return sub_1000448B0(v6, v8);
}

void sub_100050F48()
{
  sub_1000541F0();
  v1 = type metadata accessor for JSONEncoder();
  sub_1000540C4(v1);
  JSONEncoder.init()();
  sub_1000443DC(&qword_1006CA250);
  sub_10005394C();
  sub_1000540DC();
  if (v0)
  {

    if (qword_1006C9788 != -1)
    {
      sub_100053D64();
    }

    v2 = type metadata accessor for Logger();
    v3 = sub_100053FD0(v2, qword_1006CA118);
    v4 = static os_log_type_t.fault.getter();
    if (sub_100053DE8(v4))
    {
      *sub_1000541D8() = 0;
      sub_100053F90(&_mh_execute_header, v5, v6, "Failed to encode defaults object");
      sub_100053E04();
    }
  }

  else
  {

    sub_10005415C();
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100054218();
    v8 = String._bridgeToObjectiveC()();
    v9 = sub_100053F54();
    [v9 v10];

    v11 = sub_10005415C();
    sub_1000448B0(v11, v12);
  }

  sub_100054204();
}

uint64_t static CodableUserDefaultsKey<>.set(value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for JSONEncoder();
  sub_1000540C4(v6);
  JSONEncoder.init()();
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v10 = v9;

  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v7 + 16))(a3, v7);
  v12 = String._bridgeToObjectiveC()();

  v13 = sub_100053F54();
  [v13 v14];

  return sub_1000448B0(v8, v10);
}

uint64_t sub_100051278()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CA118);
  sub_100046E6C(v0, qword_1006CA118);
  return Logger.init(subsystem:category:)();
}

void static TypedUserDefaultsKey<>.set(value:to:)()
{
  sub_1000541F0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  URL.absoluteString.getter();
  v6 = String._bridgeToObjectiveC()();

  (*(*(v1 + 8) + 16))(v3);
  v9 = String._bridgeToObjectiveC()();

  [v5 setObject:v6 forKey:v9];

  sub_100054204();
}

uint64_t sub_1000513BC()
{
  sub_10005407C();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100053F54();
  v3 = [v1 v2];

  if (v3)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = type metadata accessor for JSONDecoder();
    sub_1000540C4(v4);
    JSONDecoder.init()();
    v5 = sub_1000443DC(&qword_1006CA288);
    sub_100053B14();
    sub_100054010();
    if (v5)
    {

      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v6 = type metadata accessor for Logger();
      v7 = sub_100053FD0(v6, qword_1006CA118);
      v8 = static os_log_type_t.error.getter();
      if (sub_100054100(v8))
      {
        v9 = sub_100053F78();
        v18 = sub_100053F60();
        *v9 = 136315138;
        sub_10005407C();
        *(v9 + 4) = sub_100052F7C();
        sub_100053FB0(&_mh_execute_header, v10, v11, "Unexpected type value found in defaults for key: %s");
        sub_100044850(v18);
        sub_1000488AC();
        sub_1000488AC();
      }

      if (qword_1006C9770 != -1)
      {
        sub_100053F10();
      }

      v12 = qword_1006DF7E0;

      v13 = sub_10004ECC8();
      sub_1000448B0(v13, v14);
    }

    else
    {

      v15 = sub_10004ECC8();
      sub_1000448B0(v15, v16);
      return v19;
    }
  }

  else
  {
    if (qword_1006C9770 != -1)
    {
      sub_100053F10();
    }

    v12 = qword_1006DF7E0;
  }

  return v12;
}

uint64_t sub_1000515F8(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 dataForKey:v2];

  if (v3)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = type metadata accessor for JSONDecoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000443DC(&qword_1006CA2B8);
    sub_100053C94();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_1000448B0(v4, v6);
    return v12;
  }

  else
  {
    if (qword_1006C9790 != -1)
    {
      swift_once();
    }

    v10 = static AssessmentConfigDefaultsKeys.AirlineNameFormats.defaultValue;
  }

  return v10;
}

uint64_t sub_1000518E0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100053F54();
  v3 = [v1 v2];

  if (v3)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = type metadata accessor for JSONDecoder();
    sub_1000540C4(v4);
    JSONDecoder.init()();
    v5 = sub_1000443DC(&qword_1006CA250);
    sub_100053A30();
    sub_100054010();
    if (v5)
    {

      if (qword_1006C9788 != -1)
      {
        sub_100053D64();
      }

      v6 = type metadata accessor for Logger();
      v7 = sub_100053FD0(v6, qword_1006CA118);
      v8 = static os_log_type_t.error.getter();
      if (sub_100054100(v8))
      {
        v9 = sub_100053F78();
        v18 = sub_100053F60();
        *v9 = 136315138;
        *(v9 + 4) = sub_100052F7C();
        sub_100053FB0(&_mh_execute_header, v10, v11, "Unexpected type value found in defaults for key: %s");
        sub_100044850(v18);
        sub_1000488AC();
        sub_1000488AC();
      }

      if (qword_1006C9758 != -1)
      {
        sub_100053EF0();
      }

      v12 = qword_1006DF7B8;

      v13 = sub_10004ECC8();
      sub_1000448B0(v13, v14);
    }

    else
    {

      v15 = sub_10004ECC8();
      sub_1000448B0(v15, v16);
      return v19;
    }
  }

  else
  {
    if (qword_1006C9758 != -1)
    {
      sub_100053EF0();
    }

    v12 = qword_1006DF7B8;
  }

  return v12;
}

uint64_t static CodableUserDefaultsKey<>.value(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  (*(v5 + 16))(a2, v5);
  v6 = String._bridgeToObjectiveC()();

  v7 = [a1 dataForKey:v6];

  if (v7)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = type metadata accessor for JSONDecoder();
    sub_1000540C4(v8);
    JSONDecoder.init()();
    swift_getAssociatedTypeWitness();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v11 = sub_100053FF8();

    return sub_1000448B0(v11, v12);
  }

  else
  {
    v9 = *(v5 + 24);

    return v9(a2, v5);
  }
}

void static CodableUserDefaultsKey<>.registerDefault(value:to:)()
{
  sub_1000541C0();
  v37 = v0;
  v38 = v1;
  v3 = v2;
  v35 = v5;
  v36 = v4;
  v7 = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  sub_10004EAE0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_100054130();
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  sub_100054130();
  __chkstk_darwin(v19);
  v21 = &v34 - v20;
  v22 = type metadata accessor for JSONEncoder();
  sub_1000540C4(v22);
  JSONEncoder.init()();
  (*(v11 + 16))(v16, v36, v9);
  v23 = sub_100046EA4(v16, 1, AssociatedTypeWitness);
  v34 = v3;
  if (v23 == 1)
  {
    (*(v7 + 24))(v3, v7);
    if (sub_100046EA4(v16, 1, AssociatedTypeWitness) != 1)
    {
      (*(v11 + 8))(v16, v9);
    }
  }

  else
  {
    (*(v17 + 32))(v21, v16, AssociatedTypeWitness);
  }

  sub_100053FF8();
  v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v26 = v25;
  v27 = *(v17 + 8);
  v28 = sub_100053FF8();
  v29(v28);

  sub_1000443DC(&qword_1006CA138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CB870;
  *(inited + 32) = (*(v7 + 16))(v34, v7);
  *(inited + 40) = v31;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(inited + 72) = sub_1000534D8();
  *(inited + 48) = isa;
  sub_100054150();
  Dictionary.init(dictionaryLiteral:)();
  sub_100054150();
  v33 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v35 registerDefaults:v33];

  sub_1000448B0(v24, v26);
  sub_100054088();
}

id sub_100052144()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t static UserDefaultsKey.isSet.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_100052144();
  LOBYTE(a2) = static UserDefaultsKey.isSet(inDefaults:)(v4, a1, a2);

  return a2 & 1;
}

void static UserDefaultsKey.remove(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000540AC(a1, a2, a3);
  v5(v4);
  v6 = String._bridgeToObjectiveC()();

  [v3 removeObjectForKey:v6];
}

void _s3asd20TypedUserDefaultsKeyPAA10Foundation3URLV9ValueTypeRtzrlE5valueAFvgZ_0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  (*(a2 + 16))();
}

void static TypedUserDefaultsKey.registerDefault(value:to:)()
{
  sub_1000541C0();
  v1 = v0;
  v3 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  sub_10004EAE0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100054130();
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  sub_1000443DC(&qword_1006CA138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CB870;
  v14 = *(v3 + 16);
  v15 = sub_100054004();
  *(inited + 32) = v16(v15);
  *(inited + 40) = v17;
  (*(v7 + 16))(v12, v1, v5);
  *(inited + 72) = AssociatedTypeWitness;
  v18 = sub_10005351C((inited + 48));
  if (sub_100046EA4(v12, 1, AssociatedTypeWitness) == 1)
  {
    v19 = *(v3 + 24);
    v20 = sub_100054004();
    v21(v20);
    if (sub_100046EA4(v12, 1, AssociatedTypeWitness) != 1)
    {
      (*(v7 + 8))(v12, v5);
    }
  }

  else
  {
    sub_100053F48(AssociatedTypeWitness);
    (*(v22 + 32))(v18, v12, AssociatedTypeWitness);
  }

  sub_100054150();
  Dictionary.init(dictionaryLiteral:)();
  sub_100054150();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = sub_100053E3C();
  [v24 v25];

  sub_100054088();
}

uint64_t sub_1000524F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7366003 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7759218 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000525C8(char a1)
{
  if (a1)
  {
    return 7759218;
  }

  else
  {
    return 7366003;
  }
}

uint64_t sub_1000525F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000524F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100052620(uint64_t a1)
{
  v2 = sub_10005357C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005265C(uint64_t a1)
{
  v2 = sub_10005357C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AirlineNameFormat.encode(to:)(void *a1)
{
  v3 = sub_1000443DC(&qword_1006CA148);
  v4 = sub_10004EAE0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_10005357C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100053FF8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v11, v3);
}

uint64_t AirlineNameFormat.init(from:)(uint64_t *a1)
{
  v3 = sub_1000443DC(&qword_1006CA158);
  v4 = sub_10004EAE0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v7 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_10005357C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9 = sub_10004EB5C();
    v10(v9);
  }

  sub_100044850(a1);
  return sub_100053FF8();
}

uint64_t sub_100052994@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AirlineNameFormat.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000529C4(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return AirlineNameFormat.encode(to:)(a1);
}

uint64_t sub_100052A18()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static AssessmentConfigDefaultsKeys.AirlineNameFormats.defaultValue = result;
  return result;
}

uint64_t *AssessmentConfigDefaultsKeys.AirlineNameFormats.defaultValue.unsafeMutableAddressor()
{
  if (qword_1006C9790 != -1)
  {
    sub_100053EB0();
  }

  return &static AssessmentConfigDefaultsKeys.AirlineNameFormats.defaultValue;
}

uint64_t static AssessmentConfigDefaultsKeys.AirlineNameFormats.defaultValue.getter()
{
  if (qword_1006C9790 != -1)
  {
    sub_100053EB0();
  }
}

uint64_t sub_100052B00@<X0>(void *a1@<X8>)
{
  AssessmentConfigDefaultsKeys.AirlineNameFormats.defaultValue.unsafeMutableAddressor();
  *a1 = static AssessmentConfigDefaultsKeys.AirlineNameFormats.defaultValue;
}

uint64_t AssessmentConfigurationManager.airlineNameFormats.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1000515F8(v0);

  return v1;
}

void AssessmentConfigurationManager.airlineNameFormats.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    sub_100050D50(a1, v3);
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    sub_100054218();
    v3 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:?];
  }
}

void (*AssessmentConfigurationManager.airlineNameFormats.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = AssessmentConfigurationManager.airlineNameFormats.getter();
  return sub_100052D54;
}

void sub_100052D54(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;

    AssessmentConfigurationManager.airlineNameFormats.setter(v4);
  }

  else
  {
    AssessmentConfigurationManager.airlineNameFormats.setter(*a1);
  }
}

uint64_t AssessmentConfigurationManager.ravioliFetchIfMissingProbability.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10004FF0C(v0);

  return LODWORD(v1);
}

void AssessmentConfigurationManager.ravioliFetchIfMissingProbability.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    sub_100054218();
    v2 = String._bridgeToObjectiveC()();
    [v1 removeObjectForKey:?];
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    sub_1000508A0(v2);
  }
}

void (*AssessmentConfigurationManager.ravioliFetchIfMissingProbability.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  IfMissing = AssessmentConfigurationManager.ravioliFetchIfMissingProbability.getter();
  *(a1 + 8) = IfMissing;
  *(a1 + 12) = BYTE4(IfMissing) & 1;
  return sub_100052F38;
}

uint64_t sub_100052F7C()
{
  sub_10005403C();

  v3 = sub_100053038(v8, 0, 0, 1, v2, v1);
  v4 = v8[0];
  if (v3)
  {
    v5 = v3;

    ObjectType = swift_getObjectType();
    v8[0] = v5;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v8[0] = v2;
    v8[1] = v1;
  }

  v6 = *v0;
  if (*v0)
  {
    sub_10005346C(v8, *v0);
    *v0 = v6 + 32;
  }

  sub_100044850(v8);
  return v4;
}

unint64_t sub_100053038(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100053138(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100053138(uint64_t a1, unint64_t a2)
{
  v4 = sub_100053184(a1, a2);
  sub_10005329C(&off_100691150);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100053184(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10005D208(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10005329C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100053380(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100053380(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000443DC(&qword_1006CA2E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10005346C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1000534C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000534D8()
{
  result = qword_1006CA140;
  if (!qword_1006CA140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CA140);
  }

  return result;
}

uint64_t *sub_10005351C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_10005357C()
{
  result = qword_1006CA150;
  if (!qword_1006CA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA150);
  }

  return result;
}

__n128 sub_1000535D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000535E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100053624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirlineNameFormat.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AirlineNameFormat.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10005380CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100053848()
{
  result = qword_1006CA238;
  if (!qword_1006CA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA238);
  }

  return result;
}

unint64_t sub_1000538A0()
{
  result = qword_1006CA240;
  if (!qword_1006CA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA240);
  }

  return result;
}

unint64_t sub_1000538F8()
{
  result = qword_1006CA248;
  if (!qword_1006CA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA248);
  }

  return result;
}

unint64_t sub_10005394C()
{
  result = qword_1006CA258;
  if (!qword_1006CA258)
  {
    sub_1000471A4(&qword_1006CA250);
    sub_100053BA0(&qword_1006CA260, &type metadata accessor for UUID);
    sub_100053BA0(&qword_1006CA268, type metadata accessor for ServerJSONFetchRetryState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA258);
  }

  return result;
}

unint64_t sub_100053A30()
{
  result = qword_1006CA270;
  if (!qword_1006CA270)
  {
    sub_1000471A4(&qword_1006CA250);
    sub_100053BA0(&qword_1006CA278, &type metadata accessor for UUID);
    sub_100053BA0(&qword_1006CA280, type metadata accessor for ServerJSONFetchRetryState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA270);
  }

  return result;
}

void sub_100053B14()
{
  sub_1000541F0();
  v2 = v1;
  if (!*v1)
  {
    v3 = v0;
    sub_1000471A4(&qword_1006CA288);
    sub_100053BA0(v3, type metadata accessor for PushPayload);
    atomic_store(swift_getWitnessTable(), v2);
  }

  sub_100054204();
}

uint64_t sub_100053BA0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100053BE8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000443DC(a2);
  sub_100053F48(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100053C40()
{
  result = qword_1006CA2C8;
  if (!qword_1006CA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA2C8);
  }

  return result;
}

void sub_100053C94()
{
  sub_1000541F0();
  v2 = v1;
  if (!*v1)
  {
    v3 = v0;
    sub_1000471A4(&qword_1006CA2B8);
    v3();
    atomic_store(swift_getWitnessTable(), v2);
  }

  sub_100054204();
}