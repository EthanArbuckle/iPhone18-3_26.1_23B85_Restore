uint64_t se_derivation_request_serialization_len()
{
  ccder_sizeof();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t OUTLINED_FUNCTION_3_4(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  v3 = v1 + *(v0 + 1) - v0;

  return ccder_blob_encode_body();
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return ccder_blob_encode_tl();
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1, ...)
{
  va_start(va2, a1);
  va_start(va1, a1);
  va_start(va, a1);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v3 = 0;
  v5 = 0;

  return encode_list_dict(va2, va, va1);
}

uint64_t OUTLINED_FUNCTION_20_0(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return ccder_sizeof();
}

void *OUTLINED_FUNCTION_26()
{

  return calloc(0x18uLL, 1uLL);
}

void *OUTLINED_FUNCTION_27(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return ccder_blob_decode_range();
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return der_dict_iterate();
}

uint64_t platform_get_measurement(uint64_t a1, int a2, void *a3, size_t *a4)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 36, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  if (!lib_platform_callbacks)
  {
    return 4294967284;
  }

  if (a1 >= 7)
  {
    abort();
  }

  v8 = &pm_id_table + 72 * a1;
  if ((v8[4] & 1) == 0)
  {
    result = (lib_platform_callbacks)(a1, v8 + 5, v8 + 64);
    if (result)
    {
      return result;
    }

    v8[4] = 1;
  }

  if (*a4 < *(v8 + 8))
  {
    return 4294967285;
  }

  memcpy(a3, v8 + 5, *a4);
  v10 = *(v8 + 8);
  *a4 = v10;
  if (a2)
  {
    byte_swap_val(a3, v10);
  }

  return 0;
}

uint64_t platform_rng()
{
  REQUIRE_func(&lib_platform_callbacks != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(off_28708D9B0[0] != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = off_28708D9B0[0];

  return v0();
}

uint64_t platform_read_random(uint64_t a1, unsigned int a2)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(off_28708D9B8 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = off_28708D9B8;

  return v4(a1, a2);
}

uint64_t platform_pka_get_pub_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 78, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9C0 != 0, 79, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v16 = unk_28708D9C0;

  return v16(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t platform_pka_ecdh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 86, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9C8 != 0, 87, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_28708D9C8;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t platform_pka_sign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 94, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9D0 != 0, 95, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_28708D9D0;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t platform_pka_sika_attest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 106, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9D8 != 0, 107, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v17 = unk_28708D9D8;

  return v17(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t platform_pka_shared_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 115, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9E0 != 0, 116, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_28708D9E0;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t platform_ref_key_hw_crypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 123, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9E8 != 0, 124, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v10 = unk_28708D9E8;

  return v10(a1, a2, a3, a4, a5);
}

uint64_t platform_ref_key_hw_crypt_clear_cache()
{
  REQUIRE_func(&lib_platform_callbacks != 0, 131, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9F0 != 0, 132, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = unk_28708D9F0;

  return v0();
}

uint64_t platform_get_device_id(uint64_t a1, uint64_t a2)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 139, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9F8 != 0, 140, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = unk_28708D9F8;

  return v4(a1, a2);
}

uint64_t platform_get_aon_security(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 147, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA00 != 0, 148, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA00;

  return v2(a1);
}

uint64_t platform_get_att_sep_chip_rev(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 155, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA08 != 0, 156, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA08;

  return v2(a1);
}

uint64_t platform_get_chip_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 163, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA10 != 0, 164, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA10;

  return v2(a1);
}

uint64_t platform_get_ecid(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA18 != 0, 172, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA18;

  return v2(a1);
}

uint64_t platform_get_board_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 179, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA20 != 0, 180, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA20;

  return v2(a1);
}

uint64_t platform_get_fuse_bits(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 187, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA28 != 0, 188, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA28;

  return v2(a1);
}

uint64_t platform_get_att_board_and_chip_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 195, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA30 != 0, 196, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA30;

  return v2(a1);
}

