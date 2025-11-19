void _cryptex_core_dealloc(void *a1)
{
  cryptex_asset_array_destroy((a1 + 8));
  v2 = a1[20];
  if (v2)
  {
    os_release(v2);
  }

  v3 = a1[21];
  if (v3)
  {
    os_release(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    os_release(v4);
  }

  v5 = a1[26];
  if (v5)
  {
    xpc_release(v5);
  }

  object_proto_destroy((a1 + 2));
}

void _cryptex_core_cx1_properties_dealloc(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    free(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    free(v3);
    *(a1 + 56) = 0;
  }

  object_proto_destroy(a1 + 16);
}

void *cryptex_core_create(uint64_t a1)
{
  v2 = _cryptex_core_alloc();
  v2[5] = a1;
  v2[22] = &_cryptex_asset_type_pdmg;
  v2[23] = &_cryptex_asset_type_c411;
  v2[24] = &_cryptex_asset_type_ltrs;
  v2[25] = &_cryptex_asset_type_roothash;
  v2[26] = 0;
  object_proto_init((v2 + 2), "com.apple.security.libcryptex.core", "cryptex.core");
  return v2;
}

int *cryptex_core_set_asset(int *result, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  v3 = result + 16;
  v4 = *(*a2 + 8);
  if (*&result[2 * v4[3] + 16])
  {
    cryptex_core_set_asset_cold_1(&v14, buf, v4);
  }

  v6 = result;
  if (v4 == &_cryptex_asset_type_cpxd)
  {
    v8 = *(result + 2);
    *(v2 + 32) = v8;
    *(result + 22) = &_cryptex_asset_type_cpxd;
    v9 = *__error();
    v10 = *(v6 + 4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = "[anonymous]";
      if (v8)
      {
        v11 = v8;
      }

      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(&dword_2986F2000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: core has research dmg asset", buf, 0xCu);
    }

    result = __error();
    *result = v9;
    v4 = *(v2 + 8);
  }

  else if (v4 == &_cryptex_asset_type_gdmg)
  {
    *(v2 + 32) = *(result + 2);
    v4 = &_cryptex_asset_type_gdmg;
    v7 = 44;
LABEL_17:
    *&v6[v7] = v4;
    goto LABEL_18;
  }

  v12 = &_cryptex_asset_type_ginf;
  if (v4 == &_cryptex_asset_type_ginf)
  {
    v7 = 46;
    goto LABEL_16;
  }

  v12 = &_cryptex_asset_type_gtcd;
  if (v4 == &_cryptex_asset_type_gtcd)
  {
    v7 = 48;
    goto LABEL_16;
  }

  v12 = &_cryptex_asset_type_gtgv;
  if (v4 == &_cryptex_asset_type_gtgv)
  {
    v7 = 50;
LABEL_16:
    v4 = v12;
    goto LABEL_17;
  }

LABEL_18:
  *&v3[2 * v4[3]] = v2;
  *a2 = 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_core_set_assets_from_directory(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  file = 2;
  v6 = &cryptex_asset_types;
  v61 = *MEMORY[0x29EDCA608];
  v7 = &_cryptex_asset_type_root;
  do
  {
    v8 = v6[v4];
    v55 = -1;
    object = 0;
    if (v8 == v7)
    {
      v55 = dup_np();
      v54 = cryptex_asset_new(v7);
      goto LABEL_13;
    }

    v55 = openat(a2, *(v8 + 40), 0);
    if ((v55 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v9 = *__error();
    if (v9)
    {
      if (v9 == 2)
      {
        v10 = a2;
        v11 = v7;
        v12 = v6;
        v13 = v5;
        v14 = *(a1 + 16);
        v15 = *__error();
        v16 = *(a1 + 32);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(v8 + 40);
          v18 = "[anonymous]";
          if (v14)
          {
            v18 = v14;
          }

          buf[0].n128_u32[0] = 136446466;
          *(buf[0].n128_u64 + 4) = v18;
          buf[0].n128_u16[6] = 2080;
          *(&buf[0].n128_u64[1] + 6) = v17;
          _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_DEBUG, "%{public}s: no asset of type: %s", buf, 0x16u);
        }

        *__error() = v15;
        v19 = 4;
        v5 = v13;
        v6 = v12;
        v7 = v11;
        a2 = v10;
        goto LABEL_28;
      }

      file = *__error();
      v26 = *(a1 + 16);
      v27 = *__error();
      v28 = *(a1 + 32);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
LABEL_27:
        *__error() = v27;
        v19 = 14;
        goto LABEL_28;
      }

      buf[0].n128_u32[0] = 136446466;
      v29 = "[anonymous]";
      if (v26)
      {
        v29 = v26;
      }

      *(buf[0].n128_u64 + 4) = v29;
      buf[0].n128_u16[6] = 1024;
      *(&buf[0].n128_u32[3] + 2) = file;
      v30 = buf;
      v31 = v28;
      v32 = "%{public}s: openat: %{darwin.errno}d";
LABEL_26:
      _os_log_impl(&dword_2986F2000, v31, OS_LOG_TYPE_ERROR, v32, v30, 0x12u);
      goto LABEL_27;
    }

    ++v5;
    v20 = cryptex_asset_new(v8);
    v21 = v20;
    v54 = v20;
    if (v8 == &_cryptex_asset_type_im4m)
    {
      v60 = 0;
      memset(buf, 0, sizeof(buf));
      file = _read_file(v20[4], buf);
      if (file)
      {
        v33 = *(a1 + 16);
        v27 = *__error();
        v34 = *(a1 + 32);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *v56 = 136446466;
        v35 = "[anonymous]";
        if (v33)
        {
          v35 = v33;
        }

        *&v56[4] = v35;
        v57 = 1024;
        v58 = file;
        v30 = v56;
        v31 = v34;
        v32 = "%{public}s: failed to read im4m: %{darwin.errno}d";
        goto LABEL_26;
      }

      v36 = cryptex_metadata_read_from_file_xattrs(v21[4], &object);
      if (v36)
      {
        v37 = v36;
        v38 = *(a1 + 16);
        v39 = *__error();
        v40 = *(a1 + 32);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *v56 = 136446466;
          v41 = "[anonymous]";
          if (v38)
          {
            v41 = v38;
          }

          *&v56[4] = v41;
          v57 = 1024;
          v58 = v37;
          _os_log_impl(&dword_2986F2000, v40, OS_LOG_TYPE_ERROR, "%{public}s: Failed to load metadata for Image4 manifest.: %{darwin.errno}d", v56, 0x12u);
        }

        *__error() = v39;
      }

      v42 = cryptex_signature_create(buf, 0, object);
      cryptex_core_attach_signature(a1, v42);
      if (v42)
      {
        os_release(v42);
      }

LABEL_13:
      cryptex_core_set_asset(a1, &v54);
      v19 = 0;
      file = 0;
      goto LABEL_28;
    }

    if (v8 != &_cryptex_asset_type_cx1p)
    {
      goto LABEL_13;
    }

    *v56 = 0;
    file = cryptex_core_cx1_read_from_file(v20[4], v56);
    if (file)
    {
      v22 = *(a1 + 16);
      v23 = *__error();
      v24 = *(a1 + 32);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        buf[0].n128_u32[0] = 136446466;
        v25 = "[anonymous]";
        if (v22)
        {
          v25 = v22;
        }

        *(buf[0].n128_u64 + 4) = v25;
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = file;
        _os_log_impl(&dword_2986F2000, v24, OS_LOG_TYPE_ERROR, "%{public}s: Failed to read Cryptex1 properties.: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v23;
      v19 = 14;
    }

    else
    {
      v19 = 0;
      *(a1 + 216) = os_retain(*v56);
    }

    if (*v56)
    {
      os_release(*v56);
    }

    if (!file)
    {
      goto LABEL_13;
    }

LABEL_28:
    if (object)
    {
      os_release(object);
    }

    if (v55 != -1 && close(v55) == -1)
    {
      cryptex_core_set_assets_from_directory_cold_1(v56, buf);
    }

    if ((v19 | 4) != 4)
    {
      goto LABEL_65;
    }

    ++v4;
  }

  while (v4 != 12);
  if (v5)
  {
    if (!*(a1 + 8 * *(*(a1 + 176) + 24) + 64))
    {
      v43 = *(a1 + 16);
      v44 = *__error();
      v45 = *(a1 + 32);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = "[anonymous]";
        if (v43)
        {
          v46 = v43;
        }

        buf[0].n128_u32[0] = 136446466;
        *(buf[0].n128_u64 + 4) = v46;
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 2;
        v47 = "%{public}s: No image asset was loaded from directory.: %{darwin.errno}d";
        goto LABEL_63;
      }

      goto LABEL_64;
    }
  }

  else
  {
    v48 = *(a1 + 16);
    v44 = *__error();
    v45 = *(a1 + 32);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v49 = "[anonymous]";
      if (v48)
      {
        v49 = v48;
      }

      buf[0].n128_u32[0] = 136446466;
      *(buf[0].n128_u64 + 4) = v49;
      buf[0].n128_u16[6] = 1024;
      *(&buf[0].n128_u32[3] + 2) = 2;
      v47 = "%{public}s: No cryptex assets were loaded from directory.: %{darwin.errno}d";
LABEL_63:
      _os_log_impl(&dword_2986F2000, v45, OS_LOG_TYPE_ERROR, v47, buf, 0x12u);
    }

LABEL_64:
    *__error() = v44;
    file = 2;
  }

LABEL_65:
  v50 = *MEMORY[0x29EDCA608];
  return file;
}

void *cryptex_core_attach_signature(uint64_t a1, void *object)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    os_release(v4);
  }

  result = os_retain(object);
  *(a1 + 160) = result;
  return result;
}

uint64_t cryptex_core_cx1_read_from_file(int a1, void **a2)
{
  v75 = *MEMORY[0x29EDCA608];
  v39 = 0;
  error = 0;
  memset(v38, 0, sizeof(v38));
  v73 = 0u;
  memset(v74, 0, sizeof(v74));
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  *buffer = 0u;
  v58 = 0u;
  memset(v59, 0, 31);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  *v45 = 0u;
  file = _read_file(a1, v38);
  if (file)
  {
    v4 = file;
    v5 = *__error();
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      *__error() = v5;
      buff_destroy(v38);
      goto LABEL_6;
    }

    *buf = 67109120;
    LODWORD(v42) = v4;
    v6 = MEMORY[0x29EDCA988];
    v7 = "Failed to read properties from file.: %{darwin.errno}d";
LABEL_4:
    _os_log_impl(&dword_2986F2000, v6, OS_LOG_TYPE_ERROR, v7, buf, 8u);
    goto LABEL_5;
  }

  v10 = CFDataCreate(0, *&v38[0], *(&v38[0] + 1));
  if (!v10)
  {
    v5 = *__error();
    v4 = 12;
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 67109120;
    LODWORD(v42) = 12;
    v6 = MEMORY[0x29EDCA988];
    v7 = "Failed to create data.: %{darwin.errno}d";
    goto LABEL_4;
  }

  v11 = v10;
  v12 = CFPropertyListCreateWithData(0, v10, 0, 0, &error);
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFDictionaryGetTypeID())
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    Value = CFDictionaryGetValue(v15, @"Cryptex1,NonceDomain");
    if (Value)
    {
      v17 = Value;
      v18 = CFDictionaryGetValue(v15, @"Cryptex1,SubType");
      if (v18)
      {
        v19 = v18;
        v20 = CFDictionaryGetValue(v15, @"Cryptex1,Version");
        if (v20)
        {
          v21 = v20;
          v22 = CFDictionaryGetValue(v15, @"Cryptex1,PreauthVersion");
          if (v22)
          {
            v23 = v22;
            v24 = CFDictionaryGetValue(v15, @"MountedCryptex");
            if (v24)
            {
              v25 = v24;
              v26 = CFDictionaryGetValue(v15, @"Cryptex1,UseProductClass");
              if (v26)
              {
                v27 = v26;
                CFStringGetCString(v21, buffer, 255, 0x8000100u);
                CFStringGetCString(v23, v45, 255, 0x8000100u);
                UInt32 = _CFNumberGetUInt32(v17);
                v29 = _CFNumberGetUInt32(v19);
                v30 = CFBooleanGetValue(v25) != 0;
                v31 = CFBooleanGetValue(v27) != 0;
                v32 = cryptex_core_cx1_properties_create(UInt32, v29, buffer, v45, v30, v31);
                if (v32)
                {
                  v33 = v32;
                  v4 = 0;
                  if (a2)
                  {
                    *a2 = os_retain(v32);
                  }
                }

                else
                {
                  v37 = *__error();
                  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109120;
                    LODWORD(v42) = 12;
                    _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create property object.: %{darwin.errno}d", buf, 8u);
                  }

                  v33 = 0;
                  *__error() = v37;
                  v4 = 12;
                }

                goto LABEL_40;
              }

              v35 = *__error();
              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v42 = "Cryptex1,UseProductClass";
                v43 = 1024;
                v44 = 22;
                v36 = MEMORY[0x29EDCA988];
                goto LABEL_38;
              }

LABEL_39:
              v33 = 0;
              *__error() = v35;
              v4 = 22;
LABEL_40:
              buff_destroy(v38);
              CFRelease(v13);
              CFRelease(v11);
              if (v33)
              {
                os_release(v33);
              }

              goto LABEL_6;
            }

            v35 = *__error();
            if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            *buf = 136315394;
            v42 = "MountedCryptex";
            v43 = 1024;
            v44 = 22;
            v36 = MEMORY[0x29EDCA988];
          }

          else
          {
            v35 = *__error();
            if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            *buf = 136315394;
            v42 = "Cryptex1,PreauthVersion";
            v43 = 1024;
            v44 = 22;
            v36 = MEMORY[0x29EDCA988];
          }
        }

        else
        {
          v35 = *__error();
          if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }

          *buf = 136315394;
          v42 = "Cryptex1,Version";
          v43 = 1024;
          v44 = 22;
          v36 = MEMORY[0x29EDCA988];
        }
      }

      else
      {
        v35 = *__error();
        if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 136315394;
        v42 = "Cryptex1,SubType";
        v43 = 1024;
        v44 = 22;
        v36 = MEMORY[0x29EDCA988];
      }
    }

    else
    {
      v35 = *__error();
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 136315394;
      v42 = "Cryptex1,NonceDomain";
      v43 = 1024;
      v44 = 22;
      v36 = MEMORY[0x29EDCA988];
    }

LABEL_38:
    _os_log_impl(&dword_2986F2000, v36, OS_LOG_TYPE_ERROR, "Cryptex1 property plist is missing expected key: %s: %{darwin.errno}d", buf, 0x12u);
    goto LABEL_39;
  }

  v34 = *__error();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v42 = error;
    v43 = 1024;
    v44 = 12;
    _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create property list: %{public}@: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v34;
  buff_destroy(v38);
  CFRelease(v11);
  v4 = 12;
LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

void *cryptex_core_set_cryptex1_properties(uint64_t a1, void *object)
{
  result = os_retain(object);
  *(a1 + 216) = result;
  return result;
}

uint64_t cryptex_core_set_assets_from_fds(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  v53 = *MEMORY[0x29EDCA608];
  v8 = *(&cryptex_asset_types + a2);
  if ((*v8 & 0x20) != 0)
  {
    is_cryptex1 = cryptex_asset_type_is_cryptex1(*(&cryptex_asset_types + a2));
    v21 = &_cryptex_asset_type_roothash;
    if (is_cryptex1)
    {
      v21 = &_cryptex_asset_type_gtgv;
    }

    v46 = v21;
    v22 = &_cryptex_asset_type_c411;
    if (is_cryptex1)
    {
      v22 = &_cryptex_asset_type_ginf;
    }

    v47 = v22;
    v23 = &_cryptex_asset_type_ltrs;
    if (is_cryptex1)
    {
      v23 = &_cryptex_asset_type_gtcd;
    }

    v45 = v23;
    if ((*a3 & 0x80000000) != 0)
    {
      v36 = *(a1 + 16);
      v37 = *__error();
      v38 = *(a1 + 32);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = "[anonymous]";
        if (v36)
        {
          v39 = v36;
        }

        *buf = 136446466;
        *&buf[4] = v39;
        v49 = 1024;
        LODWORD(v50) = 9;
        _os_log_impl(&dword_2986F2000, v38, OS_LOG_TYPE_ERROR, "%{public}s: FD for image is invalid: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v37;
      result = 9;
    }

    else
    {
      if (!a4 || (*a4 & 0x80000000) != 0)
      {
        v24 = *(a1 + 16);
        v25 = *__error();
        v26 = *(a1 + 32);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = "[anonymous]";
          if (v24)
          {
            v27 = v24;
          }

          *buf = 136446210;
          *&buf[4] = v27;
          _os_log_impl(&dword_2986F2000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: FD for ltrs is invalid. OK for no-code cryptexes.", buf, 0xCu);
        }

        *__error() = v25;
      }

      if (!a5 || (*a5 & 0x80000000) != 0)
      {
        v28 = *(a1 + 16);
        v29 = *__error();
        v30 = *(a1 + 32);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = "[anonymous]";
          if (v28)
          {
            v31 = v28;
          }

          *buf = 136446210;
          *&buf[4] = v31;
          _os_log_impl(&dword_2986F2000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: FD for c411 is invalid. Will generate one", buf, 0xCu);
        }

        *__error() = v29;
      }

      if ((*a6 & 0x80000000) != 0)
      {
        v40 = *(a1 + 16);
        v41 = *__error();
        v42 = *(a1 + 32);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = "[anonymous]";
          if (v40)
          {
            v43 = v40;
          }

          *buf = 136446466;
          *&buf[4] = v43;
          v49 = 1024;
          LODWORD(v50) = 81;
          _os_log_impl(&dword_2986F2000, v42, OS_LOG_TYPE_ERROR, "%{public}s: FD for im4m is invalid: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v41;
        result = 81;
      }

      else
      {
        if (!a7 || (*a7 & 0x80000000) != 0)
        {
          v32 = *(a1 + 16);
          v33 = *__error();
          v34 = *(a1 + 32);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = "[anonymous]";
            if (v32)
            {
              v35 = v32;
            }

            *buf = 136446210;
            *&buf[4] = v35;
            _os_log_impl(&dword_2986F2000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s: FD for volume hash is invalid. AuthAPFS will not be supported.", buf, 0xCu);
          }

          *__error() = v33;
        }

        *buf = cryptex_asset_new(v8);
        cryptex_core_set_asset(a1, buf);
        if (a4 && (*a4 & 0x80000000) == 0)
        {
          *buf = cryptex_asset_new(v45);
          cryptex_core_set_asset(a1, buf);
        }

        if (a7 && (*a7 & 0x80000000) == 0)
        {
          *buf = cryptex_asset_new(v46);
          cryptex_core_set_asset(a1, buf);
        }

        if (a5 && (*a5 & 0x80000000) == 0)
        {
          *buf = cryptex_asset_new(v47);
          cryptex_core_set_asset(a1, buf);
        }

        *buf = cryptex_asset_new(&_cryptex_asset_type_im4m);
        cryptex_core_set_asset(a1, buf);
        result = 0;
      }
    }
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *__error();
    v12 = *(a1 + 32);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = "[anonymous]";
      *buf = 136446722;
      if (v10)
      {
        v13 = v10;
      }

      *&buf[4] = v13;
      v49 = 2048;
      v50 = a2;
      v51 = 1024;
      v52 = 22;
      _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_ERROR, "%{public}s: cryptex type is not image: %lld: %{darwin.errno}d", buf, 0x1Cu);
    }

    *__error() = v11;
    result = 22;
  }

  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_core_open(uint64_t a1, int a2)
{
  v4 = 0;
  v25 = *MEMORY[0x29EDCA608];
  v5 = a1 + 64;
  while (1)
  {
    v6 = *(v5 + v4);
    if (v6)
    {
      v7 = cryptex_asset_open(*(v5 + v4), a2);
      if (v7)
      {
        v8 = v7;
        if (v7 != 37)
        {
          break;
        }
      }
    }

    v4 += 8;
    if (v4 == 96)
    {
      v9 = *(a1 + 16);
      v10 = *__error();
      v11 = *(a1 + 32);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = "[anonymous]";
        if (v9)
        {
          v12 = v9;
        }

        v19 = 136446210;
        v20 = v12;
        _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: Opened all assets from cryptex", &v19, 0xCu);
      }

      v8 = 0;
      goto LABEL_11;
    }
  }

  v15 = *(a1 + 16);
  v10 = *__error();
  v16 = *(a1 + 32);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = "[anonymous]";
    v18 = *(v6 + 32);
    if (v15)
    {
      v17 = v15;
    }

    v19 = 136446722;
    v20 = v17;
    v21 = 2082;
    v22 = v18;
    v23 = 1024;
    v24 = v8;
    _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_ERROR, "%{public}s: Failed to open asset '%{public}s': %{darwin.errno}d", &v19, 0x1Cu);
  }

LABEL_11:
  *__error() = v10;
  v13 = *MEMORY[0x29EDCA608];
  return v8;
}

int *cryptex_core_close(uint64_t a1)
{
  v2 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1 + 64;
  do
  {
    v4 = *(v3 + v2);
    if (v4)
    {
      cryptex_asset_close(v4);
    }

    v2 += 8;
  }

  while (v2 != 96);
  v5 = *(a1 + 16);
  v6 = *__error();
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    v11 = 136446210;
    v12 = v8;
    _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_DEBUG, "%{public}s: Closed all assets from cryptex", &v11, 0xCu);
  }

  result = __error();
  *result = v6;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_core_get_num_assets(uint64_t a1)
{
  v1 = 0;
  v2 = 0uLL;
  do
  {
    v2 = vsubq_s32(v2, vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(a1 + 64 + v1)), vceqzq_s64(*(a1 + 64 + v1 + 16)))));
    v1 += 32;
  }

  while (v1 != 96);
  return vaddvq_s32(v2);
}

