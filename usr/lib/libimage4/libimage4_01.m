uint64_t digest_check_buff(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x40)
  {
    return 0;
  }

  else
  {
    return 84;
  }
}

uint64_t digest_init(uint64_t a1, const void *a2, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__n >= 0x41)
  {
    __panic_npx("panic: digest length overflow: actual = %lu, expected <= %lu", a2, __n, a4, a5, a6, a7, a8, __n);
  }

  memcpy((a1 + 8), a2, __n);
  *(a1 + 72) = __n;
  return a1;
}

void *digest_init_measure(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 >= 0x41uLL)
  {
    __panic_npx("panic: digest length overflow: actual = %lu, expected <= %lu", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  v11 = *a3;
  v10 = a3[1];
  ccdigest();
  a1[9] = *a2;
  *a1 = a2;
  return a1;
}

uint64_t digest_copy(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 72);
  if (v8 < 0x41)
  {
    return digest_init(result, (a2 + 8), v8, a4, a5, a6, a7, a8);
  }

  __break(0x5519u);
  return result;
}

uint64_t digest_compare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2 == *(a2 + 72))
  {
    return memcmp((a1 + 8), (a2 + 8), v2);
  }

  else
  {
    return 1;
  }
}

uint64_t digest_compare_buff(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 72) == a3)
  {
    return memcmp((a1 + 8), a2, a3);
  }

  else
  {
    return 1;
  }
}

unint64_t digest_print_cstr(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 72);
  if (v8 < 0x41)
  {
    return sprintdgst_npx(a2, (result + 8), v8, a4, a5, a6, a7, a8);
  }

  __break(0x5519u);
  return result;
}

void *digest_copy_out(uint64_t a1, void *__dst, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  v10 = *(a1 + 72);
  if (v9 < v10)
  {
LABEL_6:
    __panic_npx("panic: digest length overflow: actual = %lu, expected >= %lu", __dst, v10, a4, a5, a6, a7, a8, v9);
  }

  if (v10 > 0x40 || (result = memcpy(__dst, (a1 + 8), v10), v9 = *a3, v13 = *(a1 + 72), v13 > *a3))
  {
    __break(0x5519u);
    goto LABEL_6;
  }

  *a3 = v13;
  return result;
}

void *digest_copy_out32(uint64_t a1, void *__dst, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  v10 = *(a1 + 72);
  if (v10 > v9)
  {
LABEL_7:
    __panic_npx("panic: digest length overflow: actual = %u, expected >= %lu", __dst, v10, a4, a5, a6, a7, a8, v9);
  }

  if (v10 > 0x40)
  {
    goto LABEL_6;
  }

  result = memcpy(__dst, (a1 + 8), v10);
  v13 = *(a1 + 72);
  if (HIDWORD(v13))
  {
    v14 = *(a1 + 72);
    __panic_npx("panic: integer cast overflow: v = %s, actual = %llu, expected <= %llu", __dst, v10, a4, a5, a6, a7, a8, "d->d_len");
  }

  v9 = *a3;
  if (v13 > v9)
  {
LABEL_6:
    __break(0x5519u);
    goto LABEL_7;
  }

  *a3 = v13;
  return result;
}

uint64_t *__select_ap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v7[0] = "AP-SECURE-BOOT";
  v7[1] = 1;
  v7[2] = expert_query_chip(v5, 0);
  v7[3] = _img4_chip_ap_reduced;
  v7[4] = _img4_chip_ap_reduced;
  v7[5] = 0;
  result = image4_coprocessor_select_digest(a1, &__select_ap_digest_map);
  if (!result)
  {
    return image4_coprocessor_select_secure_boot(a1, v7, a3);
  }

  return result;
}

uint64_t *__select_ap_pdi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = "PDI-VMA2";
  v6[1] = 2;
  v6[2] = _image4_coprocessor_vma2;
  v6[3] = 1;
  v6[4] = 0xAAAAAAAAAAAAAAAALL;
  v6[5] = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = "PDI-DIGEST";
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = _chip_ap_pdi_sha2_384;
  v5[4] = 0xAAAAAAAAAAAAAAAALL;
  v5[5] = 0xAAAAAAAAAAAAAAAALL;
  result = image4_coprocessor_select(a1, v6, a3);
  if (!result)
  {
    return image4_coprocessor_select_digest(a1, v5);
  }

  return result;
}

uint64_t __select_ap_acdc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = "ACDC-VMA2";
  v4[1] = 2;
  v4[2] = _image4_coprocessor_vma2;
  v4[3] = 3;
  v4[4] = 0xAAAAAAAAAAAAAAAALL;
  v4[5] = 0xAAAAAAAAAAAAAAAALL;
  return image4_coprocessor_select(a1, v4, a3);
}

uint64_t *__select_ap_ddi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = "PDI-VMA2";
  v6[1] = 2;
  v6[2] = _image4_coprocessor_vma2;
  v6[3] = 2;
  v6[4] = 0xAAAAAAAAAAAAAAAALL;
  v6[5] = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = "PDI-DIGEST";
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = _chip_ap_ddi_sha2_384;
  v5[4] = 0xAAAAAAAAAAAAAAAALL;
  v5[5] = 0xAAAAAAAAAAAAAAAALL;
  result = image4_coprocessor_select(a1, v6, a3);
  if (!result)
  {
    return image4_coprocessor_select_digest(a1, v5);
  }

  return result;
}

uint64_t fourcc_init(uint64_t result, unsigned int a2)
{
  *result = a2;
  if (result + 4 > (result + 9))
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 4) = 0;
    *(result + 4) = bswap32(a2);
  }

  return result;
}

size_t fourcc_init_cstring(uint64_t a1, char *__s)
{
  result = strlen(__s);
  if (result != 4)
  {
    __panic_npx_4(result, v5, v6, v7, v8, v9, v10, v11, result);
  }

  if (__s + 5 < __s)
  {
    __break(0x5519u);
  }

  else
  {
    *a1 = bswap32(*__s);
    strlcpy((a1 + 4), __s, 5uLL);
    return a1;
  }

  return result;
}

void __panic_npx_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  v10 = &a9;
  vsnprintf(__str, 0x800uLL, "panic: cstring is not a fourcc: length = %lu", &a9);
  _os_crash();
  __break(1u);
}

uint64_t fourcc_copy(uint64_t result, unsigned int *a2)
{
  v2 = *a2;
  *result = *a2;
  if (result + 4 > (result + 9))
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 4) = 0;
    *(result + 4) = bswap32(v2);
  }

  return result;
}

char *__select_pdi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  chip = expert_query_chip(*(a3 + 8), 0);
  if (!*(chip + 72))
  {
    return 0;
  }

  if (*(chip + 64))
  {
    return _chip_vma2_clone_pdi;
  }

  return _chip_vma2_pdi;
}

char *__select_ddi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  chip = expert_query_chip(*(a3 + 8), 0);
  if (!*(chip + 72))
  {
    return 0;
  }

  if (*(chip + 64))
  {
    return _chip_vma2_clone_ddi;
  }

  return _chip_vma2_ddi;
}

uint64_t zcmp_npx(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result;
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    v5 = v4 < 0 ? -1 : result;
    result = v3 >= 1 ? 1 : v5;
    if (v3)
    {
      break;
    }

    if (!--a2)
    {
      return 0;
    }
  }

  return result;
}

unint64_t strtou32_npx(const char *a1, char **a2, int a3)
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

const char *strsuf_npx(const char *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = &a1[strlen(a1) - v4];
  if (v5 < a1 || strcmp(v5, __s))
  {
    return 0;
  }

  return v5;
}

uint64_t _boot_flash_secondary_enforceable(uint64_t *a1, uint64_t a2)
{
  if (odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    v11 = *(a2 + 16);
    if (*(v11 + 80))
    {
      if (!*(v11 + 88))
      {
        if (manifest_get_restore_info(*(a2 + 8), v4, v5, v6, v7, v8, v9, v10))
        {
          v29 = *(a2 + 144);
          v30 = *a2;
          name = chip_get_name(*(a2 + 16));
          v32 = *a1;
          if (v29)
          {
            v37 = *a1;
            expert_log(v30, 1uLL, "odometer[%s:%s]: policy is enforceable", v13, v14, v15, v16, v17, name);
            return 0;
          }

          v33 = name;
          v39 = *a1;
          v18 = "odometer[%s:%s]: manifest has no constraint for policy";
        }

        else
        {
          v30 = *a2;
          v33 = chip_get_name(*(a2 + 16));
          v38 = *a1;
          v18 = "odometer[%s:%s]: boot object has no restore info";
        }

        v21 = 1;
        v27 = v30;
        goto LABEL_8;
      }

      v12 = *a2;
      v33 = chip_get_name(v11);
      v34 = *a1;
      v18 = "odometer[%s:%s]: chip is not secondary-stage dfu policy";
    }

    else
    {
      v12 = *a2;
      v33 = chip_get_name(v11);
      v36 = *a1;
      v18 = "odometer[%s:%s]: chip has no associated dfu policy";
    }

    v21 = 1;
    v27 = v12;
LABEL_8:
    expert_log(v27, 1uLL, v18, v13, v14, v15, v16, v17, v33);
    return v21;
  }

  v19 = *a2;
  v20 = chip_get_name(*(a2 + 16));
  v35 = *a1;
  v21 = 1;
  expert_log(v19, 1uLL, "odometer[%s:%s]: chip has no property for policy", v22, v23, v24, v25, v26, v20);
  return v21;
}

uint64_t _boot_flash_secondary_enforce(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74[3] = *MEMORY[0x29EDCA608];
  if (!*(a2 + 144))
  {
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v67);
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = v11[20];
  v13 = *(a2 + 24);
  memset(v74, 0, 24);
  memset(v73, 0, sizeof(v73));
  memset(v72, 0, sizeof(v72));
  v14 = *a2;
  restore_info = manifest_get_restore_info(v10, a2, a3, a4, a5, a6, a7, a8);
  if (!restore_info)
  {
    __panic_npx("panic: boot object has no restore info", v16, v17, v18, v19, v20, v21, v22, v67);
  }

  restore_info_nonce = odometer_query_restore_info_nonce(a2, restore_info, v74);
  if (restore_info_nonce)
  {
    v24 = restore_info_nonce;
    v25 = *a2;
    name = chip_get_name(*(a2 + 16));
    v68 = *a1;
    expert_log(v25, 0, "odometer[%s:%s]: failed to query restore info nonce: %d", v27, v28, v29, v30, v31, name);
  }

  else
  {
    v39 = expert_entangle_nonce(v14, v11, v13, v74, v73);
    if (v39)
    {
      v24 = v39;
      v40 = *a2;
      v41 = chip_get_name(*(a2 + 16));
      v69 = *a1;
      expert_log(v40, 0, "odometer[%s:%s]: failed to entangle nonce: %d", v42, v43, v44, v45, v46, v41);
    }

    else
    {
      odometer_compute_nonce_hash(v14, v11, v73, v72);
      if (!property_constrain_digest(v12, v14, a2 + 64, v72, v47, v48, v49, v50))
      {
        v60 = *a2;
        v61 = chip_get_name(*(a2 + 16));
        v71 = *a1;
        expert_log(v60, 1uLL, "odometer[%s:%s]: manifest is current", v62, v63, v64, v65, v66, v61);
        v24 = 0;
        goto LABEL_10;
      }

      v24 = *(a1 + 6);
      v51 = *a2;
      v52 = chip_get_name(*(a2 + 16));
      v70 = *a1;
      expert_log(v51, 0, "odometer[%s:%s]: manifest inconsistent with restore info: %d", v53, v54, v55, v56, v57, v52);
    }
  }

  if (v24 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v32, v33, v34, v35, v36, v37, v38, v24);
  }

LABEL_10:
  v58 = *MEMORY[0x29EDCA608];
  return v24;
}

uint64_t closure_init(uint64_t result, void *a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = *a2;
  strcpy((result + 24), "qinuuniq");
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  return result;
}

void *_closure_set_unique_tags(void *result, uint64_t a2, uint64_t a3)
{
  result[5] = a2;
  result[6] = a3;
  result[7] = _unique_entry_get_tag;
  return result;
}

uint64_t closure_measure(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v10 = _closure_compute_internal(a1, v25, &v27, a4, a5, a6, a7, a8);
  if (v10)
  {
    v28 = v25;
    buff_destroy(&v28);
    if (v10 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v11, v12, v13, v14, v15, v16, v17, v10);
    }
  }

  else
  {
    v18 = (*(*(a1 + 8) + 48))();
    digest_init_measure(a2, v18, v27, v19, v20, v21, v22, v23);
    v28 = v25;
    buff_destroy(&v28);
  }

  return v10;
}

uint64_t closure_compute(uint64_t **a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    a3 = &v9;
  }

  return _closure_compute_internal(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _closure_compute_internal(uint64_t **a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v133[1] = *MEMORY[0x29EDCA608];
  v8 = a1[2];
  v9 = *a1;
  v10 = *(*a1 + 264);
  v132 = 0;
  v133[0] = 0;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v127[1] = 0;
  v127[2] = 0;
  v126 = 0;
  v127[0] = _closure_manifest_property_callback;
  v124 = 0;
  v125 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  if (!v10)
  {
LABEL_97:
    __panic_npx("panic: closure measurement requires a parsed manifest", a2, a3, a4, a5, a6, a7, a8, v119);
  }

  alloc_preference = _type_get_alloc_preference(&_image4_type_decode_context);
  if (alloc_preference <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = alloc_preference;
  }

  if (v22 == 1)
  {
    goto LABEL_9;
  }

  if (v22 != 2)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", v15, v16, v17, v18, v19, v20, v21, "_t_preference");
  }

  v23 = _expert_alloc_type(v8, &_image4_type_decode_context);
  if (!v23)
  {
LABEL_9:
    size = type_get_size(&_image4_type_decode_context);
    v33 = MEMORY[0x2A1C7C4A8](size, v26, v27, v28, v29, v30, v31, v32);
    v24 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v33 >= 0x31)
    {
      v34 = v33 - 48;
    }

    else
    {
      v34 = 0;
    }

    memset(v24 + 48, 170, v34);
    *v24 = 0u;
    *(v24 + 1) = 0u;
    *(v24 + 2) = 0u;
  }

  else
  {
    v24 = v23;
    v133[0] = v23;
  }

  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *v24 = 0u;
  v35 = a1[1];
  v36 = **a1;
  strcpy(&v119, "PNAMMANP");
  BYTE9(v119) = 0;
  WORD5(v119) = 0;
  v128 = a1;
  *&v129 = chip_select_decode(v35);
  if (!v129)
  {
    v51 = 82;
    expert_log(a1[2], 0, "chip environment not booted: %s: %d", v37, v38, v39, v40, v41, a1[1][1]);
LABEL_19:
    expert_log(a1[2], 0, "failed to initialize compute context: %d", v57, v58, v59, v60, v61, v51);
    _expert_dealloc_type(v8, &_image4_type_decode_context, v133);
    goto LABEL_68;
  }

  v42 = closure_node_new_item(a1, &v119);
  if (!v42)
  {
    v51 = 12;
    expert_log(a1[2], 0, "failed to add MANP node: %d", v44, v45, v46, v47, v48, 12);
    goto LABEL_19;
  }

  *(v24 + 5) = &v128;
  *&v131 = 0;
  *(&v131 + 1) = &v131;
  *&v130 = 0;
  *(&v130 + 1) = v42;
  *(&v129 + 1) = 0;
  LODWORD(v132) = -1;
  closure_node_add(v42, &v131, v43, v44, v45, v46, v47, v48);
  v49 = Img4DecodePerformManifestTrustEvaluationWithCallbacks((v9 + 9), v127, v129, v24);
  if (v49)
  {
    v50 = v49;
    v51 = posixdr(v49);
    expert_log(a1[2], 0, "Img4DecodePerformManifestTrustEvaluation: %d", v52, v53, v54, v55, v56, v50);
    goto LABEL_67;
  }

  v62 = Img4DecodeIterateObjectItems(v9 + 9, &v128 + 2, v127, v24);
  if (v62)
  {
    v63 = v62;
    v51 = posixdr(v62);
    expert_log(a1[2], 0, "Img4DecodeIterateObjectItems: %d", v64, v65, v66, v67, v68, v63);
    goto LABEL_67;
  }

  v69 = v131;
  if (!v131)
  {
LABEL_46:
    Single = DEREncoderCreateSingle(0);
    v126 = Single;
    if (!Single)
    {
      v51 = 12;
      expert_log(a1[2], 0, "failed to allocate item sequence encoder: %d", v77, v78, v79, v80, v81, 12);
      goto LABEL_67;
    }

    v82 = Single;
    v83 = &v131;
    while (1)
    {
      v83 = *v83;
      if (!v83)
      {
        break;
      }

      v84 = closure_node_encode_item(v83, v82);
      if (v84)
      {
        switch(v84)
        {
          case 1:
            v51 = 22;
            break;
          case 2:
            v51 = 12;
            break;
          case 3:
            v51 = 104;
            break;
          default:
            v51 = 14;
            break;
        }

        expert_log(*(*(v83 + 1) + 16), 0, "%s: failed to encode item node: %d", v85, v86, v87, v88, v89, v83 + 28);
        goto LABEL_67;
      }
    }

    Image4Dictionary = DEREncoderCreateImage4Dictionary("MANB", v82, &v125);
    if (Image4Dictionary > 1)
    {
      if (Image4Dictionary == 3)
      {
        v51 = 104;
        goto LABEL_79;
      }

      if (Image4Dictionary == 2)
      {
        v51 = 12;
        goto LABEL_79;
      }

LABEL_73:
      v51 = 14;
      goto LABEL_79;
    }

    if (Image4Dictionary)
    {
      if (Image4Dictionary == 1)
      {
        v51 = 22;
LABEL_79:
        expert_log(a1[2], 0, "DEREncoderCreateImage4Dictionary: %d", v91, v92, v93, v94, v95, Image4Dictionary);
        goto LABEL_67;
      }

      goto LABEL_73;
    }

    v111 = _closure_create_image4_manifest(a1, v125, &v124);
    if (v111 > 1)
    {
      if (v111 == 3)
      {
        v51 = 104;
        goto LABEL_67;
      }

      if (v111 == 2)
      {
        v51 = 12;
        goto LABEL_67;
      }

LABEL_83:
      v51 = 14;
      goto LABEL_67;
    }

    if (v111)
    {
      if (v111 == 1)
      {
        v51 = 22;
        goto LABEL_67;
      }

      goto LABEL_83;
    }

    v112 = DEREncoderCreateEncodedBuffer(v124, &v123, &v122);
    if (v112 > 1)
    {
      if (v112 == 3)
      {
        v51 = 104;
        goto LABEL_95;
      }

      if (v112 == 2)
      {
        v51 = 12;
        goto LABEL_95;
      }
    }

    else
    {
      if (!v112)
      {
        v121 = v123;
        inited = buff_init_xfer(a2, &v121, v122, &_buff_destructor_free, 0);
        v51 = 0;
        *a3 = inited;
        goto LABEL_67;
      }

      if (v112 == 1)
      {
        v51 = 22;
LABEL_95:
        expert_log(a1[2], 0, "DEREncoderCreateEncodedBuffer: %d", v113, v114, v115, v116, v117, v112);
        goto LABEL_67;
      }
    }

    v51 = 14;
    goto LABEL_95;
  }

  while (1)
  {
    v119 = *(v69 + 40);
    v120 = *(v69 + 56);
    v70 = v130;
    if (v130)
    {
      v71 = *(&v129 + 1);
      if (!*(&v129 + 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v70 = a1[5];
      v71 = a1[6];
      if (!v71)
      {
LABEL_33:
        expert_log(*(*(v69 + 8) + 16), 2uLL, "%s: tag not in unique list", a4, a5, a6, a7, a8, v69 + 28);
LABEL_34:
        v74 = 0;
        goto LABEL_35;
      }
    }

    v72 = v70 + 4 * v71;
    v73 = v70;
    while (1)
    {
      if (v73 && (v73 >= v72 || v73 < v70))
      {
        goto LABEL_96;
      }

      if ((a1[7])(v73) == *(v69 + 24))
      {
        break;
      }

      v73 += 4;
      v71 = (v71 - 1);
      if (!v71)
      {
        goto LABEL_33;
      }
    }

    expert_log(*(*(v69 + 8) + 16), 2uLL, "%s: found unique tag", a4, a5, a6, a7, a8, v69 + 28);
    if (!v73)
    {
      goto LABEL_34;
    }

    if (v73 >= v72 || v73 < v70)
    {
LABEL_96:
      __break(0x5519u);
      goto LABEL_97;
    }

    v120 = 5;
    v74 = &v119;
LABEL_35:
    v75 = closure_node_encode_property(v69, v74);
    if (v75)
    {
      break;
    }

    v69 = *v69;
    if (!v69)
    {
      goto LABEL_46;
    }
  }

  switch(v75)
  {
    case 1:
      v51 = 22;
      break;
    case 2:
      v51 = 12;
      break;
    case 3:
      v51 = 104;
      break;
    default:
      v51 = 14;
      break;
  }

  expert_log(*(*(v69 + 8) + 16), 0, "%s: failed to encode property node: %d", a4, a5, a6, a7, a8, v69 + 28);
LABEL_67:
  _expert_dealloc_type(v8, &_image4_type_decode_context, v133);
  closure_node_list_destroy(a1, &v131, v96, v97, v98, v99, v100, v101);
LABEL_68:
  DEREncoderDestroyAndZero(&v126);
  DEREncoderDestroyAndZero(&v125);
  DEREncoderDestroyAndZero(&v124);
  if (v51 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v102, v103, v104, v105, v106, v107, v108, v51);
  }

  v109 = *MEMORY[0x29EDCA608];
  return v51;
}

uint64_t _closure_manifest_property_callback(unsigned int a1, uint64_t *a2, int a3, uint64_t a4)
{
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v7 = *(a4 + 40);
  v8 = *v7;
  fourcc_init(&v56, a1);
  if (a3 == 1)
  {
    fourcc_init(&v54, *(v7 + 8));
  }

  v14 = v8 + 64;
  result = expert_log(*(v8 + 16), 2uLL, "recording property for closure computation: %s%s%s", v9, v10, v11, v12, v13, &v54 + 4);
  if (*(v8 + 24) == a1)
  {
    if (v8 >= v14)
    {
      goto LABEL_31;
    }

    v61 = 0;
    v60 = 0;
    PropertyData = Img4DecodeGetPropertyData(a2, a1, &v60, &v61);
    if (PropertyData)
    {
      expert_log(*(v8 + 16), 0, "Img4DecodeGetPropertyData: %d", v17, v18, v19, v20, v21, PropertyData);
      v22 = 96;
LABEL_29:
      *(v7 + 64) = v22;
      return 0xFFFFFFFFLL;
    }

    v23 = v61;
    if ((v61 & 3) != 0)
    {
      expert_log(*(v8 + 16), 0, "invalid unique tag list: actual length = %u, expected %% %lu == 0", v17, v18, v19, v20, v21, v61);
      v22 = 94;
      goto LABEL_29;
    }

    v53 = a2;
    v24 = v61 >> 2;
    result = expert_log(*(v8 + 16), 1uLL, "found unique tag list: cnt = %u", v17, v18, v19, v20, v21, v24);
    if ((v23 >> 2) > v61 >> 2)
    {
      goto LABEL_31;
    }

    v25 = v60;
    *(v7 + 24) = v24;
    *(v7 + 32) = v25;
    *(v8 + 56) = _unique_entry_get_tag_swapped;
    if (v23)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(v7 + 32);
        v29 = v28 + 4 * *(v7 + 24);
        v59 = 0;
        v58 = 0;
        if (v28 > v28 + v26 || v28 + v26 + 4 > v29)
        {
          goto LABEL_31;
        }

        fourcc_init(&v58, bswap32(*(v28 + 4 * v27)));
        result = expert_log(*(v8 + 16), 2uLL, "unique tag entry[%zu] = %s", v31, v32, v33, v34, v35, v27++);
        v26 += 4;
      }

      while (v24 != v27);
    }

    a2 = v53;
  }

  if (*(v7 + 8) != *(v7 + 12))
  {
    if (v8 >= v14)
    {
LABEL_31:
      __break(0x5519u);
      return result;
    }

    v36 = closure_node_new_item(v8, &v54);
    if (!v36)
    {
      v22 = 12;
      goto LABEL_29;
    }

    v43 = v36;
    result = closure_node_add(v36, v7 + 48, v37, v38, v39, v40, v41, v42);
    *(v7 + 12) = *(v7 + 8);
    *(v7 + 40) = v43;
  }

  if (v8 >= v14)
  {
    goto LABEL_31;
  }

  v44 = closure_node_new(*(v7 + 40), v8, &v56, a2);
  if (!v44)
  {
    *(v7 + 64) = 12;
    expert_log(*(v8 + 16), 0, "failed to allocate closure node", v46, v47, v48, v49, v50, v52);
    return 0xFFFFFFFFLL;
  }

  v51 = v44;
  if (!a3)
  {
    manifest_property_callback(*v8, 0, a1, a2, v47, v48, v49, v50, v52);
  }

  closure_node_add(v51, v7 + 48, v45, v46, v47, v48, v49, v50);
  return 0;
}