char *aks_copy_packed_data(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *aks_pack_data(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = aks_copy_packed_data(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

BOOL rfc3394_wrapped_size_legacy(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}

BOOL rfc3394_wrapped_size(unint64_t a1, unint64_t *a2)
{
  v2 = (((a1 >= 0xFFFFFFFFFFFFFFF1) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFF1);
  if (!v2)
  {
    *a2 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  return v2 == 0;
}

void aks_fv_new_vek()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v0 - 96) = *MEMORY[0x277D85DE8];
  bzero(v71, 0x1000uLL);
  v69[0] = v71;
  v69[1] = &v72;
  v69[2] = 4096;
  if (v7 && v5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v16 = aks_client_connection;
      OUTLINED_FUNCTION_8_0(aks_client_connection, v9, v10, v11, v12, v13, v14, v15, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68, v69[0]);
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(v69))
        {
          if (der_utils_encode_fv_data(v69))
          {
            if (der_utils_encode_fv_params(v69))
            {
              OUTLINED_FUNCTION_2_3();
              if (ccder_blob_encode_tl())
              {
                OUTLINED_FUNCTION_11();
                if (!OUTLINED_FUNCTION_1_4(v16, 0x4Au, v70, 2u, v17, v18, v19, v20, v71, v21))
                {
                  OUTLINED_FUNCTION_2_3();
                  if (ccder_blob_decode_range())
                  {
                    OUTLINED_FUNCTION_15();
                    v25 = der_utils_decode_fv_data(v22, v23, v24);
                    if (v25)
                    {
                      if (v3)
                      {
                        v33 = OUTLINED_FUNCTION_9_0(v25, v26, v27, v28, v29, v30, v31, v32, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v71);
                        der_utils_decode_fv_key(v33, v34, v35);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v38 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v39, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v40, v45, v47, v49, v51, v53, v55, ":", 180, "", "");
    }
  }

  OUTLINED_FUNCTION_3_1(v71);
  v36 = *(v0 - 96);
  v37 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_3();
}

unint64_t _aks_save_file(char *a1, const void *a2, size_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = open_dprotected_np(a1, 1793, 4, 0, 384);
    if (v6 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "could not create file: %s (%s)\n", v3, v11);
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = write(v6, a2, a3);
      v3 = v8 != -1;
      if (v8 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "failed to write restore bag to disk %s\n", v13);
      }

      close(v7);
    }
  }

  return v3;
}

BOOL _aks_load_file(_BOOL8 a1, void *a2, off_t *a3)
{
  bzero(&v14, 0x90uLL);
  if (a1)
  {
    if (!stat(a1, &v14))
    {
      st_size = v14.st_size;
      v7 = open(a1, 0);
      if (v7 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "could not open file: %s (%s)\n", a1, v13);
      }

      else
      {
        v8 = v7;
        v9 = calloc(st_size, 1uLL);
        a1 = v9 != 0;
        if (!v9)
        {
LABEL_7:
          close(v8);
          return a1;
        }

        v10 = v9;
        if (read(v8, v9, st_size) == st_size)
        {
          *a2 = v10;
          *a3 = st_size;
          goto LABEL_7;
        }

        close(v8);
        free(v10);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t _get_path_class(const char *a1)
{
  v1 = open_dprotected_np(a1, 0, 0, 1);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = fcntl(v1, 63);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3;
}

uint64_t __aks_dump_path_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || result == v5)
  {
    return printf("file: %s %i\n", *(a2 + 48), result);
  }

  return result;
}

uint64_t aks_fs_status(const char *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  bzero(v5, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v5))
  {
    snprintf(__str, 0x400uLL, "%s/mobile", v5);
    aks_fs_status_with_map(v5, &sharedPathMap, 36);
    if ((aks_fs_supports_enhanced_apfs() & 1) == 0)
    {
      aks_fs_status_with_map(__str, &userPathMap, 72);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t aks_user_fs_status(const char *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  bzero(v4, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v4))
  {
    aks_fs_status_with_map(v4, &userPathMap, 72);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

void aks_fv_new_kek()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_17(*MEMORY[0x277D85DE8]);
  bzero(v70, 0x1000uLL);
  v66 = v70;
  v67 = &v71;
  v68 = v0;
  if (v6 && v4)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v17 = aks_client_connection;
      OUTLINED_FUNCTION_8_0(aks_client_connection, v10, v11, v12, v13, v14, v15, v16, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v65, v66);
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v66))
        {
          if (der_utils_encode_fv_params(&v66))
          {
            OUTLINED_FUNCTION_2_3();
            if (ccder_blob_encode_tl())
            {
              v69[0] = v8;
              v69[1] = v67;
              v69[2] = &v71 - v67;
              if (!OUTLINED_FUNCTION_1_4(v17, 0x4Cu, v69, 3u, v18, v19, v20, v21, v70, &v68))
              {
                OUTLINED_FUNCTION_2_3();
                v22 = ccder_blob_decode_range();
                if (v22)
                {
                  v30 = OUTLINED_FUNCTION_9_0(v22, v23, v24, v25, v26, v27, v28, v29, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v70);
                  der_utils_decode_fv_data(v30, v31, v32);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v35 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v36, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v37, v42, v44, v46, v48, v50, v52, ":", 509, "", "");
    }
  }

  OUTLINED_FUNCTION_3_1(v70);
  v33 = *(v1 - 88);
  v34 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_3();
}

void aks_fv_new_sibling_vek()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_17(*MEMORY[0x277D85DE8]);
  bzero(v32, 0x1000uLL);
  v28 = v32;
  v29 = &v33;
  v30 = v0;
  if (v7 && v5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v9 = aks_client_connection;
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v28))
        {
          if (der_utils_encode_fv_params(&v28))
          {
            OUTLINED_FUNCTION_2_3();
            if (ccder_blob_encode_tl())
            {
              v31[0] = v29;
              v31[1] = &v33 - v29;
              if (!OUTLINED_FUNCTION_1_4(v9, 0x63u, v31, 2u, v10, v11, v12, v13, v32, &v30))
              {
                *&v27 = v32;
                *(&v27 + 1) = &v32[v30];
                OUTLINED_FUNCTION_2_3();
                if (ccder_blob_decode_range())
                {
                  OUTLINED_FUNCTION_15();
                  if (der_utils_decode_fv_data(v14, v15, v16))
                  {
                    if (v3)
                    {
                      der_utils_decode_fv_key(&v27, 0, v3);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v18 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 544, "", "");
    }
  }

  OUTLINED_FUNCTION_3_1(v32);
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

void aks_fv_rewrap_kek()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  *(v0 - 96) = *MEMORY[0x277D85DE8];
  bzero(v71, 0x1000uLL);
  v69[0] = v71;
  v69[1] = &v72;
  v69[2] = 4096;
  if (v9 && v7 && v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v11 = aks_client_connection;
      v12 = der_utils_encode_fv_data(v69);
      if (v12)
      {
        OUTLINED_FUNCTION_8_0(v12, v13, v14, v15, v16, v17, v18, v19, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68, v69[0]);
        if (ccder_blob_encode_body_tl())
        {
          if (der_utils_encode_fv_data(v69))
          {
            if (der_utils_encode_fv_data(v69))
            {
              if (der_utils_encode_fv_params(v69))
              {
                OUTLINED_FUNCTION_2_3();
                if (ccder_blob_encode_tl())
                {
                  OUTLINED_FUNCTION_11();
                  if (!OUTLINED_FUNCTION_1_4(v11, 0x4Du, v70, 2u, v20, v21, v22, v23, v71, v24))
                  {
                    OUTLINED_FUNCTION_2_3();
                    v25 = ccder_blob_decode_range();
                    if (v25)
                    {
                      v33 = OUTLINED_FUNCTION_9_0(v25, v26, v27, v28, v29, v30, v31, v32, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v71);
                      der_utils_decode_fv_data(v33, v34, v35);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v38 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v39, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v40, v45, v47, v49, v51, v53, v55, ":", 583, "", "");
    }
  }

  OUTLINED_FUNCTION_3_1(v71);
  v36 = *(v0 - 96);
  v37 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_3();
}

void aks_fv_set_protection()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  v30[0] = *MEMORY[0x277D85DE8];
  bzero(v29, 0x1000uLL);
  v25 = v29;
  v26 = v30;
  v27 = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v7 = aks_client_connection;
    if (!der_utils_encode_fv_data(&v25) || !der_utils_encode_fv_data(&v25) || !der_utils_encode_fv_data(&v25) || !der_utils_encode_fv_params(&v25) || (OUTLINED_FUNCTION_2_3(), !ccder_blob_encode_tl()) || (v28[0] = v5, v28[1] = v3, v28[2] = v26, v28[3] = v30 - v26, !OUTLINED_FUNCTION_1_4(v7, 0x54u, v28, 4u, v8, v9, v10, v11, v29, &v27)) && v27 && ((OUTLINED_FUNCTION_2_3(), !ccder_blob_decode_range()) || v0 && (OUTLINED_FUNCTION_15(), (der_utils_decode_fv_data(v12, v13, v14) & 1) == 0)))
    {
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 617, "", "");
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_3_1(v29);
  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

void aks_fv_unwrap_vek_with_acm()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16();
  v5 = v4;
  *(v2 - 96) = *MEMORY[0x277D85DE8];
  bzero(v30, 0x1000uLL);
  v26 = v30;
  v27 = v31;
  v28 = 4096;
  if (v1)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v7 = aks_client_connection;
      if (!der_utils_encode_fv_data(&v26) || !der_utils_encode_fv_data(&v26) || !der_utils_encode_fv_data(&v26) || !der_utils_encode_fv_data(&v26) || !der_utils_encode_fv_params(&v26) || (OUTLINED_FUNCTION_2_3(), !ccder_blob_encode_tl()) || (v29[0] = v27, v29[1] = &v31[-v27], v29[2] = v5, !OUTLINED_FUNCTION_1_4(v7, 0x4Bu, v29, 3u, v8, v9, v10, v11, v30, &v28)) && ((OUTLINED_FUNCTION_2_3(), !ccder_blob_decode_range()) || v0 && (OUTLINED_FUNCTION_15(), (der_utils_decode_fv_key(v12, v13, v14) & 1) == 0)))
      {
        OUTLINED_FUNCTION_10();
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 654, "", "");
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_3_1(v30);
  v15 = *(v2 - 96);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_3();
}

uint64_t __aks_gather_stats_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _get_path_class(*(a2 + 48));
  if ((result - 7) >= 0xFFFFFFFA)
  {
    v5 = *(a2 + 96);
    v6 = *(v5 + 96);
    v7 = *(a1 + 32);
    ++*(v7 + 296 * result);
    if (*(v5 + 6) >= 2u)
    {
      ++*(v7 + 296 * result + 8);
    }

    if ((*(v5 + 116) & 0x20) != 0)
    {
      ++*(v7 + 296 * result + 4);
    }

    v8 = v7 + 296 * result;
    v10 = *(v8 + 32);
    v9 = (v8 + 32);
    *(v9 - 2) += v6;
    if (v6 > v10)
    {
      *v9 = v6;
    }

    v11 = v7 + 296 * result;
    v14 = *(v11 + 24);
    v12 = (v11 + 24);
    v13 = v14;
    if (v14)
    {
      v15 = v6 < v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      *v12 = v6;
    }

    if (v6)
    {
      v16 = v7 + 296 * result + 4 * (63 - __clz(v6));
    }

    else
    {
      v16 = v7 + 296 * result;
    }

    ++*(v16 + 40);
  }

  return result;
}

uint64_t aks_kext_get_options()
{
  input[3] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_0();
  if (v2)
  {
    v3 = v2;
    input[0] = 0;
    input[1] = v1;
    input[2] = 0;
    output = 0;
    outputCnt = 1;
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v0 = IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
      if (!v0)
      {
        *v3 = output;
      }
    }

    else
    {
      v7 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v8, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v9, v10, v11, v12, v13, v14, v15, ":", 842, "", "");
    }
  }

  else
  {
    v0 = (v0 + 6);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v0;
}

void aks_stash_escrow()
{
  OUTLINED_FUNCTION_5_1();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v1;
  v34 = *MEMORY[0x277D85DE8];
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v32[0] = v16;
    v32[1] = v15;
    v32[2] = v13;
    v32[3] = v11;
    if ((!v15 || v5 && v3) && !OUTLINED_FUNCTION_7_1(aks_client_connection, 0x36u, v32, 4u, v9, v7, v18, v19, __src, &__count))
    {
      if (v15)
      {
        v20 = calloc(__count, 1uLL);
        *v5 = v20;
        if (v20)
        {
          memcpy(v20, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else
  {
    v22 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v25, v26, v27, v28, v29, v30, ":", 891, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  v21 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

void akstest_new_key()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6();
  v16[2] = *MEMORY[0x277D85DE8];
  v16[0] = v5;
  v16[1] = v4;
  v15 = 0;
  outputCnt = 1;
  bzero(outputStruct, 0x400uLL);
  v12 = 1024;
  if (!IOConnectCallMethod(v3, 0xFu, v16, 2u, v2, 0x10uLL, &v15, &outputCnt, outputStruct, &v12) && outputCnt == 1)
  {
    *v1 = v15;
    aks_unpack_data(outputStruct, v12, 3u, v6, v7, v8, v9, v10, v0);
  }

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

void akstest_new_ekwk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6();
  v44[2] = *MEMORY[0x277D85DE8];
  v44[0] = v30;
  v44[1] = v29;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  outputCnt = 3;
  bzero(outputStruct, 0x400uLL);
  v38 = 1024;
  if (!IOConnectCallMethod(v28, 0x13u, v44, 2u, v27, 0x10uLL, &v41, &outputCnt, outputStruct, &v38) && outputCnt == 3)
  {
    v36 = v42;
    *v26 = v41;
    *a22 = v36;
    *a25 = v43;
    aks_unpack_data(outputStruct, v38, 5u, v31, v32, v33, v34, v35, v25);
  }

  v37 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

uint64_t akstest_rewrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, unsigned int a12, void *outputStruct, size_t *a14, _DWORD *a15)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a3;
  input[1] = a6;
  input[2] = a9;
  input[3] = a12;
  output = 0;
  outputCnt = 1;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 4, a4, a5, a6, a7, a8, a2);
  v16 = IOConnectCallMethod(a1, 0x15u, input, 4u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, outputStruct, a14);
  if (v16)
  {
    a1 = v16;
  }

  else if (outputCnt == 1)
  {
    a1 = 0;
    *a15 = output;
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
  }

  free(*&inputStructCnt[1]);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void akstest_unwrap_key()
{
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v23[2] = *MEMORY[0x277D85DE8];
  v23[0] = v4;
  v23[1] = v5;
  v21 = 0;
  v20 = 0;
  bzero(v22, 0x400uLL);
  v19 = 1024;
  aks_pack_data(&v21, &v20, 2, v6, v7, v8, v9, v10, v0);
  if (!OUTLINED_FUNCTION_7_1(v1, 0x10u, v23, 2u, v21, v20, v11, v12, v22, &v19))
  {
    aks_unpack_data(v22, v19, 2u, v13, v14, v15, v16, v17, v3);
  }

  free(v21);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

void akstest_unwrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_14_0();
  v43[3] = *MEMORY[0x277D85DE8];
  v43[0] = v24;
  v43[1] = v25;
  v43[2] = a21;
  v41 = 0;
  v40 = 0;
  bzero(v42, 0x400uLL);
  v39 = 1024;
  aks_pack_data(&v41, &v40, 3, v26, v27, v28, v29, v30, v22);
  if (!OUTLINED_FUNCTION_7_1(v23, 0x17u, v43, 3u, v41, v40, v31, v32, v42, &v39))
  {
    aks_unpack_data(v42, v39, 2u, v33, v34, v35, v36, v37, a22);
  }

  free(v41);
  v38 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

uint64_t aks_get_internal_info_for_key(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28[1] = *MEMORY[0x277D85DE8];
  v28[0] = v1;
  bzero(__src, 0x8000uLL);
  __n = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v7)
    {
      v11 = 18;
    }

    else
    {
      v11 = 0;
    }

    v12 = OUTLINED_FUNCTION_7_1(aks_client_connection, 0x5Du, v28, 1u, v7, v11, v9, v10, __src, &__n);
    v13 = __n;
    if (v12)
    {
      v7 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      if (v13 - 32769 < 0xFFFFFFFFFFFF8000)
      {
        v7 = (v7 + 6);
      }

      else
      {
        v14 = calloc(v13, 1uLL);
        *v5 = v14;
        v13 = __n;
        if (v14)
        {
          *v3 = __n;
          memcpy(v14, __src, v13);
          v7 = 0;
          v13 = __n;
        }

        else
        {
          v7 = (v7 + 1);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    v17 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 1246, "", "");
    v13 = 0x8000;
  }

  memset_s(__src, v13, 0, v13);
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t aks_delete_xart_leak_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 269, "", "");
}

uint64_t _iterate_path_cold_1(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t aks_kext_set_options_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 821, "", "");
}

uint64_t aks_internal_state_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 858, "", "");
}

uint64_t aks_run_internal_test_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 872, "", "");
}

uint64_t encode_backup_bag(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 + a3;
  v4 = a1[10];
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  v5 = *a1;
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  v6 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v6)
  {
    if (a2 == v9)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t decode_backup_bag(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000000, a3) || !der_utils_decode_implicit_raw_octet_string_copy(&v6, 0x8000000000000001, a3 + 1, 16) || !der_utils_decode_implicit_raw_octet_string_copy(&v6, 0x8000000000000002, a3 + 3, 40) || !der_utils_decode_implicit_raw_octet_string_copy(&v6, 0x8000000000000003, a3 + 8, 16))
  {
    return 4294967277;
  }

  v4 = der_utils_decode_implicit_uint64(&v6, 0x8000000000000004, a3 + 10);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

uint64_t wrap_backup_bag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  *__s = 0u;
  v23 = 0u;
  HIDWORD(v21) = 40;
  *a4 = 0;
  uuid_copy((a4 + 8), (a1 + 32));
  *(a4 + 80) = 1;
  platform_read_random(a4 + 64, 0x10u);
  v8 = ccsha256_di();
  LODWORD(v9) = firebloom_ccpbkdf2_hmac(v8, a3, a2, 16, a4 + 64, *(a4 + 80), 32, __s);
  if (v9)
  {
    v17 = 4294967286;
  }

  else
  {
    v9 = rfc3394_wrap_legacy(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a1, 0x20u, (a4 + 24), &v21 + 1);
    if (v9)
    {
      v17 = v9;
    }

    else if (HIDWORD(v21) == 40)
    {
      v17 = 0;
    }

    else
    {
      v17 = 4294967286;
    }
  }

  OUTLINED_FUNCTION_0_10(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21, __s[0]);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t unwrap_backup_bag(const unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v21 = *MEMORY[0x277D85DE8];
  *__s = 0u;
  v20 = 0u;
  HIDWORD(v18) = 32;
  if (*a1)
  {
    v14 = 4294967284;
  }

  else
  {
    v11 = a1;
    v12 = ccsha256_di();
    LODWORD(a1) = firebloom_ccpbkdf2_hmac(v12, a3, a2, 16, v11 + 64, *(v11 + 10), 32, __s);
    if (a1)
    {
      goto LABEL_9;
    }

    a1 = rfc3394_unwrap_legacy(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v11 + 3, 0x28u, a4, &v18 + 1);
    if (a1)
    {
      v14 = a1;
      goto LABEL_8;
    }

    if (HIDWORD(v18) != 32)
    {
LABEL_9:
      v14 = 4294967286;
    }

    else
    {
      v13 = cccurve25519_make_pub() == 0;
      REQUIRE_func(v13, 118, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/backup_serialize.c");
      LODWORD(a1) = uuid_compare(v11 + 8, (a4 + 32));
      if (a1)
      {
        v14 = 4294967272;
      }

      else
      {
        v14 = 0;
      }
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_0_10(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, __s[0]);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void aks_stash_create_for_bag_and_kek()
{
  OUTLINED_FUNCTION_5_1();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v31 = *MEMORY[0x277D85DE8];
  bzero(v30, 0x1000uLL);
  v27 = v30;
  v28 = &v31;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v12 = aks_client_connection;
    if (der_utils_encode_fv_data(&v27))
    {
      OUTLINED_FUNCTION_2_3();
      if (ccder_blob_encode_tl())
      {
        v29[0] = v10;
        v29[1] = v9;
        v29[2] = v5;
        v29[3] = v3;
        v29[4] = v7;
        v29[5] = v28;
        v29[6] = &v31 - v28;
        OUTLINED_FUNCTION_1_4(v12, 0x21u, v29, 7u, v13, v14, v15, v16, 0, 0);
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 53, "", "");
  }

  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

uint64_t _aks_stash_load(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (get_aks_client_connection())
  {
    OUTLINED_FUNCTION_15_0();
    result = IOConnectCallMethod(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0);
    if (!result)
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    v14 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 80, "", "");
    result = OUTLINED_FUNCTION_14_1();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_prederived_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  OUTLINED_FUNCTION_44();
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  free(a1[1]);
  free(a1);
  return 0;
}

uint64_t aks_prederived_create(int a1, uint64_t a2, unint64_t a3, int a4, void *a5)
{
  v14 = 0;
  if (!a2 && a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (_aks_prederived_create_ctx(a4, &v14) || (v9 = calloc(0x20uLL, 1uLL)) == 0)
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
    v11 = _aks_prederive_passcode(v14);
    v12 = 0xFFFFFFFFLL;
    if (a3 <= 0x7FFFFFFE && !v11 && !_set_prederived_configuration(a1, a2, a3, v10, v14))
    {
      v12 = 0;
      if (a5)
      {
        *a5 = v14;
        v14 = 0;
      }
    }

    OUTLINED_FUNCTION_35(v10);
    free(v10);
  }

  if (v14)
  {
    aks_prederived_free(v14);
  }

  return v12;
}

uint64_t _aks_prederived_create_ctx(int a1, void *a2)
{
  if ((a1 - 1) > 2 || a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = calloc(0x20uLL, 1uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *(v6 + 2) = 20;
  v8 = calloc(0x14uLL, 1uLL);
  *(v7 + 1) = v8;
  if (!v8)
  {
LABEL_19:
    free(v7);
    return 0xFFFFFFFFLL;
  }

  *v7 = 1634431856;
  v7[6] = a1;
  v9 = *MEMORY[0x277D85C28];
  v10 = *(v7 + 2);
  result = CCRandomCopyBytes();
  if (result)
  {
    v12 = *(v7 + 1);
    if (v12)
    {
      free(v12);
    }

    goto LABEL_19;
  }

  if (a1 == 3)
  {
    v11 = 2000;
  }

  else
  {
    v11 = 10000000;
  }

  if (a1 == 2)
  {
    v11 = 1000;
  }

  v7[1] = v11;
  *a2 = v7;
  return result;
}

uint64_t _aks_prederive_passcode(unsigned int *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  OUTLINED_FUNCTION_44();
  if (!v6 || !v3 && v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v5 && a1[6] - 4 >= 0xFFFFFFFD)
  {
    ccsha256_di();
    v9 = *(a1 + 1);
    v8 = *(a1 + 2);
    v10 = a1[1];
    if (ccpbkdf2_hmac())
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _set_prederived_configuration(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v42[0] = 0;
  OUTLINED_FUNCTION_33();
  v40 = 0;
  __n = 0;
  if ((v10 || !a3) && a4 && a5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v12 = aks_client_connection;
      v13 = *(a5 + 8);
      v14 = *(a5 + 16);
      if (!encode_list_add_data() && !encode_list_add_data() && !encode_list_add_number(&v40, der_key_config_prederived_iterations, *(a5 + 4)) && !encode_list_add_number(&v40, der_key_config_prederived_type, *(a5 + 24)) && (a3 < 1 || !encode_list_add_data()) && !encode_list_is_empty(&v40) && !encode_list_dict(&v40, v42, &__n))
      {
        OUTLINED_FUNCTION_39(a1, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, __n);
        v5 = OUTLINED_FUNCTION_1_4(v12, 0x1Eu, v15, 3u, v16, v17, v18, v19, v26, v28);
      }
    }

    else
    {
      v22 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v29, v30, v31, v32, v33, v34, ":", 221, "", "");
      v5 = (v5 - 6);
    }
  }

  encode_list_free(&v40);
  if (v42[0])
  {
    OUTLINED_FUNCTION_37(v42[0], __n);
    free(v42[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

void aks_prederived_is_enabled()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v2);
  v39 = *MEMORY[0x277D85DE8];
  if (v3)
  {
    OUTLINED_FUNCTION_25();
    v4 = calloc(0x20uLL, 1uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = 1634431856;
      aks_client_connection = get_aks_client_connection();
      if (!aks_client_connection)
      {
        v19 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_9();
        fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v22, v23, v24, v25, v26, v27, ":", 387, "", "");
        goto LABEL_16;
      }

      v7 = aks_client_connection;
      bzero(v38, 0x8000uLL);
      v28[0] = 0x8000;
      v37 = v1;
      if (OUTLINED_FUNCTION_3_2(v7, 0x1Fu, &v37, v8, v9, v10, v11, v12, v38, v28) || v28[0] > 0x8000)
      {
        goto LABEL_16;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v30 = 0u;
      v32 = 0u;
      v33 = 0;
      v29 = 0u;
      v35 = 0u;
      v36 = 0u;
      v28[1] = der_key_config_prederived_salt;
      v31 = der_key_config_prederived_iterations;
      v34 = der_key_config_prederived_type;
      OUTLINED_FUNCTION_1_5();
      der_dict_iterate();
      v14 = ccder_decode_tl();
      if (v14)
      {
        v15 = v14;
        v16 = calloc(*(v5 + 2), 1uLL);
        *(v5 + 1) = v16;
        if (!v16)
        {
          v17 = 0;
          if (!Mutable)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        memcpy(v16, v15, *(v5 + 2));
        v5[1] = der_get_number();
        v5[6] = der_get_number();
      }

      v17 = 1;
      if (!Mutable)
      {
LABEL_11:
        if (v17 && *(v5 + 2))
        {
          *v0 = v5;
          goto LABEL_14;
        }

LABEL_16:
        aks_prederived_free(v5);
        goto LABEL_14;
      }

LABEL_10:
      CFRelease(Mutable);
      goto LABEL_11;
    }
  }

LABEL_14:
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

uint64_t aks_prederived_unlock_keybag(int a1, uint64_t a2, int a3, unsigned int *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  if (a3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 || a4 == 0;
  if (v5 || *a4 != 1634431856 || _aks_prederive_passcode(a4))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = _aks_unlock_bag(a1, v10, 32, 0);
  }

  OUTLINED_FUNCTION_35(v10);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t aks_prederived_change_secret(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6)
{
  v25 = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  if (!a6)
  {
    goto LABEL_18;
  }

  v7 = *a6;
  if (!*a6)
  {
    goto LABEL_18;
  }

  v8 = *v7;
  OUTLINED_FUNCTION_44();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v9;
  if (!v10)
  {
    if (v11)
    {
      goto LABEL_18;
    }
  }

  if (!v12 && v13 || _aks_prederive_passcode(v7))
  {
    goto LABEL_18;
  }

  v16 = _aks_prederived_create_ctx(v7[6], &v22);
  v17 = v22;
  if (v16 || (v18 = _aks_prederive_passcode(v22), v17 = v22, v18))
  {
LABEL_16:
    if (v17)
    {
      aks_prederived_free(v17);
    }

LABEL_18:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (_set_prederived_configuration(v15, v24, 32, v23, v22))
  {
    v17 = v22;
    goto LABEL_16;
  }

  aks_prederived_free(v7);
  v19 = 0;
  *a6 = v22;
LABEL_14:
  OUTLINED_FUNCTION_35(v24);
  OUTLINED_FUNCTION_35(v23);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t _create_bag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = 3758097084;
  if (get_aks_client_connection())
  {
    if (a8)
    {
      OUTLINED_FUNCTION_15_0();
      v9 = IOConnectCallMethod(v10, v11, v12, v13, v14, v15, v16, v17, 0, 0);
      if (!v9)
      {
        *a8 = 0;
      }
    }

    else
    {
      v9 = 3758097090;
    }
  }

  else
  {
    v20 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v23, v24, v25, v26, v27, v28, ":", 190, "", "");
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t aks_load_bag(const void *a1, int a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_9_1(*MEMORY[0x277D85DE8]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v3 = (v3 + 6);
    if (a1)
    {
      if (a3)
      {
        output = 0;
        outputCnt = 1;
        v3 = IOConnectCallMethod(aks_client_connection, 6u, 0, 0, a1, a2, &output, &outputCnt, 0, 0);
        if (!v3)
        {
          *a3 = output;
        }
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 607, "", "");
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t aks_invalidate_bag(const void *a1, int a2)
{
  OUTLINED_FUNCTION_12_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a1)
    {
      return OUTLINED_FUNCTION_7_1(aks_client_connection, 0x57u, 0, 0, a1, a2, v6, v7, 0, 0);
    }

    return (v2 + 6);
  }

  else
  {
    v9 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 629, "", "");
  }

  return v2;
}

void aks_save_bag()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v8 = v7;
  *(v5 - 72) = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_51();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v17 = aks_client_connection;
    if (v1)
    {
      if (v0)
      {
        OUTLINED_FUNCTION_34((v2 + 6), v10, v11, v12, v13, v14, v15, v16, v29, v30, v31, v32, v33, v34, v35);
        __count = v3;
        v38 = v8;
        if (!OUTLINED_FUNCTION_3_2(v17, 3u, &v38, v18, v19, v20, v21, v22, v4, &__count))
        {
          v23 = calloc(__count, 1uLL);
          *v1 = v23;
          if (v23)
          {
            memcpy(v23, __src, __count);
            *v0 = __count;
          }
        }
      }
    }
  }

  else
  {
    v26 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v28, v31, v32, v33, v34, v35, v36, ":", 679, "", "");
    OUTLINED_FUNCTION_14_1();
  }

  v24 = *(v5 - 72);
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
}

uint64_t aks_get_bag_uuid()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9_1(*MEMORY[0x277D85DE8]);
  v20 = 16;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v1)
    {
      v22 = 0uLL;
      v21 = v2;
      v0 = OUTLINED_FUNCTION_3_2(aks_client_connection, 0x17u, &v21, v4, v5, v6, v7, v8, &v22, &v20);
      if (!v0)
      {
        *v1 = v22;
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v11 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 782, "", "");
  }

  v9 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t aks_copy_volume_cookie_persona(int a1, uint64_t a2, void **a3, size_t *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_62();
  v53 = 0;
  memset(__src, 0, sizeof(__src));
  v49 = 0;
  __count = 34;
  HIDWORD(v47) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v17 = (v4 + 5);
    if (a3 && a4)
    {
      v18 = aks_client_connection;
      v51 = a1;
      v19 = OUTLINED_FUNCTION_65(aks_client_connection, v10, v11, v12, v13, v14, v15, v16, a2, 16, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, 0);
      aks_pack_data(v19, v20, 1, v21, v22, v23, v24, v25, v36);
      if (v49)
      {
        v29 = OUTLINED_FUNCTION_23(v18, 0x44u, &v51, v26, v49, v48, v27, v28, __src, &__count);
        if (v29)
        {
          v17 = v29;
        }

        else
        {
          *a3 = calloc(__count, 1uLL);
          OUTLINED_FUNCTION_62();
          if (v30)
          {
            memcpy(v30, __src, __count);
            v17 = 0;
            *a4 = __count;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_62();
      }
    }
  }

  else
  {
    v33 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v34, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v35, v37, v38, v39, v40, v41, v42, ":", 813, "", "");
    v17 = (v4 - 1);
  }

  free(v49);
  v31 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t aks_get_lock_state()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9_1(*MEMORY[0x277D85DE8]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_4_4();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
      if (!v0)
      {
        OUTLINED_FUNCTION_55();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v17, v18, v19, v20, v21, v22, ":", 889, "", "");
  }

  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t aks_unwrap_key(const void *a1, int a2, int a3, int a4, void *a5, int *a6)
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = (v6 + 6);
    if (a1)
    {
      if (a5)
      {
        if (a6)
        {
          v28[0] = a4;
          v28[1] = a3;
          v27 = *a6;
          v6 = OUTLINED_FUNCTION_7_1(aks_client_connection, 0xBu, v28, 2u, a1, a2, v14, v15, a5, &v27);
          if (!v6)
          {
            *a6 = v27;
          }
        }
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 942, "", "");
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t aks_get_system()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9_1(*MEMORY[0x277D85DE8]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_15_0();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0);
      if (!v0)
      {
        OUTLINED_FUNCTION_55();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 987, "", "");
  }

  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

void _aks_backup_enable_volume()
{
  OUTLINED_FUNCTION_5_1();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v38 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v34 = 0;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v19 = aks_client_connection;
    v36[0] = v11;
    v36[1] = v9;
    v36[2] = v7;
    aks_pack_data(&v35, &v34, 1, v14, v15, v16, v17, v18, v12);
    if (v35)
    {
      if (!OUTLINED_FUNCTION_7_1(v19, 0x6Eu, v36, 3u, v35, v34, v20, v21, __src, &__count))
      {
        v22 = calloc(__count, 1uLL);
        *v5 = v22;
        if (v22)
        {
          memcpy(v22, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else
  {
    v24 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v27, v28, v29, v30, v31, v32, ":", 1101, "", "");
  }

  free(v35);
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_4_3();
}

uint64_t aks_backup_disable_volume()
{
  OUTLINED_FUNCTION_12_0();
  v25 = 0;
  v24 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v2 = aks_client_connection;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v25, &v24, 1, v3, v4, v5, v6, v7, v17);
    if (v25)
    {
      v0 = OUTLINED_FUNCTION_16_0(v2, 0x6Fu, v8, v9, v25, v24, v10, v11, 0, 0);
      v12 = v25;
    }

    else
    {
      v12 = OUTLINED_FUNCTION_31();
    }
  }

  else
  {
    v14 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v18, v19, v20, v21, v22, v23, ":", 1143, "", "");
    v12 = 0;
  }

  free(v12);
  return v0;
}

uint64_t aks_backup_copy_current_bag_uuid(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_12_0();
  v29 = 0;
  v28 = 0;
  v27 = 16;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    aks_pack_data(&v29, &v28, 1, v6, v7, v8, v9, v10, a1);
    if (v29)
    {
      v2 = OUTLINED_FUNCTION_16_0(v11, 0x70u, v12, v13, v29, v28, v14, v15, a2, &v27);
      v16 = v29;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_31();
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 1165, "", "");
    v16 = 0;
  }

  free(v16);
  return v2;
}

uint64_t aks_backup_unwrap_bag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  __s = 0u;
  v24 = 0u;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v8 = decode_backup_bag(a1, a2, v21);
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v8 = unwrap_backup_bag(v21, a3, a4, &__s, v12, v13, v14, v15);
    v16 = v8;
    if (!v8)
    {
      v17 = v24;
      *a5 = __s;
      a5[1] = v17;
      v18 = v26;
      a5[2] = v25;
      a5[3] = v18;
    }
  }

  OUTLINED_FUNCTION_68(v8, v9, v10, v11, v12, v13, v14, v15, *&v21[0]);
  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  result = err_sks_to_aks(v16);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_backup_copy_bag_uuid(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v4 = decode_backup_bag(a1, a2, v15);
  v12 = v4;
  if (!v4)
  {
    uuid_copy(a3, v15 + 8);
  }

  OUTLINED_FUNCTION_68(v4, v5, v6, v7, v8, v9, v10, v11, *&v15[0]);
  result = err_sks_to_aks(v12);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_kc_backup_unwrap_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  OUTLINED_FUNCTION_42();
  v10 = v9;
  v27[2] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v27[0] = v10;
      v27[1] = 64;
      v5 = OUTLINED_FUNCTION_19(aks_client_connection, 0x82u, v27, 2u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 1292, "", "");
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t aks_kc_backup_wrap_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  OUTLINED_FUNCTION_42();
  v10 = v9;
  v27[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v27[0] = v10;
      v5 = OUTLINED_FUNCTION_19(aks_client_connection, 0x81u, v27, 1u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 1311, "", "");
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t aks_kc_backup_get_handle()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9_1(*MEMORY[0x277D85DE8]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_4_4();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
      if (!v0)
      {
        OUTLINED_FUNCTION_55();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v17, v18, v19, v20, v21, v22, ":", 1330, "", "");
  }

  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t aks_kc_backup_get_uuid()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9_1(*MEMORY[0x277D85DE8]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v1)
    {
      v23 = 0;
      v24 = v2;
      v21 = 16;
      *src = 0;
      v9 = OUTLINED_FUNCTION_3_2(aks_client_connection, 0x84u, &v24, v4, v5, v6, v7, v8, src, &v21);
      if (v9)
      {
        v0 = v9;
      }

      else if (v21 == 16)
      {
        uuid_copy(v1, src);
        v0 = 0;
      }

      else
      {
        v0 = 3758604298;
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 1352, "", "");
  }

  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t aks_kc_backup_open_keybag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_47();
    v10 = v9;
    *a5 = -1;
    v15 = aks_backup_unwrap_bag(v9, v11, v12, v13, v14);
    v16 = MEMORY[0x277D85E08];
    v17 = *MEMORY[0x277D85E08];
    if (!v15)
    {
      OUTLINED_FUNCTION_0_9();
      fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Unwrapped DER backup bag%s\n", "aks", v19, v38, v39, v41, v43, v45, v47, ":", 1401, "", "");
      v20 = 0;
      goto LABEL_9;
    }

    v51 = v15;
    OUTLINED_FUNCTION_12_1();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unwrap backup bag as DER: 0x%08x%s\n", "aks", "", v22, v39, v41, v43, v45, v47, v49, 1389, "", v51, "");
    bag = aks_load_bag(v10, v7, a5);
    if (bag)
    {
      v20 = bag;
      v32 = *v16;
      OUTLINED_FUNCTION_12_1();
      fprintf(v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to load in-kernel backup bag: 0x%08x%s\n", "aks", "", v34, v40, v42, v44, v46, v48, v50, 1391, "", v20, "");
    }

    else
    {
      v24 = *a5;
      aks_prederived_is_enabled();
      v26 = v25;
      v27 = *a5;
      if (v26)
      {
        v20 = aks_prederived_unlock_keybag(v27, v6, v5, 0);
        if (!v20)
        {
          goto LABEL_9;
        }

        v35 = *v16;
        OUTLINED_FUNCTION_12_1();
        fprintf(v36, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag with prederived secret: 0x%08x%s\n", "aks", "", v37);
      }

      else
      {
        v20 = _aks_unlock_bag(v27, v6, v5, 0);
        if (!v20)
        {
          goto LABEL_9;
        }

        v28 = *v16;
        OUTLINED_FUNCTION_12_1();
        fprintf(v29, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag: 0x%08x%s\n", "aks", "", v30);
      }
    }
  }

  else
  {
    v20 = 3758097090;
  }

  if (*a5 != -1)
  {
    aks_unload_bag(*a5);
    *a5 = -1;
  }

LABEL_9:
  aks_prederived_free(0);
  return v20;
}

uint64_t aks_keybag_persona_create(int a1, uint64_t a2, uint64_t a3)
{
  v31[3] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_0();
  v30 = 0;
  v29 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v8 = aks_client_connection;
    v31[0] = a1;
    v31[1] = a2;
    v31[2] = a3;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v30, &v29, 1, v9, v10, v11, v12, v13, v22);
    if (v30)
    {
      v3 = OUTLINED_FUNCTION_7_1(v8, 0x60u, v31, 3u, v30, v29, v14, v15, 0, 0);
      v16 = v30;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_31();
    }
  }

  else
  {
    v19 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v23, v24, v25, v26, v27, v28, ":", 1423, "", "");
    v16 = 0;
  }

  free(v16);
  v17 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t aks_keybag_persona_create_with_flags(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v33 = 0;
  v32 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    v34[0] = a1;
    v34[1] = a2;
    v34[2] = a3;
    v34[3] = a5;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v33, &v32, 1, v12, v13, v14, v15, v16, v25);
    if (v33)
    {
      v5 = OUTLINED_FUNCTION_7_1(v11, 0x75u, v34, 4u, v33, v32, v17, v18, 0, 0);
      v19 = v33;
    }

    else
    {
      v19 = OUTLINED_FUNCTION_31();
    }
  }

  else
  {
    v22 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v26, v27, v28, v29, v30, v31, ":", 1445, "", "");
    v19 = 0;
  }

  free(v19);
  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t aks_keybag_persona_list(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v5 = v4;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_43(*MEMORY[0x277D85DE8]);
  bzero(__src, 0x2000uLL);
  __count = 0x2000;
  v28 = v2;
  v6 = (v3 + 6);
  if (v1 && v5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v13 = OUTLINED_FUNCTION_3_2(aks_client_connection, 0x61u, &v28, v8, v9, v10, v11, v12, __src, &__count);
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        if (__count)
        {
          v14 = calloc(__count, 1uLL);
          *v1 = v14;
          if (!v14)
          {
            v6 = (v3 + 1);
            goto LABEL_10;
          }

          memcpy(v14, __src, __count);
          v15 = __count;
        }

        else
        {
          v15 = 0;
          *v1 = 0;
        }

        OUTLINED_FUNCTION_54(v15);
      }
    }

    else
    {
      v18 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 1471, "", "");
      OUTLINED_FUNCTION_32();
    }
  }

LABEL_10:
  memset_s(__src, 0x2000uLL, 0, 0x2000uLL);
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t aks_keybag_persona_delete(int a1)
{
  OUTLINED_FUNCTION_9_1(*MEMORY[0x277D85DE8]);
  v27 = 0;
  v26 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v4 = aks_client_connection;
    v28 = a1;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v27, &v26, 1, v5, v6, v7, v8, v9, v19);
    if (v27)
    {
      v1 = OUTLINED_FUNCTION_23(v4, 0x62u, &v28, v10, v27, v26, v11, v12, 0, 0);
      v13 = v27;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_31();
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v20, v21, v22, v23, v24, v25, ":", 1493, "", "");
    v13 = 0;
  }

  free(v13);
  v14 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t _aks_set_configuration(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v64[4] = *MEMORY[0x277D85DE8];
  v64[0] = 0;
  OUTLINED_FUNCTION_33();
  v62 = 0;
  __n = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v9 = aks_client_connection;
    CFNumberGetTypeID();
    v10 = OUTLINED_FUNCTION_22();
    if (!_copy_cf_key(v10, v11, v12))
    {
      CFNumberGetTypeID();
      v13 = OUTLINED_FUNCTION_22();
      if (!_copy_cf_key(v13, v14, v15))
      {
        CFNumberGetTypeID();
        v16 = OUTLINED_FUNCTION_22();
        if (!_copy_cf_key(v16, v17, v18))
        {
          CFNumberGetTypeID();
          v19 = OUTLINED_FUNCTION_22();
          if (!_copy_cf_key(v19, @"EscrowPasscodePeriod", v20))
          {
            CFNumberGetTypeID();
            v21 = OUTLINED_FUNCTION_22();
            if (!_copy_cf_key(v21, @"EscrowTokenPeriod", v22))
            {
              CFDataGetTypeID();
              v23 = OUTLINED_FUNCTION_22();
              if (!_copy_cf_key(v23, v24, v25))
              {
                CFDataGetTypeID();
                v26 = OUTLINED_FUNCTION_22();
                if (!_copy_cf_key(v26, v27, v28))
                {
                  CFBooleanGetTypeID();
                  v29 = OUTLINED_FUNCTION_22();
                  if (!_copy_cf_key(v29, v30, v31))
                  {
                    CFBooleanGetTypeID();
                    v32 = OUTLINED_FUNCTION_22();
                    if (!_copy_cf_key(v32, v33, v34) && !encode_list_is_empty(&v62))
                    {
                      if (!a2)
                      {
                        goto LABEL_24;
                      }

                      v35 = &der_key_acm_handle;
                      if (!a4)
                      {
                        v35 = &der_key_passcode;
                      }

                      v36 = *v35;
                      if (!encode_list_add_data())
                      {
LABEL_24:
                        if (!encode_list_dict(&v62, v64, &__n))
                        {
                          OUTLINED_FUNCTION_39(a1, v47, v49, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, __n);
                          v4 = OUTLINED_FUNCTION_1_4(v9, 0x1Eu, v37, 3u, v38, v39, v40, v41, v48, v50);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v44 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v45, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v46, v51, v52, v53, v54, v55, v56, ":", 1587, "", "");
    v4 = (v4 - 6);
  }

  encode_list_free(&v62);
  if (v64[0])
  {
    OUTLINED_FUNCTION_37(v64[0], __n);
    free(v64[0]);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v4;
}

void aks_get_configuration()
{
  OUTLINED_FUNCTION_5_1();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v2;
  v4 = v1;
  v91 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v3)
    {
      v6 = aks_client_connection;
      bzero(v90, 0x8000uLL);
      v87[0] = 0x8000;
      v89 = v4;
      if (!OUTLINED_FUNCTION_3_2(v6, 0x1Fu, &v89, v7, v8, v9, v10, v11, v90, v87) && v87[0] <= 0x8000)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        bzero(v88, 0x250uLL);
        v87[1] = der_key_config_graceperiod;
        v88[4] = der_key_config_backoff_delay;
        v88[9] = der_key_config_max_unlock_attempts;
        v88[14] = der_key_config_escrow_passcode_period;
        v88[19] = der_key_config_escrow_token_period;
        v88[24] = der_key_config_flags;
        v88[29] = der_key_config_user_uuid;
        v88[34] = der_key_config_group_uuid;
        v88[39] = der_key_config_recovery_iterations;
        v88[44] = der_key_config_recovery_params;
        v88[49] = der_key_config_recovery_target_iterations;
        v88[54] = der_key_memento_supported;
        v88[59] = der_key_memento_blob_exists;
        v88[64] = der_key_config_memento_passcode_generation;
        v88[69] = der_key_config_passcode_generation;
        OUTLINED_FUNCTION_1_5();
        der_dict_iterate();
        v13 = v88[0];
        v14 = v88[5];
        v15 = v88[10];
        v16 = v88[15];
        v86 = v3;
        v17 = v88[20];
        v18 = v88[25];
        v19 = v88[30];
        v78 = v88[35];
        v79 = v88[40];
        v80 = v88[45];
        v81 = v88[50];
        v82 = v88[55];
        v83 = v88[60];
        v84 = v88[65];
        v85 = v88[70];
        CFNumberGetTypeID();
        v20 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v20, v21, v22, v13);
        CFNumberGetTypeID();
        v23 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v23, v24, v25, v14);
        CFNumberGetTypeID();
        v26 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v26, v27, v28, v15);
        CFNumberGetTypeID();
        v29 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v29, @"EscrowPasscodePeriod", v30, v16);
        CFNumberGetTypeID();
        v31 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v31, @"EscrowTokenPeriod", v32, v17);
        CFNumberGetTypeID();
        v33 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v33, v34, v35, v18);
        CFDataGetTypeID();
        v36 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v36, v37, v38, v19);
        CFDataGetTypeID();
        v39 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v39, v40, v41, v78);
        CFNumberGetTypeID();
        v42 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v42, v43, v44, v79);
        CFNumberGetTypeID();
        v45 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v45, v46, v47, v80);
        CFNumberGetTypeID();
        v48 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v48, v49, v50, v81);
        CFBooleanGetTypeID();
        v51 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v51, v52, v53, v82);
        CFBooleanGetTypeID();
        v54 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v54, v55, v56, v83);
        CFNumberGetTypeID();
        v57 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v57, v58, v59, v84);
        CFNumberGetTypeID();
        v60 = OUTLINED_FUNCTION_13_0();
        _set_cf_key(v60, v61, v62, v85);
        number = der_get_number();
        v64 = *MEMORY[0x277CBED10];
        v65 = *MEMORY[0x277CBED28];
        if ((number & 2) != 0)
        {
          v66 = *MEMORY[0x277CBED28];
        }

        else
        {
          v66 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(Mutable, @"InactivityRebootEnabled", v66);
        if ((number & 8) != 0)
        {
          v67 = v65;
        }

        else
        {
          v67 = v64;
        }

        CFDictionarySetValue(Mutable, @"OnenessAutomaticMode", v67);
        *v86 = Mutable;
      }
    }
  }

  else
  {
    v69 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v70, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v71, v72, v73, v74, v75, v76, v77, ":", 1677, "", "");
  }

  v68 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_4_3();
}

void aks_fdr_hmac_data()
{
  OUTLINED_FUNCTION_70();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33();
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v8)
    {
      if (v5)
      {
        if (v3)
        {
          if (!OUTLINED_FUNCTION_7_1(aks_client_connection, 0x29u, 0, 0, v8, v7, v10, v11, __src, &__count))
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              memcpy(v12, __src, __count);
              *v3 = __count;
            }
          }
        }
      }
    }
  }

  else
  {
    v14 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 1889, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_69();
}

uint64_t aks_create_signing_key()
{
  OUTLINED_FUNCTION_43(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_59();
  result = (v0 + 6);
  if (v1)
  {
    v4 = v2;
    if (v2)
    {
      v5 = v1;
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v7 = aks_client_connection;
        bzero(v39, 0x100uLL);
        result = OUTLINED_FUNCTION_1_4(v7, 0x31u, v38, 2u, v8, v9, v10, v11, v39, &__count);
        if (!result)
        {
          if (__count > 0x100)
          {
            result = OUTLINED_FUNCTION_58();
          }

          else
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              OUTLINED_FUNCTION_71(v12, v13, v14, v15, v16, v17, v18, v19, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, __count, v38[0], v38[1], v39[0]);
              result = OUTLINED_FUNCTION_60();
              *v4 = v20;
            }

            else
            {
              result = (v0 + 1);
            }
          }
        }
      }

      else
      {
        v22 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_9();
        fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v27, v28, v29, v30, v31, v32, ":", 2020, "", "");
        result = OUTLINED_FUNCTION_14_1();
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void aks_create_signing_key_with_params()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v1);
  *(v0 - 72) = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_59();
  if (v2)
  {
    v4 = v3;
    if (v3)
    {
      v5 = v2;
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v7 = aks_client_connection;
        bzero(v44, 0x8000uLL);
        OUTLINED_FUNCTION_45();
        if (!OUTLINED_FUNCTION_18_0(v7, 0x31u, v8, 2u, v9, v10, v11, v12, v27, v29))
        {
          if (__count > 0x8000)
          {
            OUTLINED_FUNCTION_58();
          }

          else
          {
            v13 = calloc(__count, 1uLL);
            *v5 = v13;
            if (v13)
            {
              OUTLINED_FUNCTION_71(v13, v14, v15, v16, v17, v18, v19, v20, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, __count, v42, v43, v44[0]);
              OUTLINED_FUNCTION_60();
              *v4 = v21;
            }
          }
        }
      }

      else
      {
        v24 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_9();
        fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v31, v32, v33, v34, v35, v36, ":", 2042, "", "");
        OUTLINED_FUNCTION_14_1();
      }
    }
  }

  v22 = *(v0 - 72);
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
}

uint64_t remote_session_operate(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v34 = *MEMORY[0x277D85DE8];
  __count = 15360;
  v32[0] = v1;
  v32[1] = v8;
  v32[2] = v9;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    bzero(__src, 0x3C00uLL);
    v16 = OUTLINED_FUNCTION_1_4(v11, v7, v32, 3u, v12, v13, v14, v15, __src, &__count);
    if (v16)
    {
      v7 = v16;
    }

    else if (__count > 0x3C00)
    {
      OUTLINED_FUNCTION_56();
    }

    else
    {
      v7 = 0;
      if (v5 && v3)
      {
        if (__count)
        {
          v17 = calloc(__count, 1uLL);
          *v5 = v17;
          if (!v17)
          {
            OUTLINED_FUNCTION_17_0();
            v7 = v24 | 1u;
            goto LABEL_11;
          }

          memcpy(v17, __src, __count);
          v18 = __count;
        }

        else
        {
          v18 = 0;
        }

        OUTLINED_FUNCTION_54(v18);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v21 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v23, v25, v26, v27, v28, v29, v30, ":", 2178, "", "");
  }

LABEL_11:
  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

void aks_sign_signing_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t *a21)
{
  OUTLINED_FUNCTION_5_1();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v76 = *MEMORY[0x277D85DE8];
  bzero(__src, 0x100uLL);
  v72 = 0;
  __count = 256;
  HIDWORD(v70) = 0;
  v74[0] = v34;
  v74[1] = v32;
  v74[2] = v28;
  if (v22 && a21)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v43 = aks_client_connection;
      v44 = OUTLINED_FUNCTION_65(aks_client_connection, v36, v37, v38, v39, v40, v41, v42, v58, v59, v26, v24, v62, v63, v64, v65, v66, v67, v68, v69, v70, 0);
      aks_pack_data(v44, v45, 2, v46, v47, v48, v49, v50, v30);
      if (v72)
      {
        if (!OUTLINED_FUNCTION_7_1(v43, 0x32u, v74, 3u, v72, v71, v51, v52, __src, &__count) && __count <= 0x100)
        {
          v53 = calloc(__count, 1uLL);
          *v22 = v53;
          if (v53)
          {
            memcpy(v53, __src, __count);
            *a21 = __count;
          }
        }
      }
    }

    else
    {
      v55 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v56, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v57, v60, v61, v62, v63, v64, v65, ":", 2072, "", "");
    }
  }

  free(v72);
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

uint64_t aks_validate_local_key()
{
  v11 = 0;
  v12 = 0;
  OUTLINED_FUNCTION_12_0();
  __n = 0;
  v10 = 0;
  v3 = (v0 + 6);
  v8 = 0;
  if (v1 && v2)
  {
    *&v13 = v1;
    *(&v13 + 1) = v1 + v2;
    v10 = 0;
    OUTLINED_FUNCTION_2_3();
    if (ccder_blob_decode_range())
    {
      der_utils_decode_implicit_uint64(&v13, 0x8000000000000001, &v10);
      if (v10)
      {
        OUTLINED_FUNCTION_15_0();
        v3 = remote_session_operate(v6);
        if (v3)
        {
          syslog(3, "error: validating v1 local signing key failed: %d");
        }
      }

      else
      {
        signing_key = aks_create_signing_key();
        if (!signing_key)
        {
          v5 = v12;
          goto LABEL_10;
        }

        v3 = signing_key;
        syslog(3, "error: validating (create) v0 local signing key failed: %d", signing_key);
      }
    }

    else
    {
      syslog(3, "error parsing signing key: %d", v0 + 14);
      v3 = 3758097084;
    }
  }

  v5 = v12;
  v0 = v3;
LABEL_10:
  if (v5)
  {
    OUTLINED_FUNCTION_37(v5, __n);
    free(v12);
  }

  if (v11)
  {
    OUTLINED_FUNCTION_37(v11, v8);
    free(v11);
  }

  return v0;
}

void aks_drain_backup_keys()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v7 = v6;
  *(v4 - 72) = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_51();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v16 = aks_client_connection;
    if (v1)
    {
      if (v0)
      {
        OUTLINED_FUNCTION_34((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v36, v39, v42, v44, v46, v48, v50);
        OUTLINED_FUNCTION_45();
        if (!OUTLINED_FUNCTION_1_4(v16, 0x14u, v17, 2u, v18, v19, v20, v21, v37, v40))
        {
          if (v3)
          {
            v22 = calloc(v3, 1uLL);
            *v1 = v22;
            if (v22)
            {
              OUTLINED_FUNCTION_71(v22, v23, v24, v25, v26, v27, v28, v29, v38, v41, v43, v45, v47, v49, v51, v52, v53, v54, v55, v56, v3, v7, 0, v57);
              OUTLINED_FUNCTION_60();
              *v0 = v30;
            }
          }
        }
      }
    }
  }

  else
  {
    v33 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v34, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v35, v42, v44, v46, v48, v50, v52, ":", 2233, "", "");
    OUTLINED_FUNCTION_14_1();
  }

  v31 = *(v4 - 72);
  v32 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
}

