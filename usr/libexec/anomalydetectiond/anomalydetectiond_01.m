uint64_t sub_100010DDC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 20))
  {
    v4 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v4, 2u);
  }

  return result;
}

BOOL sub_100010E44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v5 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? *(a1 + 8) : *v4;
  v11 = v9 >= 0 ? *(a2 + 8) : *v5;
  if (memcmp(v10, v11, v7))
  {
    return 0;
  }

LABEL_20:
  result = (*(a2 + 20) & 1) == 0;
  if (*(a1 + 20))
  {
    return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

unint64_t sub_100010F04(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = sub_100011074(&v6, v2);
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 20))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

void *sub_100010F5C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100011000();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_100011018(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

unint64_t sub_100011074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_1000110B4(&v5, a2, v3);
}

unint64_t sub_1000110B4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_100011460(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_1000113B4(a2, a3);
  }

  else
  {
    return sub_1000112BC(a2, a3);
  }
}

unint64_t sub_1000112BC(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_1000113B4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_100011460(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void sub_100011960(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_100011C2C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_100011ECC()
{
  if (qword_1004568C8 != -1)
  {
    sub_100357D64();
  }

  v1 = qword_1004568D0;

  return v1;
}

void sub_100012804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak((v26 + 48));
  _Block_object_dispose(&a18, 8);

  objc_destroyWeak((v27 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_1000128CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000128E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = *(*(a1 + 40) + 8);
    v11 = v8;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  else
  {
    v12 = objc_loadWeakRetained((a1 + 48));
    objc_sync_enter(v12);
    if (([v12 registered] & 1) == 0)
    {
      [v12 setRegistered:1];
      [v12 setSubjectID:v23];
      [v12 setSubjectAuthorizationToken:v7];
      v13 = +[NSUserDefaults standardUserDefaults];
      v14 = [v23 UUIDString];
      v15 = [v12 defaultsSubjectIDKeyName];
      [v13 setObject:v14 forKey:v15];

      v16 = +[NSUserDefaults standardUserDefaults];
      v17 = [v12 defaultsSubjectAuthTokenKeyName];
      [v16 setObject:v7 forKey:v17];

      v18 = +[NSUserDefaults standardUserDefaults];
      v19 = +[NSDate date];
      [v19 timeIntervalSinceReferenceDate];
      v21 = v20;
      v22 = [v12 defaultsRegistrationDateKeyName];
      [v18 setInteger:v21 forKey:v22];
    }

    objc_sync_exit(v12);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100012AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_1000133B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v31 + 32));

  objc_destroyWeak(&a23);
  objc_destroyWeak(&a29);

  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_100013574(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  if (qword_1004568C8 != -1)
  {
    sub_100357D64();
  }

  v6 = qword_1004568D0;
  if (os_log_type_enabled(qword_1004568D0, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138412290;
    v32 = *&v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[fba] evaluating: %@", &v31, 0xCu);
  }

  v7 = [NSData dataWithContentsOfURL:v5 options:0 error:a3];
  if (*a3)
  {
    if (qword_1004568C8 != -1)
    {
      sub_100357D3C();
    }

    v8 = qword_1004568D0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 absoluteString];
      v10 = [*a3 description];
      v31 = 138412546;
      v32 = *&v9;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[fba] Error reading contents of: %@ error,%@", &v31, 0x16u);
    }
  }

  else
  {
    v8 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v7 error:*(a1 + 32)];
    if (v8 && !*a3)
    {
      v16 = +[NSDate now];
      [v16 timeIntervalSinceReferenceDate];
      v18 = v17;
      [v8 decodeDoubleForKey:@"enqueueTime"];
      v20 = v19;

      v21 = +[CSPersistentConfiguration sharedConfiguration];
      v22 = [v21 getFloatDefault:@"FeedbackAssistantExpireDurationSeconds"];
      if ((v22 & &_mh_execute_header) != 0)
      {
        v23 = *&v22;
      }

      else
      {
        v23 = 172800.0;
      }

      if (qword_1004568C8 != -1)
      {
        sub_100357D3C();
      }

      v24 = v18 - v20;
      v25 = qword_1004568D0;
      if (os_log_type_enabled(qword_1004568D0, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 134218496;
        v32 = v24;
        v33 = 2048;
        v34 = 0x4105180000000000;
        v35 = 1024;
        v36 = v24 > v23;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[fba] file age: %f > %f expired,%d", &v31, 0x1Cu);
      }

      if (v24 <= v23)
      {

        v14 = 0;
        goto LABEL_18;
      }

      v26 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"unspooledFilePath"];
      if (v26)
      {
        v27 = +[NSFileManager defaultManager];
        v28 = [v27 removeItemAtPath:v26 error:a3];

        if ((v28 & 1) == 0)
        {
          v29 = sub_100011ECC();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = *a3;
            v31 = 138412290;
            v32 = *&v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[fba] Error deleting file: %@", &v31, 0xCu);
          }
        }
      }
    }

    else
    {
      if (qword_1004568C8 != -1)
      {
        sub_100357D3C();
      }

      v11 = qword_1004568D0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v5 absoluteString];
        v13 = [*a3 description];
        v31 = 138412546;
        v32 = *&v12;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[fba] Error unarchiving metadata for: %@ error,%@", &v31, 0x16u);
      }
    }
  }

  v14 = 1;
LABEL_18:

  return v14;
}

id sub_100013A60(uint64_t a1, void *a2, void *a3)
{
  v46 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v49 = +[NSFileManager defaultManager];
  if ((sub_10001B724(*(a1 + 32), a3, @"oob") & 1) == 0)
  {
    v7 = 0;
    goto LABEL_38;
  }

  v44 = [NSData dataWithContentsOfURL:v46];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_1000128CC;
  v60 = sub_1000128DC;
  v61 = 0;
  v5 = [WeakRetained folderURL];
  v48 = a3;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100014328;
  v55[3] = &unk_100413080;
  v55[4] = &v56;
  v43 = [v49 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:5 errorHandler:v55];

  v6 = v57[5];
  if (v6)
  {
    v7 = 0;
    *a3 = v6;
    goto LABEL_37;
  }

  v40 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v44 error:a3];
  if (([v40 containsValueForKey:@"spooled"] & 1) == 0)
  {
    v7 = 0;
    goto LABEL_36;
  }

  [v40 decodeDoubleForKey:@"enqueueTime"];
  v9 = v8;
  v10 = +[NSDate now];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  v41 = [v40 decodeBoolForKey:@"spooled"];
  v45 = [v40 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  if (v41)
  {
    v42 = [v46 URLByDeletingPathExtension];
  }

  else
  {
    v13 = [v40 decodeObjectOfClass:objc_opt_class() forKey:@"unspooledFilePath"];
    v42 = [NSURL fileURLWithPath:v13];
  }

  [v40 finishDecoding];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v43;
  v14 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v52;
  while (2)
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v52 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v51 + 1) + 8 * i);
      v18 = [v17 pathExtension];
      v19 = [v18 isEqualToString:@"oob"];

      if (v19)
      {
        if ([WeakRetained isFileOldEnoughForDeletion:v17])
        {
          [v49 removeItemAtURL:v17 error:0];
          v20 = 0;
LABEL_26:

          continue;
        }

        v21 = [NSData dataWithContentsOfURL:v17];
        v22 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v21 error:v48];
        if (([v22 containsValueForKey:@"enqueueTime"] & 1) == 0)
        {
          [v49 removeItemAtURL:v17 error:0];
          [v40 finishDecoding];

          goto LABEL_34;
        }

        [v22 decodeDoubleForKey:@"enqueueTime"];
        v24 = v23;
        [WeakRetained oobTimeout];
        if (v24 < v9 + v25)
        {
          v26 = [v22 decodeObjectOfClass:objc_opt_class() forKey:@"oobMetadata"];
          [v26 lookBack];
          if (v9 >= v24 - v27)
          {
            v20 = v26;
            goto LABEL_24;
          }
        }

        v20 = 0;
LABEL_24:
        [v22 finishDecoding];

        if (v20)
        {
          v28 = [v45 keyValuePairs];
          v29 = [NSMutableDictionary dictionaryWithDictionary:v28];

          v30 = [v20 keyValuePairs];
          [v29 addEntriesFromDictionary:v30];

          v31 = [CSStudiesServerUploadMetadata alloc];
          v32 = [v45 payloadType];
          v33 = [v45 channel];
          v34 = [(CSStudiesServerUploadMetadata *)v31 initWithPayloadType:v32 channel:v33 keyValuePairs:v29];

          v35 = [*(a1 + 32) folderURL];
          LOBYTE(v32) = [WeakRetained persistToDiskWithSpooledFile:v41 spoolerDir:v35 fileURL:v42 enqueueTime:v34 metadata:v48 error:v9];

          if ((v32 & 1) == 0)
          {
            v21 = v20;
            goto LABEL_34;
          }
        }

        goto LABEL_26;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_29:

  [WeakRetained oobTimeout];
  if (v12 <= v9 + v36)
  {
    v62 = NSLocalizedDescriptionKey;
    [WeakRetained oobTimeout];
    obj = [NSString stringWithFormat:@"OOB Timeout has not passed for file %.0f %.0f %.0f", *&v12, *&v9, v38];
    v63 = obj;
    v21 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    *v48 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:v21];
LABEL_34:

    v7 = 0;
  }

  else
  {
    v37 = [v46 URLByDeletingPathExtension];
    obj = [v37 URLByAppendingPathExtension:@"metadata"];

    v7 = [v49 copyItemAtURL:v46 toURL:obj error:v48];
  }

LABEL_36:
LABEL_37:

  _Block_object_dispose(&v56, 8);
LABEL_38:

  return v7;
}

void sub_100014160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  _Block_object_dispose(&a37, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100014354(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v67 = +[NSFileManager defaultManager];
  if (sub_10001B724(*(a1 + 32), a3, @"scanner"))
  {
    v66 = [NSData dataWithContentsOfURL:v5];
    v65 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v66 error:a3];
    if (([v65 containsValueForKey:@"spooled"] & 1) == 0 || !objc_msgSend(WeakRetained, "registerForUploadingWithError:", a3))
    {
      v19 = 0;
LABEL_54:

      goto LABEL_55;
    }

    if ([v65 containsValueForKey:@"unspooledFilePath"] && (objc_msgSend(v65, "decodeObjectOfClass:forKey:", objc_opt_class(), @"unspooledFilePath"), v7 = objc_claimAutoreleasedReturnValue(), (v8 = v7) != 0))
    {
      v9 = [v7 lastPathComponent];
      v10 = [WeakRetained folderURL];
      v11 = [v10 URLByAppendingPathComponent:v9];
      v12 = [v11 path];
      v13 = [v67 copyItemAtPath:v8 toPath:v12 error:a3];

      if ((v13 & 1) == 0)
      {

        v16 = 0;
        v19 = 0;
        v18 = v8;
        goto LABEL_53;
      }

      v14 = [WeakRetained folderURL];
      v15 = [v14 URLByAppendingPathComponent:v9];
      v16 = [v15 path];

      v17 = 0;
      v18 = v8;
    }

    else
    {
      v9 = [v5 URLByDeletingPathExtension];
      v16 = [v9 path];
      v18 = 0;
      v17 = 1;
    }

    if (![*(a1 + 32) isFileOldEnoughForDeletion:v5])
    {
      v68 = 0;
      if ([v67 fileExistsAtPath:v16 isDirectory:&v68] && v68 != 1)
      {
        v56 = v17;
        v64 = [v65 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
        [v65 finishDecoding];
        v20 = [v64 keyValuePairs];
        v63 = [v20 objectForKey:@"hasIBSOS"];

        if (v63)
        {
          v21 = v64;
          v22 = [v63 isEqualToString:@"1"];
        }

        else
        {
          v22 = 0;
          v21 = v64;
        }

        v23 = [v21 keyValuePairs];
        v24 = v22;
        v62 = [v23 objectForKey:@"hasOBSOS"];

        if (v62)
        {
          v25 = [v62 isEqualToString:@"1"];
        }

        else
        {
          v25 = 0;
        }

        v26 = [v64 keyValuePairs];
        v61 = [v26 allKeysForObject:@"companionUploaded"];

        v27 = [v64 keyValuePairs];
        v60 = [v27 objectForKey:@"recordingUUID"];

        v28 = [v61 containsObject:v60];
        if (v28)
        {
          v29 = [v64 keyValuePairs];
          [v29 setValue:&off_10043D510 forKey:@"uploadedOnCompanionNotification"];
        }

        v30 = [v64 keyValuePairs];
        v59 = [v30 objectForKey:@"shouldUploadIndependentlyOfSOS"];

        if (v59)
        {
          v31 = [v59 isEqualToString:@"1"];
        }

        else
        {
          v31 = 0;
        }

        v32 = v24 | v25;
        if ((v32 | v31 | v28))
        {
          v33 = [v64 keyValuePairs];
          v53 = [NSMutableDictionary dictionaryWithDictionary:v33];

          [v53 removeObjectsForKeys:&off_10043F0B8];
          [v64 setKeyValuePairs:v53];
          v34 = sub_100011ECC();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 138544130;
            v70 = v16;
            v71 = 1026;
            v72 = v32 & 1;
            v73 = 1026;
            v74 = v31;
            v75 = 1026;
            v76 = v28;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "File %{public}@ will be uploaded, SOS: %{public}d independent: %{public}d companion: %{public}d", buf, 0x1Eu);
          }

          v35 = [WeakRetained configuration];
          v36 = [v35 certificate];
          v52 = sub_100019DD0(v36);

          v37 = [CSHealthWrapMessageConfiguration alloc];
          v57 = +[NSUUID UUID];
          v54 = [WeakRetained subjectID];
          v51 = [WeakRetained configuration];
          v38 = [v51 studyUUID];
          v39 = [v64 channel];
          v40 = [v64 payloadType];
          v41 = [(CSHealthWrapMessageConfiguration *)v37 initWithCertificate:v52 messageUUID:v57 subjectUUID:v54 studyUUID:v38 channel:v39 payloadType:v40];

          v42 = [v64 keyValuePairs];
          [(CSHealthWrapMessageConfiguration *)v41 setKeyValuePairs:v42];

          v58 = [[CSHealthWrapMessage alloc] initWithConfiguration:v41];
          v43 = [v5 URLByDeletingPathExtension];
          v55 = [v43 URLByAppendingPathExtension:@"temp"];

          if ([(CSHealthWrapMessage *)v58 startWithOutputFileURL:v55 error:a3])
          {
            v44 = [NSURL fileURLWithPath:v16];
            if (-[CSHealthWrapMessage appendDataFromFileURL:error:](v58, "appendDataFromFileURL:error:", v44, a3) && -[CSHealthWrapMessage finalizeWithError:](v58, "finalizeWithError:", a3) && [v67 removeItemAtURL:v44 error:a3] && ((v56 & 1) != 0 || objc_msgSend(v67, "removeItemAtPath:error:", v18, a3)))
            {
              v45 = [v5 URLByDeletingPathExtension];
              v46 = [v45 URLByAppendingPathExtension:@"encrypted"];

              v19 = [v67 moveItemAtURL:v55 toURL:v46 error:a3];
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          v49 = v59;
        }

        else
        {
          v47 = sub_100011ECC();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v48 = [v64 keyValuePairs];
            *buf = 138544386;
            v70 = v16;
            v71 = 1026;
            v72 = 0;
            v73 = 1026;
            v74 = 0;
            v75 = 1026;
            v76 = 0;
            v77 = 2114;
            v78 = v48;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "File %{public}@ will NOT be uploaded, SOS: %{public}d independent: %{public}d companion: %{public}d metadata: %{public}@", buf, 0x28u);
          }

          v49 = v59;
          v19 = ([v67 removeItemAtPath:v16 error:a3] & 1) != 0 && ((v56 & 1) != 0 || objc_msgSend(v67, "removeItemAtPath:error:", v18, a3));
        }
      }

      else
      {
        if (!a3)
        {
          v19 = 0;
          goto LABEL_53;
        }

        v79 = NSLocalizedDescriptionKey;
        v80 = [NSString stringWithFormat:@"While scanning, can't find file to encrypt at: %@", v16];
        v64 = v80;
        v63 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:?];
        *a3 = v19 = 0;
      }

      goto LABEL_53;
    }

    [v67 removeItemAtPath:v16 error:0];
    v19 = 1;
LABEL_53:

    goto LABEL_54;
  }

  v19 = 0;
LABEL_55:

  return v19;
}

uint64_t sub_100014F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000128CC;
  v20 = sub_1000128DC;
  v21 = 0;
  if ([WeakRetained isFileOldEnoughForDeletion:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = dispatch_semaphore_create(0);
    v7 = [WeakRetained submitter];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100015104;
    v13 = &unk_1004130D0;
    v15 = &v16;
    v8 = v6;
    v14 = v8;
    [v7 submitFileWithURL:v3 andCompletionHandler:&v10];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v5 = [v17[5] statusCodeIndicatesSucess];
  }

  _Block_object_dispose(&v16, 8);

  return v5;
}

void sub_1000150A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_100015104(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  dispatch_semaphore_signal(*(a1 + 32));
  if (qword_1004568C8 != -1)
  {
    sub_100357D64();
  }

  v8 = qword_1004568D0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(*(*(a1 + 40) + 8) + 40) statusCode];
    v10 = 134218242;
    v11 = v9;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Studies Server ingest: %ld %@", &v10, 0x16u);
  }
}

void sub_100015928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CSStudiesServerUploader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100015B70(id a1)
{
  qword_1004568D0 = os_log_create("com.apple.anomalydetectiond", "StudiesUploader");

  _objc_release_x1();
}

void sub_100015E08(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = v8;
    if ([v10 statusCodeIndicatesSucess] && (objc_msgSend(v10, "MIMEType"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"application/json"), v11, v12))
    {
      v27 = 0;
      v13 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v27];
      v14 = v27;
      if (v14)
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v18 = [v13 objectForKey:@"subjectId"];
        if (v18 && (v19 = v18, [v13 objectForKey:@"token"], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
        {
          v21 = *(a1 + 32);
          v22 = [NSUUID alloc];
          v23 = [v13 objectForKeyedSubscript:@"subjectId"];
          v24 = [v22 initWithUUIDString:v23];
          v25 = [v13 objectForKeyedSubscript:@"token"];
          (*(v21 + 16))(v21, v24, v25, 0);
        }

        else
        {
          v26 = [NSError errorWithDomain:NSCocoaErrorDomain code:1024 userInfo:0];
          (*(*(a1 + 32) + 16))();
        }
      }
    }

    else
    {
      if ([v10 statusCodeIndicatesSucess])
      {
        v28 = NSLocalizedDescriptionKey;
        v15 = [v10 MIMEType];
        v16 = [NSString stringWithFormat:@"Response type: %@", v15];
        v29 = v16;
        v17 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v14 = [NSError errorWithDomain:NSURLErrorDomain code:-1011 userInfo:v17];
      }

      else
      {
        v30 = NSLocalizedDescriptionKey;
        v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"HTTP return code: %ld", [v10 statusCode]);
        v31 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v14 = [NSError errorWithDomain:NSURLErrorDomain code:-1008 userInfo:v16];
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_1000168D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000168F8(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) taskDescription];
        v10 = [*(a1 + 32) absoluteString];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100016F8C(id a1)
{
  qword_100456900 = os_log_create("com.apple.anomalydetectiond", "StudiesSubmitter");

  _objc_release_x1();
}

uint64_t sub_100016FD0(uint64_t result)
{
  *result = &off_1004131B8;
  *(result + 12) = 0;
  return result;
}

void sub_100016FF8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_100017030(uint64_t result, uint64_t a2)
{
  *result = &off_1004131B8;
  *(result + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_10001706C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &off_1004131B8;
    v3 = *(a2 + 12) & 1;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t sub_1000170E0(uint64_t result, uint64_t a2)
{
  *result = &off_1004131B8;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_100017114(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &off_1004131B8;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t sub_100017184(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "nop", *(a1 + 8));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1000171E4(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this, v10 >> 3, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_100017458(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::writeVarInt(this, *(result + 8), 1u);
  }

  return result;
}

void sub_10001751C(id a1)
{
  qword_100458790 = [[CSKappaTap2RadarConfiguration alloc] initWithAllowOnBattery:0 checkIntervalInSeconds:3600 coolDownPeriodInSeconds:1800];

  _objc_release_x1();
}

void sub_100017630(id a1)
{
  qword_100458798 = [[CSKappaTap2RadarConfiguration alloc] initWithAllowOnBattery:1 checkIntervalInSeconds:3600 coolDownPeriodInSeconds:1800];

  _objc_release_x1();
}

id sub_10001782C()
{
  if (qword_100456908 != -1)
  {
    sub_100357DDC();
  }

  v1 = qword_100456910;

  return v1;
}

void sub_100017B0C(_Unwind_Exception *a1)
{
  v6 = v4;

  objc_sync_exit(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_100017B80(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (sub_10001B724(*(a1 + 32), a3, @"ttrAction"))
  {
    v6 = [NSData dataWithContentsOfURL:v5];
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:a3];
    if (![v7 containsValueForKey:@"triggerUUID"] || (objc_msgSend(v7, "containsValueForKey:", @"timestamp") & 1) == 0)
    {
      a3 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"triggerUUID"];
    v9 = [v7 decodeInt64ForKey:@"timestamp"];
    v10 = CFAbsoluteTimeGetCurrent() - v9;
    if (v10 < [*(*(a1 + 32) + 8) coolDownPeriodInSeconds])
    {
      if (qword_100456908 != -1)
      {
        sub_100357DDC();
      }

      v11 = qword_100456910;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [*(*(a1 + 32) + 8) coolDownPeriodInSeconds];
        *buf = 138412546;
        v25 = v8;
        v26 = 2048;
        v27 = &v12[-v10];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Backing down from TTR %@ because we still need to cool down for %lld seconds", buf, 0x16u);
      }

      if (a3)
      {
        v22 = NSLocalizedDescriptionKey;
        v23 = @"Cooldown still in place";
        v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        *a3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:v13];

        a3 = 0;
      }

      goto LABEL_22;
    }

    v14 = [*(a1 + 32) showConfirmationWithError:a3 andEventType:4];
    v15 = v14;
    v17 = v16;
    if (v14 == 3)
    {
      goto LABEL_18;
    }

    if (v14 != 4 && ([*(a1 + 32) showPrivacyNotificationWithError:a3] & 1) != 0)
    {
      v18 = *(a1 + 32);
      v19 = v17;
      if (!v18)
      {
        v20 = v19;
        a3 = 0;
        goto LABEL_19;
      }

      if ([v18 radarWithResult:v15 triggerUUID:v17 ttrType:v8 error:{4, a3}])
      {
LABEL_18:
        v20 = +[NSFileManager defaultManager];
        [v20 removeItemAtURL:v5 error:0];
        a3 = 1;
LABEL_19:

LABEL_21:
LABEL_22:

        goto LABEL_23;
      }
    }

    a3 = 0;
    goto LABEL_21;
  }

  a3 = 0;
LABEL_24:

  return a3;
}

void sub_100018DC4(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_100018F20(void *a1)
{
  v2 = a1[4];
  v17 = 0;
  v3 = [v2 showConfirmationWithError:&v17 andEventType:a1[6]];
  v5 = v4;
  v6 = v17;
  if (v3 - 3 >= 2)
  {
    v7 = a1[4];
    v16 = v6;
    v8 = [v7 showPrivacyNotificationWithError:&v16];
    v9 = v16;

    if (v8)
    {
      v10 = a1[4];
      v11 = v5;
      v12 = a1[5];
      v13 = a1[6];
      v15 = v9;
      if (v10)
      {
        [v10 radarWithResult:v3 triggerUUID:v5 ttrType:v12 error:{v13, &v15}];
        v14 = v15;
        v11 = v9;
        v9 = v14;
      }
    }

    v6 = v9;
  }
}

void sub_10001908C(id a1)
{
  qword_100456910 = os_log_create("com.apple.anomalydetectiond", "KappaTap2Radar");

  _objc_release_x1();
}

id sub_1000190FC(int *a1)
{
  if (qword_100456868 != -1)
  {
    sub_100357F5C();
  }

  v2 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    *buf = 67174657;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "sending sos event for mode %{private}d", buf, 8u);
  }

  PB::Writer::Writer(buf);
  SafetySOSEventDetected::SafetySOSEventDetected(v7);
  v4 = *a1;
  v8 |= 1u;
  v7[2] = v4;
  SafetySOSEventDetected::writeTo(v7, buf);
  v5 = [NSData dataWithBytes:v10 length:*buf - v10];
  SafetySOSEventDetected::~SafetySOSEventDetected(v7);
  PB::Writer::~Writer(buf);

  return v5;
}

void sub_100019228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  SafetySOSEventDetected::~SafetySOSEventDetected(&a9);
  PB::Writer::~Writer(&a11);
  _Unwind_Resume(a1);
}

void sub_100019250(void *a1)
{
  v1 = a1;
  PB::Reader::Reader(v8, [v1 bytes], objc_msgSend(v1, "length"));
  SafetySOSEventDetected::SafetySOSEventDetected(v6);
  SafetySOSEventDetected::readFrom(v6, v8);
  v2 = v7;
  v3 = v6[2];
  if (qword_100456868 != -1)
  {
    sub_100357F70();
  }

  v4 = (v2 << 31 >> 31) & v3;
  v5 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67174657;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "receiving sos event for mode %{private}d", buf, 8u);
  }

  operator new();
}