uint64_t cryptex_core_image_authapfs_enabled(uint64_t a1)
{
  v1 = *(a1 + 64 + 8 * *(*(a1 + 200) + 24));
  LODWORD(result) = cryptex_asset_type_is_cryptex1(*(*(a1 + 64 + 8 * *(*(a1 + 176) + 24)) + 8));
  if (v1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t cryptex_core_pop_asset(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8 * *(a2 + 24);
  result = *(v2 + 64);
  *(v2 + 64) = 0;
  return result;
}

void *cryptex_core_attach_host(uint64_t a1, void *object)
{
  v4 = *(a1 + 168);
  if (v4)
  {
    os_release(v4);
  }

  result = os_retain(object);
  *(a1 + 168) = result;
  return result;
}

char *cryptex_core_generate_identifier(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v6 = 0;
  v1 = *(a1 + 16);
  v2 = arc4random();
  v3 = "anonymous";
  if (v1)
  {
    v3 = v1;
  }

  if (asprintf(&v6, "%s.%#x", v3, v2) < 0)
  {
    cryptex_core_generate_identifier_cold_1(&v7, v8);
  }

  result = v6;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

char *cryptex_core_generate_version()
{
  v4 = *MEMORY[0x29EDCA608];
  result = strdup("0.0.1");
  if (!result)
  {
    cryptex_core_generate_version_cold_1(&v2, v3);
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_core_get_nonce_domain_handle(void *a1, _DWORD *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (cryptex_core_is_cryptex1(a1))
    {
      v4 = a1[27];
      if (v4)
      {
        result = 0;
        *a2 = *(v4 + 40);
      }

      else
      {
        v15 = a1[2];
        v16 = *__error();
        v17 = a1[4];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = "[anonymous]";
          if (v15)
          {
            v18 = v15;
          }

          v20 = 136446466;
          v21 = v18;
          v22 = 1024;
          LODWORD(v23) = 2;
          _os_log_impl(&dword_2986F2000, v17, OS_LOG_TYPE_ERROR, "%{public}s: No Cryptex1 properties available.: %{darwin.errno}d", &v20, 0x12u);
        }

        *__error() = v16;
        result = 2;
      }
    }

    else
    {
      v10 = a1[2];
      v11 = *__error();
      v12 = a1[4];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = "[anonymous]";
        if (v10)
        {
          v13 = v10;
        }

        v14 = *(a1[22] + 40);
        v20 = 136446722;
        v21 = v13;
        v22 = 2080;
        v23 = v14;
        v24 = 1024;
        v25 = 45;
        _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_ERROR, "%{public}s: not supported image type: %s: %{darwin.errno}d", &v20, 0x1Cu);
      }

      *__error() = v11;
      result = 45;
    }
  }

  else
  {
    v6 = a1[2];
    v7 = *__error();
    v8 = a1[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = "[anonymous]";
      if (v6)
      {
        v9 = v6;
      }

      v20 = 136446466;
      v21 = v9;
      v22 = 1024;
      LODWORD(v23) = 22;
      _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_ERROR, "%{public}s: Invalid input.: %{darwin.errno}d", &v20, 0x12u);
    }

    *__error() = v7;
    result = 22;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL cryptex_core_is_cryptex1(void *a1)
{
  v1 = a1[*(a1[22] + 24) + 8];
  v2 = a1[*(a1[23] + 24) + 8];
  v3 = a1[*(a1[24] + 24) + 8];
  v4 = a1[*(a1[25] + 24) + 8];
  if (v1)
  {
    is_cryptex1 = cryptex_asset_type_is_cryptex1(*(v1 + 8));
    v6 = 1;
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  is_cryptex1 = 0;
  v6 = 0;
  if (v2)
  {
LABEL_3:
    is_cryptex1 += cryptex_asset_type_is_cryptex1(*(v2 + 8));
    ++v6;
  }

LABEL_4:
  if (v3)
  {
    is_cryptex1 += cryptex_asset_type_is_cryptex1(*(v3 + 8));
    ++v6;
  }

  if (v4)
  {
    is_cryptex1 += cryptex_asset_type_is_cryptex1(*(v4 + 8));
    ++v6;
  }

  return is_cryptex1 && is_cryptex1 == v6;
}

uint64_t cryptex_core_copy_nonce_domain_desc(void *a1, char **a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *__str = 0u;
  v20 = 0u;
  v18 = 0;
  v17 = 0;
  if (a1)
  {
    if (cryptex_core_is_cryptex1(a1))
    {
      nonce_domain_handle = cryptex_core_get_nonce_domain_handle(a1, &v17);
      if (nonce_domain_handle)
      {
        v5 = nonce_domain_handle;
        v6 = a1[2];
        v7 = *__error();
        v8 = a1[4];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = "[anonymous]";
          if (v6)
          {
            v9 = v6;
          }

          *buf = 136446466;
          v27 = v9;
          v28 = 1024;
          v29 = v5;
          v10 = "%{public}s: Failed to get nonce domain handle.: %{darwin.errno}d";
LABEL_14:
          _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      snprintf(__str, 0x64uLL, "Cryptex1 nonce domain = %u");
    }

    else
    {
      nonce_domain_index = cryptex_core_get_nonce_domain_index(a1, &v18);
      if (nonce_domain_index)
      {
        v5 = nonce_domain_index;
        v12 = a1[2];
        v7 = *__error();
        v8 = a1[4];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13 = "[anonymous]";
          if (v12)
          {
            v13 = v12;
          }

          *buf = 136446466;
          v27 = v13;
          v28 = 1024;
          v29 = v5;
          v10 = "%{public}s: Failed to get nonce domain index.: %{darwin.errno}d";
          goto LABEL_14;
        }

LABEL_15:
        *__error() = v7;
        goto LABEL_25;
      }

      snprintf(__str, 0x64uLL, "nonce domain index %llu");
    }

    if (a2)
    {
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v14 = strdup(__str);
          if (v14)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v14 = strdup(__str);
        if (!v14)
        {
          cryptex_core_copy_nonce_domain_desc_cold_1(__str);
        }
      }

      v5 = 0;
      *a2 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 22;
  }

LABEL_25:
  v15 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t cryptex_core_get_nonce_domain_index(void *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = a1[22];
  if (v2 == &_cryptex_asset_type_cpxd)
  {
    result = 0;
    v10 = 3;
    goto LABEL_13;
  }

  if (v2 == &_cryptex_asset_type_pdmg)
  {
    v11 = a1[7];
    if (v11 >= 2)
    {
      result = 0;
      if (v11 != 2)
      {
        goto LABEL_14;
      }

      v10 = 4;
    }

    else
    {
      result = 0;
      v10 = 2;
    }

LABEL_13:
    *a2 = v10;
    goto LABEL_14;
  }

  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v8 = *(a1[22] + 40);
    v13 = 136446722;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    v17 = 1024;
    v18 = 45;
    _os_log_impl(&dword_2986F2000, v6, OS_LOG_TYPE_ERROR, "%{public}s: not supported image type: %s: %{darwin.errno}d", &v13, 0x1Cu);
  }

  *__error() = v5;
  result = 45;
LABEL_14:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_core_get_nonce_domain(void *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v19 = 0;
  v2 = 22;
  if (a1 && a2)
  {
    if (cryptex_core_is_cryptex1(a1))
    {
      nonce_domain_handle = cryptex_core_get_nonce_domain_handle(a1, &v19);
      if (nonce_domain_handle)
      {
        v2 = nonce_domain_handle;
        v6 = a1[2];
        v7 = *__error();
        v8 = a1[4];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = "[anonymous]";
          if (v6)
          {
            v9 = v6;
          }

          *buf = 136446466;
          v22 = v9;
          v23 = 1024;
          v24 = v2;
          v10 = "%{public}s: Failed to get nonce domain handle.: %{darwin.errno}d";
LABEL_22:
          _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
          goto LABEL_23;
        }

        goto LABEL_23;
      }

      nonce_domain_from_index = img4_nonce_domain_get_from_handle();
    }

    else
    {
      nonce_domain_index = cryptex_core_get_nonce_domain_index(a1, &v20);
      if (nonce_domain_index)
      {
        v2 = nonce_domain_index;
        v12 = a1[2];
        v7 = *__error();
        v8 = a1[4];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13 = "[anonymous]";
          if (v12)
          {
            v13 = v12;
          }

          *buf = 136446466;
          v22 = v13;
          v23 = 1024;
          v24 = v2;
          v10 = "%{public}s: Failed to get nonce domain index.: %{darwin.errno}d";
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      nonce_domain_from_index = _img4_get_nonce_domain_from_index(v20);
    }

    *a2 = nonce_domain_from_index;
    if (!nonce_domain_from_index)
    {
      v15 = a1[2];
      v7 = *__error();
      v8 = a1[4];
      v2 = 2;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = "[anonymous]";
        if (v15)
        {
          v16 = v15;
        }

        *buf = 136446466;
        v22 = v16;
        v23 = 1024;
        v24 = 2;
        v10 = "%{public}s: No such nonce domain exists.: %{darwin.errno}d";
        goto LABEL_22;
      }

LABEL_23:
      *__error() = v7;
      goto LABEL_24;
    }

    v2 = 0;
  }

LABEL_24:
  v17 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t cryptex_core_cx1_properties_create(int a1, int a2, const char *a3, const char *a4, char a5, char a6)
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = _cryptex_core_cx1_properties_alloc();
  *(v12 + 40) = a1;
  *(v12 + 44) = a2;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v13 = strdup(a3);
      if (v13)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v13 = strdup(a3);
    if (!v13)
    {
      cryptex_core_copy_nonce_domain_desc_cold_1(a3);
    }
  }

  *(v12 + 48) = v13;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v14 = strdup(a4);
      if (v14)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v14 = strdup(a4);
    if (!v14)
    {
      cryptex_core_copy_nonce_domain_desc_cold_1(a4);
    }
  }

  *(v12 + 56) = v14;
  *(v12 + 64) = a5;
  *(v12 + 65) = a6;
  object_proto_init(v12 + 16, "com.apple.security.libcryptex.core", "cryptex.core");
  v15 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t cryptex_core_cx1_properties_create_with_xpc_dictionary(void *a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  uint64 = _xpc_dictionary_try_get_uint64(a1, "Cryptex1,NonceDomain", &v25);
  if (uint64)
  {
    v3 = uint64;
    v4 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "Cryptex1,NonceDomain";
      v28 = 1024;
      v29 = v3;
      v5 = MEMORY[0x29EDCA988];
      v6 = "Dictionary missing key: %s: %{darwin.errno}d";
LABEL_19:
      v17 = 18;
LABEL_20:
      _os_log_impl(&dword_2986F2000, v5, OS_LOG_TYPE_ERROR, v6, buf, v17);
    }
  }

  else
  {
    v7 = _xpc_dictionary_try_get_uint64(a1, "Cryptex1,SubType", &v24);
    if (v7)
    {
      v8 = v7;
      v4 = *__error();
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "Cryptex1,SubType";
        v28 = 1024;
        v29 = v8;
        v5 = MEMORY[0x29EDCA988];
        v6 = "Dictionary missing key: %s: %{darwin.errno}d";
        goto LABEL_19;
      }
    }

    else
    {
      string = _xpc_dictionary_try_get_string(a1, "Cryptex1,Version", &v23);
      if (string)
      {
        v10 = string;
        v4 = *__error();
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "Cryptex1,Version";
          v28 = 1024;
          v29 = v10;
          v5 = MEMORY[0x29EDCA988];
          v6 = "Dictionary missing key: %s: %{darwin.errno}d";
          goto LABEL_19;
        }
      }

      else
      {
        v11 = _xpc_dictionary_try_get_string(a1, "Cryptex1,PreauthVersion", &v22);
        if (v11)
        {
          v12 = v11;
          v4 = *__error();
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v27 = "Cryptex1,PreauthVersion";
            v28 = 1024;
            v29 = v12;
            v5 = MEMORY[0x29EDCA988];
            v6 = "Dictionary missing key: %s: %{darwin.errno}d";
            goto LABEL_19;
          }
        }

        else
        {
          v13 = _xpc_dictionary_try_get_BOOL(a1, "MountedCryptex", &v21 + 1);
          if (v13)
          {
            v14 = v13;
            v4 = *__error();
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v27 = "MountedCryptex";
              v28 = 1024;
              v29 = v14;
              v5 = MEMORY[0x29EDCA988];
              v6 = "Dictionary missing key: %s: %{darwin.errno}d";
              goto LABEL_19;
            }
          }

          else
          {
            v15 = _xpc_dictionary_try_get_BOOL(a1, "Cryptex1,UseProductClass", &v21);
            if (!v15)
            {
              if (HIDWORD(v25) || HIDWORD(v24))
              {
                v4 = *__error();
                if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_21;
                }

                *buf = 67109120;
                LODWORD(v27) = 84;
                v5 = MEMORY[0x29EDCA988];
                v6 = "Integer overflow.: %{darwin.errno}d";
              }

              else
              {
                result = cryptex_core_cx1_properties_create(v25, v24, v23, v22, SHIBYTE(v21), v21);
                if (result)
                {
                  goto LABEL_22;
                }

                v4 = *__error();
                if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_21;
                }

                *buf = 67109120;
                LODWORD(v27) = 12;
                v5 = MEMORY[0x29EDCA988];
                v6 = "Failed to create property object.: %{darwin.errno}d";
              }

              v17 = 8;
              goto LABEL_20;
            }

            v16 = v15;
            v4 = *__error();
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v27 = "Cryptex1,UseProductClass";
              v28 = 1024;
              v29 = v16;
              v5 = MEMORY[0x29EDCA988];
              v6 = "Dictionary missing key: %s: %{darwin.errno}d";
              goto LABEL_19;
            }
          }
        }
      }
    }
  }

LABEL_21:
  v18 = __error();
  result = 0;
  *v18 = v4;
LABEL_22:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

xpc_object_t cryptex_core_cx1_copy_xpc_dictionary(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "Cryptex1,NonceDomain", *(a1 + 40));
  xpc_dictionary_set_uint64(v2, "Cryptex1,SubType", *(a1 + 44));
  xpc_dictionary_set_string(v2, "Cryptex1,Version", *(a1 + 48));
  xpc_dictionary_set_string(v2, "Cryptex1,PreauthVersion", *(a1 + 56));
  xpc_dictionary_set_BOOL(v2, "MountedCryptex", *(a1 + 64));
  xpc_dictionary_set_BOOL(v2, "Cryptex1,UseProductClass", *(a1 + 65));
  return v2;
}

uint64_t cryptex_core_cx1_write_to_file(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x29EDCA608];
  error = 0;
  v4 = _CFNumberCreateFromUInt32(*(a1 + 40));
  v5 = _CFNumberCreateFromUInt32(*(a1 + 44));
  v6 = _CFStringCreateFromUTF8String(*(a1 + 48));
  v7 = _CFStringCreateFromUTF8String(*(a1 + 56));
  v8 = v7;
  v9 = *MEMORY[0x29EDB8F00];
  v10 = *MEMORY[0x29EDB8EF8];
  if (*(a1 + 64))
  {
    v11 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v11 = *MEMORY[0x29EDB8EF8];
  }

  if (*(a1 + 65))
  {
    v12 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v12 = *MEMORY[0x29EDB8EF8];
  }

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  *keys = xmmword_29EEA8278;
  v34 = *&off_29EEA8288;
  v35 = xmmword_29EEA8298;
  values[0] = v4;
  values[1] = v5;
  values[2] = v6;
  values[3] = v7;
  values[4] = v11;
  values[5] = v12;
  v13 = CFDictionaryCreate(0, keys, values, 6, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v13)
  {
    v14 = v13;
    v15 = CFPropertyListCreateData(0, v13, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v15)
    {
      v16 = v15;
      BytePtr = CFDataGetBytePtr(v15);
      Length = CFDataGetLength(v16);
      buff_init_signed(v25, 0, 0, BytePtr, Length);
      v19 = _write_file(a2, v25);
      if (v19)
      {
        v20 = *__error();
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v29) = v19;
          _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to write properties to file.: %{darwin.errno}d", buf, 8u);
        }

        *__error() = v20;
      }

      buff_destroy(v25);
      CFRelease(v16);
    }

    else
    {
      v22 = *__error();
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v29 = error;
        v30 = 1024;
        v31 = 12;
        _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create property list data: %{public}@: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v22;
      buff_destroy(v25);
      v19 = 12;
    }

    CFRelease(v14);
    if (v12)
    {
LABEL_22:
      CFRelease(v12);
    }
  }

  else
  {
    v21 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v29) = 12;
      _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create dictionary.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v21;
    buff_destroy(v25);
    v19 = 12;
    if (v12)
    {
      goto LABEL_22;
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v23 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t cryptex_core_parse_info_asset(void *a1, char **a2, char ***a3, BOOL *a4)
{
  v45 = *MEMORY[0x29EDCA608];
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v5 = a1[*(a1[23] + 24) + 8];
  if (v5)
  {
    file = _read_file(*(v5 + 16), v37);
    if (file)
    {
      v10 = file;
      v11 = a1[2];
      v12 = *__error();
      v13 = a1[4];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = "[anonymous]";
        if (v11)
        {
          v14 = v11;
        }

        *buf = 136446466;
        v40 = v14;
        v41 = 1024;
        LODWORD(v42) = v10;
        v15 = "%{public}s: Failed to read info asset.: %{darwin.errno}d";
LABEL_11:
        _os_log_impl(&dword_2986F2000, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v20 = xpc_create_from_plist();
    if (!v20)
    {
      v27 = a1[2];
      v12 = *__error();
      v13 = a1[4];
      v10 = 22;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v28 = "[anonymous]";
      if (v27)
      {
        v28 = v27;
      }

      *buf = 136446466;
      v40 = v28;
      v41 = 1024;
      LODWORD(v42) = 22;
      v15 = "%{public}s: Failed to parse info asset as plist.: %{darwin.errno}d";
      goto LABEL_11;
    }

    v21 = v20;
    string = xpc_dictionary_get_string(v20, "CFBundleIdentifier");
    if (string)
    {
      v23 = string;
      v24 = xpc_dictionary_get_string(v21, "CFBundleVersion");
      if (v24)
      {
        v25 = v24;
        if (a4)
        {
          _xpc_dictionary_try_get_BOOL(v21, "NoCode", a4);
        }

        if (a2)
        {
          if (_dispatch_is_multithreaded())
          {
            while (1)
            {
              v26 = strdup(v23);
              if (v26)
              {
                break;
              }

              __os_temporary_resource_shortage();
            }
          }

          else
          {
            v26 = strdup(v23);
            if (!v26)
            {
              cryptex_core_copy_nonce_domain_desc_cold_1(v23);
            }
          }

          *a2 = v26;
        }

        if (a3)
        {
          *a3 = cryptex_version_new(v25);
        }

        buff_destroy(v37);
        v10 = 0;
        goto LABEL_42;
      }

      v34 = a1[2];
      v30 = *__error();
      v35 = a1[4];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = "[anonymous]";
        *buf = 136446722;
        if (v34)
        {
          v36 = v34;
        }

        v40 = v36;
        v41 = 2080;
        v42 = "CFBundleVersion";
        v43 = 1024;
        v44 = 22;
        v33 = v35;
LABEL_35:
        _os_log_impl(&dword_2986F2000, v33, OS_LOG_TYPE_ERROR, "%{public}s: Info dictionary missing expected key: '%s': %{darwin.errno}d", buf, 0x1Cu);
      }
    }

    else
    {
      v29 = a1[2];
      v30 = *__error();
      v31 = a1[4];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = "[anonymous]";
        *buf = 136446722;
        if (v29)
        {
          v32 = v29;
        }

        v40 = v32;
        v41 = 2080;
        v42 = "CFBundleIdentifier";
        v43 = 1024;
        v44 = 22;
        v33 = v31;
        goto LABEL_35;
      }
    }

    *__error() = v30;
    buff_destroy(v37);
    v10 = 22;
LABEL_42:
    os_release(v21);
    goto LABEL_13;
  }

  v16 = a1[2];
  v12 = *__error();
  v13 = a1[4];
  v10 = 2;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v17 = "[anonymous]";
    if (v16)
    {
      v17 = v16;
    }

    *buf = 136446466;
    v40 = v17;
    v41 = 1024;
    LODWORD(v42) = 2;
    v15 = "%{public}s: Cryptex has no metadata.: %{darwin.errno}d";
    goto LABEL_11;
  }

LABEL_12:
  *__error() = v12;
  buff_destroy(v37);
LABEL_13:
  v18 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t cryptex_core_select_chip(void *a1)
{
  if (cryptex_core_is_cryptex1(a1))
  {
    return MEMORY[0x29EDC96D0];
  }

  return img4_chip_select_personalized_ap();
}

CFErrorRef cryptex_core_write_metadata_to_xattrs(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x29EDCA608];
  object = 0;
  bzero(v30, 0x400uLL);
  v4 = realpath_np();
  if (v4)
  {
    v5 = v4;
    v6 = v4;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v7 = *(a1 + 16);
      if (!v7)
      {
        v7 = "[anonymous]";
      }

      v24 = 136446466;
      v25 = v7;
      v26 = 1024;
      LODWORD(v27) = v5;
    }

    else
    {
      v11 = *(a1 + 16);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      v24 = 136446466;
      v25 = v11;
      v26 = 1024;
      LODWORD(v27) = v4;
    }

    v12 = _os_log_send_and_compose_impl();
    v13 = 1027;
  }

  else
  {
    v8 = cryptex_metadata_read_from_cryptex(a1, &object);
    if (v8)
    {
      v9 = v8;
      v6 = v8;
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v10 = *(a1 + 16);
        if (!v10)
        {
          v10 = "[anonymous]";
        }

        v24 = 136446466;
        v25 = v10;
        v26 = 1024;
        LODWORD(v27) = v9;
      }

      else
      {
        v18 = *(a1 + 16);
        if (!v18)
        {
          v18 = "[anonymous]";
        }

        v24 = 136446466;
        v25 = v18;
        v26 = 1024;
        LODWORD(v27) = v8;
      }

      v12 = _os_log_send_and_compose_impl();
      v13 = 1034;
    }

    else
    {
      v14 = cryptex_metadata_write_to_file_xattrs(object, a2);
      if (!v14)
      {
        Error = 0;
        goto LABEL_31;
      }

      v15 = v14;
      v6 = v14;
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v16 = *(a1 + 16);
        v24 = 136446722;
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = "[anonymous]";
        }

        v25 = v17;
        v26 = 2080;
        v27 = v30;
        v28 = 1024;
        v29 = v15;
      }

      else
      {
        v20 = "[anonymous]";
        if (*(a1 + 16))
        {
          v20 = *(a1 + 16);
        }

        v24 = 136446722;
        v25 = v20;
        v26 = 2080;
        v27 = v30;
        v28 = 1024;
        v29 = v14;
      }

      v12 = _os_log_send_and_compose_impl();
      v13 = 1043;
    }
  }

  Error = createError("cryptex_core_write_metadata_to_xattrs", "cryptex_core.c", v13, "com.apple.security.cryptex.posix", v6, 0, v12);
  free(v12);
LABEL_31:
  if (object)
  {
    os_release(object);
  }

  v21 = *MEMORY[0x29EDCA608];
  return Error;
}

CFErrorRef cryptex_core_metadata_matches(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  xdict = 0;
  v6 = cryptex_metadata_read_from_cryptex(a1, &xdict);
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v9 = *(a1 + 16);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v21 = 136446466;
      v22 = v9;
      v23 = 1024;
      v24 = v7;
    }

    else
    {
      v16 = *(a1 + 16);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      v21 = 136446466;
      v22 = v16;
      v23 = 1024;
      v24 = v6;
    }

    v17 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_core_metadata_matches", "cryptex_core.c", 1067, "com.apple.security.cryptex.posix", v8, 0, v17);
    free(v17);
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "com.apple.CryptexIdentifier");
    v11 = xpc_dictionary_get_value(a2, "com.apple.CryptexIdentifier");
    v12 = xpc_dictionary_get_value(xdict, "com.apple.CryptexVersion");
    v13 = xpc_dictionary_get_value(a2, "com.apple.CryptexVersion");
    LOBYTE(v14) = 0;
    if (value)
    {
      if (v11)
      {
        if (v12)
        {
          if (v13)
          {
            v14 = xpc_equal(value, v11);
            if (v14)
            {
              LOBYTE(v14) = xpc_equal(v12, v13);
            }
          }
        }
      }
    }

    Error = 0;
    if (a3)
    {
      *a3 = v14;
    }
  }

  if (xdict)
  {
    os_release(xdict);
  }

  v18 = *MEMORY[0x29EDCA608];
  return Error;
}

CFErrorRef cryptex_core_metadata_matches_xattrs(uint64_t a1, int a2, _BYTE *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  object = 0;
  bzero(v28, 0x400uLL);
  v6 = realpath_np();
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v9 = *(a1 + 16);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v22 = 136446466;
      v23 = v9;
      v24 = 1024;
      LODWORD(v25) = v7;
    }

    else
    {
      v14 = *(a1 + 16);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      v22 = 136446466;
      v23 = v14;
      v24 = 1024;
      LODWORD(v25) = v6;
    }

    v15 = _os_log_send_and_compose_impl();
    v16 = 1103;
  }

  else
  {
    v10 = cryptex_metadata_read_from_file_xattrs(a2, &object);
    if (!v10)
    {
      Error = cryptex_core_metadata_matches(a1, object, a3);
      goto LABEL_22;
    }

    v11 = v10;
    v8 = v10;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v12 = *(a1 + 16);
      v22 = 136446722;
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = "[anonymous]";
      }

      v23 = v13;
      v24 = 2080;
      v25 = v28;
      v26 = 1024;
      v27 = v11;
    }

    else
    {
      v18 = "[anonymous]";
      if (*(a1 + 16))
      {
        v18 = *(a1 + 16);
      }

      v22 = 136446722;
      v23 = v18;
      v24 = 2080;
      v25 = v28;
      v26 = 1024;
      v27 = v10;
    }

    v15 = _os_log_send_and_compose_impl();
    v16 = 1110;
  }

  Error = createError("cryptex_core_metadata_matches_xattrs", "cryptex_core.c", v16, "com.apple.security.cryptex.posix", v8, 0, v15);
  free(v15);