uint64_t _closure_create_image4_manifest(uint64_t a1, uint64_t **a2, void *a3)
{
  v50 = 0;
  Single = DEREncoderCreateSingle(0);
  v51 = Single;
  if (Single)
  {
    v12 = Single;
    v13 = DEREncoderAddImage4Tag(Single, "IM4M");
    if (v13)
    {
      v19 = v13;
      expert_log(*(a1 + 16), 0, "DEREncoderAddImage4Tag: IM4M: %d", v14, v15, v16, v17, v18, v13);
LABEL_7:
      v21 = v19;
      goto LABEL_8;
    }

    v22 = DEREncoderAddUInt(v12, 0);
    if (v22)
    {
      v19 = v22;
      expert_log(*(a1 + 16), 0, "DEREncoderAddUInt: manifest version: %d", v23, v24, v25, v26, v27, v22);
      goto LABEL_7;
    }

    v29 = DEREncoderAddSetFromEncoder(a2, v12);
    if (v29)
    {
      v35 = v29;
      expert_log(*(a1 + 16), 0, "DEREncoderAddSetFromEncoder: %d", v30, v31, v32, v33, v34, v29);
      v21 = v35;
    }

    else
    {
      v36 = DEREncoderCreateSingle(v29);
      v50 = v36;
      if (v36)
      {
        v42 = v36;
        v43 = DEREncoderAddSequenceFromEncoder(v12, v36);
        if (v43)
        {
          v49 = v43;
          expert_log(*(a1 + 16), 0, "DEREncoderAddSequenceFromEncoder: %d", v44, v45, v46, v47, v48, v43);
          v21 = v49;
        }

        else
        {
          v21 = 0;
          *a3 = v42;
          v50 = 0;
        }
      }

      else
      {
        expert_log(*(a1 + 16), 0, "DEREncoderCreate: %d", v37, v38, v39, v40, v41, 0);
        v21 = 0;
      }
    }
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = 2;
    expert_log(v20, 0, "DEREncoderCreate: %d", v7, v8, v9, v10, v11, 2);
  }

LABEL_8:
  DEREncoderDestroyAndZero(&v51);
  DEREncoderDestroyAndZero(&v50);
  return v21;
}

uint64_t img4_nonce_domain_get_from_handle(unsigned int a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return _cryptex1_domains[a1];
  }
}

uint64_t _chip_expert_query_property_BOOL(uint64_t a1, uint64_t a2, uint64_t *a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == &_property_iuob)
  {

    return expert_compute_eieiou_BOOL(a1, a2, a4);
  }

  else
  {
    v10 = **(a1 + 16);
    if (chip_instance_check(v10, a3, a3, a4, a5, a6, a7, a8))
    {
      chip_instance_get_BOOL(v10, a3, a4, v11, v12, v13, v14, v15);
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t _chip_expert_query_property_uint32(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = **(a1 + 16);
  if (!chip_instance_check(v10, a3, a3, a4, a5, a6, a7, a8))
  {
    return 2;
  }

  chip_instance_get_uint32(v10, a3, a4, v11, v12, v13, v14, v15);
  return 0;
}

uint64_t _chip_expert_query_property_uint64(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = **(a1 + 16);
  if (!chip_instance_check(v10, a3, a3, a4, a5, a6, a7, a8))
  {
    return 2;
  }

  chip_instance_get_uint64(v10, a3, a4, v11, v12, v13, v14, v15);
  return 0;
}

uint64_t _chip_expert_query_property_digest(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = **(a1 + 16);
  if (!chip_instance_check(v10, a3, a3, a4, a5, a6, a7, a8))
  {
    return 2;
  }

  chip_instance_get_digest(v10, a3, a4, v11, v12, v13, v14, v15);
  return 0;
}

uint64_t _chip_expert_query_property_version(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = **(a1 + 16);
  if (!chip_instance_check(v10, a3, a3, a4, a5, a6, a7, a8))
  {
    return 2;
  }

  chip_instance_get_version(v10, a3, a4, v11, v12, v13, v14, v15);
  return 0;
}

void __panic_npx_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  v10 = &a9;
  vsnprintf(__str, 0x800uLL, "panic: should never be called", &a9);
  _os_crash();
  __break(1u);
}

uint64_t *closure_node_list_destroy(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *a2;
  v18 = result;
  if (result)
  {
    do
    {
      v10 = *result;
      closure_node_remove(result, a2, a3, a4, a5, a6, a7, a8);
      closure_node_destroy(&v18, v11, v12, v13, v14, v15, v16, v17);
      v18 = v10;
      result = v10;
    }

    while (v10);
  }

  return result;
}

uint64_t closure_node_remove(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = expert_log(*(a1[1] + 16), 2uLL, "%s: removing node", a4, a5, a6, a7, a8, a1 + 28);
  v11 = *a2;
  if (*a2 == a1)
  {
    v14 = *v11;
    *a2 = v14;
    v12 = a2;
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  do
  {
    v12 = v11;
    v11 = *v11;
  }

  while (v11 != a1);
  v13 = *v11;
  *v12 = v13;
  if (!v13)
  {
LABEL_4:
    a2[1] = v12;
  }

LABEL_5:
  *a1 = 0;
  return result;
}

uint64_t *closure_node_destroy(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  v12 = v8;
  if (v8)
  {
    if (*v8)
    {
      __panic_npx("panic: closure node deallocated while still in list", a2, a3, a4, a5, a6, a7, a8, v11);
    }

    v9 = result;
    v10 = *(*(v8 + 8) + 16);
    DEREncoderDestroyAndZero((v8 + 64));
    result = _expert_dealloc_type(v10, &_image4_type_closure_node, &v12);
    *v9 = 0;
  }

  return result;
}

void *closure_node_new(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v8 = _expert_alloc_type(*(a2 + 16), &_image4_type_closure_node);
  v14 = v8;
  if (v8)
  {
    *v8 = 0;
    v8[1] = a2;
    v8[2] = a1;
    fourcc_copy((v8 + 3), a3);
    v15 = *(a4 + 16);
    *(v14 + 5) = *a4;
    v14[7] = v15;
    v14[8] = 0;
  }

  else
  {
    expert_log(*(a2 + 16), 0, "failed to allocate node", v9, v10, v11, v12, v13, v17);
  }

  return v14;
}

uint64_t closure_node_new_item(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 16);
  v16 = 0;
  v5 = _expert_alloc_type(v4, &_image4_type_closure_node);
  v17 = v5;
  if (!v5)
  {
    v14 = "failed to allocate item node";
LABEL_6:
    expert_log(*(a1 + 16), 0, v14, v6, v7, v8, v9, v10, v16);
    _expert_dealloc_type(v4, &_image4_type_closure_node, &v17);
    DEREncoderDestroyAndZero(&v16);
    return v17;
  }

  v11 = v5;
  Single = DEREncoderCreateSingle(1);
  v16 = Single;
  if (!Single)
  {
    v14 = "failed to allocate DER encoder";
    goto LABEL_6;
  }

  v13 = Single;
  v11[1] = a1;
  v11[2] = 0;
  fourcc_copy((v11 + 3), a2);
  v11[5] = 0;
  v11[6] = 0;
  v11[7] = 0;
  v11[8] = v13;
  return v11;
}

uint64_t closure_node_add(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a1[2])
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18[14] = v10;
    v18[15] = v10;
    v18[12] = v10;
    v18[13] = v10;
    v18[10] = v10;
    v18[11] = v10;
    v18[8] = v10;
    v18[9] = v10;
    v18[6] = v10;
    v18[7] = v10;
    v18[4] = v10;
    v18[5] = v10;
    v18[2] = v10;
    v18[3] = v10;
    v18[0] = v10;
    v18[1] = v10;
    _closure_node_get_value_string(a1, 0, v18, a4, a5, a6, a7, a8);
    result = expert_log(*(a1[1] + 16), 2uLL, "%s: inserting node: %s", v11, v12, v13, v14, v15, a1 + 28);
  }

  else
  {
    result = expert_log(*(a1[1] + 16), 2uLL, "%s: inserting item node", a4, a5, a6, a7, a8, a1 + 28);
  }

  *a1 = 0;
  **(a2 + 8) = a1;
  *(a2 + 8) = a1;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

char *_closure_node_get_value_string(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[13] = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 24);
  *v30 = xmmword_298EF8E10;
  memset(&v30[2], 170, 88);
  memset(__n, 0, sizeof(__n));
  *v28 = 0;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (a1 + 40);
  }

  v12 = v11[2];
  if (v12 <= 3)
  {
    if (v12 == 1)
    {
      if (Img4DecodeGetPropertyBoolean(v11, v10, v30))
      {
        snprintf(a3, 0x100uLL, "[error decoding BOOL %d]");
      }

      else
      {
        snprintf(a3, 0x100uLL, "%d");
      }

      goto LABEL_20;
    }

    if (v12 == 2)
    {
      if (Img4DecodeGetPropertyInteger64(v11, v10, v30, a4, a5, a6, a7, a8))
      {
        snprintf(a3, 0x100uLL, "[error decoding uint %d]");
      }

      else
      {
        snprintf(a3, 0x100uLL, "0x%llx");
      }

      goto LABEL_20;
    }

LABEL_26:
    __panic_npx("panic: unreachable case: %s = 0x%llx", v10, a3, a4, a5, a6, a7, a8, "i4p->type");
  }

  if (v12 == 4)
  {
    if (Img4DecodeGetPropertyData(v11, v10, v28, __n))
    {
      snprintf(a3, 0x100uLL, "[error decoding data %d]");
    }

    else if (*__n < 0x41u)
    {
      digest_init(&__n[4], *v28, *__n, v13, v14, v15, v16, v17);
      digest_print_cstr(&__n[4], a3, v22, v23, v24, v25, v26, v27);
    }

    else
    {
      snprintf(a3, 0x100uLL, "<data: %u bytes>");
    }

    goto LABEL_20;
  }

  if (v12 != 5)
  {
    goto LABEL_26;
  }

  strcpy(a3, "<null>");
LABEL_20:
  v18 = 0;
  do
  {
    if (v18 == 256)
    {
      __break(0x5519u);
    }
  }

  while (a3[v18++]);
  v20 = *MEMORY[0x29EDCA608];
  return a3;
}

uint64_t closure_node_encode_property(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  cstring = fourcc_get_cstring(a1 + 24);
  if (*(a1 + 16))
  {
    v10 = cstring;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[14] = v11;
    v21[15] = v11;
    v21[12] = v11;
    v21[13] = v11;
    v21[10] = v11;
    v21[11] = v11;
    v21[8] = v11;
    v21[9] = v11;
    v21[6] = v11;
    v21[7] = v11;
    v21[4] = v11;
    v21[5] = v11;
    v21[2] = v11;
    v21[3] = v11;
    if (!a2)
    {
      a2 = (a1 + 40);
    }

    v21[0] = v11;
    v21[1] = v11;
    _closure_node_get_value_string(a1, a2, v21, v5, v6, v7, v8, v9);
    v12 = *(*(a1 + 16) + 64);
    v20 = a2[2];
    expert_log(*(*(a1 + 8) + 16), 2uLL, "%s: encoding closure property: p = %s, item = %s, type = %llx, val = %s", v13, v14, v15, v16, v17, a1 + 28);
    result = DEREncoderAddImage4Property(v12, v10, a2);
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

size_t closure_node_encode_item(void *a1, uint64_t *a2)
{
  cstring = fourcc_get_cstring((a1 + 3));
  if (a1[2])
  {
    return 0;
  }

  v11 = cstring;
  expert_log(*(a1[1] + 16), 2uLL, "%s: encoding closure item: %s", v5, v6, v7, v8, v9, a1 + 28);
  v12 = a1[8];

  return DEREncoderEncodeImage4Dictionary(a2, v11, v12);
}

uint64_t odometer_policy_get_chip_property(uint64_t result, unint64_t a2)
{
  v2 = *(result + 16);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = a2 + v2;
  if (v3 < a2 + 264 && v3 >= a2)
  {
    return *v3;
  }

  __break(0x5519u);
  return result;
}

uint64_t odometer_policy_enforce(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1];
  if (v10)
  {
    if (v10 == 2)
    {
      if (*(a2 + 440) == 1 && *(a2 + 968) == 1)
      {
        v11 = *a2;
        name = chip_get_name(*(a2 + 16));
        v33 = *a1;
        v17 = "odometer[%s:%s]: manifest has mix-n-match entitlement and environment allows mix-n-match; relaxing chain integrity policy";
        goto LABEL_11;
      }

      if (expert_query_chip_boot(*a2, *(a2 + 16)))
      {
        v11 = *a2;
        name = chip_get_name(*(a2 + 16));
        v34 = *a1;
        v17 = "odometer[%s:%s]: expert does not boot chip; relaxing chain integrity policy";
        goto LABEL_11;
      }
    }

    else
    {
      if (v10 != 1)
      {
        v37 = a1[1];
        __panic_npx_3(a1, a2, a3, a4, a5, a6, a7, a8, "odp->odp_type");
      }

      if (odometer_check_fuse(a2, &_odometer_cylinder_mixn_match, a3, a4, a5, a6, a7, a8))
      {
        v11 = *a2;
        name = chip_get_name(*(a2 + 16));
        v32 = *a1;
        v17 = "odometer[%s:%s]: environment allows mix-n-match; relaxing chain integrity policy";
LABEL_11:
        v18 = v11;
LABEL_16:
        expert_log(v18, 1uLL, v17, v12, v13, v14, v15, v16, name);
        return 0;
      }
    }
  }

  if (*(a2 + 441) == 1)
  {
    if (odometer_check_fuse(a2, &_odometer_cylinder_mixn_match, a3, a4, a5, a6, a7, a8))
    {
      v19 = "odometer[%s:%s]: environment allows mix-n-match; relaxing all odometer policy";
LABEL_15:
      v20 = *a2;
      name = chip_get_name(*(a2 + 16));
      v35 = *a1;
      v18 = v20;
      v17 = v19;
      goto LABEL_16;
    }

    if (*(a2 + 442) == 1 && *(a2 + 440) == 1)
    {
      v19 = "odometer[%s:%s]: manifest self-entitled for mix-n-match; relaxing all odometer policy";
      goto LABEL_15;
    }

    v22 = "odometer[%s:%s]: enforcing strict mix-n-match behavior";
  }

  else
  {
    v22 = "odometer[%s:%s]: mix-n-match god mode not set; enforcing strict mix-n-match behavior";
  }

  v23 = *a2;
  v24 = chip_get_name(*(a2 + 16));
  v36 = *a1;
  expert_log(v23, 1uLL, v22, v25, v26, v27, v28, v29, v24);
  v30 = a1[5];

  return v30(a1, a2);
}

uint64_t _buff_destructor_free_prepare(void *a1, rsize_t __n)
{
  result = memset_s(a1, __n, 0, __n);
  if (result)
  {
    __panic_npx("panic: memset_s: %d", v3, v4, v5, v6, v7, v8, v9, result);
  }

  return result;
}

void *buff_init_xfer(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  *a2 = 0;
  *result = v5;
  result[1] = a3;
  result[2] = a4;
  result[4] = a5;
  *a2 = *(a4 + 8);
  return result;
}

void *buff_init_wrap(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = &_buff_destructor_wrap;
  result[4] = 0;
  return result;
}

void *buff_init_alias(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = &_buff_destructor_null;
  result[4] = 0;
  return result;
}

void *buff_init_xfer_signed(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    __panic_npx("panic: integer cast underflow: v = %s, actual = %lld, expected >= 0", a2, a3, a4, a5, a6, a7, a8, "len");
  }

  v8 = *a2;
  *a2 = 0;
  *result = v8;
  result[1] = a3;
  result[2] = a4;
  result[4] = a5;
  *a2 = *(a4 + 8);
  return result;
}

uint64_t *buff_init_wrap_signed(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    __panic_npx("panic: integer cast underflow: v = %s, actual = %lld, expected >= 0", a2, a3, a4, a5, a6, a7, a8, "len");
  }

  *result = a2;
  result[1] = a3;
  result[2] = &_buff_destructor_wrap;
  result[4] = 0;
  return result;
}

void *buff_xfer(void *result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2 >= *a2 + 1)
  {
    __break(0x5519u);
  }

  else
  {
    v4 = v2[1];
    v3 = v2[2];
    v5 = v2[4];
    v6 = *v2;
    *v2 = 0;
    *result = v6;
    result[1] = v4;
    result[2] = v3;
    result[4] = v5;
    *v2 = *(v3 + 8);
    v2[2] = 0;
    *a2 = 0;
  }

  return result;
}

void *buff_borrow(void *result, void *a2)
{
  *result = *a2;
  result[2] = &_buff_destructor_loanee;
  v2 = a2[2];
  result[1] = a2[1];
  a2[2] = &_buff_destructor_loan;
  a2[3] = v2;
  return result;
}

uint64_t buff_return(uint64_t result, void **a2)
{
  v2 = *a2;
  *(result + 16) = *(result + 24);
  *(result + 24) = 0;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = &_buff_destructor_null;
  *a2 = 0;
  return result;
}

unint64_t buff_lockdown(unint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  result = **a1;
  if (result > result + v4[1] || (v6 = v4[4], result = (*(v4[2] + 16))(), v4[2] = &_buff_destructor_static, v4 >= v4 + 5))
  {
    __break(0x5519u);
  }

  else
  {
    v7 = *v4;
    v8 = *(v4 + 1);
    *(a2 + 32) = v4[4];
    *a2 = v7;
    *(a2 + 16) = v8;
    *a1 = 0;
    return v4;
  }

  return result;
}

void *buff_copy_out(void *result, void *__dst, size_t *a3)
{
  v4 = *a3;
  v5 = result[1];
  if (v4 < v5)
  {
    return 0;
  }

  v6 = __dst;
  v7 = result;
  if (*result <= *result + v5)
  {
    result = memcpy(__dst, *result, v5);
    v8 = v7[1];
    if (v8 <= *a3)
    {
      *a3 = v8;
      if (v8)
      {
        return v6;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t buff_get_length_signed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 8);
  if (result < 0)
  {
    __panic_npx("panic: length not expressible as ssize_t: %lu", a2, a3, a4, a5, a6, a7, a8, result);
  }

  return result;
}

unint64_t buff_get_length_uint32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 8);
  if (HIDWORD(result))
  {
    __panic_npx("panic: length not expressible as unsigned 32-bit integer: %lu", a2, a3, a4, a5, a6, a7, a8, result);
  }

  return result;
}

void *buff_destroy(void *result)
{
  v1 = *result;
  if (*result)
  {
    if (v1 < v1 + 5)
    {
      v2 = result;
      v3 = v1[2];
      if (!v3)
      {
LABEL_6:
        *v2 = 0;
        return result;
      }

      v5 = *v1;
      v4 = v1[1];
      if (*v1 <= (*v1 + v4))
      {
        v6 = v1[4];
        (*(v3 + 24))(*v1, v1[1], v6);
        result = (*(v1[2] + 32))(v5, v4, v6);
        v1[2] = &_buff_destructor_panic;
        goto LABEL_6;
      }
    }

    __break(0x5519u);
  }

  return result;
}

void *_restore_runtime_alloc(uint64_t a1, int64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, a2, 0x8A375538uLL);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, a2, 0x8709206FuLL);
    if (!result)
    {
      _darwin_runtime_alloc_cold_1(&v5, v6);
    }
  }

  if (a2 < 1)
  {
    __break(0x5519u);
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void __panic_npx_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  v10 = &a9;
  vsnprintf(__str, 0x800uLL, "panic: function should never be called: %s", &a9);
  _os_crash();
  __break(1u);
}

uint64_t _BootPolicyClosureComputeDigest_1(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(*(a5 + 32) + 16);
  if (*v9 > a4)
  {
    v11 = *v9;
    __panic_npx_0(v9, a2, a1, a4, a5, a6, a7, a8, a4);
  }

  ccdigest();
  return 0;
}

uint64_t img4_nonce_domain_copy_nonce(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = generic_expert_specialist();
  v25 = 0u;
  memset(v28, 0, sizeof(v28));
  v27 = 0u;
  v26 = 0u;
  v24 = 1;
  DWORD1(v25) = *(a1 + 8);
  memset(&v23[1], 0, 76);
  v23[0] = 1;
  *&v23[5] = DWORD1(v25);
  v22 = 77;
  result = dylib_expert_call_method(v4, 7uLL, &v24, 0x4DuLL, v23, &v22);
  if (result)
  {
    if (result == 45)
    {
      v11 = 19;
    }

    else
    {
      v11 = result;
    }

    v12 = expert_log(v4, 0, "img4_nonce_domain_copy_nonce: %d", v6, v7, v8, v9, v10, v11);
    if (v11 >= 0x6B)
    {
      __panic_npx_2(v12, v13, v14, v15, v16, v17, v18, v19, v11);
    }

    goto LABEL_9;
  }

  *a2 = 0;
  v20 = *&v23[73];
  if (*&v23[73] <= 0x30u)
  {
    memcpy((a2 + 2), &v23[9], *&v23[73]);
    v11 = 0;
    *(a2 + 52) = v20;
LABEL_9:
    v21 = *MEMORY[0x29EDCA608];
    return v11;
  }

  __break(0x5519u);
  return result;
}

uint64_t img4_nonce_domain_roll_nonce(uint64_t a1)
{
  v2 = generic_expert_specialist();
  v24 = 1;
  v3 = *(a1 + 8);
  v25 = 0;
  v26 = v3;
  v21 = 1;
  v22 = 0;
  v23 = v3;
  v20 = 9;
  v4 = dylib_expert_call_method(v2, 9uLL, &v24, 9uLL, &v21, &v20);
  if (!v4)
  {
    return 0;
  }

  if (v4 == 45)
  {
    v10 = 19;
  }

  else
  {
    v10 = v4;
  }

  v11 = expert_log(v2, 0, "img4_nonce_domain_roll_nonce: %d", v5, v6, v7, v8, v9, v10);
  if (v10 >= 0x6B)
  {
    __panic_npx_2(v11, v12, v13, v14, v15, v16, v17, v18, v10);
  }

  return v10;
}

uint64_t img4_nonce_domain_preroll_nonce(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = generic_expert_specialist();
  v29 = 0u;
  v35 = 0;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v28 = 1;
  HIDWORD(v29) = *(a1 + 8);
  v24 = 0u;
  v27 = 0;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 1;
  HIDWORD(v24) = HIDWORD(v29);
  v22 = 105;
  result = dylib_expert_call_method(v4, 0xBuLL, &v28, 0x69uLL, &v23, &v22);
  if (result)
  {
    if (result == 45)
    {
      v11 = 19;
    }

    else
    {
      v11 = result;
    }

    v12 = expert_log(v4, 0, "img4_nonce_domain_preroll_nonce: %d", v6, v7, v8, v9, v10, v11);
    if (v11 >= 0x6B)
    {
      __panic_npx_2(v12, v13, v14, v15, v16, v17, v18, v19, v11);
    }

    goto LABEL_9;
  }

  *a2 = 0;
  v20 = v26;
  if (v26 <= 0x30)
  {
    memcpy((a2 + 2), v25, v26);
    v11 = 0;
    *(a2 + 52) = v20;
LABEL_9:
    v21 = *MEMORY[0x29EDCA608];
    return v11;
  }

  __break(0x5519u);
  return result;
}

uint64_t img4_nonce_domain_peek_nonce(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = generic_expert_specialist();
  v25 = 0u;
  memset(v28, 0, sizeof(v28));
  v27 = 0u;
  v26 = 0u;
  v24 = 1;
  DWORD1(v25) = *(a1 + 8);
  memset(&v23[1], 0, 76);
  v23[0] = 1;
  *&v23[5] = DWORD1(v25);
  v22 = 77;
  result = dylib_expert_call_method(v4, 8uLL, &v24, 0x4DuLL, v23, &v22);
  if (result)
  {
    if (result == 45)
    {
      v11 = 19;
    }

    else
    {
      v11 = result;
    }

    v12 = expert_log(v4, 0, "img4_nonce_domain_peek_nonce: %d", v6, v7, v8, v9, v10, v11);
    if (v11 >= 0x6B)
    {
      __panic_npx_2(v12, v13, v14, v15, v16, v17, v18, v19, v11);
    }

    goto LABEL_9;
  }

  *a2 = 0;
  v20 = *&v23[73];
  if (*&v23[73] <= 0x30u)
  {
    memcpy((a2 + 2), &v23[9], *&v23[73]);
    v11 = 0;
    *(a2 + 52) = v20;
LABEL_9:
    v21 = *MEMORY[0x29EDCA608];
    return v11;
  }

  __break(0x5519u);
  return result;
}

char *image4_environment_get_firmware_chip(unsigned int a1, uint64_t a2)
{
  if (a1 > 0x7CF)
  {
    return 0;
  }

  result = image4_environment_resolve(a2);
  if (result == _img4_chip_x86_software_8012)
  {
    return 0;
  }

  return result;
}

char **property_find_from_expert(char **result)
{
  v1 = &__expert_properties[result];
  if (v1 < __chpld_ap_pdi_sha2_384 && v1 >= __expert_properties)
  {
    return *v1;
  }

  __break(0x5519u);
  return result;
}

uint64_t property_find_entitlement(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[0] = _property_filter_manifest;
  v12[1] = 0;
  v12[2] = -1;
  do
  {
    v9 = property_iterator_next(v12, a2, a3, a4, a5, a6, a7, a8);
    v10 = v9;
    if (!v9)
    {
      return v10;
    }

    result = _property_filter_expert(v9);
  }

  while (result || *(v10 + 24) != *a1);
  if (v10 < v10 + 104)
  {
    return v10;
  }

  __break(0x5519u);
  return result;
}