void aks_drain_backup_keys_info()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v7 = v6;
  *(v4 - 72) = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_51();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v16 = aks_client_connection;
    if (v1)
    {
      if (v0)
      {
        OUTLINED_FUNCTION_34((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v36, v39, v42, v44, v46, v48, v50);
        OUTLINED_FUNCTION_45();
        if (!OUTLINED_FUNCTION_1_4(v16, 0x14u, v17, 2u, v18, v19, v20, v21, v37, v40))
        {
          if (v3)
          {
            if (v3 % 0x7C)
            {
              OUTLINED_FUNCTION_58();
            }

            else
            {
              v22 = calloc(v3, 1uLL);
              *v1 = v22;
              if (v22)
              {
                OUTLINED_FUNCTION_71(v22, v23, v24, v25, v26, v27, v28, v29, v38, v41, v43, v45, v47, v49, v51, v52, v53, v54, v55, v56, v3, v7, 1, v57);
                OUTLINED_FUNCTION_60();
                *v0 = v30 / 0x7C;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v33 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v34, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v35, v42, v44, v46, v48, v50, v52, ":", 2261, "", "");
    OUTLINED_FUNCTION_14_1();
  }

  v31 = *(v4 - 72);
  v32 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
}

void aks_set_backup_bag()
{
  OUTLINED_FUNCTION_5_1();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v37 = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v14 = aks_client_connection;
    if (v5)
    {
      if (!v3)
      {
        goto LABEL_10;
      }

      v15 = __src;
      p_count = &__count;
      v17 = 1;
    }

    else
    {
      p_count = 0;
      v15 = 0;
      v17 = 0;
    }

    bzero(__src, 0x8000uLL);
    __count = 0x8000;
    v35[0] = v12;
    v35[1] = v11;
    v35[2] = v17;
    v35[3] = v9;
    v35[4] = v7;
    v22 = OUTLINED_FUNCTION_1_4(v14, 0x15u, v35, 5u, v18, v19, v20, v21, v15, p_count);
    if (v5 && !v22)
    {
      v23 = calloc(__count, 1uLL);
      *v5 = v23;
      if (v23)
      {
        memcpy(v23, __src, __count);
        *v3 = __count;
      }

      else
      {
        OUTLINED_FUNCTION_17_0();
      }
    }
  }

  else
  {
    v25 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v27, v28, v29, v30, v31, v32, v33, ":", 2307, "", "");
    OUTLINED_FUNCTION_14_1();
  }

LABEL_10:
  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

uint64_t aks_make_public_backup_bag()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9_1(*MEMORY[0x277D85DE8]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_4_4();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
      if (!v0)
      {
        OUTLINED_FUNCTION_55();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v17, v18, v19, v20, v21, v22, ":", 2339, "", "");
  }

  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t _get_device_state(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v30[1] = *MEMORY[0x277D85DE8];
  v30[0] = v1;
  v26 = 4096;
  v6 = 3758097084;
  v28 = 0;
  memset(__src, 0, sizeof(__src));
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v3)
    {
      v8 = aks_client_connection;
      bzero(v29, 0x1000uLL);
      v14 = OUTLINED_FUNCTION_3_2(v8, v5, v30, v9, v10, v11, v12, v13, v29, &v26);
      if (v14)
      {
        v6 = v14;
      }

      else
      {
        if (!decode_extended_state(v29))
        {
          memcpy(v3, __src, 0x42uLL);
        }

        v6 = 0;
      }
    }

    else
    {
      v6 = 3758097090;
    }
  }

  else
  {
    v17 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 2409, "", "");
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

void aks_remote_peer_get_state()
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v35 = 4096;
  v36 = v2;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v0)
    {
      v11 = aks_client_connection;
      v12 = OUTLINED_FUNCTION_50(aks_client_connection, v4, v5, v6, v7, v8, v9, v10, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37[0]);
      bzero(v12, v13);
      memset_s(v0, 0x68uLL, 0, 0x68uLL);
      if (!OUTLINED_FUNCTION_18_0(v11, 0x39u, &v36, 1u, v14, v15, v16, v17, v37, &v35))
      {
        decode_peer_state(v37, v35, v0);
      }
    }
  }

  else
  {
    v19 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v24, v25, v26, v27, v28, v29, ":", 2440, "", "");
  }

  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_69();
}