LABEL_22:
  if (object)
  {
    os_release(object);
  }

  v19 = *MEMORY[0x29EDCA608];
  return Error;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_2()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_3()
{
  *v0 = 0;
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_5()
{
  v2 = *v0;

  return _os_crash_msg();
}

double OUTLINED_FUNCTION_6(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

size_t OUTLINED_FUNCTION_7(const char *__s)
{

  return strlen(__s);
}

const char **cryptex_content_type_parse(char *__s2)
{
  v2 = 0;
  while (1)
  {
    v3 = cryptex_content_types[v2];
    if (!strcmp(*v3, __s2))
    {
      break;
    }

    if (++v2 == 7)
    {
      return 0;
    }
  }

  return v3;
}

const char *cryptex_session_state_to_string(unint64_t a1)
{
  if (a1 > 5)
  {
    return "UNK";
  }

  else
  {
    return off_29EEA8350[a1];
  }
}

const char *cryptex_session_event_to_string(uint64_t a1)
{
  if (a1 > 7)
  {
    if (a1 > 31)
    {
      if (a1 == 32)
      {
        return "FAIL";
      }

      if (a1 == 64)
      {
        return "ALL";
      }
    }

    else
    {
      if (a1 == 8)
      {
        return "STOP";
      }

      if (a1 == 16)
      {
        return "TERMINATED";
      }
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      return "START";
    }

    if (a1 == 4)
    {
      return "READY";
    }
  }

  else
  {
    if (!a1)
    {
      return "NONE";
    }

    if (a1 == 1)
    {
      return "STAGING";
    }
  }

  return "UNKNOWN";
}

void _session_core_dealloc(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    xpc_release(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    xpc_release(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    xpc_release(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[14];
  if (v7)
  {
    free(v7);
  }

  object_proto_destroy((a1 + 2));
}

char *session_core_generate_username(const char *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = 0;
  if (asprintf(&v3, "cryptex_%s", a1) < 0)
  {
    session_core_generate_username_cold_1(&v4, v5);
  }

  result = v3;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t session_core_create(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = _session_core_alloc();
  object_proto_init(v2 + 16, "com.apple.security.libcryptex.core", "cryptex.session");
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0x100000000;
  *(v2 + 72) = xpc_array_create_empty();
  *(v2 + 80) = xpc_dictionary_create_empty();
  memset(out, 0, sizeof(out));
  memset(__s1, 0, 37);
  uuid_generate_random(out);
  uuid_unparse(out, __s1);
  v3 = strdup(__s1);
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = v3;
  username = session_core_generate_username(v3);
  *(v2 + 104) = username;
  v7 = 0;
  if (asprintf(&v7, "/Users/%s", username) < 0)
  {
    session_core_generate_username_cold_1(out, __s1);
  }

  *(v2 + 112) = v7;
  *(v2 + 120) = 0;
  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

unint64_t cryptex_session_core_transition(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  v5 = v4 != 3 && a2 == 8;
  v6 = 5;
  if (!v5)
  {
    v6 = 6;
  }

  v7 = 5;
  if (a2 != 16)
  {
    v7 = v6;
  }

  v8 = 6;
  if (a2 == 8)
  {
    v8 = 4;
  }

  if (v4 != 3)
  {
    v8 = v6;
  }

  if ((v4 - 4) >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (a2 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6;
  }

  if (a2 == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = v6;
  }

  v12 = 3;
  if (a2 != 4)
  {
    v12 = v6;
  }

  if (v4 == 2)
  {
    v6 = v12;
  }

  if (v4 == 1)
  {
    v6 = v11;
  }

  if (!v4)
  {
    v6 = v10;
  }

  if (v4 <= 2)
  {
    v13 = v6;
  }

  else
  {
    v13 = v9;
  }

  v14 = a1[2];
  v15 = *__error();
  v16 = a1[4];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = "[anonymous]";
    }

    v18 = a1[12];
    v19 = cryptex_session_state_to_string(a1[6]);
    v22 = 136447234;
    v23 = v17;
    v24 = 2080;
    v25 = v18;
    v26 = 2080;
    v27 = v19;
    v28 = 2080;
    v29 = cryptex_session_event_to_string(a2);
    v30 = 2080;
    v31 = cryptex_session_state_to_string(v13);
    _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: %s: state %s, event %s -> state %s", &v22, 0x34u);
  }

  *__error() = v15;
  a1[6] = v13;
  v20 = *MEMORY[0x29EDCA608];
  return v13;
}

_DWORD *cryptex_session_core_merge(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 96);
  if (!v3)
  {
    v13 = *(a1 + 16);
    v14 = *__error();
    v15 = *(a1 + 32);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "[anonymous]";
      if (v13)
      {
        v16 = v13;
      }

      v41 = 136446210;
      v42 = v16;
      v17 = "%{public}s: Invalid session core main - failed to merge.";
      goto LABEL_17;
    }

LABEL_18:
    result = __error();
    *result = v14;
    goto LABEL_19;
  }

  v5 = *(a2 + 96);
  if (!v5)
  {
    v18 = *(a1 + 16);
    v14 = *__error();
    v15 = *(a1 + 32);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "[anonymous]";
      if (v18)
      {
        v19 = v18;
      }

      v41 = 136446210;
      v42 = v19;
      v17 = "%{public}s: Invalid session core update - failed to merge.";
LABEL_17:
      _os_log_impl(&dword_2986F2000, v15, OS_LOG_TYPE_DEFAULT, v17, &v41, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  result = strcmp(v3, v5);
  if (result)
  {
    v7 = *(a1 + 16);
    v8 = *__error();
    v9 = *(a1 + 32);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "[anonymous]";
      if (v7)
      {
        v10 = v7;
      }

      v11 = *(a2 + 96);
      v12 = *(a1 + 96);
      v41 = 136446722;
      v42 = v10;
      v43 = 2080;
      v44 = v11;
      v45 = 2080;
      v46 = v12;
      _os_log_impl(&dword_2986F2000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Trying to merge %s onto different session %s", &v41, 0x20u);
    }

    result = __error();
    *result = v8;
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v21 = *(a1 + 16);
      v22 = *__error();
      v23 = *(a1 + 32);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = "[anonymous]";
        }

        v25 = *(a1 + 96);
        v26 = cryptex_session_state_to_string(*(a1 + 48));
        v27 = cryptex_session_state_to_string(*(a2 + 48));
        v41 = 136447234;
        v42 = v24;
        v43 = 2048;
        v44 = a1;
        v45 = 2080;
        v46 = v25;
        v47 = 2080;
        *v48 = v26;
        *&v48[8] = 2080;
        v49 = v27;
        _os_log_impl(&dword_2986F2000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: (%p) Updating %s state: %s -> %s", &v41, 0x34u);
      }

      result = __error();
      *result = v22;
    }

    if (*(a1 + 40) != *(a2 + 40))
    {
      v28 = *(a1 + 16);
      v29 = *__error();
      v30 = *(a1 + 32);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 96);
        v32 = "[anonymous]";
        v33 = *(a1 + 40);
        if (v28)
        {
          v32 = v28;
        }

        v34 = *(a2 + 40);
        v41 = 136447234;
        v42 = v32;
        v43 = 2048;
        v44 = a1;
        v45 = 2080;
        v46 = v31;
        v47 = 1024;
        *v48 = v33;
        *&v48[4] = 1024;
        *&v48[6] = v34;
        _os_log_impl(&dword_2986F2000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: (%p) Updating %s uid: %d -> %d", &v41, 0x2Cu);
      }

      result = __error();
      *result = v29;
    }

    if (!*(a1 + 112) && *(a2 + 112))
    {
      v35 = *(a1 + 16);
      v36 = *__error();
      v37 = *(a1 + 32);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = "[anonymous]";
        if (v35)
        {
          v38 = v35;
        }

        v39 = *(a1 + 96);
        v40 = *(a2 + 112);
        v41 = 136446978;
        v42 = v38;
        v43 = 2048;
        v44 = a1;
        v45 = 2080;
        v46 = v39;
        v47 = 2080;
        *v48 = v40;
        _os_log_impl(&dword_2986F2000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: (%p) Updating %s homedir: (null) -> %s", &v41, 0x2Au);
      }

      *__error() = v36;
      result = strdup(*(a2 + 112));
      *(a1 + 112) = result;
    }

    *(a1 + 48) = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

LABEL_19:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

char *cryptex_session_core_copy_homedir(uint64_t a1)
{
  result = *(a1 + 112);
  if (result)
  {
    return strdup(result);
  }

  return result;
}

void cryptex_session_core_set_homedir(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    free(v4);
  }

  v5 = strdup(__s1);
  *(a1 + 112) = v5;
  value = xpc_dictionary_get_value(*(a1 + 80), "CRYPTEX_SESSION");
  if (value)
  {

    xpc_dictionary_set_string(value, "~/", v5);
  }

  else
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(*(a1 + 80), "CRYPTEX_SESSION", empty);
    xpc_dictionary_set_string(empty, "~/", v5);

    xpc_release(empty);
  }
}

xpc_object_t cryptex_session_core_set_endpoint(uint64_t a1, xpc_object_t object)
{
  result = xpc_copy(object);
  *(a1 + 88) = result;
  return result;
}

xpc_object_t cryptex_session_core_copy_xpc_object(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "state", *(a1 + 48));
  xpc_dictionary_set_int64(v2, "uid", *(a1 + 40));
  xpc_dictionary_set_int64(v2, "attributes", *(a1 + 56));
  xpc_dictionary_set_uint64(v2, "homesize", *(a1 + 64));
  xpc_dictionary_set_BOOL(v2, "simple_session", *(a1 + 120));
  v3 = *(a1 + 96);
  if (v3)
  {
    xpc_dictionary_set_string(v2, "name", v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    xpc_dictionary_set_value(v2, "cryptex_array", v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    xpc_dictionary_set_value(v2, "overrides", v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    xpc_dictionary_set_string(v2, "username", v6);
  }

  v7 = *(a1 + 112);
  if (v7)
  {
    xpc_dictionary_set_string(v2, "home_directory", v7);
  }

  if (*(a1 + 88) && MEMORY[0x29C2903B0]() == MEMORY[0x29EDCAA10])
  {
    xpc_dictionary_set_value(v2, "endpoint", *(a1 + 88));
  }

  return v2;
}

uint64_t cryptex_session_core_create_from_xpc(void *a1)
{
  v2 = _session_core_alloc();
  object_proto_init(v2 + 16, "com.apple.security.libcryptex.core", "cryptex.session");
  *(v2 + 48) = xpc_dictionary_get_int64(a1, "state");
  *(v2 + 40) = xpc_dictionary_get_int64(a1, "uid");
  *(v2 + 56) = xpc_dictionary_get_int64(a1, "attributes");
  *(v2 + 64) = xpc_dictionary_get_uint64(a1, "homesize");
  array = xpc_dictionary_get_array(a1, "cryptex_array");
  if (!array)
  {
    cryptex_session_core_create_from_xpc_cold_5();
  }

  v4 = array;
  if (xpc_array_get_count(array))
  {
    empty = xpc_copy(v4);
  }

  else
  {
    empty = xpc_array_create_empty();
  }

  *(v2 + 72) = empty;
  dictionary = xpc_dictionary_get_dictionary(a1, "overrides");
  if (!dictionary)
  {
    cryptex_session_core_create_from_xpc_cold_4();
  }

  *(v2 + 80) = xpc_copy(dictionary);
  string = xpc_dictionary_get_string(a1, "username");
  if (!string)
  {
    cryptex_session_core_create_from_xpc_cold_3();
  }

  *(v2 + 104) = strdup(string);
  v8 = xpc_dictionary_get_string(a1, "name");
  if (!v8)
  {
    cryptex_session_core_create_from_xpc_cold_2();
  }

  *(v2 + 96) = strdup(v8);
  v9 = xpc_dictionary_get_string(a1, "home_directory");
  if (!v9)
  {
    cryptex_session_core_create_from_xpc_cold_1();
  }

  *(v2 + 112) = strdup(v9);
  if (xpc_dictionary_get_BOOL(a1, "simple_session"))
  {
    *(v2 + 120) = 1;
  }

  value = xpc_dictionary_get_value(a1, "endpoint");
  if (value)
  {
    v11 = value;
    if (MEMORY[0x29C2903B0]() == MEMORY[0x29EDCAA10])
    {
      *(v2 + 88) = xpc_copy(v11);
    }
  }

  return v2;
}

uint64_t _IOErrorGetErrno(uint64_t result)
{
  switch(result)
  {
    case 0xE00002BD:
    case 0xE00002BE:
    case 0xE00002C8:
    case 0xE00002DE:
      result = 12;
      break;
    case 0xE00002BF:
      result = 72;
      break;
    case 0xE00002C0:
    case 0xE00002D7:
    case 0xE00002D9:
    case 0xE00002DA:
      result = 19;
      break;
    case 0xE00002C1:
      result = 1;
      break;
    case 0xE00002C2:
      result = 22;
      break;
    case 0xE00002C3:
    case 0xE00002C4:
    case 0xE00002C5:
    case 0xE00002CC:
      result = 35;
      break;
    case 0xE00002C6:
      result = 94;
      break;
    case 0xE00002C7:
      result = 45;
      break;
    case 0xE00002C9:
    case 0xE00002CA:
    case 0xE00002D3:
    case 0xE00002D4:
      result = 5;
      break;
    case 0xE00002CB:
    case 0xE00002DC:
    case 0xE00002DF:
    case 0xE00002E0:
    case 0xE00002E3:
    case 0xE00002E4:
    case 0xE00002E5:
    case 0xE00002E6:
    case 0xE00002E7:
    case 0xE00002E8:
    case 0xE00002EA:
      goto LABEL_10;
    case 0xE00002CD:
      result = 9;
      break;
    case 0xE00002CE:
    case 0xE00002CF:
    case 0xE00002E2:
      result = 13;
      break;
    case 0xE00002D0:
      result = 14;
      break;
    case 0xE00002D1:
    case 0xE00002E9:
      result = 83;
      break;
    case 0xE00002D2:
    case 0xE00002D5:
      result = 16;
      break;
    case 0xE00002D6:
      result = 60;
      break;
    case 0xE00002D8:
      result = 6;
      break;
    case 0xE00002DB:
      result = 28;
      break;
    case 0xE00002DD:
      result = 17;
      break;
    case 0xE00002E1:
      result = 7;
      break;
    case 0xE00002EB:
      result = 89;
      break;
    default:
      if (result)
      {
LABEL_10:
        result = 104;
      }

      break;
  }

  return result;
}

void _cryptex_base_dealloc(uint64_t a1)
{
  dispatch_release(*(a1 + 24));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void cryptex_init(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = a4;
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  *(a1 + 24) = dispatch_queue_create("com.apple.security.libcryptex.core.dq", initially_inactive);
  *(a1 + 32) = dispatch_queue_create("com.apple.security.libcryptex.core.targetdq", 0);
  *(a1 + 40) = a3;
  if (a3)
  {
    os_retain(a1);
    dispatch_async_f(*(a1 + 24), a1, _cryptex_init);
  }

  if (a2)
  {
    v8 = *(a1 + 24);

    dispatch_set_target_queue(v8, a2);
  }
}

void _cryptex_init(void (**a1)(void))
{
  a1[5]();

  os_release(a1);
}

uint64_t _cpxd_evaluate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) != 1)
  {
    return 0;
  }

  if (*(a2 + 53))
  {
    return 0;
  }

  return 13;
}

uint64_t _cryptex_asset_generic_stamp(uint64_t a1, uint64_t a2, __CFDictionary *a3, CFTypeRef *a4, const char **a5)
{
  v39 = *MEMORY[0x29EDCA608];
  cf = 0;
  v9 = *a5;
  v10 = *__error();
  v11 = a5[2];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = "[anonymous]";
    if (v9)
    {
      v12 = v9;
    }

    v13 = *(*(a1 + 8) + 40);
    *buf = 136446466;
    v34 = v12;
    v35 = 2080;
    v36 = v13;
    _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: initializing %s asset", buf, 0x16u);
  }

  *__error() = v10;
  v14 = **(a1 + 8);
  v15 = _CFURLCreateFromFileDescriptor(*(a1 + 16), &cf);
  v16 = *a5;
  v17 = *__error();
  v18 = a5[2];
  if (v15)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = "[anonymous]";
      if (v16)
      {
        v19 = v16;
      }

      *buf = 136446466;
      v34 = v19;
      v35 = 1024;
      LODWORD(v36) = v15;
      _os_log_impl(&dword_2986F2000, v18, OS_LOG_TYPE_ERROR, "%{public}s: _CFURLCreateFromFileDescriptor: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v17;
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = "[anonymous]";
      if (v16)
      {
        v20 = v16;
      }

      *buf = 136446466;
      v34 = v20;
      v35 = 2112;
      v36 = cf;
      _os_log_impl(&dword_2986F2000, v18, OS_LOG_TYPE_DEBUG, "%{public}s: created url: %@", buf, 0x16u);
    }

    *__error() = v17;
    ImagePropertiesWithDeviceMapZipped = AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped();
    if (ImagePropertiesWithDeviceMapZipped)
    {
      _cryptex_asset_generic_stamp_cold_1(&v32, buf, ImagePropertiesWithDeviceMapZipped);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, 0);
    _CFCreateAssertImpl(MutableCopy);
    v23 = _cftag(*(a1 + 8));
    CFDictionarySetValue(a3, v23, MutableCopy);
    v24 = *a5;
    v25 = *__error();
    v26 = a5[2];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = "[anonymous]";
      if (v24)
      {
        v27 = v24;
      }

      v28 = *(*(a1 + 8) + 40);
      *buf = 136446722;
      v34 = v27;
      v35 = 2080;
      v36 = v28;
      v37 = 2112;
      v38 = MutableCopy;
      _os_log_impl(&dword_2986F2000, v26, OS_LOG_TYPE_DEBUG, "%{public}s: %s image = %@", buf, 0x20u);
    }

    *__error() = v25;
    if (a4)
    {
      *a4 = CFRetain(MutableCopy);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v29 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t _cryptex1_asset_stamp(uint64_t a1, uint64_t a2, __CFDictionary *a3, CFTypeRef *a4, const char **a5)
{
  v37 = *MEMORY[0x29EDCA608];
  v9 = ccsha384_di();
  *length = 0u;
  memset(v36, 0, sizeof(v36));
  v10 = _digest_file(*(a1 + 16), v9, length);
  if (v10)
  {
    MutableForCFTypes = v10;
    v12 = *a5;
    v13 = *__error();
    v14 = a5[2];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      *__error() = v13;
      goto LABEL_8;
    }

    v15 = "[anonymous]";
    if (v12)
    {
      v15 = v12;
    }

    v29 = 136446466;
    v30 = v15;
    v31 = 1024;
    LODWORD(v32) = MutableForCFTypes;
    v16 = "%{public}s: Failed to compute digest.: %{darwin.errno}d";
LABEL_6:
    _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_ERROR, v16, &v29, 0x12u);
    goto LABEL_7;
  }

  v19 = CFDataCreate(0, v36, length[1]);
  if (!v19)
  {
    v27 = *a5;
    v13 = *__error();
    v14 = a5[2];
    MutableForCFTypes = 12;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v28 = "[anonymous]";
    if (v27)
    {
      v28 = v27;
    }

    v29 = 136446466;
    v30 = v28;
    v31 = 1024;
    LODWORD(v32) = 12;
    v16 = "%{public}s: Failed to create data.: %{darwin.errno}d";
    goto LABEL_6;
  }

  v20 = v19;
  MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
  CFDictionarySetValue(MutableForCFTypes, *MEMORY[0x29EDC9318], v20);
  v21 = _cftag(*(a1 + 8));
  CFDictionarySetValue(a3, v21, MutableForCFTypes);
  v22 = *a5;
  v23 = *__error();
  v24 = a5[2];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = "[anonymous]";
    if (v22)
    {
      v25 = v22;
    }

    v26 = *(*(a1 + 8) + 40);
    v29 = 136446722;
    v30 = v25;
    v31 = 2080;
    v32 = v26;
    v33 = 2112;
    v34 = MutableForCFTypes;
    _os_log_impl(&dword_2986F2000, v24, OS_LOG_TYPE_DEBUG, "%{public}s: %s image = %@", &v29, 0x20u);
  }

  *__error() = v23;
  if (a4)
  {
    *a4 = CFRetain(MutableForCFTypes);
  }

  CFRelease(v20);
  if (v21)
  {
    CFRelease(v21);
  }

  if (MutableForCFTypes)
  {
    CFRelease(MutableForCFTypes);
    MutableForCFTypes = 0;
  }

LABEL_8:
  v17 = *MEMORY[0x29EDCA608];
  return MutableForCFTypes;
}