uint64_t property_find_from_fourcc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[0] = 0;
  v13[1] = 0;
  v13[2] = -1;
  if (a2 == 1)
  {
    v9 = _property_filter_object;
  }

  else
  {
    if (a2)
    {
      goto LABEL_6;
    }

    v9 = _property_filter_manifest;
  }

  v13[0] = v9;
  while (1)
  {
LABEL_6:
    v10 = property_iterator_next(v13, a2, a3, a4, a5, a6, a7, a8);
    v11 = v10;
    if (!v10)
    {
      return v11;
    }

    result = _property_filter_constraint(v10);
    if (result)
    {
      result = _property_filter_anti_replay(v11);
      if (result)
      {
        continue;
      }
    }

    if (*(v11 + 24) == *a1)
    {
      break;
    }
  }

  if (v11 < v11 + 104)
  {
    return v11;
  }

  __break(0x5519u);
  return result;
}

BOOL property_equal(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == a2 || *(a1 + 8) == a2 || *(a2 + 8) == a1)
  {
    return 1;
  }

  return *(a2 + 24) == *(a1 + 24);
}

BOOL property_equal_fourcc(_BOOL8 result, int a2)
{
  if (result)
  {
    return *(result + 24) == a2;
  }

  return result;
}

BOOL property_imposable(uint64_t a1, uint64_t a2)
{
  digest = chip_get_digest(a2);
  if (digest && (digest == a1 || *(a1 + 8) == digest || digest[1] == a1 || *(digest + 6) == *(a1 + 24)))
  {
    return 1;
  }

  if (*(a1 + 16) == 34 || *(a1 + 48) == &_property_constraint_rp)
  {
    return 0;
  }

  return chip_check_entitlement(a2, a1) != 0;
}

uint64_t property_constrain_BOOL(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *(a1 + 48);
  v11 = *v10;
  if (*v10 > 3)
  {
    if (v11 > 5)
    {
      if (v11 == 6)
      {
        goto LABEL_34;
      }

      if (v11 == 8)
      {
        __panic_npx("panic: property is not constrainable: %s", a2, a3, a4, a5, a6, a7, a8, *a1);
      }
    }

    else
    {
      if (v11 == 4)
      {
        v12 = v8 < v9;
        if (v8 >= v9)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      if (v11 == 5)
      {
        v12 = v8 == v9;
        if (v8 != v9)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_46;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      v12 = v8 != v9;
      if (v8 == v9)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    if (v11 == 1)
    {
      if (v8 < v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0xFFFFFFFFLL;
      }

      if (!v12)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

LABEL_46:
    v16 = "p->p_constraint->pc_code";
LABEL_45:
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, v16);
  }

  if (v11 != 2)
  {
    if (v11 == 3)
    {
      v12 = v8 <= v9;
      if (v8 > v9)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    goto LABEL_46;
  }

  if (v8 <= v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_34:
    v14 = *(a1 + 56);
    if (v14 <= 1)
    {
      if (v14 <= 1)
      {
LABEL_42:
        v20 = v10[1];
        v22 = *a4;
        v18 = *a3;
        expert_log(a2, 1uLL, "%s: enforcing[%s %s %s]: 0x%x %s 0x%x: success", a4, a5, a6, a7, a8, a1 + 28);
        return 0;
      }
    }

    else if ((v14 - 2) < 2 || v14 == 6)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

LABEL_28:
  v13 = *(a1 + 56);
  if (v13 > 1)
  {
    if ((v13 - 2) < 2 || v13 == 6)
    {
      goto LABEL_40;
    }

LABEL_44:
    v16 = "p->p_container";
    goto LABEL_45;
  }

  if (v13 > 1)
  {
    goto LABEL_44;
  }

LABEL_40:
  v21 = *a4;
  v17 = *a3;
  v19 = v10[1];
  expert_log(a2, 0, "%s: enforcing[%s %s %s]: 0x%x %s 0x%x: %d", a4, a5, a6, a7, a8, a1 + 28);
  return v12;
}

uint64_t property_constrain_uint32(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *(a1 + 48);
  v11 = *v10;
  if (*v10 > 3)
  {
    if (v11 > 5)
    {
      if (v11 == 6)
      {
        goto LABEL_34;
      }

      if (v11 == 8)
      {
        __panic_npx("panic: property is not constrainable: %s", a2, a3, a4, a5, a6, a7, a8, *a1);
      }
    }

    else
    {
      if (v11 == 4)
      {
        v12 = v8 < v9;
        if (v8 >= v9)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      if (v11 == 5)
      {
        v12 = v8 == v9;
        if (v8 != v9)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_46;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      v12 = v8 != v9;
      if (v8 == v9)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    if (v11 == 1)
    {
      if (v8 < v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0xFFFFFFFFLL;
      }

      if (!v12)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

LABEL_46:
    v16 = "p->p_constraint->pc_code";
LABEL_45:
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, v16);
  }

  if (v11 != 2)
  {
    if (v11 == 3)
    {
      v12 = v8 <= v9;
      if (v8 > v9)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    goto LABEL_46;
  }

  if (v8 <= v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_34:
    v14 = *(a1 + 56);
    if (v14 <= 1)
    {
      if (v14 <= 1)
      {
LABEL_42:
        v20 = v10[1];
        v22 = *a4;
        v18 = *a3;
        expert_log(a2, 1uLL, "%s: enforcing[%s %s %s]: 0x%x %s 0x%x: success", a4, a5, a6, a7, a8, a1 + 28);
        return 0;
      }
    }

    else if ((v14 - 2) < 2 || v14 == 6)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

LABEL_28:
  v13 = *(a1 + 56);
  if (v13 > 1)
  {
    if ((v13 - 2) < 2 || v13 == 6)
    {
      goto LABEL_40;
    }

LABEL_44:
    v16 = "p->p_container";
    goto LABEL_45;
  }

  if (v13 > 1)
  {
    goto LABEL_44;
  }

LABEL_40:
  v21 = *a4;
  v17 = *a3;
  v19 = v10[1];
  expert_log(a2, 0, "%s: enforcing[%s %s %s]: 0x%x %s 0x%x: %d", a4, a5, a6, a7, a8, a1 + 28);
  return v12;
}

uint64_t property_constrain_uint64(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *(a1 + 48);
  v11 = *v10;
  if (*v10 > 3)
  {
    if (v11 > 5)
    {
      if (v11 == 6)
      {
        goto LABEL_34;
      }

      if (v11 == 8)
      {
        __panic_npx("panic: property is not constrainable: %s", a2, a3, a4, a5, a6, a7, a8, *a1);
      }
    }

    else
    {
      if (v11 == 4)
      {
        v12 = v8 < v9;
        if (v8 >= v9)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      if (v11 == 5)
      {
        v12 = v8 == v9;
        if (v8 != v9)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_46;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      v12 = v8 != v9;
      if (v8 == v9)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    if (v11 == 1)
    {
      if (v8 < v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0xFFFFFFFFLL;
      }

      if (!v12)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

LABEL_46:
    v16 = "p->p_constraint->pc_code";
LABEL_45:
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, v16);
  }

  if (v11 != 2)
  {
    if (v11 == 3)
    {
      v12 = v8 <= v9;
      if (v8 > v9)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    goto LABEL_46;
  }

  if (v8 <= v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_34:
    v14 = *(a1 + 56);
    if (v14 <= 1)
    {
      if (v14 <= 1)
      {
LABEL_42:
        v19 = v10[1];
        v17 = *a3;
        expert_log(a2, 1uLL, "%s: enforcing[%s %s %s]: 0x%llx %s 0x%llx: success", a4, a5, a6, a7, a8, a1 + 28);
        return 0;
      }
    }

    else if ((v14 - 2) < 2 || v14 == 6)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

LABEL_28:
  v13 = *(a1 + 56);
  if (v13 > 1)
  {
    if ((v13 - 2) < 2 || v13 == 6)
    {
      goto LABEL_40;
    }

LABEL_44:
    v16 = "p->p_container";
    goto LABEL_45;
  }

  if (v13 > 1)
  {
    goto LABEL_44;
  }

LABEL_40:
  v20 = *a4;
  v18 = v10[1];
  expert_log(a2, 0, "%s: enforcing[%s %s %s]: 0x%llx %s 0x%llx: %d", a4, a5, a6, a7, a8, a1 + 28);
  return v12;
}

BOOL property_constrain_digest(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = *MEMORY[0x29EDCA608];
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  digest_print_cstr(a3, v48, a3, a4, a5, a6, a7, a8);
  digest_print_cstr(a4, v46, v12, v13, v14, v15, v16, v17);
  v18 = digest_compare(a3, a4);
  v26 = v18;
  v27 = *(a3 + 72);
  v28 = *(a4 + 72);
  v29 = *(a1 + 48);
  v30 = *v29;
  if (*v29 <= 4)
  {
    if (v30)
    {
      if ((v30 - 1) < 4)
      {
        __panic_npx("panic: non-sensical property digest specification: %s", v19, v20, v21, v22, v23, v24, v25, *a1);
      }

      goto LABEL_50;
    }

    if (v27 == v28)
    {
LABEL_12:
      v32 = *(a1 + 56);
      if (v32 <= 1)
      {
        if (v32 <= 1)
        {
LABEL_21:
          v41 = v29[1];
          v40 = *(a3 + 72);
          expert_log(a2, 1uLL, "%s: enforcing length[%s %s %s]: %lu %s %lu: success", v21, v22, v23, v24, v25, a1 + 28);
          goto LABEL_24;
        }
      }

      else if ((v32 - 2) < 2 || v32 == 6)
      {
        goto LABEL_21;
      }

LABEL_48:
      v38 = "p->p_container";
      goto LABEL_51;
    }
  }

  else
  {
    if (v30 != 5)
    {
      v26 = 0;
      if (v30 != 6)
      {
        if (v30 == 8)
        {
          __panic_npx("panic: property is not constrainable: %s", v19, v20, v21, v22, v23, v24, v25, *a1);
        }

LABEL_50:
        v38 = "p->p_constraint->pc_code";
LABEL_51:
        __panic_npx("panic: unreachable case: %s = 0x%llx", v19, v20, v21, v22, v23, v24, v25, v38);
      }

      goto LABEL_12;
    }

    v26 = v18 == 0;
    if (v27 != v28)
    {
      goto LABEL_12;
    }
  }

  v31 = *(a1 + 56);
  if (v31 <= 1)
  {
    if (v31 > 1)
    {
      goto LABEL_48;
    }
  }

  else if ((v31 - 2) >= 2 && v31 != 6)
  {
    goto LABEL_48;
  }

  v45 = *(a4 + 72);
  v42 = v29[1];
  expert_log(a2, 0, "%s: enforcing length[%s %s %s]: %lu %s %lu: %d", v21, v22, v23, v24, v25, a1 + 28);
LABEL_24:
  v33 = *(a1 + 56);
  if (!v26)
  {
    if (v33 <= 1)
    {
      if (v33)
      {
        if (v33 != 1)
        {
          goto LABEL_49;
        }

        v35 = (*(a1 + 48) + 8);
      }

      else
      {
        v35 = (*(a1 + 48) + 8);
      }
    }

    else if ((v33 - 2) >= 2)
    {
      if (v33 != 6)
      {
        goto LABEL_49;
      }

      v35 = (*(a1 + 48) + 8);
    }

    else
    {
      v35 = (*(a1 + 48) + 8);
    }

    v44 = *v35;
    expert_log(a2, 1uLL, "%s: enforcing[%s %s %s]: %s %s %s: success", v21, v22, v23, v24, v25, a1 + 28);
    goto LABEL_45;
  }

  if (v33 <= 1)
  {
    if (!v33)
    {
      v34 = (*(a1 + 48) + 8);
      goto LABEL_40;
    }

    if (v33 == 1)
    {
      v34 = (*(a1 + 48) + 8);
      goto LABEL_40;
    }

LABEL_49:
    v38 = "p->p_container";
    v39 = *(a1 + 56);
    goto LABEL_51;
  }

  if ((v33 - 2) >= 2)
  {
    if (v33 == 6)
    {
      v34 = (*(a1 + 48) + 8);
      goto LABEL_40;
    }

    goto LABEL_49;
  }

  v34 = (*(a1 + 48) + 8);
LABEL_40:
  v43 = *v34;
  expert_log(a2, 0, "%s: enforcing[%s %s %s]: %s %s %s: %d", v21, v22, v23, v24, v25, a1 + 28);
LABEL_45:
  v36 = *MEMORY[0x29EDCA608];
  return v26;
}

uint64_t property_constrain_version(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a3;
  *a4;
  v10 = **(a1 + 48);
  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v12 = 1;
          v11 = -1;
          goto LABEL_16;
        }

        goto LABEL_47;
      }

      v12 = 0;
      v11 = -1;
      v10 = 2;
    }

    else
    {
      v12 = 0;
      v11 = 1;
    }
  }

  else
  {
    if (v10 <= 4)
    {
      if (v10 == 3)
      {
        v12 = 0;
        v10 = 1;
        v11 = 1;
      }

      else
      {
        v11 = 1;
        v12 = 1;
        v10 = 1;
      }

      goto LABEL_16;
    }

    if (v10 != 5)
    {
      if (v10 == 6)
      {
        v11 = 0;
        v12 = 0;
        v10 = 0;
        goto LABEL_16;
      }

LABEL_47:
      __panic_npx("panic: illegal property definition: %s", a2, a3, a4, a5, a6, a7, a8, *a1);
    }

    v12 = 0;
    v11 = 1;
    v10 = 3;
  }

LABEL_16:
  v13 = version_compare(a3, a4);
  if (v13)
  {
    v21 = 0;
  }

  else
  {
    v21 = v12;
  }

  if (v13 == v10)
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v11;
  }

  v23 = *(a1 + 56);
  if (!v22)
  {
    if (v23 <= 1)
    {
      if (v23)
      {
        if (v23 != 1)
        {
          goto LABEL_46;
        }

        v25 = (*(a1 + 48) + 8);
      }

      else
      {
        v25 = (*(a1 + 48) + 8);
      }
    }

    else if ((v23 - 2) >= 2)
    {
      if (v23 != 6)
      {
        goto LABEL_46;
      }

      v25 = (*(a1 + 48) + 8);
    }

    else
    {
      v25 = (*(a1 + 48) + 8);
    }

    v29 = *v25;
    expert_log(a2, 1uLL, "%s: enforcing[%s %s %s]: %s %s %s: success", v16, v17, v18, v19, v20, a1 + 28);
    return v22;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      v24 = (*(a1 + 48) + 8);
      goto LABEL_40;
    }

    if (v23 == 1)
    {
      v24 = (*(a1 + 48) + 8);
      goto LABEL_40;
    }

LABEL_46:
    v27 = *(a1 + 56);
    __panic_npx("panic: unreachable case: %s = 0x%llx", v14, v15, v16, v17, v18, v19, v20, "p->p_container");
  }

  if ((v23 - 2) >= 2)
  {
    if (v23 == 6)
    {
      v24 = (*(a1 + 48) + 8);
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  v24 = (*(a1 + 48) + 8);
LABEL_40:
  v28 = *v24;
  expert_log(a2, 0, "%s: enforcing[%s %s %s]: %s %s %s: %d", v16, v17, v18, v19, v20, a1 + 28);
  return v22;
}

char *property_print_value(uint64_t a1, unsigned int *a2, char *__str, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(a1 + 40);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_19;
      }

      v10 = *a2;
    }

    else
    {
      v12 = *a2;
    }

    snprintf(__str, 0x80uLL, "0x%x");
    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v11 = *a2;
    snprintf(__str, 0x80uLL, "0x%llx");
    goto LABEL_14;
  }

  if (v9 == 3)
  {
    if (a2 + 20 >= a2)
    {
      digest_print_cstr(a2, __str, __str, a4, a5, a6, a7, a8);
      goto LABEL_14;
    }

LABEL_18:
    __break(0x5519u);
LABEL_19:
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, __str, a4, a5, a6, a7, a8, "p->p_type->pt_switchable");
  }

  if (v9 != 4)
  {
    goto LABEL_19;
  }

  snprintf(__str, 0x80uLL, "%s");
LABEL_14:
  v13 = 0;
  do
  {
    if (v13 == 256)
    {
      goto LABEL_18;
    }
  }

  while (__str[v13++]);
  return __str;
}

uint64_t _chain_enforceable(uint64_t *a1, uint64_t a2)
{
  if (odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    if (*(a2 + 528))
    {
      v4 = *a2;
      name = chip_get_name(*(a2 + 16));
      v24 = *a1;
      v10 = "odometer[%s:%s]: boot manifest hash is caller-supplied";
    }

    else
    {
      chip_boot = odometer_query_chip_boot(a2);
      v4 = *a2;
      v20 = chip_get_name(*(a2 + 16));
      v21 = *a1;
      if (chip_boot)
      {
        v26 = *a1;
        expert_log(v4, 1uLL, "odometer[%s:%s]: policy is enforceable", v5, v6, v7, v8, v9, v20);
        return 0;
      }

      name = v20;
      v27 = *a1;
      v10 = "odometer[%s:%s]: environment is a first-stage booter";
    }

    v11 = 1;
    expert_log(v4, 1uLL, v10, v5, v6, v7, v8, v9, name);
  }

  else
  {
    v12 = *a2;
    v13 = chip_get_name(*(a2 + 16));
    v25 = *a1;
    v11 = 1;
    expert_log(v12, 1uLL, "odometer[%s:%s]: chip has no property for policy", v14, v15, v16, v17, v18, v13);
  }

  return v11;
}

uint64_t _chain_enforce(uint64_t *a1, uint64_t *a2)
{
  v31[13] = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  v5 = a2[2];
  chip_property = odometer_policy_get_chip_property(a1, v5);
  *v31 = xmmword_298EF8F18;
  memset(&v31[2], 170, 88);
  manifest_measure(v4, v5, v31);
  v11 = odometer_enforce_property(a2, a1, chip_property, v31, v7, v8, v9, v10);
  v12 = *a2;
  name = chip_get_name(a2[2]);
  if (v11)
  {
    v29 = *a1;
    v19 = expert_log(v12, 0, "odometer[%s:%s]: boot chain integrity violation: %d", v14, v15, v16, v17, v18, name);
    if (v11 >= 0x6B)
    {
      __panic_npx_2(v19, v20, v21, v22, v23, v24, v25, v26, v11);
    }
  }

  else
  {
    v30 = *a1;
    expert_log(v12, 1uLL, "odometer[%s:%s]: manifest is consistent with boot chain", v14, v15, v16, v17, v18, name);
  }

  v27 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t generic_expert_specialist()
{
  bootstrap = expert_get_bootstrap();
  expert_runtime_entry(bootstrap);
  result = __plat4_mem;
  if (!__plat4_mem)
  {
    __panic_npx("panic: specialist not set after runtime entry", v1, v2, v3, v4, v5, v6, v7, vars0);
  }

  return result;
}

uint64_t generic_expert_current()
{
  if (off_2A18AB7A8)
  {
    return off_2A18AB7A8();
  }

  else
  {
    return generic_expert_specialist();
  }
}

uint64_t generic_expert_set_specialist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24);
  result = _expert_assert(a1, 1734700664, "set specialist", a4, a5, a6, a7, a8);
  *v10 = a2;
  v10[3] = a3;
  return result;
}

uint64_t generic_expert_set_current_resolver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 24);
  result = _expert_assert(a1, 1734700664, "set resolver", a4, a5, a6, a7, a8);
  *(v9 + 16) = a2;
  return result;
}

uint64_t generic_expert_set_supervisor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 24);
  result = _expert_assert(a1, 1734700664, "set supervisor", a4, a5, a6, a7, a8);
  *(v9 + 8) = a2;
  return result;
}

char **_generic_expert_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(v8 + 24);
  v36[0] = _property_filter_chip_instance;
  v36[1] = 0;
  v36[2] = -1;
  v11 = *v8;
  result = property_iterator_next(v36, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v20 = result;
    while (1)
    {
      v39 = 0;
      v38 = 0;
      v37 = 0;
      memset(v42, 0, 80);
      v41 = 0x3E800000000;
      memset(v40, 0, sizeof(v40));
      v21 = **(v20 + 40);
      if (v21 <= 1)
      {
        if (v21)
        {
          if (v21 != 1)
          {
            goto LABEL_35;
          }

          property_digest = expert_query_property_uint32(v11, v10, v20, &v38);
        }

        else
        {
          property_digest = expert_query_property_BOOL(v11, v10, v20, &v39);
        }
      }

      else
      {
        switch(v21)
        {
          case 2:
            property_digest = expert_query_property_uint64(v11, v10, v20, &v37);
            break;
          case 3:
            property_digest = expert_query_property_digest(v11, v10, v20, v42);
            break;
          case 4:
            property_digest = expert_query_property_version(v11, v10, v20, v40);
            break;
          default:
            goto LABEL_35;
        }
      }

      if (property_digest > 18)
      {
        break;
      }

      if (property_digest)
      {
        if (property_digest != 2)
        {
          goto LABEL_36;
        }

LABEL_20:
        v34 = *(v20 + 16);
        v32 = *v20;
        expert_log(v11, 2uLL, "failed to query expert: expert = %s, p = %s, fourcc = %s, code = %llu: %d", v15, v16, v17, v18, v19, *v11);
        goto LABEL_21;
      }

      v30 = **(v20 + 40);
      if (v30 <= 1)
      {
        if (v30)
        {
          if (v30 != 1)
          {
LABEL_35:
            __panic_npx("panic: unreachable case: %s = 0x%llx", v13, v14, v15, v16, v17, v18, v19, "p->p_type->pt_switchable");
          }

          chip_instance_set_uint32(v9 + 40, v20, &v38, v15, v16, v17, v18, v19);
        }

        else
        {
          chip_instance_set_BOOL(v9 + 40, v20, &v39, v15, v16, v17, v18, v19);
        }
      }

      else
      {
        switch(v30)
        {
          case 2:
            chip_instance_set_uint64(v9 + 40, v20, &v37, v15, v16, v17, v18, v19);
            break;
          case 3:
            chip_instance_set_digest(v9 + 40, v20, v42, v15, v16, v17, v18, v19);
            break;
          case 4:
            chip_instance_set_version(v9 + 40, v20, v40, v15, v16, v17, v18, v19);
            break;
          default:
            goto LABEL_35;
        }
      }

LABEL_21:
      result = property_iterator_next(v36, v23, v24, v25, v26, v27, v28, v29);
      v20 = result;
      if (!result)
      {
        goto LABEL_34;
      }
    }

    if (property_digest != 45 && property_digest != 19)
    {
LABEL_36:
      v35 = *(v20 + 16);
      v33 = *v20;
      __panic_npx("panic: failed to query expert: expert = %s, p = %s, fourcc = %s, code = %llu: %d", v13, v14, v15, v16, v17, v18, v19, *v11);
    }

    goto LABEL_20;
  }

LABEL_34:
  *(v9 + 32) = v9 + 40;
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _generic_expert_query_property_BOOL(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(a1 + 16) + 32);
  if (!chip_instance_check(v10, a3, a3, a4, a5, a6, a7, a8))
  {
    return 2;
  }

  chip_instance_get_BOOL(v10, a3, a4, v11, v12, v13, v14, v15);
  return 0;
}

uint64_t _generic_expert_query_property_uint32(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(a1 + 16) + 32);
  if (!chip_instance_check(v10, a3, a3, a4, a5, a6, a7, a8))
  {
    return 2;
  }

  chip_instance_get_uint32(v10, a3, a4, v11, v12, v13, v14, v15);
  return 0;
}

uint64_t _generic_expert_query_property_uint64(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(a1 + 16) + 32);
  if (!chip_instance_check(v10, a3, a3, a4, a5, a6, a7, a8))
  {
    return 2;
  }

  chip_instance_get_uint64(v10, a3, a4, v11, v12, v13, v14, v15);
  return 0;
}

uint64_t _generic_expert_query_property_digest(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(a1 + 16) + 32);
  if (!chip_instance_check(v10, a3, a3, a4, a5, a6, a7, a8))
  {
    return 2;
  }

  chip_instance_get_digest(v10, a3, a4, v11, v12, v13, v14, v15);
  return 0;
}

uint64_t _generic_expert_query_property_version(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(a1 + 16) + 32);
  if (!chip_instance_check(v10, a3, a3, a4, a5, a6, a7, a8))
  {
    return 2;
  }

  chip_instance_get_version(v10, a3, a4, v11, v12, v13, v14, v15);
  return 0;
}

uint64_t img4_runtime_get_expert(char *a1)
{
  if (a1 == &_img4_runtime_default || a1 == &_img4_runtime_restore)
  {
    v2 = (a1 + 88);
  }

  else
  {
    v3 = *(a1 + 1);
    if (v3 == off_2A1F23D48)
    {
      v2 = &off_2A1F23D98;
    }

    else
    {
      if (v3 != off_2A1F26A28)
      {
        return 0;
      }

      v2 = &off_2A1F26A78;
    }
  }

  return (*v2)();
}

uint64_t img4_runtime_check_custom_BOOL(uint64_t a1)
{
  v1 = _img4_runtime_default;
  v2 = 1;
  while (*(a1 + 56) != *(v1 + 7))
  {
    v3 = v2;
    v2 = 0;
    v1 = &_img4_runtime_restore;
    if ((v3 & 1) == 0)
    {
      return *(a1 + 80);
    }
  }

  return 0;
}