void sub_10001938C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SafetySOSEventDetected::~SafetySOSEventDetected(&a9);

  _Unwind_Resume(a1);
}

id sub_1000193B4(int8x16_t *a1)
{
  if (qword_100456868 != -1)
  {
    sub_100357F5C();
  }

  v2 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1->u8[0];
    v4 = a1[1].i64[0];
    v5 = a1[2].i64[0];
    *buf = 67109632;
    v14 = v3;
    *v15 = 2048;
    *&v15[2] = v4;
    *&v15[10] = 2048;
    *&v15[12] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "sending safety remote sample [%d %llu] [%llu]", buf, 0x1Cu);
  }

  PB::Writer::Writer(&v11);
  sub_1000038BC(buf);
  v7 = a1->i32[1];
  v6 = a1->i32[2];
  v18 = a1->u8[0];
  v19 = v7;
  v17 = v6;
  v8 = a1[1].i64[0];
  v16 = a1[1].i64[1];
  *v15 = v8;
  v20 |= 0x7Fu;
  *&v15[8] = vextq_s8(a1[2], a1[2], 8uLL);
  sub_1000045E0(buf, &v11);
  v9 = [NSData dataWithBytes:v12 length:v11 - v12];
  PB::Base::~Base(buf);
  PB::Writer::~Writer(&v11);

  return v9;
}

void sub_10001951C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  PB::Base::~Base(va1);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void sub_100019544(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  PB::Reader::Reader(v19, [v3 bytes], objc_msgSend(v3, "length"));
  sub_1000038BC(v14);
  if (sub_100003D14(v14, v19))
  {
    v4 = v18;
    v5 = v17;
    if (v18)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

    v12 = v16;
    if (qword_100456868 != -1)
    {
      sub_100357F70();
    }

    v7 = v5 & ((4 * v4) >> 7);
    v8 = vceqz_s32(vand_s8(vdup_n_s32(v4), 0x400000008));
    v9.i64[0] = v8.i32[0];
    v9.i64[1] = v8.i32[1];
    v13 = vbicq_s8(vextq_s8(v12, v12, 8uLL), v9);
    v10 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v21 = v7;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = v13.i64[1];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "receiving safety remote sample [%d %llu] [%llu]", buf, 0x1Cu);
    }

    operator new();
  }

  if (qword_100456868 != -1)
  {
    sub_100357F70();
  }

  v11 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "receiving invalid safety remote sample", buf, 2u);
  }

  *a2 = 0;
  PB::Base::~Base(v14);
}

void sub_1000197A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PB::Base::~Base(va);

  _Unwind_Resume(a1);
}

id sub_1000197C8()
{
  v0 = rand();
  if (qword_100456868 != -1)
  {
    sub_100357F5C();
  }

  v1 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "sending safety lend punch thru %d", buf, 8u);
  }

  PB::Writer::Writer(buf);
  sub_100005C80(v4);
  v5 |= 1u;
  v4[2] = v0;
  sub_10000612C(v4, buf);
  v2 = [NSData dataWithBytes:v7 length:*buf - v7];
  PB::Base::~Base(v4);
  PB::Writer::~Writer(buf);

  return v2;
}

void sub_1000198F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  PB::Base::~Base(&a9);
  PB::Writer::~Writer(&a11);
  _Unwind_Resume(a1);
}

void sub_100019918(void *a1)
{
  v1 = a1;
  PB::Reader::Reader(v8, [v1 bytes], objc_msgSend(v1, "length"));
  sub_100005C80(v6);
  sub_100005EB8(v6, v8);
  v2 = v7;
  v3 = v6[2];
  if (qword_100456868 != -1)
  {
    sub_100357F70();
  }

  v4 = (v2 << 31 >> 31) & v3;
  v5 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "receiving safety lend punch thru %d", buf, 8u);
  }

  operator new();
}

void sub_100019A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PB::Base::~Base(&a9);

  _Unwind_Resume(a1);
}

id sub_100019A7C()
{
  v0 = rand();
  if (qword_100456868 != -1)
  {
    sub_100357F5C();
  }

  v1 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "sending safety retract punch thru %d", buf, 8u);
  }

  PB::Writer::Writer(buf);
  sub_100016FD0(v4);
  v5 |= 1u;
  v4[2] = v0;
  sub_100017458(v4, buf);
  v2 = [NSData dataWithBytes:v7 length:*buf - v7];
  PB::Base::~Base(v4);
  PB::Writer::~Writer(buf);

  return v2;
}

void sub_100019BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  PB::Base::~Base(&a9);
  PB::Writer::~Writer(&a11);
  _Unwind_Resume(a1);
}

void sub_100019BCC(void *a1)
{
  v1 = a1;
  PB::Reader::Reader(v8, [v1 bytes], objc_msgSend(v1, "length"));
  sub_100016FD0(v6);
  sub_1000171E4(v6, v8);
  v2 = v7;
  v3 = v6[2];
  if (qword_100456868 != -1)
  {
    sub_100357F70();
  }

  v4 = (v2 << 31 >> 31) & v3;
  v5 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "receiving safety retract punch thru %d", buf, 8u);
  }

  operator new();
}

void sub_100019D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PB::Base::~Base(&a9);

  _Unwind_Resume(a1);
}

void sub_100019D30(id a1)
{
  qword_100456870 = os_log_create("com.apple.anomalydetectiond", "Companion");

  _objc_release_x1();
}

id sub_100019D74(void *a1)
{
  v1 = a1;
  v2 = [[NSData alloc] initWithBase64EncodedString:v1 options:0];

  return v2;
}

SecCertificateRef sub_100019DD0(void *a1)
{
  v1 = sub_100019D74(a1);
  v2 = SecCertificateCreateWithData(0, v1);

  return v2;
}

void sub_10001A6EC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = +[(GPBMessage *)CSHWProtoKeyValue];
  v7 = +[(GPBMessage *)CSHWProtoValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setType:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setType:3];
      [v7 setString:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 setType:4];
        [v7 setInteger:{objc_msgSend(v5, "integerValue")}];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 setType:2];
          [v7 setBytes:v5];
        }

        else
        {
          [NSException raise:NSInvalidArgumentException format:@"Invalid value type for key: %@", v8];
        }
      }
    }
  }

  [v6 setValue:v7];
  [v6 setKey:v8];
  [*(a1 + 32) addObject:v6];
}

void sub_10001AB58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ABCC;
  block[3] = &unk_100413310;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_10001ABCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[1] data];
  [v1 _writeDataToCompressor:v2];
}

void sub_10001B55C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  obj = 0;
  v4 = [v3 appendData:v2 error:&obj];
  v5 = obj;
  *(*(a1 + 32) + 82) = v4;
  objc_storeStrong((*(a1 + 32) + 88), v5);
}

void sub_10001B624(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  obj = 0;
  v3 = [v2 finalizeWithError:&obj];
  v4 = obj;
  *(*(a1 + 32) + 82) = v3;
  objc_storeStrong((*(a1 + 32) + 88), v4);
}

uint64_t sub_10001B724(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v19 = 0;
  v8 = [v5 folderURL];
  v9 = [v8 path];
  v10 = [v7 fileExistsAtPath:v9 isDirectory:&v19];
  if (v19)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ((v11 & 1) == 0)
  {
    if (a2)
    {
      v24 = NSLocalizedDescriptionKey;
      v12 = [v5 folderURL];
      v13 = [v12 path];
      v14 = [NSString stringWithFormat:@"On %@ find spooler directory at: %@", v6, v13];
      v25 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:v15];
    }

    if (qword_100456938 != -1)
    {
      sub_100358158();
    }

    v16 = qword_100456940;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v5 folderURL];
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "On %@, spooler dir %@ doesn't exist", buf, 0x16u);
    }
  }

  return v11;
}

void sub_10001C074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, char a47)
{
  _Block_object_dispose(&a41, 8);

  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C144(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001C15C(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v5 = obj;
  *(*(*(a1 + 40) + 8) + 24) = 1;

  return 0;
}

void sub_10001C1B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 path];
  LODWORD(v4) = [v4 fileExistsAtPath:v5];

  if (v4)
  {
    if (qword_100456938 != -1)
    {
      sub_100358180();
    }

    v6 = qword_100456940;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 40) folderURL];
      v8 = [*(a1 + 40) extension];
      *buf = 138412802;
      v24 = v7;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Folder monitor for %@ %@ attempting action on %@", buf, 0x20u);
    }

    v9 = [*(a1 + 40) action];
    v22 = 0;
    v10 = (v9)[2](v9, v3, &v22);
    v11 = v22;

    if (v10)
    {
      v12 = *(a1 + 32);
      v21 = v11;
      v13 = [v12 removeItemAtURL:v3 error:&v21];
      v14 = v21;

      if ((v13 & 1) == 0)
      {
        if (qword_100456938 != -1)
        {
          sub_100358158();
        }

        v15 = qword_100456940;
        if (os_log_type_enabled(qword_100456940, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v24 = v3;
          v25 = 2112;
          v26 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to remove file %@: %@", buf, 0x16u);
        }
      }

      if (qword_100456938 != -1)
      {
        sub_100358158();
      }

      v16 = qword_100456940;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [*(a1 + 40) folderURL];
        v18 = [*(a1 + 40) extension];
        *buf = 138412802;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Action for %@ %@ on %@ succeeded", buf, 0x20u);
      }
    }

    else
    {
      if (qword_100456938 != -1)
      {
        sub_100358158();
      }

      v16 = qword_100456940;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = [*(a1 + 40) folderURL];
        v20 = [*(a1 + 40) extension];
        *buf = 138413058;
        v24 = v19;
        v25 = 2112;
        v26 = v20;
        v27 = 2112;
        v28 = v3;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Action for %@ %@ on %@ failed: %@", buf, 0x2Au);
      }

      v14 = v11;
    }
  }
}