void *cryptex_asset_new(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x8709206FuLL);
  if (!v2)
  {
    cryptex_asset_new_cold_1(&v6, v7);
  }

  v3 = v2;
  *(v2 + 1) = a1;
  *(v2 + 4) = claimfd_np();
  if (_cryptex_asset_init_path(v3))
  {
    free(v3);
    v3 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t _cryptex_asset_init_path(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x400uLL, 0x8709206FuLL);
  if (!v2)
  {
    _cryptex_asset_init_path_cold_1(&v9, buf);
  }

  v3 = v2;
  v4 = *(a1 + 16);
  v5 = realpath_np();
  if (v5)
  {
    v6 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&dword_2986F2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "realpath_np failed: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v6;
    *(a1 + 24) = 0;
    free(v3);
  }

  else
  {
    *(a1 + 24) = v3;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

void *cryptex_asset_new_borrowed(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x8709206FuLL);
  if (!v4)
  {
    cryptex_asset_new_cold_1(&v8, v9);
  }

  v5 = v4;
  *v4 |= 1uLL;
  v4[1] = a1;
  *(v4 + 4) = a2;
  if (_cryptex_asset_init_path(v4))
  {
    free(v5);
    v5 = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

void *cryptex_asset_copy(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x8709206FuLL);
  if (!v2)
  {
    cryptex_asset_new_cold_1(&v8, v9);
  }

  v3 = v2;
  v2[1] = *(a1 + 8);
  *(v2 + 4) = -1;
  v4 = *(a1 + 24);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v5 = strdup(v4);
      if (v5)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v5 = strdup(v4);
    if (!v5)
    {
      cryptex_asset_copy_cold_1(v4, &v8, v9);
    }
  }

  v3[3] = v5;
  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t cryptex_asset_open(uint64_t a1, int a2)
{
  if ((*(a1 + 16) & 0x80000000) == 0)
  {
    return 37;
  }

  *__error() = 0;
  *(a1 + 16) = open(*(a1 + 24), a2);
  return *__error();
}

_DWORD *cryptex_asset_close(_BYTE *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if ((v2 & 1) == 0)
  {
    return close_drop_optional_np();
  }

  *result = -1;
  return result;
}

uint64_t cryptex_asset_evaluate(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

off_t cryptex_asset_len(off_t result, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  memset(&v12, 0, sizeof(v12));
  if (result)
  {
    v2 = result;
    v3 = *(result + 16);
    if (v3 < 0)
    {
      result = 0;
    }

    else if (fstat(v3, &v12))
    {
      v5 = *a2;
      v6 = *__error();
      v7 = *(a2 + 16);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if (!v5)
        {
          v5 = "[anonymous]";
        }

        v8 = *(*(v2 + 8) + 40);
        v9 = *__error();
        *buf = 136446722;
        v14 = v5;
        v15 = 2080;
        v16 = v8;
        v17 = 1024;
        v18 = v9;
        _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_ERROR, "%{public}s: fstat %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      v10 = __error();
      result = 0;
      *v10 = v6;
    }

    else
    {
      result = v12.st_size;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void cryptex_asset_destroy(void **a1)
{
  if (a1)
  {
    if ((*a1 & 1) == 0)
    {
      close_drop_optional_np();
    }

    free(a1[3]);

    free(a1);
  }
}

void cryptex_asset_array_destroy(uint64_t a1)
{
  for (i = 0; i != 96; i += 8)
  {
    cryptex_asset_destroy(*(a1 + i));
  }
}

void *_cftag(uint64_t a1)
{
  v2 = CFStringCreateWithCString(0, *(a1 + 40), 0x8000100u);
  _CFCreateAssertImpl(v2);
  EntryNameForType = AMAuthInstallApImg4GetEntryNameForType();
  if (EntryNameForType)
  {
    v4 = EntryNameForType;
    if (!CFEqual(EntryNameForType, v2))
    {
      v5 = CFRetain(v4);
      if (!v2)
      {
        return v5;
      }

      goto LABEL_4;
    }
  }

  v5 = CFStringCreateWithCString(0, *(a1 + 48), 0x8000100u);
  _CFCreateAssertImpl(v5);
  if (v2)
  {
LABEL_4:
    CFRelease(v2);
  }

  return v5;
}

uint64_t _shared_cdxn_stamp(uint64_t a1, uint64_t a2, __CFDictionary *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x29EDCA608];
  cf = 0;
  v10 = _cryptex_asset_generic_stamp(a1, a2, a3, &cf, a5);
  if (!v10)
  {
    v11 = _cftag(a6);
    v12 = *(a1 + 32);
    if (v12)
    {
      _CFDictionarySetString(cf, v11, v12);
    }

    v13 = *a5;
    v14 = *__error();
    v15 = *(a5 + 16);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = "[anonymous]";
      if (v13)
      {
        v16 = v13;
      }

      v17 = *(*(a1 + 8) + 40);
      *buf = 136446722;
      v22 = v16;
      v23 = 2080;
      v24 = v17;
      v25 = 2112;
      v26 = cf;
      _os_log_impl(&dword_2986F2000, v15, OS_LOG_TYPE_DEBUG, "%{public}s: %s image = %@", buf, 0x20u);
    }

    *__error() = v14;
    if (a4)
    {
      *a4 = CFRetain(cf);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v18 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_2_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_5_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t _cryptex_base_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_base_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_core_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_core_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_core_cx1_properties_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_core_cx1_properties_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_host_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_host_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_magister_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_magister_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_signature_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_signature_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_scrivener_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_scrivener_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _session_core_alloc()
{
  v2 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _session_core_alloc_cold_1();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_core_parse_hdiid(char *a1, char **a2)
{
  __stringp = a1;
  v3 = strsep(&__stringp, ",");
  if (!v3)
  {
    return 22;
  }

  v4 = v3;
  v5 = 0;
  do
  {
    if (v5 > 1)
    {
      v6 = a2 + 2;
      if (v5 != 2)
      {
        if (v5 != 3)
        {
          goto LABEL_12;
        }

        v7 = strlen(v4);
        v6 = a2 + 3;
        if (v7 != 96)
        {
          return 22;
        }
      }

LABEL_10:
      *v6 = v4;
      goto LABEL_12;
    }

    if (v5)
    {
      v6 = a2 + 1;
      if (v5 == 1)
      {
        goto LABEL_10;
      }
    }

    else if (strcmp(v4, "cryptex"))
    {
      return 22;
    }

LABEL_12:
    ++v5;
    v4 = strsep(&__stringp, ",");
  }

  while (v4);
  if (v5 == 4)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

char *cryptex_core_unparse_hdiid(const char **a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = 0;
  if (asprintf(&v3, "%s,%s,%s,%s", *a1, a1[1], a1[2], a1[3]) < 0)
  {
    cryptex_core_unparse_hdiid_cold_1(&v4, v5);
  }

  result = v3;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_2_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t _img4_get_nonce_domain_from_index(unint64_t a1)
{
  if (a1 > 0xC || a1 - 1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_29EEA8498[a1 - 1];
  }
}

uint64_t cryptex_tss_create(uint64_t a1)
{
  v2 = [CryptexTSS alloc];

  return [(CryptexTSS *)v2 initWithFlags:a1];
}

void cryptex_tss_set_url(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = a1;
  v5 = [v3 stringWithUTF8String:a2];
  [v4 setURL:v5];
}

void cryptex_tss_set_BOOL(void *a1, const char *a2, BOOL a3)
{
  v5 = [a1 tss_request];
  xpc_dictionary_set_BOOL(v5, a2, a3);
}

void cryptex_tss_set_u32(void *a1, const char *a2, unsigned int a3)
{
  v5 = [a1 tss_request];
  xpc_dictionary_set_int64(v5, a2, a3);
}

void cryptex_tss_set_u64(void *a1, const char *a2, int64_t a3)
{
  v5 = [a1 tss_request];
  xpc_dictionary_set_int64(v5, a2, a3);
}

void cryptex_tss_set_dgst(void *a1, const char *a2, const void *a3, size_t a4)
{
  v7 = [a1 tss_request];
  xpc_dictionary_set_data(v7, a2, a3, a4);
}

void cryptex_tss_set_data(void *a1, const char *a2, const void *a3, size_t a4)
{
  v7 = [a1 tss_request];
  xpc_dictionary_set_data(v7, a2, a3, a4);
}

void cryptex_tss_set_string(void *a1, const char *a2, const char *a3)
{
  v5 = [a1 tss_request];
  xpc_dictionary_set_string(v5, a2, a3);
}

void cryptex_tss_set_object_BOOL(void *a1, const char *a2, const char *a3, BOOL a4)
{
  xdict = [a1 tss_request];
  v7 = xpc_dictionary_get_dictionary(xdict, a2);
  if (!v7)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(xdict, a2, v7);
  }

  xpc_dictionary_set_BOOL(v7, a3, a4);
}

void cryptex_tss_set_object_dgst(void *a1, const char *a2, const char *a3, const void *a4, size_t a5)
{
  xdict = [a1 tss_request];
  v9 = xpc_dictionary_get_dictionary(xdict, a2);
  if (!v9)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(xdict, a2, v9);
  }

  xpc_dictionary_set_data(v9, a3, a4, a5);
}

void cryptex_tss_set_info_from_file(void *a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (_read_file(a2, v7))
  {
    cryptex_tss_set_info_from_file_cold_1(&v6, v9);
  }

  v4 = [MEMORY[0x29EDB8DA0] dataWithBytes:v7[0] length:?];
  [v3 setInfoData:v4];
  buff_destroy(v7);

  v5 = *MEMORY[0x29EDCA608];
}

void cryptex_tss_submit(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 dq];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __cryptex_tss_submit_block_invoke;
  block[3] = &unk_29EEA8518;
  v9 = v5;
  v10 = a3;
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

void __cryptex_tss_submit_block_invoke(uint64_t a1)
{
  [*(a1 + 32) tssSubmit];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v2 tssp_sign];
  v4 = [*(a1 + 32) nserr];
  v3(v2, v5, v4, *(a1 + 48));
}

void cryptex_tss_async(void *a1, void *a2, void (__cdecl *a3)(void *))
{
  v5 = [a1 dq];
  dispatch_async_f(v5, a2, a3);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

char **cryptex_version_new(const char *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  memset(v12, 0, sizeof(v12));
  v10 = v12;
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x8709206FuLL);
  if (!v2)
  {
    cryptex_version_new_cold_2(&v11, v13);
  }

  v3 = v2;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = strdup(a1);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = strdup(a1);
    if (!v4)
    {
      cryptex_version_new_cold_1(a1, &v11, v13);
    }
  }

  *v3 = v4;
  __strlcpy_chk();
  for (i = 8; i != 28; i += 4)
  {
    *&v13[0] = 0;
    v6 = strsep(&v10, ".");
    if (!v6)
    {
      break;
    }

    v7 = _strtou32(v6, v13, 10);
    if (*&v13[0] && **&v13[0])
    {
      v7 = 0;
    }

    *(v3 + i) = v7;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t cryptex_version_compare(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    v5 = *(a2 + v3);
    v6 = v4 == v5;
    v7 = v4 > v5;
    v8 = v4 < v5 ? -1 : result;
    result = v7 ? 1 : v8;
    if (!v6)
    {
      break;
    }

    v3 += 4;
    if (v3 == 28)
    {
      return 0;
    }
  }

  return result;
}

void cryptex_version_destroy(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    free(*v2);
  }

  free(v2);
  *a1 = 0;
}

uint64_t cryptex_system_cryptex_lookup_by_name(char *__s)
{
  v1 = _cryptex_system_cryptex_lookup(&cryptex_system_cryptexes_by_name, __s);
  if (v1)
  {
    return v1 - 152;
  }

  else
  {
    return 0;
  }
}

uint64_t _cryptex_system_cryptex_lookup(uint64_t a1, char *__s)
{
  if (_cryptex_system_cryptex_lookup_init_onceToken != -1)
  {
    _cryptex_system_cryptex_lookup_cold_1();
  }

  return hash_lookup_cstr(a1, __s);
}

uint64_t cryptex_system_cryptex_lookup_by_graftpath(char *__s)
{
  v1 = _cryptex_system_cryptex_lookup(&cryptex_system_cryptexes_by_graftpath, __s);
  if (v1)
  {
    return v1 - 184;
  }

  else
  {
    return 0;
  }
}

uint64_t cryptex_system_cryptex_copy_launchjob_tag_for_name(char *__s)
{
  v6 = *MEMORY[0x29EDCA608];
  result = _cryptex_system_cryptex_lookup(&cryptex_system_cryptexes_by_name, __s);
  if (result)
  {
    v2 = *(result - 144);
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        result = strdup(v2);
        if (result)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      result = strdup(v2);
      if (!result)
      {
        cryptex_version_new_cold_1(v2, &v4, v5);
      }
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

char *cryptex_system_cryptex_copy_graft_abspath(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = 0;
  if (asprintf(&v3, "%s/%s", *(a1 + 120), *(a1 + 128)) < 0)
  {
    cryptex_core_unparse_hdiid_cold_1(&v4, v5);
  }

  result = v3;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___cryptex_system_cryptex_lookup_init_block_invoke()
{
  hash_init(cryptex_system_cryptexes_by_name);
  hash_init(cryptex_system_cryptexes_by_graftpath);
  v0 = cryptex_system_cryptexes;
  v1 = cryptex_system_cryptexes + 184;
  hash_node_init_cstr((cryptex_system_cryptexes + 152), *cryptex_system_cryptexes);
  hash_insert(cryptex_system_cryptexes_by_name, (v0 + 152));
  v2 = cryptex_system_cryptex_copy_graft_abspath(v0);
  hash_node_init_cstr(v1, v2);
  hash_insert(cryptex_system_cryptexes_by_graftpath, v1);
  v3 = off_2A13BD000;
  v4 = off_2A13BD000 + 184;
  hash_node_init_cstr((off_2A13BD000 + 152), *off_2A13BD000);
  hash_insert(cryptex_system_cryptexes_by_name, (v3 + 152));
  v5 = cryptex_system_cryptex_copy_graft_abspath(v3);
  hash_node_init_cstr(v4, v5);

  return hash_insert(cryptex_system_cryptexes_by_graftpath, v4);
}

uint64_t cryptex_host_create(uint64_t a1, uint64_t a2)
{
  v4 = _cryptex_host_alloc();
  v5 = v4;
  *(v4 + 40) = a2;
  if (!a1)
  {
    goto LABEL_4;
  }

  *(v4 + 48) = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  *(v4 + 96) = *(a1 + 48);
  *(v4 + 112) = v8;
  *(v4 + 64) = v6;
  *(v4 + 80) = v7;
  v9 = *(a1 + 80);
  v10 = *(a1 + 96);
  v11 = *(a1 + 128);
  *(v4 + 160) = *(a1 + 112);
  *(v4 + 176) = v11;
  *(v4 + 128) = v9;
  *(v4 + 144) = v10;
  *(v4 + 192) = v4 + 48;
  if (*(a1 + 8))
  {
    img4_chip_init_from_buff();
    v12 = *(v5 + 192);
    v13 = img4_chip_custom();
  }

  else
  {
LABEL_4:
    if ((a2 & 3) == 3)
    {
      v13 = MEMORY[0x29EDC96D8];
    }

    else
    {
      if ((a2 & 2) != 0)
      {
        v13 = MEMORY[0x29EDC96D0];
      }

      else
      {
        v13 = MEMORY[0x29EDC96C0];
      }

      if ((a2 & 3) == 0)
      {
        v13 = img4_chip_select_personalized_ap();
      }
    }
  }

  *(v5 + 1160) = v13;
  return v5;
}

uint64_t cryptex_metadata_write_to_file_xattrs(void *a1, int a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (MEMORY[0x29C2903B0]() == MEMORY[0x29EDCAA00])
  {
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __cryptex_metadata_write_to_file_xattrs_block_invoke;
    v10[3] = &unk_29EEA86E0;
    v10[4] = &v12;
    v11 = a2;
    xpc_dictionary_apply(v3, v10);
  }

  else
  {
    *(v13 + 6) = 22;
    v4 = *__error();
    v5 = cryptex_metadata_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(v13 + 6);
      *buf = 67109120;
      v17 = v6;
      _os_log_impl(&dword_2986F2000, v5, OS_LOG_TYPE_ERROR, "Invalid metadata.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v4;
  }

  v7 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_2986FD60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id cryptex_metadata_log()
{
  if (cryptex_metadata_log_onceToken != -1)
  {
    cryptex_metadata_log_cold_1();
  }

  v1 = cryptex_metadata_log_logHandle;

  return v1;
}

BOOL __cryptex_metadata_write_to_file_xattrs_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = MEMORY[0x29C2903B0]();
  v7 = v6 != MEMORY[0x29EDCAA50];
  if (v6 == MEMORY[0x29EDCAA50])
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    v13 = strlen(string_ptr);
    if (fsetxattr(*(a1 + 40), a2, string_ptr, v13 + 1, 0, 2))
    {
      v14 = *__error();
    }

    else
    {
      v14 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v14;
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v7 = 1;
      goto LABEL_12;
    }

    v8 = *__error();
    v9 = cryptex_metadata_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(*(a1 + 32) + 8) + 24);
      v18 = 136315394;
      v19 = a2;
      v20 = 1024;
      v21 = v15;
      v11 = "Failed to apply xattr '%s'.: %{darwin.errno}d";
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *__error();
    v9 = cryptex_metadata_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(*(a1 + 32) + 8) + 24);
      v18 = 136315394;
      v19 = a2;
      v20 = 1024;
      v21 = v10;
      v11 = "Unexpected value for cryptex_metadata key '%s': %{darwin.errno}d";
LABEL_10:
      _os_log_impl(&dword_2986F2000, v9, OS_LOG_TYPE_ERROR, v11, &v18, 0x12u);
    }
  }

  *__error() = v8;
LABEL_12:

  v16 = *MEMORY[0x29EDCA608];
  return v7;
}

void **cryptex_metadata_read_from_file_xattrs(int a1, void **a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    memset(value, 0, sizeof(value));
    v8 = _cryptex_metadata_keys[v5];
    if ((fgetxattr(a1, v8, value, 0x100uLL, 0, 2) & 0x8000000000000000) == 0)
    {
      *__error() = 0;
    }

    v9 = *__error();
    if (v9 == 93)
    {
      v10 = *__error();
      v11 = cryptex_metadata_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v18 = v8;
        _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_DEBUG, "No xattr '%s'.", buf, 0xCu);
      }

      *__error() = v10;
      goto LABEL_10;
    }

    if (v9)
    {
      break;
    }

    xpc_dictionary_set_string(v4, v8, value);
LABEL_10:
    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      if (a2)
      {
        v12 = *a2;
        *a2 = v4;

        v4 = 0;
        a2 = 0;
      }

      goto LABEL_16;
    }
  }

  a2 = *__error();
  v13 = *__error();
  v14 = cryptex_metadata_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = v8;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_ERROR, "Failed to read xattr '%s'.: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v13;
LABEL_16:

  v15 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t cryptex_metadata_read_from_cryptex(void *a1, void **a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v16 = 0;
  v17 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = cryptex_core_parse_info_asset(v3, &v17, &v16, 0);
  if (v5)
  {
    v6 = *__error();
    v7 = cryptex_metadata_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v5;
      _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_ERROR, "Failed to extract cryptex identifier and version.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v6;
  }

  else
  {
    v8 = 0;
    v9 = v17;
    v10 = *v16;
    v11 = 1;
    do
    {
      v12 = v11;
      xpc_dictionary_set_string(v4, _cryptex_metadata_keys[v8], v9);
      v11 = 0;
      v9 = v10;
      v8 = 1;
    }

    while ((v12 & 1) != 0);
    if (a2)
    {
      v13 = *a2;
      *a2 = v4;

      v4 = 0;
    }

    v5 = 0;
  }

  cryptex_version_destroy(&v16);

  free(v17);
  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t __cryptex_metadata_log_block_invoke()
{
  cryptex_metadata_log_logHandle = os_log_create("com.apple.libcryptex", "metadata");

  return MEMORY[0x2A1C71028]();
}

void _cryptex_magister_dealloc(uint64_t a1)
{
  os_release(*(a1 + 88));
  v2 = *(a1 + 96);
  if (v2)
  {
    os_release(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    os_release(v3);
  }

  object_proto_destroy(a1 + 56);
}

uint64_t cryptex_magister_create(void *a1, uint64_t a2)
{
  v4 = _cryptex_magister_alloc();
  *(v4 + 80) = a2;
  *(v4 + 88) = os_retain(a1);
  v5 = a1[20];
  if (v5)
  {
    *(v4 + 96) = os_retain(v5);
  }

  v6 = a1[21];
  if (v6)
  {
    *(v4 + 104) = os_retain(v6);
  }

  *(v4 + 120) = 0;
  *(v4 + 172) = 48;
  object_proto_init(v4 + 56, "com.apple.security.libcryptex.core", "magister");
  cryptex_init(v4, 0, _cryptex_magister_init, 0);
  return v4;
}

void _cryptex_magister_init(void *a1)
{
  v68 = *MEMORY[0x29EDCA608];
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v51 = 0;
  object = 0;
  v50 = MEMORY[0x29EDC96E0];
  v2 = a1[13];
  if (!v2)
  {
    goto LABEL_27;
  }

  if ((*(v2 + 40) & 1) == 0)
  {
    goto LABEL_26;
  }

  v3 = a1[7];
  v4 = *__error();
  v5 = a1[9];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = "[anonymous]";
    if (v3)
    {
      v6 = v3;
    }

    *buf = 136446210;
    v65 = v6;
    _os_log_impl(&dword_2986F2000, v5, OS_LOG_TYPE_DEBUG, "%{public}s: checking for supplemental fallback", buf, 0xCu);
  }

  *__error() = v4;
  v8 = a1[11];
  v7 = a1[12];
  v10 = *(v7 + 56);
  v9 = *(v7 + 64);
  v55 = 0;
  v56 = v10;
  v57 = v9;
  v58 = 0;
  if ((*(v8 + 40) & 1) == 0)
  {
    a1[10];
    bzero(buf, 0x600uLL);
    img4_firmware_init_from_buff();
    img4_firmware_init_sentinel();
    img4_firmware_attach_manifest();
    v61 = *(a1[13] + 1160);
    v62 = img4_chip_select_personalized_ap();
    v63 = MEMORY[0x29EDC96D0];
    v11 = img4_firmware_select_chip();
    if (v11)
    {
      v12 = v11;
      v13 = *(a1[13] + 1160);
      v14 = a1[7];
      v15 = *__error();
      v16 = a1[9];
      if (v12 == v13)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v24 = "[anonymous]";
          if (v14)
          {
            v24 = v14;
          }

          *v59 = 136446210;
          v60 = v24;
          _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_DEBUG, "%{public}s: validated supplemental environment", v59, 0xCu);
        }

        *__error() = v15;
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = "[anonymous]";
          if (v14)
          {
            v17 = v14;
          }

          *v59 = 136446210;
          v60 = v17;
          _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: falling back from supplemental", v59, 0xCu);
        }

        *__error() = v15;
        v18 = cryptex_core_select_chip(a1[11]);
        v19 = a1[13];
        *(v19 + 1160) = v18;
        *(v19 + 40) &= ~1uLL;
      }
    }

    else
    {
      v20 = a1[7];
      v21 = *__error();
      v22 = a1[9];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = "[anonymous]";
        if (v20)
        {
          v23 = v20;
        }

        *v59 = 136446210;
        v60 = v23;
        _os_log_impl(&dword_2986F2000, v22, OS_LOG_TYPE_ERROR, "%{public}s: unable to detect chip environment, proceeding anyway", v59, 0xCu);
      }

      *__error() = v21;
    }
  }

  v2 = a1[13];
  if (v2)
  {
LABEL_26:
    v25 = *(v2 + 1160);
  }

  else
  {
LABEL_27:
    v25 = cryptex_core_select_chip(a1[11]);
  }

  a1[14] = v25;
  nonce_domain = cryptex_core_get_nonce_domain(a1[11], &v50);
  if (nonce_domain || !v50)
  {
    v32 = a1[7];
    v28 = *__error();
    v29 = a1[9];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v33 = "[anonymous]";
      if (v32)
      {
        v33 = v32;
      }

      *buf = 136446466;
      v65 = v33;
      v66 = 1024;
      LODWORD(v67) = nonce_domain;
      v31 = "%{public}s: failed to get nonce domain from core: %{darwin.errno}d";
      goto LABEL_39;
    }

LABEL_40:
    *__error() = v28;
    goto LABEL_41;
  }

  nonce_domain = cryptex_core_copy_nonce_domain_desc(a1[11], &v51);
  v27 = a1[7];
  v28 = *__error();
  v29 = a1[9];
  if (nonce_domain)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = "[anonymous]";
      if (v27)
      {
        v30 = v27;
      }

      *buf = 136446466;
      v65 = v30;
      v66 = 1024;
      LODWORD(v67) = nonce_domain;
      v31 = "%{public}s: failed to get nonce domain description from core: %{darwin.errno}d";
LABEL_39:
      _os_log_impl(&dword_2986F2000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0x12u);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v35 = "[anonymous]";
    if (v27)
    {
      v35 = v27;
    }

    *buf = 136446466;
    v65 = v35;
    v66 = 2082;
    v67 = v51;
    _os_log_impl(&dword_2986F2000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: authenticating using nonce from %{public}s", buf, 0x16u);
  }

  *__error() = v28;
  v36 = img4_nonce_domain_copy_nonce();
  if (v36)
  {
    nonce_domain = v36;
    v37 = a1[7];
    v28 = *__error();
    v29 = a1[9];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v38 = "[anonymous]";
    if (v37)
    {
      v38 = v37;
    }

    *buf = 136446466;
    v65 = v38;
    v66 = 1024;
    LODWORD(v67) = nonce_domain;
    v31 = "%{public}s: copying cryptex nonce failed: %{darwin.errno}d";
    goto LABEL_39;
  }

  if (a1[12])
  {
    nonce_domain = 0;
  }

  else
  {
    asset = cryptex_core_get_asset(a1[11], &_cryptex_asset_type_im4m);
    if (!asset)
    {
      _cryptex_magister_init_cold_1();
    }

    v40 = asset;
    file = _read_file(*(asset + 16), v53);
    if (file)
    {
      nonce_domain = file;
      v42 = a1[7];
      v28 = *__error();
      v29 = a1[9];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      v43 = "[anonymous]";
      if (v42)
      {
        v43 = v42;
      }

      *buf = 136446466;
      v65 = v43;
      v66 = 1024;
      LODWORD(v67) = nonce_domain;
      v31 = "%{public}s: read im4m: %{darwin.errno}d";
      goto LABEL_39;
    }

    v44 = cryptex_metadata_read_from_file_xattrs(*(v40 + 16), &object);
    if (v44)
    {
      v45 = v44;
      v46 = a1[7];
      v47 = *__error();
      v48 = a1[9];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = "[anonymous]";
        if (v46)
        {
          v49 = v46;
        }

        *buf = 136446466;
        v65 = v49;
        v66 = 1024;
        LODWORD(v67) = v45;
        _os_log_impl(&dword_2986F2000, v48, OS_LOG_TYPE_ERROR, "%{public}s: Failed to load metadata for Image4 manifest.: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v47;
    }

    nonce_domain = 0;
    a1[12] = cryptex_signature_create(v53, 0, object);
  }

LABEL_41:
  cryptex_set_error(a1, nonce_domain);
  buff_destroy(v53);
  free(v51);
  if (object)
  {
    os_release(object);
  }

  v34 = *MEMORY[0x29EDCA608];
}