void aks_smartcard_register()
{
  OUTLINED_FUNCTION_70();
  v1 = v0;
  v3 = v2;
  v28[4] = *MEMORY[0x277D85DE8];
  v28[0] = v4;
  v28[1] = v5;
  v28[2] = v6;
  v28[3] = v7;
  __count = 2048;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v9 = aks_client_connection;
    bzero(__src, 0x800uLL);
    if (OUTLINED_FUNCTION_18_0(v9, 0x3Bu, v28, 4u, v10, v11, v12, v13, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      OUTLINED_FUNCTION_56();
    }

    else if (v3 && v1)
    {
      if (__count)
      {
        v14 = calloc(__count, 1uLL);
        *v3 = v14;
        if (!v14)
        {
          OUTLINED_FUNCTION_17_0();
          goto LABEL_11;
        }

        memcpy(v14, __src, __count);
        v15 = __count;
      }

      else
      {
        v15 = 0;
      }

      OUTLINED_FUNCTION_54(v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v17 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 2580, "", "");
  }

LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

void aks_smartcard_request_unlock()
{
  OUTLINED_FUNCTION_70();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27[1] = *MEMORY[0x277D85DE8];
  v27[0] = v8;
  __count = 2048;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v10 = aks_client_connection;
    bzero(__src, 0x800uLL);
    if (!OUTLINED_FUNCTION_7_1(v10, 0x3Du, v27, 1u, v7, v5, v11, v12, __src, &__count) && __count <= 0x800 && v3 && v1)
    {
      if (__count)
      {
        v13 = calloc(__count, 1uLL);
        *v3 = v13;
        if (!v13)
        {
          OUTLINED_FUNCTION_17_0();
          goto LABEL_11;
        }

        memcpy(v13, __src, __count);
        v14 = __count;
      }

      else
      {
        v14 = 0;
      }

      *v1 = v14;
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 2621, "", "");
  }

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

void aks_smartcard_unlock()
{
  OUTLINED_FUNCTION_5_1();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_53();
  v31[1] = *MEMORY[0x277D85DE8];
  v31[0] = v7;
  v29 = 0;
  v28 = 0;
  bzero(__src, 0x800uLL);
  __count = 2048;
  aks_pack_data(&v29, &v28, 2, v8, v9, v10, v11, v12, v2);
  if (v29)
  {
    aks_client_connection = get_aks_client_connection();
    if (!aks_client_connection)
    {
      v20 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v1, v0, v23, v24, v25, v26, ":", 2652, "", "");
      goto LABEL_12;
    }

    if (OUTLINED_FUNCTION_23(aks_client_connection, 0x3Eu, v31, v14, v29, v28, v15, v16, __src, &__count))
    {
      goto LABEL_12;
    }

    if (__count > 0x800)
    {
      OUTLINED_FUNCTION_56();
      goto LABEL_12;
    }

    if (v6 && v4)
    {
      if (!__count)
      {
        v18 = 0;
        goto LABEL_11;
      }

      v17 = calloc(__count, 1uLL);
      *v6 = v17;
      if (v17)
      {
        memcpy(v17, __src, __count);
        v18 = __count;
LABEL_11:
        OUTLINED_FUNCTION_54(v18);
      }
    }
  }

LABEL_12:
  free(v29);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

uint64_t aks_smartcard_get_sc_usk(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (aks_smartcard_get_foo(der_key_sc_enc_sc_usk, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aks_smartcard_get_foo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v14 = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (a3 && a4 && a5 && a6 && a4 >= 1)
  {
    OUTLINED_FUNCTION_1_5();
    der_dict_iterate();
    if (a2)
    {
      if (*a6 == 8)
      {
        number = der_get_number();
        result = 0;
        *a5 = number;
        goto LABEL_11;
      }
    }

    else
    {
      v11 = ccder_decode_tl();
      if (v11)
      {
        v12 = v11;
        result = 0;
        *a5 = v12;
        *a6 = 0;
        goto LABEL_11;
      }
    }

    result = 0xFFFFFFFFLL;
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_smartcard_get_ec_pub(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (aks_smartcard_get_foo(der_key_sc_auth_eph_pub, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aks_smartcard_get_mode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = aks_smartcard_get_foo(der_key_sc_auth_mode, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

uint64_t aks_smartcard_get_version(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = aks_smartcard_get_foo(der_key_sc_auth_version, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

void _aks_se_get_reset_token_for_memento_secret()
{
  OUTLINED_FUNCTION_70();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v2;
  v30[4] = *MEMORY[0x277D85DE8];
  v30[0] = v1;
  v30[1] = v4;
  v30[2] = v5;
  v30[3] = v6;
  bzero(v29, 0x1000uLL);
  __n[0] = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_1_4(aks_client_connection, 0x48u, v30, 4u, v8, v9, v10, v11, v29, __n))
    {
      if (__n[0] - 4097 < 0xFFFFFFFFFFFFF000)
      {
        OUTLINED_FUNCTION_56();
      }

      else
      {
        v27 = 0u;
        v28 = 0;
        v24 = 0u;
        v25 = 0u;
        __n[1] = der_key_config_se_reset_token;
        v26 = der_key_config_se_slot;
        OUTLINED_FUNCTION_1_5();
        der_dict_iterate();
        if (v24)
        {
          ccder_decode_tl();
        }

        else if (*(&v26 + 1))
        {
          number = der_get_number();
          if (number <= 0xFF)
          {
            *v3 = number;
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v14 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 2923, "", "");
  }

  OUTLINED_FUNCTION_37(v29, __n[0]);
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

void aks_se_get_reset_sig()
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v2);
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_36();
  v45 = *MEMORY[0x277D85DE8];
  *&v44[4091] = v7;
  OUTLINED_FUNCTION_72(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v32, v34, v36, v38);
  if (v1 && v0 && v6 && v4)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_48();
      if (!OUTLINED_FUNCTION_3_2(v15, 0x5Au, &v44[4091], v16, v17, v18, v19, v20, v29, v31))
      {
        v21 = calloc(5uLL, 1uLL);
        *v6 = v21;
        if (v21)
        {
          *v4 = 5;
          v22 = v42;
          v21[4] = v43;
          *v21 = v22;
          v23 = calloc(0xFFBuLL, 1uLL);
          *v1 = v23;
          if (v23)
          {
            *v0 = 4091;
            memcpy(v23, v44, 0x1000uLL);
          }
        }
      }
    }

    else
    {
      v25 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v27, v33, v35, v37, v39, v40, v41, ":", 3021, "", "");
    }
  }

  OUTLINED_FUNCTION_37(&v42, 0x1000uLL);
  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_69();
}

void aks_se_get_reset_pubkey(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v39[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_51();
  v39[0] = v5;
  OUTLINED_FUNCTION_72(v5, v6, v7, v8, v9, v10, v11, v12, v24, v26, v28, v30, v32, v34);
  if (v4 && v2)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_48();
      if (!OUTLINED_FUNCTION_3_2(v13, 0x59u, v39, v14, v15, v16, v17, v18, v25, v27))
      {
        v19 = calloc(0x1000uLL, 1uLL);
        *v4 = v19;
        if (v19)
        {
          *v2 = 4096;
          memcpy(v19, __src, 0x1000uLL);
        }
      }
    }

    else
    {
      v21 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v23, v29, v31, v33, v35, v36, v37, ":", 3053, "", "");
    }
  }

  memset_s(__src, 0x1000uLL, 0, 0x1000uLL);
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38();
}

void aks_se_get_passcode_derivation()
{
  OUTLINED_FUNCTION_5_1();
  v41 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v45 = *MEMORY[0x277D85DE8];
  memset(v44, 0, sizeof(v44));
  v42 = 128;
  v15 = se_derivation_request_serialization_len();
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = OUTLINED_FUNCTION_49();
  bzero(v18, v19);
  if (!se_derivation_request_serialize(v12, v10, v8, v6, v4, v17, v15))
  {
    v43[0] = v14;
    v43[1] = v17;
    v43[2] = v15;
    if (v2)
    {
      v20 = v41;
      if (v41)
      {
        aks_client_connection = get_aks_client_connection();
        if (aks_client_connection)
        {
          if (!OUTLINED_FUNCTION_1_4(aks_client_connection, 0x9Bu, v43, 3u, v22, v23, v24, v25, v44, &v42))
          {
            v26 = calloc(v42, 1uLL);
            *v2 = v26;
            if (v26)
            {
              v27 = v42;
              *v20 = v42;
              memcpy(v26, v44, v27);
            }
          }
        }

        else
        {
          v31 = *MEMORY[0x277D85E08];
          OUTLINED_FUNCTION_0_9();
          fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v34, v35, v36, v37, v38, v39, ":", 3152, "", "");
          OUTLINED_FUNCTION_51();
        }
      }
    }
  }

  v28 = OUTLINED_FUNCTION_49();
  memset_s(v28, v29, 0, v15);
  OUTLINED_FUNCTION_37(v44, v42);
  v30 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

void aks_get_icsc_srp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, void *a24, size_t *a25)
{
  OUTLINED_FUNCTION_5_1();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v68 = *MEMORY[0x277D85DE8];
  v66 = 0;
  v67 = 0;
  v65 = v26;
  bzero(__src, 0x4000uLL);
  v62 = a23;
  __count = 0x4000;
  v59[0] = v40;
  memset(__n, 0, sizeof(__n));
  v59[1] = v38;
  v59[2] = v36;
  v59[3] = v34;
  v59[4] = v32;
  v59[5] = v30;
  v59[6] = v28;
  v60 = a21;
  v61 = a22;
  if (encode_icsc_params_internal(v59, &__n[1], __n) || (v66 = *&__n[1], v67 = __n[0], !a24))
  {
    OUTLINED_FUNCTION_33();
  }

  else
  {
    OUTLINED_FUNCTION_33();
    if (a25)
    {
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        if (!OUTLINED_FUNCTION_1_4(aks_client_connection, 0x9Fu, &v65, 3u, v42, v43, v44, v45, __src, &__count))
        {
          v46 = calloc(__count, 1uLL);
          *a24 = v46;
          if (v46)
          {
            v47 = __count;
            *a25 = __count;
            memcpy(v46, __src, v47);
          }
        }
      }

      else
      {
        v49 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_9();
        fprintf(v50, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v51, v52, v53, v54, v55, v56, v57, ":", 3201, "", "");
      }
    }
  }

  OUTLINED_FUNCTION_37(*&__n[1], __n[0]);
  free(*&__n[1]);
  OUTLINED_FUNCTION_37(__src, __count);
  v48 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

void aks_fv_get_blob_state()
{
  OUTLINED_FUNCTION_74();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v2;
  v5 = v4;
  v57 = *MEMORY[0x277D85DE8];
  v11 = OUTLINED_FUNCTION_50(v1, v4, v2, v6, v7, v8, v9, v10, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v54, v55, v56[0]);
  bzero(v11, v12);
  v53 = v56;
  v54 = &v57;
  v55 = 4096;
  if (v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v22 = aks_client_connection;
      v13 = der_utils_encode_fv_data(&v53);
      if (v13)
      {
        v13 = der_utils_encode_fv_params(&v53);
        if (v13)
        {
          OUTLINED_FUNCTION_2_3();
          v13 = ccder_blob_encode_tl();
          if (v13)
          {
            v13 = OUTLINED_FUNCTION_16_0(v22, 0x55u, v15, v16, v54, &v57 - v54, v19, v20, v56, &v55);
            if (!v13)
            {
              v13 = decode_fv_blob_state(v56);
            }
          }
        }
      }
    }

    else
    {
      v26 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      v13 = fprintf(v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v28, v34, v36, v38, v40, v42, v44, ":", 3262, "", "");
    }
  }

  v23 = OUTLINED_FUNCTION_50(v13, v14, v15, v16, v17, v18, v19, v20, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v53, v54, v55, v56[0]);
  memset_s(v23, v24, 0, 0x1000uLL);
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_73();
}

void aks_fv_get_last_known_gp_state(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v1 = (*(a1 + 40) >> 64) | 0x10;
  }

  aks_fv_get_blob_state();
}

uint64_t aks_fv_get_size(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  input[1] = *MEMORY[0x277D85DE8];
  v4 = 3758097098;
  output = 0;
  input[0] = v5;
  HIDWORD(v56) = 1;
  v11 = OUTLINED_FUNCTION_50(v1, v5, v2, v6, v7, v8, v9, v10, outputStruct, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, inputStruct, v56, v57);
  bzero(v11, v12);
  v54 = &v57;
  inputStruct = &output;
  if (v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v22 = aks_client_connection;
      v13 = der_utils_encode_fv_params(&v54);
      if (v13)
      {
        OUTLINED_FUNCTION_2_3();
        v13 = ccder_blob_encode_tl();
        if (v13)
        {
          v13 = IOConnectCallMethod(v22, 0x4Eu, input, 1u, inputStruct, &output - inputStruct, &output, &v56 + 1, 0, 0);
          v4 = v13;
          if (!v13)
          {
            *v3 = output;
          }
        }
      }
    }

    else
    {
      v27 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      v13 = fprintf(v28, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v29, v35, v37, v39, v41, v43, v45, ":", 3305, "", "");
      v4 = 3758097084;
    }
  }

  else
  {
    v4 = 3758097090;
  }

  v23 = OUTLINED_FUNCTION_50(v13, v14, v15, v16, v17, v18, v19, v20, outputStructa, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v54, inputStruct, v56, v57);
  memset_s(v23, v24, 0, 0x1000uLL);
  v25 = *MEMORY[0x277D85DE8];
  return v4;
}

void aks_fv_import()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v0);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v28[1] = *MEMORY[0x277D85DE8];
  v28[0] = v7;
  bzero(__s, 0x1000uLL);
  v24 = __s;
  v25 = v28;
  v26 = 4096;
  if (v6 && v4)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v9 = aks_client_connection;
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v24))
        {
          if (der_utils_encode_fv_params(&v24))
          {
            OUTLINED_FUNCTION_2_3();
            if (ccder_blob_encode_tl())
            {
              if (!OUTLINED_FUNCTION_23(v9, 0x4Fu, v28, v10, v25, v28 - v25, v11, v12, __s, &v26))
              {
                *&v23 = __s;
                *(&v23 + 1) = &__s[v26];
                OUTLINED_FUNCTION_2_3();
                if (ccder_blob_decode_range())
                {
                  if (v2)
                  {
                    der_utils_decode_fv_data(&v23, 0, v2);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v14 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 3333, "", "");
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

void aks_fv_is_access_token_unbound(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    aks_fv_get_blob_state();
  }

  v2 = *MEMORY[0x277D85DE8];
}

void aks_fv_grant_ownership()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_53();
  v6 = *MEMORY[0x277D85DE8];
  bzero(v5, 0x1000uLL);
  bzero(v4, 0x1000uLL);
  v3[0] = v5;
  v3[1] = &v6;
  v2[0] = v4;
  v2[1] = v5;
  if (der_utils_encode_fv_data(v3))
  {
    if (der_utils_encode_fv_data(v3))
    {
      OUTLINED_FUNCTION_2_3();
      if (ccder_blob_encode_tl())
      {
        if (der_utils_encode_fv_data(v2))
        {
          if (der_utils_encode_fv_data(v2))
          {
            OUTLINED_FUNCTION_2_3();
            if (ccder_blob_encode_tl())
            {
              aks_fv_set_protection();
            }
          }
        }
      }
    }
  }

  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

void aks_fv_sidp_status(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_36();
  v6 = *MEMORY[0x277D85DE8];
  bzero(v5, 0x4000uLL);
  OUTLINED_FUNCTION_15_0();
  aks_fv_set_protection();
  if (!v3)
  {
    if (ccder_decode_sequence_tl() && ccder_decode_tl())
    {
      __memcpy_chk();
      if (v2)
      {
        *v2 = 0;
      }

      if (v1)
      {
        *v1 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_14_1();
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void aks_absinthe_collection()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_46();
  v4 = v3;
  v33[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  bzero(__src, 0x8000uLL);
  v30 = 0;
  __count = 0x8000;
  v29 = 0;
  if (v1)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v13 = aks_client_connection;
      if (v4)
      {
        v14 = v4;
      }

      else
      {
        v14 = "";
      }

      aks_pack_data(&v30, &v29, 2, v8, v9, v10, v11, v12, v14);
      if (!OUTLINED_FUNCTION_23(v13, 0x50u, v33, v15, v30, v29, v16, v17, __src, &__count))
      {
        v18 = calloc(__count, 1uLL);
        *v1 = v18;
        if (v18)
        {
          memcpy(v18, __src, __count);
          *v0 = __count;
        }
      }
    }

    else
    {
      v20 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v23, v24, v25, v26, v27, v28, ":", 3582, "", "");
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  free(v30);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_4_3();
}

uint64_t aks_get_current_sep_measurement()
{
  OUTLINED_FUNCTION_12_0();
  if (v2 && v1 && !aks_get_internal_info_for_key(0xFFFFFFFFLL))
  {
    der_dict_get_data(der_key_sep_measurement);
  }

  free(0);
  return v0;
}

uint64_t aks_get_seconds_since_passcode_change(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_12_0();
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (!aks_get_internal_info_for_key(v4) && der_dict_get_number(der_key_passcode_change_time, v10, v10 + v9, &v8))
  {
    if (a2)
    {
      v5 = time(0);
      v2 = 0;
      v6 = v5 - v8;
      if (v5 <= v8)
      {
        v6 = 0;
      }

      *a2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  free(v10);
  return v2;
}

void aks_get_internal_state(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v36[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33();
  v36[0] = v3;
  OUTLINED_FUNCTION_72(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23, v25, v27, v29, v31);
  if (get_aks_client_connection())
  {
    if (v2)
    {
      OUTLINED_FUNCTION_48();
      if (!OUTLINED_FUNCTION_3_2(v11, 0x8Eu, v36, v12, v13, v14, v15, v16, v22, v24))
      {
        decode_extended_state(v35);
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v26, v28, v30, v32, v33, v34, ":", 3797, "", "");
  }

  OUTLINED_FUNCTION_37(v35, 0x1000uLL);
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38();
}

uint64_t aks_fairplay_wrap()
{
  v22[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_0();
  v22[0] = 266;
  result = (v2 + 6);
  if (v0)
  {
    v4 = v1;
    if (v1)
    {
      v5 = v0;
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v21 = *v4;
        result = OUTLINED_FUNCTION_19(aks_client_connection, 0x68u, v22, 1u, v7, v8, v9, v10, v5, &v21);
        if (!result)
        {
          *v4 = v21;
        }
      }

      else
      {
        v12 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_9();
        fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 3823, "", "");
        result = OUTLINED_FUNCTION_14_1();
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _fairplay_generate_csk_internal()
{
  v23[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_0();
  v23[0] = (v2 << 8) | 1;
  result = (v3 + 6);
  if (v5)
  {
    v6 = v1;
    if (v1)
    {
      OUTLINED_FUNCTION_42();
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v22 = *v6;
        result = OUTLINED_FUNCTION_19(aks_client_connection, 0x68u, v23, 1u, v8, v9, v10, v11, v0, &v22);
        if (!result)
        {
          *v6 = v22;
        }
      }

      else
      {
        v13 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_9();
        fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 3847, "", "");
        result = OUTLINED_FUNCTION_14_1();
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void aks_bak_get_beacon_internal()
{
  OUTLINED_FUNCTION_74();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  bzero(v25, 0x4000uLL);
  v23 = 0x4000;
  v24[0] = 1;
  v24[1] = v5;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_18_0(aks_client_connection, 0x87u, v24, 2u, v7, v8, v9, v10, v25, &v23))
    {
      __memcpy_chk();
      *v3 = 44;
      v11 = calloc(0x2CuLL, 1uLL);
      *v0 = v11;
      if (v11)
      {
        v12 = *v3;
        __memcpy_chk();
      }

      else
      {
        OUTLINED_FUNCTION_17_0();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v14 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 3883, "", "");
  }

  OUTLINED_FUNCTION_52(v25);
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73();
}

uint64_t aks_bak_get_beacon()
{
  OUTLINED_FUNCTION_46();
  v4 = *MEMORY[0x277D85DE8];
  aks_bak_get_beacon_internal();
  if (v0)
  {
    v3 = v0;
  }

  else
  {
    v3 = 3758604312;
  }

  v1 = *MEMORY[0x277D85DE8];
  return v3;
}

void aks_bak_get_swizzler_internal()
{
  OUTLINED_FUNCTION_70();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v35[2] = *MEMORY[0x277D85DE8];
  v35[0] = 2;
  v35[1] = v1;
  bzero(v31, 0xC4uLL);
  bzero(v30, 0x4000uLL);
  v29 = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_1_4(aks_client_connection, 0x87u, v35, 2u, v11, v12, v13, v14, v30, &v29))
    {
      __memcpy_chk();
      v15 = calloc(0x28uLL, 1uLL);
      *v9 = v15;
      if (v15)
      {
        *v7 = 40;
        v16 = *&v31[8];
        v17 = v32;
        v15[4] = v33;
        *v15 = v16;
        *(v15 + 1) = v17;
        v18 = calloc(0x91uLL, 1uLL);
        *v5 = v18;
        if (v18)
        {
          *v3 = 145;
          memcpy(v18, v34, 0x91uLL);
        }
      }
    }
  }

  else
  {
    v20 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v23, v24, v25, v26, v27, v28, ":", 3943, "", "");
  }

  OUTLINED_FUNCTION_52(v30);
  memset_s(v31, 0xC4uLL, 0, 0xC4uLL);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

uint64_t aks_test_stashed_kek(uint64_t a1)
{
  akstest_client_connection = get_akstest_client_connection();
  if (akstest_client_connection)
  {
    return OUTLINED_FUNCTION_16_0(akstest_client_connection, 0xCu, v3, v4, *a1, *(a1 + 8), v5, v6, 0, 0);
  }

  else
  {
    return OUTLINED_FUNCTION_14_1();
  }
}

uint64_t aks_get_dsme_key(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v2;
  OUTLINED_FUNCTION_43(*MEMORY[0x277D85DE8]);
  v6 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = (v1 + 6);
    if (v5 && v4)
    {
      v12 = OUTLINED_FUNCTION_1_4(aks_client_connection, 0x96u, 0, 0, v8, v9, v10, v11, __src, &__count);
      if (v12)
      {
        v6 = v12;
      }

      else
      {
        v13 = calloc(__count, 1uLL);
        *v5 = v13;
        if (v13)
        {
          v14 = __count;
          *v4 = __count;
          memcpy(v13, __src, v14);
          v6 = 0;
        }

        else
        {
          v6 = (v1 + 1);
        }
      }
    }
  }

  else
  {
    v17 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 3992, "", "");
    OUTLINED_FUNCTION_32();
  }

  OUTLINED_FUNCTION_52(__src);
  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

void aks_sealed_hashes_set()
{
  OUTLINED_FUNCTION_5_1();
  v20[1] = *MEMORY[0x277D85DE8];
  if (v1 && v0 <= 0x30)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v3 = aks_client_connection;
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_uint64();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      v5 = v4;
      MEMORY[0x28223BE20](v4);
      v7 = v20 - v6;
      bzero(v20 - v6, v5);
      ccder_encode_raw_octet_string();
      ccder_encode_uint64();
      ccder_encode_raw_octet_string();
      if (ccder_encode_constructed_tl() == v7)
      {
        OUTLINED_FUNCTION_7_1(v3, 0x72u, 0, 0, v7, v5, v8, v9, 0, 0);
      }

      else
      {
        OUTLINED_FUNCTION_17_0();
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      v11 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 4036, "", "");
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
}

void aks_memento_get_state(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v35[1] = *MEMORY[0x277D85DE8];
  v35[0] = v1;
  OUTLINED_FUNCTION_72(v1, v2, v3, v4, v5, v6, v7, v8, v21, v22, v23, v25, v27, v29);
  __n = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v15 = OUTLINED_FUNCTION_3_2(aks_client_connection, 0x8Bu, v35, v10, v11, v12, v13, v14, v34, &__n);
    v16 = __n;
    if (!v15)
    {
      OUTLINED_FUNCTION_33();
      if (v16 - 4097 >= 0xFFFFFFFFFFFFF000)
      {
        decode_memento_state(v34);
        v16 = __n;
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v24, v26, v28, v30, v31, v32, ":", 4130, "", "");
    v16 = 4096;
  }

  OUTLINED_FUNCTION_37(v34, v16);
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38();
}

uint64_t aks_get_cx_window(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v21[512] = *MEMORY[0x277D85DE8];
  v20 = 4096;
  if (v1)
  {
    v2 = v1;
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v4 = aks_client_connection;
      bzero(v21, 0x1000uLL);
      result = OUTLINED_FUNCTION_1_4(v4, 0x98u, 0, 0, v5, v6, v7, v8, v21, &v20);
      if (!result)
      {
        if (v20 == 8)
        {
          result = 0;
          *v2 = v21[0];
        }

        else
        {
          result = OUTLINED_FUNCTION_58();
        }
      }
    }

    else
    {
      v11 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_9();
      fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 4183, "", "");
      result = OUTLINED_FUNCTION_14_1();
    }
  }

  else
  {
    result = 4294967285;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void AKSGetStashStats()
{
  OUTLINED_FUNCTION_70();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v30 = *MEMORY[0x277D85DE8];
  v28 = 4096;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v10 = aks_client_connection;
    bzero(v29, 0x1000uLL);
    if (!OUTLINED_FUNCTION_1_4(v10, 0x9Eu, 0, 0, v11, v12, v13, v14, v29, &v28) && !stash_stats_deserialize(v29, v28, &v25))
    {
      if (v8)
      {
        *v8 = *(&v27 + 1);
      }

      if (v7)
      {
        *v7 = v27;
      }

      if (v5)
      {
        *v5 = *(&v26 + 1);
      }

      if (v3)
      {
        *v3 = v26;
      }
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_9();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 4204, "", "");
  }

  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

uint64_t _copy_cf_key(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v8 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v8))
        {
          return 0xFFFFFFFFLL;
        }

        v5 = OUTLINED_FUNCTION_49();
        if (encode_list_add_number(v5, v6, v7))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        OUTLINED_FUNCTION_49();
        if (encode_list_add_BOOL())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        OUTLINED_FUNCTION_49();
        if (encode_list_add_data())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t aks_stash_destroy_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 128, "", "");
}

uint64_t aks_stash_commit_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 141, "", "");
}

uint64_t aks_stash_enable_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 157, "", "");
}

uint64_t aks_stash_persist_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 173, "", "");
}

uint64_t aks_invalidate_sync_bags_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 565, "", "");
}

uint64_t aks_unload_bag_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 645, "", "");
}