void sub_10001CA6C(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (qword_100456938 != -1)
  {
    sub_100358180();
  }

  v5 = qword_100456940;
  if (os_log_type_enabled(qword_100456940, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    *buf = 134218496;
    *v36 = state;
    *&v36[8] = 2048;
    *&v36[10] = v6;
    *&v36[18] = 2048;
    *&v36[20] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "xpc activity state %ld begin %p %p", buf, 0x20u);
  }

  if (state == 2)
  {
    v17 = +[CSPower sharedInstance];
    [v17 powerlogActivity:4 event:1 isActive:CFAbsoluteTimeGetCurrent()];

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v34 = 0;
    v19 = [WeakRetained scan:&v34];
    v20 = v34;

    if ((v19 & 1) == 0)
    {
      if (qword_100456938 != -1)
      {
        sub_100358158();
      }

      v21 = qword_100456940;
      if (os_log_type_enabled(qword_100456940, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 40);
        *buf = 138412546;
        *v36 = v22;
        *&v36[8] = 2112;
        *&v36[10] = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error scanning folder on activity %@: %@", buf, 0x16u);
      }
    }

    v23 = xpc_activity_set_state(v3, 5);
    if (qword_100456938 != -1)
    {
      sub_100358158();
    }

    v24 = qword_100456940;
    if (os_log_type_enabled(qword_100456940, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 40);
      *buf = 138412802;
      *v36 = v25;
      *&v36[8] = 1024;
      *&v36[10] = v19;
      *&v36[14] = 1024;
      *&v36[16] = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Ran %@ activity. Worked: %d set as done: %d", buf, 0x18u);
    }

    v26 = +[CSPower sharedInstance];
    [v26 powerlogActivity:4 event:0 isActive:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    if (!state)
    {
      v7 = +[CSPower sharedInstance];
      [v7 powerlogActivity:3 event:1 isActive:CFAbsoluteTimeGetCurrent()];

      v8 = +[CSPersistentConfiguration sharedConfiguration];
      v9 = [v8 integerForKey:@"UploaderOverrideAllIntervals"];

      if (!v9)
      {
        if (qword_100456938 != -1)
        {
          sub_100358158();
        }

        v29 = qword_100456940;
        if (os_log_type_enabled(qword_100456940, OS_LOG_TYPE_INFO))
        {
          v30 = *(a1 + 40);
          *buf = 138412290;
          *v36 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Checked in for folder scanning activity: %@", buf, 0xCu);
        }

LABEL_41:
        v33 = +[CSPower sharedInstance];
        [v33 powerlogActivity:3 event:0 isActive:CFAbsoluteTimeGetCurrent()];

        if (qword_100456938 != -1)
        {
          sub_100358158();
        }

        v28 = qword_100456940;
        if (os_log_type_enabled(qword_100456940, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          *v36 = 0;
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      v10 = xpc_activity_copy_criteria(v3);
      v11 = v10;
      if (v10)
      {
        xpc_dictionary_set_uint64(v10, XPC_ACTIVITY_INTERVAL, v9);
        xpc_activity_set_criteria(v3, v11);
        if (qword_100456938 != -1)
        {
          sub_100358158();
        }

        v12 = qword_100456940;
        if (!os_log_type_enabled(qword_100456940, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        v13 = *(a1 + 40);
        *buf = 134218242;
        *v36 = v9;
        *&v36[8] = 2112;
        *&v36[10] = v13;
        v14 = "Checked in with overriden period of %llu seconds for folder scanning activity: %@";
        v15 = v12;
        v16 = 22;
      }

      else
      {
        if (qword_100456938 != -1)
        {
          sub_100358158();
        }

        v31 = qword_100456940;
        if (!os_log_type_enabled(qword_100456940, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        v32 = *(a1 + 40);
        *buf = 138412290;
        *v36 = v32;
        v14 = "Checked in with NULL criteria for folder scanning activity: %@";
        v15 = v31;
        v16 = 12;
      }

      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
LABEL_40:

      goto LABEL_41;
    }

    if (qword_100456938 != -1)
    {
      sub_100358158();
    }

    v27 = qword_100456940;
    if (os_log_type_enabled(qword_100456940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *v36 = 0;
      *&v36[4] = 2082;
      *&v36[6] = "";
      *&v36[14] = 2050;
      *&v36[16] = state;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skip folder scanning activity, Current State:%{public}ld}", buf, 0x1Cu);
    }
  }

  if (qword_100456938 != -1)
  {
    sub_100358158();
  }

  v28 = qword_100456940;
  if (os_log_type_enabled(qword_100456940, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v36 = state;
LABEL_45:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "xpc activity state %ld end", buf, 0xCu);
  }

LABEL_46:
}

void sub_10001D20C(id a1)
{
  qword_100456940 = os_log_create("com.apple.anomalydetectiond", "FolderMonitor");

  _objc_release_x1();
}

void sub_10001D604(id a1)
{
  v1 = [CSStudiesServerConfiguration alloc];
  v4 = [[NSUUID alloc] initWithUUIDString:@"28ed3541-9da1-411d-81ae-eb620f6b3a8d"];
  v2 = [CSStudiesServerConfiguration initWithServer:v1 certificate:"initWithServer:certificate:study:andAuthorizationID:" study:@"https://ingest.apple-studies.com" andAuthorizationID:@"MIIDjTCCAnWgAwIBAgIEFN2TTjANBgkqhkiG9w0BAQsFADB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwHhcNMTcwNDE4MTgzODI4WhcNMTgwNDE4MTgzODI4WjB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDvR2JtAkPdG/BldPRT7EupiMo4ZvLOzztoDeul2awbM9fBU8kc3nlapOi2vooX62cyPJKsqCas465gy4U3JJBMVg/MjshfUIDBb1LQzGtvfYkirdpWOqJ7riQ0Wbe6LLRFD0963JNF1lyMHkf7OqZegIh8c+xGGgd2ynkdivaKOr2d7Qf67y2UarQc+qIgkljsaOugfBr3jsUcO0tE0j9LGOvTZZEZd3ykXUEChIkwGW+QWWd3Indit4ArSMGDjkrltGX88FBWgbPYe8dgjWcE2GkEEWhJFwIiTCHQZFHlizSzY5vyG0mcbgdl/HjbyswUn3kw8CvmSOuzi7YNolypAgMBAAGjITAfMB0GA1UdDgQWBBRaESD5M6MGBsOr4aMdm42SVZwycDANBgkqhkiG9w0BAQsFAAOCAQEAVg1mV0Zf9/o+cAbwvcQgdGIbeUghVdDybkVkeew/3dpdRN/S9k9BTusNL4gNKbRRIjJiESq68rP++8BP7xhIO3EsICFAo/fp87af1EncYIjwh9V6P77V+wnvU8Ehgj9tGj5GhU/o1tmCLmBsJi+uUz8vd7p8S/CbH0wUpe0uov4d79R1DGYrM+fansMd9JnmZfLeGU1sx2q+hEfAZyuSRJEf4+GbgEuthq0aBNC6VeXVmmNqd36at3F9O4DzJiJOZiEHXNYOXiyJYSBEvgKdd23G9tR1Pdqw//0sKv/C4b3FQWowN7uZzJ3SJTrolzpUGlTSy5PPeXsmsL7TKM27uA=="];
  v3 = qword_1004587B0;
  qword_1004587B0 = v2;
}

void sub_10001D6F4(id a1)
{
  v1 = [CSStudiesServerConfiguration alloc];
  v4 = [[NSUUID alloc] initWithUUIDString:@"219833ee-013d-42e5-ae9b-5bc7f73eadeb"];
  v2 = [CSStudiesServerConfiguration initWithServer:v1 certificate:"initWithServer:certificate:study:andAuthorizationID:" study:@"https://ingest.apple-studies.com" andAuthorizationID:@"MIIDjTCCAnWgAwIBAgIEFN2TTjANBgkqhkiG9w0BAQsFADB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwHhcNMTcwNDE4MTgzODI4WhcNMTgwNDE4MTgzODI4WjB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDvR2JtAkPdG/BldPRT7EupiMo4ZvLOzztoDeul2awbM9fBU8kc3nlapOi2vooX62cyPJKsqCas465gy4U3JJBMVg/MjshfUIDBb1LQzGtvfYkirdpWOqJ7riQ0Wbe6LLRFD0963JNF1lyMHkf7OqZegIh8c+xGGgd2ynkdivaKOr2d7Qf67y2UarQc+qIgkljsaOugfBr3jsUcO0tE0j9LGOvTZZEZd3ykXUEChIkwGW+QWWd3Indit4ArSMGDjkrltGX88FBWgbPYe8dgjWcE2GkEEWhJFwIiTCHQZFHlizSzY5vyG0mcbgdl/HjbyswUn3kw8CvmSOuzi7YNolypAgMBAAGjITAfMB0GA1UdDgQWBBRaESD5M6MGBsOr4aMdm42SVZwycDANBgkqhkiG9w0BAQsFAAOCAQEAVg1mV0Zf9/o+cAbwvcQgdGIbeUghVdDybkVkeew/3dpdRN/S9k9BTusNL4gNKbRRIjJiESq68rP++8BP7xhIO3EsICFAo/fp87af1EncYIjwh9V6P77V+wnvU8Ehgj9tGj5GhU/o1tmCLmBsJi+uUz8vd7p8S/CbH0wUpe0uov4d79R1DGYrM+fansMd9JnmZfLeGU1sx2q+hEfAZyuSRJEf4+GbgEuthq0aBNC6VeXVmmNqd36at3F9O4DzJiJOZiEHXNYOXiyJYSBEvgKdd23G9tR1Pdqw//0sKv/C4b3FQWowN7uZzJ3SJTrolzpUGlTSy5PPeXsmsL7TKM27uA=="];
  v3 = qword_1004587B8;
  qword_1004587B8 = v2;
}

void sub_10001D7E4(id a1)
{
  v1 = [CSStudiesServerConfiguration alloc];
  v4 = [[NSUUID alloc] initWithUUIDString:@"33f4a2c5-8ff4-4a20-b5bb-6120df9ef511"];
  v2 = [CSStudiesServerConfiguration initWithServer:v1 certificate:"initWithServer:certificate:study:andAuthorizationID:" study:@"https://ingest.stg.apple-studies.com" andAuthorizationID:@"MIIDjTCCAnWgAwIBAgIEDZOX8jANBgkqhkiG9w0BAQsFADB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwHhcNMTcwNDE4MTgzNzIxWhcNMTgwNDE4MTgzNzIxWjB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC3PXGIYi84LTNzcOvbKPly9+gwYjg2D5DJnMstVFrAkjfNp+6fE8PtBQPfCxYBJGnVWAMNAKHjsTHJtpq92gW+l/WG1/SGnG251LN13ugBgSI7oaf8aF3iAJ4dyFnb5xScZoFKjwXtoR2HLFgxpCfG6KYWABSvubaupxIwmqqRMNfQb6xWHhu0y1MJG6U0UX+9PghEw5xFTtIoEpkIiuOEWU6LwdhW5cnrnVFn49f9j02LHkBq/eLbjm7lXHIGwYolhNN/RurwpF2MbAaAw4pF6b//WswZUSepbnFtlfCEo3HjraNe1nVB2S+f8pysdc67Lfr8vhn6rjK2f0nQ11oZAgMBAAGjITAfMB0GA1UdDgQWBBQ/j4HEfBnPOz4ZGC5Add8PGVw6oDANBgkqhkiG9w0BAQsFAAOCAQEAEoMDoP4ls0RxjZJesTYPv+7XHqcREDlBup4vJLUSOrOU41jKaDUH2dygzdntpaSh8C3hoY/BYwWIxNPKlETikn0bNAz0Q+TX1rNPc67ZGyJwGisIsIYdcXjrL1oc6dp45KdPN1KQY2VrW3XCXbswoT+65noI13WIXpzky+UugnbQ3fGfOw/ku6NYcZ/VfVPl9nr8JdEWY9Jlbo1Ze8J7XGrDhn2llzWDfBMZOuETJG5ZxIJum2xnIblb9I0gxxMH9BGujxCw02xoSdAbrS2kQEhDCfyE4/vOMloTnjUV95DYezSfJ08CX/Uc0nm1hCB+5CjfATWNwaYddzWbzeiWag=="];
  v3 = qword_1004587C0;
  qword_1004587C0 = v2;
}

void sub_10001D8D4(id a1)
{
  v1 = [CSStudiesServerConfiguration alloc];
  v4 = [[NSUUID alloc] initWithUUIDString:@"b4e6b326-3293-449f-a764-b30090b310fa"];
  v2 = [CSStudiesServerConfiguration initWithServer:v1 certificate:"initWithServer:certificate:study:andAuthorizationID:" study:@"https://ingest.stg.apple-studies.com" andAuthorizationID:@"MIIDjTCCAnWgAwIBAgIEDZOX8jANBgkqhkiG9w0BAQsFADB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwHhcNMTcwNDE4MTgzNzIxWhcNMTgwNDE4MTgzNzIxWjB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC3PXGIYi84LTNzcOvbKPly9+gwYjg2D5DJnMstVFrAkjfNp+6fE8PtBQPfCxYBJGnVWAMNAKHjsTHJtpq92gW+l/WG1/SGnG251LN13ugBgSI7oaf8aF3iAJ4dyFnb5xScZoFKjwXtoR2HLFgxpCfG6KYWABSvubaupxIwmqqRMNfQb6xWHhu0y1MJG6U0UX+9PghEw5xFTtIoEpkIiuOEWU6LwdhW5cnrnVFn49f9j02LHkBq/eLbjm7lXHIGwYolhNN/RurwpF2MbAaAw4pF6b//WswZUSepbnFtlfCEo3HjraNe1nVB2S+f8pysdc67Lfr8vhn6rjK2f0nQ11oZAgMBAAGjITAfMB0GA1UdDgQWBBQ/j4HEfBnPOz4ZGC5Add8PGVw6oDANBgkqhkiG9w0BAQsFAAOCAQEAEoMDoP4ls0RxjZJesTYPv+7XHqcREDlBup4vJLUSOrOU41jKaDUH2dygzdntpaSh8C3hoY/BYwWIxNPKlETikn0bNAz0Q+TX1rNPc67ZGyJwGisIsIYdcXjrL1oc6dp45KdPN1KQY2VrW3XCXbswoT+65noI13WIXpzky+UugnbQ3fGfOw/ku6NYcZ/VfVPl9nr8JdEWY9Jlbo1Ze8J7XGrDhn2llzWDfBMZOuETJG5ZxIJum2xnIblb9I0gxxMH9BGujxCw02xoSdAbrS2kQEhDCfyE4/vOMloTnjUV95DYezSfJ08CX/Uc0nm1hCB+5CjfATWNwaYddzWbzeiWag=="];
  v3 = qword_1004587C8;
  qword_1004587C8 = v2;
}

void sub_10001D9C4(id a1)
{
  v1 = [CSStudiesServerConfiguration alloc];
  v4 = [[NSUUID alloc] initWithUUIDString:@"33f4a2c5-8ff4-4a20-b5bb-6120df9ef511"];
  v2 = [CSStudiesServerConfiguration initWithServer:v1 certificate:"initWithServer:certificate:study:andAuthorizationID:" study:@"https://ingest.stg.apple-studies.com" andAuthorizationID:@"MIIDjTCCAnWgAwIBAgIEDZOX8jANBgkqhkiG9w0BAQsFADB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwHhcNMTcwNDE4MTgzNzIxWhcNMTgwNDE4MTgzNzIxWjB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC3PXGIYi84LTNzcOvbKPly9+gwYjg2D5DJnMstVFrAkjfNp+6fE8PtBQPfCxYBJGnVWAMNAKHjsTHJtpq92gW+l/WG1/SGnG251LN13ugBgSI7oaf8aF3iAJ4dyFnb5xScZoFKjwXtoR2HLFgxpCfG6KYWABSvubaupxIwmqqRMNfQb6xWHhu0y1MJG6U0UX+9PghEw5xFTtIoEpkIiuOEWU6LwdhW5cnrnVFn49f9j02LHkBq/eLbjm7lXHIGwYolhNN/RurwpF2MbAaAw4pF6b//WswZUSepbnFtlfCEo3HjraNe1nVB2S+f8pysdc67Lfr8vhn6rjK2f0nQ11oZAgMBAAGjITAfMB0GA1UdDgQWBBQ/j4HEfBnPOz4ZGC5Add8PGVw6oDANBgkqhkiG9w0BAQsFAAOCAQEAEoMDoP4ls0RxjZJesTYPv+7XHqcREDlBup4vJLUSOrOU41jKaDUH2dygzdntpaSh8C3hoY/BYwWIxNPKlETikn0bNAz0Q+TX1rNPc67ZGyJwGisIsIYdcXjrL1oc6dp45KdPN1KQY2VrW3XCXbswoT+65noI13WIXpzky+UugnbQ3fGfOw/ku6NYcZ/VfVPl9nr8JdEWY9Jlbo1Ze8J7XGrDhn2llzWDfBMZOuETJG5ZxIJum2xnIblb9I0gxxMH9BGujxCw02xoSdAbrS2kQEhDCfyE4/vOMloTnjUV95DYezSfJ08CX/Uc0nm1hCB+5CjfATWNwaYddzWbzeiWag=="];
  v3 = qword_1004587D0;
  qword_1004587D0 = v2;
}

void sub_10001DAB4(id a1)
{
  v1 = [CSStudiesServerConfiguration alloc];
  v4 = [[NSUUID alloc] initWithUUIDString:@"fc2a58e3-5fef-42b8-89fc-a2e0bfe517b0"];
  v2 = [CSStudiesServerConfiguration initWithServer:v1 certificate:"initWithServer:certificate:study:andAuthorizationID:" study:@"https://ingest.stg.apple-studies.com" andAuthorizationID:@"MIIDjTCCAnWgAwIBAgIEDZOX8jANBgkqhkiG9w0BAQsFADB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwHhcNMTcwNDE4MTgzNzIxWhcNMTgwNDE4MTgzNzIxWjB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC3PXGIYi84LTNzcOvbKPly9+gwYjg2D5DJnMstVFrAkjfNp+6fE8PtBQPfCxYBJGnVWAMNAKHjsTHJtpq92gW+l/WG1/SGnG251LN13ugBgSI7oaf8aF3iAJ4dyFnb5xScZoFKjwXtoR2HLFgxpCfG6KYWABSvubaupxIwmqqRMNfQb6xWHhu0y1MJG6U0UX+9PghEw5xFTtIoEpkIiuOEWU6LwdhW5cnrnVFn49f9j02LHkBq/eLbjm7lXHIGwYolhNN/RurwpF2MbAaAw4pF6b//WswZUSepbnFtlfCEo3HjraNe1nVB2S+f8pysdc67Lfr8vhn6rjK2f0nQ11oZAgMBAAGjITAfMB0GA1UdDgQWBBQ/j4HEfBnPOz4ZGC5Add8PGVw6oDANBgkqhkiG9w0BAQsFAAOCAQEAEoMDoP4ls0RxjZJesTYPv+7XHqcREDlBup4vJLUSOrOU41jKaDUH2dygzdntpaSh8C3hoY/BYwWIxNPKlETikn0bNAz0Q+TX1rNPc67ZGyJwGisIsIYdcXjrL1oc6dp45KdPN1KQY2VrW3XCXbswoT+65noI13WIXpzky+UugnbQ3fGfOw/ku6NYcZ/VfVPl9nr8JdEWY9Jlbo1Ze8J7XGrDhn2llzWDfBMZOuETJG5ZxIJum2xnIblb9I0gxxMH9BGujxCw02xoSdAbrS2kQEhDCfyE4/vOMloTnjUV95DYezSfJ08CX/Uc0nm1hCB+5CjfATWNwaYddzWbzeiWag=="];
  v3 = qword_1004587D8;
  qword_1004587D8 = v2;
}

void sub_10001DBA4(id a1)
{
  v1 = [CSStudiesServerConfiguration alloc];
  v4 = [[NSUUID alloc] initWithUUIDString:@"75ff2079-4a69-4622-af4d-5e561a6f7323"];
  v2 = [CSStudiesServerConfiguration initWithServer:v1 certificate:"initWithServer:certificate:study:andAuthorizationID:" study:@"https://ingest.apple-studies.com" andAuthorizationID:@"MIIDjTCCAnWgAwIBAgIEFN2TTjANBgkqhkiG9w0BAQsFADB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwHhcNMTcwNDE4MTgzODI4WhcNMTgwNDE4MTgzODI4WjB3MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzEXMBUGA1UEChMOQXBwbGUgSW50ZXJuYWwxDzANBgNVBAsTBkhlYWx0aDEdMBsGA1UEAxMUY29tLmFwcGxlLkhlYWx0aERhdGEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDvR2JtAkPdG/BldPRT7EupiMo4ZvLOzztoDeul2awbM9fBU8kc3nlapOi2vooX62cyPJKsqCas465gy4U3JJBMVg/MjshfUIDBb1LQzGtvfYkirdpWOqJ7riQ0Wbe6LLRFD0963JNF1lyMHkf7OqZegIh8c+xGGgd2ynkdivaKOr2d7Qf67y2UarQc+qIgkljsaOugfBr3jsUcO0tE0j9LGOvTZZEZd3ykXUEChIkwGW+QWWd3Indit4ArSMGDjkrltGX88FBWgbPYe8dgjWcE2GkEEWhJFwIiTCHQZFHlizSzY5vyG0mcbgdl/HjbyswUn3kw8CvmSOuzi7YNolypAgMBAAGjITAfMB0GA1UdDgQWBBRaESD5M6MGBsOr4aMdm42SVZwycDANBgkqhkiG9w0BAQsFAAOCAQEAVg1mV0Zf9/o+cAbwvcQgdGIbeUghVdDybkVkeew/3dpdRN/S9k9BTusNL4gNKbRRIjJiESq68rP++8BP7xhIO3EsICFAo/fp87af1EncYIjwh9V6P77V+wnvU8Ehgj9tGj5GhU/o1tmCLmBsJi+uUz8vd7p8S/CbH0wUpe0uov4d79R1DGYrM+fansMd9JnmZfLeGU1sx2q+hEfAZyuSRJEf4+GbgEuthq0aBNC6VeXVmmNqd36at3F9O4DzJiJOZiEHXNYOXiyJYSBEvgKdd23G9tR1Pdqw//0sKv/C4b3FQWowN7uZzJ3SJTrolzpUGlTSy5PPeXsmsL7TKM27uA=="];
  v3 = qword_1004587E0;
  qword_1004587E0 = v2;
}

void sub_10001EEB4(uint64_t a1)
{
  if (qword_1004567F8 != -1)
  {
    sub_100358220();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 96);
    v5 = *(a1 + 100);
    v6 = *(a1 + 104);
    v7 = *(a1 + 208);
    v8 = *(a1 + 216);
    v9 = *(a1 + 228);
    v10 = *(a1 + 236);
    v11 = *(a1 + 248);
    v12 = *(a1 + 256);
    v13 = *(a1 + 268);
    v14 = *(a1 + 276);
    v15 = *(a1 + 288);
    v16 = *(a1 + 296);
    v17 = *(a1 + 308);
    v18 = *(a1 + 316);
    v19 = *(a1 + 120);
    v20 = *(a1 + 16);
    v21 = *(a1 + 20);
    v22 = *(a1 + 24);
    v23 = *(a1 + 28);
    v24 = *(a1 + 32);
    v25 = *(a1 + 36);
    v26 = *(a1 + 40);
    v27 = *(a1 + 44);
    v28 = *(a1 + 48);
    v29 = *(a1 + 52);
    v30 = *(a1 + 56);
    v31 = *(a1 + 60);
    v32 = *(a1 + 64);
    v33 = *(a1 + 68);
    v34 = *(a1 + 72);
    v35 = *(a1 + 76);
    v36 = *(a1 + 512);
    v37 = *(a1 + 520);
    v38[0] = 67248896;
    v38[1] = v3;
    v39 = 2050;
    v40 = v4;
    v41 = 2050;
    v42 = v5;
    v43 = 2050;
    v44 = v6;
    v45 = 2050;
    v46 = v7;
    v47 = 2050;
    v48 = v8;
    v49 = 2050;
    v50 = v9;
    v51 = 2050;
    v52 = v10;
    v53 = 2050;
    v54 = v11;
    v55 = 2050;
    v56 = v12;
    v57 = 2050;
    v58 = v13;
    v59 = 2050;
    v60 = v14;
    v61 = 2050;
    v62 = v15;
    v63 = 2050;
    v64 = v16;
    v65 = 2050;
    v66 = v17;
    v67 = 2050;
    v68 = v18;
    v69 = 2050;
    v70 = v19;
    v71 = 2050;
    v72 = v20;
    v73 = 2050;
    v74 = v21;
    v75 = 2050;
    v76 = v22;
    v77 = 1026;
    v78 = v23;
    v79 = 2050;
    v80 = v24;
    v81 = 2050;
    v82 = v25;
    v83 = 1026;
    v84 = v26;
    v85 = 2050;
    v86 = v27;
    v87 = 2050;
    v88 = v28;
    v89 = 1026;
    v90 = v29;
    v91 = 2050;
    v92 = v30;
    v93 = 2050;
    v94 = v31;
    v95 = 2050;
    v96 = v32;
    v97 = 2050;
    v98 = v33;
    v99 = 2050;
    v100 = v34;
    v101 = 1026;
    v102 = v35;
    v103 = 2050;
    v104 = v36;
    v105 = 2050;
    v106 = v37;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[PU] summary,%{public}d,A,%{public}f,B,%{public}f,C,%{public}llu,D,%{public}f,E,%{public}f,F,%{public}f,G,%{public}f,H,%{public}f,I,%{public}f,J,%{public}f,K,%{public}f,L,%{public}f,M,%{public}f,N,%{public}f,O,%{public}f,P,%{public}llu,config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}d,config-5,%{public}f,config-6,%{public}f,config-7,%{public}d,config-8,%{public}f,config-9,%{public}f,config-10,%{public}d,config-11,%{public}f,config-12,%{public}f,config-13,%{public}f,config-14,%{public}f,config-15,%{public}f,config-16,%{public}d,debug-1,%{public}llu,debug-2,%{public}llu", v38, 0x14Cu);
  }
}

void sub_10001F184(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [NSNumber numberWithDouble:*(a1 + 96)];
  v4 = [v3 stringValue];
  [v12 setObject:v4 forKeyedSubscript:@"pu-A"];

  v5 = [NSNumber numberWithDouble:*(a1 + 100)];
  v6 = [v5 stringValue];
  [v12 setObject:v6 forKeyedSubscript:@"pu-B"];

  v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 104)];
  [v12 setObject:v7 forKeyedSubscript:@"pu-C"];

  v8 = [NSNumber numberWithUnsignedLongLong:*(a1 + 88)];
  [v12 setObject:v8 forKeyedSubscript:@"pu-D"];

  v9 = [NSNumber numberWithInt:*(a1 + 12)];
  [v12 setObject:v9 forKeyedSubscript:@"pu-E"];

  v10 = [NSNumber numberWithDouble:*(a1 + 16)];
  v11 = [v10 stringValue];
  [v12 setObject:v11 forKeyedSubscript:@"pu-config-1"];
}

uint64_t sub_10001F364(uint64_t result, int a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  if (a2)
  {
    *(result + 80) = 1;
    *(result + 8) = 1;
  }

  if (*(result + 96) < a5)
  {
    *(result + 96) = a5;
    *(result + 100) = a6;
    *(result + 88) = a3;
    *(result + 104) = a4;
  }

  return result;
}

uint64_t sub_10001F390(uint64_t a1)
{
  *(a1 + 148) = 0u;
  result = a1 + 148;
  *(result - 140) = 0;
  *(result - 136) = 0;
  *(result - 68) = 0;
  *(result - 60) = 0;
  *(result - 52) = 0u;
  *(result - 36) = xmmword_10037DE80;
  *(result - 20) = 0;
  *(result - 12) = 0;
  *(result - 4) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 304) = 0u;
  *(result + 320) = 0u;
  *(result + 336) = 0u;
  *(result + 352) = 0;
  *(result + 380) = 0;
  *(result + 364) = 0u;
  return result;
}

void sub_10001F404(uint64_t a1, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(a1, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(a1 + *(v4 - 152)) = a2[6];
  *(a1 + *(*a1 - 160)) = a2[7];
  *(a1 + *(*a1 - 168)) = a2[8];
  *(a1 + *(*a1 - 176)) = a2[9];
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 160) = 1;
  *(a1 + 164) = 0;
  *(a1 + 214) = 0;
  *(a1 + 216) = 0x2800000000;
  *(a1 + 744) = 0;
  *(a1 + 704) = 0;
  *(a1 + 709) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0;
  sub_100022BCC();
}

void sub_10001F6AC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 17);
  if (v4)
  {
    *(v1 + 18) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 14);
  if (v5)
  {
    *(v1 + 15) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 11);
  if (v6)
  {
    *(v1 + 12) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 8);
  if (v7)
  {
    *(v1 + 9) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 7);
  if (v8)
  {
    sub_100009A48(v8);
  }

  v9 = *(v1 + 5);
  if (v9)
  {
    sub_100009A48(v9);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_10001F720@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void sub_10001F7B0(CLKappaAlgBlock *a1)
{
  *a1 = off_100411FE8;
  *(a1 + 94) = off_100412090;
  *(a1 + 95) = off_100412158;
  *(a1 + 96) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(a1, off_100413AF8);
  *v1 = off_1004135A8;
  *(v1 + 752) = off_100413868;
  *(v1 + 760) = off_1004139B0;
  *(v1 + 768) = off_100413AA0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 1;
  *(v1 + 164) = 0;
  *(v1 + 214) = 0;
  *(v1 + 216) = 0x2800000000;
  *(v1 + 744) = 0;
  *(v1 + 704) = 0;
  *(v1 + 709) = 0;
  *(v1 + 736) = 0;
  *(v1 + 720) = 0u;
  sub_100022BCC();
}

void sub_10001F9DC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 17);
  if (v3)
  {
    *(v1 + 18) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 14);
  if (v4)
  {
    *(v1 + 15) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 11);
  if (v5)
  {
    *(v1 + 12) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    *(v1 + 9) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 7);
  if (v7)
  {
    sub_100009A48(v7);
  }

  v8 = *(v1 + 5);
  if (v8)
  {
    sub_100009A48(v8);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100413AF8);
  _Unwind_Resume(a1);
}

void sub_10001FA54(uint64_t a1)
{
  v56 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgPulseConfig" forFeatureMode:*(a1 + 24)];
  if (*(a1 + 24) == 2)
  {
    v2 = 0.25;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v4) = 1110756557;
  LODWORD(v5) = 4.0;
  [v3 algorithmThresholdNumber:0 inArrayForKey:v56 withMinValue:0.0 maxValue:v4 defaultValue:v5];
  *(*(a1 + 32) + 16) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 16.0;
  LODWORD(v9) = 1.5;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v56 withMinValue:0.0 maxValue:v8 defaultValue:v9];
  *(*(a1 + 32) + 20) = v10;

  v11 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v12) = 10.0;
  LODWORD(v13) = 1033476506;
  [v11 algorithmThresholdNumber:2 inArrayForKey:v56 withMinValue:0.0 maxValue:v12 defaultValue:v13];
  *(*(a1 + 32) + 24) = v14;

  v15 = +[CSPersistentConfiguration sharedConfiguration];
  *(*(a1 + 32) + 28) = [v15 algorithmIntegerNumber:3 inArrayForKey:v56 withMinValue:1 maxValue:10 defaultValue:2];

  v16 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v17) = 16.0;
  LODWORD(v18) = 1.5;
  [v16 algorithmThresholdNumber:4 inArrayForKey:v56 withMinValue:0.0 maxValue:v17 defaultValue:v18];
  *(*(a1 + 32) + 32) = v19;

  v20 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v21) = 10.0;
  LODWORD(v22) = 1033476506;
  [v20 algorithmThresholdNumber:5 inArrayForKey:v56 withMinValue:0.0 maxValue:v21 defaultValue:v22];
  *(*(a1 + 32) + 36) = v23;

  v24 = +[CSPersistentConfiguration sharedConfiguration];
  *(*(a1 + 32) + 40) = [v24 algorithmIntegerNumber:6 inArrayForKey:v56 withMinValue:1 maxValue:10 defaultValue:2];

  v25 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v26) = 16.0;
  LODWORD(v27) = 2.0;
  [v25 algorithmThresholdNumber:7 inArrayForKey:v56 withMinValue:0.0 maxValue:v26 defaultValue:v27];
  *(*(a1 + 32) + 44) = v28;

  v29 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v30) = 10.0;
  LODWORD(v31) = 1033476506;
  [v29 algorithmThresholdNumber:8 inArrayForKey:v56 withMinValue:0.0 maxValue:v30 defaultValue:v31];
  *(*(a1 + 32) + 48) = v32;

  v33 = +[CSPersistentConfiguration sharedConfiguration];
  *(*(a1 + 32) + 52) = [v33 algorithmIntegerNumber:9 inArrayForKey:v56 withMinValue:1 maxValue:10 defaultValue:2];

  v34 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v35) = 1065353300;
  *&v36 = v2;
  [v34 algorithmThresholdNumber:10 inArrayForKey:v56 withMinValue:0.0 maxValue:v35 defaultValue:v36];
  *(*(a1 + 32) + 56) = v37;

  v38 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v39) = 2.0;
  LODWORD(v40) = 24.0;
  [v38 algorithmThresholdNumber:11 inArrayForKey:v56 withMinValue:v39 maxValue:8589936700.0 defaultValue:v40];
  *(*(a1 + 32) + 60) = v41;

  v42 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v43) = 1132462080;
  LODWORD(v44) = 24.0;
  LODWORD(v45) = 1132462080;
  [v42 algorithmThresholdNumber:12 inArrayForKey:v56 withMinValue:v44 maxValue:v43 defaultValue:v45];
  *(*(a1 + 32) + 64) = v46;

  v47 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v48) = 786163455;
  LODWORD(v49) = 16.0;
  [v47 algorithmThresholdNumber:13 inArrayForKey:v56 withMinValue:0.0 maxValue:v49 defaultValue:v48];
  *(*(a1 + 32) + 68) = v50;

  v51 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v52) = 10.0;
  LODWORD(v53) = 1033476506;
  [v51 algorithmThresholdNumber:14 inArrayForKey:v56 withMinValue:0.0 maxValue:v52 defaultValue:v53];
  *(*(a1 + 32) + 72) = v54;

  v55 = +[CSPersistentConfiguration sharedConfiguration];
  *(*(a1 + 32) + 76) = [v55 algorithmIntegerNumber:15 inArrayForKey:v56 withMinValue:1 maxValue:10 defaultValue:2];
}

double sub_10001FE88(uint64_t a1, float *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 3);
  v3[3] = *(a2 + 2);
  v3[4] = v6;
  v3[1] = v4;
  v3[2] = v5;
  if (qword_1004567F8 != -1)
  {
    sub_100358220();
  }

  v7 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    v12 = *(a2 + 3);
    v13 = a2[4];
    v14 = a2[5];
    v15 = *(a2 + 6);
    v16 = a2[7];
    v17 = a2[8];
    v18 = *(a2 + 9);
    v19 = a2[10];
    v20 = a2[11];
    v21 = a2[12];
    v22 = a2[13];
    v23 = a2[14];
    v24 = *(a2 + 15);
    v25 = 134221824;
    v26 = v9;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    v31 = 1024;
    v32 = v12;
    v33 = 2048;
    v34 = v13;
    v35 = 2048;
    v36 = v14;
    v37 = 1024;
    v38 = v15;
    v39 = 2048;
    v40 = v16;
    v41 = 2048;
    v42 = v17;
    v43 = 1024;
    v44 = v18;
    v45 = 2048;
    v46 = v19;
    v47 = 2048;
    v48 = v20;
    v49 = 2048;
    v50 = v21;
    v51 = 2048;
    v52 = v22;
    v53 = 2048;
    v54 = v23;
    v55 = 1024;
    v56 = v24;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[PU] config-1,%f,config-2,%f,config-3,%f,config-4,%d,config-5,%f,config-6,%f,config-7,%d,config-8,%f,config-9,%f,config-10,%d,config-11,%f,config-12,%f,config-13,%f,config-14,%f,config-15,%f,config-16,%d", &v25, 0x92u);
  }

  return result;
}

uint64_t sub_100020034(uint64_t result, float32x2_t *a2)
{
  if (*(result + 214) == 1)
  {
    return sub_10002004C(result, a2, (result + 164));
  }

  return result;
}