uint64_t img4_runtime_check_custom_digest(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 80);
  v3 = _img4_runtime_default;
  do
  {
    v4 = *(v3 + 10);
    if (v2 == v4)
    {
      break;
    }

    v5 = v1;
    v1 = 1;
    v3 = &_img4_runtime_restore;
  }

  while ((v5 & 1) == 0);
  if (v2 == v4)
  {
    return 0;
  }

  else
  {
    return *(a1 + 80);
  }
}

uint64_t version_init(uint64_t a1, char *a2, size_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(v24, 0, sizeof(v24));
  v22 = xmmword_298EF8F90;
  v23 = 0;
  v21 = -1;
  v20[0] = -1;
  v20[1] = -1;
  __stringp = v24;
  cstring_init_with_buff(a1, a2, a3);
  *(a1 + 80) = xmmword_298EF8F90;
  *(a1 + 96) = v23;
  *(a1 + 100) = -86102547;
  cstring_get_string(a1);
  __strlcpy_chk();
  v18 = strsep_npx(&__stringp, ",");
  if (__stringp)
  {
    *(a1 + 100) = _strtou_bounded(__stringp, 0, 0, v4, v5, v6, v7, v8);
  }

  for (i = 0; i != 20; i += 4)
  {
    v10 = strsep_npx(&v18, ".");
    if (!v10)
    {
      break;
    }

    *(a1 + i + 80) = _strtou_bounded(v10, *(&v22 + i), *(v20 + i), v11, v12, v13, v14, v15);
  }

  if (!strcmp(a1, "0.0.0.0.0,0"))
  {
    *(a1 + 80) = 0;
  }

  v16 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t _strtou_bounded(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v14 = 0;
  if (a2 > a3)
  {
    __panic_npx_7(a1, a2, a3, a4, a5, a6, a7, a8, a2);
  }

  v10 = strtou32_npx(a1, &v14, 10);
  if (v14 && *v14)
  {
    v10 = v9;
  }

  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= v8 || v8 == 0)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

uint64_t version_compare_xgroup(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 80;
  if (!*(a1 + 80))
  {
    return 0;
  }

  v3 = 0;
  result = 1;
  while (1)
  {
    v5 = *(v2 + v3);
    v6 = *(a2 + 80 + v3);
    if (v5 > v6)
    {
      break;
    }

    if (v5 < v6)
    {
      return 2;
    }

    v3 += 4;
    if (v3 == 20)
    {
      return 0;
    }
  }

  return result;
}

uint64_t version_compare(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 80;
  if (!*(a1 + 80))
  {
    return 0;
  }

  if (*(a1 + 100) != *(a2 + 100))
  {
    return 3;
  }

  v3 = 0;
  result = 1;
  while (1)
  {
    v5 = *(v2 + v3);
    v6 = *(a2 + 80 + v3);
    if (v5 > v6)
    {
      break;
    }

    if (v5 < v6)
    {
      return 2;
    }

    v3 += 4;
    if (v3 == 20)
    {
      return 0;
    }
  }

  return result;
}

__n128 version_copy(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

char *version_copyout(char *__source, char *__dst)
{
  result = strlcpy(__dst, __source, 0x40uLL);
  v4 = 0;
  while (v4 != 64)
  {
    if (!__dst[v4++])
    {
      return __dst;
    }
  }

  __break(0x5519u);
  return result;
}

void __panic_npx_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  v10 = &a9;
  vsnprintf(__str, 0x800uLL, "panic: invalid min/max: min = %u, max = %u", &a9);
  _os_crash();
  __break(1u);
}

uint64_t type_get_handle(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 8))
  {
    v2 = *(a1 + 8);
    if (dyld_program_minos_at_least())
    {
      return 0;
    }
  }

  return v1;
}

uint64_t _image4_coprocessor_select_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 8);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v11 = *(a2 + 16);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_10;
    }

    if (v9 != 4)
    {
      goto LABEL_14;
    }

    v10 = (*(a2 + 16))();
  }

  else
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = image4_coprocessor_select_secure_boot(a1, a2, a3);
        goto LABEL_9;
      }

LABEL_14:
      v19 = *(a2 + 8);
      __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "cps->cps_type");
    }

    v10 = image4_coprocessor_select_digest(a1, a2);
  }

LABEL_9:
  v11 = v10;
  if (v10)
  {
LABEL_10:
    name = chip_get_name(v11);
    expert_log(a4, 2uLL, "resolved: %s", v13, v14, v15, v16, v17, name);
  }

  return v11;
}

uint64_t *image4_coprocessor_select_digest(uint64_t a1, uint64_t a2)
{
  v3 = generic_expert_current();
  v4 = a2 + 16;
  v5 = a2 + 32;
  result = expert_get_digest_info(v3, 0, 0);
  v7 = *result;
  if (*result == 20)
  {
    if (v4 >= v5)
    {
LABEL_9:
      __break(0x5519u);
      return result;
    }
  }

  else
  {
    result = 0;
    if (v7 != 48)
    {
      return result;
    }

    if (a2 + 24 >= v5)
    {
      goto LABEL_9;
    }

    v8 = a2 + 24 >= v4;
    v4 = a2 + 24;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  return *v4;
}

uint64_t image4_coprocessor_select_secure_boot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16;
  v5 = a2 + 48;
  v6 = (*(a1 + 24))(a1, a3);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v14 = a2 + 32;
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_16;
      }

      v14 = a2 + 40;
    }

LABEL_11:
    if (v14 >= v5)
    {
      goto LABEL_15;
    }

    v15 = v14 >= v4;
    v4 = v14;
    if (!v15)
    {
      goto LABEL_15;
    }

    return *v4;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_16;
    }

    v14 = a2 + 24;
    goto LABEL_11;
  }

  if (v4 >= v5)
  {
LABEL_15:
    __break(0x5519u);
LABEL_16:
    __panic_npx("panic: unreachable case: %s = 0x%llx", v7, v8, v9, v10, v11, v12, v13, "sb");
  }

  return *v4;
}

uint64_t image4_coprocessor_get_secure_boot_host(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v12 = 0;
  secure_boot = expert_get_secure_boot(v2, &v12);
  if (secure_boot)
  {
    __panic_npx("panic: failed to get secure boot: %d", v4, v5, v6, v7, v8, v9, v10, secure_boot);
  }

  return v12;
}