uint64_t aks_unload_session_bags_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 662, "", "");
}

uint64_t aks_change_secret_with_kek_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 718, "", "");
}

uint64_t aks_lock_bag_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 843, "", "");
}

uint64_t _aks_unlock_bag_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 860, "", "");
}

uint64_t _aks_set_system_with_passcode_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1015, "", "");
}

uint64_t aks_assert_hold_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1773, "", "");
}

uint64_t aks_assert_drop_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1791, "", "");
}

uint64_t aks_assert_promote_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1806, "", "");
}

uint64_t aks_oneness_heartbeat_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1826, "", "");
}

uint64_t aks_assert_consume_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1841, "", "");
}

uint64_t _aks_recover_with_escrow_bag_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1858, "", "");
}

uint64_t aks_generation_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1912, "", "");
}

uint64_t aks_register_for_notifications_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2001, "", "");
}

uint64_t aks_clear_backup_bag_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2290, "", "");
}

uint64_t aks_remote_reset_all_peers_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2370, "", "");
}

uint64_t aks_remote_peer_drop_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2459, "", "");
}

uint64_t aks_lock_device_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2474, "", "");
}

uint64_t aks_lock_cx_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2494, "", "");
}

uint64_t aks_unlock_device_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2509, "", "");
}

uint64_t aks_unlock_device_with_acm_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2524, "", "");
}

