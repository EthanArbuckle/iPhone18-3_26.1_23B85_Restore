void sub_100000F14(id a1, NSData *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = SDLogCategoryExtension();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100001BAC(v3);
    }
  }
}

uint64_t sub_10000165C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001674(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = *(a1 + 32);
    v7 = 0;
    [a2 writeToURL:v4 atomically:0 encoding:4 error:&v7];
    v5 = v7;
    if (v5)
    {
      v6 = SDLogCategoryExtension();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100001CFC(v5, v6);
      }
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100001710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SDLogCategoryExtension();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100001D74(v6);
    }
  }

  else
  {
    if (![v5 length])
    {
      goto LABEL_5;
    }

    v7 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:0];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [DEAttachmentItem attachmentWithPath:*(*(&v13 + 1) + 8 * i)];
          if (v12)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

LABEL_5:
  dispatch_group_leave(*(a1 + 32));
}

void sub_100001AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001B08(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  [*(a1 + 40) invalidate];
}

void sub_100001B70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100001B8C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100001BAC(void *a1)
{
  v1 = [a1 debugDescription];
  sub_100001B8C(&_mh_execute_header, v2, v3, "taptoradar error %@", v4, v5, v6, v7, 2u);
}

void sub_100001C34(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Using temp directory %@", buf, 0xCu);
}

void sub_100001CFC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error writing status to file: %@", &v2, 0xCu);
}

void sub_100001D74(void *a1)
{
  v1 = [a1 debugDescription];
  sub_100001B8C(&_mh_execute_header, v2, v3, "searchd diagnose error %@", v4, v5, v6, v7, 2u);
}