uint64_t sub_10002004C(float32x2_t *a1, float32x2_t *a2, float32x4_t *a3)
{
  v56 = *a3;
  CMOQuaternion::normalize(&v56, v56);
  v5 = a2[2].f32[0];
  v54 = a2[1];
  v55 = v5;
  CMOQuaternion::rotateFrameInPlace(&v56, &v54);
  v52[0] = CMOQuaternion::gravity(&v56);
  v52[1] = v6;
  v53 = v7;
  CMOQuaternion::rotateFrameInPlace(&v56, v52);
  v55 = v55 - v53;
  v9 = a1[9];
  v8 = a1[10];
  if (v9 >= *&v8)
  {
    v12 = a1[8];
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *&v12) >> 2);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1555555555555555)
    {
      sub_10000CD24();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((*&v8 - *&v12) >> 2);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xAAAAAAAAAAAAAAALL)
    {
      v16 = 0x1555555555555555;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_100022744(&a1[8], v16);
    }

    v17 = 12 * v13;
    v18 = v54;
    *(v17 + 8) = v55;
    *v17 = v18;
    v11 = 12 * v13 + 12;
    v19 = a1[8];
    v20 = a1[9];
    v21 = (v17 + v19 - v20);
    if (v19 != v20)
    {
      v22 = v21;
      do
      {
        v23 = *v19;
        *(v22 + 2) = *(v19 + 2);
        *v22 = v23;
        v22 += 12;
        v19 += 12;
      }

      while (v19 != v20);
      v19 = a1[8];
    }

    a1[8] = v21;
    a1[9] = v11;
    a1[10] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v10 = v54;
    v9[1].f32[0] = v55;
    *v9 = v10;
    v11 = &v9[1] + 4;
  }

  a1[9] = v11;
  v25 = a1[15];
  v24 = a1[16];
  if (v25 >= v24)
  {
    v27 = a1[14];
    v28 = v25 - v27;
    v29 = (v25 - v27) >> 3;
    v30 = v29 + 1;
    if ((v29 + 1) >> 61)
    {
      sub_10000CD24();
    }

    v31 = v24 - v27;
    if (v31 >> 2 > v30)
    {
      v30 = v31 >> 2;
    }

    v32 = v31 >= 0x7FFFFFFFFFFFFFF8;
    v33 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v32)
    {
      v33 = v30;
    }

    if (v33)
    {
      sub_10000CDCC(&a1[14], v33);
    }

    v34 = (v25 - v27) >> 3;
    v35 = (8 * v29);
    v36 = (8 * v29 - 8 * v34);
    *v35 = *a2;
    v26 = v35 + 1;
    memcpy(v36, v27, v28);
    v37 = a1[14];
    a1[14] = v36;
    a1[15] = v26;
    a1[16] = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    *v25 = *a2;
    v26 = v25 + 1;
  }

  a1[15] = v26;
  v38 = vdup_n_s32(0x411CE80Au);
  v39 = vadd_f32(vmul_f32(vmul_f32(v54, vdup_n_s32(0x3AA3D70Au)), v38), a1[88]);
  v50 = v39;
  if (a1[27].i32[1] == a1[27].u16[1])
  {
    v40.f32[0] = sub_100020514(&a1[27]);
    v40.i32[1] = v41;
    v39 = vadd_f32(v39, vmul_f32(vmul_f32(v40, vdup_n_s32(0xBAA3D70A)), v38));
    v50 = v39;
    v42 = a1[27].i16[1];
    if (v42)
    {
      v43 = a1[27].u16[0] + 1;
      v44 = a1[27].u32[1];
      if (v43 < v44)
      {
        LOWORD(v44) = 0;
      }

      a1[27].i16[0] = v43 - v44;
      a1[27].i16[1] = v42 - 1;
    }
  }

  result = sub_100022ED4(&a1[27], &v54);
  v46 = 0;
  v51 = 0;
  a1[88] = v39;
  v47 = 0.0;
  a1[89].i32[0] = 0;
  do
  {
    v47 = v47 + (v50.f32[v46] * v50.f32[v46]);
    ++v46;
  }

  while (v46 != 3);
  v48 = sqrtf(v47);
  a1[91].f32[1] = v48;
  if (v48 > a1[91].f32[0])
  {
    a1[91].f32[0] = v48;
  }

  if ((a1[89].i8[4] & 1) == 0 && a1[27].i32[1] == a1[27].u16[1])
  {
    a1[89].i8[4] = 1;
  }

  v49 = *a2;
  if (*a2 != *&a1[90])
  {
    result = sub_100020544(a1, v49);
    v49 = *a2;
  }

  a1[93] = v49;
  return result;
}

uint64_t sub_1000203BC(void *a1, float32x2_t *a2)
{
  result = a1 + *(*a1 - 64);
  if (*(result + 214) == 1)
  {
    return sub_10002004C(result, a2, (result + 164));
  }

  return result;
}

uint64_t sub_1000203EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2 == 2)
  {
    if ((*(a2 + 46) & 0x10) == 0)
    {
LABEL_4:
      *(*(result + 32) + 112) = *(a2 + 8);
    }
  }

  else if (v2 != 1 || (*(a2 + 1) & 0x10) == 0)
  {
    goto LABEL_4;
  }

  return result;
}

void *sub_100020424(void *result, uint64_t a2)
{
  v2 = result + *(*result - 88);
  v3 = v2[24];
  if (v3 == 2)
  {
    if ((*(a2 + 46) & 0x10) != 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  if (v3 != 1 || (*(a2 + 1) & 0x10) == 0)
  {
LABEL_4:
    *(*(v2 + 4) + 112) = *(a2 + 8);
  }

  return result;
}

uint64_t sub_100020478(uint64_t result, uint64_t a2)
{
  v2 = *(result + 214);
  v4 = *(a2 + 16);
  v3 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(result + 164) = *a2;
  *(result + 212) = v5;
  *(result + 196) = v3;
  *(result + 180) = v4;
  if ((v2 & 1) == 0)
  {
    *(result + 214) = 1;
  }

  return result;
}

void *sub_1000204A8(void *result, uint64_t a2)
{
  v2 = result + *(*result - 96);
  v3 = v2[214];
  v5 = *(a2 + 16);
  v4 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(v2 + 164) = *a2;
  *(v2 + 106) = v6;
  *(v2 + 196) = v4;
  *(v2 + 180) = v5;
  if ((v3 & 1) == 0)
  {
    v2[214] = 1;
  }

  return result;
}

uint64_t sub_1000204F0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_100358234(a2);
  }

  return a1 + 4 * a2;
}

float sub_100020514(unsigned __int16 *a1)
{
  if (!a1[1])
  {
    sub_100358300();
  }

  v1 = sub_100022DA8(a1, 0);
  result = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  return result;
}

uint64_t sub_100020544(uint64_t result, unint64_t a2)
{
  if (*(result + 716) == 1)
  {
    v18 = v5;
    v19 = v4;
    v20 = v2;
    v21 = v3;
    v7 = result;
    v8 = *(result + 732);
    v9 = *(result + 32);
    if (v8 >= (*(v9 + 16) * 0.49033))
    {
      if (*(result + 218))
      {
        v11 = 0;
        do
        {
          result = sub_100020690((v7 + 216), v11);
          v12 = 0;
          v16 = *result;
          v17 = 0;
          v10 = *(v7 + 736);
          v13 = 0.0;
          do
          {
            v13 = v13 + (*(&v16 + v12) * *(&v16 + v12));
            v12 += 4;
          }

          while (v12 != 12);
          if (v10 <= sqrtf(v13))
          {
            v14 = 0;
            v15 = 0.0;
            do
            {
              v15 = v15 + (*(&v16 + v14) * *(&v16 + v14));
              v14 += 4;
            }

            while (v14 != 12);
            v10 = sqrtf(v15);
          }

          *(v7 + 736) = v10;
          ++v11;
        }

        while (v11 < *(v7 + 218));
        v9 = *(v7 + 32);
      }

      else
      {
        v10 = *(result + 736);
      }

      *(v9 + 80) = 1;
      *(v9 + 8) = 1;
    }

    else
    {
      v10 = *(result + 736);
    }

    if (*(v9 + 96) < (v8 / 0.49033))
    {
      *(v9 + 96) = v8 / 0.49033;
      *(v9 + 100) = v10;
      *(v9 + 88) = a2;
      *(v9 + 104) = (a2 + -50000.0007);
    }
  }

  return result;
}

uint64_t sub_100020690(unsigned __int16 *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_1003583AC(a2);
  }

  return sub_100022DA8(a1, a2);
}

void sub_1000206C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  *(v3 + 120) = a2;
  *(v3 + 128) = *(v3 + 88) - *(v3 + 112);
  v76 = *(*(a1 + 48) + 24);
  v4 = [v76 count];
  *(*(a1 + 32) + 144) = v4 != 0;
  if (v4)
  {
    v5 = *(a1 + 72) == *(a1 + 64);
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [v76 objectAtIndex:0];
    v7 = [v76 objectAtIndex:v4 - 1];
    *(*(a1 + 32) + 512) = [v6 timestamp];
    *(*(a1 + 32) + 520) = [v7 timestamp];
    sub_100020CCC(a1);
    v8 = *(a1 + 32);
    v9 = *(v8 + 20);
    v10 = *(v8 + 24);
    v11 = *(v8 + 28);
    [v6 timestamp];
    sub_10002153C(a1, 0, v11, &v77, v9, v10);
    *(v8 + 208) = v77;
    *(v8 + 224) = v78;
    v12 = *(a1 + 32);
    v13 = v12[8];
    v14 = v12[9];
    v15 = *(v12 + 10);
    [v6 timestamp];
    sub_10002153C(a1, 1, v15, &v77, v13, v14);
    *(v8 + 228) = v77;
    *(v8 + 244) = v78;
    v16 = *(a1 + 32);
    v17 = v16[11];
    v18 = v16[12];
    v19 = *(v16 + 13);
    [v6 timestamp];
    sub_10002153C(a1, 2, v19, &v77, v17, v18);
    *(v8 + 248) = v77;
    *(v8 + 264) = v78;
    v20 = *(a1 + 32);
    v21 = v20[17];
    v22 = v20[18];
    v23 = *(v20 + 19);
    [v6 timestamp];
    sub_10002153C(a1, 0, v23, &v77, v21, v22);
    v24 = (v8 + 388);
    *(v8 + 404) = v78;
    *(v8 + 388) = v77;
    v25 = *(a1 + 32);
    v26 = v25[17];
    v27 = v25[18];
    v28 = *(v25 + 19);
    [v6 timestamp];
    sub_10002153C(a1, 1, v28, &v77, v26, v27);
    v29 = (v8 + 408);
    *(v8 + 424) = v78;
    *(v8 + 408) = v77;
    v30 = *(a1 + 32);
    v31 = v30[17];
    v32 = v30[18];
    v33 = *(v30 + 19);
    [v6 timestamp];
    sub_10002153C(a1, 2, v33, &v77, v31, v32);
    v34 = (v8 + 428);
    *(v8 + 444) = v78;
    *(v8 + 428) = v77;
    v35 = *(a1 + 96) - *(a1 + 88);
    *(v8 + 136) = 0xAAAAAAAAAAAAAAABLL * (v35 >> 2);
    if (v35)
    {
      v36 = *(a1 + 32);
      v37 = v36[5];
      v38 = v36[6];
      v39 = *(v36 + 7);
      [v6 timestamp];
      sub_1000218CC(a1, 0, v39, &v77, v37, v38);
      *(v8 + 268) = v77;
      *(v8 + 284) = v78;
      v40 = *(a1 + 32);
      v41 = v40[8];
      v42 = v40[9];
      v43 = *(v40 + 10);
      [v6 timestamp];
      sub_1000218CC(a1, 1, v43, &v77, v41, v42);
      *(v8 + 288) = v77;
      *(v8 + 304) = v78;
      v44 = *(a1 + 32);
      v45 = v44[11];
      v46 = v44[12];
      v47 = *(v44 + 13);
      [v6 timestamp];
      sub_1000218CC(a1, 2, v47, &v77, v45, v46);
      *(v8 + 324) = v78;
      *(v8 + 308) = v77;
      v48 = *(a1 + 32);
      v49 = v48[17];
      v50 = v48[18];
      v51 = *(v48 + 19);
      [v6 timestamp];
      sub_1000218CC(a1, 0, v51, &v77, v49, v50);
      *(v8 + 448) = v77;
      *(v8 + 464) = v78;
      v52 = *(a1 + 32);
      v53 = v52[17];
      v54 = v52[18];
      v55 = *(v52 + 19);
      [v6 timestamp];
      sub_1000218CC(a1, 1, v55, &v77, v53, v54);
      *(v8 + 484) = v78;
      *(v8 + 468) = v77;
      v56 = *(a1 + 32);
      v57 = v56[17];
      v58 = v56[18];
      v59 = *(v56 + 19);
      [v6 timestamp];
      sub_1000218CC(a1, 2, v59, &v77, v57, v58);
      *(v8 + 504) = v78;
      v60.i32[1] = DWORD1(v77);
      *(v8 + 488) = v77;
      v60.i32[0] = *(*(a1 + 32) + 56);
      *v61.i32 = 1.0 - *v60.i32;
      v62 = *(v8 + 284);
      v63 = *(v8 + 224);
      *(v8 + 148) = vmlaq_n_f32(vmulq_n_f32(*(v8 + 268), *v60.i32), *(v8 + 208), 1.0 - *v60.i32);
      *(v8 + 164) = vmlaq_n_f32(vmulq_n_f32(v62, *v60.i32), v63, 1.0 - *v60.i32);
      *(v8 + 180) = vmlaq_n_f32(vmulq_n_f32(*(v8 + 300), *v60.i32), *(v8 + 240), 1.0 - *v60.i32);
      *(v8 + 196) = vmla_f32(vmul_f32(*&vdupq_lane_s32(v60, 0), *(v8 + 316)), *(v8 + 256), *&vdupq_lane_s32(v61, 0));
      *(v8 + 204) = (*v60.i32 * *(v8 + 324)) + ((1.0 - *v60.i32) * *(v8 + 264));
      *(v8 + 328) = (*v60.i32 * *(v8 + 448)) + ((1.0 - *v60.i32) * *(v8 + 388));
      *(v8 + 348) = (*v60.i32 * *(v8 + 468)) + ((1.0 - *v60.i32) * *(v8 + 408));
      *(v8 + 368) = (*v60.i32 * *(v8 + 488)) + ((1.0 - *v60.i32) * *(v8 + 428));
    }

    else
    {
      v64 = *(v8 + 208);
      *(v8 + 148) = v64;
      v65 = *(v8 + 224);
      *(v8 + 164) = v65;
      v66 = *(v8 + 228);
      *(v8 + 168) = v66;
      v67 = *(v8 + 244);
      *(v8 + 184) = v67;
      v68 = *(v8 + 248);
      *(v8 + 188) = v68;
      v69 = *(v8 + 264);
      *(v8 + 204) = v69;
      *(v8 + 268) = v64;
      *(v8 + 284) = v65;
      *(v8 + 288) = v66;
      *(v8 + 304) = v67;
      *(v8 + 324) = v69;
      *(v8 + 308) = v68;
      v70 = *(v8 + 404);
      *(v8 + 344) = v70;
      v71 = *v24;
      *(v8 + 328) = *v24;
      v72 = *(v8 + 424);
      *(v8 + 364) = v72;
      v73 = *v29;
      *(v8 + 348) = *v29;
      v74 = *(v8 + 444);
      *(v8 + 384) = v74;
      v75 = *v34;
      *(v8 + 368) = *v34;
      *(v8 + 464) = v70;
      *(v8 + 448) = v71;
      *(v8 + 484) = v72;
      *(v8 + 468) = v73;
      *(v8 + 504) = v74;
      *(v8 + 488) = v75;
    }

    ++*(a1 + 160);
  }
}

void sub_100020CCC(void *a1)
{
  v2 = *(a1[6] + 32);
  v3 = *(a1[6] + 72);
  v4 = a1[17];
  v84 = (a1 + 17);
  v85 = (a1 + 11);
  a1[12] = a1[11];
  a1[18] = v4;
  if ([v2 count] && objc_msgSend(v3, "count") >= 2)
  {
    sub_1000222F0(v85, [v2 count]);
    sub_1000223C0(v84, [v2 count]);
    v5 = 0;
    v6 = a1[4];
    v7 = *(v6 + 60);
    v8 = *(v6 + 64);
    while (1)
    {
      v9 = [v2 objectAtIndexedSubscript:v5];
      v10 = [v9 timestamp];
      v11 = [v3 objectAtIndexedSubscript:0];
      v12 = [v11 timestamp];

      if (v10 >= v12)
      {
        break;
      }

      if ([v2 count] - 1 <= ++v5)
      {
        if (qword_1004567F8 != -1)
        {
          sub_100358220();
        }

        v13 = qword_100456800;
        if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v14 = "[PU] HG before DM; IHA not available for this epoch";
LABEL_78:
          v79 = v13;
          v80 = 2;
LABEL_79:
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, v14, buf, v80);
        }

        goto LABEL_80;
      }
    }

    v87 = 0;
    while (2)
    {
      v83 = (v87 + 1);
      v86 = v83;
      while (1)
      {
        while (1)
        {
          v15 = [v2 objectAtIndexedSubscript:{v5, v83}];
          v16 = [v15 timestamp];
          v17 = [v3 objectAtIndexedSubscript:v87];
          v18 = v16 < [v17 timestamp];

          if (!v18)
          {
            break;
          }

          v19 = v5 + 1;
          while (1)
          {
            v5 = v19;
            v20 = [v2 objectAtIndexedSubscript:v19];
            v21 = [v20 timestamp];
            v22 = [v3 objectAtIndexedSubscript:v87];
            v23 = [v22 timestamp];
            v24 = v21 < v23;

            if (v21 >= v23)
            {
              break;
            }

            v25 = [v2 count];
            v19 = v5 + 1;
            if ((v5 + 1) == v25)
            {
              if (qword_1004567F8 != -1)
              {
                sub_10035846C();
              }

              v26 = qword_100456800;
              if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[PU] Did not catch up to DM", buf, 2u);
              }

              break;
            }
          }

          if (v87 < 1)
          {
            goto LABEL_72;
          }

          if (qword_1004567F8 != -1)
          {
            sub_10035846C();
          }

          v27 = qword_100456800;
          if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "[PU] DM raced ahead HA", buf, 2u);
          }

          ++*(a1[4] + 528);
          if (v21 < v23)
          {
            goto LABEL_80;
          }
        }

        v28 = [v2 objectAtIndexedSubscript:v5];
        v29 = [v28 timestamp];
        v30 = [v3 objectAtIndexedSubscript:v86];
        v31 = v29 < [v30 timestamp];

        if (!v31)
        {
          break;
        }

        v32 = [v3 objectAtIndexedSubscript:v87];
        v33 = [v32 c_struct];

        v34 = [v2 objectAtIndexedSubscript:v5];
        v35 = [v34 c_struct];

        v36 = v35[3];
        v37 = fabsf(v35[2]);
        v38 = fabsf(v36);
        v39 = v35[4];
        v40 = fabsf(v39);
        if (v38 < v40)
        {
          v38 = v40;
        }

        if (v37 < v38)
        {
          v37 = v38;
        }

        if (v37 >= v7)
        {
          v41 = 0;
          *v91 = v35[2];
          *&v91[1] = v36;
          *&v91[2] = v39;
          do
          {
            v42 = *sub_1000204F0(v91, v41);
            v43 = sub_1000204F0(v90, v41);
            if (v42 <= -v8)
            {
              v44 = -v8;
            }

            else
            {
              v44 = v42;
            }

            if (v44 >= v8)
            {
              v44 = v8;
            }

            *v43 = v44;
            ++v41;
          }

          while (v41 != 3);
          *buf = *v33;
          CMOQuaternion::normalize(buf, *buf);
          v45 = CMOQuaternion::rotateFrame(buf, v90[0], v90[1], v90[2]);
          v47 = v46;
          v49 = v48;
          v88[0] = CMOQuaternion::gravity(buf);
          v88[1] = v50;
          v89 = v51;
          CMOQuaternion::rotateFrameInPlace(buf, v88);
          v52 = v45 - v89;
          v53 = v47 - v89;
          v54 = v49 - v89;
          v56 = a1[12];
          v55 = a1[13];
          if (v56 >= v55)
          {
            v58 = 0xAAAAAAAAAAAAAAABLL * ((v56 - *v85) >> 2);
            v59 = v58 + 1;
            if (v58 + 1 > 0x1555555555555555)
            {
              sub_10000CD24();
            }

            v60 = 0xAAAAAAAAAAAAAAABLL * ((v55 - *v85) >> 2);
            if (2 * v60 > v59)
            {
              v59 = 2 * v60;
            }

            if (v60 >= 0xAAAAAAAAAAAAAAALL)
            {
              v61 = 0x1555555555555555;
            }

            else
            {
              v61 = v59;
            }

            if (v61)
            {
              sub_100022744(v85, v61);
            }

            v62 = (12 * v58);
            *v62 = v52;
            v62[1] = v53;
            v62[2] = v54;
            v63 = a1[11];
            v64 = a1[12];
            v65 = 12 * v58 + v63 - v64;
            if (v64 != v63)
            {
              v66 = v62 + v63 - v64;
              do
              {
                v67 = *v63;
                *(v66 + 2) = *(v63 + 2);
                *v66 = v67;
                v66 += 12;
                v63 += 12;
              }

              while (v63 != v64);
              v63 = *v85;
            }

            v57 = v62 + 3;
            a1[11] = v65;
            a1[12] = v62 + 3;
            a1[13] = 0;
            if (v63)
            {
              operator delete(v63);
            }
          }

          else
          {
            *v56 = v52;
            v56[1] = v53;
            v57 = v56 + 3;
            v56[2] = v54;
          }

          a1[12] = v57;
          v69 = a1[18];
          v68 = a1[19];
          if (v69 >= v68)
          {
            v71 = *v84;
            v72 = v69 - *v84;
            v73 = (v72 >> 3) + 1;
            if (v73 >> 61)
            {
              sub_10000CD24();
            }

            v74 = v68 - v71;
            if (v74 >> 2 > v73)
            {
              v73 = v74 >> 2;
            }

            v75 = v74 >= 0x7FFFFFFFFFFFFFF8;
            v76 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v75)
            {
              v76 = v73;
            }

            if (v76)
            {
              sub_10000CDCC(v84, v76);
            }

            v77 = (8 * (v72 >> 3));
            *v77 = *v35;
            v70 = v77 + 1;
            memcpy(0, v71, v72);
            v78 = a1[17];
            a1[17] = 0;
            a1[18] = v70;
            a1[19] = 0;
            if (v78)
            {
              operator delete(v78);
            }
          }

          else
          {
            *v69 = *v35;
            v70 = v69 + 1;
          }

          a1[18] = v70;
        }

        if ([v2 count] - 1 <= v5)
        {
          if (qword_1004567F8 != -1)
          {
            sub_10035846C();
          }

          v13 = qword_100456800;
          if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v14 = "[PU] Reached end of HA";
            goto LABEL_78;
          }

          goto LABEL_80;
        }

        LODWORD(v5) = v5 + 1;
      }

      if ([v3 count] - 1 > v86)
      {
        v24 = 0;
        v87 = v83;
LABEL_72:
        if (!v24)
        {
          continue;
        }

        goto LABEL_80;
      }

      break;
    }

    v81 = [v2 count];
    if (qword_1004567F8 != -1)
    {
      sub_10035846C();
    }

    v82 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = &v81[~v5];
      v14 = "Reached end of DM buffer with %lu Hg points unused";
      v79 = v82;
      v80 = 12;
      goto LABEL_79;
    }
  }

LABEL_80:
}

