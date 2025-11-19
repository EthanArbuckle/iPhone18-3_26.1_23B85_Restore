uint64_t init_tailspin()
{
  v0 = is_apple_internal_setting();
  tailspin_ondisk_config = get_tailspin_ondisk_config();
  if (tailspin_ondisk_config)
  {
    v2 = strncmp("Photos", (tailspin_ondisk_config + 8361), 6uLL);
    v3 = tailspin_enabled_get();
    v4 = *__error();
    v5 = sub_CE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v34 = v2 == 0;
      *&v34[4] = 1024;
      *&v34[6] = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "is Photos: %{BOOL}d, is tailspin enabled: %{BOOL}d", buf, 0xEu);
    }

    *__error() = v4;
    v6 = (v2 == 0) & (v3 ^ 1);
    if (!v0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *__error();
    v8 = sub_CE8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Not Photos, no on-disk config", buf, 2u);
    }

    v6 = 0;
    *__error() = v7;
    if (!v0)
    {
      goto LABEL_11;
    }
  }

  if (!v6)
  {
    v9 = "Didn't";
    goto LABEL_18;
  }

LABEL_11:
  bzero(buf, 0x400uLL);
  v28 = 1024;
  sysctlbyname("kern.osversion", buf, &v28, 0, 0);
  v10 = [NSString stringWithUTF8String:buf];
  v11 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.tailspin"];
  v12 = [v11 stringForKey:@"tailspin_configuration_last_build_reset"];
  v13 = *__error();
  v14 = sub_CE8();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 138543618;
    v30 = v12;
    v31 = 2114;
    v32 = v10;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "last build reset: %{public}@, current build: %{public}@", v29, 0x16u);
  }

  *__error() = v13;
  if (v12 && ([v12 isEqualToString:v10] & 1) != 0)
  {
    v9 = "Didn't";
  }

  else
  {
    unlink("/var/db/tailspin_config.plist");
    [v11 setObject:v10 forKey:@"tailspin_configuration_last_build_reset"];
    v9 = "Did";
  }

LABEL_18:
  v15 = *__error();
  v16 = sub_CE8();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *v34 = v9;
    *&v34[8] = 1024;
    v35 = v0;
    v36 = 1024;
    v37 = v6;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}s reset on-disk tailspin configuration. Apple-Internal: %{BOOL}d, Is Photos: %{BOOL}d", buf, 0x18u);
  }

  *__error() = v15;
  v17 = get_tailspin_ondisk_config();
  tailspin_profile_config = get_tailspin_profile_config();
  tailspin_tasking_config = get_tailspin_tasking_config();
  result = tailspin_enabled_get_default();
  if (!v17)
  {
    v21 = result;
    v24 = tailspin_tasking_config | tailspin_profile_config;
LABEL_35:
    v25 = v24 == 0;
    goto LABEL_36;
  }

  result = tailspin_enabled_get();
  v21 = result;
  v22 = 0;
  v23 = v17[2];
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      if (v23 == 3)
      {
        if (tailspin_profile_config)
        {
          result = bcmp(v17, tailspin_profile_config, 0x2118uLL);
          if (!result)
          {
            goto LABEL_53;
          }
        }

        v22 = 1;
        goto LABEL_41;
      }

LABEL_39:
      if ((v22 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    v25 = tailspin_profile_config == 0;
LABEL_36:
    v22 = !v25;
    goto LABEL_39;
  }

  if (!v23)
  {
    v24 = tailspin_profile_config | tailspin_tasking_config;
    goto LABEL_35;
  }

  if (v23 != 1)
  {
    goto LABEL_39;
  }

  v22 = 1;
  if (!tailspin_profile_config)
  {
    if (tailspin_tasking_config)
    {
      result = bcmp(tailspin_tasking_config, v17, 0x2118uLL);
      if (!result)
      {
LABEL_53:
        v22 = 0;
LABEL_40:
        if (!v21)
        {
          goto LABEL_45;
        }
      }
    }
  }

LABEL_41:
  v26 = *__error();
  v27 = sub_CE8();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_E0C(v27);
  }

  *__error() = v26;
  result = tailspin_poke();
  if (v22)
  {
    result = tailspin_resolve_configs();
  }

LABEL_45:
  if (v17)
  {
    result = tailspin_config_free();
  }

  if (tailspin_profile_config)
  {
    result = tailspin_config_free();
  }

  if (tailspin_tasking_config)
  {
    return tailspin_config_free();
  }

  return result;
}

id sub_CE8()
{
  if (qword_4340 != -1)
  {
    sub_E50();
  }

  v1 = qword_4338;

  return v1;
}

void sub_D2C(id a1)
{
  v1 = os_log_create("com.apple.tailspin", "library");
  v2 = qword_4338;
  qword_4338 = v1;

  v3 = qword_4338;
  if (!v3)
  {
    sub_E64();
  }
}

uint64_t sub_D8C(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = snprintf(byte_4348, 0x400uLL, "%d ", a1);
  if ((result - 1) <= 0x3FE)
  {
    result = vsnprintf(&byte_4348[result], 1024 - result, a2, &a9);
  }

  qword_41F8 = byte_4348;
  return result;
}

void sub_E64()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
  __error();
}