void cryptex_magister_authenticate_f(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __cryptex_magister_authenticate_f_block_invoke;
  v4[3] = &__block_descriptor_tmp_0;
  v4[4] = a4;
  v4[5] = a3;
  cryptex_magister_authenticate(a1, a2, v4);
}

void cryptex_magister_authenticate(uint64_t *a1, uint64_t a2, const void *a3)
{
  v6 = ctx_new(a1, 0x80uLL);
  v6[4] = cryptex_core_get_asset(a1[11], a2);
  v6[15] = _Block_copy(a3);

  cryptex_async_f(a1, v6, _cryptex_magister_authenticate_continue);
}

void _cryptex_magister_authenticate_continue(uint64_t *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[4];
  v4 = *(*a1 + 104);
  if (v4)
  {
    v5 = *(v4 + 1160);
  }

  else
  {
    v5 = cryptex_core_select_chip(*(v2 + 88));
  }

  v6 = _cryptex_magister_authenticate_toutoc;
  if ((**(v3 + 8) & 8) == 0)
  {
    v6 = _cryptex_magister_authenticate;
  }

  v7 = v6(v2, v5, v3, a1);
  if (v7)
  {
    v8 = v7;
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      *(v2 + 56);
      v14 = *(*(v3 + 8) + 40);
    }

    else
    {
      if (*(v2 + 56))
      {
        v10 = *(v2 + 56);
      }

      v15 = *(*(v3 + 8) + 40);
    }

    v11 = _os_log_send_and_compose_impl();
    Error = createError("_cryptex_magister_authenticate_continue", "magister.c", 371, "com.apple.security.cryptex", 12, v8, v11);
    free(v11);
    a1[2] = Error;
    cryptex_target_async_f(v2, a1, _cryptex_magister_authenticate_callback);
    CFRelease(v8);
    v13 = *MEMORY[0x29EDCA608];
  }

  else
  {
    a1[2] = 0;
    v9 = *MEMORY[0x29EDCA608];

    cryptex_target_async_f(v2, a1, _cryptex_magister_authenticate_callback);
  }
}

void cryptex_magister_record_property(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ctx_new(a1, 0x90uLL);
  v8[4] = a2;
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 9) = 0u;
  *(v8 + 11) = 0u;
  *(v8 + 104) = 0;
  v8[14] = 0;
  v8[15] = 0;
  v8[16] = a3;
  v8[17] = a4;

  cryptex_async_f(a1, v8, _cryptex_magister_record_property_continue);
}

void _cryptex_magister_record_property_continue(uint64_t *a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[4];
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 56);
  v6 = *__error();
  v7 = *(v2 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = "[anonymous]";
    v9 = *(v4 + 64);
    if (v5)
    {
      v8 = v5;
    }

    *buf = 136446466;
    v38 = v8;
    v39 = 2048;
    v40 = v9;
    _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_INFO, "%{public}s: im4m buff len: %zu", buf, 0x16u);
  }

  *__error() = v6;
  is_cryptex1 = cryptex_core_is_cryptex1(*(v2 + 88));
  v11 = *(v2 + 104);
  if (!v11 || (*(v11 + 40) & 1) == 0)
  {
    if (cryptex_core_is_cryptex1(*(v2 + 88)))
    {
      v12 = 3;
      goto LABEL_19;
    }

    v13 = *(v2 + 88);
    v14 = *(v13 + 176);
    if (v14 == &_cryptex_asset_type_cpxd)
    {
      v12 = 5;
      goto LABEL_19;
    }

    if (v14 == &_cryptex_asset_type_pdmg)
    {
      if (*(v13 + 56) == 2)
      {
        v12 = 9;
      }

      else
      {
        v12 = 4;
      }

      goto LABEL_19;
    }

LABEL_15:
    v12 = 4;
    goto LABEL_19;
  }

  if (cryptex_core_is_cryptex1(*(v2 + 88)))
  {
    goto LABEL_15;
  }

  if (*(*(v2 + 88) + 176) == &_cryptex_asset_type_cpxd)
  {
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v34 = *(v2 + 56);
      if (!v34)
      {
        v34 = "[anonymous]";
      }

      *buf = 136446210;
      v38 = v34;
    }

    else
    {
      v35 = *(v2 + 56);
      if (!v35)
      {
        v35 = "[anonymous]";
      }

      *buf = 136446210;
      v38 = v35;
    }

    v36 = _os_log_send_and_compose_impl();
    Error = createError("_cryptex_magister_select_image4_coproc_and_handle", "magister.c", 448, "com.apple.security.cryptex", 10, 0, v36);
    free(v36);
    if (Error)
    {
      goto LABEL_42;
    }

    goto LABEL_27;
  }

  v12 = 7;
LABEL_19:
  v15 = *(v2 + 56);
  v16 = *__error();
  v17 = *(v2 + 72);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = "[anonymous]";
    if (v15)
    {
      v18 = v15;
    }

    *buf = 136446722;
    v38 = v18;
    if (is_cryptex1)
    {
      v19 = "CRYPTEX1";
    }

    else
    {
      v19 = "AP";
    }

    v39 = 2082;
    v40 = v19;
    v41 = 2048;
    v42 = v12;
    _os_log_impl(&dword_2986F2000, v17, OS_LOG_TYPE_INFO, "%{public}s: Authenticating with coprocessor %{public}s and handle %llu", buf, 0x20u);
  }

  *__error() = v16;
LABEL_27:
  image4_environment_new();
  v20 = *(v4 + 56);
  v21 = *(v4 + 64);
  image4_trust_new();
  v22 = v3[8];
  switch(v22)
  {
    case 2u:
      v28 = *(v3 + 2);
      v29 = *v3;
      image4_trust_record_property_integer();
      v25 = 8;
      goto LABEL_33;
    case 1u:
      v26 = *(v3 + 2);
      v27 = *v3;
      image4_trust_record_property_data();
LABEL_34:
      image4_trust_evaluate();
      Error = 0;
      goto LABEL_42;
    case 0u:
      v23 = *(v3 + 2);
      v24 = *v3;
      image4_trust_record_property_BOOL();
      v25 = 1;
LABEL_33:
      a1[15] = v25;
      goto LABEL_34;
  }

  if (*(v2 + 72))
  {
    os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    v31 = *(v2 + 56);
    if (!v31)
    {
      v31 = "[anonymous]";
    }
  }

  else
  {
    v31 = *(v2 + 56);
    if (!v31)
    {
      v31 = "[anonymous]";
    }
  }

  *buf = 136446466;
  v38 = v31;
  v39 = 1024;
  LODWORD(v40) = v22;
  v32 = _os_log_send_and_compose_impl();
  Error = createError("_cryptex_magister_record_property_continue", "magister.c", 541, "com.apple.security.cryptex", 11, 0, v32);
  free(v32);
LABEL_42:
  image4_environment_destroy();
  image4_trust_destroy();
  if (Error)
  {
    a1[2] = CFRetain(Error);
    cryptex_target_async_f(v2, a1, _cryptex_magister_record_property_callback);
    CFRelease(Error);
  }

  v33 = *MEMORY[0x29EDCA608];
}

uint64_t _cryptex_magister_authenticate_toutoc(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x29EDCA608];
  v7 = a1[12];
  v9 = *(v7 + 56);
  v8 = *(v7 + 64);
  v26 = 0;
  v27 = v9;
  v28 = v8;
  v29 = 0;
  v24[3] = a4;
  v25 = 0;
  v24[1] = 1;
  v24[2] = _cryptex_magister_firmware_execute_toutoc;
  v10 = a1[7];
  v11 = *__error();
  v12 = a1[9];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = "[anonymous]";
    if (v10)
    {
      v13 = v10;
    }

    v14 = *(*(a3 + 8) + 40);
    v15 = *(a3 + 16);
    *buf = 136446722;
    v31 = v13;
    v32 = 2082;
    v33 = v14;
    v34 = 1024;
    v35 = v15;
    _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_DEBUG, "%{public}s: authenticating asset [toutoc]: 4cc = %{public}s, fd = %d", buf, 0x1Cu);
  }

  *__error() = v11;
  v16 = lseek(*(a3 + 16), 0, 1);
  *(a4 + 112) = v16;
  if (v16 == -1)
  {
    _cryptex_magister_authenticate_toutoc_cold_1(v24, buf);
  }

  v17 = *(a3 + 16);
  *buf = dup_np();
  if (*(a1[11] + 40))
  {
    v21 = 0;
  }

  else
  {
    v18 = *(a3 + 8);
    v19 = (2 * (*v18 & 1)) & 0xF7 | (8 * (a1[10] & 1));
    v20 = *(v18 + 32);
    v25 = img4_firmware_new_from_fd_4MSM();
    img4_firmware_attach_manifest();
    img4_firmware_execute();
    v21 = *(a4 + 16);
  }

  img4_firmware_destroy();
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

CFErrorRef _cryptex_magister_authenticate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 96);
  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  v34 = 0;
  v35 = v7;
  v36 = v6;
  v37 = 0;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  if (!v6)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v20 = *(a1 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      *buf = 136446210;
      v39 = v20;
    }

    else
    {
      v28 = *(a1 + 56);
      if (!v28)
      {
        v28 = "[anonymous]";
      }

      *buf = 136446210;
      v39 = v28;
    }

    v29 = _os_log_send_and_compose_impl();
    Error = createError("_cryptex_magister_authenticate", "magister.c", 177, "com.apple.security.cryptex", 12, 0, v29);
    v27 = v29;
    goto LABEL_25;
  }

  v10 = *(a1 + 56);
  v11 = *__error();
  v12 = *(a1 + 72);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = "[anonymous]";
    if (v10)
    {
      v13 = v10;
    }

    v14 = *(*(a3 + 8) + 40);
    v15 = *(a3 + 16);
    *buf = 136446722;
    v39 = v13;
    v40 = 2082;
    v41 = v14;
    v42 = 1024;
    v43 = v15;
    _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_DEBUG, "%{public}s: authenticating asset: 4cc = %{public}s, fd = %d", buf, 0x1Cu);
  }

  *__error() = v11;
  file = _read_file(*(a3 + 16), v32);
  if (file)
  {
    v17 = file;
    v18 = file;
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v19 = *(a1 + 56);
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      *buf = 136446466;
      v39 = v19;
      v40 = 1024;
      LODWORD(v41) = v17;
    }

    else
    {
      v25 = *(a1 + 56);
      if (!v25)
      {
        v25 = "[anonymous]";
      }

      *buf = 136446466;
      v39 = v25;
      v40 = 1024;
      LODWORD(v41) = file;
    }

    v26 = _os_log_send_and_compose_impl();
    Error = createError("_cryptex_magister_authenticate", "magister.c", 187, "com.apple.security.cryptex.posix", v18, 0, v26);
    v27 = v26;
LABEL_25:
    free(v27);
    goto LABEL_26;
  }

  *(a4 + 40) = v32;
  if (*(*(a1 + 88) + 40))
  {
    Error = 0;
  }

  else
  {
    v21 = *(a3 + 8);
    v22 = (2 * (*v21 & 1)) & 0xF7 | (8 * (*(a1 + 80) & 1));
    v23 = *(v21 + 32);
    img4_firmware_new();
    img4_firmware_attach_manifest();
    img4_firmware_execute();
    Error = *(a4 + 16);
  }

LABEL_26:
  buff_destroy(v32);
  img4_firmware_destroy();
  v30 = *MEMORY[0x29EDCA608];
  return Error;
}

void _cryptex_magister_authenticate_callback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 104);
  v5 = *(a1 + 16);
  (*(*(a1 + 120) + 16))();
  _Block_release(*(a1 + 120));
  buff_destroy(v4);
  ctx_destroy(a1);
  if (v5)
  {

    CFRelease(v5);
  }
}

void _cryptex_magister_firmware_execute_toutoc(int a1, uint64_t a2, int a3, void *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    _cryptex_magister_firmware_execute_toutoc_cold_1();
  }

  v5 = a4[4];
  v6 = a4[14];
  v7 = *a4;
  v8 = _cryptex_magister_firmware_execute_cferr(a3, *(*a4 + 72));
  if (v8)
  {
    v9 = v8;
    if (*(v7 + 72))
    {
      os_log_type_enabled(*(v7 + 72), OS_LOG_TYPE_ERROR);
      v10 = *(v7 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      *buf = 136446210;
      v22 = v10;
    }

    else
    {
      v16 = *(v7 + 56);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      *buf = 136446210;
      v22 = v16;
    }

    v17 = _os_log_send_and_compose_impl();
    Error = createError("_cryptex_magister_firmware_execute_toutoc", "magister.c", 239, "com.apple.security.cryptex", 12, v9, v17);
    free(v17);
    a4[2] = Error;
    CFRelease(v9);
  }

  else
  {
    v11 = *(v7 + 56);
    v12 = *__error();
    v13 = *(v7 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = "[anonymous]";
      if (v11)
      {
        v14 = v11;
      }

      v15 = *(*(v5 + 8) + 40);
      *buf = 136446466;
      v22 = v14;
      v23 = 2082;
      v24 = v15;
      _os_log_impl(&dword_2986F2000, v13, OS_LOG_TYPE_DEBUG, "%{public}s: executing image: %{public}s", buf, 0x16u);
    }

    *__error() = v12;
    if (lseek(*(v5 + 16), v6, 0) == -1)
    {
      _cryptex_magister_firmware_execute_toutoc_cold_2(&v20, buf);
    }

    a4[2] = 0;
  }

  v19 = *MEMORY[0x29EDCA608];
}

CFErrorRef _cryptex_magister_firmware_execute_cferr(int a1, os_log_t oslog)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 > 69)
  {
    if (a1 <= 79)
    {
      if (a1 == 70)
      {
        if (oslog)
        {
          os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
        }

        v4 = _os_log_send_and_compose_impl();
        v5 = 71;
        v6 = 70;
        goto LABEL_41;
      }

      if (a1 == 79)
      {
        if (oslog)
        {
          os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
        }

        v4 = _os_log_send_and_compose_impl();
        v5 = 81;
        v6 = 79;
        goto LABEL_41;
      }
    }

    else
    {
      switch(a1)
      {
        case 'P':
          if (oslog)
          {
            os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
          }

          v4 = _os_log_send_and_compose_impl();
          v5 = 88;
          v6 = 80;
          goto LABEL_41;
        case 'R':
          if (oslog)
          {
            os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
          }

          v4 = _os_log_send_and_compose_impl();
          v5 = 74;
          v6 = 82;
          goto LABEL_41;
        case '\\':
          if (oslog)
          {
            os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
          }

          v4 = _os_log_send_and_compose_impl();
          v5 = 77;
          v6 = 92;
LABEL_41:
          Error = createError("_cryptex_magister_firmware_execute_cferr", "magister.c", v5, "com.apple.security.cryptex.posix", v6, 0, v4);
          free(v4);
          goto LABEL_42;
      }
    }

LABEL_30:
    if (oslog)
    {
      os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
    }

    v4 = _os_log_send_and_compose_impl();
    v5 = 100;
    v6 = a1;
    goto LABEL_41;
  }

  if (a1 > 7)
  {
    if (a1 == 8)
    {
      if (oslog)
      {
        os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
      }

      v4 = _os_log_send_and_compose_impl();
      v5 = 97;
      v6 = 8;
      goto LABEL_41;
    }

    if (a1 == 13)
    {
      if (oslog)
      {
        os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
      }

      v4 = _os_log_send_and_compose_impl();
      v5 = 92;
      v6 = 13;
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  if (a1)
  {
    if (a1 == 2)
    {
      if (oslog)
      {
        os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
      }

      v4 = _os_log_send_and_compose_impl();
      v5 = 85;
      v6 = 2;
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  Error = 0;
LABEL_42:
  v7 = *MEMORY[0x29EDCA608];
  return Error;
}

void _cryptex_magister_firmware_execute(int a1, int a2, int a3, __n128 *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = a4->n128_u64[0];
  v7 = a4[2].n128_u64[0];
  v6 = a4[2].n128_u64[1];
  v8 = _cryptex_magister_firmware_execute_cferr(a3, *(a4->n128_u64[0] + 72));
  if (v8)
  {
    v9 = v8;
    if (*(v5 + 72))
    {
      os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
      v10 = *(v5 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = v10;
    }

    else
    {
      v19 = *(v5 + 56);
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = v19;
    }

    v20 = _os_log_send_and_compose_impl();
    Error = createError("_cryptex_magister_firmware_execute", "magister.c", 124, "com.apple.security.cryptex", 12, v9, v20);
    free(v20);
    a4[1].n128_u64[0] = Error;
    CFRelease(v9);
    goto LABEL_17;
  }

  bytes = img4_image_get_bytes();
  v12 = *(v5 + 56);
  v13 = *__error();
  v14 = *(v5 + 72);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = "[anonymous]";
    if (v12)
    {
      v15 = v12;
    }

    v16 = *(*(v7 + 8) + 40);
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v15;
    WORD6(buf[0]) = 2082;
    *(buf + 14) = v16;
    _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_DEBUG, "%{public}s: executing image: %{public}s", buf, 0x16u);
  }

  *__error() = v13;
  v17 = *(bytes + 8);
  if ((v17 - v6->n128_u64[0]) < 0)
  {
    v23 = v17 - v6->n128_u64[0];
    v24 = v6->n128_u64[1];
    v25 = *(bytes + 16);
  }

  else
  {
    v18 = *(bytes + 16);
    if (v18 <= v6->n128_u64[1])
    {
      buff_xfer_subrange(a4 + 3, v6, v17 - v6->n128_u64[0], v18);
      a4[6].n128_u64[1] = a4[3].n128_u64;
      a4[1].n128_u64[0] = 0;
LABEL_17:
      v22 = *MEMORY[0x29EDCA608];
      return;
    }

    v26 = v6->n128_u64[1];
  }

  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void _cryptex_magister_record_property_continue2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  *__dst = 0u;
  v6 = *a5;
  if (a4)
  {
    v8 = a4;
    if (*(v6 + 72))
    {
      os_log_type_enabled(*(v6 + 72), OS_LOG_TYPE_ERROR);
      v9 = *(v6 + 56);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      *buf = 136446466;
      v39 = v9;
      v40 = 1024;
      LODWORD(v41) = a4;
    }

    else
    {
      v22 = *(v6 + 56);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      *buf = 136446466;
      v39 = v22;
      v40 = 1024;
      LODWORD(v41) = a4;
    }

    v23 = _os_log_send_and_compose_impl();
    v24 = "com.apple.security.cryptex.posix";
    v25 = 396;
    v26 = v8;
  }

  else
  {
    v10 = a5[4];
    v11 = *(v10 + 24);
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v12 = malloc_type_calloc(1uLL, v11, 0x8A375538uLL);
        if (v12)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      v12 = malloc_type_calloc(1uLL, v11, 0x8709206FuLL);
      if (!v12)
      {
        _cryptex_magister_record_property_continue2_cold_1(&v37, buf);
      }
    }

    buff_init(__dst, 0, _buff_destructor_free, v12, *(v10 + 24));
    v13 = a5[15];
    v14 = *(v10 + 24);
    if (v13 == v14)
    {
      v15 = a5[14];
      v16 = *(v6 + 56);
      v17 = *__error();
      v18 = *(v6 + 72);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (v13 && v15)
      {
        if (v19)
        {
          v20 = "[anonymous]";
          v21 = *(v10 + 8);
          if (v16)
          {
            v20 = v16;
          }

          *buf = 136446466;
          v39 = v20;
          v40 = 2082;
          v41 = v21;
          _os_log_impl(&dword_2986F2000, v18, OS_LOG_TYPE_INFO, "%{public}s: Successfully read property '%{public}s' from im4m", buf, 0x16u);
        }

        *__error() = v17;
        memcpy(__dst[0], a5[14], a5[15]);
        buff_xfer((a5 + 5), __dst);
      }

      else
      {
        if (v19)
        {
          v28 = "[anonymous]";
          v29 = *(v10 + 8);
          if (v16)
          {
            v28 = v16;
          }

          *buf = 136446466;
          v39 = v28;
          v40 = 2082;
          v41 = v29;
          _os_log_impl(&dword_2986F2000, v18, OS_LOG_TYPE_INFO, "%{public}s: Property '%{public}s' not found in im4m", buf, 0x16u);
        }

        *__error() = v17;
      }

      buff_destroy(__dst);
      goto LABEL_39;
    }

    if (*(v6 + 72))
    {
      os_log_type_enabled(*(v6 + 72), OS_LOG_TYPE_ERROR);
      v27 = *(v6 + 56);
      *buf = 136446722;
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      v39 = v27;
      v40 = 2048;
      v41 = v13;
      v42 = 2048;
      v43 = v14;
    }

    else
    {
      v30 = "[anonymous]";
      if (*(v6 + 56))
      {
        v30 = *(v6 + 56);
      }

      *buf = 136446722;
      v39 = v30;
      v40 = 2048;
      v41 = v13;
      v42 = 2048;
      v43 = v14;
    }

    v23 = _os_log_send_and_compose_impl();
    v24 = "com.apple.security.cryptex";
    v25 = 404;
    v26 = 24;
  }

  Error = createError("_cryptex_magister_record_property_continue2", "magister.c", v25, v24, v26, 0, v23);
  free(v23);
  buff_destroy(__dst);
  if (!Error)
  {
LABEL_39:
    a5[2] = 0;
    cryptex_target_async_f(v6, a5, _cryptex_magister_record_property_callback);
    goto LABEL_40;
  }

  a5[2] = CFRetain(Error);
  cryptex_target_async_f(v6, a5, _cryptex_magister_record_property_callback);
  CFRelease(Error);
LABEL_40:
  v32 = *MEMORY[0x29EDCA608];
}

void _cryptex_magister_record_property_callback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (*(a1 + 40))
  {
    v4 = a1 + 40;
  }

  else
  {
    v4 = 0;
  }

  (*(a1 + 136))(v2, v4, *(a1 + 16), *(a1 + 128));
  buff_destroy((a1 + 40));
  ctx_destroy(a1);
  if (v3)
  {

    CFRelease(v3);
  }
}

void _cryptex_signature_dealloc(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    os_release(v2);
  }

  buff_destroy((a1 + 56));

  object_proto_destroy(a1 + 16);
}