void sub_10002153C(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  if (*(a1 + 72) == *(a1 + 64))
  {
    if (qword_1004567F8 != -1)
    {
      sub_100358220();
    }

    v10 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[Pulse] buffer is empty", buf, 2u);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    switch(a2)
    {
      case 2:
        *buf = &_mh_execute_header;
        *&buf[8] = 2;
        sub_10002279C(&v26, buf, &buf[12], 3uLL);
        break;
      case 1:
        *buf = &_mh_execute_header;
        sub_10002279C(&v26, buf, &buf[8], 2uLL);
        break;
      case 0:
        *buf = 2;
        sub_10002279C(&v26, buf, &buf[4], 1uLL);
        break;
    }

    __p = 0;
    v31 = 0;
    v32 = 0;
    sub_100022954(&__p, v26, v27, (v27 - v26) >> 2);
    v33 = 0x400F29F7411CF5C3;
    v34 = 1102024197;
    v11 = 0uLL;
    memset(buf, 0, sizeof(buf));
    v12 = *(a1 + 64);
    v13 = 0.0;
    if (*(a1 + 72) - v12 != 12)
    {
      v22 = a4;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v24 = 0;
      v17 = -1;
      v18 = -1;
      v23 = -1;
      do
      {
        v19 = v12 + v14;
        if (sub_10002204C(buf, v12 + v14) <= a5)
        {
          if (v16)
          {
            if (((v15 - v18) * 0.00125) <= a6)
            {
              v16 = 1;
            }

            else
            {
              if (v18 - v17 + 1 >= a3)
              {
                LODWORD(v20) = *&buf[32];
                if (*&buf[32] > *&v24 || v23 == -1)
                {
                  v13 = (v18 - v17) * 0.00125;
                  HIDWORD(v20) = *&buf[36];
                  v23 = v15;
                  v24 = v20;
                }
              }

              v16 = 0;
              memset(&buf[20], 0, 20);
              v17 = -1;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          if ((v16 & 1) == 0)
          {
            v17 = v15;
          }

          sub_1000220C4(buf, v19, v19 + 12, 0.00125);
          v16 = 1;
          v18 = v15;
        }

        ++v15;
        v12 = *(a1 + 64);
        v14 += 12;
      }

      while (-1 - 0x5555555555555555 * ((*(a1 + 72) - v12) >> 2) > v15);
      *&v11 = *&buf[12];
      *(&v11 + 1) = v24;
      a4 = v22;
    }

    *a4 = v11;
    *(a4 + 16) = v13;
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }
  }
}

void sub_1000218CC(void *a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  if (a1[9] == a1[8])
  {
    if (qword_1004567F8 != -1)
    {
      sub_100358220();
    }

    v10 = qword_100456800;
    if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v11 = "[PU] LG buffer empty";
    goto LABEL_15;
  }

  if (a1[12] == a1[11])
  {
    if (qword_1004567F8 != -1)
    {
      sub_100358220();
    }

    v10 = qword_100456800;
    if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v11 = "[PU] HA buffer empty";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, v11, buf, 2u);
LABEL_16:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  switch(a2)
  {
    case 2:
      *buf = &_mh_execute_header;
      *&buf[8] = 2;
      sub_10002279C(&v61, buf, &buf[12], 3uLL);
      break;
    case 1:
      *buf = &_mh_execute_header;
      sub_10002279C(&v61, buf, &buf[8], 2uLL);
      break;
    case 0:
      *buf = 2;
      sub_10002279C(&v61, buf, &buf[4], 1uLL);
      break;
  }

  __p = 0;
  v66 = 0;
  v67 = 0;
  sub_100022954(&__p, v61, v62, (v62 - v61) >> 2);
  v68 = 0x400F29F7411CF5C3;
  v69 = 1102024197;
  v12 = 0uLL;
  memset(buf, 0, sizeof(buf));
  v13 = a1[8];
  v14 = 0.0;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[9] - v13) >> 2) - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v55 = a3;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v56 = 0;
    v59 = -1;
    v19 = 1;
    v20 = 1;
    v58 = -1;
    v54 = -1;
    do
    {
      v21 = a1[17];
      v22 = *(v21 + 8 * v16);
      v23 = v16;
      v24 = *(a1[14] + 8 * v17);
      v25 = v22 >= v24;
      v26 = v22 - v24;
      if (v25 || v18)
      {
        v32 = v17;
        v33 = v26 * 0.000001;
        if (v33 >= 0.00125 || v18)
        {
          if (sub_10002204C(buf, v13 + 12 * v17) <= a5)
          {
            if (v15)
            {
              if (((v17 - v58) * 0.00125) <= a6)
              {
                v15 = 1;
              }

              else
              {
                if (v58 - v59 + 1 >= v55)
                {
                  LODWORD(v48) = *&buf[32];
                  if (*&buf[32] > *&v56 || v54 == -1)
                  {
                    v14 = (v58 - v59) * 0.00125;
                    HIDWORD(v48) = *&buf[36];
                    v54 = v17;
                    v56 = v48;
                  }
                }

                v15 = 0;
                memset(&buf[20], 0, 20);
                v59 = -1;
              }
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v34 = v59;
            if ((v15 & 1) == 0)
            {
              v34 = v17;
            }

            v59 = v34;
            sub_1000220C4(buf, v13 + 12 * v17, v13 + 12 * v19, 0.00125);
            v15 = 1;
            v58 = v17;
          }
        }

        else
        {
          v36 = (v15 & 1) == 0;
          v37 = v59;
          v38 = v17;
          if (v36)
          {
            v37 = v17;
          }

          v59 = v37;
          sub_1000220C4(buf, v13 + 12 * v17, a1[11] + 12 * v16, v33);
          sub_10002204C(buf, v13 + 12 * v17);
          v39 = v16 << 32;
          for (i = 12 * v16; ; i += 12)
          {
            v41 = a1[11];
            v42 = a1[17];
            if (0xAAAAAAAAAAAAAAABLL * ((a1[12] - v41) >> 2) <= v23 + 1 || *(v42 + 8 * v23 + 8) - *(v42 + 8 * v23) > 0x4E1uLL)
            {
              break;
            }

            v43 = v41 + i;
            sub_1000220C4(buf, v41 + i, v41 + i + 12, 0.0003125);
            v39 += &_mh_execute_header;
            ++v23;
            sub_10002204C(buf, v43);
          }

          v44 = a1[14];
          v45 = *(v42 + (v39 >> 29));
          v46 = *(v44 + 8 * v32);
          if (v46 >= v45)
          {
            v20 = v38;
          }

          else
          {
            v47 = (a1[15] - v44) >> 3;
            v20 = (v47 - 1);
            if (v47 - 1 == v32)
            {
LABEL_51:
              v32 = v47 - 1;
            }

            else
            {
              ++v32;
              while (1)
              {
                v46 = *(v44 + 8 * v32);
                if (v46 >= v45)
                {
                  break;
                }

                if (v47 == ++v32)
                {
                  goto LABEL_51;
                }
              }

              v20 = v32;
            }
          }

          v49 = v39 >> 32;
          v50 = v41 + 12 * v49;
          v51 = (v46 - v45) * 0.000001;
          if (v51 > 0.00125)
          {
            v51 = 0.00125;
          }

          sub_1000220C4(buf, v50, a1[8] + 12 * v32, v51);
          sub_10002204C(buf, v50);
          v52 = -1 - 0x5555555555555555 * ((a1[12] - a1[11]) >> 2);
          v53 = v52 > v49;
          v18 = v52 <= v49;
          if (v53)
          {
            v16 = v23 + 1;
          }

          else
          {
            v16 = v23;
          }

          v15 = 1;
          v58 = v20;
        }
      }

      else
      {
        v27 = a1[18] - v21;
        v28 = (v27 >> 3) - 1;
        v29 = ~v16 + (v27 >> 3);
        v30 = (v21 + 8 * v16 + 8);
        while (1)
        {
          v18 = v29 == 0;
          if (!v29)
          {
            break;
          }

          v31 = *v30++;
          --v29;
          ++v16;
          if (v31 >= v24)
          {
            goto LABEL_33;
          }
        }

        v16 = v28;
LABEL_33:
        if (v17 < 1)
        {
          v20 = v17;
        }

        else
        {
          if (qword_1004567F8 != -1)
          {
            sub_10035846C();
          }

          v20 = v17;
          v35 = qword_100456800;
          if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
          {
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "[PU] LG ahead of HA", v60, 2u);
          }

          ++*(a1[4] + 528);
        }
      }

      v17 = v20;
      v20 = (v20 + 1);
      v19 = v20;
      v13 = a1[8];
    }

    while (-1 - 0x5555555555555555 * ((a1[9] - v13) >> 2) > v20);
    *&v12 = *&buf[12];
    *(&v12 + 1) = v56;
  }

  *a4 = v12;
  *(a4 + 16) = v14;
  if (__p)
  {
    v66 = __p;
    operator delete(__p);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }
}

uint64_t sub_100021FE8(uint64_t a1, uint64_t *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  sub_100022954(a1 + 40, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 64) = 0x400F29F7411CF5C3;
  *(a1 + 72) = 1102024197;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return a1;
}

float sub_10002204C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 0.0;
    do
    {
      v6 = *v2++;
      v7 = sub_10002247C(a2, v6);
      v5 = v5 + (v7 * sub_10002247C(a2, v6));
    }

    while (v2 != v3);
  }

  return sqrtf(v5);
}

void sub_1000220C4(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  memset(v18, 0, 12);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v5 != v6)
  {
    v9 = a4;
    do
    {
      v10 = *v5++;
      v11 = sub_10002247C(a2, v10);
      v12 = (v11 + sub_10002247C(a3, v10)) * 0.5 * v9 * *(a1 + 72);
      *sub_1000204F0(v18, v10) = v12;
    }

    while (v5 != v6);
  }

  v17 = sub_10002204C(a1, v18);
  *a1 = vadd_f32(v18[0], *a1);
  *(a1 + 8) = v18[1].f32[0] + *(a1 + 8);
  v13 = sub_10002204C(a1, a1);
  if (*(a1 + 12) >= v13)
  {
    v13 = *(a1 + 12);
  }

  *(a1 + 12) = v13;
  v14.i64[0] = __PAIR64__(v18[0].u32[0], LODWORD(v17));
  *&v14.u32[2] = *(v18 + 4);
  *(a1 + 16) = vaddq_f32(v14, *(a1 + 16));
  v15 = sub_10002204C(a1, a1 + 20);
  if (*(a1 + 32) >= v15)
  {
    v15 = *(a1 + 32);
  }

  v16 = v17 + *(a1 + 36);
  *(a1 + 32) = v15;
  *(a1 + 36) = v16;
}

uint64_t sub_100022218(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 20) = 0;
  *(result + 36) = 0;
  return result;
}

uint64_t sub_100022228(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_10002225C(uint64_t a1)
{
  *(a1 + 216) = 0;
  *(a1 + 704) = 0;
  *(a1 + 709) = 0;
  if (*(a1 + 214) == 1)
  {
    *(a1 + 214) = 0;
  }

  (*(**(a1 + 32) + 24))(*(a1 + 32));
  *(a1 + 72) = *(a1 + 64);
  sub_1000222F0((a1 + 64), 0xC80uLL);
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  *(v2 + 8) = v3;
  result = sub_1000223C0(v2, 0xC80uLL);
  *(v2 + 624) = 0;
  return result;
}

void *sub_1000222F0(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      sub_100022744(result, a2);
    }

    sub_10000CD24();
  }

  return result;
}

void *sub_1000223C0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_10000CDCC(result, a2);
    }

    sub_10000CD24();
  }

  return result;
}

float sub_10002247C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_100358494(a2);
  }

  return *(a1 + 4 * a2);
}

void sub_1000224AC(CLKappaAlgBlock *a1)
{
  sub_1000229D0(a1, &off_100413AF0);

  operator delete();
}

void sub_1000224F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    sub_100009A48(v4);
  }
}

void sub_100022540(void *a1)
{
  sub_1000229D0((a1 + *(*a1 - 24)), &off_100413AF0);

  operator delete();
}

void sub_1000225A8(void *a1, uint64_t *a2)
{
  v2 = a1 + *(*a1 - 32);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 7);
  *(v2 + 6) = v4;
  *(v2 + 7) = v3;
  if (v5)
  {
    sub_100009A48(v5);
  }
}

void sub_10002260C(void *a1)
{
  sub_1000229D0((a1 + *(*a1 - 24)), &off_100413AF0);

  operator delete();
}

void sub_100022698(void *a1)
{
  sub_1000229D0((a1 + *(*a1 - 24)), &off_100413AF0);

  operator delete();
}

void sub_100022700(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_100022744(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_1000092C0();
}

void *sub_10002279C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000228D0(v6, v10);
    }

    sub_10000CD24();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_1000228D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_10002290C(a1, a2);
  }

  sub_10000CD24();
}

void sub_10002290C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1000092C0();
}

uint64_t sub_100022954(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000228D0(result, a4);
  }

  return result;
}

void sub_1000229B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000229D0(CLKappaAlgBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
    operator delete(v7);
  }

  v8 = *(this + 8);
  if (v8)
  {
    *(this + 9) = v8;
    operator delete(v8);
  }

  v9 = *(this + 7);
  if (v9)
  {
    sub_100009A48(v9);
  }

  v10 = *(this + 5);
  if (v10)
  {
    sub_100009A48(v10);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(this, a2 + 1);
}

void sub_100022D2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100414180;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100022DA8(unsigned __int16 *a1, unint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v8 = *(a1 + 1);
      v9 = 134218754;
      v10 = Current;
      v11 = 2080;
      v12 = "const T &CMQueue<CMVector<float, 3>>::operator[](const size_t) const [T = CMVector<float, 3>]";
      v13 = 2048;
      v14 = a2;
      v15 = 1024;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,i,%zu,capacity,%u\n", &v9, 0x26u);
    }

    __assert_rtn("operator[]", "CMQueue.h", 244, "false");
  }

  v5 = *a1 + a2;
  if (v5 < v4)
  {
    v4 = 0;
  }

  return &a1[6 * (v5 - v4) + 4];
}

unsigned __int16 *sub_100022ED4(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[6 * (v3 - v2)];
  v5 = *(a2 + 8);
  *(v4 + 1) = *a2;
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

void sub_100023188(id a1)
{
  qword_1004567E0 = os_log_create("com.apple.anomalydetectiond", "AnomalyEvent");

  _objc_release_x1();
}

id sub_1000234B4()
{
  if (qword_1004568D8 != -1)
  {
    sub_10035859C();
  }

  v1 = qword_1004568E0;

  return v1;
}

void sub_10002391C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000239F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = +[NSFileManager defaultManager];
  if (sub_10001B724(*(a1 + 32), a3, @"filePicker"))
  {
    v7 = [v5 URLByDeletingPathExtension];
    v8 = [v7 path];

    if ([*(a1 + 32) isFileOldEnoughForDeletion:v5])
    {
      [v6 removeItemAtPath:v8 error:0];
      if (qword_1004568D8 != -1)
      {
        sub_10035859C();
      }

      v9 = qword_1004568E0;
      v10 = 1;
      if (os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Removed %@ since it's too old", &v26, 0xCu);
      }

      goto LABEL_33;
    }

    v11 = [NSData dataWithContentsOfURL:v5];
    if (!v11)
    {
      if (qword_1004568D8 != -1)
      {
        sub_10035859C();
      }

      v17 = qword_1004568E0;
      if (os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = v5;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "On filePicker, cannot read file %@. Try again later", &v26, 0xCu);
      }

      v10 = 0;
      goto LABEL_32;
    }

    v12 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v11 error:a3];
    v13 = v12;
    if (v12)
    {
      if ([v12 containsValueForKey:@"spooled"])
      {
        if ([*(a1 + 32) readManifestFromFile])
        {
          v14 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
          [v13 finishDecoding];
          v15 = [*(a1 + 32) checkWithManifest:v14];
          if (v15 == 1)
          {
            v16 = sub_1000234B4();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v26 = 138412290;
              v27 = v8;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "File %@ is newer than all events in the manifest. Try again later", &v26, 0xCu);
            }

            v10 = 0;
          }

          else if (v15)
          {
            v24 = [v5 URLByDeletingPathExtension];
            v16 = [v24 URLByAppendingPathExtension:@"upload"];

            v10 = [v6 copyItemAtURL:v5 toURL:v16 error:a3];
            if (v10)
            {
              v25 = sub_1000234B4();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = 138412290;
                v27 = v16;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Picked file %@ for upload later", &v26, 0xCu);
              }
            }
          }

          else
          {
            [v6 removeItemAtPath:v8 error:0];
            v16 = sub_1000234B4();
            v10 = 1;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v26 = 138412290;
              v27 = v8;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Removed %@ since it doesn't match any event in the manifest", &v26, 0xCu);
            }
          }

          goto LABEL_31;
        }

LABEL_30:
        v10 = 0;
LABEL_31:

LABEL_32:
LABEL_33:

        goto LABEL_34;
      }

      if (qword_1004568D8 != -1)
      {
        sub_10035859C();
      }

      v22 = qword_1004568E0;
      if (!os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      v26 = 138412290;
      v27 = v5;
      v19 = "File %@ doesn't contain value for key 'spooled'";
      v20 = v22;
      v21 = 12;
    }

    else
    {
      if (qword_1004568D8 != -1)
      {
        sub_10035859C();
      }

      v18 = qword_1004568E0;
      if (!os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      LOWORD(v26) = 0;
      v19 = "On filePicker, cannot create unarchiver";
      v20 = v18;
      v21 = 2;
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, &v26, v21);
    goto LABEL_30;
  }

  v10 = 0;
LABEL_34:

  return v10;
}

uint64_t sub_100023F1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = +[NSFileManager defaultManager];
  if (sub_10001B724(*(a1 + 32), a3, @"submitter"))
  {
    v8 = [NSData dataWithContentsOfURL:v5];
    if (!v8)
    {
      if (qword_1004568D8 != -1)
      {
        sub_10035859C();
      }

      v16 = qword_1004568E0;
      if (os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "On submitter, cannot read file %@. Try again later", buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_37;
    }

    v9 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v8 error:a3];
    v10 = v9;
    if (v9)
    {
      if ([v9 containsValueForKey:@"spooled"])
      {
        if ([WeakRetained registerForUploadingWithError:a3])
        {
          if (qword_1004568D8 != -1)
          {
            sub_10035859C();
          }

          v11 = qword_1004568E0;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [*(a1 + 32) subjectID];
            *buf = 138412546;
            *&buf[4] = v5;
            *&buf[12] = 2112;
            *&buf[14] = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Registered with server to upload %@ as %@", buf, 0x16u);
          }

          v13 = [v5 URLByDeletingPathExtension];
          v54 = [v13 path];

          if ([*(a1 + 32) isFileOldEnoughForDeletion:v5])
          {
            [v7 removeItemAtPath:v54 error:0];
            if (qword_1004568D8 != -1)
            {
              sub_100358574();
            }

            v14 = qword_1004568E0;
            v15 = 1;
            if (os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v54;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Removed %@ since it's too old", buf, 0xCu);
            }

            goto LABEL_73;
          }

          v58 = 0;
          if (![v7 fileExistsAtPath:v54 isDirectory:&v58] || v58 == 1)
          {
            if (a3)
            {
              v67 = NSLocalizedDescriptionKey;
              v23 = [NSString stringWithFormat:@"While scanning, can't find file to encrypt at: %@", v54];
              v68 = v23;
              v24 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
              *a3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:v24];
            }

            v25 = sub_1000234B4();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v54;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "File to be encrypted %@ doesn't exist", buf, 0xCu);
            }

            v15 = 0;
            goto LABEL_72;
          }

          v53 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
          [v10 finishDecoding];
          v26 = [v53 keyValuePairs];
          v46 = [NSMutableDictionary dictionaryWithDictionary:v26];

          [v46 removeObjectsForKeys:&off_10043F0D0];
          [v53 setKeyValuePairs:v46];
          v27 = sub_1000234B4();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v54;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "File %@ will be encrypted", buf, 0xCu);
          }

          v28 = [WeakRetained configuration];
          v29 = [v28 certificate];
          v51 = sub_100019DD0(v29);

          v44 = [CSHealthWrapMessageConfiguration alloc];
          v49 = +[NSUUID UUID];
          v47 = [WeakRetained subjectID];
          v43 = [WeakRetained configuration];
          v30 = [v43 studyUUID];
          v31 = [v53 channel];
          v32 = [v53 payloadType];
          v52 = [(CSHealthWrapMessageConfiguration *)v44 initWithCertificate:v51 messageUUID:v49 subjectUUID:v47 studyUUID:v30 channel:v31 payloadType:v32];

          v33 = [v53 keyValuePairs];
          [(CSHealthWrapMessageConfiguration *)v52 setKeyValuePairs:v33];

          v50 = [[CSHealthWrapMessage alloc] initWithConfiguration:v52];
          v34 = [v5 URLByDeletingPathExtension];
          v48 = [v34 URLByAppendingPathExtension:@"encrypted"];

          if (![(CSHealthWrapMessage *)v50 startWithOutputFileURL:v48 error:a3])
          {
            v35 = sub_1000234B4();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v48;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Failed to start output file %@", buf, 0xCu);
            }

            goto LABEL_70;
          }

          v35 = [NSURL fileURLWithPath:v54];
          if ([(CSHealthWrapMessage *)v50 appendDataFromFileURL:v35 error:a3])
          {
            if ([(CSHealthWrapMessage *)v50 finalizeWithError:a3])
            {
              v36 = [v7 removeItemAtURL:v35 error:a3];
              v37 = sub_1000234B4();
              v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
              if (v36)
              {
                if (v38)
                {
                  *buf = 138412546;
                  *&buf[4] = v35;
                  *&buf[12] = 2112;
                  *&buf[14] = v48;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "File %@ has been encrypted as %@", buf, 0x16u);
                }

                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v64 = sub_100024BD0;
                v65 = sub_100024BE0;
                v66 = 0;
                v45 = dispatch_semaphore_create(0);
                v39 = [WeakRetained submitter];
                v55[0] = _NSConcreteStackBlock;
                v55[1] = 3221225472;
                v55[2] = sub_100024BE8;
                v55[3] = &unk_1004130D0;
                v57 = buf;
                v40 = v45;
                v56 = v40;
                [v39 submitFileWithURL:v48 andCompletionHandler:v55];

                dispatch_semaphore_wait(v40, 0xFFFFFFFFFFFFFFFFLL);
                v15 = [*(*&buf[8] + 40) statusCodeIndicatesSucess];
                [v7 removeItemAtURL:v48 error:0];
                [*(a1 + 32) setRegistered:0];
                if (v15)
                {
                  [CSIgneousDetectionService updateNumIgneousUpload:v46];
                }

                v41 = sub_1000234B4();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  *v59 = 138412546;
                  v60 = v48;
                  v61 = 1026;
                  v62 = v15;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Uploaded %@ to server: %{public}d, deregister with server", v59, 0x12u);
                }

                _Block_object_dispose(buf, 8);
                goto LABEL_71;
              }

              if (v38)
              {
                *buf = 138412290;
                *&buf[4] = v35;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Failed to remove file %@", buf, 0xCu);
              }

LABEL_70:
              v15 = 0;
LABEL_71:

              v25 = v53;
LABEL_72:

LABEL_73:
              goto LABEL_36;
            }

            v42 = sub_1000234B4();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v35;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Failed to finalize encrypting file %@", buf, 0xCu);
            }
          }

          else
          {
            v42 = sub_1000234B4();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *&buf[4] = v35;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Failed to append data from file %@", buf, 0xCu);
            }
          }

          goto LABEL_70;
        }

        if (qword_1004568D8 != -1)
        {
          sub_10035859C();
        }

        v21 = qword_1004568E0;
        if (!os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
        {
LABEL_35:
          v15 = 0;
LABEL_36:

LABEL_37:
          goto LABEL_38;
        }

        *buf = 138412290;
        *&buf[4] = v5;
        v18 = "Failed to register with server to upload %@";
      }

      else
      {
        if (qword_1004568D8 != -1)
        {
          sub_10035859C();
        }

        v21 = qword_1004568E0;
        if (!os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
        {
          goto LABEL_35;
        }

        *buf = 138412290;
        *&buf[4] = v5;
        v18 = "File %@ doesn't contain value for key 'spooled'";
      }

      v19 = v21;
      v20 = 12;
    }

    else
    {
      if (qword_1004568D8 != -1)
      {
        sub_10035859C();
      }

      v17 = qword_1004568E0;
      if (!os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      *buf = 0;
      v18 = "On submitter, cannot create unarchiver";
      v19 = v17;
      v20 = 2;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v18, buf, v20);
    goto LABEL_35;
  }

  v15 = 0;
