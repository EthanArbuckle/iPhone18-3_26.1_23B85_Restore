void sub_10000118C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = livefs_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[SMBFileProviderExtension clusterDomainItemsOrError:]_block_invoke";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s share (%@) scoped_share (%@) ", &v12, 0x20u);
  }

  if ([v7 hasPrefix:a1[4]] && objc_msgSend(v7, "length") > a1[6])
  {
    v10 = a1[5];
    v11 = [v8 substringFromIndex:?];
    [v10 addObject:v11];
  }
}

void sub_1000012D0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000012EC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_100001470(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[SMBFileProviderExtension clusterDomainItemsOrError:]";
  *&v3[12] = 2112;
  *&v3[14] = a1;
  *&v3[22] = 2112;
  sub_1000012EC(&_mh_execute_header, a2, a3, "%s: got vols %@ error %@", *v3, *&v3[8], *&v3[16], a2);
}

void sub_1000014F8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = "(passed to caller)";
  *&v4[4] = "[SMBFileProviderExtension clusterDomainItemsOrError:]";
  *v4 = 136315650;
  if (!a1)
  {
    v3 = "(ignored by caller)";
  }

  *&v4[12] = 2080;
  *&v4[14] = v3;
  *&v4[22] = 2112;
  sub_1000012EC(&_mh_execute_header, a2, a3, "%s: %s error: %@", *v4, *&v4[8], *&v4[16], a2);
}