@interface SAAttributionTag
+ (id)getAccessBundleIdForTag:(unint64_t)a3 onVolumeName:(const char *)a4;
+ (id)getBundleIdForTag:(unint64_t)a3 onVolumeName:(const char *)a4;
+ (void)enableAttributionTagging:(id)a3;
+ (void)processAttributionTagsForVol:(id)a3 withBlock:(id)a4;
@end

@implementation SAAttributionTag

+ (void)enableAttributionTagging:(id)a3
{
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v12 = 1;
        if (fsctl([v8 fileSystemRepresentation], 0xC0044A75uLL, &v12, 0))
        {
          v9 = SALog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = __error();
            v11 = strerror(*v10);
            *buf = 138412546;
            v18 = v8;
            v19 = 2080;
            v20 = v11;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "APFSIOC_VOL_ATTRIBUTION_TAG for (%@) failed with error %s", buf, 0x16u);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

+ (void)processAttributionTagsForVol:(id)a3 withBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100040394(v5, v7);
  }

  v8 = malloc_type_malloc(0x169540uLL, 0x100004005247EF8uLL);
  if (v8)
  {
    v9 = v8;
    v17 = v5;
    v10 = [v5 cStringUsingEncoding:1];
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LODWORD(v19) = 5000;
      v20 = v9;
      if (fsctl(v10, 0xC0184A76uLL, &v18, 1u))
      {
        break;
      }

      v11 = v19;
      if (v19)
      {
        v12 = 0;
        v13 = v9 + 40;
        do
        {
          if (*v13 && *(v13 - 2))
          {
            v14 = [NSString stringWithUTF8String:v13];
            (*(v6 + 2))(v6, v14, *(v13 - 2), *(v13 - 1), *(v13 - 3), *(v13 - 5));

            v11 = v19;
          }

          ++v12;
          v13 += 296;
        }

        while (v12 < v11);
      }

      if ((v19 & 0x100000000) != 0)
      {
        goto LABEL_20;
      }
    }

    v16 = SALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004040C();
    }

LABEL_20:
    free(v9);
    v5 = v17;
  }

  else
  {
    v15 = SALog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000404A8(v15);
    }
  }
}

+ (id)getBundleIdForTag:(unint64_t)a3 onVolumeName:(const char *)a4
{
  memset(v10, 0, sizeof(v10));
  v9 = 0u;
  v8 = 0u;
  v7 = a3;
  if (fsctl(a4, 0xC1284A72uLL, &v7, 1u))
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100040528();
    }

    v5 = 0;
  }

  else
  {
    v5 = [NSString stringWithUTF8String:v10];
  }

  return v5;
}

+ (id)getAccessBundleIdForTag:(unint64_t)a3 onVolumeName:(const char *)a4
{
  v6 = malloc_type_malloc(0x1EF0uLL, 0x10000400E1E4D96uLL);
  if (!v6)
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100040664(v10);
    }

    goto LABEL_13;
  }

  v7 = v6;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  LODWORD(v16[0]) = 6;
  DWORD2(v17) = 30;
  v18 = v6;
  if (fsctl(a4, 0xC0F84A7EuLL, v16, 0))
  {
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000405C4();
    }

    goto LABEL_6;
  }

  v13 = HIDWORD(v17);
  if (!HIDWORD(v17))
  {
LABEL_6:
    free(v7);
LABEL_7:
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100040528();
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v11 = 0;
  v14 = v18 + 8;
  do
  {
    if (*(v14 - 8) == a3)
    {
      v15 = [NSString stringWithCString:v14 encoding:4];

      v11 = v15;
    }

    v14 += 264;
    --v13;
  }

  while (v13);
  free(v7);
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_14:

  return v11;
}

@end