LABEL_38:

  return v15;
}

void sub_1000249F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100024BD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100024BE8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  dispatch_semaphore_signal(*(a1 + 32));
  if (qword_1004568D8 != -1)
  {
    sub_10035859C();
  }

  v8 = qword_1004568E0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(*(*(a1 + 40) + 8) + 40) statusCode];
    v10 = 134218242;
    v11 = v9;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Studies Server ingest: %ld %@", &v10, 0x16u);
  }
}

void sub_1000259B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CSStudiesServerUploaderIgneous;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100025AC8(id a1)
{
  qword_1004568E0 = os_log_create("com.apple.anomalydetectiond", "StudiesUploaderIgneous");

  _objc_release_x1();
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_1004567C8 != -1)
  {
    dispatch_once(&qword_1004567C8, &stru_100414220);
  }

  v1 = qword_1004567D0;
  if (os_log_type_enabled(qword_1004567D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting", buf, 2u);
  }

  v2 = +[CSPlatformInfo sharedInstance];
  LODWORD(v3) = [v2 isKappaLoggingDevice];
  v4 = [v2 isKappaDetectionDevice];
  if ((v3 & v4) == 1)
  {
    v9 = sub_1000260F0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "false";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:logging and detection are mutually exclusive, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v10 = sub_1000260F0();
    if (os_signpost_enabled(v10))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "false";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "logging and detection are mutually exclusive", "{msg%{public}.0s:logging and detection are mutually exclusive, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v3 = sub_1000260F0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "false";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:logging and detection are mutually exclusive, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  else
  {
    if (qword_1004567C8 != -1)
    {
      dispatch_once(&qword_1004567C8, &stru_100414220);
    }

    v5 = qword_1004567D0;
    if (os_log_type_enabled(qword_1004567D0, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      v26 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "isLoggingDevice %{public}d", buf, 8u);
    }

    if (qword_1004567C8 != -1)
    {
      dispatch_once(&qword_1004567C8, &stru_100414220);
    }

    v6 = qword_1004567D0;
    if (os_log_type_enabled(qword_1004567D0, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "isDetectionDevice %{public}d", buf, 8u);
    }

    v7 = _set_user_dir_suffix();
    if (confstr(65537, buf, 0x40uLL))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if ((v8 & 1) == 0)
    {
      perror("Unable to change temporary directory");
      _Exit(1);
    }
  }

  v11 = sub_1000260F0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 136446210;
    *&v23[4] = buf;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Temporary directory: %{public}s", v23, 0xCu);
  }

  v21 = @"CSCompanionService";
  v22 = @"CSCompanionService";
  v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [v2 isKappaDetectionDevice];
  [v2 isKappaLoggingDevice];
  v13 = objc_opt_new();
  [v13 setServiceReplacementMap:v12 missBehavior:0];
  [v13 ensureServiceIsRunning:@"CSCompanionService"];
  [v13 ensureServiceIsRunning:@"CSAnomalyEventService"];
  *v23 = 0xF00000002;
  *&v23[8] = 3;
  v19 = 0;
  v20 = 0;
  __p = 0;
  sub_10002641C(&__p, v23, &v24, 3uLL);
  sub_100026134(&__p, v13);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (((v3 | v4) & 1) == 0)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("FeatureDisabledExit", v14);

    v16 = sub_1000260F0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "exiting in 5 seconds", v23, 2u);
    }

    v17 = dispatch_time(0, 5000000000);
    dispatch_after(v17, v15, &stru_100414200);
  }

  dispatch_main();
}

void sub_100026090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1000260F0()
{
  if (qword_1004567C8 != -1)
  {
    sub_1003585B0();
  }

  v1 = qword_1004567D0;

  return v1;
}

void sub_100026134(int **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = *v4;
      sigignore(*v4);
      v7 = dispatch_source_create(&_dispatch_source_type_signal, v6, 0, &_dispatch_main_q);
      if (v7)
      {
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100026338;
        handler[3] = &unk_100414248;
        v12 = v6;
        v10 = v3;
        v8 = v7;
        v11 = v8;
        dispatch_source_set_event_handler(v8, handler);
        dispatch_activate(v8);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_100026270(id a1)
{
  if (qword_1004567C8 != -1)
  {
    sub_1003585B0();
  }

  v1 = qword_1004567D0;
  if (os_log_type_enabled(qword_1004567D0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "exiting daemon", v2, 2u);
  }

  raise(3);
}

void sub_1000262F4(id a1)
{
  qword_1004567D0 = os_log_create("com.apple.anomalydetectiond", "main");

  _objc_release_x1();
}

void sub_100026338(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  if (qword_1004567C8 != -1)
  {
    dispatch_once(&qword_1004567C8, &stru_100414220);
  }

  v3 = qword_1004567D0;
  if (os_log_type_enabled(qword_1004567D0, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67240192;
    v4[1] = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Exiting with signal %{public}d", v4, 8u);
  }

  [v2 retireServiceWithName:@"CSKappaDetectionService"];
  _Exit(0);
}

uint64_t sub_10002641C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000228D0(result, a4);
  }

  return result;
}

void sub_100026474(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100026534(id a1)
{
  qword_100458820 = [[CSMartyTap2RadarConfiguration alloc] initWithAllowOnBattery:1 checkIntervalInSeconds:3600 coolDownPeriodInSeconds:1800];

  _objc_release_x1();
}

void sub_100026648(id a1)
{
  qword_100458828 = [[CSMartyTap2RadarConfiguration alloc] initWithAllowOnBattery:1 checkIntervalInSeconds:3600 coolDownPeriodInSeconds:1800];

  _objc_release_x1();
}

void sub_100026898(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id sub_1000268F4()
{
  if (qword_100456918 != -1)
  {
    sub_1003585EC();
  }

  v1 = qword_100456920;

  return v1;
}

void sub_100026B4C(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1000270D8(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

uint64_t sub_10002716C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (sub_10001B724(*(a1 + 32), a3, @"ttrAction"))
  {
    v6 = [NSData dataWithContentsOfURL:v5];
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:a3];
    if (![v7 containsValueForKey:@"triggerUUID"] || !objc_msgSend(v7, "containsValueForKey:", @"timestamp") || (objc_msgSend(v7, "containsValueForKey:", @"ttrManagedFiles") & 1) == 0)
    {
      v16 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"triggerUUID"];
    v9 = [v7 decodeInt64ForKey:@"timestamp"];
    Current = CFAbsoluteTimeGetCurrent();
    v11 = [v7 decodeBoolForKey:@"ttrManagedFiles"];
    v12 = Current - v9;
    if (v12 < [*(*(a1 + 32) + 8) coolDownPeriodInSeconds])
    {
      if (qword_100456918 != -1)
      {
        sub_1003585EC();
      }

      v13 = qword_100456920;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [*(*(a1 + 32) + 8) coolDownPeriodInSeconds];
        *buf = 138412546;
        v29 = v8;
        v30 = 2048;
        v31 = &v14[-v12];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Backing down from TTR %@ because we still need to cool down for %lld seconds", buf, 0x16u);
      }

      if (!a3)
      {
        v16 = 0;
LABEL_45:

        goto LABEL_18;
      }

      v26 = NSLocalizedDescriptionKey;
      v27 = @"Cooldown still in place";
      v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:v15];
      *a3 = v16 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v19 = [*(a1 + 32) showConfirmationWithError:a3 withEventType:4];
    v15 = v20;
    if (qword_100456918 != -1)
    {
      sub_1003585EC();
    }

    v21 = qword_100456920;
    if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v29) = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Marty TTR confirmation result: %d", buf, 8u);
    }

    if (v19 == 3)
    {
      v23 = sub_1000268F4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v29) = v11;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "User chose not to file radar. ttrManaged,%d", buf, 8u);
      }

      [*(a1 + 32) deletePendingFiles:v8 ttrManagedMsl:v11];
    }

    else
    {
      if (v19 == 4)
      {
        v22 = sub_1000268F4();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v29) = v11;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Error with confirmation. ttrManagedFiles,%d", buf, 8u);
        }

LABEL_43:

        [*(a1 + 32) deletePendingFiles:v8 ttrManagedMsl:v11];
        v16 = 0;
        goto LABEL_44;
      }

      if (([*(a1 + 32) showPrivacyNotificationWithError:a3] & 1) == 0)
      {
        v22 = sub_1000268F4();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v29) = v11;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "User did not consent. ttrManaged,%d", buf, 8u);
        }

        goto LABEL_43;
      }

      if (([*(a1 + 32) radarWithResult:v19 triggerUUID:v8 ttrManagedMsl:v11 eventType:4 error:a3 formattedDate:v15] & 1) == 0)
      {
        v22 = sub_1000268F4();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v29) = v11;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Not able to generate TTR. ttrManaged,%d", buf, 8u);
        }

        goto LABEL_43;
      }
    }

    v24 = sub_1000268F4();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "removing TTR file", buf, 2u);
    }

    v25 = +[NSFileManager defaultManager];
    [v25 removeItemAtURL:v5 error:0];

    v16 = 1;
    goto LABEL_44;
  }

  if (qword_100456918 != -1)
  {
    sub_1003585EC();
  }

  v17 = qword_100456920;
  if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "!checkForSpoolerDirectory", buf, 2u);
  }

  v16 = 0;
LABEL_19:

  return v16;
}

BOOL sub_1000277B8(id a1, NSURL *a2, id *a3)
{
  v4 = a2;
  v5 = +[NSFileManager defaultManager];
  v6 = v4;
  v7 = [(NSURL *)v6 path];
  v8 = [v5 attributesOfItemAtPath:v7 error:a3];

  if (a3)
  {
    v9 = [v8 fileCreationDate];
    [v9 timeIntervalSinceNow];
    v11 = v10;

    v12 = +[CSPersistentConfiguration sharedConfiguration];
    v13 = [v12 getFloatDefault:@"MartyTTRCleanupExpirationAge"];
    if ((v13 & &_mh_execute_header) != 0)
    {
      v14 = *&v13;
    }

    else
    {
      v14 = 14400.0;
    }

    if (qword_100456918 != -1)
    {
      sub_1003585EC();
    }

    v15 = fabs(v11);
    v16 = qword_100456920;
    if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412802;
      v21 = v6;
      v22 = 2048;
      v23 = v15;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Checking file: %@: age:%4.2f ageExpiration:%4.2f", &v20, 0x20u);
    }

    v17 = v15 > v14;
  }

  else
  {
    if (qword_100456918 != -1)
    {
      sub_1003585EC();
    }

    v18 = qword_100456920;
    if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412546;
      v21 = v6;
      v22 = 2112;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Error getting file attributes: %@ - %@", &v20, 0x16u);
    }

    v17 = 1;
  }

  return v17;
}

void sub_100027AE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v28 = 0;
  v3 = [v2 showConfirmationWithError:&v28 withEventType:*(a1 + 48)];
  v5 = v4;
  v6 = v28;
  if (qword_100456918 != -1)
  {
    sub_100358600();
  }

  v7 = qword_100456920;
  if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Marty TTR confirmation result: %d", buf, 8u);
  }

  if (v3 == 3)
  {
    if (qword_100456918 != -1)
    {
      sub_100358600();
    }

    v22 = qword_100456920;
    if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 56);
      *buf = 67109120;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "User chose not to file radar. ttrManaged,%d", buf, 8u);
    }

    [*(a1 + 32) deletePendingFiles:*(a1 + 40) ttrManagedMsl:*(a1 + 56)];
  }

  else
  {
    if (v3 == 4)
    {
      if (qword_100456918 != -1)
      {
        sub_100358600();
      }

      v8 = qword_100456920;
      if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 56);
        *buf = 67109120;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Error with confirmation. ttrManagedFiles,%d", buf, 8u);
      }

      [*(a1 + 32) deletePendingFiles:*(a1 + 40) ttrManagedMsl:*(a1 + 56)];
    }

    if (qword_100456918 != -1)
    {
      sub_100358600();
    }

    v10 = qword_100456920;
    if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "User chose to file radar.", buf, 2u);
    }

    v11 = *(a1 + 32);
    v27 = v6;
    v12 = [v11 showPrivacyNotificationWithError:&v27];
    v13 = v27;

    v6 = v13;
    if (v12)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 56);
      v17 = *(a1 + 48);
      v26 = v13;
      v18 = [v14 radarWithResult:v3 triggerUUID:v15 ttrManagedMsl:v16 eventType:v17 error:&v26 formattedDate:v5];
      v19 = v26;

      v6 = v19;
      if ((v18 & 1) == 0)
      {
        if (qword_100456918 != -1)
        {
          sub_100358600();
        }

        v20 = qword_100456920;
        if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(a1 + 56);
          *buf = 67109120;
          v30 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Not able to generate TTR. ttrManaged,%d", buf, 8u);
        }

        [*(a1 + 32) deletePendingFiles:*(a1 + 40) ttrManagedMsl:*(a1 + 56)];
      }
    }

    else
    {
      if (qword_100456918 != -1)
      {
        sub_100358600();
      }

      v24 = qword_100456920;
      if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(a1 + 56);
        *buf = 67109120;
        v30 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "User did not consent. ttrManaged,%d", buf, 8u);
      }

      [*(a1 + 32) deletePendingFiles:*(a1 + 40) ttrManagedMsl:*(a1 + 56)];
    }
  }
}

void sub_1000291B0(id a1)
{
  qword_100456920 = os_log_create("com.apple.anomalydetectiond", "MartyTap2Radar");

  _objc_release_x1();
}

id MartyCompanion::serializeDeviceInfo(MartyCompanion *this, const CompanionDeviceInfo *a2)
{
  if (qword_100456868 != -1)
  {
    sub_10002AB14();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v4 = *this;
    if (*(this + 31) >= 0)
    {
      v5 = this + 8;
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = *(this + 8);
    v7 = *(this + 9);
    v8 = *(this + 10);
    v9 = *(this + 11);
    v10 = *(this + 12);
    v11 = *(this + 13);
    v12 = *(this + 14);
    *buf = 67176707;
    v24 = v4;
    *v25 = 2081;
    *&v25[2] = v5;
    *&v25[10] = 1025;
    v26 = v6;
    LOWORD(v27) = 1025;
    *(&v27 + 2) = v8;
    HIWORD(v27) = 1025;
    v28 = v7;
    LOWORD(v29) = 1025;
    *(&v29 + 2) = v9;
    HIWORD(v29) = 1025;
    v30 = v10;
    v31 = 1025;
    v32 = v11;
    v33 = 1025;
    v34 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sending marty device info %{private}d %{private}s %{private}d %{private}d %{private}d %{private}d %{private}d %{private}d %{private}d", buf, 0x3Cu);
  }

  PB::Writer::Writer(&v21);
  KappaCompanionDeviceInfo::KappaCompanionDeviceInfo(buf);
  v13 = *this;
  LOBYTE(v31) = v31 | 1;
  *&v25[8] = v13;
  sub_10002A8F0(buf);
  std::string::operator=(*v25, (this + 8));
  v14 = *(this + 9);
  v15 = *(this + 10);
  v16 = *(this + 11);
  HIDWORD(v27) = *(this + 8);
  v28 = v15;
  HIDWORD(v29) = v14;
  v30 = v16;
  v17 = *(this + 12);
  LODWORD(v29) = *(this + 13);
  v18 = *(this + 14);
  LOBYTE(v31) = v31 | 0xFE;
  v26 = v18;
  LODWORD(v27) = v17;
  KappaCompanionDeviceInfo::writeTo(buf, &v21);
  v19 = [NSData dataWithBytes:v22 length:v21 - v22];
  KappaCompanionDeviceInfo::~KappaCompanionDeviceInfo(buf);
  PB::Writer::~Writer(&v21);

  return v19;
}

void sub_1000293CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  KappaCompanionDeviceInfo::~KappaCompanionDeviceInfo(va1);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void MartyCompanion::deserializeDeviceInfo(MartyCompanion *this, const NSData *a2)
{
  v2 = this;
  PB::Reader::Reader(v24, [(MartyCompanion *)v2 bytes], [(MartyCompanion *)v2 length]);
  KappaCompanionDeviceInfo::KappaCompanionDeviceInfo(v13);
  v8 = 0;
  *__p = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  KappaCompanionDeviceInfo::readFrom(v13, v24);
  v3 = v23;
  if (v23)
  {
    v8 = v15;
  }

  if (__str)
  {
    std::string::operator=(__p, __str);
    v3 = v23;
  }

  v4 = v18;
  v5 = v21;
  if ((v3 & 8) == 0)
  {
    v4 = -1;
  }

  if ((v3 & 0x40) == 0)
  {
    v5 = -1;
  }

  *(&v10 + 1) = __PAIR64__(v5, v4);
  if ((v3 & 0x10) != 0)
  {
    LODWORD(v11) = v19;
    if ((v3 & 0x80) == 0)
    {
LABEL_11:
      if ((v3 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  DWORD1(v11) = v22;
  if ((v3 & 4) == 0)
  {
LABEL_12:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  DWORD2(v11) = v17;
  if ((v3 & 0x20) == 0)
  {
LABEL_13:
    if ((v3 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
  HIDWORD(v11) = v20;
  if ((v3 & 2) == 0)
  {
LABEL_15:
    if (qword_100456868 != -1)
    {
      sub_10002AB28();
    }

    v6 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
    {
      if ((SBYTE7(v10) & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 67176707;
      v26 = v8;
      v27 = 2081;
      v28 = v7;
      v29 = 1025;
      v30 = DWORD2(v10);
      v31 = 1025;
      v32 = v11;
      v33 = 1025;
      v34 = HIDWORD(v10);
      v35 = 1025;
      v36 = DWORD1(v11);
      v37 = 1025;
      v38 = DWORD2(v11);
      v39 = 1025;
      v40 = HIDWORD(v11);
      v41 = 1025;
      v42 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "receiving marty device info %{private}d %{private}s %{private}d %{private}d %{private}d %{private}d %{private}d %{private}d %{private}d", buf, 0x3Cu);
    }

    operator new();
  }

LABEL_14:
  v12 = v16;
  goto LABEL_15;
}

id MartyCompanion::serializeTrigger(float16x4_t *this, const CompanionTrigger *a2)
{
  if (qword_100456868 != -1)
  {
    sub_10002AB14();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v4 = this[1].u8[0];
    v5 = this[1].u8[1];
    v6 = this[1].u16[1];
    v7 = this[1].i32[1];
    v8 = this[2];
    v9 = *this[3].i32;
    v10 = *&this[3].i32[1];
    v11 = this[4].i8[0];
    v12 = this[4].i8[1];
    v13 = this[4].i8[2];
    v14 = this[4].i8[3];
    v15 = this[4].i8[4];
    v16 = this[5];
    _H2 = this[6].i16[0];
    __asm { FCVT            D2, H2 }

    _H3 = this[6].i16[1];
    __asm { FCVT            D3, H3 }

    _H4 = this[6].i16[2];
    __asm { FCVT            D4, H4 }

    v27 = this[6].u8[6];
    v28 = this[6].u8[7];
    v29 = this[7].u16[0];
    v30 = this[8];
    v31 = *&this[11].i32[1];
    v32 = *this[12].i32;
    *buf = 67180033;
    v52 = v4;
    LOWORD(v53) = 1025;
    *(&v53 + 2) = v5;
    HIWORD(v53) = 1025;
    v54 = v6;
    v55 = 1025;
    v56 = v7;
    v57 = 2049;
    *v58 = v8;
    *&v58[8] = 2049;
    *&v58[10] = v9;
    *&v58[18] = 2049;
    v59 = v10;
    v60.i16[0] = 1025;
    *(v60.i32 + 2) = v11;
    v60.i16[3] = 1025;
    v61 = v12;
    LOWORD(v62) = 1025;
    *(&v62 + 2) = v13;
    HIWORD(v62) = 1025;
    v63 = v14;
    LOWORD(v64) = 1025;
    *(&v64 + 2) = v15;
    HIWORD(v64) = 2049;
    v65 = v16;
    *v66 = 2049;
    *&v66[2] = _D2;
    *&v66[10] = 2049;
    v67 = _D3;
    *v68 = 2049;
    *&v68[2] = _D4;
    v69 = 1025;
    v70 = v27;
    v71 = 1025;
    v72 = v28;
    v73 = 1025;
    v74 = v29;
    v75 = 2049;
    v76 = v30;
    v77 = 2049;
    v78 = v31;
    v79 = 2049;
    v80 = v32;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sending marty trigger info %{private}d %{private}d %{private}d %{private}d %{private}llu %{private}f %{private}f %{private}d %{private}d %{private}d %{private}d %{private}d %{private}llu %{private}f %{private}f %{private}f %{private}d %{private}d%{private}d %{private}llu%{private}f %{private}f", buf, 0xAEu);
  }

  PB::Writer::Writer(&v46);
  KappaTriggerSample::KappaTriggerSample(buf);
  v59 = *this;
  v33 = this[3].i32[1];
  HIDWORD(v62) = this[3].i32[0];
  v34 = this[1].u8[1];
  v35 = this[1].u16[1];
  *&v66[4] = this[1].u8[0];
  v65.i32[0] = v35;
  v36 = this[1].i32[1];
  v60 = this[2];
  HIDWORD(v64) = v33;
  *&v66[8] = this[4].i8[0];
  v67 = __PAIR64__(v36, v34);
  LODWORD(v64) = this[4].i8[1];
  v37 = this[4].i8[2];
  *v68 = __PAIR64__(*&v68[4], this[4].i8[3]) | 0x3E77E00000000;
  v38 = this[4].i8[4];
  v61 = v37;
  LODWORD(v62) = v38;
  *&v58[12] = this[5];
  __src = vcvtq_f32_f16(this[6]).u64[0];
  _H0 = this[6].i16[2];
  __asm { FCVT            S0, H0 }

  v49 = _S0;
  sub_10002A964(&v53, &__src, v50, 3uLL);
  v41 = this[6].u8[6];
  v42 = this[7].u16[0];
  v63 = this[6].u8[7];
  v65.i32[1] = v42;
  *v66 = v41;
  v43 = this[8];
  *&v68[4] |= 0x1881u;
  *&v58[4] = v43;
  KappaTriggerSample::writeTo(buf, &v46);
  v44 = [NSData dataWithBytes:v47 length:v46 - v47];
  KappaTriggerSample::~KappaTriggerSample(buf);
  PB::Writer::~Writer(&v46);

  return v44;
}

void sub_100029A0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  KappaTriggerSample::~KappaTriggerSample(va1);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void MartyCompanion::deserializeTrigger(MartyCompanion *this, const NSData *a2)
{
  v2 = this;
  PB::Reader::Reader(v81, [(MartyCompanion *)v2 bytes], [(MartyCompanion *)v2 length]);
  KappaTriggerSample::KappaTriggerSample(v60);
  v58 = 0;
  v59 = 0;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  KappaTriggerSample::readFrom(v60, v81);
  v3 = v80;
  v4 = v75;
  v5 = v77;
  v6 = v72;
  if ((v80 & 8) != 0)
  {
    v7 = v65;
  }

  else
  {
    v7 = 0;
  }

  if ((v80 & 0x40) != 0)
  {
    v8 = v68;
  }

  else
  {
    v8 = 0.0;
  }

  if ((v80 & 0x200) != 0)
  {
    v9 = v71;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = v76;
  v11 = v70;
  v12 = v66;
  v51 = v79;
  v53 = v78;
  v49 = v67;
  if ((v80 & 2) != 0)
  {
    v13 = v64;
  }

  else
  {
    v13 = 0;
  }

  __p = 0;
  v56 = 0;
  v57 = 0;
  sub_10002AA98(&__p, v61, v62, (v62 - v61) >> 2);
  v41 = v12;
  v42 = v11;
  v43 = v10;
  v44 = v7;
  v45 = v13;
  _H11 = 0;
  _H12 = 0;
  _H13 = 0;
  if (v56 - __p == 12)
  {
    _S0 = *__p;
    _S1 = *(__p + 1);
    __asm
    {
      FCVT            H11, S0
      FCVT            H12, S1
    }

    _S0 = *(__p + 2);
    __asm { FCVT            H13, S0 }
  }

  v24 = v80;
  v25 = v74;
  v26 = v69;
  v27 = v73;
  if (v80)
  {
    v28 = v63;
  }

  else
  {
    v28 = 0;
  }

  if (qword_100456868 != -1)
  {
    sub_10002AB28();
  }

  v29 = v53;
  v48 = v4 & (v3 << 18 >> 31);
  v47 = v5 & (v3 >> 15);
  v46 = v6 & (v3 << 21 >> 31);
  v30 = v43 & (v3 << 17 >> 31);
  v31 = v42 & (v3 << 23 >> 31);
  v52 = v51 & (v3 << 14 >> 31);
  v54 = v41 & (v3 << 27 >> 31);
  v50 = v49 & (v3 << 26 >> 31);
  v32 = v29 & (v3 << 15 >> 31);
  v33 = v25 & (v24 << 19 >> 31);
  v34 = v26 & (v24 >> 7);
  v35 = v24 << 20;
  v36 = qword_100456870;
  v37 = v27 & (v35 >> 31);
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67179521;
    v83 = v48;
    v84 = 1025;
    v85 = v47;
    v86 = 1025;
    v87 = v46;
    __asm
    {
      FCVT            D2, H11
      FCVT            D3, H12
    }

    v88 = 1025;
    __asm { FCVT            D4, H13 }

    v89 = v32;
    v90 = 2049;
    v91 = v44;
    v92 = 2049;
    v93 = v8;
    v94 = 2049;
    v95 = v9;
    v96 = 1025;
    v97 = v30;
    v98 = 1025;
    v99 = v31;
    v100 = 1025;
    v101 = v54;
    v102 = 1025;
    v103 = v52;
    v104 = 1025;
    v105 = v50;
    v106 = 2049;
    v107 = v45;
    v108 = 2049;
    v109 = _D2;
    v110 = 2049;
    v111 = _D3;
    v112 = 2049;
    v113 = _D4;
    v114 = 1025;
    v115 = v33;
    v116 = 1025;
    v117 = v34;
    v118 = 1025;
    v119 = v37;
    v120 = 2049;
    v121 = v28;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "receiving marty trigger info %{private}d %{private}d %{private}d %{private}d %{private}llu %{private}f %{private}f %{private}d %{private}d %{private}d %{private}d %{private}d %{private}llu %{private}f %{private}f %{private}f %{private}d %{private}d%{private}d %{private}llu", buf, 0x9Au);
  }

  operator new();
}

void sub_100029EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  KappaTriggerSample::~KappaTriggerSample(&a23);

  _Unwind_Resume(a1);
}

id MartyCompanion::serializeCompanionUUID(const std::string *this, const CompanionUUID *a2)
{
  if (qword_100456868 != -1)
  {
    sub_10002AB14();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = this;
    }

    else
    {
      v4 = this->__r_.__value_.__r.__words[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sending marty companion uuid %{public}s", &buf, 0xCu);
  }

  PB::Writer::Writer(&buf);
  MartyCompanionUUID::MartyCompanionUUID(&v7);
  sub_10002A8F0(&v7);
  std::string::operator=(v8, this);
  MartyCompanionUUID::writeTo(&v7, &buf);
  v5 = [NSData dataWithBytes:*(&buf + 1) length:buf - *(&buf + 1)];
  MartyCompanionUUID::~MartyCompanionUUID(&v7);
  PB::Writer::~Writer(&buf);

  return v5;
}

void sub_10002A03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  MartyCompanionUUID::~MartyCompanionUUID(&a9);
  PB::Writer::~Writer(&a11);
  _Unwind_Resume(a1);
}

void MartyCompanion::deserializeCompanionUUID(MartyCompanion *this, const NSData *a2)
{
  v2 = this;
  PB::Reader::Reader(v8, [(MartyCompanion *)v2 bytes], [(MartyCompanion *)v2 length]);
  MartyCompanionUUID::MartyCompanionUUID(v6);
  memset(&v5, 0, sizeof(v5));
  MartyCompanionUUID::readFrom(v6, v8);
  if (__str)
  {
    std::string::operator=(&v5, __str);
  }

  if (qword_100456868 != -1)
  {
    sub_10002AB28();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v4 = &v5;
    if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v5.__r_.__value_.__r.__words[0];
    }

    *buf = 136446210;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "receiving marty companion uuid %{public}s", buf, 0xCu);
  }

  operator new();
}

id MartyCompanion::serializeDeviceInfoRequest(int *a1)
{
  if (qword_100456868 != -1)
  {
    sub_10002AB14();
  }

  v2 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "sending marty requesting device info nop %d", buf, 8u);
  }

  PB::Writer::Writer(buf);
  sub_100009CA8(v7);
  v4 = *a1;
  v8 |= 1u;
  v7[2] = v4;
  sub_10000A130(v7, buf);
  v5 = [NSData dataWithBytes:v10 length:*buf - v10];
  PB::Base::~Base(v7);
  PB::Writer::~Writer(buf);

  return v5;
}

void sub_10002A37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  PB::Base::~Base(&a9);
  PB::Writer::~Writer(&a11);
  _Unwind_Resume(a1);
}

void MartyCompanion::deserializeDeviceInfoRequest(MartyCompanion *this, const NSData *a2)
{
  v2 = this;
  PB::Reader::Reader(v9, [(MartyCompanion *)v2 bytes], [(MartyCompanion *)v2 length]);
  sub_100009CA8(v7);
  sub_100009EBC(v7, v9);
  v3 = v8;
  v4 = v7[2];
  if (qword_100456868 != -1)
  {
    sub_10002AB28();
  }

  v5 = (v3 << 31 >> 31) & v4;
  v6 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "receiving marty requesting device info nop %d", buf, 8u);
  }

  operator new();
}

void sub_10002A4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PB::Base::~Base(&a9);

  _Unwind_Resume(a1);
}