uint64_t image4_coprocessor_select(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 8);
  v7 = (*(a1 + 16))(a1, a3);
  v15 = v7;
  if (v7 >= *(v5 + 608))
  {
    __panic_npx("panic: incomplete coprocessor map: handle = %lld, expected < %lld", v8, v9, v10, v11, v12, v13, v14, v7);
  }

  (*(v5 + 24))(v5, a3);
  result = expert_log(v6, 2uLL, "resolving environment: coproc = %s, handle = %llx, secure boot = %llx", v16, v17, v18, v19, v20, *v5);
  v26 = v5 + 32 + 48 * v15;
  if (a2)
  {
    v27 = a2;
  }

  else
  {
    v27 = (v5 + 32 + 48 * v15);
  }

  if ((!v27 || (v26 < v5 + 608 ? (v28 = v26 >= v5 + 32) : (v28 = 0), !v28 ? (v29 = 0) : (v29 = 1), a2 || v29)) && (v27[1] != 2 || (v5 = v27[2], (v27 = (v5 + 32 + 48 * v27[3])) == 0) || (v27 < v5 + 608 ? (v30 = v27 >= v5 + 32) : (v30 = 0), v30)))
  {

    return _image4_coprocessor_select_internal(v5, v27, a3, v6, v22, v23, v24, v25);
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

void *image4_coprocessor_resolve_from_manifest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x29EDCA608];
  v6 = generic_expert_current();
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v7 = expert_runtime_boot(v6);
  if (v7)
  {
    *&v52 = v7;
    v13 = "failed to boot expert for chip selection: %d";
    v14 = v6;
    v15 = 3;
LABEL_5:
    expert_log(v14, v15, v13, v8, v9, v10, v11, v12, v52);
    v17 = 0;
    goto LABEL_6;
  }

  Img4DecodeInitAsManifest(a1, a2, v55);
  if (v16)
  {
    *&v52 = v16;
    v13 = "Img4DecodeInitAsManifest: %d";
    v14 = v6;
    v15 = 0;
    goto LABEL_5;
  }

  v20 = 0;
  while (1)
  {
    v17 = *(a3 + 8 * v20);
    v54 = 0;
    if (v17)
    {
      v21 = v17 + 77;
      v22 = image4_environment_new(v17, 0);
      v54 = v22;
      if (!v22)
      {
        MEMORY[0x2A1C7C4A8](0, v23, v24, v25, v26, v27, v28, v29);
        *&v34 = 0xAAAAAAAAAAAAAAAALL;
        *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *(&v53 - 2) = v34;
        v52 = v34;
        *(&v53 - 4) = v34;
        *(&v53 - 3) = v34;
        *(&v53 - 6) = v34;
        *(&v53 - 5) = v34;
        *(&v53 - 8) = v34;
        *(&v53 - 7) = v34;
        *(&v53 - 10) = v34;
        *(&v53 - 9) = v34;
        *(&v53 - 12) = v34;
        *(&v53 - 11) = v34;
        *(&v53 - 14) = v34;
        *(&v53 - 13) = v34;
        *(&v53 - 16) = v34;
        *(&v53 - 15) = v34;
        if (v17 >= v21)
        {
          goto LABEL_20;
        }

        v22 = _image4_environment_init((&v53 - 256), v17, 0, 0, v30, v31, v32, v33);
        v54 = v22;
      }

      v35 = image4_environment_resolve(v22);
      if (v35)
      {
        break;
      }
    }

LABEL_17:
    image4_environment_destroy(&v54);
    v17 = 0;
    if (++v20 == 3)
    {
      goto LABEL_6;
    }
  }

  v43 = v35;
  if (!*(v35 + 32))
  {
    __panic_npx("panic: illegal coprocessor map: canonical handle has no static decode implementation", v36, v37, v38, v39, v40, v41, v42, v53);
  }

  v44 = 0;
  v45 = 1;
  while (1)
  {
    v46 = v45;
    if (!Img4DecodeCheckAuthority(v55, *(*(v43 + 32) + 8 * v44)))
    {
      break;
    }

    v45 = 0;
    v44 = 1;
    if ((v46 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  *&v52 = *v17;
  *(&v52 + 1) = v44;
  expert_log(v6, 2uLL, "manifest matches coproc: %s, i4ct: %u", v47, v48, v49, v50, v51, v52);
  image4_environment_destroy(&v54);
  if (v17 >= v21)
  {
LABEL_20:
    __break(0x5519u);
  }

LABEL_6:
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t img4_image_get_bytes(uint64_t a1)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = *(a1 + 40);
  if ((*a1 & 0x10) != 0)
  {
    encoded_bytes = payload_get_encoded_bytes(v2, v8);
  }

  else
  {
    encoded_bytes = payload_get_decoded_bytes(v2, v8);
  }

  v4 = encoded_bytes;
  *(a1 + 8) = 0;
  result = a1 + 8;
  v7 = *v4;
  v6 = v4[1];
  if (v7 > v7 + v6)
  {
    __break(0x5519u);
  }

  else
  {
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t img4_image_get_property_BOOL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 104);
  v6 = **(v4 + 8);
  if (Img4DecodeGetObjectPropertyBoolean())
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

_DWORD *img4_image_get_property_uint32(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  Img4DecodeGetObjectPropertyInteger(*(*(a1 + 40) + 104), **(*(a1 + 40) + 8), a2, a3);
  if (v4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

unint64_t *img4_image_get_property_uint64(uint64_t a1, unsigned int a2, unint64_t *a3)
{
  Img4DecodeGetObjectPropertyInteger64(*(*(a1 + 40) + 104), **(*(a1 + 40) + 8), a2, a3);
  if (v4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t img4_image_get_property_data(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 104);
  v6 = **(v4 + 8);
  v11 = 0;
  v12 = 0;
  Img4DecodeGetObjectPropertyData(v5, v6, a2, &v11, &v12);
  v8 = v7;
  result = 0;
  if (!v8)
  {
    *a3 = 0;
    v10 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v10;
    *(a3 + 24) = 0;
    return a3;
  }

  return result;
}

BOOL *img4_image_get_entitlement_BOOL(uint64_t a1, unsigned int a2, BOOL *a3)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 528);
  v6 = v4 + 72;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (Img4DecodeGetBooleanFromSection(v7, 0, a2, a3))
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

_DWORD *img4_image_get_entitlement_uint32(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 528);
  v6 = v4 + 72;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  Img4DecodeGetIntegerFromSection(v7, 0, a2, a3);
  if (v8)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

unint64_t *img4_image_get_entitlement_uint64(uint64_t a1, unsigned int a2, unint64_t *a3)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 528);
  v6 = v4 + 72;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  Img4DecodeGetInteger64FromSection(v7, 0, a2, a3);
  if (v8)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t img4_image_get_entitlement_data(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 528);
  v6 = v4 + 72;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v12 = 0;
  v13 = 0;
  Img4DecodeGetDataFromSection(v7, 0, a2, &v12, &v13);
  v9 = v8;
  result = 0;
  if (!v9)
  {
    *a3 = 0;
    v11 = v13;
    *(a3 + 8) = v12;
    *(a3 + 16) = v11;
    *(a3 + 24) = 0;
    return a3;
  }

  return result;
}

void *img4_image_init(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a4;
  result[5] = a2;
  result[6] = a3;
  return result;
}

uint64_t boot_expert_boot_manifest(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51[13] = *MEMORY[0x29EDCA608];
  v49 = 0;
  v50[0] = _boot_expert_property_BOOL;
  v50[1] = _boot_expert_property_integer;
  v50[2] = _boot_expert_property_data;
  v50[3] = 0;
  v50[5] = 0;
  v50[6] = 0;
  v50[4] = _boot_expert_odometer_prepare;
  v47[0] = a1;
  v47[1] = a2;
  v48 = 0;
  *v51 = xmmword_298EF9100;
  memset(&v51[2], 170, 88);
  _expert_assert(a1, 1651470196, "boot manifest", a4, a5, a6, a7, a8);
  if (a3[1])
  {
    v11 = a3[2];
    v48 = a3[1];
    v49 = v11;
  }

  manifest_set_callbacks(a3, v47, v50);
  v12 = manifest_parse(a3);
  if (v12)
  {
    v18 = v12;
    expert_log(a1, 0, "failed to parse manifest for boot: %d", v13, v14, v15, v16, v17, v12);
    goto LABEL_7;
  }

  v26 = manifest_impose(a3, a2, 0, 0);
  if (v26)
  {
    v18 = v26;
    expert_log(a1, 0, "failed to impose manifest for boot: %d", v27, v28, v29, v30, v31, v26);
LABEL_7:
    if (v18 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v19, v20, v21, v22, v23, v24, v25, v18);
    }

    goto LABEL_8;
  }

  if (!a2[31])
  {
LABEL_18:
    expert_log(a1, 2uLL, "booted manifest", v27, v28, v29, v30, v31, v46);
    v18 = 0;
LABEL_8:
    v32 = *MEMORY[0x29EDCA608];
    return v18;
  }

  result = manifest_measure(a3, a2, v51);
  v34 = *(a1 + 24);
  v35 = *(a2[31] + 16);
  v36 = v34 + 280;
  v37 = v34 + 280 + 104 * v35;
  if (v37 < v34 + 3816 && v37 >= v36)
  {
    v39 = *v51;
    v40 = *&v51[4];
    *(v37 + 16) = *&v51[2];
    *(v37 + 32) = v40;
    *v37 = v39;
    v41 = *&v51[6];
    v42 = *&v51[8];
    v43 = *&v51[10];
    *(v37 + 96) = v51[12];
    *(v37 + 64) = v42;
    *(v37 + 80) = v43;
    *(v37 + 48) = v41;
    v44 = v34 + 8;
    v45 = (v34 + 8 + 8 * v35);
    if (v45 < v36 && v45 >= v44)
    {
      *v45 = v37;
      goto LABEL_18;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t _boot_expert_property_BOOL(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v11 = a5[2];
  v10 = a5[3];
  result = _boot_expert_find_entitlement(*a5, a2, a3, a5[1], &_property_type_BOOL);
  if (result)
  {
    v13 = *(v9 + 24);
    v14 = v13 + 280 + 104 * *(result + 16);
    if (v14)
    {
      if (v14 >= v13 + 3816 || v14 < v13 + 280)
      {
        goto LABEL_25;
      }
    }

    *v14 = a4;
    v16 = *(v9 + 24);
    v17 = *(result + 16);
    v18 = v16 + 280;
    v19 = v16 + 280 + 104 * v17;
    if (v19 >= v16 + 3816 || v19 < v18)
    {
      goto LABEL_25;
    }

    v21 = *v14;
    v22 = *(v14 + 32);
    *(v19 + 16) = *(v14 + 16);
    *(v19 + 32) = v22;
    *v19 = v21;
    v23 = *(v14 + 48);
    v24 = *(v14 + 64);
    v25 = *(v14 + 80);
    *(v19 + 96) = *(v14 + 96);
    *(v19 + 64) = v24;
    *(v19 + 80) = v25;
    *(v19 + 48) = v23;
    v26 = v16 + 8;
    v27 = (v26 + 8 * v17);
    if (v27 >= v18 || v27 < v26)
    {
LABEL_25:
      __break(0x5519u);
      return result;
    }

    *v27 = v19;
  }

  if (v11)
  {
    v29 = *v11;
    if (*v11)
    {

      return v29(a1, a2, a3, a4, v10);
    }
  }

  return result;
}

unint64_t _boot_expert_property_integer(uint64_t a1, _DWORD *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = a5[1];
  v11 = a5[2];
  v10 = a5[3];
  v12 = &_property_type_uint32;
  v13 = 1;
  do
  {
    v14 = v13;
    result = _boot_expert_find_entitlement(v8, a2, a3, v9, v12);
    if (result)
    {
      v23 = *(v8 + 24);
      v24 = v23 + 280 + 104 * *(result + 16);
      if (!v24 || (v24 < v23 + 3816 ? (v25 = v24 >= v23 + 280) : (v25 = 0), v25))
      {
        if (*v12 == 2)
        {
          *v24 = a4;
        }

        else
        {
          if (*v12 != 1)
          {
            goto LABEL_32;
          }

          if (HIDWORD(a4))
          {
            __panic_npx("panic: integer cast overflow: v = %s, actual = %llu, expected <= %llu", v16, v17, v18, v19, v20, v21, v22, "v");
          }

          *v24 = a4;
        }

        if (v24 < v24 + 104)
        {
          v26 = *(v8 + 24);
          v27 = *(result + 16);
          v28 = v26 + 280;
          v29 = v26 + 280 + 104 * v27;
          if (v29 < v26 + 3816 && v29 >= v28)
          {
            v31 = *v24;
            v32 = *(v24 + 32);
            *(v29 + 16) = *(v24 + 16);
            *(v29 + 32) = v32;
            *v29 = v31;
            v33 = *(v24 + 48);
            v34 = *(v24 + 64);
            v35 = *(v24 + 80);
            *(v29 + 96) = *(v24 + 96);
            *(v29 + 64) = v34;
            *(v29 + 80) = v35;
            *(v29 + 48) = v33;
            v36 = v26 + 8;
            v37 = (v36 + 8 * v27);
            if (v37 < v28 && v37 >= v36)
            {
              *v37 = v29;
              if (v11)
              {
                goto LABEL_26;
              }

              return result;
            }
          }
        }
      }

      __break(0x5519u);
LABEL_32:
      __panic_npx("panic: unreachable case: %s = 0x%llx", v16, v17, v18, v19, v20, v21, v22, "pti->pt_switchable");
    }

    v13 = 0;
    v12 = &_property_type_uint64;
  }

  while ((v14 & 1) != 0);
  if (!v11)
  {
    return result;
  }

LABEL_26:
  v38 = *(v11 + 8);
  if (v38)
  {

    return v38(a1, a2, a3, a4, v10);
  }

  return result;
}

uint64_t _boot_expert_property_data(uint64_t a1, _DWORD *a2, uint64_t a3, char *a4, size_t a5, uint64_t *a6)
{
  v9 = *a6;
  v10 = a6[1];
  v11 = a6[2];
  v41 = a6[3];
  v12 = &_property_type_digest;
  v13 = 1;
  do
  {
    v14 = v13;
    result = _boot_expert_find_entitlement(v9, a2, a3, v10, v12);
    if (result)
    {
      v23 = result;
      v24 = *(v9 + 24);
      v25 = v24 + 280 + 104 * *(result + 16);
      if (v25)
      {
        if (v25 >= v24 + 3816 || v25 < v24 + 280)
        {
          goto LABEL_32;
        }
      }

      v27 = v25 + 104;
      if (*v12 == 4)
      {
        if (v25 < v27)
        {
          result = version_init(v25, a4, a5);
          goto LABEL_18;
        }
      }

      else
      {
        if (*v12 != 3)
        {
          goto LABEL_33;
        }

        if (v25 < v25 + 80)
        {
          result = digest_init(v25, a4, a5, v18, v19, v20, v21, v22);
LABEL_18:
          if (v25 < v27)
          {
            v28 = *(v9 + 24);
            v29 = *(v23 + 16);
            v30 = v28 + 280;
            v31 = v28 + 280 + 104 * v29;
            if (v31 < v28 + 3816 && v31 >= v30)
            {
              v33 = *v25;
              v34 = *(v25 + 32);
              *(v31 + 16) = *(v25 + 16);
              *(v31 + 32) = v34;
              *v31 = v33;
              v35 = *(v25 + 48);
              v36 = *(v25 + 64);
              v37 = *(v25 + 80);
              *(v31 + 96) = *(v25 + 96);
              *(v31 + 64) = v36;
              *(v31 + 80) = v37;
              *(v31 + 48) = v35;
              v38 = v28 + 8;
              v39 = (v28 + 8 + 8 * v29);
              if (v39 < v30 && v39 >= v38)
              {
                *v39 = v31;
                if (v11)
                {
                  goto LABEL_27;
                }

                return result;
              }
            }
          }
        }
      }

LABEL_32:
      __break(0x5519u);
LABEL_33:
      __panic_npx("panic: unreachable case: %s = 0x%llx", v16, v17, v18, v19, v20, v21, v22, "pti->pt_switchable");
    }

    v13 = 0;
    v12 = &_property_type_version;
  }

  while ((v14 & 1) != 0);
  if (!v11)
  {
    return result;
  }

LABEL_27:
  v40 = *(v11 + 16);
  if (v40)
  {

    return v40(a1, a2, a3, a4, a5, v41);
  }

  return result;
}

uint64_t _boot_expert_odometer_prepare(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      return v4(result, a2, *(a3 + 24));
    }
  }

  return result;
}

void *boot_expert_boot_closure(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(v26, 170, sizeof(v26));
  v24 = xmmword_298EF9100;
  v25 = unk_298EF9110;
  v5 = (*(*(a2 + 8) + 48))();
  result = digest_init_measure(&v24, v5, a3, v6, v7, v8, v9, v10);
  v12 = *(a1 + 24);
  v13 = v12 + 280;
  v14 = (v12 + 3504);
  if (v12 + 3504 >= (v12 + 3816) || v14 < v13)
  {
    goto LABEL_9;
  }

  v16 = v24;
  v17 = *v26;
  *(v12 + 3520) = v25;
  *(v12 + 3536) = v17;
  *v14 = v16;
  v18 = *&v26[16];
  v19 = *&v26[32];
  v20 = *&v26[48];
  *(v12 + 3600) = *&v26[64];
  *(v12 + 3568) = v19;
  *(v12 + 3584) = v20;
  *(v12 + 3552) = v18;
  v21 = v12 + 8;
  v22 = (v12 + 256);
  if (v22 >= v13 || v22 < v21)
  {
LABEL_9:
    __break(0x5519u);
  }

  *v22 = v14;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _boot_expert_query_property_BOOL(uint64_t result, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == &_property_iuob)
  {

    return expert_compute_eieiou_BOOL(result, a2, a4);
  }

  else
  {
    v11 = *(result + 24);
    v12 = v11 + 8;
    v13 = v11 + 280;
    v14 = (v11 + 8 + 8 * *(a3 + 16));
    if (v14 < v13 && v14 >= v12)
    {
      v16 = *v14;
      if (v16)
      {
        *a4 = *v16;
        return 0;
      }

      else
      {
        v17 = **(result + 16);
        expert_log(result, 2uLL, "falling back to base expert for property: %s", a4, a5, a6, a7, a8, a3 + 28);

        return expert_query_property_BOOL(v17, a2, a3, a4);
      }
    }

    else
    {
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t _boot_expert_query_property_uint32(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 24);
  v9 = v8 + 8;
  v10 = v8 + 280;
  v11 = (v8 + 8 + 8 * *(a3 + 16));
  if (v11 < v10 && v11 >= v9)
  {
    v14 = *v11;
    if (v14)
    {
      *a4 = *v14;
      return 0;
    }

    else
    {
      v17 = **(result + 16);
      expert_log(result, 2uLL, "falling back to base expert for property: %s", a4, a5, a6, a7, a8, a3 + 28);

      return expert_query_property_uint32(v17, a2, a3, a4);
    }
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t _boot_expert_query_property_uint64(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 24);
  v9 = v8 + 8;
  v10 = v8 + 280;
  v11 = (v8 + 8 + 8 * *(a3 + 16));
  if (v11 < v10 && v11 >= v9)
  {
    v14 = *v11;
    if (v14)
    {
      *a4 = *v14;
      return 0;
    }

    else
    {
      v17 = **(result + 16);
      expert_log(result, 2uLL, "falling back to base expert for property: %s", a4, a5, a6, a7, a8, a3 + 28);

      return expert_query_property_uint64(v17, a2, a3, a4);
    }
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t _boot_expert_query_property_digest(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 24);
  v9 = v8 + 8;
  v10 = v8 + 280;
  v11 = (v8 + 8 + 8 * *(a3 + 16));
  if (v11 >= v10 || v11 < v9)
  {
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v15 = *v11;
  if (*v11)
  {
    if (v15 < v15 + 80)
    {
      digest_copy(a4, v15, a3, a4, a5, a6, a7, a8);
      return 0;
    }

    goto LABEL_12;
  }

  v17 = **(result + 16);
  expert_log(result, 2uLL, "falling back to base expert for property: %s", a4, a5, a6, a7, a8, a3 + 28);

  return expert_query_property_digest(v17, a2, a3, a4);
}

uint64_t _boot_expert_query_property_version(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 24);
  v9 = v8 + 8;
  v10 = v8 + 280;
  v11 = (v8 + 8 + 8 * *(a3 + 16));
  if (v11 >= v10 || v11 < v9)
  {
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v15 = *v11;
  if (*v11)
  {
    if (v15 < (v15 + 104))
    {
      version_copy(a4, v15);
      return 0;
    }

    goto LABEL_12;
  }

  v17 = **(result + 16);
  expert_log(result, 2uLL, "falling back to base expert for property: %s", a4, a5, a6, a7, a8, a3 + 28);

  return expert_query_property_version(v17, a2, a3, a4);
}

uint64_t _boot_expert_read_random(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return expert_read_random(**(result + 16), a2, a3);
  }

  __break(0x5519u);
  return result;
}

unint64_t _boot_expert_find_entitlement(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = (a2 + 1);
  chip_get_name(a4);
  expert_log(a1, 2uLL, "finding entitlement for chip: entitlement = %s, chip = %s", v11, v12, v13, v14, v15, v10);
  if (a3)
  {
    v23 = "not a manifest property";
LABEL_11:
    expert_log(a1, 2uLL, v23, v18, v19, v20, v21, v22, v27);
    return 0;
  }

  result = property_find_entitlement(a2, v16, v17, v18, v19, v20, v21, v22);
  if (!result || (v25 = result, *(result + 16) == 34))
  {
    v23 = "not an expert property";
    goto LABEL_11;
  }

  v26 = *(result + 40);
  if (v26 != a5)
  {
    v28 = *(a5 + 8);
    expert_log(a1, 2uLL, "unexpected type: actual = %s, expected = %s", v18, v19, v20, v21, v22, *(v26 + 8));
    return 0;
  }

  if (result < result + 104)
  {
    if (!chip_check_entitlement(a4, result))
    {
      expert_log(a1, 2uLL, "entitlement present for chip", v18, v19, v20, v21, v22, v27);
      return v25;
    }

    v23 = "entitlement not present in chip";
    goto LABEL_11;
  }

  __break(0x5519u);
  return result;
}

uint64_t odometer_compute_nonce_hash(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  chip = a2;
  v44 = *MEMORY[0x29EDCA608];
  memset(v43, 0, sizeof(v43));
  if (!a2)
  {
    chip = expert_query_chip(a1, 0);
  }

  if (!chip[25] || (v8 = chip[21]) != 0)
  {
    v8 = 1;
  }

  if (chip[22])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  digest_info = expert_get_digest_info(a1, chip, v9);
  MEMORY[0x2A1C7C4A8](digest_info, v11, (*(digest_info + 8) + *(digest_info + 16) + 19) & 0xFFFFFFFFFFFFFFF8, v12, v13, v14, v15, v16);
  v25 = v43 - v24;
  if (v26 >= 8)
  {
    memset(v43 - v24, 170, v18);
  }

  if (*digest_info >= 0x41uLL)
  {
    v42 = *digest_info;
    __panic_npx("panic: buffer not large enough for digest: actual = %lu, expected >= %lu", v17, v18, v19, v20, v21, v22, v23, 64);
  }

  name = chip_get_name(chip);
  v41 = *digest_info;
  expert_log(a1, 2uLL, "computing nonce digest: chip = %s, digest length = %lu", v28, v29, v30, v31, v32, name);
  ccdigest_init();
  v33 = *(a3 + 16);
  ccdigest_update();
  (*(digest_info + 56))(digest_info, v25, v43);
  if (*digest_info > 0x40uLL)
  {
    __break(0x5519u);
  }

  result = digest_init(a4, v43, *digest_info, v34, v35, v36, v37, v38);
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t odometer_derive_nonce_hash(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[3] = *MEMORY[0x29EDCA608];
  memset(v24, 0, 24);
  v8 = expert_entangle_nonce(a1, a2, a3, a4, v24);
  v14 = v8;
  if (v8)
  {
    expert_log(a1, 0, "failed to entangle nonce: %d", v9, v10, v11, v12, v13, v8);
    if (v14 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v15, v16, v17, v18, v19, v20, v21, v14);
    }
  }

  else
  {
    odometer_compute_nonce_hash(a1, a2, v24, a5);
  }

  v22 = *MEMORY[0x29EDCA608];
  return v14;
}

unint64_t odometer_check_fuse(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 8);
  if (v8 < 0)
  {
    __panic_npx("panic: invalid offset: %lld", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  v9 = (result + v8);
  if (v9 < result + 976 && v9 >= result)
  {
    return *v9;
  }

  __break(0x5519u);
  return result;
}

uint64_t odometer_query_chip_boot(uint64_t a1)
{
  v2 = *(a1 + 16);
  chip_boot = expert_query_chip_boot(*a1, v2);
  v4 = *a1;
  name = chip_get_name(*(a1 + 16));
  v11 = name;
  if (chip_boot == 45)
  {
    expert_log(v4, 1uLL, "odometer[%s]: expert does not boot chip", v6, v7, v8, v9, v10, name);
    if (*(a1 + 56))
    {
      v12 = *a1;
      v37 = chip_get_name(*(a1 + 16));
      expert_log(v12, 1uLL, "odometer[%s]: nonce supplied; simulating first-stage boot", v13, v14, v15, v16, v17, v37);
    }

    else
    {
      if (!*(a1 + 232))
      {
        return 45;
      }

      v30 = *a1;
      v38 = chip_get_name(*(a1 + 16));
      expert_log(v30, 1uLL, "odometer[%s]: nonce hash supplied; simulating first-stage boot", v31, v32, v33, v34, v35, v38);
    }

    return 0;
  }

  else if (chip_boot)
  {
    chip_get_name(v2);
    expert_log(v4, 0, "odometer[%s]: failed to query chip boot: %s: %d", v18, v19, v20, v21, v22, v11);
    if (chip_boot >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v23, v24, v25, v26, v27, v28, v29, chip_boot);
    }
  }

  else
  {
    expert_log(v4, 1uLL, "odometer[%s]: expert boots chip", v6, v7, v8, v9, v10, name);
  }

  return chip_boot;
}

uint64_t odometer_query_live_nonce(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 56))
  {
    nonce_init_copy(a4, (a1 + 32), a3, a4, a5, a6, a7, a8);
    return 0;
  }

  else
  {
    v11 = *a1;
    if (a3 == -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a1 + 16);
    }

    return expert_query_nonce(v11, v12, a3, a4);
  }
}

uint64_t odometer_query_restore_info_nonce(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = a1[2];
  v7 = *(*(v6 + 96) + 24);
  *v58 = 0;
  __n = 0;
  v8 = *a1;
  name = chip_get_name(v6);
  expert_log(v8, 1uLL, "odometer[%s]: querying restore info for boot nonce: %s", v10, v11, v12, v13, v14, name);
  Img4DecodeGetRestoreInfoData(a2, v7, v58, &__n);
  if (v15 == 1)
  {
    v30 = *a1;
    v31 = chip_get_name(a1[2]);
    expert_log(v30, 0, "odometer[%s]: restore info has no boot nonce", v32, v33, v34, v35, v36, v31);
    return 2;
  }

  else
  {
    v21 = v15;
    if (v15)
    {
      v37 = *a1;
      v38 = chip_get_name(a1[2]);
      expert_log(v37, 0, "odometer[%s]: failed to query restore info for boot nonce: %d", v39, v40, v41, v42, v43, v38);
      result = posixdr(v21);
      if (result >= 0x6B)
      {
        __panic_npx("panic: error not set to valid posix code: %d", v44, v45, v46, v47, v48, v49, v50, result);
      }
    }

    else if (__n < 0x11)
    {
      nonce_init(a3, *v58, __n, v16, v17, v18, v19, v20);
      v51 = *a1;
      v52 = chip_get_name(a1[2]);
      expert_log(v51, 1uLL, "odometer[%s]: fetched boot nonce from restore info", v53, v54, v55, v56, v57, v52);
      return 0;
    }

    else
    {
      v22 = *a1;
      v23 = chip_get_name(a1[2]);
      expert_log(v22, 1uLL, "odometer[%s]: restore info nonce too large: actual = %lu, expected <= %lu", v24, v25, v26, v27, v28, v23);
      return 84;
    }
  }

  return result;
}

uint64_t odometer_enforce_property(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v118[13] = *MEMORY[0x29EDCA608];
  v12 = *(a2 + 24);
  v13 = *a1;
  v14 = a1[2];
  *v118 = xmmword_298EF9168;
  memset(&v118[2], 170, 88);
  v15 = **(a3 + 40);
  if (v15 <= 1)
  {
    if (v15)
    {
      if (v15 != 1)
      {
LABEL_51:
        v114 = **(a3 + 40);
        __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "p->p_type->pt_switchable");
      }

      property_uint32 = expert_query_property_uint32(v13, v14, a3, v118);
      if (!property_uint32)
      {
        if (a4 + 1 < a4)
        {
          goto LABEL_49;
        }

        if (property_constrain_uint32(a3, v13, a4, v118, v26, v27, v28, v29))
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    else
    {
      property_uint32 = expert_query_property_BOOL(v13, v14, a3, v118);
      if (!property_uint32)
      {
        if ((a4 + 1) < a4)
        {
          goto LABEL_49;
        }

        if (property_constrain_BOOL(a3, v13, a4, v118, v52, v53, v54, v55))
        {
          goto LABEL_18;
        }

LABEL_22:
        v12 = 0;
        goto LABEL_26;
      }
    }

LABEL_24:
    v56 = property_uint32;
    v57 = *a1;
    name = chip_get_name(a1[2]);
    v116 = *a3;
    v108 = *a2;
    expert_log(v57, 0, "odometer[%s:%s]: failed to query expert: p = %s: %d", v59, v60, v61, v62, v63, name);
    v12 = v56;
    goto LABEL_25;
  }

  if (v15 == 2)
  {
    property_uint32 = expert_query_property_uint64(v13, v14, a3, v118);
    if (!property_uint32)
    {
      if (a4 + 2 < a4)
      {
        goto LABEL_49;
      }

      if (property_constrain_uint64(a3, v13, a4, v118, v30, v31, v32, v33))
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (v15 == 3)
  {
    property_uint32 = expert_query_property_digest(v13, v14, a3, v118);
    if (!property_uint32)
    {
      if (a4 + 20 < a4)
      {
        goto LABEL_49;
      }

      if (property_constrain_digest(a3, v13, a4, v118, v48, v49, v50, v51))
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (v15 != 4)
  {
    goto LABEL_51;
  }

  v16 = (a1 + 122);
  v17 = a1 + 121;
  if (a1 + 121 >= a1 + 122 || v17 < a1)
  {
    goto LABEL_49;
  }

  if (*v17 == 1)
  {
    v18 = chip_get_name(v14);
    v106 = *a2;
    v19 = 1;
    expert_log(v13, 1uLL, "odometer[%s:%s]: allowing cross-group policy: mix-n-match", v20, v21, v22, v23, v24, v18);
  }

  else
  {
    v19 = 0;
  }

  v66 = (a1 + 969);
  if (a1 + 969 >= v16 || v66 < a1)
  {
    goto LABEL_49;
  }

  if ((*v66 & 1) == 0)
  {
    v67 = *a1;
    v68 = chip_get_name(a1[2]);
    v109 = *a2;
    expert_log(v67, 1uLL, "odometer[%s:%s]: allowing cross-group policy: production status", v69, v70, v71, v72, v73, v68);
    ++v19;
  }

  v74 = (a1 + 972);
  if (a1 + 972 >= v16 || v74 < a1)
  {
    goto LABEL_49;
  }

  if (*v74 == 1)
  {
    v75 = *a1;
    v76 = chip_get_name(a1[2]);
    v110 = *a2;
    expert_log(v75, 1uLL, "odometer[%s:%s]: allowing cross-group policy: engineering use", v77, v78, v79, v80, v81, v76);
    ++v19;
  }

  if (!*(v14 + 24))
  {
    v82 = *a1;
    v83 = chip_get_name(a1[2]);
    v111 = *a2;
    v19 = 1;
    expert_log(v82, 1uLL, "odometer[%s:%s]: allowing cross-group policy: full security", v84, v85, v86, v87, v88, v83);
  }

  if (v14 >= v14 + 264)
  {
    goto LABEL_49;
  }

  property_version = expert_query_property_version(v13, v14, a3, v118);
  if (!property_version)
  {
    v98 = _odometer_enforce_version;
    if (v19)
    {
      v99 = *a1;
      v100 = chip_get_name(a1[2]);
      v113 = *a2;
      expert_log(v99, 1uLL, "odometer[%s:%s]: allowing cross-group version comparison", v101, v102, v103, v104, v105, v100);
      v98 = _odometer_enforce_version_xgroup;
    }

    if (a4 + 26 >= a4)
    {
      if (!v98(a1, a3, a4, v118))
      {
        goto LABEL_22;
      }

LABEL_18:
      v34 = *a1;
      v35 = chip_get_name(a1[2]);
      v115 = *a3;
      v107 = *a2;
      expert_log(v34, 0, "odometer[%s:%s]: constraint violation: %s: %d", v36, v37, v38, v39, v40, v35);
      goto LABEL_25;
    }

LABEL_49:
    __break(0x5519u);
  }

  v90 = property_version;
  v91 = *a1;
  v92 = chip_get_name(a1[2]);
  v117 = *a3;
  v112 = *a2;
  expert_log(v91, 0, "odometer[%s:%s]: failed to query expert: p = %s: %d", v93, v94, v95, v96, v97, v92);
  v12 = v90;
LABEL_25:
  if (v12 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v41, v42, v43, v44, v45, v46, v47, v12);
  }

LABEL_26:
  v64 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t _odometer_enforce_version_xgroup(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = property_constrain_version(a2, *a1, a3, a4, a5, a6, a7, a8);
  if (v11)
  {
    if (*(a3 + 100) == *(a4 + 100))
    {
      v12 = *a1;
      name = chip_get_name(a1[2]);
      expert_log(v12, 1uLL, "odometer[%s]: versions directly comparable; allowing enforcement decision to stand", v14, v15, v16, v17, v18, name);
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

double odometer_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = -1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 442) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 872) = -1;
  *(a1 + 972) = 0;
  *(a1 + 968) = 0;
  return result;
}

uint64_t odometer_prepare(uint64_t *a1, uint64_t a2, uint64_t constraint, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v10 = a1 + 122;
  while (1)
  {
    v11 = _cylinders[v9];
    v12 = v11[1];
    if (v12 < 0)
    {
      goto LABEL_20;
    }

    v13 = *v11;
    v14 = a1 + v12;
    constraint = chip_get_constraint(a1[2], *v11, 0);
    a2 = a1[2];
    if (v14)
    {
      if (v14 >= v10 || v14 < a1)
      {
LABEL_19:
        __break(0x5519u);
LABEL_20:
        __panic_npx("panic: invalid offset: %lld", a2, constraint, a4, a5, a6, a7, a8, v12);
      }
    }

    property_BOOL = expert_query_property_BOOL(*a1, a2, constraint, v14);
    if (property_BOOL)
    {
      break;
    }

    if (v14 >= v10 || v14 < a1)
    {
      goto LABEL_19;
    }

    v33 = *v14;
    expert_log(*a1, 2uLL, "queried cylinder: p = %s, v = 0x%x", a4, a5, a6, a7, a8, v13 + 28);
    if (++v9 == 6)
    {
      return property_BOOL;
    }
  }

  v18 = *a1;
  name = chip_get_name(a1[2]);
  expert_log(v18, 0, "odometer[%s]: failed to query odometer cylinder: %s: %d", v20, v21, v22, v23, v24, name);
  if (property_BOOL >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v25, v26, v27, v28, v29, v30, v31, property_BOOL);
  }

  return property_BOOL;
}

double odometer_prepare_nonce(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0uLL;
  v12 = 0;
  nonce_init_copy(&v11, a2, a3, a4, a5, a6, a7, a8);
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = 1;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 odometer_prepare_nonce_hash(uint64_t a1, uint64_t a2)
{
  *(a1 + 152) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 216) = *(a2 + 64);
  *(a1 + 200) = v4;
  *(a1 + 184) = v3;
  *(a1 + 168) = result;
  *(a1 + 232) = 1;
  return result;
}

__n128 odometer_prepare_notarized_manifest_hash(uint64_t a1, uint64_t a2)
{
  *(a1 + 448) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 496) = *(a2 + 48);
  *(a1 + 512) = v4;
  *(a1 + 464) = result;
  *(a1 + 480) = v3;
  *(a1 + 528) = 1;
  return result;
}

uint64_t odometer_update(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  for (i = 0; i != 80; i += 8)
  {
    v12 = *(&_property_consumers + i);
    v13 = *v12;
    v14 = *(v12 + 8);
    if (*v12)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        __panic_npx("panic: illegal odometer consumption configuration", v13, a3, a4, a5, a6, a7, a8, v18);
      }
    }

    else if (v14 < 0)
    {
      v13 = 0;
    }

    else
    {
      v15 = *(v10 + 16);
      v16 = (v15 + v14);
      if (v16 >= v15 + 264 || v16 < v15)
      {
        __break(0x5519u);
        return result;
      }

      v13 = *v16;
    }

    result = property_equal(a2, v13);
    if ((result & 1) != 0 || !*v12 && (*(v12 + 8) & 0x8000000000000000) != 0)
    {
      result = (*(v12 + 16))(v12, v10, a2, a3);
      if (!result)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t odometer_enforce(unint64_t a1)
{
  chip_boot = odometer_query_chip_boot(a1);
  v3 = *a1;
  name = chip_get_name(*(a1 + 16));
  if (chip_boot)
  {
    expert_log(v3, 1uLL, "odometer[%s]: expert does not boot chip", v5, v6, v7, v8, v9, name);
  }

  else
  {
    expert_log(v3, 1uLL, "odometer[%s]: enforcing anti-replay", v5, v6, v7, v8, v9, name);
    __odometer_select_policy(a1, _anti_replay_policies, 7, v39, v40, v41, v42, v43);
    v45 = v44;
    v52 = odometer_policy_enforce(v44, a1, v46, v47, v48, v49, v50, v51);
    if (v52)
    {
      v24 = v52;
      v53 = *a1;
      v54 = chip_get_name(*(a1 + 16));
      v83 = *v45;
      expert_log(v53, 0, "odometer[%s:%s]: anti-replay violation: %d", v55, v56, v57, v58, v59, v54);
      goto LABEL_8;
    }
  }

  __odometer_select_policy(a1, _chain_integrity_policies, 5, v10, v11, v12, v13, v14);
  v16 = v15;
  v23 = odometer_policy_enforce(v15, a1, v17, v18, v19, v20, v21, v22);
  if (v23)
  {
    v24 = v23;
    v25 = *a1;
    v26 = chip_get_name(*(a1 + 16));
    v82 = *v16;
    expert_log(v25, 0, "odometer[%s:%s]: boot chain integrity violation: %d", v27, v28, v29, v30, v31, v26);
  }

  else
  {
    if (odometer_policy_enforceable(&_odometer_policy_chain_manifest) || (v74 = odometer_policy_enforce(&_odometer_policy_chain_manifest, a1, v60, v61, v62, v63, v64, v65), !v74))
    {
      v66 = *a1;
      v67 = chip_get_name(*(a1 + 16));
      expert_log(v66, 1uLL, "odometer[%s]: manifest is live and boot chain is intact", v68, v69, v70, v71, v72, v67);
      return 0;
    }

    v24 = v74;
    v75 = *a1;
    v76 = chip_get_name(*(a1 + 16));
    expert_log(v75, 0, "odometer[%s:%s]: boot chain integrity violation: %d", v77, v78, v79, v80, v81, v76);
  }

LABEL_8:
  if (v24 == 31 && (*(a1 + 441) & 1) != 0)
  {
    return 70;
  }

  if (v24 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v32, v33, v34, v35, v36, v37, v38, v24);
  }

  return v24;
}

void __odometer_select_policy(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    goto LABEL_7;
  }

  v8 = a3;
  v10 = a2 + 8 * a3;
  v11 = a2;
  while (1)
  {
    if (v11 >= v10 || v11 < a2)
    {
      __break(0x5519u);
      return;
    }

    v12 = *v11;
    if (!odometer_policy_enforceable(*v11))
    {
      break;
    }

    ++v11;
    if (!--v8)
    {
      goto LABEL_7;
    }
  }

  if (!v12)
  {
LABEL_7:
    __panic_npx("panic: no anti-replay policy selected", a2, a3, a4, a5, a6, a7, a8, v13);
  }
}

uint64_t _odometer_consume_nonce_hash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 24);
  memset(__n, 0, sizeof(__n));
  *v22 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  if (Img4DecodeGetPropertyData(a4, v5, v22, __n))
  {
    v11 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v11, 0, "odometer[%s]: Img4DecodeGetPropertyData: %d", v13, v14, v15, v16, v17, name);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    digest_init(&__n[1], *v22, __n[0], v6, v7, v8, v9, v10);
    result = 0;
    v19 = v26;
    *(a2 + 96) = v25;
    *(a2 + 112) = v19;
    *(a2 + 128) = v27;
    v20 = v24;
    *(a2 + 64) = *&__n[1];
    *(a2 + 80) = v20;
    *(a2 + 144) = 1;
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _odometer_consume_nonce_domain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 24);
  v18 = 0;
  result = Img4DecodeGetPropertyInteger(a4, v9, &v18, a4, a5, a6, a7, a8);
  if (result)
  {
    v11 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v11, 0, "odometer[%s]: Img4DecodeGetPropertyInteger: %d", v13, v14, v15, v16, v17, name);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a2 + 24) = v18;
  }

  return result;
}

uint64_t _odometer_consume_ephemeral_switch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _odometer_decode_property(a2, a3, a4, a2 + 760, a5, a6, a7, a8);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 864) = 1;
  return result;
}

uint64_t _odometer_decode_property(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a2 + 24);
  LODWORD(__n) = 0;
  *v49 = 0;
  v12 = **(a2 + 40);
  if (v12 <= 1)
  {
    if (!v12)
    {
      PropertyBoolean = Img4DecodeGetPropertyBoolean(a3, v11, a4);
      if (PropertyBoolean)
      {
        v40 = *a1;
        name = chip_get_name(a1[2]);
        expert_log(v40, 0, "odometer[%s]: Img4DecodeGetPropertyBoolean: %d", v42, v43, v44, v45, v46, name);
      }

      return PropertyBoolean;
    }

    if (v12 == 1)
    {
      PropertyBoolean = Img4DecodeGetPropertyInteger(a3, v11, a4, a4, a5, a6, a7, a8);
      if (PropertyBoolean)
      {
        v15 = *a1;
        v47 = chip_get_name(a1[2]);
        expert_log(v15, 0, "odometer[%s]: Img4DecodeGetPropertyInteger: %d", v16, v17, v18, v19, v20, v47);
      }

      return PropertyBoolean;
    }

    goto LABEL_23;
  }

  if (v12 == 2)
  {
    PropertyBoolean = Img4DecodeGetPropertyInteger64(a3, v11, a4, a4, a5, a6, a7, a8);
    if (PropertyBoolean)
    {
      v21 = *a1;
      v48 = chip_get_name(a1[2]);
      expert_log(v21, 0, "odometer[%s]: Img4DecodeGetPropertyInteger64: %d", v22, v23, v24, v25, v26, v48);
    }

    return PropertyBoolean;
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      result = Img4DecodeGetPropertyData(a3, v11, v49, &__n);
      if (!result)
      {
        if (a4 + 104 >= a4)
        {
          version_init(a4, *v49, __n);
          return 0;
        }

        goto LABEL_24;
      }

LABEL_16:
      v32 = result;
      v33 = *a1;
      v34 = chip_get_name(a1[2]);
      expert_log(v33, 0, "odometer[%s]: Img4DecodeGetPropertyData: %d", v35, v36, v37, v38, v39, v34);
      return v32;
    }

LABEL_23:
    __panic_npx("panic: unreachable case: %s = 0x%llx", v11, a3, a4, a5, a6, a7, a8, "p->p_type->pt_switchable");
  }

  result = Img4DecodeGetPropertyData(a3, v11, v49, &__n);
  if (result)
  {
    goto LABEL_16;
  }

  if (a4 + 80 >= a4)
  {
    digest_init(a4, *v49, __n, v27, v28, v29, v30, v31);
    return 0;
  }