uint64_t aks_obliterate_class_d_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2547, "", "");
}

uint64_t aks_migrate_s_key_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2559, "", "");
}

uint64_t aks_smartcard_unregister_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2604, "", "");
}

uint64_t aks_se_fail_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2781, "", "");
}

uint64_t aks_se_set_healthy_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2797, "", "");
}

uint64_t __aks_se_set_secret_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2813, "", "");
}

uint64_t aks_se_recover_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2841, "", "");
}

uint64_t aks_se_recover_with_acm_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2857, "", "");
}

uint64_t _aks_change_secret_epilogue_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2883, "", "");
}

uint64_t aks_se_set_nonce_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2999, "", "");
}

uint64_t aks_se_delete_reset_token_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3077, "", "");
}

uint64_t aks_se_support_in_rm_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3094, "", "");
}

uint64_t aks_se_support_in_rm_is_set_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3110, "", "");
}

uint64_t aks_se_stage_stash_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3127, "", "");
}

uint64_t aks_enable_cache_flow_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3225, "", "");
}

uint64_t aks_drop_auxiliary_auth_by_uid_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3642, "", "");
}

uint64_t aks_drop_auxiliary_auth_by_handle_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3658, "", "");
}

uint64_t aks_lower_iteration_count_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3672, "", "");
}

uint64_t aks_reset_iteration_count_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3686, "", "");
}

uint64_t aks_se_secret_drop_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3702, "", "");
}

uint64_t aks_se_memento_secret_drop_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3718, "", "");
}

uint64_t aks_prewarm_sps_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4019, "", "");
}

uint64_t aks_measure_and_seal_cryptex_manifest_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4066, "", "");
}

uint64_t aks_seal_cryptex_manifest_lock_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4080, "", "");
}

uint64_t aks_lkgp_recover_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4096, "", "");
}

uint64_t aks_memento_efface_blob_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4112, "", "");
}

uint64_t aks_set_jcop_supports_updated_kud_policy_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4150, "", "");
}

uint64_t aks_set_cx_window_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4166, "", "");
}