id MartyCompanion::serializeRequestUpload(const std::string *a1)
{
  if (qword_100456868 != -1)
  {
    sub_10002AB14();
  }

  v2 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = a1->__r_.__value_.__r.__words[0];
    }

    data = a1[1].__r_.__value_.__l.__data_;
    *buf = 136446466;
    *&buf[4] = v3;
    *&buf[12] = 1026;
    *&buf[14] = data;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "sending marty upload request uuid %{public}s %{public}d", buf, 0x12u);
  }

  PB::Writer::Writer(buf);
  sub_100010780(v8);
  sub_10002A8F0(v8);
  std::string::operator=(v9, a1);
  v5 = a1[1].__r_.__value_.__l.__data_;
  v11 |= 1u;
  v10 = v5;
  sub_100010DDC(v8, buf);
  v6 = [NSData dataWithBytes:*&buf[8] length:*buf - *&buf[8]];
  sub_100010804(v8);
  PB::Writer::~Writer(buf);

  return v6;
}

void sub_10002A664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100010804(va);
  PB::Writer::~Writer(va1);
  _Unwind_Resume(a1);
}

void MartyCompanion::deserializeRequestUpload(MartyCompanion *this, const NSData *a2)
{
  v2 = this;
  PB::Reader::Reader(v11, [(MartyCompanion *)v2 bytes], [(MartyCompanion *)v2 length]);
  sub_100010780(v7);
  memset(&v5, 0, sizeof(v5));
  v6 = 0;
  sub_100010B0C(v7, v11);
  if (__str)
  {
    std::string::operator=(&v5, __str);
  }

  if (v10)
  {
    v6 = v9;
  }

  if (qword_100456868 != -1)
  {
    sub_10002AB28();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v4 = &v5;
    if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v5.__r_.__value_.__r.__words[0];
    }

    *buf = 136446466;
    v13 = v4;
    v14 = 1026;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "receiving marty upload request uuid %{public}s %{public}d", buf, 0x12u);
  }

  operator new();
}

void sub_10002A8AC(id a1)
{
  qword_100456870 = os_log_create("com.apple.anomalydetectiond", "Companion");

  _objc_release_x1();
}

uint64_t sub_10002A8F0(uint64_t result)
{
  if (!*(result + 8))
  {
    operator new();
  }

  return result;
}

void *sub_10002A964(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000228D0(v6, v10);
    }

    sub_10000CD24();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t sub_10002AA98(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000228D0(result, a4);
  }

  return result;
}

void sub_10002AAF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLKappaDeescalatorAOI::CLKappaDeescalatorAOI(CLKappaDeescalatorAOI *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_100414388;
  *(this + 9) = vdup_n_s32(0x447A0000u);
  *(this + 20) = 0;
  *(this + 71) = 6;
  strcpy(this + 48, "de-AOI");
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_100414388;
  *(this + 9) = vdup_n_s32(0x447A0000u);
  *(this + 20) = 0;
  *(this + 71) = 6;
  strcpy(this + 48, "de-AOI");
}

unint64_t CLKappaDeescalatorAOI::resetConfiguration(CLKappaDeescalatorAOI *this)
{
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceAOI");
  result = CLKappaDeescalator::shouldForceDeescalate(this, "ForceAOI");
  *(this + 10) = result;
  return result;
}

void CLKappaDeescalatorAOI::log(CLKappaDeescalatorAOI *this, uint64_t a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_10002C95C();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 6);
    v6 = *(this + 36);
    v7 = *(this + 20);
    v8 = 134349824;
    v9 = a2;
    v10 = 1026;
    v11 = v5;
    v12 = 1026;
    v13 = v6;
    v14 = 1026;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[de-AOI] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,debug-1a,%{public}u,", &v8, 0x1Eu);
  }
}

id sub_10002AD64()
{
  if (qword_1004567F8 != -1)
  {
    sub_10002C95C();
  }

  v1 = qword_100456800;

  return v1;
}

double CLKappaDeescalatorAOI::updateWithCurrentLocation(CLKappaDeescalatorAOI *this, const CSSPUGps_Struct *a2)
{
  result = *&a2->latitude;
  *(this + 9) = result;
  return result;
}

void CLKappaDeescalatorAOI::updateWithTrigger(CLKappaDeescalatorAOI *this, const TriggerSample *a2)
{
  if (qword_1004567F8 != -1)
  {
    sub_10002C95C();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    path = a2->path;
    v6 = BYTE2(a2[1].rmsSN);
    v7[0] = 67109376;
    v7[1] = path;
    v8 = 1024;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[de-AOI] feedTrigger path %u martyPath %u", v7, 0xEu);
  }

  if (a2->btHint == 1)
  {
    ++*(this + 20);
  }
}

uint64_t CLKappaDeescalatorAOI::isNearAOI(CLKappaDeescalatorAOI *this, float a2, float a3, int a4)
{
  if (qword_1004567F8 != -1)
  {
    sub_10002C95C();
  }

  v8 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[de-AOI] isNearAOI", buf, 2u);
  }

  v9 = [CSPersistentConfiguration configBaseKey:"DisableKappaAOICheck" forFeatureMode:*(this + 36)];
  v10 = +[CSPersistentConfiguration sharedConfiguration];
  v11 = [v10 BOOLForKey:v9];

  if (v11)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002C970();
    }

    v12 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v13 = "[de-AOI] AOI mitigation disabled, continue with escalation choice";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, v13, buf, 2u);
    }
  }

  else if (a4)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002C970();
    }

    v12 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v13 = "[de-AOI] Trigger with BTHint found, continue with escalation choice";
      goto LABEL_26;
    }
  }

  else
  {
    if (a2 != 1000.0 && a3 != 1000.0)
    {
      CLKappaDeescalatorAOI::loadAOIs(this);
    }

    if (qword_1004567F8 != -1)
    {
      sub_10002C970();
    }

    v14 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[de-AOI] invalid coordinate", buf, 2u);
    }

    if (qword_1004567F8 != -1)
    {
      sub_10002C970();
    }

    v12 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v13 = "[de-AOI] Not near AOI on list, continue with escalation choice";
      goto LABEL_26;
    }
  }

  return 0;
}

void sub_10002B224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100009A48(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10002B5E8(_Unwind_Exception *a1)
{
  if (v7)
  {
    sub_100009A48(v7);
  }

  v9 = *(v2 + 8);
  if (v9)
  {
    sub_100009A48(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t CLKappaDeescalatorAOI::onEvaluateFollowingEscalation(CLKappaDeescalatorAOI *this)
{
  if (CLKappaDeescalatorAOI::isNearAOI(this, *(this + 18), *(this + 19), *(this + 20)))
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

void CLKappaDeescalatorAOI::loadAOIsFromExistingList(uint64_t a1, uint64_t **a2, _DWORD *a3)
{
  v13 = +[CSPersistentConfiguration sharedConfiguration];
  if (*(a1 + 36) == 1)
  {
    v6 = @"Kappa";
  }

  else
  {
    v6 = @"Marty";
  }

  v7 = v6;
  v8 = [NSString stringWithCString:"DeleteCurrentList" encoding:1];
  v9 = [NSString stringWithFormat:@"%@%@", v7, v8];

  v10 = [v13 objectForKey:v9];
  LOBYTE(v8) = [v10 isEqual:&__kCFBooleanTrue];

  if ((v8 & 1) == 0)
  {
    v11 = &kAOIList;
    v12 = 3192;
    do
    {
      CSKappaAOIBoost::addAOI(*a2, v11);
      ++*a3;
      v11 = (v11 + 12);
      v12 -= 12;
    }

    while (v12);
  }
}

void CLKappaDeescalatorAOI::loadAOIsFromDir(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v16 = a2;
  v7 = [v16 URLByAppendingPathComponent:@"AOIs.json"];
  v8 = v7;
  v9 = *(a3 + 8);
  v18[0] = *a3;
  v18[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLKappaDeescalatorAOI::loadAOIsFromJSONFile(v7, v7, v18, a4);
  if (v9)
  {
    sub_100009A48(v9);
  }

  if (*(a1 + 36) == 1)
  {
    v10 = @"Kappa";
  }

  else
  {
    v10 = @"Marty";
  }

  v11 = [NSString stringWithFormat:@"%@%@", v10, @"AOIs.json"];
  v12 = [v16 URLByAppendingPathComponent:v11];
  v13 = v12;
  v14 = *a3;
  v15 = *(a3 + 8);
  v17[0] = v14;
  v17[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLKappaDeescalatorAOI::loadAOIsFromJSONFile(v12, v12, v17, a4 + 1);
  if (v15)
  {
    sub_100009A48(v15);
  }
}

void sub_10002B970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (v13)
  {
    sub_100009A48(v13);
  }

  _Unwind_Resume(a1);
}

const __CFString *CLKappaDeescalatorAOI::featureAOIConfigPrefix(CLKappaDeescalatorAOI *this)
{
  if (*(this + 36) == 1)
  {
    return @"Kappa";
  }

  else
  {
    return @"Marty";
  }
}

void CLKappaDeescalatorAOI::loadAOIsFromJSONFile(uint64_t a1, void *a2, uint64_t **a3, _DWORD *a4)
{
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = +[NSFileManager defaultManager];
  v9 = [v6 path];
  v10 = [v8 fileExistsAtPath:v9];

  if ((v10 & 1) == 0)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002C95C();
    }

    v13 = qword_100456800;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v6 path];
      *buf = 138412290;
      v57 = v26;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "File not found %@", buf, 0xCu);
    }

    goto LABEL_50;
  }

  v53 = 0;
  v11 = [NSData dataWithContentsOfURL:v6 options:0 error:&v53];
  v12 = v53;
  v13 = v12;
  if (!v11 || v12)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002C970();
    }

    v27 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v57 = v13;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error reading file: %@", buf, 0xCu);
    }

    goto LABEL_49;
  }

  v52 = 0;
  v14 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:&v52];
  v15 = v52;
  v13 = v15;
  v43 = v14;
  if (!v14 || v15)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002C970();
    }

    obj = qword_100456800;
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v28 = [v6 path];
      *buf = 138412546;
      v57 = v28;
      v58 = 2112;
      v59 = v13;
      _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, "Error parsing %@: %@", buf, 0x16u);
    }

    goto LABEL_48;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002C970();
    }

    obj = qword_100456800;
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v29 = [v6 path];
      *buf = 138412290;
      v57 = v29;
      _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, "Malformatted AOI json, top level %@", buf, 0xCu);
    }

    goto LABEL_48;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v14;
  v35 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (!v35)
  {
    goto LABEL_48;
  }

  v37 = v11;
  v38 = *v49;
  v36 = v7;
  while (2)
  {
    for (i = 0; i != v35; i = i + 1)
    {
      if (*v49 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(*(&v48 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        log = sub_10002AD64();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v32 = [v6 path];
          *buf = 138412290;
          v57 = v32;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Malformatted AOI json, row not list %@", buf, 0xCu);
        }

LABEL_47:

        goto LABEL_48;
      }

      log = v41;
      if ([log count]!= 3)
      {
        v16 = sub_10002AD64();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v33 = [v6 path];
          *buf = 138412290;
          v57 = v33;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Malformatted AOI json, row with wrong count %@", buf, 0xCu);
        }

LABEL_46:

        goto LABEL_47;
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v16 = log;
      v17 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v17)
      {
        v18 = *v45;
        while (2)
        {
          for (j = 0; j != v17; j = j + 1)
          {
            if (*v45 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v44 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (qword_1004567F8 != -1)
              {
                sub_10002C970();
              }

              v7 = v36;
              v11 = v37;
              v30 = qword_100456800;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = [v6 path];
                *buf = 138412290;
                v57 = v31;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Malformatted AOI json, element not number %@", buf, 0xCu);
              }

              goto LABEL_46;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v7 = v36;
      v11 = v37;
      v34 = [v16 objectAtIndexedSubscript:0];
      [v34 floatValue];
      *buf = v21;
      v22 = [v16 objectAtIndexedSubscript:1];
      [v22 floatValue];
      LODWORD(v57) = v23;
      v24 = [v16 objectAtIndexedSubscript:2];
      [v24 floatValue];
      HIDWORD(v57) = v25;

      CSKappaAOIBoost::addAOI(*a3, buf);
      ++*a4;
    }

    v35 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_48:

LABEL_49:
LABEL_50:

  objc_autoreleasePoolPop(v7);
}

void CLKappaDeescalatorAOI::runOnDeviceTest(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"lat"];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = [v1 objectForKeyedSubscript:@"lat"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v4 = [v1 objectForKey:@"lon"];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = [v1 objectForKeyedSubscript:@"lon"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v1 objectForKey:@"mode"], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v7 = [v1 objectForKeyedSubscript:@"mode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v1 objectForKey:@"testIdentifier"], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v9 = [v1 objectForKeyedSubscript:@"testIdentifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v1 objectForKey:@"expected"], (v26 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_17;
  }

  v10 = [v1 objectForKeyedSubscript:@"expected"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v1 objectForKey:@"lat"];
    [v11 floatValue];
    v13 = v12;

    v14 = [v1 objectForKey:@"lon"];
    [v14 floatValue];
    v16 = v15;

    v17 = [v1 objectForKey:@"mode"];
    v18 = [v17 intValue];

    v19 = [v1 objectForKey:@"testIdentifier"];
    v20 = [v1 objectForKey:@"expected"];
    v21 = [v20 intValue];

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v33 = 0;
    v34 = 0;
    *v27 = &off_100414388;
    v36 = vdup_n_s32(0x447A0000u);
    v37 = 0;
    v35[23] = 6;
    strcpy(v35, "de-AOI");
    v32 = v18;
    v22 = CLKappaDeescalatorAOI::isNearAOI(v27, v13, v16, 0);
    if (qword_1004567F8 != -1)
    {
      sub_10002C970();
    }

    v23 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413826;
      v39 = v19;
      v40 = 2048;
      v41 = v13;
      v42 = 2048;
      v43 = v16;
      v44 = 1024;
      v45 = v18;
      v46 = 1024;
      v47 = v21 != 0;
      v48 = 1024;
      v49 = v22;
      v50 = 1024;
      v51 = v47 ^ v22 ^ 1;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "AOI ident %@ (%f, %f) mode %d expect %d near %d, pass %d", buf, 0x38u);
    }

    CLKappaDeescalator::~CLKappaDeescalator(v27);

    goto LABEL_24;
  }

LABEL_20:
  if (qword_1004567F8 != -1)
  {
    sub_10002C95C();
  }

  v24 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "AOI - Bad input in test dict", v27, 2u);
  }

LABEL_24:
}

void sub_10002C6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, void *a11)
{
  CLKappaDeescalator::~CLKappaDeescalator(&a11);

  _Unwind_Resume(a1);
}

void sub_10002C794(void **a1)
{
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_10002C7E0(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_10002C880(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100414438;
  CSKappaAOIBoost::CSKappaAOIBoost((a1 + 3));
}

void sub_10002C8FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100414438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void CLKappaDeescalatorStaticGps::CLKappaDeescalatorStaticGps(CLKappaDeescalatorStaticGps *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_100414488;
  *(this + 80) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 84) = 0;
  *(this + 89) = 0;
  *(this + 71) = 7;
  strcpy(this + 48, "de-SGPS");
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 36) = 1;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *this = &off_100414488;
  *(this + 80) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 84) = 0;
  *(this + 89) = 0;
  *(this + 71) = 7;
  strcpy(this + 48, "de-SGPS");
}

uint64_t CLKappaDeescalatorStaticGps::assertReady(CLKappaDeescalatorStaticGps *this, uint64_t a2, const char *a3)
{
  CLKappaDeescalator::raiseUnless(*(this + 80), "[de-SGPS] missing config", a3);
  v5 = (this + 8);
  if (!*(this + 16))
  {
    v5 = &unk_10037E108;
  }

  v6 = *v5 != 0;

  return CLKappaDeescalator::raiseUnless(v6, "[de-SGPS] missing crashtimestamp", v4);
}

uint64_t CLKappaDeescalatorStaticGps::setConfig(uint64_t result, int *a2)
{
  if (*(result + 80) == 1)
  {
    v2 = *a2;
    *(result + 76) = *(a2 + 2);
    *(result + 72) = v2;
  }

  else
  {
    *(result + 72) = *a2;
    *(result + 80) = 1;
  }

  return result;
}

void CLKappaDeescalatorStaticGps::resetConfiguration(CLKappaDeescalatorStaticGps *this)
{
  v5 = [CSPersistentConfiguration configBaseKey:"DeescalatorSGPSConfig" forFeatureMode:*(this + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 intThreshold:&CLKappaDeescalatorStaticGps::kConfigurationDefaults forKey:v5];
  v4 = [v2 intThreshold:&unk_10037E0A0 forKey:v5];
  if (*(this + 80) == 1)
  {
    *(this + 18) = v3;
    *(this + 38) = v4;
  }

  else
  {
    *(this + 9) = v3 | (v4 << 32);
    *(this + 80) = 1;
  }

  *(this + 104) = CLKappaDeescalator::shouldForce(this, "ForceEscalateGPS");
  *(this + 105) = CLKappaDeescalator::shouldForce(this, "TurnOffTwoLevelSense");
  *(this + 10) = CLKappaDeescalator::shouldForceDeescalate(this, "ForceStaticGps");
  *(this + 44) = CLKappaDeescalator::shouldForceNoop(this, "ForceStaticGps");
}

void CLKappaDeescalatorStaticGps::log(CLKappaDeescalatorStaticGps *this, uint64_t a2)
{
  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  v4 = *(this + 84);
  v5 = *(this + 23);
  v6 = *(this + 25);
  if (qword_1004567F8 != -1)
  {
    sub_10002CF88();
  }

  v7 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 6);
    v9 = *(this + 36);
    v10 = *(this + 18);
    v11 = *(this + 38);
    v12 = *(this + 104);
    v13 = *(this + 105);
    v14 = 134351616;
    v15 = a2;
    v16 = 1026;
    v17 = v8;
    v18 = 1026;
    v19 = v9;
    v20 = 1026;
    v21 = v10;
    v22 = 1026;
    v23 = v11;
    v24 = 1026;
    v25 = v12;
    v26 = 1026;
    v27 = v13;
    v28 = 1026;
    v29 = v4;
    v30 = 1026;
    v31 = HIDWORD(v4);
    v32 = 1026;
    v33 = v5;
    v34 = 1026;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[de-SGPS] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}u,config-2,%{public}u,force-1,%{public}u,force-2,%{public}u,debug-1a,%{public}u,debug-1b,%{public}u,debug-1c,%{public}u,debug-1c,%{public}u", &v14, 0x48u);
  }
}