LABEL_24:
  __break(0x5519u);
  return result;
}

uint64_t _odometer_consume_ephemeral_nonce_domain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 24);
  v18 = 0;
  result = Img4DecodeGetPropertyInteger(a4, v9, &v18, a4, a5, a6, a7, a8);
  if (result)
  {
    v11 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v11, 0, "odometer[%s]: Img4DecodeGetPropertyInteger: %d", v13, v14, v15, v16, v17, name);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a2 + 872) = v18;
  }

  return result;
}

uint64_t _odometer_consume_ephemeral_nonce_hash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 24);
  memset(__n, 0, sizeof(__n));
  *v22 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  if (Img4DecodeGetPropertyData(a4, v5, v22, __n))
  {
    v11 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v11, 0, "odometer[%s]: Img4DecodeGetPropertyData: %d", v13, v14, v15, v16, v17, name);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    digest_init(&__n[1], *v22, __n[0], v6, v7, v8, v9, v10);
    result = 0;
    v19 = v26;
    *(a2 + 912) = v25;
    *(a2 + 928) = v19;
    *(a2 + 944) = v27;
    v20 = v24;
    *(a2 + 880) = *&__n[1];
    *(a2 + 896) = v20;
    *(a2 + 960) = 1;
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _odometer_consume_chain_hash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a3 + 24);
  LODWORD(__n) = 0;
  *v19 = 0;
  if (Img4DecodeGetPropertyData(a4, v5, v19, &__n))
  {
    v11 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v11, 0, "odometer[%s]: Img4DecodeGetPropertyData: %d", v13, v14, v15, v16, v17, name);
    return 0xFFFFFFFFLL;
  }

  else
  {
    digest_init(a2 + 240, *v19, __n, v6, v7, v8, v9, v10);
    result = 0;
    *(a2 + 320) = 1;
  }

  return result;
}

uint64_t _odometer_consume_mixn_match(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 24);
  v14 = 0;
  result = Img4DecodeGetPropertyBoolean(a4, v5, &v14);
  if (result)
  {
    v7 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v7, 0, "odometer[%s]: Img4DecodeGetPropertyBoolean: %d", v9, v10, v11, v12, v13, name);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a2 + 440) = v14;
  }

  return result;
}

uint64_t _odometer_consume_pivot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _odometer_decode_property(a2, a3, a4, a2 + 328, a5, a6, a7, a8);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 432) = 1;
  return result;
}