uint64_t cryptex_signature_seal()
{
  v11 = *MEMORY[0x29EDCA608];
  v0 = os_log_create("com.apple.libcryptex", "signature");
  v9 = xmmword_29870A4D0;
  v10 = xmmword_29870A4C0;
  v1 = aks_sealed_hashes_set();
  if (v1 == -28)
  {
    Errno = 28;
    if (!v0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  Errno = v1;
  if (v1)
  {
    if (v1 == -31)
    {
      cryptex_signature_seal_cold_1();
    }

    v3 = *__error();
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v7 = 67109120;
    v8 = Errno;
    v4 = "aks_sealed_hashes_set: %#x";
    goto LABEL_9;
  }

  Errno = aks_seal_cryptex_manifest_lock();
  if (!Errno)
  {
    goto LABEL_11;
  }

  v3 = *__error();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v7 = 67109120;
    v8 = Errno;
    v4 = "aks_seal_cryptex_manifest_lock: %#x";
LABEL_9:
    _os_log_impl(&dword_2986F2000, v0, OS_LOG_TYPE_ERROR, v4, &v7, 8u);
  }

LABEL_10:
  *__error() = v3;
  Errno = _IOErrorGetErrno(Errno);
LABEL_11:
  if (v0)
  {
LABEL_12:
    os_release(v0);
  }

LABEL_13:
  v5 = *MEMORY[0x29EDCA608];
  return Errno;
}

uint64_t cryptex_signature_create(__n128 *a1, uint64_t a2, void *a3)
{
  v6 = _cryptex_signature_alloc();
  *(v6 + 40) = a2;
  if (a3)
  {
    v7 = xpc_retain(a3);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 264) = v7;
  buff_xfer((v6 + 56), a1);
  if (*(v6 + 96) == _buff_destructor_munmap)
  {
    cryptex_signature_create_cold_1();
  }

  *(v6 + 48) = ccsha384_di();
  _cryptex_signature_compute_hash(v6);
  object_proto_init(v6 + 16, "com.apple.security.libcryptex.core", "signature");
  return v6;
}

int *_cryptex_signature_compute_hash(uint64_t a1)
{
  *&v26[37] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = (v2[1] + v2[2] + 19) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x2A1C7C4A8]();
  bzero(&v21 - v4, v5);
  if (*v2 >= 0x31uLL)
  {
    _cryptex_signature_compute_hash_cold_1(&v22, buf);
  }

  ccdigest_init();
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a1 + 48);
  ccdigest_update();
  (*(*(a1 + 48) + 56))();
  v9 = *(a1 + 16);
  v10 = *__error();
  v11 = *(a1 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = "[anonymous]";
    }

    v13 = **(a1 + 48);
    *buf = 136446722;
    v24 = v12;
    v25 = 1040;
    *v26 = v13;
    v26[2] = 2096;
    *&v26[3] = a1 + 112;
    _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: computed manifest hash: %.*P", buf, 0x1Cu);
  }

  *__error() = v10;
  v14 = a1 + 160;
  _sprintdgst(a1 + 160, (a1 + 112), **(a1 + 48));
  v15 = *(a1 + 16);
  v16 = *__error();
  v17 = *(a1 + 32);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = "[anonymous]";
    }

    *buf = 136446466;
    v24 = v18;
    v25 = 2080;
    *v26 = v14;
    _os_log_impl(&dword_2986F2000, v17, OS_LOG_TYPE_DEBUG, "%{public}s: manifest hash cstring: %s", buf, 0x16u);
  }

  result = __error();
  *result = v16;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_signature_write(void *a1, int __fd)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = _write_file(__fd, (a1 + 7));
  if (v4)
  {
    v5 = a1[2];
    v6 = *__error();
    v7 = a1[4];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      *__error() = v6;
      goto LABEL_9;
    }

    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    v23 = 136446466;
    v24 = v8;
    v25 = 1024;
    v26 = v4;
    v9 = "%{public}s: Failed to write signature to file.: %{darwin.errno}d";
    goto LABEL_6;
  }

  v15 = a1[33];
  if (!v15)
  {
    v20 = a1[2];
    v6 = *__error();
    v21 = a1[4];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v22 = "[anonymous]";
    if (v20)
    {
      v22 = v20;
    }

    v23 = 136446210;
    v24 = v22;
    v9 = "%{public}s: Signature has no metadata.";
    v10 = v21;
    v11 = OS_LOG_TYPE_DEBUG;
    v12 = 12;
    goto LABEL_7;
  }

  v16 = xpc_retain(v15);
  v17 = cryptex_metadata_write_to_file_xattrs(v16, __fd);
  if (v16)
  {
    os_release(v16);
  }

  if (v17)
  {
    v18 = a1[2];
    v6 = *__error();
    v7 = a1[4];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v19 = "[anonymous]";
    if (v18)
    {
      v19 = v18;
    }

    v23 = 136446466;
    v24 = v19;
    v25 = 1024;
    v26 = v17;
    v9 = "%{public}s: Failed to write xattr metadata.: %{darwin.errno}d";
LABEL_6:
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 18;
LABEL_7:
    _os_log_impl(&dword_2986F2000, v10, v11, v9, &v23, v12);
    goto LABEL_8;
  }

LABEL_9:
  v13 = *MEMORY[0x29EDCA608];
  return v4;
}

CFTypeRef cryptex_signature_lock(uint64_t a1, int a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v37 = xmmword_29870A4C0;
  v4 = **(a1 + 48);
  v5 = aks_sealed_hashes_set();
  if (v5 == -31)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v15 = *(a1 + 16);
      if (!v15)
      {
        v15 = "[anonymous]";
      }

      *buf = 136446210;
      v32 = v15;
    }

    else
    {
      v22 = *(a1 + 16);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      *buf = 136446210;
      v32 = v22;
    }

    v19 = _os_log_send_and_compose_impl();
    v20 = "com.apple.security.cryptex";
    v21 = 308;
    goto LABEL_33;
  }

  v6 = v5;
  if (v5 == -28)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v14 = *(a1 + 16);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      *buf = 136446210;
      v32 = v14;
    }

    else
    {
      v18 = *(a1 + 16);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *buf = 136446210;
      v32 = v18;
    }

    v19 = _os_log_send_and_compose_impl();
    v20 = "com.apple.security.cryptex";
    v21 = 303;
LABEL_33:
    v23 = 36;
LABEL_39:
    Error = createError("cryptex_signature_lock", "signature.c", v21, v20, v23, 0, v19);
    v12 = 0;
    goto LABEL_40;
  }

  if (v5)
  {
    Errno = _IOErrorGetErrno(v5);
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      if (*(a1 + 16))
      {
        v17 = *(a1 + 16);
      }

      else
      {
        v17 = "[anonymous]";
      }
    }

    else if (*(a1 + 16))
    {
      v17 = *(a1 + 16);
    }

    else
    {
      v17 = "[anonymous]";
    }

    *buf = 136446722;
    v32 = v17;
    v33 = 1024;
    v34 = v6;
    v35 = 1024;
    v36 = _IOErrorGetErrno(v6);
    v19 = _os_log_send_and_compose_impl();
    v20 = "com.apple.security.cryptex.posix";
    v21 = 312;
    v23 = Errno;
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v8 = *__error();
  v9 = *(a1 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[anonymous]";
    if (v7)
    {
      v10 = v7;
    }

    *buf = 136446210;
    v32 = v10;
    _os_log_impl(&dword_2986F2000, v9, OS_LOG_TYPE_DEBUG, "%{public}s: successfully set cryptex sealed hash.", buf, 0xCu);
  }

  *__error() = v8;
  v29 = xmmword_29870A4D0;
  v30 = xmmword_29870A4C0;
  v11 = cryptex_signature_secureconfig_add_entry(&v30, a1, a2, &v29);
  if (!v11)
  {
    v24 = 0;
    goto LABEL_43;
  }

  v12 = v11;
  if (*(a1 + 32))
  {
    os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
    v13 = *(a1 + 16);
    if (!v13)
    {
      v13 = "[anonymous]";
    }

    *buf = 136446210;
    v32 = v13;
  }

  else
  {
    v28 = *(a1 + 16);
    if (!v28)
    {
      v28 = "[anonymous]";
    }

    *buf = 136446210;
    v32 = v28;
  }

  v19 = _os_log_send_and_compose_impl();
  Error = createError("cryptex_signature_lock", "signature.c", 324, "com.apple.security.cryptex", 36, v12, v19);
LABEL_40:
  free(v19);
  if (!Error)
  {
    v24 = 0;
    if (!v12)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v24 = CFRetain(Error);
  CFRelease(Error);
  if (v12)
  {
LABEL_42:
    CFRelease(v12);
  }

LABEL_43:
  v26 = *MEMORY[0x29EDCA608];
  return v24;
}

CFTypeRef cryptex_signature_secureconfig_add_entry(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v57 = *MEMORY[0x29EDCA608];
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v7 = *(a2 + 16);
  v8 = *__error();
  v9 = *(a2 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[anonymous]";
    if (v7)
    {
      v10 = v7;
    }

    *buf = 136446210;
    v54 = v10;
    _os_log_impl(&dword_2986F2000, v9, OS_LOG_TYPE_DEBUG, "%{public}s: Preparing to add entry to secure config.", buf, 0xCu);
  }

  *__error() = v8;
  if (!MEMORY[0x2A1C77AD0])
  {
    v14 = *(a2 + 16);
    v15 = *__error();
    v16 = *(a2 + 32);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = "[anonymous]";
      if (v14)
      {
        v17 = v14;
      }

      *buf = 136446210;
      v54 = v17;
      _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_INFO, "%{public}s: SecureConfigDB not available", buf, 0xCu);
    }

    default_database = 0;
    goto LABEL_18;
  }

  default_database = secure_config_get_default_database();
  if (!default_database)
  {
    if (*(a2 + 32))
    {
      os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR);
      v20 = *(a2 + 16);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      *buf = 136446210;
      v54 = v20;
    }

    else
    {
      v24 = *(a2 + 16);
      if (!v24)
      {
        v24 = "[anonymous]";
      }

      *buf = 136446210;
      v54 = v24;
    }

    v25 = _os_log_send_and_compose_impl();
    v26 = 217;
    goto LABEL_49;
  }

  if (!MEMORY[0x2A1C77AC8])
  {
    if (!a4)
    {
      slot = secure_config_database_create_slot();
      goto LABEL_34;
    }

    v21 = *(a2 + 16);
    v15 = *__error();
    v22 = *(a2 + 32);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = "[anonymous]";
      if (v21)
      {
        v23 = v21;
      }

      *buf = 136446210;
      v54 = v23;
      _os_log_impl(&dword_2986F2000, v22, OS_LOG_TYPE_ERROR, "%{public}s: Unable to create SecureConfigDB slot with salt", buf, 0xCu);
    }

LABEL_18:
    slot = 0;
    v18 = 0;
    *__error() = v15;
    goto LABEL_19;
  }

  slot = secure_config_database_create_slot_with_saltdata();
  if (!slot)
  {
    if (*(a2 + 32))
    {
      os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR);
      v13 = *(a2 + 16);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      *buf = 136446210;
      v54 = v13;
    }

    else
    {
      v35 = *(a2 + 16);
      if (!v35)
      {
        v35 = "[anonymous]";
      }

      *buf = 136446210;
      v54 = v35;
    }

    v25 = _os_log_send_and_compose_impl();
    v26 = 227;
LABEL_49:
    Error = createError("cryptex_signature_secureconfig_add_entry", "signature.c", v26, "com.apple.security.cryptex", 36, 0, v25);
    slot = 0;
LABEL_50:
    v18 = 0;
    goto LABEL_78;
  }

LABEL_34:
  v27 = *(a2 + 56);
  v28 = *(a2 + 64);
  v29 = secure_config_entry_create_with_buffer();
  if (!v29)
  {
    if (*(a2 + 32))
    {
      os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR);
      v34 = *(a2 + 16);
      if (!v34)
      {
        v34 = "[anonymous]";
      }

      *buf = 136446210;
      v54 = v34;
    }

    else
    {
      v42 = *(a2 + 16);
      if (!v42)
      {
        v42 = "[anonymous]";
      }

      *buf = 136446210;
      v54 = v42;
    }

    v25 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_signature_secureconfig_add_entry", "signature.c", 242, "com.apple.security.cryptex", 36, 0, v25);
    goto LABEL_50;
  }

  v18 = v29;
  if (a3 < 0)
  {
LABEL_56:
    appended = secure_config_slot_append_entry();
    if (appended)
    {
      v40 = appended;
      v32 = appended;
      if (*(a2 + 32))
      {
        os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR);
        v41 = *(a2 + 16);
        if (!v41)
        {
          v41 = "[anonymous]";
        }

        *buf = 136446466;
        v54 = v41;
        v55 = 1024;
        v56 = v40;
      }

      else
      {
        v45 = *(a2 + 16);
        if (!v45)
        {
          v45 = "[anonymous]";
        }

        *buf = 136446466;
        v54 = v45;
        v55 = 1024;
        v56 = appended;
      }

      v25 = _os_log_send_and_compose_impl();
      v44 = 268;
      goto LABEL_77;
    }

LABEL_19:
    buff_destroy(v51);
    Error = 0;
    goto LABEL_81;
  }

  file = _read_file(a3, v51);
  if (!file)
  {
    v36 = secure_config_entry_set_metadata();
    if (v36)
    {
      v37 = v36;
      v32 = v36;
      if (*(a2 + 32))
      {
        os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR);
        v38 = *(a2 + 16);
        if (!v38)
        {
          v38 = "[anonymous]";
        }

        *buf = 136446466;
        v54 = v38;
        v55 = 1024;
        v56 = v37;
      }

      else
      {
        v46 = *(a2 + 16);
        if (!v46)
        {
          v46 = "[anonymous]";
        }

        *buf = 136446466;
        v54 = v46;
        v55 = 1024;
        v56 = v36;
      }

      v25 = _os_log_send_and_compose_impl();
      v44 = 259;
      goto LABEL_77;
    }

    goto LABEL_56;
  }

  v31 = file;
  v32 = file;
  if (*(a2 + 32))
  {
    os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR);
    v33 = *(a2 + 16);
    if (!v33)
    {
      v33 = "[anonymous]";
    }

    *buf = 136446466;
    v54 = v33;
    v55 = 1024;
    v56 = v31;
  }

  else
  {
    v43 = *(a2 + 16);
    if (!v43)
    {
      v43 = "[anonymous]";
    }

    *buf = 136446466;
    v54 = v43;
    v55 = 1024;
    v56 = file;
  }

  v25 = _os_log_send_and_compose_impl();
  v44 = 251;
LABEL_77:
  Error = createError("cryptex_signature_secureconfig_add_entry", "signature.c", v44, "com.apple.security.cryptex.posix", v32, 0, v25);
LABEL_78:
  free(v25);
  buff_destroy(v51);
  if (!Error)
  {
LABEL_81:
    v47 = 0;
    v48 = 1;
    if (!v18)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v47 = CFRetain(Error);
  v48 = 0;
  if (v18)
  {
LABEL_82:
    os_release(v18);
  }

LABEL_83:
  if (slot)
  {
    os_release(slot);
  }

  if (default_database)
  {
    os_release(default_database);
  }

  if ((v48 & 1) == 0)
  {
    CFRelease(Error);
  }

  v49 = *MEMORY[0x29EDCA608];
  return v47;
}

CFTypeRef cryptex_signature_lock_with_sep(uint64_t a1, int a2)
{
  v39 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = aks_measure_and_seal_cryptex_manifest();
  v7 = v6;
  if (v6 > -536362987)
  {
    if (v6 == -536362986)
    {
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v23 = *(a1 + 16);
        if (!v23)
        {
          v23 = "[anonymous]";
        }
      }

      else
      {
        v23 = *(a1 + 16);
        if (!v23)
        {
          v23 = "[anonymous]";
        }
      }

      *buf = 136446466;
      v34 = v23;
      v35 = 1024;
      v36 = -536362986;
      v24 = _os_log_send_and_compose_impl();
      v25 = "com.apple.security.cryptex";
      v26 = 371;
      goto LABEL_43;
    }

    if (!v6)
    {
      v9 = *(a1 + 16);
      v10 = *__error();
      v11 = *(a1 + 32);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = "[anonymous]";
        if (v9)
        {
          v12 = v9;
        }

        *buf = 136446210;
        v34 = v12;
        _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: successfully sealed im4m.", buf, 0xCu);
      }

      *__error() = v10;
      v32 = xmmword_29870A4E0;
      v13 = cryptex_signature_secureconfig_add_entry(&v32, a1, a2, 0);
      if (!v13)
      {
        v22 = 0;
        goto LABEL_48;
      }

      v14 = v13;
      if (*(a1 + 32))
      {
        os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
        v15 = *(a1 + 16);
        if (!v15)
        {
          v15 = "[anonymous]";
        }

        *buf = 136446210;
        v34 = v15;
      }

      else
      {
        v31 = *(a1 + 16);
        if (!v31)
        {
          v31 = "[anonymous]";
        }

        *buf = 136446210;
        v34 = v31;
      }

      v24 = _os_log_send_and_compose_impl();
      Error = createError("cryptex_signature_lock_with_sep", "signature.c", 389, "com.apple.security.cryptex", 36, v14, v24);
      goto LABEL_45;
    }

LABEL_19:
    Errno = _IOErrorGetErrno(v6);
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      if (*(a1 + 16))
      {
        v17 = *(a1 + 16);
      }

      else
      {
        v17 = "[anonymous]";
      }
    }

    else if (*(a1 + 16))
    {
      v17 = *(a1 + 16);
    }

    else
    {
      v17 = "[anonymous]";
    }

    *buf = 136446722;
    v34 = v17;
    v35 = 1024;
    v36 = v7;
    v37 = 1024;
    v38 = _IOErrorGetErrno(v7);
    v24 = _os_log_send_and_compose_impl();
    v25 = "com.apple.security.cryptex.posix";
    v26 = 376;
    v27 = Errno;
    goto LABEL_44;
  }

  if (v6 == -536870170)
  {
    v18 = *(a1 + 16);
    v19 = *__error();
    v20 = *(a1 + 32);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = "[anonymous]";
      if (v18)
      {
        v21 = v18;
      }

      *buf = 136446210;
      v34 = v21;
      _os_log_impl(&dword_2986F2000, v20, OS_LOG_TYPE_INFO, "%{public}s: sealing im4m with SEP is unsupported on this device.", buf, 0xCu);
    }

    v22 = 0;
    *__error() = v19;
    goto LABEL_48;
  }

  if (v6 != -536363000)
  {
    goto LABEL_19;
  }

  if (*(a1 + 32))
  {
    os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = "[anonymous]";
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = "[anonymous]";
    }
  }

  *buf = 136446466;
  v34 = v8;
  v35 = 1024;
  v36 = -536363000;
  v24 = _os_log_send_and_compose_impl();
  v25 = "com.apple.security.cryptex";
  v26 = 366;
LABEL_43:
  v27 = 36;
LABEL_44:
  Error = createError("cryptex_signature_lock_with_sep", "signature.c", v26, v25, v27, 0, v24);
  v14 = 0;
LABEL_45:
  free(v24);
  if (!Error)
  {
    v22 = 0;
    if (!v14)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v22 = CFRetain(Error);
  CFRelease(Error);
  if (v14)
  {
LABEL_47:
    CFRelease(v14);
  }

LABEL_48:
  v29 = *MEMORY[0x29EDCA608];
  return v22;
}

char *_find_error(unsigned int a1)
{
  if (a1 < 0x1B)
  {
    v1 = 0;
    v2 = &_generic_errors;
    goto LABEL_7;
  }

  if (a1 - 3501 < 7)
  {
    v1 = -3501;
    v2 = &_http_errors;
    goto LABEL_7;
  }

  if (a1 - 5000 < 0xB)
  {
    v1 = -5000;
    v2 = &_zip_errors;
LABEL_7:
    v3 = &v2[32 * v1 + 32 * a1];
    if (*(v3 + 2) == a1)
    {
      return v3;
    }

    else
    {
      return &_unknown_error;
    }
  }

  switch(a1)
  {
    case 0x63u:
      return &_generic_error;
    case 0xDACu:
      return &_http_internal_error;
    case 0xC7Au:
      return &_tss_declined_error;
  }

  if (a1 - 3100 >= 0x356)
  {
    return &_unknown_error;
  }

  return &_tss_error;
}

char *_AMAuthInstallErrorString(unsigned int a1, char *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  error = _find_error(a1);
  v5 = error;
  if (a2)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    *__str = 0u;
    v9 = 0u;
    if (*error)
    {
      snprintf(__str, 0x200uLL, ": %#x [%d, %d]", a1 - *(error + 6), a1 - *(error + 6), a1);
    }

    snprintf(a2, 0x100uLL, "%s%s", *(v5 + 2), __str);
  }

  else
  {
    a2 = *(error + 2);
  }

  v6 = *MEMORY[0x29EDCA608];
  return a2;
}

void _AMAuthInstallSetAPParamsFromHost(uint64_t a1, __CFDictionary *a2)
{
  if (*(a1 + 8) == MEMORY[0x29EDC96B0])
  {
    v4 = "sha1";
  }

  else
  {
    v4 = "sha2-384";
  }

  _CFDictionarySetString(a2, *MEMORY[0x29EDC9230], v4);
  if ((*(a1 + 17) & 0x10) == 0)
  {
    _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC9250], *(a1 + 56));
  }

  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC9208], *(a1 + 28));
  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC9210], *(a1 + 32));
  _CFDictionarySetUInt64(a2, *MEMORY[0x29EDC9218], *(a1 + 40));
  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC9240], *(a1 + 36));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC9238], *(a1 + 48));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC9248], *(a1 + 49));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC9220], *(a1 + 50));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC9228], *(a1 + 51));
  v5 = *MEMORY[0x29EDC9258];

  _CFDictionarySetBool(a2, v5, 1);
}

CFDataRef _AMAuthInstallCryptex1CopyUDID(const __CFNumber *a1, const __CFNumber *a2)
{
  v4 = 0;
  v5 = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &v4 + 4);
  CFNumberGetValue(a2, kCFNumberSInt64Type, &v5);
  HIDWORD(v4) = bswap32(HIDWORD(v4));
  v5 = bswap64(v5);
  return CFDataCreate(*MEMORY[0x29EDB8ED8], &v4, 16);
}

void _AMAuthInstallSetCryptex1ParamsFromHost(uint64_t a1, __CFDictionary *a2)
{
  valuePtr = *(a1 + 32);
  v4 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberLongLongType, (a1 + 40));
  v6 = _AMAuthInstallCryptex1CopyUDID(v4, v5);
  CFDictionarySetValue(a2, *MEMORY[0x29EDC9300], v6);
  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC92B0], *(a1 + 128));
  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC92F8], *(a1 + 132));
  _CFDictionarySetUInt32(a2, *MEMORY[0x29EDC92D8], *(a1 + 140));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC92E0], *(a1 + 48));
  _CFDictionarySetBool(a2, *MEMORY[0x29EDC9308], 1);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void _AMAuthInstallSetCryptex1ApParamsFromHost(uint64_t a1, CFMutableDictionaryRef theDict)
{
  CFDictionaryRemoveValue(theDict, *MEMORY[0x29EDC9308]);
  _CFDictionarySetUInt32(theDict, *MEMORY[0x29EDC9208], *(a1 + 28));
  _CFDictionarySetUInt32(theDict, *MEMORY[0x29EDC9210], *(a1 + 32));
  _CFDictionarySetUInt32(theDict, *MEMORY[0x29EDC9240], *(a1 + 36));
  v4 = *MEMORY[0x29EDC9238];
  v5 = *(a1 + 48);

  _CFDictionarySetBool(theDict, v4, v5);
}

void _authinstall_logger(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = os_log_create("com.apple.libcryptex", "authinstall");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = a2;
    _os_log_impl(&dword_2986F2000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void _cryptex_scrivener_dealloc(uint64_t a1)
{
  os_release(*(a1 + 88));
  v2 = *(a1 + 184);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 200);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 216);
  if (v6)
  {
    CFRelease(v6);
  }

  free(*(a1 + 160));
  *(a1 + 160) = 0;
  v7 = *(a1 + 224);
  if (v7)
  {
    os_release(v7);
  }

  free(*(a1 + 168));
  *(a1 + 168) = 0;

  object_proto_destroy(a1 + 56);
}

