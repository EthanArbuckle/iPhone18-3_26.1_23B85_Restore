@interface BootSessionUUID
@end

@implementation BootSessionUUID

void __BootSessionUUID_block_invoke(id a1)
{
  __size = 0;
  v1 = BootSessionUUID_stringValue;
  BootSessionUUID_stringValue = 0;

  if (sysctlbyname("kern.bootsessionuuid", 0, &__size, 0, 0))
  {
    v2 = _MADLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      return;
    }

    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    *buf = 67109378;
    LODWORD(v18[0]) = v3;
    WORD2(v18[0]) = 2080;
    *(v18 + 6) = v5;
    v6 = "Could not look up boot session UUID: %d (%s)";
    v7 = v2;
    v8 = 18;
LABEL_4:
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    goto LABEL_5;
  }

  if (!__size)
  {
    v2 = _MADLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 134217984;
    v18[0] = __size;
    v6 = "Boot session UUID has an invalid length (%zu)";
    v7 = v2;
    v8 = 12;
    goto LABEL_4;
  }

  v9 = malloc(__size);
  if (!v9)
  {
    v2 = _MADLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v6 = "Could not allocate buffer to copy boot session UUID";
    v7 = v2;
    v8 = 2;
    goto LABEL_4;
  }

  v10 = v9;
  if (sysctlbyname("kern.bootsessionuuid", v9, &__size, 0, 0))
  {
    v11 = _MADLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 67109378;
      LODWORD(v18[0]) = v12;
      WORD2(v18[0]) = 2080;
      *(v18 + 6) = v14;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Could not copy boot session UUID: %d (%s)", buf, 0x12u);
    }
  }

  else
  {
    v15 = [NSString stringWithCString:v10 encoding:4];
    v11 = BootSessionUUID_stringValue;
    BootSessionUUID_stringValue = v15;
  }

  free(v10);
}

@end