uint64_t _odometer_consume_static_lifetime(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = 0;
  v8 = a2[2] + 232;
  for (i = 1; ; i = 0)
  {
    v10 = i;
    if (property_equal(a3, *(v8 + 8 * v7)))
    {
      break;
    }

    v7 = 1;
    if ((v10 & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v15 = &a2[14 * v7];
  result = _odometer_decode_property(a2, a3, a4, (v15 + 67), v11, v12, v13, v14);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(v15 + 320) = 1;
  return result;
}

uint64_t DEREncoderAddImage4Tag(uint64_t *a1, char *__s)
{
  if (strlen(__s) != 4)
  {
    __panic_npx("panic: invalid Image4 tag: %s", v4, v5, v6, v7, v8, v9, v10, __s);
  }

  return DEREncoderAddData(a1, 0, 0x16u, __s, 4u, 0);
}

uint64_t DEREncoderAddString(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);

  return DEREncoderAddData(a1, 0, 0x16u, __s, v4, 0);
}

uint64_t DEREncoderAddImage4Property(uint64_t *a1, char *__s, uint64_t *a3)
{
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  if (strlen(__s) != 4)
  {
LABEL_35:
    __panic_npx("panic: four-character codes must be four characters long", v6, v7, v8, v9, v10, v11, v12, v100);
  }

  if (__s + 5 < __s)
  {
LABEL_34:
    __break(0x5519u);
    goto LABEL_35;
  }

  v13 = *__s;
  v14 = DEREncoderCreate(0);
  if (v14)
  {
    v15 = v14;
    v16 = DEREncoderAddImage4Tag(v14, __s);
    if (v16)
    {
      v24 = v16;
      v25 = log_expert(v16);
      expert_log(v25, 2uLL, "DEREncoderAddImage4TagUInt32: %d", v26, v27, v28, v29, v30, v24);
LABEL_32:
      DEREncoderDestroy(v15);
      return v24;
    }

    v37 = bswap32(v13);
    v38 = a3[2];
    if (v38 <= 3)
    {
      if (v38 != 1)
      {
        if (v38 == 2)
        {
          PropertyInteger64 = Img4DecodeGetPropertyInteger64(a3, v37, &v103, v19, v20, v21, v22, v23);
          if (PropertyInteger64)
          {
            v40 = PropertyInteger64;
            v41 = log_expert(PropertyInteger64);
            expert_log(v41, 2uLL, "Img4DecodeGetPropertyInteger64: %d", v42, v43, v44, v45, v46, v40);
LABEL_20:
            v24 = 3;
            goto LABEL_32;
          }

          v85 = DEREncoderAddUInt64(v15, 0, 2u, v103);
          if (v85)
          {
            v48 = v85;
            v86 = log_expert(v85);
            expert_log(v86, 2uLL, "DEREncoderAddUInt64: %d", v87, v88, v89, v90, v91, v48);
            goto LABEL_29;
          }

LABEL_30:
          v92 = DEREncoderAddPrivateFromEncoder(v15, a1, v37);
          v24 = v92;
          if (v92)
          {
            v93 = log_expert(v92);
            expert_log(v93, 2uLL, "DEREncoderAddPrivateFromEncoder: %d", v94, v95, v96, v97, v98, v24);
          }

          goto LABEL_32;
        }

LABEL_36:
        __panic_npx("panic: unreachable", v17, v18, v19, v20, v21, v22, v23, v100);
      }

      PropertyBoolean = Img4DecodeGetPropertyBoolean(a3, v37, &v104);
      if (PropertyBoolean)
      {
        v56 = PropertyBoolean;
        v57 = log_expert(PropertyBoolean);
        expert_log(v57, 2uLL, "Img4DecodeGetPropertyBoolean: %d", v58, v59, v60, v61, v62, v56);
        goto LABEL_20;
      }

      v71 = DEREncoderAddBoolean(v15, v104);
      if (!v71)
      {
        goto LABEL_30;
      }

      v48 = v71;
      v72 = log_expert(v71);
      expert_log(v72, 2uLL, "DEREncoderAddBoolean: %d", v73, v74, v75, v76, v77, v48);
LABEL_29:
      v24 = v48;
      goto LABEL_32;
    }

    if (v38 != 4)
    {
      if (v38 != 5)
      {
        goto LABEL_36;
      }

      v47 = DEREncoderAddData(v15, 0, 5u, 0, 0, 0);
      if (!v47)
      {
        goto LABEL_30;
      }

      v48 = v47;
      v49 = log_expert(v47);
      expert_log(v49, 2uLL, "DEREncoderAddNull: %d", v50, v51, v52, v53, v54, v48);
      goto LABEL_29;
    }

    PropertyData = Img4DecodeGetPropertyData(a3, v37, &v101, &v102);
    if (PropertyData)
    {
      v64 = PropertyData;
      v65 = log_expert(PropertyData);
      expert_log(v65, 2uLL, "Img4DecodeGetPropertyData: %d", v66, v67, v68, v69, v70, v64);
      goto LABEL_20;
    }

    v8 = v101;
    v9 = v102;
    if (!v101 || v102)
    {
      v78 = DEREncoderAddDataNoCopy(v15, 0, 4u, v101, v102, 0);
      if (!v78)
      {
        goto LABEL_30;
      }

      v48 = v78;
      v79 = log_expert(v78);
      expert_log(v79, 2uLL, "DEREncoderAddOctetString: %d", v80, v81, v82, v83, v84, v48);
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  v31 = log_expert(0);
  v24 = 2;
  expert_log(v31, 2uLL, "DEREncoderCreate: %d", v32, v33, v34, v35, v36, 2);
  return v24;
}

void DEREncoderDestroyAndZero(void ***a1)
{
  v2 = *a1;
  if (v2)
  {
    DEREncoderDestroy(v2);
    *a1 = 0;
  }
}

size_t DEREncoderEncodeImage4Dictionary(uint64_t *a1, char *__s, uint64_t **a3)
{
  result = strlen(__s);
  if (result != 4)
  {
    __panic_npx("panic: four-character codes must be four characters long", v7, v8, v9, v10, v11, v12, v13, v19);
  }

  if (__s + 5 < __s)
  {
    __break(0x5519u);
  }

  else
  {
    v14 = *__s;
    v15 = DEREncoderCreate(0);
    if (!v15)
    {
      return 2;
    }

    v16 = v15;
    v17 = DEREncoderAddImage4Tag(v15, __s);
    if (!v17)
    {
      v17 = DEREncoderAddSetFromEncoder(a3, v16);
      if (!v17)
      {
        v17 = DEREncoderAddPrivateFromEncoder(v16, a1, bswap32(v14));
      }
    }

    v18 = v17;
    DEREncoderDestroy(v16);
    return v18;
  }

  return result;
}

uint64_t DEREncoderCreateImage4Dictionary(char *a1, uint64_t **a2, uint64_t **a3)
{
  v6 = DEREncoderCreate(0);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  v8 = DEREncoderEncodeImage4Dictionary(v6, a1, a2);
  if (v8)
  {
    DEREncoderDestroy(v7);
  }

  else
  {
    *a3 = v7;
  }

  return v8;
}

size_t cstring_init_with_string(uint64_t a1, char *__s)
{
  result = strlen(__s);
  if (&__s[result + 1] < __s)
  {
    __break(0x5519u);
  }

  else
  {
    v5 = strnlen(__s, result + 1);
    v6 = v5;
    if (v5 >= 0x3F)
    {
      v7 = 63;
    }

    else
    {
      v7 = v5;
    }

    strlcpy(a1, __s, v7 + 1);
    *(a1 + 64) = v7;
    *(a1 + 72) = v6;
    return a1;
  }

  return result;
}

uint64_t cstring_init_with_buff(uint64_t a1, char *__s1, size_t __n)
{
  v5 = strnlen(__s1, __n);
  v6 = v5;
  if (v5 >= 0x3F)
  {
    v7 = 63;
  }

  else
  {
    v7 = v5;
  }

  strlcpy(a1, __s1, v7 + 1);
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  return a1;
}

unint64_t _boot_static_enforceable(uint64_t *a1, uint64_t *a2)
{
  result = a2[2];
  if (!*(result + 232))
  {
    v4 = 1;
    v5 = "odometer[%s:%s]: chip has no properties for policy";
    goto LABEL_5;
  }

  if (!*(result + 160))
  {
    v4 = 0;
    v5 = "odometer[%s:%s]: policy is enforceable";
LABEL_5:
    v6 = *a2;
    name = chip_get_name(result);
    v21 = *a1;
    expert_log(v6, 1uLL, v5, v8, v9, v10, v11, v12, name);
    return v4;
  }

  if (result < result + 264)
  {
    v13 = chip_get_name(result);
    __panic_npx("panic: illegal chip definition: anti-replay and static lifetime policies defined: %s", v14, v15, v16, v17, v18, v19, v20, v13);
  }

  __break(0x5519u);
  return result;
}

uint64_t _boot_static_enforce(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2[2];
  if (odometer_check_fuse(a2, &_odometer_cylinder_internal_use, a3, a4, a5, a6, a7, a8))
  {
    v15 = "odometer[%s:%s]: internal use-only unit entitlement found";
LABEL_13:
    v25 = *a2;
    name = chip_get_name(a2[2]);
    v48 = *a1;
    expert_log(v25, 1uLL, v15, v27, v28, v29, v30, v31, name);
    return 0;
  }

  else
  {
    v16 = 0;
    v17 = v10 + 232;
    v18 = 1;
    v15 = "odometer[%s:%s]: manifest is current";
    while (1)
    {
      v19 = *(v17 + 8 * v16);
      v20 = v18;
      v21 = &a2[14 * v16 + 67];
      v22 = !v19 || *(v21 + 104) == 0;
      if (!v22 && v21 != 0)
      {
        v24 = odometer_enforce_property(a2, a1, v19, v21, v11, v12, v13, v14);
        if (v24)
        {
          break;
        }
      }

      v18 = 0;
      v16 = 1;
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v32 = v24;
    v34 = *a2;
    v35 = chip_get_name(a2[2]);
    v49 = *a1;
    expert_log(v34, 0, "odometer[%s:%s]: anti-replay violation: %d", v36, v37, v38, v39, v40, v35);
    if (v32 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v41, v42, v43, v44, v45, v46, v47, v32);
    }
  }

  return v32;
}

uint64_t _boot_live_enforceable(uint64_t *a1, uint64_t a2)
{
  if (odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    v4 = *(a2 + 144);
    v5 = *a2;
    name = chip_get_name(*(a2 + 16));
    v12 = *a1;
    if (v4)
    {
      expert_log(v5, 1uLL, "odometer[%s:%s]: policy is enforceable", v7, v8, v9, v10, v11, name);
      return 0;
    }

    else
    {
      v13 = 1;
      expert_log(v5, 1uLL, "odometer[%s:%s]: manifest has no constraint for policy", v7, v8, v9, v10, v11, name);
    }
  }

  else
  {
    v14 = *a2;
    v15 = chip_get_name(*(a2 + 16));
    v22 = *a1;
    v13 = 1;
    expert_log(v14, 1uLL, "odometer[%s:%s]: chip has no property for policy", v16, v17, v18, v19, v20, v15);
  }

  return v13;
}

uint64_t _boot_live_enforce(uint64_t a1, uint64_t a2)
{
  v98[3] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  chip_property = odometer_policy_get_chip_property(a1, *(a2 + 16));
  if (!*(a2 + 144))
  {
    __panic_npx("panic: optional not set", v6, v7, v8, v9, v10, v11, v12, v87);
  }

  v13 = chip_property;
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  memset(v98, 0, 24);
  memset(v97, 0, sizeof(v97));
  memset(v96, 0, sizeof(v96));
  __n = 64;
  live_nonce = odometer_query_live_nonce(a2, a1, v15, v98, v9, v10, v11, v12);
  if (live_nonce != 6)
  {
    v17 = live_nonce;
    if (live_nonce)
    {
      v61 = *a2;
      name = chip_get_name(*(a2 + 16));
      v92 = *a1;
      expert_log(v61, 0, "odometer[%s:%s]: failed to query nonce: %d", v63, v64, v65, v66, v67, name);
      goto LABEL_16;
    }

    v18 = expert_entangle_nonce(v4, v14, v15, v98, v97);
    if (v18)
    {
      v17 = v18;
      v19 = *a2;
      v20 = chip_get_name(*(a2 + 16));
      v89 = *a1;
      expert_log(v19, 0, "odometer[%s:%s]: failed to entangle nonce: %d", v21, v22, v23, v24, v25, v20);
      goto LABEL_16;
    }

    odometer_compute_nonce_hash(v4, v14, v97, v96);
LABEL_14:
    if (!property_constrain_digest(v13, v4, a2 + 64, v96, v68, v69, v70, v71))
    {
      v80 = *a2;
      v81 = chip_get_name(*(a2 + 16));
      v94 = *a1;
      expert_log(v80, 1uLL, "odometer[%s:%s]: manifest is current", v82, v83, v84, v85, v86, v81);
      v17 = 0;
LABEL_17:
      v79 = *MEMORY[0x29EDCA608];
      return v17;
    }

    v17 = *(a1 + 24);
    v72 = *a2;
    v73 = chip_get_name(*(a2 + 16));
    v93 = *a1;
    expert_log(v72, 0, "odometer[%s:%s]: anti-replay violation: %d", v74, v75, v76, v77, v78, v73);
LABEL_16:
    if (v17 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v26, v27, v28, v29, v30, v31, v32, v17);
    }

    goto LABEL_17;
  }

  v33 = *a2;
  v34 = chip_get_name(*(a2 + 16));
  v90 = *a1;
  expert_log(v33, 1uLL, "odometer[%s:%s]: nonce is bootstrapping; using boot nonce hash", v35, v36, v37, v38, v39, v34);
  v47 = v14[21];
  if (!v47)
  {
    __panic_npx("panic: illegal chip/expert configuration", v40, v41, v42, v43, v44, v45, v46, v88);
  }

  result = expert_read_boot_manifest(v4, v47 + 28, v96 + 8, &__n);
  if (result)
  {
    v17 = result;
    v54 = *a2;
    v55 = chip_get_name(*(a2 + 16));
    v91 = *a1;
    expert_log(v54, 0, "odometer[%s:%s]: failed to query boot nonce hash: %d", v56, v57, v58, v59, v60, v55);
    goto LABEL_16;
  }

  if (__n <= 0x40)
  {
    digest_init(v96, v96 + 8, __n, v49, v50, v51, v52, v53);
    goto LABEL_14;
  }

  __break(0x5519u);
  return result;
}

uint64_t image4_environment_copy_nonce_digest(uint64_t a1, void *a2, size_t *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  memset(__src, 0, sizeof(__src));
  __n = 64;
  v7 = image4_environment_resolve(a1);
  if (v7)
  {
    v13 = v7;
    nonce_domain = image4_environment_get_nonce_domain(a1);
    v15 = darwin_syscall_nonce_copy_hash(v6, v13, nonce_domain, __src, &__n);
    if (v15)
    {
      v23 = v15;
      if (v15 >= 0x6B)
      {
        __panic_npx_2(v15, v16, v17, v18, v19, v20, v21, v22, v15);
      }
    }

    else
    {
      v24 = __n;
      if (__n <= 0x40)
      {
        memcpy(a2, __src, __n);
        v23 = 0;
        *a3 = v24;
      }

      else
      {
        v23 = 84;
      }
    }
  }

  else
  {
    v23 = 45;
    expert_log(v6, 0, "failed to resolve chip environment: %d", v8, v9, v10, v11, v12, 45);
  }

  v25 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t image4_environment_roll_nonce(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = image4_environment_resolve(a1);
  if (v3)
  {
    v9 = v3;
    nonce_domain = image4_environment_get_nonce_domain(a1);
    v11 = darwin_syscall_nonce_roll(v2, v9, nonce_domain);
    v19 = v11;
    if (v11 >= 0x6B)
    {
      __panic_npx_2(v11, v12, v13, v14, v15, v16, v17, v18, v11);
    }
  }

  else
  {
    v19 = 45;
    expert_log(v2, 0, "failed to resolve chip environment: %d", v4, v5, v6, v7, v8, 45);
  }

  return v19;
}

uint64_t image4_environment_generate_nonce_proposal(uint64_t a1, void *a2, size_t *a3, char *a4, unint64_t *a5)
{
  v33 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 8);
  memset(__src, 0, sizeof(__src));
  __n = 64;
  v11 = image4_environment_resolve(a1);
  if (v11)
  {
    v17 = v11;
    nonce_domain = image4_environment_get_nonce_domain(a1);
    v19 = darwin_syscall_nonce_generate_proposal(v10, v17, nonce_domain, __src, &__n, a4, a5);
    if (v19)
    {
      v27 = v19;
      if (v19 >= 0x6B)
      {
        __panic_npx_2(v19, v20, v21, v22, v23, v24, v25, v26, v19);
      }
    }

    else
    {
      v28 = __n;
      if (__n <= 0x40)
      {
        memcpy(a2, __src, __n);
        v27 = 0;
        *a3 = v28;
      }

      else
      {
        v27 = 84;
      }
    }
  }

  else
  {
    v27 = 45;
    expert_log(v10, 0, "failed to resolve chip environment: %d", v12, v13, v14, v15, v16, 45);
  }

  v29 = *MEMORY[0x29EDCA608];
  return v27;
}

uint64_t image4_environment_commit_nonce_proposal(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  memset(v23, 0, sizeof(v23));
  v22 = 64;
  v3 = image4_environment_resolve(a1);
  if (v3)
  {
    v9 = v3;
    nonce_domain = image4_environment_get_nonce_domain(a1);
    v11 = darwin_syscall_nonce_peek_hash(v2, v9, nonce_domain, v23, &v22);
    v19 = v11;
    if (!v11)
    {
      v11 = darwin_syscall_nonce_roll(v2, v9, nonce_domain);
      v19 = v11;
    }

    if (v19 >= 0x6B)
    {
      __panic_npx_2(v11, v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    v19 = 45;
    expert_log(v2, 0, "failed to resolve chip environment: %d", v4, v5, v6, v7, v8, 45);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

unint64_t image4_environment_flash(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t *a5)
{
  __src[2] = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 8);
  v38 = 0;
  __src[0] = 0;
  memset(v37, 0, sizeof(v37));
  __src[1] = 0;
  __n = 16;
  result = image4_environment_resolve(a1);
  if (!result)
  {
    v27 = 45;
    expert_log(v9, 0, "failed to resolve chip environment: %d", v11, v12, v13, v14, v15, 45);
    goto LABEL_13;
  }

  v16 = result;
  if (!*(result + 80))
  {
    if (result >= result + 264)
    {
      goto LABEL_14;
    }

    name = chip_get_name(result);
    v27 = 45;
    expert_log(v9, 0, "%s: chip has no associated dfu policy: %d", v29, v30, v31, v32, v33, name);
LABEL_13:
    v35 = *MEMORY[0x29EDCA608];
    return v27;
  }

  buff_init_wrap(v37, a2, a3);
  result = darwin_syscall_image_dfu(v9, *(v16 + 80), v37, __src, &__n, v17, v18, v19);
  if (result)
  {
    v27 = result;
    if (result >= 0x6B)
    {
      __panic_npx_2(result, v20, v21, v22, v23, v24, v25, v26, result);
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    v27 = 0;
    goto LABEL_13;
  }

  v34 = __n;
  if (__n <= 0x10)
  {
    memcpy(a4, __src, __n);
    v27 = 0;
    *a5 = v34;
    goto LABEL_13;
  }

LABEL_14:
  __break(0x5519u);
  return result;
}

uint64_t img4_firmware_new_from_fd_4MSM(char *a1, uint64_t a2, unsigned int a3, int *a4, uint64_t a5)
{
  expert = img4_runtime_get_expert(a1);
  v17 = 0;
  v16 = 0;
  v11 = *a4;
  v12 = _expert_alloc_type(expert, &_image4_type_firmware);
  img4_firmware_init_sentinel(v12, a1, a5);
  fourcc_init(&v16, a3);
  *(v12 + 16) = &_image4_type_firmware;
  inited = payload_init_empty(v12 + 56, expert, &v16);
  *(v12 + 48) = inited;
  v14 = *(a2 + 16);
  *(v12 + 24) = *a2;
  *(v12 + 40) = v14;
  payload_set_callbacks(inited, img4_firmware_new_from_fd_4MSM_callbacks, v11);
  *a4 = -1;
  return v12;
}

uint64_t _fd_measure(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v78 = a3;
  v83 = *MEMORY[0x29EDCA608];
  v6 = (*(a2 + 48))();
  memset(&v81, 0, sizeof(v81));
  memset(v82, 0, sizeof(v82));
  MEMORY[0x2A1C7C4A8](v6, v7, (*(v6 + 8) + *(v6 + 16) + 19) & 0xFFFFFFFFFFFFFFF8, v8, v9, v10, v11, v12);
  v15 = &v76 - v14;
  if (v16 >= 8)
  {
    memset(&v76 - v14, 170, v13);
  }

  ccdigest_init();
  v79 = &v76;
  if (a4 < 0)
  {
    v29 = 0;
    v22 = 0;
    goto LABEL_9;
  }

  v22 = malloc_type_malloc(0x40000uLL, 0xB28FF26uLL);
  if (v22)
  {
    if (fstat(a4, &v81))
    {
      v23 = *__error();
      expert_log(*a1, 0, "%s: fstat: %d", v24, v25, v26, v27, v28, a1[1] + 4);
      if (v23)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v33 = 0;
      v77 = 0;
      st_size = v81.st_size;
      while (1)
      {
        while (1)
        {
          memset(v80, 0, 40);
          if (st_size >= 0x40000)
          {
            v35 = 0x40000;
          }

          else
          {
            v35 = st_size;
          }

          v36 = read(a4, v22, v35);
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v42 = v36;
          if (v36 > 0x40000)
          {
            goto LABEL_25;
          }

          buff_init_wrap_signed(v80, v22, v36, v37, v38, v39, v40, v41);
          if (v42 != v35)
          {
            break;
          }

          length_signed = buff_get_length_signed(v80, v43, v44, v45, v46, v47, v48, v49);
          st_size -= v80[1];
          expert_log(*a1, 2uLL, "%s: left to read = %lu", v51, v52, v53, v54, v55, a1[1] + 4);
          v56 = *a1;
          v57 = a1[1] + 4;
          v77 += length_signed;
          expert_log(v56, 2uLL, "%s: cur offset = %lld", v58, v59, v60, v61, v62, v57);
          ccdigest_update();
          v33 = 0;
          if (!st_size)
          {
            goto LABEL_23;
          }
        }

        if (v42)
        {
          v70 = 5;
          expert_log(*a1, 0, "%s: read: bad read: actual = %ld, requested = %lu, chunk length = %lu: %d", v45, v46, v47, v48, v49, a1[1] + 4);
          goto LABEL_29;
        }

        expert_log(*a1, 2uLL, "%s: stall while reading file", v45, v46, v47, v48, v49, a1[1] + 4);
        if (v33 >= 3)
        {
          break;
        }

        ++v33;
        if (!st_size)
        {
LABEL_23:
          if (*v6 >= 0x41uLL)
          {
            __panic_npx("panic: buffer not sufficient for digest: actual = %lu, expected >= %lu", v63, v64, v65, v66, v67, v68, v69, 64);
          }

          (*(v6 + 56))(v6, v15, v82);
          v29 = *v6;
          if (*v6 < 0x41uLL)
          {
            goto LABEL_9;
          }

LABEL_25:
          __break(0x5519u);
LABEL_26:
          v70 = *__error();
          expert_log(*a1, 0, "%s: read: %d", v71, v72, v73, v74, v75, a1[1] + 4);
          goto LABEL_29;
        }
      }

      v70 = 5;
      expert_log(*a1, 0, "%s: stalled out: %d", v65, v66, v67, v68, v69, a1[1] + 4);
LABEL_29:
      if (v70)
      {
        goto LABEL_7;
      }
    }

    v30 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v29 = 0;
LABEL_9:
  v30 = digest_init(v78, v82, v29, v17, v18, v19, v20, v21);
LABEL_10:
  free(v22);
  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

uint64_t _fd_dealloc(int a1, int a2)
{
  result = close(a2);
  if (result)
  {
    v3 = __error();
    __panic_npx("panic: close%d", v4, v5, v6, v7, v8, v9, v10, *v3);
  }

  return result;
}

uint64_t _BootPolicyClosureComputeDigest_2(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(*(a5 + 32) + 16);
  if (*v9 > a4)
  {
    v11 = *v9;
    __panic_npx_0(v9, a2, a1, a4, a5, a6, a7, a8, a4);
  }

  ccdigest();
  return 0;
}

uint64_t _extract_payload_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a3 + 584))
  {
    __panic_npx_8(a1, a2, a3, a4, a5, a6, a7, a8, v8);
  }

  *a5 = *(a3 + 552);
  return *(a3 + 544);
}

void __panic_npx_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  v10 = &a9;
  vsnprintf(__str, 0x800uLL, "panic: optional not set", &a9);
  _os_crash();
  __break(1u);
}

uint64_t dylib_init(uint64_t a1)
{
  v2 = generic_expert();
  expert_init(a1);
  darwin_syscall_init(a1);

  return generic_expert_set_specialist(v2, a1, 0, v3, v4, v5, v6, v7);
}

size_t dylib_expert_state_init(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  memset(v4, 0, sizeof(v4));
  if (os_parse_boot_arg_int())
  {
    *a1 = 1;
  }

  result = os_parse_boot_arg_string();
  if (result)
  {
    if (LODWORD(v4[0]) == 3171437)
    {
      *(a1 + 16) = a1 + 24;
    }

    result = strlcpy((a1 + 24), v4, 0x20uLL);
    *(a1 + 8) = a1 + 24;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t dylib_expert_call_method(uint64_t a1, unint64_t a2, const void *a3, size_t a4, void *a5, size_t *a6)
{
  v12 = expert_runtime_boot(a1);
  if (v12)
  {
    v20 = v12;
    expert_log(a1, 3uLL, "failed to boot expert for user client call: %d", v15, v16, v17, v18, v19, v12);
    goto LABEL_3;
  }

  v28 = darwin_syscall_get(a2, v13, v14, v15, v16, v17, v18, v19);
  if (!v28)
  {
    return 78;
  }

  v36 = v28;
  if (*(v28 + 9) == 6)
  {
    return 78;
  }

  kmod_connect = dylib_expert_get_kmod_connect(a1, v29, v30, v31, v32, v33, v34, v35);
  if (!kmod_connect)
  {
    expert_log(a1, 1uLL, "user client not supported on this target", v39, v40, v41, v42, v43, outputStruct);
    return 45;
  }

  result = IOConnectCallMethod(kmod_connect, *(v36 + 36), 0, 0, a3, a4, 0, 0, a5, a6);
  if (!result)
  {
    expert_log(a1, 2uLL, "user client method success", v44, v45, v46, v47, v48, outputStructa);
    return 0;
  }

  if (((result >> 14) & 0xFFF) != 3)
  {
    v51 = *v36;
    expert_log(a1, 0, "user client method failed: v = %hx, trap = %s, kr = %#x, sys = %#x, sub = %#x, code = %#x", v44, v45, v46, v47, v48, *(v36 + 8));
    return 64;
  }

  if (v36 < v36 + 40)
  {
    v20 = result & 0x3FFF;
    dylib_expert_record_trap_error(a1, v36, "iokit", v20, v45, v46, v47, v48);
LABEL_3:
    if (v20 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v21, v22, v23, v24, v25, v26, v27, v20);
    }

    return v20;
  }

  __break(0x5519u);
  return result;
}

uint64_t dylib_expert_record_trap_error(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 8);
  v9 = *a2;
  if (a4 == 84)
  {
    v13 = *a2;
    return expert_log(a1, 0, "bad argument vector provided to kext: v = %hx, how = %s, trap = %s: %d", a4, a5, a6, a7, a8, v8);
  }

  else if (a4 == 87)
  {
    v12 = *a2;
    return expert_log(a1, 0, "kext and dylib are out of sync: v = %hx, how = %s, trap = %s: %d", a4, a5, a6, a7, a8, v8);
  }

  else
  {
    v11 = *a2;
    if (a4 == 96)
    {
      return expert_log(a1, 0, "kext cannot parse argument vector: v = %hx, how = %s, trap = %s: %d", a4, a5, a6, a7, a8, v8);
    }

    else
    {
      return expert_log(a1, 0, "trap failed: v = %hx, how = %s, trap = %s: %d", a4, a5, a6, a7, a8, v8);
    }
  }
}

uint64_t dylib_restoreos_logv(unint64_t a1, const char *a2, va_list a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a1 >= 4)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "lvl");
  }

  v9 = off_29EF019D8[a1];
  os_unfair_lock_lock(&dylib_restoreos_logv_rd_log);
  v10 = _restore_log_state_file_locked();
  os_unfair_lock_unlock(&dylib_restoreos_logv_rd_log);
  v11 = getprogname();
  if (fprintf(v10, "%s: AppleImage4 %s", v11, v9) < 0 || vfprintf(v10, a2, a3) < 0 || (result = fprintf(v10, "\n"), (result & 0x80000000) != 0))
  {
    os_unfair_lock_lock(&dylib_restoreos_logv_rd_log);
    v13 = qword_2A13C3B18;
    qword_2A13C3B18 = 0;
    v14 = _restore_log_state_file_locked();
    os_unfair_lock_unlock(&dylib_restoreos_logv_rd_log);
    v15 = getprogname();
    fprintf(v14, "%s: AppleImage4 %s", v15, v9);
    vfprintf(v14, a2, a3);
    result = fputc(10, v14);
    if (v13)
    {
      if (v13 != *MEMORY[0x29EDCA610])
      {
        result = fclose(v13);
        if (result == -1)
        {
          dylib_restoreos_logv_cold_1(&v19, v20);
        }
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

FILE *_restore_log_state_file_locked()
{
  result = qword_2A13C3B18;
  if (!qword_2A13C3B18)
  {
    result = fopen("/dev/console", "w");
    if (result < &result[1])
    {
      qword_2A13C3B18 = result;
      if (result)
      {
        return result;
      }

      v8 = *__error();
      if (v8 != 1 && v8 != 13)
      {
        if (v8 == 22)
        {
          goto LABEL_16;
        }

        result = *MEMORY[0x29EDCA610];
        goto LABEL_13;
      }

      result = *MEMORY[0x29EDCA610];
      if (*MEMORY[0x29EDCA610] < (*MEMORY[0x29EDCA610] + 152))
      {
        qword_2A13C3B18 = *MEMORY[0x29EDCA610];
LABEL_13:
        if (result < &result[1])
        {
          return result;
        }
      }
    }

    __break(0x5519u);
LABEL_16:
    __panic_npx("panic: invalid mode trying to open console", v1, v2, v3, v4, v5, v6, v7, v10);
  }

  return result;
}

uint64_t chip_instance_instantiate(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[0] = _property_filter_chip_instance;
  v34[1] = 0;
  v34[2] = -1;
  v11 = property_iterator_next(v34, a2, a3, a4, a5, a6, a7, a8);
  if (!v11)
  {
    LOBYTE(result) = -1;
    goto LABEL_48;
  }

  v19 = v11;
  v20 = a1 + 160;
  while (1)
  {
    constraint = chip_get_constraint(a3, v19, 0);
    v29 = constraint;
    v30 = constraint + 104;
    v31 = **(constraint + 40);
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v32 = *(constraint + 64);
        if (v32 < 0)
        {
          goto LABEL_45;
        }

        if (constraint >= v30 || (v24 = (a1 + v32)) != 0 && (v24 >= v20 || v24 < a1))
        {
LABEL_44:
          __break(0x5519u);
LABEL_45:
          __panic_npx("panic: invalid offset: %lld", v22, v23, v24, v25, v26, v27, v28, v32);
        }

        result = expert_query_property_uint64(a2, a3, constraint, v24);
      }

      else
      {
        if (v31 != 3)
        {
LABEL_46:
          __panic_npx("panic: version property iterated during instantiation: p = %s, fourcc = %s", v22, v23, v24, v25, v26, v27, v28, *constraint);
        }

        v32 = *(constraint + 64);
        if (v32 < 0)
        {
          goto LABEL_45;
        }

        if (constraint >= v30)
        {
          goto LABEL_44;
        }

        v24 = (a1 + v32);
        if (a1 + v32)
        {
          if (v24 >= v20 || v24 < a1)
          {
            goto LABEL_44;
          }
        }

        result = expert_query_property_digest(a2, a3, constraint, v24);
      }
    }

    else if (v31)
    {
      if (v31 != 1)
      {
        goto LABEL_46;
      }

      v32 = *(constraint + 64);
      if (v32 < 0)
      {
        goto LABEL_45;
      }

      if (constraint >= v30)
      {
        goto LABEL_44;
      }

      v24 = (a1 + v32);
      if (a1 + v32)
      {
        if (v24 >= v20 || v24 < a1)
        {
          goto LABEL_44;
        }
      }

      result = expert_query_property_uint32(a2, a3, constraint, v24);
    }

    else
    {
      v32 = *(constraint + 64);
      if (v32 < 0)
      {
        goto LABEL_45;
      }

      if (constraint >= v30)
      {
        goto LABEL_44;
      }

      v24 = (a1 + v32);
      if (a1 + v32)
      {
        if (v24 >= v20 || v24 < a1)
        {
          goto LABEL_44;
        }
      }

      result = expert_query_property_BOOL(a2, a3, constraint, v24);
    }

    if (result <= 18)
    {
      if (result)
      {
        if (result != 2)
        {
          break;
        }
      }

      else
      {
        *(a1 + 8) |= *(v29 + 72);
      }

      goto LABEL_40;
    }

    if (result != 19 && result != 45)
    {
      break;
    }

LABEL_40:
    result = property_iterator_next(v34, v12, v13, v14, v15, v16, v17, v18);
    v19 = result;
    if (!result)
    {
      return result;
    }
  }

  if (result >= 0x6B)
  {
LABEL_48:
    __panic_npx("panic: error not set to valid posix code: %d", v12, v13, v14, v15, v16, v17, v18, result);
  }

  return result;
}

unint64_t chip_instance_check(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[8];
  if (v8 < 0)
  {
    return 0;
  }

  v9 = a2[9];
  if (!v9)
  {
    __panic_npx("panic: illegal property definition: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  if ((*(a1 + 8) & v9) == 0)
  {
    return 0;
  }

  v10 = a1 + v8;
  if (v10)
  {
    if (v10 >= a1 + 160 || v10 < a1)
    {
      __break(0x5519u);
      return 0;
    }
  }

  return v10;
}

unint64_t chip_instance_set_BOOL(unint64_t result, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[5];
  if (v8 != &_property_type_BOOL)
  {
    v12 = *a2;
    v13 = *(v8 + 8);
    __panic_npx("panic: non-%s property set: property = %s, type = %s", a2, a3, a4, a5, a6, a7, a8, 108);
  }

  v9 = a2[8];
  if (v9 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  v10 = (result + v9);
  *(result + 8) |= a2[9];
  if (v10 < result + 160 && v10 >= result)
  {
    *v10 = *a3;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

unint64_t chip_instance_set_uint32(unint64_t result, uint64_t *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[5];
  if (v8 != &_property_type_uint32)
  {
    v12 = *a2;
    v13 = v8[1];
    __panic_npx("panic: non-%s property set: property = %s, type = %s", a2, a3, a4, a5, a6, a7, a8, 240);
  }

  v9 = a2[8];
  if (v9 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  v10 = (result + v9);
  *(result + 8) |= a2[9];
  if (v10 < result + 160 && v10 >= result)
  {
    *v10 = *a3;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

unint64_t chip_instance_set_uint64(unint64_t result, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[5];
  if (v8 != &_property_type_uint64)
  {
    v12 = *a2;
    v13 = v8[1];
    __panic_npx("panic: non-%s property set: property = %s, type = %s", a2, a3, a4, a5, a6, a7, a8, 247);
  }

  v9 = a2[8];
  if (v9 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  v10 = (result + v9);
  *(result + 8) |= a2[9];
  if (v10 < result + 160 && v10 >= result)
  {
    *v10 = *a3;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

unint64_t chip_instance_set_digest(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[5];
  if (v8 != &_property_type_digest)
  {
    v12 = *a2;
    v13 = v8[1];
    __panic_npx("panic: non-%s property set: property = %s, type = %s", a2, a3, a4, a5, a6, a7, a8, 254);
  }

  v9 = a2[8];
  if (v9 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  *(result + 8) |= a2[9];
  v10 = result + v9;
  if (!v10 || (v10 < result + 160 ? (v11 = v10 >= result) : (v11 = 0), v11))
  {

    return digest_copy(v10, a3, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

void chip_instance_set_version(unint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[5];
  if (v8 != &_property_type_version)
  {
    v12 = *a2;
    v13 = v8[1];
    __panic_npx("panic: non-%s property set: property = %s, type = %s", a2, a3, a4, a5, a6, a7, a8, 5);
  }

  v9 = a2[8];
  if (v9 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  *(a1 + 8) |= a2[9];
  v10 = a1 + v9;
  if (!v10 || (v10 < a1 + 160 ? (v11 = v10 >= a1) : (v11 = 0), v11))
  {

    version_copy(v10, a3);
  }

  else
  {
    __break(0x5519u);
  }
}

_BYTE *chip_instance_get_BOOL(_BYTE *result, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[5];
  if (v8 != &_property_type_BOOL)
  {
    v12 = *a2;
    v13 = *(v8 + 8);
    __panic_npx("panic: non-%s property set: property = %s, type = %s", a2, a3, a4, a5, a6, a7, a8, 108);
  }

  v9 = a2[8];
  if (v9 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  if ((a2[9] & *(result + 1)) == 0)
  {
    return 0;
  }

  v10 = &result[v9];
  if (v10 >= result + 160 || v10 < result)
  {
    __break(0x5519u);
    return result;
  }

  *a3 = *v10;
  return v10;
}

_DWORD *chip_instance_get_uint32(_DWORD *result, uint64_t *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[5];
  if (v8 != &_property_type_uint32)
  {
    v12 = *a2;
    v13 = v8[1];
    __panic_npx("panic: non-%s property set: property = %s, type = %s", a2, a3, a4, a5, a6, a7, a8, 240);
  }

  v9 = a2[8];
  if (v9 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  if ((a2[9] & *(result + 1)) == 0)
  {
    return 0;
  }

  v10 = (result + v9);
  if (v10 >= result + 40 || v10 < result)
  {
    __break(0x5519u);
    return result;
  }

  *a3 = *v10;
  return v10;
}

void *chip_instance_get_uint64(void *result, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[5];
  if (v8 != &_property_type_uint64)
  {
    v12 = *a2;
    v13 = v8[1];
    __panic_npx("panic: non-%s property set: property = %s, type = %s", a2, a3, a4, a5, a6, a7, a8, 247);
  }

  v9 = a2[8];
  if (v9 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  if ((a2[9] & result[1]) == 0)
  {
    return 0;
  }

  v10 = (result + v9);
  if (v10 >= result + 20 || v10 < result)
  {
    __break(0x5519u);
    return result;
  }

  *a3 = *v10;
  return v10;
}

unint64_t chip_instance_get_digest(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[5];
  if (v8 != &_property_type_digest)
  {
    v12 = *a2;
    v13 = v8[1];
    __panic_npx("panic: non-%s property set: property = %s, type = %s", a2, a3, a4, a5, a6, a7, a8, 254);
  }

  v9 = a2[8];
  if (v9 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  if ((a2[9] & *(result + 8)) == 0)
  {
    return 0;
  }

  v10 = result + v9;
  if (!(result + v9) || (v10 < result + 160 ? (v11 = v10 >= result) : (v11 = 0), v11))
  {

    return digest_copy(a3, v10, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

void chip_instance_get_version(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[5];
  if (v8 != &_property_type_version)
  {
    v12 = *a2;
    v13 = v8[1];
    __panic_npx("panic: non-%s property set: property = %s, type = %s", a2, a3, a4, a5, a6, a7, a8, 5);
  }

  v9 = a2[8];
  if (v9 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", a2, a3, a4, a5, a6, a7, a8, *a2);
  }

  if ((a2[9] & *(a1 + 8)) != 0)
  {
    v10 = (a1 + v9);
    if (!(a1 + v9) || (v10 < a1 + 160 ? (v11 = v10 >= a1) : (v11 = 0), v11))
    {

      version_copy(a3, v10);
    }

    else
    {
      __break(0x5519u);
    }
  }
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v2 = (a1 + 104);
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v6);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v6);
    if (!result)
    {
      v4 = 3840;
      goto LABEL_13;
    }

    result = compare_octet_string(&CodeSigningCAName, v6);
    if (!result)
    {
      v4 = 0x800000000008;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4AccessoryCAName, v6);
    if (!result)
    {
      v4 = 0x400000000;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4AttestationCAName, v6);
    if (!result)
    {
      v4 = 0x800000000;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4ProvisioningCAName, v6);
    if (!result)
    {
      v4 = 0x1000000000;
LABEL_13:
      *(a1 + 240) |= v4;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void X509PolicySetFlagsForMFI(uint64_t a1)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (!compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      v6 = 0;
      if (X509CertificateGetNotBefore(a1, &v6))
      {
        goto LABEL_9;
      }

      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v3 = timegm(&v5);
      if (difftime(v3, v6) >= 0.0)
      {
        goto LABEL_9;
      }

      *(a1 + 240) |= 0x8000000uLL;
    }

    if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
    {
      *(a1 + 240) |= 0x1000000000uLL;
    }
  }

LABEL_9:
  v4 = *MEMORY[0x29EDCA608];
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > X509PolicyImg4;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = X509PolicySetFlagsForTestAnchor(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > X509PolicyImg4;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForTestAnchor(void *a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v7, 0, v6);
  if (!result)
  {
    result = compare_octet_string(a1[4], v7);
    if (!result)
    {
      result = compare_octet_string(a1[3], v6);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

uint64_t CTImg4VerifyChain(uint64_t result, uint64_t a2, void *a3, void *a4, void *a5, unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v39[4] = *MEMORY[0x29EDCA608];
  if (!a8)
  {
    result = 6;
    goto LABEL_25;
  }

  v14 = result;
  memset(v39, 170, 32);
  v38[0] = 0xAAAAAAAAAAAAAAAALL;
  v38[1] = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(a8 + 8);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = *(a8 + 16);
  if (!v16)
  {
    goto LABEL_10;
  }

  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[12] = v17;
  v37[13] = v17;
  v37[10] = v17;
  v37[11] = v17;
  v37[8] = v17;
  v37[9] = v17;
  v37[6] = v17;
  v37[7] = v17;
  v37[4] = v17;
  v37[5] = v17;
  v37[2] = v17;
  v37[3] = v17;
  v37[0] = v17;
  v37[1] = v17;
  v35 = v17;
  v36 = v17;
  v33 = v17;
  v34 = v17;
  v32 = v17;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  if (!__CFADD__(v15, v16))
  {
    v18 = v15 + v16;
    if (v15 > v18)
    {
LABEL_26:
      __break(0x5519u);
      goto LABEL_27;
    }

    v30 = v15;
    v31 = v18;
    LODWORD(result) = X509CertificateParse(&v32, &v30);
    if (result || (result = X509CertificateParseSPKI(v37 + 1, &v39[2], v38, v39), result))
    {
      *(a8 + 32) = result;
      result = 3;
LABEL_25:
      v27 = *MEMORY[0x29EDCA608];
      return result;
    }

LABEL_10:
    v19 = *(a8 + 24);
    v20 = 0x80000000;
    if (v19)
    {
      v20 = *(a8 + 24);
    }

    *&v32 = 0;
    *(&v32 + 1) = v20;
    *(&v33 + 1) = v39;
    *&v33 = 0xAAAAAAAA01000000;
    *&v34 = &v39[2];
    *(&v34 + 1) = v38;
    *&v35 = &null_octet;
    v21 = (&X509PolicyBAAUser & (v19 << 21 >> 63));
    if ((v19 & 0x800000) != 0)
    {
      v21 = &X509PolicyBAASystem;
    }

    v22 = (v19 & 0x40000800000) == 0;
    v23 = &v32;
    if (!v22)
    {
      v23 = v21;
    }

    v30 = 0xAAAAAAAAAAAAAAAALL;
    v31 = 0xAAAAAAAAAAAAAAAALL;
    v28 = 0;
    v29 = 0;
    if (v23 < (v23 + 56))
    {
      v24 = CTEvaluateCertsForPolicy(v14, a2, 0, 0, &v28, &v29, 0, 0, 0, &v30, v23);
      if (v24)
      {
        *(a8 + 32) = v24;
        result = 0xFFFFFFFFLL;
      }

      else
      {
        if (a5 && a6)
        {
          v25 = v31;
          *a5 = v30;
          *a6 = v25;
        }

        result = 0;
        if (a3)
        {
          if (a4)
          {
            result = 0;
            v26 = v29;
            *a3 = v28;
            *a4 = v26;
          }
        }
      }

      goto LABEL_25;
    }

    goto LABEL_26;
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

uint64_t CTImg4VerifySignatureWithPublicKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a8)
  {
    result = 6;
LABEL_10:
    v22 = *MEMORY[0x29EDCA608];
    return result;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32 = v13;
  v33 = v13;
  v14 = 655617;
  v30 = v13;
  v31 = v13;
  v28 = v13;
  v29 = v13;
  v26 = v13;
  v27 = v13;
  v25[0] = v13;
  v25[1] = v13;
  v24 = v13;
  v15 = *(a7 + 48);
  v16 = *(*(a7 + 40) + 8);
  *(&v26 + 1) = **(a7 + 40);
  *&v27 = v16;
  *(&v28 + 1) = a3;
  *&v29 = a4;
  v17 = v15[1];
  v23[0] = *v15;
  v23[1] = v17;
  if ((find_digestOID_for_signingOID(&v26 + 8, v25 + 1) & 1) == 0)
  {
    v14 = 656640;
    goto LABEL_8;
  }

  result = compare_octet_string(v23, &rsaEncryption);
  if (result)
  {
    if (!compare_octet_string(v23, &ecPublicKey))
    {
      result = oidForPubKeyLength();
      v20 = *result;
      v19 = *(result + 8);
      v21 = validateSignatureEC;
      goto LABEL_12;
    }

LABEL_8:
    result = 4;
LABEL_9:
    *(a8 + 32) = v14;
    goto LABEL_10;
  }

  v21 = validateSignatureRSA;
  v19 = 0;
  v20 = 0;
LABEL_12:
  *(&v27 + 1) = v20;
  *&v28 = v19;
  if ((!a1 || a2) && (!a5 || a6))
  {
    if (v21(a1, a2, a5, a6, &v24))
    {
      result = 0;
      goto LABEL_10;
    }

    v14 = 655648;
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  __break(0x5519u);
  return result;
}

unint64_t CTImg4CreateContext(unint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a5)
  {
    v10 = 786433;
    goto LABEL_19;
  }

  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  if (a5 + 48 < a5)
  {
LABEL_33:
    __break(0x5519u);
    goto LABEL_34;
  }

  v9 = result;
  v10 = 786435;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  if (!a2 || !result)
  {
    if ((a4 | 0x80000000) == 0x80000000)
    {
      goto LABEL_19;
    }

    if ((a4 & 0x40000800000) == 0)
    {
      v10 = 786436;
      goto LABEL_19;
    }

    v12 = (&X509PolicyBAAUser & (a4 << 21 >> 63));
    if ((a4 & 0x800000) != 0)
    {
      v12 = &X509PolicyBAASystem;
    }

    v13 = *(v12[4] + 8);
    v22 = *v12[4];
    v23 = v13;
LABEL_15:
    v14 = compare_octet_string(&rsaEncryption, &v22);
    if (!v14 || !compare_octet_string(&ecPublicKey, &v22))
    {
      v10 = 786434;
      if (a3 > 7)
      {
        if (a3 == 8)
        {
          v16 = _ctImg4EcdsaSha384Impl;
          v17 = _ctImg4RsaSha384Impl;
        }

        else
        {
          if (a3 != 16)
          {
            goto LABEL_19;
          }

          v16 = _ctImg4EcdsaSha512Impl;
          v17 = _ctImg4RsaSha512Impl;
        }
      }

      else if (a3 == 1)
      {
        v16 = _ctImg4EcdsaSha1Impl;
        v17 = _ctImg4RsaSha1Impl;
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_19;
        }

        v16 = _ctImg4EcdsaSha256Impl;
        v17 = _ctImg4RsaSha256Impl;
      }

      if (!v14)
      {
        v16 = v17;
      }

      v10 = 0;
      *a5 = v16;
      *(a5 + 8) = v9;
      *(a5 + 16) = a2;
      *(a5 + 24) = a4;
      goto LABEL_19;
    }

    v10 = 655617;
LABEL_19:
    v15 = *MEMORY[0x29EDCA608];
    return v10;
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[12] = v11;
  v21[13] = v11;
  v21[10] = v11;
  v21[11] = v11;
  v21[8] = v11;
  v21[9] = v11;
  v21[6] = v11;
  v21[7] = v11;
  v21[4] = v11;
  v21[5] = v11;
  v21[2] = v11;
  v21[3] = v11;
  v21[0] = v11;
  v21[1] = v11;
  v20[3] = v11;
  v20[4] = v11;
  v20[1] = v11;
  v20[2] = v11;
  v20[0] = v11;
  if (!__CFADD__(result, a2))
  {
    if (result + a2 >= result)
    {
      v19[0] = result;
      v19[1] = result + a2;
      if (X509CertificateParse(v20, v19))
      {
        goto LABEL_19;
      }

      v18[0] = 0xAAAAAAAAAAAAAAAALL;
      v18[1] = 0xAAAAAAAAAAAAAAAALL;
      v10 = X509CertificateParseSPKI(v21 + 1, &v22, 0, v18);
      if (v10)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_34:
  __break(0x5513u);
  return result;
}

int *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &digests[v2 / 4 + 2];
    if (result > &digests[v2 / 4 + 6])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~digests)
  {
    return &digests[v2 / 4];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

int *find_digest_by_type(int *result)
{
  v1 = 0;
  while (digests[v1 / 4] != result)
  {
    v1 += 32;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (v1 <= ~digests)
  {
    return &digests[v1 / 4];
  }

  __break(0x5513u);
  return result;
}

uint64_t find_digestOID_for_signingOID(uint64_t a1, void *a2)
{
  if (!compare_octet_string_raw(a1, &sha1WithRSA_oid, 9uLL) || !compare_octet_string_raw(a1, &sha1WithECDSA_oid, 7uLL))
  {
    v6 = &CTOidSha1;
    v4 = 5;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha256WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha256;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha256WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha256;
LABEL_18:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha384WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha384WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_18;
  }

  v4 = 9;
  if (compare_octet_string_raw(a1, &sha512WithRSA_oid, 9uLL))
  {
    if (compare_octet_string_raw(a1, &sha512WithECDSA_oid, 8uLL))
    {
      return 0;
    }

    v6 = &CTOidSha512;
    goto LABEL_18;
  }

  v6 = &CTOidSha512;
LABEL_11:
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v38 = *MEMORY[0x29EDCA608];
  v34 = 0;
  if (!result)
  {
    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_24;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_24;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = validateOIDs(&rsaAlgs, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v32 = a5[9];
  v33 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
LABEL_24:
    v22 = *MEMORY[0x29EDCA608];
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v36 = 0xAAAAAAAAAAAAAAAALL;
      v37 = -21846;
      v35 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v36) = v13;
      if (&v35 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        v14 = a5[3];
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = MEMORY[0x2A1C7C4A8](result, v15, v16, v17, v18, v19, v20, v21);
          v25 = (&v31 - 4 * v24);
          v26 = 0;
          *&v27 = 0xAAAAAAAAAAAAAAAALL;
          *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v28 = &v25[v26 / 8];
            *v28 = v27;
            *(v28 + 1) = v27;
            v26 += 32;
          }

          while ((v23 & 0x7FFFFFFFFFFFFFE0) != v26);
          if (v25 + 4 <= &v31 && v25 <= v25 + 4)
          {
            *v25 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else
            {
              v30 = a5[11];
              v29 = a5[12];
              if (ccrsa_verify_pkcs1v15_allowshortsigs())
              {
                v5 = 0;
                v34 = 0;
              }

              else
              {
                v5 = v34;
              }
            }

            goto LABEL_24;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

uint64_t validateOIDs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v29 = *MEMORY[0x29EDCA608];
  v28 = 0;
  if (!result)
  {
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_31;
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = validateOIDs(&ecAlgs, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = ccec_cp_for_oid((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
LABEL_31:
    v26 = *MEMORY[0x29EDCA608];
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v15 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v15, 3uLL))
  {
    goto LABEL_33;
  }

  v16 = 24 * v15;
  v17 = __CFADD__(v16, 16);
  v18 = v16 + 16;
  if (v17 || v18 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = MEMORY[0x2A1C7C4A8](result, v8, v9, v10, v11, v12, v13, v14);
  v21 = &v27[-16 * v20];
  v22 = 0;
  do
  {
    v23 = &v21[v22 / 8];
    *v23 = 0xAAAAAAAAAAAAAAAALL;
    v23[1] = 0xAAAAAAAAAAAAAAAALL;
    v22 += 16;
  }

  while ((v19 & 0xFFFFFFFFFFFFFFF0) != v22);
  if (v19 < 0x10)
  {
    goto LABEL_35;
  }

  *v21 = result;
  if (v21 + 2 > v27 || v21 > v21 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (MEMORY[0x29C295B80]())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    v25 = *(a5 + 88);
    if (ccec_verify())
    {
LABEL_29:
      v28 = 0;
    }

LABEL_30:
    v5 = v28;
    goto LABEL_31;
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    v24 = *(a5 + 88);
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      JUMPOUT(0x29C295B30);
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    JUMPOUT(0x29C295B40);
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return MEMORY[0x2A1C74408]();
}

uint64_t compressECPublicKey(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v27[1] = *MEMORY[0x29EDCA608];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    result = 655366;
    goto LABEL_19;
  }

  v15 = v7;
  if (v7 >= v7 + 4)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  v16 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v16, 3uLL))
  {
    goto LABEL_21;
  }

  v17 = 24 * v16;
  v18 = __CFADD__(v17, 16);
  v19 = v17 + 16;
  if (v18 || v19 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = MEMORY[0x2A1C7C4A8](v7, v8, v9, v10, v11, v12, v13, v14);
  v23 = &v27[-2 * v22];
  v24 = 0;
  do
  {
    v25 = &v23[v24 / 8];
    *v25 = 0xAAAAAAAAAAAAAAAALL;
    v25[1] = 0xAAAAAAAAAAAAAAAALL;
    v24 += 16;
  }

  while ((v21 & 0xFFFFFFFFFFFFFFF0) != v24);
  if (v21 >= 0x10)
  {
    *v23 = v15;
    if (v23 + 2 <= v27 && v23 <= v23 + 2)
    {
      result = MEMORY[0x29C295B80](v15, a1[1], *a1, v23);
      if (result)
      {
LABEL_19:
        v26 = *MEMORY[0x29EDCA608];
        return result;
      }

      if (ccec_compressed_x962_export_pub_size() != a4)
      {
        result = 393220;
        goto LABEL_19;
      }

      if (!a3 || a4)
      {
        result = ccec_compressed_x962_export_pub();
        goto LABEL_19;
      }
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t decompressECPublicKey(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v31[1] = *MEMORY[0x29EDCA608];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    v27 = 655366;
    goto LABEL_22;
  }

  if (v7 >= v7 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v15 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v15, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v16 = 24 * v15;
  v17 = __CFADD__(v16, 16);
  v18 = v16 + 16;
  if (v17 || v18 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = MEMORY[0x2A1C7C4A8](v7, v8, v9, v10, v11, v12, v13, v14);
  v22 = &v31[-2 * v21];
  v23 = 0;
  do
  {
    v24 = &v22[v23 / 8];
    *v24 = 0xAAAAAAAAAAAAAAAALL;
    v24[1] = 0xAAAAAAAAAAAAAAAALL;
    v23 += 16;
  }

  while ((v20 & 0xFFFFFFFFFFFFFFF0) != v23);
  if (v20 >= 0x10)
  {
    *v22 = result;
    if (v22 + 2 <= v31 && v22 <= v22 + 2)
    {
      v26 = *a1;
      v25 = a1[1];
      v27 = ccec_compressed_x962_import_pub();
      if (!v27)
      {
        v28 = *v22;
        v29 = cczp_bitlen();
        if (v29 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v29 + 7) >> 2) | 1) == a4)
            {
              v27 = 0;
            }

            else
            {
              v27 = 393220;
            }

            ccec_export_pub();
            goto LABEL_22;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

LABEL_22:
      v30 = *MEMORY[0x29EDCA608];
      return v27;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v28 = a1;
  v29 = &a1[a2];
  v27 = 0;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v7 = ccder_blob_decode_ber_tl(&v28, 0x2000000000000010, &v27 + 1, &v26);
  result = 65537;
  if (v7)
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v28, v26))
    {
      goto LABEL_110;
    }

    if (v28 > &v28[v26] || &v28[v26] > v29)
    {
      goto LABEL_108;
    }

    v24 = v28;
    v25 = &v28[v26];
    if (!ccder_blob_decode_tl())
    {
      result = 65538;
      goto LABEL_13;
    }

    if (v25 < v24 || v26 > v25 - v24)
    {
      goto LABEL_108;
    }

    if (compare_octet_string_raw(&pkcs7_signedData_oid, v24, v26))
    {
      result = 65539;
      goto LABEL_13;
    }

    if (__CFADD__(v24, v26))
    {
      goto LABEL_110;
    }

    if (v24 > &v24[v26] || &v24[v26] > v25)
    {
      goto LABEL_108;
    }

    v24 += v26;
    if (!ccder_blob_decode_ber_tl(&v24, 0xA000000000000000, &v27, &v26))
    {
      result = 65540;
      goto LABEL_13;
    }

    v22 = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v24, v26))
    {
      goto LABEL_110;
    }

    if (v24 > &v24[v26] || &v24[v26] > v25)
    {
      goto LABEL_108;
    }

    v22 = v24;
    v23 = &v24[v26];
    v31 = 0;
    memset(v30, 170, sizeof(v30));
    if ((ccder_blob_decode_ber_tl(&v22, 0x2000000000000010, &v31 + 1, v30) & 1) == 0)
    {
      result = 131073;
      goto LABEL_13;
    }

    if (__CFADD__(v22, v30[0]))
    {
      goto LABEL_110;
    }

    v10 = 131080;
    if (&v22[v30[0]] != v23)
    {
      result = 131082;
      goto LABEL_13;
    }

    if (!ccder_blob_decode_uint64())
    {
      result = 131074;
      goto LABEL_13;
    }

    v11 = a3[11];
    result = 131092;
    if (v11 <= 4 && ((1 << v11) & 0x1A) != 0)
    {
      if (!ccder_blob_eat_ber_inner(&v22, 0x2000000000000011, 0, 125))
      {
        result = 131075;
        goto LABEL_13;
      }

      v35 = 0;
      v34 = 0;
      if ((ccder_blob_decode_ber_tl(&v22, 0x2000000000000010, &v35, &v34) & 1) == 0)
      {
        v10 = 131076;
        goto LABEL_44;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v22, v34))
      {
        goto LABEL_110;
      }

      if (v22 > &v22[v34] || &v22[v34] > v23)
      {
        goto LABEL_108;
      }

      v32 = v22;
      v33 = &v22[v34];
      if (!ccder_blob_decode_tl())
      {
        v10 = 131077;
        goto LABEL_44;
      }

      if (v33 < v32 || v34 > v33 - v32)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&pkcs7_data_oid, v32, v34))
      {
        v10 = 131078;
LABEL_44:
        result = v10;
        goto LABEL_13;
      }

      if (__CFADD__(v32, v34))
      {
        goto LABEL_110;
      }

      v12 = &v32[v34];
      if (v32 > &v32[v34] || v12 > v33)
      {
        goto LABEL_108;
      }

      v32 += v34;
      v13 = v35;
      if (v12 != v33 || (v35 & 1) != 0)
      {
        v40 = 0;
        v38 = v33;
        v39 = 0;
        v37 = v12;
        if (ccder_blob_decode_ber_tl(&v37, 0xA000000000000000, &v40, &v39))
        {
          if ((v13 & 1) == 0)
          {
            if (__CFADD__(v37, v39))
            {
              goto LABEL_110;
            }

            if (&v37[v39] != v33)
            {
              goto LABEL_44;
            }
          }

          if (v37 > v38)
          {
            goto LABEL_108;
          }

          v32 = v37;
          v33 = v38;
          v36 = 0;
          v16 = v40;
          if (v40 == 1 && !ccder_blob_decode_ber_tl(&v32, 0x2000000000000004, &v36, &v39))
          {
            v10 = 131079;
            goto LABEL_44;
          }

          v41 = 0;
          if (!ccder_blob_decode_tl())
          {
            v10 = 131090;
            goto LABEL_44;
          }

          v17 = v32;
          v18 = v33;
          if (v33 < v32)
          {
            goto LABEL_108;
          }

          v19 = v41;
          if (v41 > v33 - v32)
          {
            goto LABEL_108;
          }

          a3[9] = v32;
          a3[10] = v19;
          if (__CFADD__(v17, v19))
          {
LABEL_110:
            __break(0x5513u);
            goto LABEL_111;
          }

          v20 = &v17[v19];
          if (v20 > v18 || v17 > v20)
          {
            goto LABEL_108;
          }

          v32 = v20;
          if ((ccder_blob_decode_eoc(&v32, v36) & 1) == 0)
          {
            v10 = 131089;
            goto LABEL_44;
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_44;
          }

          v16 = v40;
        }

        if ((ccder_blob_decode_eoc(&v32, v16 & 1) & 1) == 0)
        {
          v10 = 131088;
          goto LABEL_44;
        }

        v12 = v32;
      }

      if (v12 > v23 || v22 > v12)
      {
        goto LABEL_108;
      }

      v22 = v12;
      if ((ccder_blob_decode_eoc(&v22, v13) & 1) == 0)
      {
        v10 = 131081;
        goto LABEL_44;
      }

      v37 = 0xAAAAAAAAAAAAAAAALL;
      v38 = 0xAAAAAAAAAAAAAAAALL;
      if (v22 > v23)
      {
        goto LABEL_108;
      }

      v37 = v22;
      v38 = v23;
      if ((ccder_blob_decode_ber_tl(&v37, 0xA000000000000000, &v31, v30) & 1) == 0)
      {
        v14 = v22;
        v15 = v23;
        goto LABEL_85;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      if (!__CFADD__(v37, v30[0]))
      {
        if (v37 > &v37[v30[0]] || &v37[v30[0]] > v38)
        {
          goto LABEL_108;
        }

        v32 = v37;
        v33 = &v37[v30[0]];
        if (!CMSParseImplicitCertificateSet(&v32, a3[1], *a3, a3 + 3, a3 + 2))
        {
          result = 131085;
          goto LABEL_13;
        }

        if (!ccder_blob_decode_eoc(&v32, v31))
        {
          result = 131086;
          goto LABEL_13;
        }

        v14 = v32;
        if (v32 >= v37 != v32 - v37 < 0)
        {
          if (v37 > v32)
          {
            goto LABEL_108;
          }

          v15 = v38;
          if (v32 > v38)
          {
            goto LABEL_108;
          }

          v22 = v32;
          v23 = v38;
LABEL_85:
          if (v14 <= v15)
          {
            v37 = v14;
            v38 = v15;
            if (ccder_blob_eat_ber_inner(&v37, 0xA000000000000001, 0, 125))
            {
              if (v37 > v38)
              {
                goto LABEL_108;
              }

              v22 = v37;
              v23 = v38;
            }

            if (!ccder_blob_eat_ber_inner(&v22, 0x2000000000000011, &v30[1], 125))
            {
              result = 131083;
              goto LABEL_13;
            }

            if (v30[2] >= v30[1])
            {
              v21 = &v22[-v30[1]];
              if (&v22[-v30[1]] <= v30[2] - v30[1])
              {
                a3[5] = v30[1];
                a3[6] = v21;
                if ((ccder_blob_decode_eoc(&v22, HIBYTE(v31)) & 1) == 0)
                {
                  result = 131084;
                  goto LABEL_13;
                }

                if (!ccder_blob_decode_eoc(&v22, v27))
                {
                  result = 65541;
                  goto LABEL_13;
                }

                if (v22 <= v25 && v24 <= v22)
                {
                  v24 = v22;
                  if (ccder_blob_decode_eoc(&v24, HIBYTE(v27)))
                  {
                    if ((a4 & 1) == 0 && v24 != v29)
                    {
                      result = 65543;
                      goto LABEL_13;
                    }

LABEL_111:
                    result = 0;
                    goto LABEL_13;
                  }

LABEL_109:
                  result = (v4 + 5);
                  goto LABEL_13;
                }
              }
            }
          }

LABEL_108:
          __break(0x5519u);
          goto LABEL_109;
        }
      }

      goto LABEL_110;
    }
  }

LABEL_13:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccder_blob_decode_ber_tl(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && a2 == 0xAAAAAAAAAAAAAAAALL)
  {
    result = ccder_blob_decode_ber_len(a1, a3, a4);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccder_blob_decode_eoc(unint64_t *a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_9;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_10:
    v7 = *MEMORY[0x29EDCA608];
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v5 = v4 - 0x5555555555555556;
    if (v4 <= v4 - 0x5555555555555556 && v5 <= a1[1])
    {
      *a1 = v5;
LABEL_9:
      result = 1;
      goto LABEL_10;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v84 = *MEMORY[0x29EDCA608];
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  v82 = *(a1 + 40);
  v83 = v4 + v3;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (!v3)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v8 = 0;
  v60 = 0;
  v9 = 196871;
  v10 = 256;
  while (1)
  {
    v69 = 0;
    v80 = 0u;
    v81 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    DWORD2(v81) = 327681;
    LOBYTE(v80) = v8 + 1;
    if ((ccder_blob_decode_ber_tl(&v82, 0x2000000000000010, &v69, &v70) & 1) == 0)
    {
      result = (v9 - 6);
      goto LABEL_84;
    }

    v67 = 0xAAAAAAAAAAAAAAAALL;
    v68 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v82, v70))
    {
      goto LABEL_94;
    }

    if (v82 > v82 + v70 || v82 + v70 > v83)
    {
      goto LABEL_93;
    }

    v67 = v82;
    v68 = v82 + v70;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      result = (v9 - 5);
      goto LABEL_84;
    }

    v11 = v67;
    v12 = v68;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    v66 = 0xAAAAAAAAAAAAAAAALL;
    if (v67 > v68)
    {
      goto LABEL_93;
    }

    v65 = v67;
    v66 = v68;
    v63 = v67;
    v64 = v68;
    if (ccder_blob_decode_tl())
    {
      v13 = v67;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v65;
        v14 = v66;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v59 = 196611;
          goto LABEL_92;
        }

        v13 = v63;
        v14 = v64;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v67 = v13;
      v68 = v14;
    }

    if (__CFADD__(v70, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v70 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v71 + 1) = v11;
    *&v72 = v70 + v13 - v11;
    if (__CFADD__(v13, v70))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v70 || v13 + v70 > v68)
    {
      goto LABEL_93;
    }

    v67 = v13 + v70;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, &v72 + 1))
    {
      v59 = 196612;
LABEL_92:
      result = (v59 + v10);
      goto LABEL_84;
    }

    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0xAAAAAAAAAAAAAAAALL;
    if (v67 > v68)
    {
      goto LABEL_93;
    }

    v61 = v67;
    v62 = v68;
    if (ccder_blob_decode_tl())
    {
      if (v62 < v61 || v70 > v62 - v61)
      {
        goto LABEL_93;
      }

      *(&v73 + 1) = v61;
      *&v74 = v70;
      if (__CFADD__(v61, v70))
      {
        goto LABEL_94;
      }

      if (v61 + v70 > v62 || v61 > v61 + v70)
      {
        goto LABEL_93;
      }

      v67 = v61 + v70;
      v68 = v62;
    }

    else
    {
      *(&v73 + 1) = 0;
      *&v74 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v67, &v74 + 1) & 1) == 0)
    {
      result = (v9 - 2);
      goto LABEL_84;
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      result = (v9 - 1);
      goto LABEL_84;
    }

    if (v68 < v67 || v70 > v68 - v67)
    {
      goto LABEL_93;
    }

    *(&v76 + 1) = v67;
    *&v77 = v70;
    if (__CFADD__(v67, v70))
    {
      goto LABEL_94;
    }

    v15 = v67 + v70;
    if (v67 + v70 > v68 || v67 > v15)
    {
      goto LABEL_93;
    }

    v67 += v70;
    v61 = v15;
    v62 = v68;
    if (ccder_blob_eat_ber_inner(&v61, 0xA000000000000001, 0, 125))
    {
      if (v61 > v62)
      {
        goto LABEL_93;
      }

      v67 = v61;
      v68 = v62;
    }

    if (!ccder_blob_decode_eoc(&v67, v69))
    {
      result = v9;
      goto LABEL_84;
    }

    digest = find_digest(&v72 + 8);
    if (!digest)
    {
      goto LABEL_73;
    }

    v17 = digest;
    v18 = *(a1 + 96);
    if (v18)
    {
      if (*digest > v18)
      {
        goto LABEL_73;
      }
    }

    result = a3(a2, a1, &v71);
    if (result == 327710)
    {
      goto LABEL_73;
    }

    if (result)
    {
      goto LABEL_84;
    }

    v20 = *(a1 + 64);
    if (v20 <= v60)
    {
      if (v20)
      {
        v32 = *(a1 + 56);
        v33 = 176 * v60 - 176;
        if (__CFADD__(v32, v33))
        {
          goto LABEL_94;
        }

        v34 = v32 + v33;
        if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
        {
          goto LABEL_93;
        }

        v35 = find_digest(v34 + 24);
        if (v35)
        {
          if (*v17 > *v35)
          {
            v36 = *(a1 + 96);
            if (!v36 || *v17 <= v36)
            {
              v37 = *(a1 + 56);
              if (__CFADD__(v37, v33))
              {
                goto LABEL_94;
              }

              v38 = 176 * *(a1 + 64);
              if ((v38 - v33) < 0xB0)
              {
                goto LABEL_93;
              }

              v39 = (v37 + v33);
              if (v37 + v33 > v37 + v38)
              {
                goto LABEL_93;
              }

              if (v37 > v39)
              {
                goto LABEL_93;
              }

              v40 = v71;
              v41 = v73;
              v39[1] = v72;
              v39[2] = v41;
              *v39 = v40;
              v42 = v74;
              v43 = v75;
              v44 = v77;
              v39[5] = v76;
              v39[6] = v44;
              v39[3] = v42;
              v39[4] = v43;
              v45 = v78;
              v46 = v79;
              v47 = v81;
              v39[9] = v80;
              v39[10] = v47;
              v39[7] = v45;
              v39[8] = v46;
              if (v39 >= v39 + 11)
              {
                goto LABEL_93;
              }
            }
          }
        }
      }

      goto LABEL_73;
    }

    v21 = *(a1 + 96);
    if (!v21 || *v17 <= v21)
    {
      break;
    }

LABEL_73:
    if (v67 > v83 || v82 > v67)
    {
      goto LABEL_93;
    }

    v82 = v67;
    v48 = v8 + 1;
    if (v8 <= 6)
    {
      v10 += 256;
      v9 = (v9 + 256);
      ++v8;
      if (v67 < v83)
      {
        continue;
      }
    }

    if (v67 == v83)
    {
      if (v60)
      {
        goto LABEL_81;
      }

      if (!*(a1 + 64))
      {
        goto LABEL_81;
      }

      v49 = *(a1 + 56);
      v50 = v71;
      v51 = v73;
      v49[1] = v72;
      v49[2] = v51;
      *v49 = v50;
      v52 = v74;
      v53 = v75;
      v54 = v77;
      v49[5] = v76;
      v49[6] = v54;
      v49[3] = v52;
      v49[4] = v53;
      v55 = v78;
      v56 = v79;
      v57 = v81;
      v49[9] = v80;
      v49[10] = v57;
      v49[7] = v55;
      v49[8] = v56;
      if (v49 < v49 + 11)
      {
LABEL_81:
        result = 0;
LABEL_84:
        v58 = *MEMORY[0x29EDCA608];
        return result;
      }

      goto LABEL_93;
    }

LABEL_83:
    result = (v48 << 8) + 196616;
    goto LABEL_84;
  }

  v22 = *(a1 + 56);
  if (__CFADD__(v22, 176 * v60))
  {
    goto LABEL_94;
  }

  if (176 * (v20 - v60) < 0xB0)
  {
    goto LABEL_93;
  }

  v23 = (v22 + 176 * v60);
  v24 = v71;
  v25 = v73;
  v23[1] = v72;
  v23[2] = v25;
  *v23 = v24;
  v26 = v74;
  v27 = v75;
  v28 = v77;
  v23[5] = v76;
  v23[6] = v28;
  v23[3] = v26;
  v23[4] = v27;
  v29 = v78;
  v30 = v79;
  v31 = v81;
  v23[9] = v80;
  v23[10] = v31;
  v23[7] = v29;
  v23[8] = v30;
  if (v23 >= v23 + 11)
  {
    goto LABEL_93;
  }

  if (v60 != 0xFF)
  {
    ++v60;
    goto LABEL_73;
  }

  __break(0x5507u);
  return result;
}