void *cryptex_scrivener_create(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = _cryptex_scrivener_alloc();
  v4[10] = a2;
  v4[11] = os_retain(a1);
  if (_dispatch_is_multithreaded())
  {
    for (i = strdup("https://gs.apple.com:443"); !i; i = strdup("https://gs.apple.com:443"))
    {
      __os_temporary_resource_shortage();
    }
  }

  else
  {
    i = strdup("https://gs.apple.com:443");
    if (!i)
    {
      cryptex_scrivener_create_cold_1(&v9, v10);
    }
  }

  v4[20] = i;
  v6 = a1[21];
  if (v6 && (*(v6 + 40) & 1) != 0)
  {
    cryptex_scrivener_set_url(v4, "https://diavlo.apple.com:443");
  }

  object_proto_init((v4 + 7), "com.apple.security.libcryptex.core", "scrivener");
  cryptex_init(v4, 0, _cryptex_scrivener_init, 0);
  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

void cryptex_scrivener_set_url(void *a1, const char *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = a1[20];
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v5 = strdup(a2);
      if (v5)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v5 = strdup(a2);
    if (!v5)
    {
      cryptex_scrivener_set_url_cold_1(a2, &v11, buf);
    }
  }

  a1[20] = v5;
  v6 = a1[7];
  v7 = *__error();
  v8 = a1[9];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    *buf = 136446722;
    if (v6)
    {
      v9 = v6;
    }

    v13 = v9;
    v14 = 2080;
    v15 = v4;
    v16 = 2080;
    v17 = a2;
    _os_log_impl(&dword_2986F2000, v8, OS_LOG_TYPE_DEBUG, "%{public}s: signing service url: %s -> %s", buf, 0x20u);
  }

  *__error() = v7;
  free(v4);
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t _cryptex_scrivener_init(uint64_t a1)
{
  v93 = *MEMORY[0x29EDCA608];
  v2 = AMAuthInstallCreate();
  *(a1 + 192) = v2;
  _CFCreateAssertImpl(v2);
  v3 = *(*(a1 + 88) + 168);
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  LOWORD(v84) = 6;
  if (v3)
  {
    v4 = *(v3 + 192);
    v5 = *(a1 + 56);
    v6 = *__error();
    v7 = *(a1 + 72);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v8)
      {
        v9 = "[anonymous]";
        if (v5)
        {
          v9 = v5;
        }

        *buf = 136446210;
        *&buf[4] = v9;
        _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_DEBUG, "%{public}s: using caller-provided chip instance", buf, 0xCu);
      }

      *__error() = v6;
      v10 = *(*(*(a1 + 88) + 168) + 192);
      goto LABEL_30;
    }

    if (v8)
    {
      v18 = "[anonymous]";
      if (v5)
      {
        v18 = v5;
      }

      *buf = 136446210;
      *&buf[4] = v18;
      _os_log_impl(&dword_2986F2000, v7, OS_LOG_TYPE_DEBUG, "%{public}s: using caller-provided chip environment", buf, 0xCu);
    }

    *__error() = v6;
    v17 = *(v3 + 1160);
  }

  else
  {
    v11 = *(a1 + 80);
    v12 = *(a1 + 56);
    v13 = *__error();
    v14 = *(a1 + 72);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if ((v11 & 8) != 0)
    {
      if (v15)
      {
        v19 = "[anonymous]";
        if (v12)
        {
          v19 = v12;
        }

        *buf = 136446210;
        *&buf[4] = v19;
        _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_DEBUG, "%{public}s: using generic cryptex1 environment", buf, 0xCu);
      }

      *__error() = v13;
      v17 = MEMORY[0x29EDC96D0];
    }

    else
    {
      if (v15)
      {
        v16 = "[anonymous]";
        if (v12)
        {
          v16 = v12;
        }

        *buf = 136446210;
        *&buf[4] = v16;
        _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_DEBUG, "%{public}s: using personalized chip environment", buf, 0xCu);
      }

      *__error() = v13;
      v17 = img4_chip_select_personalized_ap();
    }
  }

  WORD3(v84) = 0;
  *(&v84 + 2) = 0;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  LOWORD(v84) = 6;
  *(&v84 + 1) = v17;
  v10 = &v84;
  v20 = img4_chip_instantiate();
  if (v20)
  {
    nonce_domain = v20;
    v22 = *(a1 + 56);
    v23 = *__error();
    v24 = *(a1 + 72);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = "[anonymous]";
      if (v22)
      {
        v25 = v22;
      }

      *buf = 136446466;
      *&buf[4] = v25;
      *&buf[12] = 1024;
      *&buf[14] = nonce_domain;
      _os_log_impl(&dword_2986F2000, v24, OS_LOG_TYPE_ERROR, "%{public}s: failed to instantiate chip: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v23;
    goto LABEL_70;
  }

LABEL_30:
  v26 = *(a1 + 152);
  if (v26)
  {
LABEL_31:
    v27 = CFDataCreate(0, (v26 + 2), *(v26 + 52));
    _CFCreateAssertImpl(v27);
    MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
    v29 = *(a1 + 80);
    v30 = *(a1 + 56);
    v31 = *__error();
    v32 = *(a1 + 72);
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
    if ((v29 & 8) != 0)
    {
      if (v33)
      {
        v51 = "[anonymous]";
        v52 = *(v10 + 32);
        v53 = *(v10 + 33);
        if (v30)
        {
          v51 = v30;
        }

        v54 = *(v10 + 34);
        v55 = *(v10 + 35);
        *buf = 136447234;
        *&buf[4] = v51;
        *&buf[12] = 1024;
        *&buf[14] = v52;
        *&buf[18] = 1024;
        *&buf[20] = v53;
        *&buf[24] = 1024;
        *&buf[26] = v54;
        *&buf[30] = 1024;
        LODWORD(v74) = v55;
        _os_log_impl(&dword_2986F2000, v32, OS_LOG_TYPE_DEBUG, "%{public}s: using Cryptex1 identity:\n    FCHP = %#x\n    TYPE = %#x\n    STYP = %#x\n    CLAS = %#x", buf, 0x24u);
      }

      *__error() = v31;
      _AMAuthInstallSetCryptex1ParamsFromHost(v10, MutableForCFTypes);
      v56 = *(*(a1 + 88) + 216);
      if (v56 && (*(v56 + 65) & 1) == 0)
      {
        _AMAuthInstallSetCryptex1ApParamsFromHost(v10, MutableForCFTypes);
      }

      v44 = MEMORY[0x29EDC92C0];
    }

    else
    {
      if (v33)
      {
        v34 = "[anonymous]";
        v35 = *(v10 + 6);
        v36 = *(v10 + 7);
        if (v30)
        {
          v34 = v30;
        }

        v37 = *(v10 + 8);
        v38 = *(v10 + 9);
        v39 = *(v10 + 5);
        v40 = *(v10 + 48);
        v41 = *(v10 + 49);
        v42 = *(v10 + 50);
        v43 = *(v10 + 51);
        *buf = 136448514;
        *&buf[4] = v34;
        *&buf[12] = 1024;
        *&buf[14] = v35;
        *&buf[18] = 1024;
        *&buf[20] = v36;
        *&buf[24] = 1024;
        *&buf[26] = v37;
        *&buf[30] = 1024;
        LODWORD(v74) = v38;
        WORD2(v74) = 2048;
        *(&v74 + 6) = v39;
        HIWORD(v74) = 1024;
        *v75 = v40;
        *&v75[4] = 1024;
        *&v75[6] = v41;
        v76 = 1024;
        v77 = v42;
        v78 = 1024;
        v79 = v43;
        _os_log_impl(&dword_2986F2000, v32, OS_LOG_TYPE_DEBUG, "%{public}s: using device identity:\n    CEPO = %#x\n    BORD = %#x\n    CHIP = %#x\n    SDOM = %#x\n    ECID = %#llx\n    CPRO = %#x\n    CSEC = %#x\n    EPRO = %#x\n    ESEC = %#x", buf, 0x46u);
      }

      *__error() = v31;
      _AMAuthInstallSetAPParamsFromHost(v10, MutableForCFTypes);
      v44 = MEMORY[0x29EDC9200];
    }

    CFDictionarySetValue(MutableForCFTypes, *v44, v27);
    if ((*(a1 + 80) & 2) != 0)
    {
      CFDictionarySetValue(MutableForCFTypes, *MEMORY[0x29EDC91F8], *MEMORY[0x29EDB8F00]);
    }

    v57 = *(a1 + 56);
    v58 = *__error();
    v59 = *(a1 + 72);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = "[anonymous]";
      if (v57)
      {
        v60 = v57;
      }

      *buf = 136446466;
      *&buf[4] = v60;
      *&buf[12] = 2112;
      *&buf[14] = MutableForCFTypes;
      _os_log_impl(&dword_2986F2000, v59, OS_LOG_TYPE_DEBUG, "%{public}s: ap parameters = %@", buf, 0x16u);
    }

    *__error() = v58;
    *(a1 + 184) = CFDictionaryCreateCopy(0, MutableForCFTypes);
    if (v27)
    {
      CFRelease(v27);
    }

    if (MutableForCFTypes)
    {
      CFRelease(MutableForCFTypes);
    }

    goto LABEL_69;
  }

  v71 = 0;
  v72 = MEMORY[0x29EDC96E0];
  *v75 = 0;
  v74 = 0u;
  memset(buf, 0, sizeof(buf));
  nonce_domain = cryptex_core_get_nonce_domain(*(a1 + 88), &v72);
  if (nonce_domain || !v72)
  {
    v61 = *(a1 + 56);
    v46 = *__error();
    v62 = *(a1 + 72);
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v63 = "[anonymous]";
    if (v61)
    {
      v63 = v61;
    }

    *v80 = 136446466;
    v81 = v63;
    v82 = 1024;
    LODWORD(v83) = nonce_domain;
    v49 = "%{public}s: failed to get nonce domain from core: %{darwin.errno}d";
  }

  else
  {
    nonce_domain = cryptex_core_copy_nonce_domain_desc(*(a1 + 88), &v71);
    v45 = *(a1 + 56);
    v46 = *__error();
    v47 = *(a1 + 72);
    if (nonce_domain)
    {
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      v48 = "[anonymous]";
      if (v45)
      {
        v48 = v45;
      }

      *v80 = 136446466;
      v81 = v48;
      v82 = 1024;
      LODWORD(v83) = nonce_domain;
      v49 = "%{public}s: failed to get nonce domain description from core: %{darwin.errno}d";
      v50 = v47;
      goto LABEL_67;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v66 = "[anonymous]";
      if (v45)
      {
        v66 = v45;
      }

      *v80 = 136446466;
      v81 = v66;
      v82 = 2082;
      v83 = v71;
      _os_log_impl(&dword_2986F2000, v47, OS_LOG_TYPE_DEFAULT, "%{public}s: signing using nonce from %{public}s", v80, 0x16u);
    }

    *__error() = v46;
    v67 = img4_nonce_domain_copy_nonce();
    if (!v67)
    {
      v70 = *&buf[16];
      *(a1 + 96) = *buf;
      *(a1 + 112) = v70;
      *(a1 + 128) = v74;
      *(a1 + 144) = *v75;
      *(a1 + 152) = a1 + 96;
      free(v71);
      v26 = *(a1 + 152);
      goto LABEL_31;
    }

    nonce_domain = v67;
    v68 = *(a1 + 56);
    v46 = *__error();
    v62 = *(a1 + 72);
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v69 = "[anonymous]";
    if (v68)
    {
      v69 = v68;
    }

    *v80 = 136446466;
    v81 = v69;
    v82 = 1024;
    LODWORD(v83) = nonce_domain;
    v49 = "%{public}s: img4_nonce_domain_copy_nonce: %{darwin.errno}d";
  }

  v50 = v62;
LABEL_67:
  _os_log_impl(&dword_2986F2000, v50, OS_LOG_TYPE_ERROR, v49, v80, 0x12u);
LABEL_68:
  *__error() = v46;
  free(v71);
  if (!nonce_domain)
  {
LABEL_69:
    _init_authinstall_log();
    nonce_domain = 0;
  }

LABEL_70:
  result = cryptex_set_error(a1, nonce_domain);
  v65 = *MEMORY[0x29EDCA608];
  return result;
}

void cryptex_scrivener_sign(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = ctx_new(a1, 0x38uLL);
  v6[4] = 0;
  v6[5] = a2;
  v6[6] = a3;
  v7 = a1[7];
  v8 = *__error();
  v9 = a1[9];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[anonymous]";
    if (v7)
    {
      v10 = v7;
    }

    v12 = 136446210;
    v13 = v10;
    _os_log_impl(&dword_2986F2000, v9, OS_LOG_TYPE_DEBUG, "%{public}s: requesting signature", &v12, 0xCu);
  }

  *__error() = v8;
  cryptex_async_f(a1, v6, _cryptex_scrivener_sign_continue);
  v11 = *MEMORY[0x29EDCA608];
}

void _cryptex_scrivener_sign_continue(uint64_t *a1)
{
  v102 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v90 = 0;
  object = 0;
  memset(v89, 0, sizeof(v89));
  memset(v94, 0, sizeof(v94));
  error = cryptex_get_error(v2);
  if (error)
  {
    v4 = error;
    v5 = error;
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v6 = *(v2 + 56);
      if (!v6)
      {
        v6 = "[anonymous]";
      }

      *buf = 136446466;
      *v99 = v6;
      *&v99[8] = 1024;
      *&v99[10] = v4;
    }

    else
    {
      v13 = *(v2 + 56);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      *buf = 136446466;
      *v99 = v13;
      *&v99[8] = 1024;
      *&v99[10] = error;
    }

    v14 = _os_log_send_and_compose_impl();
    v15 = "com.apple.security.cryptex.posix";
    v16 = 561;
LABEL_13:
    v17 = v5;
LABEL_14:
    v18 = createError("_cryptex_scrivener_sign_continue", "scrivener.c", v16, v15, v17, 0, v14);
    v19 = v14;
LABEL_85:
    free(v19);
    goto LABEL_86;
  }

  if ((*(v2 + 80) & 8) != 0)
  {
    v20 = CFDataCreate(0, 0, 0);
    inited = _cryptex_scrivener_init_tss_common(v2);
    if (inited)
    {
      LODWORD(v9) = inited;
      MutableForCFTypes = 0;
      if (!v20)
      {
LABEL_18:
        if (!MutableForCFTypes)
        {
          goto LABEL_73;
        }

        v23 = MutableForCFTypes;
        goto LABEL_72;
      }

LABEL_17:
      CFRelease(v20);
      goto LABEL_18;
    }

    MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
    CFDictionarySetValue(MutableForCFTypes, *MEMORY[0x29EDC92E8], *MEMORY[0x29EDB8F00]);
    _CFDictionaryMergeDictionary(MutableForCFTypes, *(v2 + 184));
    v35 = *(*(v2 + 88) + 216);
    if (v35)
    {
      _CFDictionarySetUInt32(MutableForCFTypes, *MEMORY[0x29EDC92C8], *(v35 + 40));
      _CFDictionarySetUInt32(MutableForCFTypes, *MEMORY[0x29EDC92F0], *(*(*(v2 + 88) + 216) + 44));
      _CFDictionarySetString(MutableForCFTypes, *MEMORY[0x29EDC9310], *(*(*(v2 + 88) + 216) + 48));
      _CFDictionarySetString(MutableForCFTypes, *MEMORY[0x29EDC92D0], *(*(*(v2 + 88) + 216) + 56));
    }

    v36 = _cryptex_scrivener_init_tss_assets(v2, MutableForCFTypes);
    if (v36)
    {
      LODWORD(v9) = v36;
      v37 = *(v2 + 56);
      v38 = *__error();
      v39 = *(v2 + 72);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_129;
      }

      v40 = "[anonymous]";
      if (v37)
      {
        v40 = v37;
      }

      *buf = 136446466;
      *v99 = v40;
      *&v99[8] = 1024;
      *&v99[10] = v9;
      v41 = "%{public}s: Failed to attach asset measurement(s).: %{darwin.errno}d";
      goto LABEL_38;
    }

    bytes[0] = 0;
    if (cryptex_core_get_info_asset(*(v2 + 88)))
    {
      v42 = cryptex_core_parse_info_asset(*(v2 + 88), 0, 0, bytes);
      if (v42)
      {
        LODWORD(v9) = v42;
        v43 = *(v2 + 56);
        v44 = *__error();
        v45 = *(v2 + 72);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = "[anonymous]";
          if (v43)
          {
            v46 = v43;
          }

          *buf = 136446466;
          *v99 = v46;
          *&v99[8] = 1024;
          *&v99[10] = v9;
          _os_log_impl(&dword_2986F2000, v45, OS_LOG_TYPE_ERROR, "%{public}s: failed to parse cryptex info: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v44;
        v47 = *(v2 + 56);
        v38 = *__error();
        v39 = *(v2 + 72);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v48 = "[anonymous]";
          if (v47)
          {
            v48 = v47;
          }

          *buf = 136446466;
          *v99 = v48;
          *&v99[8] = 1024;
          *&v99[10] = v9;
          v41 = "%{public}s: Failed to stamp DataOnly.: %{darwin.errno}d";
LABEL_38:
          _os_log_impl(&dword_2986F2000, v39, OS_LOG_TYPE_ERROR, v41, buf, 0x12u);
        }

LABEL_129:
        *__error() = v38;
        if (!v20)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if (bytes[0] == 1)
      {
        _CFDictionarySetBool(MutableForCFTypes, @"Cryptex1,DataOnly", 1);
      }
    }

    CFDictionarySetValue(MutableForCFTypes, @"Cryptex1,UniqueTagList", v20);
    *(v2 + 200) = CFDictionaryCreateCopy(0, MutableForCFTypes);
    v84 = *(v2 + 56);
    v38 = *__error();
    v85 = *(v2 + 72);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = "[anonymous]";
      v87 = *(v2 + 200);
      if (v84)
      {
        v86 = v84;
      }

      *buf = 136446466;
      *v99 = v86;
      *&v99[8] = 2114;
      *&v99[10] = v87;
      _os_log_impl(&dword_2986F2000, v85, OS_LOG_TYPE_DEFAULT, "%{public}s: tss request = %{public}@", buf, 0x16u);
    }

    LODWORD(v9) = 0;
    goto LABEL_129;
  }

  theDict = 0;
  *bytes = 0;
  v96 = 0;
  v97 = 0;
  v7 = CFDataCreate(0, 0, 0);
  v8 = _cryptex_scrivener_init_tss_common(v2);
  if (v8)
  {
    LODWORD(v9) = v8;
    MutableCopy = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v24 = *(v2 + 56);
    v25 = *__error();
    v26 = *(v2 + 72);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = "[anonymous]";
      v28 = *(v2 + 184);
      if (v24)
      {
        v27 = v24;
      }

      *buf = 136446466;
      *v99 = v27;
      *&v99[8] = 2112;
      *&v99[10] = v28;
      _os_log_impl(&dword_2986F2000, v26, OS_LOG_TYPE_DEBUG, "%{public}s: setting ap parameters = %@", buf, 0x16u);
    }

    *__error() = v25;
    v30 = *(v2 + 184);
    v29 = *(v2 + 192);
    if (AMAuthInstallApSetParameters())
    {
      _cryptex_scrivener_sign_continue_cold_1(&v93, buf);
    }

    v12 = _CFDictionaryCreateMutableForCFTypes();
    LODWORD(v9) = _cryptex_scrivener_init_tss_assets(v2, v12);
    v31 = *(v2 + 56);
    v32 = *__error();
    v33 = *(v2 + 72);
    if (v9)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = "[anonymous]";
        if (v31)
        {
          v34 = v31;
        }

        *buf = 136446466;
        *v99 = v34;
        *&v99[8] = 1024;
        *&v99[10] = v9;
        _os_log_impl(&dword_2986F2000, v33, OS_LOG_TYPE_ERROR, "%{public}s: Failed to attach asset measurement(s).: %{darwin.errno}d", buf, 0x12u);
      }

      MutableCopy = 0;
      v11 = 0;
      *__error() = v32;
    }

    else
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v49 = "[anonymous]";
        if (v31)
        {
          v49 = v31;
        }

        *buf = 136446210;
        *v99 = v49;
        _os_log_impl(&dword_2986F2000, v33, OS_LOG_TYPE_DEBUG, "%{public}s: creating server request dictionary", buf, 0xCu);
      }

      *__error() = v32;
      v50 = *(v2 + 192);
      if (AMAuthInstallApImg4CreateServerRequestDictionary())
      {
        _cryptex_scrivener_sign_continue_cold_2(&v93, buf);
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
      v51 = MGGetStringAnswer();
      v9 = v51;
      if (!v51 || !_CFStringLocalizeCaseInsensitiveContains(v51, @"z41"))
      {
        CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDC9320], *MEMORY[0x29EDB8EF8]);
      }

      v11 = CFDataCreate(0, bytes, 20);
      _CFCreateAssertImpl(v11);
      CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDC92A8], v11);
      CFDictionarySetValue(MutableCopy, @"Ap,UniqueTagList", v7);
      *(v2 + 200) = CFDictionaryCreateCopy(0, MutableCopy);
      v52 = *(v2 + 56);
      v88 = *__error();
      v53 = *(v2 + 72);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = "[anonymous]";
        v55 = *(v2 + 200);
        if (v52)
        {
          v54 = v52;
        }

        *buf = 136446466;
        *v99 = v54;
        *&v99[8] = 2114;
        *&v99[10] = v55;
        _os_log_impl(&dword_2986F2000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s: tss request = %{public}@", buf, 0x16u);
      }

      *__error() = v88;
      if (v9)
      {
        CFRelease(v9);
        LODWORD(v9) = 0;
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v23 = theDict;
  if (theDict)
  {
LABEL_72:
    CFRelease(v23);
  }

LABEL_73:
  if (v9)
  {
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v56 = *(v2 + 56);
      if (!v56)
      {
        v56 = "[anonymous]";
      }
    }

    else
    {
      v56 = *(v2 + 56);
      if (!v56)
      {
        v56 = "[anonymous]";
      }
    }

    *buf = 136446466;
    *v99 = v56;
    *&v99[8] = 1024;
    *&v99[10] = v9;
    v61 = _os_log_send_and_compose_impl();
    v18 = createError("_cryptex_scrivener_sign_continue", "scrivener.c", 568, "com.apple.security.cryptex.posix", v9, 0, v61);
    v19 = v61;
    goto LABEL_85;
  }

  if ((*(v2 + 80) & 4) == 0)
  {
    v57 = *(v2 + 192);
    v58 = *(v2 + 200);
    PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse();
    if (PersonalizedResponse)
    {
      v60 = PersonalizedResponse;
      _AMAuthInstallPOSIXError(PersonalizedResponse);
      v5 = v60;
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      }

      v81 = _AMAuthInstallErrorString(v60, v94);
      *buf = 67109378;
      *v99 = v60;
      *&v99[4] = 2082;
      *&v99[6] = v81;
      v14 = _os_log_send_and_compose_impl();
      v15 = "com.apple.security.cryptex.tatsu";
      v16 = 580;
      goto LABEL_13;
    }

    if ((*(v2 + 80) & 8) != 0)
    {
      v63 = MEMORY[0x29EDC92B8];
    }

    else
    {
      v63 = MEMORY[0x29EDC9298];
    }

    v64 = *v63;
    v65 = *(v2 + 56);
    v66 = *__error();
    v67 = *(v2 + 72);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      v68 = "[anonymous]";
      v69 = *(v2 + 208);
      if (v65)
      {
        v68 = v65;
      }

      *buf = 136446466;
      *v99 = v68;
      *&v99[8] = 2112;
      *&v99[10] = v69;
      _os_log_impl(&dword_2986F2000, v67, OS_LOG_TYPE_DEBUG, "%{public}s: tss response: %@", buf, 0x16u);
    }

    *__error() = v66;
    Value = CFDictionaryGetValue(*(v2 + 208), v64);
    if (!Value || (v71 = Value, v72 = CFGetTypeID(Value), v72 != CFDataGetTypeID()))
    {
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
        v79 = *(v2 + 56);
        *buf = 136446722;
        if (v79)
        {
          v80 = v79;
        }

        else
        {
          v80 = "[anonymous]";
        }

        *v99 = v80;
        *&v99[8] = 2114;
        *&v99[10] = v64;
        v100 = 1024;
        v101 = 94;
      }

      else
      {
        v83 = "[anonymous]";
        if (*(v2 + 56))
        {
          v83 = *(v2 + 56);
        }

        *buf = 136446722;
        *v99 = v83;
        *&v99[8] = 2114;
        *&v99[10] = v64;
        v100 = 1024;
        v101 = 94;
      }

      v14 = _os_log_send_and_compose_impl();
      v15 = "com.apple.security.cryptex.posix";
      v16 = 597;
      v17 = 94;
      goto LABEL_14;
    }

    CFRetain(v71);
    BytePtr = CFDataGetBytePtr(v71);
    Length = CFDataGetLength(v71);
    buff_init_signed(v89, v71, _buff_destroy_CFData, BytePtr, Length);
  }

  if (cryptex_core_get_info_asset(*(v2 + 88)))
  {
    v75 = cryptex_metadata_read_from_cryptex(*(v2 + 88), &object);
    if (v75)
    {
      v76 = v75;
      v5 = v75;
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
        v77 = *(v2 + 56);
        if (!v77)
        {
          v77 = "[anonymous]";
        }

        *buf = 136446466;
        *v99 = v77;
        *&v99[8] = 1024;
        *&v99[10] = v76;
      }

      else
      {
        v82 = *(v2 + 56);
        if (!v82)
        {
          v82 = "[anonymous]";
        }

        *buf = 136446466;
        *v99 = v82;
        *&v99[8] = 1024;
        *&v99[10] = v75;
      }

      v14 = _os_log_send_and_compose_impl();
      v15 = "com.apple.security.cryptex.posix";
      v16 = 610;
      goto LABEL_13;
    }

    v78 = object;
  }

  else
  {
    v78 = 0;
  }

  v18 = 0;
  *(v2 + 224) = cryptex_signature_create(v89, *(v2 + 80) & 1, v78);
