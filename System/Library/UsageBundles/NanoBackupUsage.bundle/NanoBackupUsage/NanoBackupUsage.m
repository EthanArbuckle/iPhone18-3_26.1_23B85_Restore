void sub_E84(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = *(a1 + 32);
  v6 = v5[2];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_F34;
  v7[3] = &unk_8280;
  v8 = v5;
  [v6 listBackupsOfType:1 withSynchronousCompletionHandler:v7];
}

void sub_F34(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 uuid];

        if (v9)
        {
          v10 = *(*(a1 + 32) + 8);
          v11 = [v8 uuid];
          [v10 setObject:v8 forKeyedSubscript:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_123C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1300;
  v8[3] = &unk_82D0;
  v3 = (a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 32);
  *(&v6 + 1) = *v3;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v8];
}

void sub_1300(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = a2;
  v6 = [v13 name];
  v7 = [v5 UUIDString];

  v8 = [PSUsageBundleCategory categoryNamed:v6 withIdentifier:v7 forUsageBundleApp:*(a1 + 32)];

  [*(a1 + 40) addObject:v8];
  [v8 setNanoBackup:v13];
  v9 = [v13 sizeInBytes];
  if (![v9 unsignedLongLongValue])
  {

    v9 = &off_85B0;
  }

  v10 = *(*(a1 + 48) + 40);
  v11 = [v13 uuid];
  v12 = [v11 UUIDString];
  [v10 setObject:v9 forKeyedSubscript:v12];

  *(*(*(a1 + 56) + 8) + 24) += [v9 unsignedLongLongValue];
}

int64_t sub_144C(id a1, PSUsageBundleCategory *a2, PSUsageBundleCategory *a3)
{
  v4 = a3;
  v5 = [(PSUsageBundleCategory *)a2 nanoBackup];
  v6 = [v5 sizeInBytes];
  v7 = [(PSUsageBundleCategory *)v4 nanoBackup];

  v8 = [v7 sizeInBytes];
  v9 = -[v6 compare:v8];

  return v9;
}

uint64_t sub_16C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_16DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(v2 + 8) objectForKeyedSubscript:*(a1 + 40)];
  v5 = [v3 deleteBackup:v4];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    v8 = [*(a1 + 48) usageBundleApp];
    v9 = [v8 categories];
    [v9 removeObject:*(a1 + 48)];
  }

  if (*(a1 + 64))
  {
    **(a1 + 64) = *(*(*(a1 + 56) + 8) + 40);
  }
}

void sub_2160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_217C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21A4(uint64_t a1, uint64_t a2)
{
  v10 = [*(*(a1 + 32) + OBJC_IVAR___PSListController__specifiers) objectAtIndexedSubscript:a2];
  v3 = [v10 propertyForKey:PSUsageBundleCategoryKey];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 usageBundleApp];
    v6 = [v5 categories];
    [v6 removeObject:v4];

    v7 = *(a1 + 40);
    v8 = [v4 nanoBackup];
    v9 = [v7 deleteBackup:v8];
  }
}