uint64_t get_kcv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(__s, 0, sizeof(__s));
  if (a4 == 3)
  {
    ccsha256_di();
    cchmac();
    v5 = 0;
    *a3 = __s[0];
    *(a3 + 2) = BYTE2(__s[0]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t print_kcv(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v5 = 0;
  get_kcv(a2, a3, &v5, 3);
  return dump_bytes_internal(a1, &v5, 3uLL);
}

uint64_t ascii_hex_to_bytes(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v5 = 0xFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v6 = a1;
    if (a1)
    {
      if (a3 && a4)
      {
        v9 = a2 >> 1;
        v10 = calloc(a2 >> 1, 1uLL);
        if (v10)
        {
          if (a2 >= 2)
          {
            v11 = a2 >> 1;
            v12 = v10;
            do
            {
              v13 = *v6;
              v14 = v13 - 48;
              v15 = v13 - 97;
              if ((v13 - 65) >= 6)
              {
                v16 = -1;
              }

              else
              {
                v16 = v13 - 55;
              }

              v17 = v13 - 87;
              if (v15 > 5)
              {
                v17 = v16;
              }

              if (v14 < 0xA)
              {
                v17 = v14;
              }

              v18 = 16 * v17;
              v19 = v6[1];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = -1;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              *v12++ = v23 | v18;
              v6 += 2;
              --v11;
            }

            while (v11);
          }

          v5 = 0;
          *a3 = v10;
          *a4 = v9;
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return v5;
}

uint64_t fv_init_cred_from_secret(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t copy_raw_secret(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  inited = fv_init_cred_from_secret(&__s, v10, a5);
  if (inited)
  {
    v8 = inited;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

uint64_t wrap_data(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  v60 = *MEMORY[0x277D85DE8];
  HIDWORD(v53) = 0;
  v58 = 0u;
  v59 = 0u;
  __s = 0u;
  v57 = 0u;
  *v54 = 0u;
  v55 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v53) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = generate_wrapping_key_curve25519((a1 + 10), &__s);
        }

        else
        {
          v30 = *(a1 + 6);
          __s = *(a1 + 2);
          v57 = v30;
          v31 = *(a1 + 14);
          v58 = *(a1 + 10);
          v59 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v57;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = firebloom_cbc_one_shot_f(v33, 32, &v58, &firebloom_null_iv, 0x20uLL);
            v35 = OUTLINED_FUNCTION_4_5(v34);
            LODWORD(a1) = REQUIRE_func(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v47 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v47;
            goto LABEL_45;
          }

          LODWORD(v53) = 40;
          if ((a3 & 8) != 0)
          {
            v39 = ccsha256_di();
            v52 = v54;
            OUTLINED_FUNCTION_0_11(v39, v40, &v58);
          }

          OUTLINED_FUNCTION_3_3();
          LODWORD(a1) = rfc3394_wrap_legacy(v41, v42, v43, v44, a4, 0x20u, v45, v46);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = OUTLINED_FUNCTION_5_2();
      LODWORD(a1) = rfc3394_wrapped_size_legacy(v21, v22);
      if (a1)
      {
        OUTLINED_FUNCTION_1_6();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = rfc3394_wrap_legacy(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v53 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v53) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = firebloom_cbc_one_shot_f(v36, 32, (v14 + 3), &firebloom_null_iv, a5);
        v38 = OUTLINED_FUNCTION_4_5(v37);
        LODWORD(a1) = REQUIRE_func(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v47 = HIDWORD(v53);
        goto LABEL_44;
      }

      v28 = OUTLINED_FUNCTION_5_2();
      LODWORD(a1) = rfc3394_wrapped_size_legacy(v28, v29);
      if (a1)
      {
        OUTLINED_FUNCTION_1_6();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          v48 = ccsha256_di();
          v52 = v54;
          OUTLINED_FUNCTION_0_11(v48, v49, (v14 + 3));
          v23 = v54;
        }

        else
        {
          v23 = (v14 + 3);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    OUTLINED_FUNCTION_0_10(a1, a2, a3, a4, a5, a6, a7, a8, v52, v53, v54[0]);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  v50 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t unwrap_data(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), char a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  v56 = *MEMORY[0x277D85DE8];
  HIDWORD(v52) = 0;
  memset(__s, 0, sizeof(__s));
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = OUTLINED_FUNCTION_5_2();
            if (!rfc3394_unwrapped_size_legacy(v15, v16))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_1_6();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v52 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v52) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = firebloom_cbc_one_shot_f(v25, 32, (a1 + 3), &firebloom_null_iv, a5);
              v27 = OUTLINED_FUNCTION_4_5(v26);
              REQUIRE_func(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v52);
              goto LABEL_37;
            }

            v23 = OUTLINED_FUNCTION_5_2();
            if (!rfc3394_unwrapped_size_legacy(v23, v24))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_1_6();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((a3 & 8) != 0)
            {
              v39 = ccsha256_di();
              OUTLINED_FUNCTION_0_11(v39, v40, (a1 + 3));
            }

            OUTLINED_FUNCTION_3_3();
          }

          if (!rfc3394_unwrap_legacy(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }
        }

        goto LABEL_42;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v52) = 32;
    if (*a7 >= 0x20)
    {
      *v53 = 0uLL;
      v54 = 0uLL;
      if ((a3 & 4) != 0)
      {
        if (a5 == 64)
        {
          OUTLINED_FUNCTION_6_1();
          v28 = ccaes_cbc_decrypt_mode();
          v29 = firebloom_cbc_one_shot_f(v28, 32, v53, &firebloom_null_iv, 0x20uLL);
          v30 = OUTLINED_FUNCTION_4_5(v29);
          v31 = REQUIRE_func(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
          goto LABEL_36;
        }
      }

      else if (a5 == 72)
      {
        OUTLINED_FUNCTION_6_1();
        if (a3 < 0)
        {
          goto LABEL_24;
        }

        LODWORD(v52) = 32;
        if ((a3 & 8) != 0)
        {
          v41 = ccsha256_di();
          v51 = __s;
          OUTLINED_FUNCTION_0_11(v41, v42, v53);
        }

        OUTLINED_FUNCTION_3_3();
        v31 = rfc3394_unwrap_legacy(v43, v44, v45, v46, v47, 0x28u, a6, v48);
        if (v31)
        {
          OUTLINED_FUNCTION_0_10(v31, v32, v33, v34, v35, v36, v37, v38, v51, v52, v53[0]);
LABEL_42:
          v8 = 4294967277;
          goto LABEL_37;
        }

LABEL_36:
        OUTLINED_FUNCTION_0_10(v31, v32, v33, v34, v35, v36, v37, v38, v51, v52, v53[0]);
        v8 = 0;
        *a7 = 32;
        goto LABEL_37;
      }
    }

LABEL_40:
    v8 = 4294967285;
  }

LABEL_37:
  if ((a3 & 8) != 0)
  {
    memset_s(__s, 0x20uLL, 0, 0x20uLL);
  }

  v49 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t firebloom_export_pub_key(uint64_t *a1, void *a2, unint64_t *a3)
{
  v6 = *a1;
  v7 = cczp_bitlen();
  v8 = calloc(((v7 + 7) >> 2) | 1, 1uLL);
  if (!v8)
  {
    return 4294967279;
  }

  v9 = v8;
  v10 = *a1;
  v11 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v9;
  *a3 = v11;
  return result;
}

BOOL firebloom_ec_import(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x25F8C34B0](a1, a3, a4, a2))
  {
    return 0;
  }

  v6 = *a1;
  v7 = &a2[3 * **a2];
  return ccn_read_uint() == 0;
}

uint64_t der_get_sizeof(uint64_t a1)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t der_dict_iterate()
{
  OUTLINED_FUNCTION_24();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        OUTLINED_FUNCTION_31_0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t der_dict_find_value(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_10_1();
    der_dict_iterate();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t der_dict_get_number(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    OUTLINED_FUNCTION_11_0();
    der_dict_iterate();
    return 0;
  }

  return result;
}

uint64_t der_get_number()
{
  OUTLINED_FUNCTION_28();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t der_dict_get_data(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_11_0();
    der_dict_iterate();
    return 0;
  }

  return result;
}

__n128 der_utils_decode_implicit_raw_octet_string(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  OUTLINED_FUNCTION_18_1(a1);
  if (OUTLINED_FUNCTION_33_0())
  {
    *a4 = v8;
    *a3 = v9 - v8;
    result = v10;
    *v4 = v10;
  }

  return result;
}

uint64_t der_array_iterate()
{
  OUTLINED_FUNCTION_24();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  OUTLINED_FUNCTION_2_3();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (der_utils_decode_tl(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((der_utils_decode_tl(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t der_utils_decode_tl(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL der_get_BOOL()
{
  OUTLINED_FUNCTION_28();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_6();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_0(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return OUTLINED_FUNCTION_6_2(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return OUTLINED_FUNCTION_6_2(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t encode_list_cstr_get_data()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v13 = *MEMORY[0x277D85DE8];
  v5 = strlen(v4);
  v11 = 0;
  v12 = 0;
  v10[0] = 12;
  v10[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v9 = 0;
    if (encode_list_get_data(v3, v10, 0, &__src, &v9))
    {
      if (v9 == v0)
      {
        memcpy(v1, __src, v0);
        result = 0;
      }

      else
      {
        result = 4294967277;
      }
    }

    else
    {
      result = 4294967293;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t encode_list_merge_dict(uint64_t a1)
{
  if (a1)
  {
    return der_dict_iterate() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t encode_list_dict(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, _qsort_compare);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t encode_list_add_der()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0)
  {
    v6 = v3;
    if (v3)
    {
      if (v4 && v5)
      {
        if (der_get_sizeof(v4) <= (v5 - v4))
        {
          v7 = *(v6 + 1);
          v8 = ccder_sizeof();
          if (!OUTLINED_FUNCTION_27(v8))
          {
            return 4294967279;
          }

          OUTLINED_FUNCTION_14_2();
          if (ccder_blob_encode_body())
          {
            OUTLINED_FUNCTION_7_3();
            OUTLINED_FUNCTION_5_3();
            OUTLINED_FUNCTION_13_1();
            OUTLINED_FUNCTION_5_3();
            if (v9 == v1)
            {
              v10 = OUTLINED_FUNCTION_26();
              if (v10)
              {
                return OUTLINED_FUNCTION_3_4(v10);
              }
            }
          }

          OUTLINED_FUNCTION_12_2();
          free(v1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t encode_list_add_data()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = OUTLINED_FUNCTION_25_0();
    if (OUTLINED_FUNCTION_27(v6))
    {
      OUTLINED_FUNCTION_14_2();
      v7 = ccder_blob_encode_body();
      if (v7 && (OUTLINED_FUNCTION_23_0(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (OUTLINED_FUNCTION_7_3(), OUTLINED_FUNCTION_5_3(), OUTLINED_FUNCTION_13_1(), OUTLINED_FUNCTION_5_3(), v15 == v1) && (v16 = OUTLINED_FUNCTION_26()) != 0)
      {
        return OUTLINED_FUNCTION_3_4(v16);
      }

      else
      {
        OUTLINED_FUNCTION_12_2();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_cstr_add_data()
{
  OUTLINED_FUNCTION_24();
  v5 = *MEMORY[0x277D85DE8];
  v2 = strlen(v1);
  result = 4294967285;
  if (v0 && v2 <= 0x10)
  {
    __memcpy_chk();
    result = encode_list_add_data();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t encode_list_add_BOOL()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v2 + 2;
      v5 = *(v2 + 1);
      ccder_sizeof();
      v6 = OUTLINED_FUNCTION_25_0();
      v7 = OUTLINED_FUNCTION_27(v6);
      if (v7)
      {
        v8 = v7;
        if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (v9 = v4 + *(v3 + 1), ccder_blob_encode_body(), OUTLINED_FUNCTION_8_2(), OUTLINED_FUNCTION_2_3(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_8_2(), v10 == v8) && (v11 = OUTLINED_FUNCTION_26()) != 0)
        {
          return OUTLINED_FUNCTION_3_4(v11);
        }

        else
        {
          OUTLINED_FUNCTION_12_2();
          free(v8);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        return 4294967279;
      }
    }
  }

  return result;
}

uint64_t encode_list_add_number(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v11 = 8;
  }

  else
  {
    v7 = 9;
    v8 = 48;
    v9 = 1;
    while ((v7 - 2) >= 2)
    {
      v10 = a3 >> v8;
      --v7;
      v8 -= 8;
      if (v6 != v10)
      {
        v9 = v7 - 1;
        goto LABEL_8;
      }
    }

    v7 = 2;
LABEL_8:
    if ((((a3 >> (8 * v9 - 8)) ^ v6) & 0x80) != 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  v23[0] = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v13 = a2 + 2;
    v14 = *(a2 + 1);
    ccder_sizeof();
    v15 = ccder_sizeof();
    v16 = calloc(v15, 1uLL);
    if (v16)
    {
      v17 = v16;
      v18 = v11;
      do
      {
        *(v23 + v18 - 1) = v3;
        v3 >>= 8;
        --v18;
      }

      while (v18);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), OUTLINED_FUNCTION_5_3(), OUTLINED_FUNCTION_2_3(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_5_3(), v20 == v17) && OUTLINED_FUNCTION_26())
      {
        result = OUTLINED_FUNCTION_17_1();
        v21[1] = v17;
        v21[2] = v15;
        *v21 = *a1;
        *a1 = v21;
      }

      else
      {
        memset_s(v17, v15, 0, v15);
        free(v17);
        result = 0xFFFFFFFFLL;
      }
    }

    else
    {
      result = 4294967279;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t encode_list_add_string()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0)
  {
    v5 = v3;
    if (v3)
    {
      if (v4)
      {
        strlen(v4);
        v6 = *(v5 + 1);
        ccder_sizeof();
        v7 = OUTLINED_FUNCTION_25_0();
        if (OUTLINED_FUNCTION_27(v7))
        {
          OUTLINED_FUNCTION_14_2();
          if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (OUTLINED_FUNCTION_7_3(), OUTLINED_FUNCTION_5_3(), OUTLINED_FUNCTION_13_1(), OUTLINED_FUNCTION_5_3(), v8 == v1) && (v9 = OUTLINED_FUNCTION_26()) != 0)
          {
            return OUTLINED_FUNCTION_3_4(v9);
          }

          else
          {
            OUTLINED_FUNCTION_12_2();
            free(v1);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return result;
}

uint64_t encode_list_add_list(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (encode_list_dict(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v7 = a2 + 2 + *(a2 + 1);
      v8 = ccder_sizeof();
      v9 = OUTLINED_FUNCTION_27(v8);
      v3 = v9;
      if (v9)
      {
        v15 = v9;
        if (!ccder_blob_encode_body())
        {
          goto LABEL_15;
        }

        v18 = v3;
        v19 = v15;
        v10 = a2 + 2 + *(a2 + 1);
        ccder_blob_encode_body();
        OUTLINED_FUNCTION_8_2();
        v18 = v3;
        v19 = v11;
        OUTLINED_FUNCTION_2_3();
        ccder_blob_encode_tl();
        OUTLINED_FUNCTION_8_2();
        if (v12 != v3)
        {
          goto LABEL_15;
        }

        v13 = OUTLINED_FUNCTION_26();
        if (v13)
        {
          v4 = 0;
          v13[1] = v3;
          v13[2] = 0;
          *v13 = *a1;
          *a1 = v13;
          v3 = 0;
        }

        else
        {
LABEL_15:
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t der_utils_encode_fv_key(uint64_t a1)
{
  v7 = OUTLINED_FUNCTION_18_1(a1);
  if (v2)
  {
    v3 = v2;
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    v6 = *v3;
    v5 = v3[1];
    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v7;
  return 1;
}

uint64_t der_utils_decode_fv_key(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v37 = *a1;
  if (a2)
  {
    v7 = *a1;
    OUTLINED_FUNCTION_4_6();
    v8 = ccder_blob_decode_range();
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v5 = v38;
    v16 = (v39 - v38);
    OUTLINED_FUNCTION_21_0(v8, v9, v10, v11, v12, v13, v14, v15, v37, *(&v37 + 1), v38, v39, v40);
LABEL_4:
    OUTLINED_FUNCTION_4_6();
    v17 = ccder_blob_decode_range();
    if (v17)
    {
      OUTLINED_FUNCTION_21_0(v17, v18, v19, v20, v21, v22, v23, v24, v37, *(&v37 + 1), v38, v39, v40);
      if (v34 <= 4)
      {
        v35 = *v33;
        *a3 = v5;
        *(a3 + 8) = v16;
        *(a3 + 16) = v35;
        *(a3 + 20) = v6;
        return OUTLINED_FUNCTION_6_2(v25, v26, v27, v28, v29, v30, v31, v32, v37);
      }
    }

    return 0;
  }

  LODWORD(v40) = v4;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v37, 4, v5, &v40);
  if (result)
  {
    v16 = v40;
    goto LABEL_4;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_len(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_6();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_0(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return OUTLINED_FUNCTION_6_2(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return OUTLINED_FUNCTION_6_2(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t der_utils_encode_fv_data(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_18_1(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_0(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_0(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_2(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_encode_fv_params(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_18_1(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_0(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_0(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_2(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_decode_fv_params(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_6();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_0(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return OUTLINED_FUNCTION_6_2(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t encode_extended_state()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v18 = 0;
  if (encode_list_add_number(&v18, der_key_state_state, *v2) || encode_list_add_number(&v18, der_key_state_lock_state, v3[1]) || encode_list_add_number(&v18, der_key_state_backoff, *(v3 + 1)) || encode_list_add_number(&v18, der_key_state_failed_attempts, v3[4]) || encode_list_add_number(&v18, der_key_state_generation_state, v3[5]) || encode_list_add_number(&v18, der_key_state_recovery_countdown, *(v3 + 26)) || encode_list_add_number(&v18, der_key_state_more_state, *(v3 + 34)) || encode_list_add_number(&v18, der_key_keybag_handle, *(v3 + 42)) || encode_list_add_number(&v18, der_key_config_max_unlock_attempts, *(v3 + 46)) || (v4 = encode_list_add_data(), v4) || v1 && (encode_list_add_number(&v18, der_key_state_assertion_set, *(v3 + 66)) || encode_list_add_number(&v18, der_key_state_grace_period_enabled, *(v3 + 67)) || encode_list_add_number(&v18, der_key_lock_time, *(v3 + 17)) || (v4 = encode_list_add_number(&v18, der_key_cx_window, *(v3 + 19)), v4)) || (v5 = OUTLINED_FUNCTION_19_0(v4), v5))
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
    OUTLINED_FUNCTION_15_1(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);
  }

  encode_list_free(&v18);
  return v13;
}

uint64_t decode_extended_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x54uLL, 0, 0x54uLL);
        bzero(v8, 0x228uLL);
        v8[4] = der_key_state_lock_state;
        v8[9] = der_key_state_backoff;
        v8[14] = der_key_state_failed_attempts;
        v8[19] = der_key_state_generation_state;
        v8[24] = der_key_state_assertion_set;
        v8[29] = der_key_state_grace_period_enabled;
        v8[34] = der_key_state_recovery_countdown;
        v8[39] = der_key_state_more_state;
        v8[44] = der_key_keybag_handle;
        v8[49] = der_key_config_max_unlock_attempts;
        v8[54] = der_key_config_user_uuid;
        v9[2] = der_key_lock_time;
        v9[7] = der_key_cx_window;
        OUTLINED_FUNCTION_0_12();
        OUTLINED_FUNCTION_34_0();
        *v5 = der_get_number();
        *(v5 + 1) = der_get_number();
        *(v5 + 1) = der_get_number();
        *(v5 + 4) = der_get_number();
        *(v5 + 5) = der_get_number();
        *(v5 + 26) = der_get_number();
        *(v5 + 34) = der_get_number();
        *(v5 + 42) = der_get_number();
        *(v5 + 46) = der_get_number();
        der_utils_decode_implicit_raw_octet_string_copy(v9, 4, v5 + 50, 16);
        v5[66] = der_get_number();
        v5[67] = der_get_number();
        *(v5 + 68) = der_get_number();
        der_get_number();
        result = OUTLINED_FUNCTION_17_1();
        *(v5 + 76) = v6;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t decode_memento_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        OUTLINED_FUNCTION_20_0(v3);
        bzero(v8, 0x98uLL);
        v8[4] = der_key_state_failed_attempts;
        v8[9] = der_key_config_max_unlock_attempts;
        v8[14] = der_key_state_state;
        OUTLINED_FUNCTION_0_12();
        if (OUTLINED_FUNCTION_34_0())
        {
          *v5 = der_get_number();
          v5[1] = der_get_number();
          v5[2] = der_get_number();
          der_get_number();
          result = OUTLINED_FUNCTION_17_1();
          v5[3] = v6;
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t decode_primary_identity_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          OUTLINED_FUNCTION_20_0(v3);
          OUTLINED_FUNCTION_20_0(v8);
          v13 = 0;
          v11[0] = 0u;
          v12 = 0u;
          v15 = 0u;
          v16 = 0u;
          v11[1] = der_key_group_uuid;
          v14 = der_key_uuid;
          OUTLINED_FUNCTION_0_12();
          der_dict_iterate();
          if (der_utils_decode_implicit_raw_octet_string_copy(v11, 4, v7, 16) && der_utils_decode_implicit_raw_octet_string_copy(&v12 + 8, 4, v8, 16))
          {
            result = der_utils_decode_implicit_raw_octet_string_copy(&v16, 4, v9, 16) - 1;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t decode_fv_blob_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x58uLL, 0, 0x58uLL);
        bzero(v9, 0x200uLL);
        v9[4] = der_key_uuid;
        v10[2] = der_key_id;
        v11[2] = der_key_flags;
        v11[7] = der_key_version;
        v11[12] = der_key_state_reserved;
        v13 = der_key_state_failed_attempts;
        v14 = der_key_state_failed_attempts_other;
        v15 = der_key_config_max_unlock_attempts;
        v16 = der_key_state_backoff;
        v17 = der_key_state_backoff_other;
        v18 = der_key_config_capabilities;
        v19 = der_key_state_refcount;
        OUTLINED_FUNCTION_0_12();
        OUTLINED_FUNCTION_34_0();
        *v5 = der_get_number();
        if (!der_utils_decode_implicit_raw_octet_string_copy(v10, 4, v5 + 1, 16) || !der_utils_decode_implicit_raw_octet_string_copy(v11, 4, v5 + 5, 16) || (v5[9] = der_get_number(), v5[10] = der_get_number(), v5[11] = der_get_number(), v5[12] = der_get_number(), v5[15] = der_get_number(), v5[13] = der_get_number(), v5[14] = der_get_number(), !der_utils_decode_implicit_raw_octet_string_copy_partial(&v12)))
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_10;
        }

        v6 = v5[9];
        if ((v6 & 0x400) != 0)
        {
          *(v5 + 9) = der_get_number();
          if ((v5[9] & 0x800) == 0)
          {
            goto LABEL_9;
          }
        }

        else if ((v6 & 0x800) == 0)
        {
LABEL_9:
          result = 0;
          goto LABEL_10;
        }

        der_get_number();
        result = OUTLINED_FUNCTION_17_1();
        v5[20] = v8;
      }
    }
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t encode_pfk_params_public(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = encode_list_cstr_add_data();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = encode_list_cstr_add_data();
      }

      v7 = OUTLINED_FUNCTION_19_0(a1);
      if (!v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_15_1(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v18);
  return v3;
}

uint64_t decode_pfk_params_internal(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        OUTLINED_FUNCTION_9_2();
        if (der_dict_iterate())
        {
          if (!encode_list_cstr_get_data())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!encode_list_cstr_get_data())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  encode_list_free(&v6);
  return v3;
}

uint64_t encode_icsc_params_internal(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v3 = 4294967285;
  v23 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && (v5 = a1[1], encode_list_add_data()) || a1[2] && (v6 = a1[3], encode_list_add_data()) || a1[4] && (v7 = a1[5], encode_list_add_data()) || a1[6] && (v8 = a1[7], encode_list_add_data()) || a1[8] && (v9 = a1[9], encode_list_add_data()) || a1[10] && (v10 = a1[11], encode_list_add_data()))
    {
      v3 = 4294967273;
    }

    else
    {
      v11 = encode_list_dict(&v23, &v21, &v22);
      if (v11)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        OUTLINED_FUNCTION_15_1(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22);
      }
    }
  }

  encode_list_free(&v23);
  return v3;
}

uint64_t decode_icsc_params_internal(int a1, int a2, void *__s)
{
  v73[29] = *MEMORY[0x277D85DE8];
  if (__s)
  {
    memset_s(__s, 0x60uLL, 0, 0x60uLL);
    bzero(v73, 0xE8uLL);
    v72 = der_key_acm_handle;
    v73[4] = der_key_username;
    v73[9] = der_key_label;
    v73[14] = der_key_data;
    v73[19] = der_key_timestamp;
    v73[24] = der_key_public_key;
    v66 = xmmword_25E94A4D0;
    v67 = 0;
    v68 = &v72;
    OUTLINED_FUNCTION_0_12();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_1_7();
    v4 = ccder_blob_decode_range();
    if (v4)
    {
      v12 = OUTLINED_FUNCTION_2_5(v4, v5, v6, v7, v8, v9, v10, v11, 6, 0, 0, &v72, v69, v70, v71);
      *(v13 + 24) = v12;
      *__s = v14;
      __s[1] = v15;
    }

    OUTLINED_FUNCTION_1_7();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      v24 = OUTLINED_FUNCTION_2_5(v16, v17, v18, v19, v20, v21, v22, v23, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      v25[4] = v24;
      __s[2] = v26;
      __s[3] = v27;
    }

    OUTLINED_FUNCTION_1_7();
    v28 = ccder_blob_decode_range();
    if (v28)
    {
      v36 = OUTLINED_FUNCTION_2_5(v28, v29, v30, v31, v32, v33, v34, v35, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      *(v37 + 104) = v36;
      __s[4] = v38;
      __s[5] = v39;
    }

    OUTLINED_FUNCTION_1_7();
    v40 = ccder_blob_decode_range();
    if (v40)
    {
      v48 = OUTLINED_FUNCTION_2_5(v40, v41, v42, v43, v44, v45, v46, v47, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      v49[9] = v48;
      __s[6] = v50;
      __s[7] = v51;
    }

    OUTLINED_FUNCTION_1_7();
    v52 = ccder_blob_decode_range();
    if (v52)
    {
      v60 = OUTLINED_FUNCTION_2_5(v52, v53, v54, v55, v56, v57, v58, v59, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      *(v61 + 184) = v60;
      __s[8] = v62;
      __s[9] = v63;
    }

    OUTLINED_FUNCTION_1_7();
    if (ccder_blob_decode_range())
    {
      result = 0;
      __s[10] = v69;
      __s[11] = (v70 - v69);
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 4294967285;
  }

  v65 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t encode_fv_params_internal(uint64_t a1, void *a2, _DWORD *a3)
{
  v17 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!encode_list_cstr_add_data())
      {
        v5 = encode_list_cstr_add_data();
        if (!v5)
        {
          v6 = OUTLINED_FUNCTION_19_0(v5);
          if (!v6)
          {
            v3 = 0;
            OUTLINED_FUNCTION_15_1(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v17);
  return v3;
}

uint64_t decode_fv_params_internal(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        OUTLINED_FUNCTION_20_0(a3);
        OUTLINED_FUNCTION_9_2();
        if (der_dict_iterate())
        {
          encode_list_cstr_get_data();
          encode_list_cstr_get_data();
          v3 = 0;
        }
      }
    }
  }

  encode_list_free(&v5);
  return v3;
}

uint64_t ref_key_create_request_to_class(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_0_12();
    der_dict_iterate();
    v2 = der_get_number() & 0x1F;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t decode_peer_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  bzero(v11, 0xE8uLL);
  v10 = der_key_peer_unlock_token_status;
  v11[4] = der_key_peer_unwrapped_escrow_record_status;
  v11[9] = der_key_peer_wrapped_escrow_record_status;
  v11[14] = der_key_peer_flags;
  v11[19] = der_key_public_key;
  v12[2] = der_key_peer_kcv;
  v7 = xmmword_25E94A4D0;
  v8 = 0;
  v9 = &v10;
  OUTLINED_FUNCTION_0_12();
  der_dict_iterate();
  *a3 = der_get_number();
  *(a3 + 4) = der_get_number();
  *(a3 + 8) = der_get_number();
  *(a3 + 12) = der_get_number();
  v6 = 65;
  if (der_utils_decode_implicit_raw_octet_string_copy_len(v12, 4, (a3 + 16), &v6))
  {
    *(a3 + 88) = v6;
    result = der_utils_decode_implicit_raw_octet_string_copy(v13, 4, (a3 + 96), 3) - 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *ref_key_op_der_to_enum(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v2 = der_key_op;
      if (der_key_op)
      {
        OUTLINED_FUNCTION_10_1();
        der_dict_iterate();
        v2 = 0;
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *der_utils_decode_implicit_raw_octet_string_alloc(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_6();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  OUTLINED_FUNCTION_21_0(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return OUTLINED_FUNCTION_6_2(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t der_utils_decode_implicit_uint64(__int128 *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = *a1;
  result = OUTLINED_FUNCTION_33_0();
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v7;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t se_derivation_request_serialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_body_tl() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  OUTLINED_FUNCTION_2_3();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t se_derivation_request_deserialize(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v51) = a6;
  *(&v51 + 1) = a6 + a7;
  OUTLINED_FUNCTION_2_3();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = OUTLINED_FUNCTION_31_0(v12, v13, v14, v15, v16, v17, v18, v19, v46, 0, v51);
  v22 = der_utils_decode_implicit_uint64(v20, 0x8000000000000003, v21);
  if (!v22)
  {
    return 4294967277;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_22_0();
    *a5 = v30;
  }

  v31 = OUTLINED_FUNCTION_31_0(v22, v23, v24, v25, v26, v27, v28, v29, v47, v49, v52);
  v33 = der_utils_decode_implicit_uint64(v31, 0x8000000000000002, v32);
  if (!v33)
  {
    return 4294967277;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_22_0();
    *a4 = v41;
  }

  v42 = OUTLINED_FUNCTION_31_0(v33, v34, v35, v36, v37, v38, v39, v40, v48, v50, v53);
  if (!der_utils_decode_implicit_uint64(v42, 0x8000000000000001, v43))
  {
    return 4294967277;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_22_0();
    *a3 = v44;
  }

  OUTLINED_FUNCTION_1_7();
  if (ccder_blob_decode_range())
  {
    v51 = v56;
    if (a1)
    {
      if (a2)
      {
        *a1 = v54;
        *a2 = (v55 - v54);
      }
    }
  }

  if (v51 == *(&v51 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t _qsort_compare(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t _merge_dict_cb_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s bad 1%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 627, "", "");
}

uint64_t _merge_dict_cb_cold_2()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_9();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s fail%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 640, "", "");
}

uint64_t aks_unpack_data(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = (a1 + 1);
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = v11 + 4;
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t stash_stats_deserialize(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000005, a3 + 3) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000004, a3 + 5) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000003, a3 + 2) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000002, a3 + 4) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000001, a3 + 1))
  {
    return 4294967277;
  }

  v4 = der_utils_decode_implicit_uint64(&v6, 0x8000000000000000, a3);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}