LABEL_86:
  buff_destroy(v89);
  a1[2] = v18;
  cryptex_target_async_f(v2, a1, _cryptex_scrivener_sign_callback);
  if (object)
  {
    os_release(object);
  }

  v62 = *MEMORY[0x29EDCA608];
}

__n128 cryptex_scrivener_set_nonce(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 112) = *(a2 + 16);
  *(a1 + 128) = v3;
  *(a1 + 96) = result;
  *(a1 + 144) = v4;
  *(a1 + 152) = a1 + 96;
  return result;
}

void cryptex_scrivener_read_signature(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = ctx_new(a1, 0x38uLL);
  v6[4] = 1;
  v6[5] = a2;
  v6[6] = a3;
  v7 = a1[7];
  v8 = *__error();
  v9 = a1[9];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[anonymous]";
    if (v7)
    {
      v10 = v7;
    }

    v12 = 136446210;
    v13 = v10;
    _os_log_impl(&dword_2986F2000, v9, OS_LOG_TYPE_DEBUG, "%{public}s: reading signature", &v12, 0xCu);
  }

  *__error() = v8;
  cryptex_async_f(a1, v6, _cryptex_scrivener_read_continue);
  v11 = *MEMORY[0x29EDCA608];
}

void _cryptex_scrivener_read_continue(uint64_t *a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[4];
  v31 = 0;
  object = 0;
  memset(v30, 0, sizeof(v30));
  error = cryptex_get_error(v2);
  if (error)
  {
    v5 = error;
    if (error != 216 || v3 != 1)
    {
      v7 = error;
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
        v8 = *(v2 + 56);
        if (!v8)
        {
          v8 = "[anonymous]";
        }

        *buf = 136446466;
        v34 = v8;
        v35 = 1024;
        v36 = v5;
      }

      else
      {
        v9 = *(v2 + 56);
        if (!v9)
        {
          v9 = "[anonymous]";
        }

        *buf = 136446466;
        v34 = v9;
        v35 = 1024;
        v36 = error;
      }

      v10 = _os_log_send_and_compose_impl();
      v11 = 653;
LABEL_36:
      v27 = createError("_cryptex_scrivener_read_continue", "scrivener.c", v11, "com.apple.security.cryptex.posix", v7, 0, v10);
      free(v10);
      goto LABEL_37;
    }

    v12 = *(v2 + 56);
    v13 = *__error();
    v14 = *(v2 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = "[anonymous]";
      if (v12)
      {
        v15 = v12;
      }

      *buf = 136446210;
      v34 = v15;
      _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_DEBUG, "%{public}s: ignoring ap environment", buf, 0xCu);
    }

    *__error() = v13;
  }

  asset = cryptex_core_get_asset(*(v2 + 88), &_cryptex_asset_type_im4m);
  if (!asset)
  {
    _cryptex_scrivener_read_continue_cold_1();
  }

  v17 = asset;
  file = _read_file(*(asset + 16), v30);
  if (file)
  {
    v19 = file;
    v7 = file;
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v20 = *(v2 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      *buf = 136446466;
      v34 = v20;
      v35 = 1024;
      v36 = v19;
    }

    else
    {
      v28 = *(v2 + 56);
      if (!v28)
      {
        v28 = "[anonymous]";
      }

      *buf = 136446466;
      v34 = v28;
      v35 = 1024;
      v36 = file;
    }

    v10 = _os_log_send_and_compose_impl();
    v11 = 664;
    goto LABEL_36;
  }

  v21 = cryptex_metadata_read_from_file_xattrs(*(v17 + 16), &object);
  if (v21)
  {
    v22 = v21;
    v23 = *(v2 + 56);
    v24 = *__error();
    v25 = *(v2 + 72);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = "[anonymous]";
      if (v23)
      {
        v26 = v23;
      }

      *buf = 136446466;
      v34 = v26;
      v35 = 1024;
      v36 = v22;
      _os_log_impl(&dword_2986F2000, v25, OS_LOG_TYPE_ERROR, "%{public}s: Failed to load metadata for Image4 manifest.: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v24;
  }

  v27 = 0;
  *(v2 + 224) = cryptex_signature_create(v30, *(v2 + 80) & 1, object);
LABEL_37:
  buff_destroy(v30);
  a1[2] = v27;
  cryptex_target_async_f(v2, a1, _cryptex_scrivener_sign_callback);
  if (object)
  {
    os_release(object);
  }

  v29 = *MEMORY[0x29EDCA608];
}

void cryptex_scrivener_set_socks_proxy(uint64_t a1, const char *a2, int a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 168);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v7 = strdup(a2);
      if (v7)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v7 = strdup(a2);
    if (!v7)
    {
      cryptex_scrivener_set_url_cold_1(a2, &v14, buf);
    }
  }

  *(a1 + 168) = v7;
  v8 = *(a1 + 176);
  *(a1 + 176) = a3;
  v9 = *(a1 + 56);
  v10 = *__error();
  v11 = *(a1 + 72);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = "[anonymous]";
    *buf = 136447234;
    if (v9)
    {
      v12 = v9;
    }

    v16 = v12;
    v17 = 2080;
    v18 = v6;
    v19 = 1024;
    v20 = v8;
    v21 = 2080;
    v22 = a2;
    v23 = 1024;
    v24 = a3;
    _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: socks proxy: %s:%d -> %s:%d", buf, 0x2Cu);
  }

  *__error() = v10;
  free(v6);
  v13 = *MEMORY[0x29EDCA608];
}

int *cryptex_scrivener_set_auth_token(void *a1, UInt8 *bytes, CFIndex length)
{
  v21 = *MEMORY[0x29EDCA608];
  if (bytes && length)
  {
    v6 = a1[27];
    if (v6)
    {
      CFRelease(v6);
    }

    a1[27] = CFDataCreate(0, bytes, length);
    v7 = a1[7];
    v8 = *__error();
    v9 = a1[9];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = "[anonymous]";
      if (v7)
      {
        v10 = v7;
      }

      v19 = 136446210;
      v20 = v10;
      v11 = "%{public}s: set auth token";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_13:
      _os_log_impl(&dword_2986F2000, v12, v13, v11, &v19, 0xCu);
    }
  }

  else
  {
    v14 = a1[7];
    v8 = *__error();
    v15 = a1[9];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = "[anonymous]";
      if (v14)
      {
        v16 = v14;
      }

      v19 = 136446210;
      v20 = v16;
      v11 = "%{public}s: empty auth token";
      v12 = v15;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }
  }

  result = __error();
  *result = v8;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void _cryptex_scrivener_sign_callback(void **a1)
{
  v2 = a1[2];
  (a1[6])(*a1, *(*a1 + 28), a1[2], a1[5]);
  ctx_destroy(a1);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t _cryptex_scrivener_init_tss_common(uint64_t a1)
{
  v56 = *MEMORY[0x29EDCA608];
  memset(v51, 0, sizeof(v51));
  v2 = *(a1 + 56);
  v3 = *__error();
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    v6 = *(a1 + 160);
    if (v2)
    {
      v5 = v2;
    }

    *buf = 136446466;
    v53 = v5;
    v54 = 2080;
    *v55 = v6;
    _os_log_impl(&dword_2986F2000, v4, OS_LOG_TYPE_DEBUG, "%{public}s: setting url: %s", buf, 0x16u);
  }

  *__error() = v3;
  v7 = _CFStringCreateFromUTF8String(*(a1 + 160));
  v8 = CFURLCreateWithString(0, v7, 0);
  _CFCreateAssertImpl(v8);
  v9 = *(a1 + 192);
  if (AMAuthInstallSetSigningServerURL())
  {
    _cryptex_scrivener_init_tss_common_cold_1(&v50, buf);
  }

  if (!*(a1 + 168) || !*(a1 + 176))
  {
    goto LABEL_22;
  }

  v10 = *(a1 + 56);
  v11 = *__error();
  v12 = *(a1 + 72);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = "[anonymous]";
    if (v10)
    {
      v13 = v10;
    }

    *buf = 136446210;
    v53 = v13;
    _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_DEBUG, "%{public}s: using socks proxy", buf, 0xCu);
  }

  *__error() = v11;
  v14 = *MEMORY[0x29EDB8ED8];
  v15 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, (a1 + 176));
  _CFCreateAssertImpl(v15);
  v16 = CFStringCreateWithCString(v14, *(a1 + 168), 0x8000100u);
  _CFCreateAssertImpl(v16);
  v17 = *(a1 + 192);
  v18 = AMAuthInstallSetSOCKSProxyInformation();
  if (v18)
  {
    v19 = *(a1 + 56);
    v20 = *__error();
    v21 = *(a1 + 72);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      v22 = _AMAuthInstallErrorString(v18, v51);
      *buf = 136446722;
      v53 = v19;
      v54 = 1024;
      *v55 = v18;
      *&v55[4] = 2082;
      *&v55[6] = v22;
      _os_log_impl(&dword_2986F2000, v21, OS_LOG_TYPE_ERROR, "%{public}s: AMAuthInstallSetSOCKSProxyInformation: [%d] %{public}s", buf, 0x1Cu);
    }

    *__error() = v20;
    v23 = _AMAuthInstallPOSIXError(v18);
    if (v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = 0xFFFFFFFFLL;
    if (v16)
    {
LABEL_18:
      CFRelease(v16);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v18)
  {
LABEL_28:
    if (!v8)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_22:
  if ((*(a1 + 80) & 1) == 0)
  {
LABEL_23:
    v24 = *(a1 + 56);
    v25 = *__error();
    v26 = *(a1 + 72);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = "[anonymous]";
      v28 = *(a1 + 192);
      if (v24)
      {
        v27 = v24;
      }

      *buf = 136446466;
      v53 = v27;
      v54 = 2112;
      *v55 = v28;
      _os_log_impl(&dword_2986F2000, v26, OS_LOG_TYPE_DEBUG, "%{public}s: auth install = %@", buf, 0x16u);
    }

    v23 = 0;
    *__error() = v25;
    goto LABEL_28;
  }

  v31 = *(a1 + 56);
  v32 = *__error();
  v33 = *(a1 + 72);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = "[anonymous]";
    if (v31)
    {
      v34 = v31;
    }

    *buf = 136446210;
    v53 = v34;
    _os_log_impl(&dword_2986F2000, v33, OS_LOG_TYPE_DEBUG, "%{public}s: using sso", buf, 0xCu);
  }

  *__error() = v32;
  v35 = AMAuthInstallSsoInitialize();
  if (v35)
  {
    v36 = v35;
    v37 = *(a1 + 56);
    v38 = *__error();
    v39 = *(a1 + 72);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    if (!v37)
    {
      v37 = "[anonymous]";
    }

    v40 = _AMAuthInstallErrorString(v36, v51);
    *buf = 136446722;
    v53 = v37;
    v54 = 1024;
    *v55 = v36;
    *&v55[4] = 2082;
    *&v55[6] = v40;
    v41 = "%{public}s: AMAuthInstallSsoInitialize: [%d] %{public}s";
    goto LABEL_49;
  }

  v42 = *(a1 + 192);
  v43 = AMAuthInstallSsoEnable();
  if (v43)
  {
    v36 = v43;
    v44 = *(a1 + 56);
    v38 = *__error();
    v39 = *(a1 + 72);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    if (!v44)
    {
      v44 = "[anonymous]";
    }

    v45 = _AMAuthInstallErrorString(v36, v51);
    *buf = 136446722;
    v53 = v44;
    v54 = 1024;
    *v55 = v36;
    *&v55[4] = 2082;
    *&v55[6] = v45;
    v41 = "%{public}s: AMAuthInstallSsoEnable: [%d] %{public}s";
    goto LABEL_49;
  }

  if (!*(a1 + 216))
  {
    goto LABEL_23;
  }

  v46 = *(a1 + 192);
  v47 = AMAuthInstallSsoSetToken();
  if (!v47)
  {
    goto LABEL_23;
  }

  v36 = v47;
  v48 = *(a1 + 56);
  v38 = *__error();
  v39 = *(a1 + 72);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    if (!v48)
    {
      v48 = "[anonymous]";
    }

    v49 = _AMAuthInstallErrorString(v36, v51);
    *buf = 136446722;
    v53 = v48;
    v54 = 1024;
    *v55 = v36;
    *&v55[4] = 2082;
    *&v55[6] = v49;
    v41 = "%{public}s: AMAuthInstallSsoSetToken: [%d] %{public}s";
LABEL_49:
    _os_log_impl(&dword_2986F2000, v39, OS_LOG_TYPE_ERROR, v41, buf, 0x1Cu);
  }

LABEL_50:
  *__error() = v38;
  v23 = _AMAuthInstallPOSIXError(v36);
  if (v8)
  {
LABEL_29:
    CFRelease(v8);
  }

LABEL_30:
  if (v7)
  {
    CFRelease(v7);
  }

  v29 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t _cryptex_scrivener_init_tss_assets(void *a1, uint64_t a2)
{
  v4 = &cryptex_asset_types;
  v40 = *MEMORY[0x29EDCA608];
  v5 = 64;
  while (1)
  {
    v6 = a1[11];
    v7 = *(v6 + v5);
    if (!v7)
    {
      v16 = a1[7];
      v10 = *__error();
      v17 = a1[9];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = "[anonymous]";
        if (v16)
        {
          v18 = v16;
        }

        v19 = *(*v4 + 5);
        *buf = 136446466;
        v35 = v18;
        v36 = 2080;
        v37 = v19;
        v14 = v17;
        v15 = "%{public}s: no asset of type: %s";
LABEL_14:
        _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0x16u);
      }

LABEL_15:
      *__error() = v10;
      goto LABEL_21;
    }

    v8 = *(v7 + 8);
    if ((*v8 & 0x14) == 0)
    {
      break;
    }

LABEL_21:
    ++v4;
    v5 += 8;
    if (v5 == 160)
    {
      v26 = 0;
      goto LABEL_23;
    }
  }

  if (v8 == &_cryptex_asset_type_gdmg && cryptex_core_image_authapfs_enabled(v6))
  {
    v9 = a1[7];
    v10 = *__error();
    v11 = a1[9];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = "[anonymous]";
      if (v9)
      {
        v12 = v9;
      }

      v13 = *(*(v7 + 8) + 40);
      *buf = 136446466;
      v35 = v12;
      v36 = 2080;
      v37 = v13;
      v14 = v11;
      v15 = "%{public}s: skip stamping asset: %s";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v20 = a1[7];
  v21 = *__error();
  v22 = a1[9];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = "[anonymous]";
    if (v20)
    {
      v23 = v20;
    }

    v24 = *(*(v7 + 8) + 40);
    *buf = 136446466;
    v35 = v23;
    v36 = 2080;
    v37 = v24;
    _os_log_impl(&dword_2986F2000, v22, OS_LOG_TYPE_DEBUG, "%{public}s: stamping asset: %s", buf, 0x16u);
  }

  *__error() = v21;
  v25 = (*(*(v7 + 8) + 8))(v7, a1[24], a2, 0, a1 + 7);
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = v25;
  v29 = a1[7];
  v30 = *__error();
  v31 = a1[9];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = "[anonymous]";
    if (v29)
    {
      v32 = v29;
    }

    v33 = *(*(v7 + 8) + 40);
    *buf = 136446722;
    v35 = v32;
    v36 = 2082;
    v37 = v33;
    v38 = 1024;
    v39 = v26;
    _os_log_impl(&dword_2986F2000, v31, OS_LOG_TYPE_ERROR, "%{public}s: failed to stamp asset: %{public}s: %{darwin.errno}d", buf, 0x1Cu);
  }

  *__error() = v30;
LABEL_23:
  v27 = *MEMORY[0x29EDCA608];
  return v26;
}

double OUTLINED_FUNCTION_2_3(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t _CFCreateAssertImpl(uint64_t result)
{
  v4 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    _CFCreateAssertImpl_cold_1(&v2, v3);
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t _CFNumberGetUInt32(const __CFNumber *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  valuePtr = -1;
  if (!CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr))
  {
    _CFNumberGetUInt32_cold_2();
  }

  if (HIDWORD(valuePtr))
  {
    _CFNumberGetUInt32_cold_1(&v3, v5);
  }

  v1 = *MEMORY[0x29EDCA608];
  return valuePtr;
}

BOOL _CFStringLocalizeCaseInsensitiveContains(const __CFString *a1, const __CFString *a2)
{
  v5.length = CFStringGetLength(a1);
  v5.location = 0;
  return CFStringFindWithOptions(a1, a2, v5, 0x21uLL, 0) != 0;
}

uint64_t _CFURLCreateFromFileDescriptor(uint64_t a1, CFURLRef *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  bzero(cStr, 0x400uLL);
  v3 = realpath_np();
  if (!v3)
  {
    v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    _CFCreateAssertImpl(v4);
    v5 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
    _CFCreateAssertImpl(v5);
    *a2 = v5;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

CFMutableDictionaryRef _CFDictionaryCreateMutableForCFTypes()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  _CFCreateAssertImpl(Mutable);
  return Mutable;
}

void _CFDictionarySetBool(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(a1, a2, *v3);
}

void _CFDictionarySetUInt32(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  _CFCreateAssertImpl(v5);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

void _CFDictionarySetUInt64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  _CFCreateAssertImpl(v5);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

void _CFDictionarySetString(__CFDictionary *a1, const void *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  _CFCreateAssertImpl(v5);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

CFErrorRef createError(const char *a1, const char *a2, int a3, const char *a4, CFIndex a5, const void *a6, char *cStr)
{
  valuePtr = a3;
  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v13 = CFStringCreateWithCString(0, a1, 0x8000100u);
  v14 = CFStringCreateWithCString(0, a4, 0x8000100u);
  v15 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  _CFCreateAssertImpl(Mutable);
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F58], v12);
  if (os_variant_allows_internal_security_policies())
  {
    CFDictionarySetValue(Mutable, @"FunctionName", v13);
    CFDictionarySetValue(Mutable, @"FileName", v15);
    CFDictionarySetValue(Mutable, @"LineNumber", v16);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F68], a6);
  }

  v18 = CFErrorCreate(0, v14, a5, Mutable);
  CFRelease(Mutable);
  CFRelease(v12);
  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);
  CFRelease(v16);
  return v18;
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return _os_log_send_and_compose_impl();
}

double hash_init(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

size_t hash_node_init_cstr(uint64_t a1, char *__s)
{
  result = strlen(__s);
  *a1 |= 2u;
  *(a1 + 16) = __s;
  *(a1 + 24) = result;
  return result;
}

uint64_t hash_insert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = os_simple_hash();
  if ((*a2 & 2) == 0)
  {
    hash_insert_cold_3();
  }

  v7 = v6;
  result = hash_lookup(a1, *(a2 + 16), *(a2 + 24));
  if (result)
  {
    hash_insert_cold_1();
  }

  *(a2 + 8) = *(a1 + 8 * (v7 % 0x25));
  *(a1 + 8 * (v7 % 0x25)) = a2;
  if (*a2)
  {
    hash_insert_cold_2();
  }

  *a2 |= 1u;
  ++*(a1 + 296);
  return result;
}

uint64_t hash_lookup(uint64_t a1, const void *a2, size_t a3)
{
  for (i = *(a1 + 8 * (os_simple_hash() % 0x25uLL)); i; i = *(i + 8))
  {
    if (*(i + 24) == a3 && !memcmp(*(i + 16), a2, a3))
    {
      break;
    }
  }

  return i;
}

uint64_t hash_lookup_cstr(uint64_t a1, char *__s)
{
  v4 = strlen(__s);

  return hash_lookup(a1, __s, v4);
}

os_log_t object_proto_init(uint64_t a1, int a2, char *category)
{
  result = os_log_create("com.apple.libcryptex", category);
  *(a1 + 16) = result;
  return result;
}

void object_proto_destroy(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  os_release(v2);
}

uint64_t _sprintdgst(uint64_t __str, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  v11 = *MEMORY[0x29EDCA608];
  if (a3 >= 0x31)
  {
    _sprintdgst_cold_1(&v9, v10);
  }

  v4 = __str;
  *(__str + 96) = 0;
  *(__str + 64) = 0u;
  *(__str + 80) = 0u;
  *(__str + 32) = 0u;
  *(__str + 48) = 0u;
  *__str = 0u;
  *(__str + 16) = 0u;
  if (a3)
  {
    v6 = 97;
    do
    {
      v7 = *a2++;
      __str = snprintf(v4, v6, "%02x", v7);
      v4 += 2;
      v6 -= 2;
      --v3;
    }

    while (v3);
  }

  v8 = *MEMORY[0x29EDCA608];
  return __str;
}

unint64_t _strtou32(const char *a1, char **a2, int a3)
{
  __endptr = 0;
  *__error() = 0;
  result = strtoul(a1, &__endptr, a3);
  if (__endptr && *__endptr)
  {
    result = 0;
    if (a2)
    {
      *a2 = __endptr;
    }
  }

  else if (HIDWORD(result))
  {
    *__error() = 34;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _read_file(int a1, void *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  memset(&v21, 0, sizeof(v21));
  if (fstat(a1, &v21))
  {
    v4 = *__error();
    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v23) = v4;
      _os_log_impl(&dword_2986F2000, v6, OS_LOG_TYPE_ERROR, "stat: %{darwin.errno}d", buf, 8u);
    }

    st_size = 0;
LABEL_7:
    v8 = 0;
    *__error() = v5;
LABEL_8:
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  st_size = v21.st_size;
  if (v21.st_size < 0)
  {
    _read_file_cold_6();
  }

  v11 = malloc_type_malloc(v21.st_size, 0xB48626A3uLL);
  if (!v11)
  {
    v4 = *__error();
    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v16 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v23) = v4;
      _os_log_impl(&dword_2986F2000, v16, OS_LOG_TYPE_ERROR, "malloc: %{darwin.errno}d", buf, 8u);
    }

    goto LABEL_7;
  }

  v8 = v11;
  while (1)
  {
    v12 = pread(a1, v8, st_size, 0);
    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

    v13 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v14 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      *buf = 67109120;
      LODWORD(v23) = v15;
      _os_log_impl(&dword_2986F2000, v14, OS_LOG_TYPE_ERROR, "pread: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v13;
    v4 = *__error();
    if (v4 != 4)
    {
      goto LABEL_8;
    }
  }

  v17 = v12;
  v18 = *__error();
  if (v17 == st_size)
  {
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v19 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v23 = st_size;
      _os_log_impl(&dword_2986F2000, v19, OS_LOG_TYPE_DEBUG, "read %ld bytes", buf, 0xCu);
    }

    *__error() = v18;
LABEL_9:
    buff_init(a2, 0, _buff_destructor_free, v8, st_size);
    v4 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (log_util_onceToken != -1)
  {
    _read_file_cold_1();
  }

  v20 = log_util_log;
  if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v23 = v17;
    v24 = 2048;
    v25 = st_size;
    _os_log_impl(&dword_2986F2000, v20, OS_LOG_TYPE_ERROR, "truncated read: actual = %ld, expected = %lu", buf, 0x16u);
  }

  *__error() = v18;
  v4 = 5;
LABEL_10:
  free(v8);
  v9 = *MEMORY[0x29EDCA608];
  return v4;
}