uint64_t CLKappaDeescalatorStaticGps::updateCountTotal(uint64_t this)
{
  v1 = *(this + 92);
  if ((*(this + 96) & 1) == 0)
  {
    v1 += *(this + 100);
  }

  *(this + 100) = v1;
  return this;
}

double CLKappaDeescalatorStaticGps::updateWithFeatures(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 28);
  *(a1 + 84) = result;
  *(a1 + 92) = *(a2 + 16);
  *(a1 + 96) = *(a2 + 24);
  return result;
}

uint64_t CLKappaDeescalatorStaticGps::onEvaluateBetweenMinAndMaxHoldDuration(CLKappaDeescalatorStaticGps *this)
{
  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  v2 = *(this + 104);
  result = 2;
  if ((v2 & 1) == 0)
  {
    if (*(this + 25) >= *(this + 76))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t CLKappaDeescalatorStaticGps::onEvaluateAtBoundary(CLKappaDeescalatorStaticGps *this)
{
  if ((*(this + 80) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (*(this + 104))
  {
    return 2;
  }

  if (*(this + 22) < *(this + 18))
  {
    return 4;
  }

  if (*(this + 105) != 1)
  {
    return 2;
  }

  if (qword_1004567F8 != -1)
  {
    sub_10002CF88();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[de-SGPS] two level is off - escalating", v3, 2u);
  }

  return 6;
}

uint64_t CLKappaDeescalatorStaticGps::onPreviousEpochMadeDecision(uint64_t this)
{
  *(this + 96) = 0;
  *(this + 100) = 0;
  return this;
}

void sub_10002CF0C(void **a1)
{
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_10002CF44(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void CLKappaDeescalator::~CLKappaDeescalator(void **this)
{
  *this = off_100414538;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

{
  *this = off_100414538;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

{
  *this = off_100414538;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  operator delete();
}

uint64_t CLKappaDeescalator::earlyCrashDetected(CLKappaDeescalator *this, uint64_t a2)
{
  *(this + 1) = a2;
  *(this + 16) = 1;
  *(this + 8) = 0;
  *(this + 3) = 0;
  return (*(*this + 48))();
}

_DWORD *CLKappaDeescalator::updateWithOption(_DWORD *result, int a2)
{
  if (a2 != 7)
  {
    result[6] = a2;
    if (a2 == 5)
    {
      ++result[8];
    }

    else if (a2 == 4)
    {
      ++result[7];
    }
  }

  return result;
}

uint64_t CLKappaDeescalator::evaluateAtMinHoldDuration(CLKappaDeescalator *this)
{
  (*(*this + 40))(this);
  result = (*(*this + 56))(this);
  if (*(this + 44) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v4 = (this + 48);
      if (*(this + 71) < 0)
      {
        v4 = *v4;
      }

      v12 = 136315138;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%s] forcing noop at min hold duration", &v12, 0xCu);
    }

    return 7;
  }

  if (*(this + 10) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v6 = (this + 48);
      if (*(this + 71) < 0)
      {
        v6 = *v6;
      }

      v12 = 136315138;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%s] forcing deescalate at min hold duration", &v12, 0xCu);
    }

    goto LABEL_19;
  }

  switch(result)
  {
    case 7:
      return result;
    case 6:
      if (qword_1004567F8 != -1)
      {
        sub_10002EB98();
      }

      v10 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v11 = (this + 48);
        if (*(this + 71) < 0)
        {
          v11 = *v11;
        }

        v12 = 136315138;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%s] escalate at min hold duration", &v12, 0xCu);
      }

      result = 6;
      *(this + 6) = 6;
      break;
    case 4:
LABEL_19:
      if (qword_1004567F8 != -1)
      {
        sub_10002EBAC();
      }

      v7 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v8 = (this + 48);
        if (*(this + 71) < 0)
        {
          v8 = *v8;
        }

        v12 = 136315138;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%s] deescalate at min hold duration", &v12, 0xCu);
      }

      result = 4;
      v9 = *(this + 7) + 1;
      *(this + 6) = 4;
      *(this + 7) = v9;
      return result;
    default:
      *(this + 6) = result;
      if (result == 5)
      {
        ++*(this + 8);
      }

      break;
  }

  return result;
}

id sub_10002D404()
{
  if (qword_1004567F8 != -1)
  {
    sub_10002EB98();
  }

  v1 = qword_100456800;

  return v1;
}

uint64_t CLKappaDeescalator::evaluateAtSecondDeescalationOpportunity(CLKappaDeescalator *this)
{
  (*(*this + 40))(this);
  result = (*(*this + 64))(this);
  if (*(this + 44) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v4 = (this + 48);
      if (*(this + 71) < 0)
      {
        v4 = *v4;
      }

      v12 = 136315138;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%s] forcing noop at second opportunity", &v12, 0xCu);
    }

    return 7;
  }

  if (*(this + 10) == 2)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v6 = (this + 48);
      if (*(this + 71) < 0)
      {
        v6 = *v6;
      }

      v12 = 136315138;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%s] forcing deescalate at second opportunity", &v12, 0xCu);
    }

    goto LABEL_19;
  }

  switch(result)
  {
    case 7:
      return result;
    case 6:
      if (qword_1004567F8 != -1)
      {
        sub_10002EB98();
      }

      v10 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v11 = (this + 48);
        if (*(this + 71) < 0)
        {
          v11 = *v11;
        }

        v12 = 136315138;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%s] escalate at second opportunity", &v12, 0xCu);
      }

      result = 6;
      *(this + 6) = 6;
      break;
    case 4:
LABEL_19:
      if (qword_1004567F8 != -1)
      {
        sub_10002EBAC();
      }

      v7 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v8 = (this + 48);
        if (*(this + 71) < 0)
        {
          v8 = *v8;
        }

        v12 = 136315138;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%s] deescalate at second opportunity", &v12, 0xCu);
      }

      result = 4;
      v9 = *(this + 7) + 1;
      *(this + 6) = 4;
      *(this + 7) = v9;
      return result;
    default:
      *(this + 6) = result;
      if (result == 5)
      {
        ++*(this + 8);
      }

      break;
  }

  return result;
}

uint64_t CLKappaDeescalator::evaluateBetweenMinAndMaxHoldDuration(CLKappaDeescalator *this)
{
  (*(*this + 40))(this);
  result = (*(*this + 72))(this);
  if (*(this + 44) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v4 = (this + 48);
      if (*(this + 71) < 0)
      {
        v4 = *v4;
      }

      v12 = 136315138;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%s] forcing noop between min/max", &v12, 0xCu);
    }

    return 7;
  }

  if (*(this + 10) == 3)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v6 = (this + 48);
      if (*(this + 71) < 0)
      {
        v6 = *v6;
      }

      v12 = 136315138;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%s] forcing deescalate between min/max", &v12, 0xCu);
    }

    goto LABEL_19;
  }

  switch(result)
  {
    case 7:
      return result;
    case 6:
      if (qword_1004567F8 != -1)
      {
        sub_10002EB98();
      }

      v10 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v11 = (this + 48);
        if (*(this + 71) < 0)
        {
          v11 = *v11;
        }

        v12 = 136315138;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%s] escalate between min/max", &v12, 0xCu);
      }

      result = 6;
      *(this + 6) = 6;
      break;
    case 4:
LABEL_19:
      if (qword_1004567F8 != -1)
      {
        sub_10002EBAC();
      }

      v7 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v8 = (this + 48);
        if (*(this + 71) < 0)
        {
          v8 = *v8;
        }

        v12 = 136315138;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%s] deescalate between min/max", &v12, 0xCu);
      }

      result = 4;
      v9 = *(this + 7) + 1;
      *(this + 6) = 4;
      *(this + 7) = v9;
      return result;
    default:
      *(this + 6) = result;
      if (result == 5)
      {
        ++*(this + 8);
      }

      break;
  }

  return result;
}

uint64_t CLKappaDeescalator::evaluateAtBoundary(CLKappaDeescalator *this)
{
  (*(*this + 40))(this);
  result = (*(*this + 80))(this);
  if (*(this + 44) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v4 = (this + 48);
      if (*(this + 71) < 0)
      {
        v4 = *v4;
      }

      v12 = 136315138;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%s] forcing noop at boundary", &v12, 0xCu);
    }

    return 7;
  }

  if (*(this + 10) == 4)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v6 = (this + 48);
      if (*(this + 71) < 0)
      {
        v6 = *v6;
      }

      v12 = 136315138;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%s] forcing deescalate at boundary", &v12, 0xCu);
    }

    goto LABEL_19;
  }

  switch(result)
  {
    case 7:
      return result;
    case 6:
      if (qword_1004567F8 != -1)
      {
        sub_10002EB98();
      }

      v10 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v11 = (this + 48);
        if (*(this + 71) < 0)
        {
          v11 = *v11;
        }

        v12 = 136315138;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%s] escalate at boundary", &v12, 0xCu);
      }

      result = 6;
      *(this + 6) = 6;
      break;
    case 4:
LABEL_19:
      if (qword_1004567F8 != -1)
      {
        sub_10002EBAC();
      }

      v7 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v8 = (this + 48);
        if (*(this + 71) < 0)
        {
          v8 = *v8;
        }

        v12 = 136315138;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%s] deescalate at boundary", &v12, 0xCu);
      }

      result = 4;
      v9 = *(this + 7) + 1;
      *(this + 6) = 4;
      *(this + 7) = v9;
      return result;
    default:
      *(this + 6) = result;
      if (result == 5)
      {
        ++*(this + 8);
      }

      break;
  }

  return result;
}

uint64_t CLKappaDeescalator::evaluateFollowingEscalation(CLKappaDeescalator *this)
{
  (*(*this + 40))(this);
  result = (*(*this + 88))(this);
  if (*(this + 44) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v4 = (this + 48);
      if (*(this + 71) < 0)
      {
        v4 = *v4;
      }

      v12 = 136315138;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%s] forcing noop following escalation", &v12, 0xCu);
    }

    return 7;
  }

  if (*(this + 10) == 5)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v6 = (this + 48);
      if (*(this + 71) < 0)
      {
        v6 = *v6;
      }

      v12 = 136315138;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%s] forcing deescalate following escalation", &v12, 0xCu);
    }

    goto LABEL_19;
  }

  switch(result)
  {
    case 7:
      return result;
    case 6:
      if (qword_1004567F8 != -1)
      {
        sub_10002EB98();
      }

      v10 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v11 = (this + 48);
        if (*(this + 71) < 0)
        {
          v11 = *v11;
        }

        v12 = 136315138;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%s] escalate following escalation", &v12, 0xCu);
      }

      result = 6;
      *(this + 6) = 6;
      break;
    case 4:
LABEL_19:
      if (qword_1004567F8 != -1)
      {
        sub_10002EBAC();
      }

      v7 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v8 = (this + 48);
        if (*(this + 71) < 0)
        {
          v8 = *v8;
        }

        v12 = 136315138;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%s] deescalate following escalation", &v12, 0xCu);
      }

      result = 4;
      v9 = *(this + 7) + 1;
      *(this + 6) = 4;
      *(this + 7) = v9;
      return result;
    default:
      *(this + 6) = result;
      if (result == 5)
      {
        ++*(this + 8);
      }

      break;
  }

  return result;
}

uint64_t CLKappaDeescalator::previousEpochMadeDecision(CLKappaDeescalator *this)
{
  if (*(this + 16) == 1)
  {
    *(this + 16) = 0;
  }

  *(this + 3) = 0;
  *(this + 8) = 0;
  return (*(*this + 96))();
}

uint64_t CLKappaDeescalator::raiseUnless(uint64_t this, BOOL a2, const char *a3)
{
  if ((this & 1) == 0)
  {
    sub_10002EBD4();
  }

  return this;
}

uint64_t CLKappaDeescalator::getHighSpeedDetectedStats(unsigned __int16 *a1)
{
  if (a1[1])
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v3 |= *sub_10002E0A8(a1, v2++);
    }

    while (v2 < a1[1]);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_10002E0A8(unsigned __int16 *a1, unint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v8 = *(a1 + 1);
      v9 = 134218754;
      v10 = Current;
      v11 = 2080;
      v12 = "const T &CMQueue<BOOL>::operator[](const size_t) const [T = BOOL]";
      v13 = 2048;
      v14 = a2;
      v15 = 1024;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,i,%zu,capacity,%u\n", &v9, 0x26u);
    }

    __assert_rtn("operator[]", "CMQueue.h", 244, "false");
  }

  v5 = *a1 + a2;
  if (v5 < v4)
  {
    v4 = 0;
  }

  return a1 + v5 - v4 + 8;
}

id CLKappaDeescalator::constructModePrefixKey(CLKappaDeescalator *this, const char *a2)
{
  if (!a2)
  {
    sub_10002ED38();
  }

  v3 = *(this + 36);

  return [CSPersistentConfiguration configBaseKey:a2 forFeatureMode:v3];
}

id CLKappaDeescalator::constructModePostKey(CLKappaDeescalator *this, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    v9 = sub_10002D404();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "key";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v10 = sub_10002D404();
    if (os_signpost_enabled(v10))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "key";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "key is null", "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v11 = sub_10002D404();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "key";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_19:

    abort_report_np();
    __break(1u);
  }

  if (!v5)
  {
    v12 = sub_10002D404();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "postfix";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:postfix is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v13 = sub_10002D404();
    if (os_signpost_enabled(v13))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "postfix";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "postfix is null", "{msg%{public}.0s:postfix is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v11 = sub_10002D404();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "postfix";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:postfix is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_19;
  }

  v7 = [[NSString alloc] initWithFormat:@"%@%@", v4, v5];

  return v7;
}

unint64_t CLKappaDeescalator::shouldForceDeescalate(CLKappaDeescalator *this, const char *a2)
{
  if (!a2)
  {
    sub_10002EE6C();
  }

  v3 = [CSPersistentConfiguration configBaseKey:a2 forFeatureMode:*(this + 36)];
  v4 = CLKappaDeescalator::constructModePostKey(v3, v3, @"Deescalate");
  v5 = +[CSPersistentConfiguration sharedConfiguration];
  v6 = [v5 getIntegerDefault:v4];
  v7 = v6;
  v8 = 0;
  if ((v6 & &_mh_execute_header) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if ((v9 - 7) >= 0xFFFFFFFA)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v10 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v11 = (this + 48);
      if (*(this + 71) < 0)
      {
        v11 = *v11;
      }

      v13 = 136315394;
      v14 = v11;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%s] forcing deescalate at %d", &v13, 0x12u);
    }

    v8 = v7;
  }

  return v8;
}

uint64_t CLKappaDeescalator::shouldForceNoop(CLKappaDeescalator *this, const char *a2)
{
  if (!a2)
  {
    sub_10002EFA8();
  }

  v3 = [CSPersistentConfiguration configBaseKey:a2 forFeatureMode:*(this + 36)];
  v4 = CLKappaDeescalator::constructModePostKey(v3, v3, @"Noop");
  v5 = +[CSPersistentConfiguration sharedConfiguration];
  v6 = [v5 getBooleanDefault:v4];
  v7 = *&v6 & ((v6 & 0x100) >> 8);
  if (v7 == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_10002EB98();
    }

    v8 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      v9 = (this + 48);
      if (*(this + 71) < 0)
      {
        v9 = *v9;
      }

      v11 = 136315138;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%s] forcing noop behavior", &v11, 0xCu);
    }
  }

  return v7;
}

id CLKappaDeescalator::shouldForce(CLKappaDeescalator *this, const char *a2)
{
  v2 = [CSPersistentConfiguration configBaseKey:a2 forFeatureMode:*(this + 36)];
  v3 = +[CSPersistentConfiguration sharedConfiguration];
  v4 = [v3 objectForKey:v2];
  if (v4)
  {
    v5 = [v3 BOOLForKey:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

int *CLKappaDeescalationDecision::update(int *result, int a2)
{
  if (a2 > 3)
  {
    if (a2 == 4 || a2 == 6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (a2 == 2)
    {
LABEL_8:
      *result = a2;
      return result;
    }

    if (a2 == 3 && *result == 2)
    {
      a2 = 0;
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10002EAB0(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_10002EAF4(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x26u);
}

void sub_10002EB58(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x26u);
}

void sub_10002EB78(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

void sub_10002EBD4()
{
  v0 = sub_10002D404();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_10002EB20();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed assert in raiseUnless(): , errorMessage:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v1 = sub_10002D404();
  if (os_signpost_enabled(v1))
  {
    sub_10002EB20();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed assert in raiseUnless(): ", "{msg%{public}.0s:Failed assert in raiseUnless(): , errorMessage:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v2 = sub_10002D404();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    sub_10002EB20();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed assert in raiseUnless(): , errorMessage:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v3 = abort_report_np();
  sub_10002ED38(v3);
}

void sub_10002ED38()
{
  v0 = sub_10002D404();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v1, v2, "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = sub_10002D404();
  if (os_signpost_enabled(v7))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v8, v9, v10, "key is null", "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = sub_10002D404();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v14, v15, "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  sub_10002EE6C();
}

void sub_10002EE6C()
{
  v0 = sub_10002D404();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v1, v2, "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = sub_10002D404();
  if (os_signpost_enabled(v7))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v8, v9, v10, "key is null", "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = sub_10002D404();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v14, v15, "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void sub_10002EFA8()
{
  v0 = sub_10002D404();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100009C7C();
    sub_10002EB78(&_mh_execute_header, v1, v2, "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = sub_10002D404();
  if (os_signpost_enabled(v7))
  {
    sub_100009C7C();
    sub_10002EAF4(&_mh_execute_header, v8, v9, v10, "key is null", "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = sub_10002D404();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sub_100009C7C();
    sub_10002EB58(&_mh_execute_header, v14, v15, "{msg%{public}.0s:key is null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

double CLMartyEstimatesAlgCoupledCrashResult::reset(CLMartyEstimatesAlgCoupledCrashResult *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 7) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  return result;
}

double CLMartyEstimatesAlgCoupledCrashResult::log(CLMartyEstimatesAlgCoupledCrashResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_100030718();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 7);
    v5 = *(this + 48);
    v6 = *(this + 50);
    v7 = *(this + 16);
    v8 = *(this + 17);
    v9 = *(this + 18);
    v10 = *(this + 19);
    v11 = *(this + 22);
    v12 = *(this + 23);
    v13 = *(this + 24);
    v14 = *(this + 25);
    v15 = *(this + 26);
    v16 = *(this + 20);
    v17 = *(this + 21);
    v18 = *(this + 27);
    v19 = *(this + 28);
    v20 = *(this + 29);
    v21 = *(this + 30);
    v22 = *(this + 31);
    v23 = *(this + 32);
    v24 = 134353920;
    v25 = v4;
    v26 = 1026;
    v27 = v5;
    v28 = 1026;
    v29 = v6;
    v30 = 2050;
    v31 = v7;
    v32 = 2050;
    v33 = v8;
    v34 = 2050;
    v35 = v9;
    v36 = 2050;
    v37 = v10;
    v38 = 2050;
    v39 = v11;
    v40 = 2050;
    v41 = v12;
    v42 = 2050;
    v43 = v13;
    v44 = 2050;
    v45 = v14;
    v46 = 2050;
    v47 = v15;
    v48 = 2050;
    v49 = v16;
    v50 = 2050;
    v51 = v17;
    v52 = 2050;
    v53 = v18;
    v54 = 2050;
    v55 = v19;
    v56 = 2050;
    v57 = v20;
    v58 = 2050;
    v59 = v21;
    v60 = 2050;
    v61 = v22;
    v62 = 2050;
    v63 = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[M][CC] AlgBlock summary,A,%{public}llu,B,%{public}d,C,%{public}d,debug-1,%{public}f,debug-2,%{public}f,debug-3,%{public}f,debug-4,%{public}f,debug-5,%{public}f,debug-6,%{public}f,debug-7,%{public}f,debug-8,%{public}f,debug-9,%{public}f,debug-10,%{public}f,debug-11,%{public}f,debug-12,%{public}f,debug-13,%{public}f,debug-14,%{public}f,debug-15,%{public}f,debug-16,%{public}f,debug-17,%{public}f", &v24, 0xC2u);
  }

  return result;
}

void CLMartyEstimatesAlgCoupledCrash::CLMartyEstimatesAlgCoupledCrash(CLMartyEstimatesAlgCoupledCrash *this, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *&v6 = 0x80000000800000;
  *(&v6 + 1) = 0x80000000800000;
  *(this + 3) = v6;
  *(this + 4) = xmmword_10037E150;
  *(this + 5) = xmmword_10037E160;
  *(this + 12) = 0x80000000800000;
  sub_1000305CC();
}

void sub_10002F56C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_10002F594@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void CLMartyEstimatesAlgCoupledCrash::CLMartyEstimatesAlgCoupledCrash(CLMartyEstimatesAlgCoupledCrash *this)
{
  *this = off_100411FE8;
  *(this + 13) = off_100412090;
  *(this + 14) = off_100412158;
  *(this + 15) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_100414BD0);
  *v1 = off_100414680;
  *(v1 + 104) = off_100414940;
  *(v1 + 112) = off_100414A88;
  *(v1 + 120) = off_100414B78;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *&v2 = 0x80000000800000;
  *(&v2 + 1) = 0x80000000800000;
  *(v1 + 48) = v2;
  *(v1 + 64) = xmmword_10037E150;
  *(v1 + 80) = xmmword_10037E160;
  *(v1 + 96) = 0x80000000800000;
  sub_1000305CC();
}

void sub_10002F830(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100009A48(v3);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100414BD0);
  _Unwind_Resume(a1);
}

void CLMartyEstimatesAlgCoupledCrash::resetConfiguration(CLMartyEstimatesAlgCoupledCrash *this)
{
  v32 = [CSPersistentConfiguration configBaseKey:"EstimatesAlgCCConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 0.5;
  LODWORD(v4) = 11.5;
  LODWORD(v5) = 1193033728;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v32 withMinValue:v3 maxValue:v5 defaultValue:v4];
  LODWORD(v33) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 1117782016;
  LODWORD(v9) = 30.0;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v32 withMinValue:0.0 maxValue:v8 defaultValue:v9];
  DWORD1(v33) = v10;

  v11 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v12) = 1112014848;
  LODWORD(v13) = 7.0;
  [v11 algorithmThresholdNumber:2 inArrayForKey:v32 withMinValue:0.0 maxValue:v12 defaultValue:v13];
  DWORD2(v33) = v14;

  v15 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v16) = 1157234688;
  LODWORD(v17) = 1120403456;
  [v15 algorithmThresholdNumber:3 inArrayForKey:v32 withMinValue:0.0 maxValue:v16 defaultValue:v17];
  HIDWORD(v33) = v18;

  v19 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v20) = 1157234688;
  LODWORD(v21) = 19.0;
  [v19 algorithmThresholdNumber:4 inArrayForKey:v32 withMinValue:0.0 maxValue:v20 defaultValue:v21];
  v34 = v22;

  v23 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v24) = 1157234688;
  LODWORD(v25) = 1118568448;
  [v23 algorithmThresholdNumber:5 inArrayForKey:v32 withMinValue:0.0 maxValue:v24 defaultValue:v25];
  v35 = v26;

  v27 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v28) = 0.5;
  LODWORD(v29) = 15.0;
  LODWORD(v30) = 1193033728;
  [v27 algorithmThresholdNumber:6 inArrayForKey:v32 withMinValue:v28 maxValue:v30 defaultValue:v29];
  v36 = v31;

  CLMartyEstimatesAlgCoupledCrash::setConfig(this, &v33);
}