uint64_t _boot_ephemeral_enforceable(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = odometer_policy_get_chip_property(a1, v4);
  if (!result)
  {
    v25 = *a2;
    name = chip_get_name(*(a2 + 16));
    v45 = *a1;
    v24 = 1;
    expert_log(v25, 1uLL, "odometer[%s:%s]: chip has no property for policy", v27, v28, v29, v30, v31, name);
    return v24;
  }

  if (*(v4 + 208))
  {
    if (manifest_get_restore_info(*(a2 + 8), v6, v7, v8, v9, v10, v11, v12))
    {
      v17 = *a2;
      v43 = chip_get_name(*(a2 + 16));
      v44 = *a1;
      v23 = "odometer[%s:%s]: boot object has restore info";
    }

    else if (*(a2 + 960))
    {
      if (*(a2 + 864))
      {
        v32 = odometer_enforce_property(a2, a1, *(v4 + 208), (a2 + 760), v13, v14, v15, v16);
        v17 = *a2;
        v33 = chip_get_name(*(a2 + 16));
        v34 = *a1;
        if (!v32)
        {
          v49 = *a1;
          expert_log(v17, 1uLL, "odometer[%s:%s]: policy is enforceable", v18, v19, v20, v21, v22, v33);
          return 0;
        }

        v43 = v33;
        v46 = *a1;
        v23 = "odometer[%s:%s]: switch constraint not satisfied";
      }

      else
      {
        v17 = *a2;
        v43 = chip_get_name(*(a2 + 16));
        v48 = *a1;
        v23 = "odometer[%s:%s]: no manifest constraint for policy selection";
      }
    }

    else
    {
      v17 = *a2;
      v43 = chip_get_name(*(a2 + 16));
      v47 = *a1;
      v23 = "odometer[%s:%s]: manifest has no constraint for policy";
    }

    v24 = 1;
    expert_log(v17, 1uLL, v23, v18, v19, v20, v21, v22, v43);
    return v24;
  }

  if (v4 < v4 + 264)
  {
    v35 = chip_get_name(v4);
    __panic_npx("panic: illegal chip configuration: %s", v36, v37, v38, v39, v40, v41, v42, v35);
  }

  __break(0x5519u);
  return result;
}

uint64_t _boot_ephemeral_enforce(uint64_t a1, uint64_t a2)
{
  v67[3] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  chip_property = odometer_policy_get_chip_property(a1, *(a2 + 16));
  if (!*(a2 + 960))
  {
    __panic_npx("panic: optional not set", v6, v7, v8, v9, v10, v11, v12, v60);
  }

  v13 = chip_property;
  v14 = *(a2 + 16);
  v15 = *(a2 + 872);
  memset(v67, 0, 24);
  memset(v66, 0, sizeof(v66));
  memset(v65, 0, sizeof(v65));
  live_nonce = odometer_query_live_nonce(a2, a1, v15, v67, v9, v10, v11, v12);
  if (live_nonce)
  {
    v17 = live_nonce;
    v18 = *a2;
    name = chip_get_name(*(a2 + 16));
    v61 = *a1;
    expert_log(v18, 0, "odometer[%s:%s]: failed to query nonce: %d", v20, v21, v22, v23, v24, name);
  }

  else
  {
    v32 = expert_entangle_nonce(v4, v14, v15, v67, v66);
    if (v32)
    {
      v17 = v32;
      v33 = *a2;
      v34 = chip_get_name(*(a2 + 16));
      v62 = *a1;
      expert_log(v33, 0, "odometer[%s:%s]: failed to entangle nonce: %d", v35, v36, v37, v38, v39, v34);
    }

    else
    {
      odometer_compute_nonce_hash(v4, v14, v66, v65);
      if (!property_constrain_digest(v13, v4, a2 + 880, v65, v40, v41, v42, v43))
      {
        v53 = *a2;
        v54 = chip_get_name(*(a2 + 16));
        v64 = *a1;
        expert_log(v53, 1uLL, "odometer[%s:%s]: manifest is current", v55, v56, v57, v58, v59, v54);
        v17 = 0;
        goto LABEL_9;
      }

      v17 = *(a1 + 24);
      v44 = *a2;
      v45 = chip_get_name(*(a2 + 16));
      v63 = *a1;
      expert_log(v44, 0, "odometer[%s:%s]: anti-replay violation: %d", v46, v47, v48, v49, v50, v45);
    }
  }

  if (v17 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v25, v26, v27, v28, v29, v30, v31, v17);
  }

LABEL_9:
  v51 = *MEMORY[0x29EDCA608];
  return v17;
}

void __panic_npx(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  v11 = &a9;
  vsnprintf(__str, 0x800uLL, a1, &a9);
  _os_crash();
  __break(1u);
}

unint64_t darwin_read_iokit_node(io_registry_entry_t a1, const char *a2, void *a3, size_t *a4)
{
  v7 = *a4;
  v8 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  CFProperty = IORegistryEntryCreateCFProperty(a1, v8, 0, 0);
  if (!CFProperty)
  {
    v14 = 2;
LABEL_10:
    CFRelease(v9);
    return v14;
  }

  v11 = CFProperty;
  v12 = CFGetTypeID(CFProperty);
  if (v12 != CFDataGetTypeID())
  {
    v14 = 96;
    goto LABEL_9;
  }

  Length = CFDataGetLength(v11);
  if (HIDWORD(Length))
  {
    v14 = 34;
LABEL_9:
    CFRelease(v11);
    goto LABEL_10;
  }

  v16 = Length;
  if (v7 < Length)
  {
    v14 = 84;
    goto LABEL_9;
  }

  result = CFDataGetBytePtr(v11);
  if (result <= result + v7 && v16 <= *a4)
  {
    result = memcpy(a3, result, v16);
    if (v16 <= *a4)
    {
      v14 = 0;
      *a4 = v16;
      goto LABEL_9;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t darwin_read_iokit_BOOL(io_registry_entry_t a1, const char *a2, BOOL *a3)
{
  v4 = a2;
  v15 = 0;
  v14 = 4;
  result = darwin_read_iokit_node(a1, a2, &v15, &v14);
  v13 = 0;
  if (result != 2)
  {
    if (result)
    {
      __panic_npx("panic: failed to read property: %s: %d", v6, v7, v8, v9, v10, v11, v12, v4);
    }

    v13 = v15 != 0;
  }

  *a3 = v13;
  return result;
}

unint64_t darwin_read_iokit_u32(io_registry_entry_t a1, const char *a2, _DWORD *a3)
{
  v4 = a2;
  v15 = 0;
  v14 = 4;
  result = darwin_read_iokit_node(a1, a2, &v15, &v14);
  v13 = 0;
  if (result != 2)
  {
    if (result)
    {
      __panic_npx("panic: failed to read property: %s: %d", v6, v7, v8, v9, v10, v11, v12, v4);
    }

    v13 = v15;
  }

  *a3 = v13;
  return result;
}

unint64_t darwin_read_iokit_u64(io_registry_entry_t a1, const char *a2, void *a3)
{
  v4 = a2;
  v14 = 8;
  v15 = 0;
  result = darwin_read_iokit_node(a1, a2, &v15, &v14);
  v13 = 0;
  if (result != 2)
  {
    if (result)
    {
      __panic_npx("panic: failed to read property: %s: %d", v6, v7, v8, v9, v10, v11, v12, v4);
    }

    v13 = v15;
  }

  *a3 = v13;
  return result;
}

unint64_t darwin_read_iokit_cstr(io_registry_entry_t a1, const char *a2, char *a3)
{
  v4 = a2;
  v19 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  v18 = 0u;
  *__source = 0u;
  v16 = 0u;
  v14 = 64;
  result = darwin_read_iokit_node(a1, a2, __source, &v14);
  if (result == 2)
  {
    *a3 = 0;
  }

  else
  {
    if (result)
    {
      __panic_npx("panic: failed to read property: %s: %d", v6, v7, v8, v9, v10, v11, v12, v4);
    }

    result = strlcpy(a3, __source, 0x40uLL);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _null_enforceable(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  name = chip_get_name(a2[2]);
  v11 = *a1;
  expert_log(v3, 1uLL, "odometer[%s:%s]: policy is enforceable", v5, v6, v7, v8, v9, name);
  return 0;
}

void _prepare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(*a3 + 24);
  v5 = *(v4 + 8);
  memset(v15, 0, sizeof(v15));
  __n = 0;
  memset(v14, 0, sizeof(v14));
  nonce_digest = image4_environment_callout_query_nonce_digest(v4, v15, &__n);
  if (nonce_digest)
  {
    if (nonce_digest != 45)
    {
      expert_log(v5, 0, "failed to get nonce digest from callback: %d", v7, v8, v9, v10, v11, nonce_digest);
    }

    goto LABEL_6;
  }

  if (__n <= 0x40)
  {
    digest_init(v14, v15, __n, v7, v8, v9, v10, v11);
    odometer_prepare_nonce_hash(a2, v14);
LABEL_6:
    v12 = *MEMORY[0x29EDCA608];
    return;
  }

  __break(0x5519u);
}

uint64_t _chain_future_enforceable(uint64_t *a1, uint64_t a2)
{
  if (odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    v4 = *(a2 + 528);
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
      expert_log(v5, 1uLL, "odometer[%s:%s]: no caller-supplied boot manifest hash", v7, v8, v9, v10, v11, name);
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

uint64_t _chain_future_enforce(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  chip_property = odometer_policy_get_chip_property(a1, v6);
  memset(v47, 0, sizeof(v47));
  if (!*(a2 + 528))
  {
    __panic_npx("panic: optional not set", v8, v9, v10, v11, v12, v13, v14, v44);
  }

  v15 = chip_property;
  manifest_measure(v5, v6, v47);
  if (property_constrain_digest(v15, v4, v47, a2 + 448, v16, v17, v18, v19))
  {
    v20 = *(a1 + 24);
    v21 = *a2;
    name = chip_get_name(*(a2 + 16));
    v45 = *a1;
    expert_log(v21, 0, "odometer[%s:%s]: boot chain integrity violation: %d", v23, v24, v25, v26, v27, name);
    if (v20 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v28, v29, v30, v31, v32, v33, v34, v20);
    }
  }

  else
  {
    v35 = *a2;
    v36 = chip_get_name(*(a2 + 16));
    v46 = *a1;
    expert_log(v35, 1uLL, "odometer[%s:%s]: manifest is consistent with boot chain", v37, v38, v39, v40, v41, v36);
    v20 = 0;
  }

  v42 = *MEMORY[0x29EDCA608];
  return v20;
}

char *property_get_from_identifier(char *result)
{
  v1 = &property_get_from_identifier_p_map[result];
  if (v1 < &_property_stng && v1 >= property_get_from_identifier_p_map)
  {
    return *v1;
  }

  __break(0x5519u);
  return result;
}

unint64_t image4_environment_get_secure_boot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  result = *(a1 + 40);
  if (result >= 5)
  {
    __panic_npx("panic: invalid secure boot level: actual = %llu, expected <= %llu", a2, a3, a4, a5, a6, a7, a8, result);
  }

  if (result == 4)
  {
    secure_boot = expert_get_secure_boot(*(a1 + 8), &v18);
    if (secure_boot)
    {
      __panic_npx("panic: failed to get secure boot level: %d", v11, v12, v13, v14, v15, v16, v17, secure_boot);
    }

    return v18;
  }

  return result;
}

unint64_t image4_environment_get_nonce_domain(uint64_t a1)
{
  v2 = *(a1 + 8);
  v13 = 0;
  result = *(a1 + 48);
  if (result == -1)
  {
    result = image4_coprocessor_select(*(a1 + 16), 0, a1);
    if (!result)
    {
      __panic_npx("panic: could not resolve chip for environment", v4, v5, v6, v7, v8, v9, v10, v12);
    }

    v11 = *(result + 200);
    if (v11)
    {
      if (result >= result + 264)
      {
        __break(0x5519u);
      }

      else if (expert_query_property_uint32(v2, result, v11, &v13))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v13;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t image4_environment_callout_query_boot_nonce(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    return v4(a1, a2, a3, *(a1 + 64));
  }

  else
  {
    return 45;
  }
}

uint64_t image4_environment_callout_query_nonce_digest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  if (v3 && (v4 = *(v3 + 16)) != 0)
  {
    return v4(a1, a2, a3, *(a1 + 64));
  }

  else
  {
    return 45;
  }
}

uint64_t _image4_environment_init(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == 0xFFFF)
  {
    __panic_npx("panic: null coprocessor handle", a2, 0xFFFFLL, a4, a5, a6, a7, a8, v12);
  }

  if (a3 >= 0xC)
  {
    __panic_npx("panic: invalid coprocessor handle: actual = %llu, expected < %u", a2, a3, a4, a5, a6, a7, a8, a3);
  }

  if (a4)
  {
    __panic_npx("panic: unsupported struct version: actual = %hu, expected <= %u", a2, a3, a4, a5, a6, a7, a8, a4);
  }

  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 8) = generic_expert_current();
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  *(a1 + 48) = -1;
  *(a1 + 24) = a3;
  return a1;
}

uint64_t image4_environment_new(uint64_t a1, unint64_t a2)
{
  v4 = generic_expert_current();
  result = _expert_alloc_type(v4, &_image4_type_environment);
  if (result)
  {
    result = _image4_environment_init(result, a1, a2, 0, v6, v7, v8, v9);
    *(result + 32) = &_image4_type_environment;
  }

  return result;
}

uint64_t image4_environment_set_secure_boot(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 3)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "secure_boot");
  }

  *(result + 40) = a2;
  return result;
}

uint64_t image4_environment_set_callbacks(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 56) = a2;
  *(result + 64) = a3;
  return result;
}

uint64_t image4_environment_identify(uint64_t a1)
{
  v42 = *MEMORY[0x29EDCA608];
  v2 = generic_expert_current();
  v33[0] = _property_filter_expert;
  v33[1] = 0;
  v33[2] = -1;
  v3 = image4_coprocessor_select(*(a1 + 16), 0, a1);
  if (!v3)
  {
    __panic_npx("panic: could not resolve chip for environment", v4, v5, v6, v7, v8, v9, v10, v31);
  }

  v11 = v3;
  result = property_iterator_next(v33, v4, v5, v6, v7, v8, v9, v10);
  if (!result)
  {
LABEL_37:
    v30 = *MEMORY[0x29EDCA608];
    return result;
  }

  v13 = result;
  memset(v32, 170, sizeof(v32));
  while (1)
  {
    v34 = 0;
    v37 = v32[3];
    v38 = v32[2];
    v39 = v32[1];
    v40 = v32[0];
    *__s = xmmword_298EF77C0;
    v36 = unk_298EF77D0;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    constraint = chip_get_constraint(v11, v13, 0);
    v22 = image4_identifier_init(&v34, constraint);
    if (constraint != *(v11 + 200) || *(a1 + 48) == -1)
    {
      v23 = **(constraint + 40);
      if (v23 <= 1)
      {
        if (v23)
        {
          if (v23 != 1)
          {
LABEL_38:
            __panic_npx("panic: version property iterated during identification: p = %s, fourcc = %s", v15, v16, v17, v18, v19, v20, v21, *constraint);
          }

          if (expert_query_property_uint32(v2, v11, constraint, __s))
          {
            goto LABEL_36;
          }
        }

        else if (expert_query_property_BOOL(v2, v11, constraint, __s))
        {
          goto LABEL_36;
        }
      }

      else
      {
        switch(v23)
        {
          case 2:
            if (expert_query_property_uint64(v2, v11, constraint, __s))
            {
              goto LABEL_36;
            }

            break;
          case 3:
            goto LABEL_36;
          case 4:
            if (expert_query_property_version(v2, v11, constraint, __s))
            {
              goto LABEL_36;
            }

            break;
          default:
            goto LABEL_38;
        }
      }
    }

    else
    {
      *__s = *(a1 + 48);
    }

    v24 = *(a1 + 56);
    if (!v24)
    {
      goto LABEL_36;
    }

    v25 = **(*v22 + 40);
    if (v25 <= 1)
    {
      if (!v25)
      {
        v29 = v24[3];
        if (v29)
        {
          v29(a1, v22, __s[0], *(a1 + 64));
        }

        goto LABEL_36;
      }

      if (v25 != 1)
      {
        goto LABEL_39;
      }

      v26 = v24[4];
      if (!v26)
      {
        goto LABEL_36;
      }

      v27 = *__s;
      goto LABEL_35;
    }

    if (v25 != 2)
    {
      break;
    }

    v26 = v24[4];
    if (v26)
    {
      v27 = *__s;
LABEL_35:
      v26(a1, v22, v27, *(a1 + 64));
    }

LABEL_36:
    result = property_iterator_next(v33, v15, v16, v17, v18, v19, v20, v21);
    v13 = result;
    if (!result)
    {
      goto LABEL_37;
    }
  }

  if (v25 != 4)
  {
LABEL_39:
    __panic_npx("panic: unreachable case: %s = 0x%llx", v15, v16, v17, v18, v19, v20, v21, "id4->id_p->p_type->pt_switchable");
  }

  v28 = v24[5];
  if (!v28)
  {
    goto LABEL_36;
  }

  result = strlen(__s);
  if (result >= 1)
  {
    v28(a1, v22, __s, v39 + 1, *(a1 + 64));
    goto LABEL_36;
  }

  __break(0x5519u);
  return result;
}

uint64_t image4_environment_get_digest_info(uint64_t a1)
{
  v1 = image4_coprocessor_select(*(a1 + 16), 0, a1);
  if (!v1)
  {
    __panic_npx("panic: could not resolve chip for environment", v2, v3, v4, v5, v6, v7, v8, vars0);
  }

  v9 = *(v1 + 48);

  return v9();
}

uint64_t *image4_environment_destroy(uint64_t *result)
{
  if (*result)
  {
    return _expert_dealloc_type(*(*result + 8), *(*result + 32), result);
  }

  return result;
}

uint64_t _BootPolicyClosureComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void __panic_npx_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  v10 = &a9;
  vsnprintf(__str, 0x800uLL, "panic: digest buffer overflow: actual = %lu, expected >= %lu", &a9);
  _os_crash();
  __break(1u);
}

uint64_t _BootPolicyClosureComputeDigest_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void _prepare_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[2] = *MEMORY[0x29EDCA608];
  v4 = *(*a3 + 24);
  v5 = *(v4 + 8);
  v30[0] = 0;
  v30[1] = 0;
  v25 = 0;
  __n = 0;
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  boot_nonce = image4_environment_callout_query_boot_nonce(v4, v30, &__n);
  if (boot_nonce)
  {
    if (boot_nonce != 45)
    {
      expert_log(v5, 0, "failed to get boot nonce from callback: %d", v7, v8, v9, v10, v11, boot_nonce);
      goto LABEL_11;
    }

    nonce_digest = image4_environment_callout_query_nonce_digest(v4, v28, &v25);
    if (nonce_digest == 45)
    {
LABEL_11:
      v24 = *MEMORY[0x29EDCA608];
      return;
    }

    if (nonce_digest)
    {
      expert_log(v5, 0, "failed to get nonce digest from callback: %d", v13, v14, v15, v16, v17, nonce_digest);
      goto LABEL_11;
    }

    if (v25 <= 0x40)
    {
      digest_init(v27, v28, v25, v13, v14, v15, v16, v17);
      odometer_prepare_nonce_hash(a2, v27);
      goto LABEL_11;
    }
  }

  else if (__n <= 0x10)
  {
    nonce_init(v29, v30, __n, v7, v8, v9, v10, v11);
    odometer_prepare_nonce(a2, v29, v18, v19, v20, v21, v22, v23);
    goto LABEL_11;
  }

  __break(0x5519u);
}

uint64_t _extract_payload_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 528);
  memset(&v13[3], 0, 32);
  if (v7)
  {
    v8 = a3 + 528;
  }

  else
  {
    v8 = 0;
  }

  memset(&v13[1], 0, 32);
  if (v7)
  {
    v9 = a3 + 72;
  }

  else
  {
    v9 = 0;
  }

  v13[0] = 0uLL;
  v10 = manifest_measure(a3, a2, v13);
  *a5 = *(*(a2 + 48))(v10);
  if (v9 + 456 > v8)
  {
    __break(0x5519u);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9 + 328;
}

void *nonce_init(void *a1, const void *a2, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__n >= 0x11)
  {
    __panic_npx("panic: nonce too large: actual = %lu, expected <= %ld", a2, __n, a4, a5, a6, a7, a8, __n);
  }

  memcpy(a1, a2, __n);
  a1[2] = __n;
  return a1;
}

void *nonce_init_copy(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[2];
  if (v8 < 0x11)
  {
    return nonce_init(result, a2, v8, a4, a5, a6, a7, a8);
  }

  __break(0x5519u);
  return result;
}

uint64_t nonce_compare(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 == a2[2])
  {
    return memcmp(a1, a2, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t nonce_compare_buff(void *a1, const void *a2, size_t a3)
{
  if (a1[2] == a3)
  {
    return memcmp(a1, a2, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *nonce_copy_out(void *__src, void *__dst, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  v10 = __src[2];
  if (v9 < v10)
  {
LABEL_6:
    __panic_npx("panic: nonce length overflow: actual = %lu, expected >= %lu", __dst, v10, a4, a5, a6, a7, a8, v9);
  }

  if (v10 > 0x10 || (result = memcpy(__dst, __src, v10), v9 = __src[2], v9 > *a3))
  {
    __break(0x5519u);
    goto LABEL_6;
  }

  *a3 = v9;
  return result;
}

void *nonce_init_uint64(void *result, unint64_t a2)
{
  *result = bswap64(a2);
  result[2] = 8;
  return result;
}

unint64_t nonce_get_uint64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  if (v8 >= 9)
  {
    __panic_npx("panic: nonce cannot fit into 64-bit integer: actual = %lu, expected <= %lu", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  return bswap64(*a1);
}

unint64_t nonce_print_cstr(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x29EDCA608];
  strcpy(v24, "0123456789abcdef");
  v8 = (result + 16);
  v9 = *(result + 16);
  if (v9 > 0x21)
  {
LABEL_34:
    __panic_npx("panic: bogus nonce length: actual = %lu, expected <= %lu", a2, a3, a4, a5, a6, a7, a8, v9);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  if (!*v8)
  {
    goto LABEL_31;
  }

  v9 = 0;
  v10 = a2 + 33;
  v11 = a2;
  do
  {
    v12 = (result + v9);
    if (result + v9 >= v8 || v12 < result)
    {
      goto LABEL_33;
    }

    v14 = *v12;
    v15 = (v24 | (v14 >> 4));
    if (v15 >= &v24[17] || v15 < v24)
    {
      goto LABEL_33;
    }

    *v11 = *v15;
    v17 = v11 + 1;
    v18 = (v24 | v14 & 0xF);
    v19 = v18 >= &v24[17] || v18 < v24;
    v20 = v19 || v17 >= v10;
    v21 = !v20 && v17 >= a2;
    if (!v21 || ((*v17 = *v18, v11 = v17 + 1, v11 < v10) ? (v22 = v11 >= a2) : (v22 = 0), !v22))
    {
LABEL_33:
      __break(0x5519u);
      goto LABEL_34;
    }

    *v11 = 0;
    ++v9;
  }

  while (v9 < *v8);
  if (!*v8)
  {
LABEL_31:
    strcpy(a2, "null");
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sprintdgst_npx(unint64_t result, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x29EDCA608];
  strcpy(v21, "0123456789abcdef");
  if (a3 > 0x40)
  {
    goto LABEL_29;
  }

  *(result + 128) = 0;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  if (a3)
  {
    v8 = result + 129;
    v9 = result;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = (v21 | (v11 >> 4));
      if (v12 >= &v21[17] || v12 < v21)
      {
        break;
      }

      *v9 = *v12;
      v14 = v9 + 1;
      v15 = (v21 | v10 & 0xF);
      v16 = v15 >= &v21[17] || v15 < v21;
      v17 = v16 || v14 >= v8;
      if (v17 || v14 < result)
      {
        break;
      }

      *v14 = *v15;
      v9 = v14 + 1;
      if (v9 >= v8 || v9 < result)
      {
        break;
      }

      *v9 = 0;
      if (!--a3)
      {
        goto LABEL_27;
      }
    }

    __break(0x5519u);
LABEL_29:
    __panic_npx_1(result, a2, a3, a4, a5, a6, a7, a8, a3);
  }

  strcpy(result, "null");
LABEL_27:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void __panic_npx_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  v10 = &a9;
  vsnprintf(__str, 0x800uLL, "panic: bogus digest length: %lu", &a9);
  _os_crash();
  __break(1u);
}

uint64_t _chain_pivot_enforceable(uint64_t *a1, uint64_t a2)
{
  if (odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    v4 = *(a2 + 432);
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
      expert_log(v5, 1uLL, "odometer[%s:%s]: manifest has no pivot constraint", v7, v8, v9, v10, v11, name);
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

uint64_t _chain_pivot_enforce(uint64_t *a1, unint64_t a2)
{
  chip_property = odometer_policy_get_chip_property(a1, *(a2 + 16));
  if (*(a2 + 432))
  {
    v9 = (a2 + 328);
  }

  else
  {
    v9 = 0;
  }

  v10 = odometer_enforce_property(a2, a1, chip_property, v9, v5, v6, v7, v8);
  if (!v10)
  {
    goto LABEL_13;
  }

  v17 = v10;
  if (v10 == 2)
  {
    if (!odometer_check_fuse(a2, &_odometer_cylinder_production_status, v11, v12, v13, v14, v15, v16))
    {
      v24 = "odometer[%s:%s]: development silicon; not enforcing policy";
      goto LABEL_12;
    }

    if (odometer_check_fuse(a2, &_odometer_cylinder_internal_use, v18, v19, v20, v21, v22, v23))
    {
      v24 = "odometer[%s:%s]: internal unit; not enforcing policy";
LABEL_12:
      v40 = *a2;
      name = chip_get_name(*(a2 + 16));
      v56 = *a1;
      expert_log(v40, 1uLL, v24, v42, v43, v44, v45, v46, name);
LABEL_13:
      v47 = *a2;
      v48 = chip_get_name(*(a2 + 16));
      v57 = *a1;
      expert_log(v47, 1uLL, "odometer[%s:%s]: manifest is consistent with boot chain", v49, v50, v51, v52, v53, v48);
      return 0;
    }
  }

  v25 = *a2;
  v26 = chip_get_name(*(a2 + 16));
  v55 = *a1;
  v32 = expert_log(v25, 0, "odometer[%s:%s]: boot chain integrity violation: %d", v27, v28, v29, v30, v31, v26);
  if (v17 >= 0x6B)
  {
    __panic_npx_2(v32, v33, v34, v35, v36, v37, v38, v39, v17);
  }

  return v17;
}

void __panic_npx_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  v10 = &a9;
  vsnprintf(__str, 0x800uLL, "panic: error not set to valid posix code: %d", &a9);
  _os_crash();
  __break(1u);
}

uint64_t expert_map(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  if (v8 <= 0x11F)
  {
    __panic_npx("panic: insufficient memory for expert: actual = %lu, expected >= %lu", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  return *a1;
}

uint64_t _expert_assert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 8) != a2)
  {
    __panic_npx("panic: unexpected expert: op = %s, actual = %s, expected = %s", a2, a3, a4, a5, a6, a7, a8, a3);
  }

  return result;
}

char *expert_log_level_cstr_lower(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 4)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "lvl");
  }

  return off_29EEFE100[a1];
}

char *expert_log_level_cstr_upper(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 4)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "lvl");
  }

  return off_29EEFE120[a1];
}

uint64_t _expert_alloc_type(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  if (!type_get_size(a2))
  {
    __panic_npx("panic: type not available", v4, v5, v6, v7, v8, v9, v10, v13);
  }

  v11 = *(a1 + 64);
  if (!v11)
  {
    return 0;
  }

  return v11(a1, a2);
}

uint64_t _expert_dealloc_type(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = *a3;
    v5 = *(result + 72);
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      result = v5();
    }
  }

  *a3 = 0;
  return result;
}

uint64_t expert_alloc_data(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  v4 = *(a1 + 80);
  if (!v4)
  {
    return 0;
  }

  return v4(a1, a2);
}

uint64_t expert_dealloc_data(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(result + 88);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    result = v5();
    *a3 = 0;
  }

  return result;
}

uint64_t expert_dump(uint64_t a1)
{
  v147 = *MEMORY[0x29EDCA608];
  v121[0] = _property_filter_expert;
  v121[1] = 0;
  v121[2] = -1;
  v120 = 0;
  v133 = 0;
  v132 = 0;
  memset(v134, 0, sizeof(v134));
  (*(a1 + 240))();
  (*(a1 + 240))(a1);
  if ((*(a1 + 120))(a1, &v120))
  {
    v120 = 3;
  }

  else
  {
    v9 = v120;
    if (v120 >= 3)
    {
      if (v120 != 3)
      {
        __panic_npx("panic: unreachable case: %s = 0x%llx", v2, v3, v4, v5, v6, v7, v8, "sb");
      }

      v9 = 3;
    }

    snprintf(__str, 0x20uLL, "0x%llx", v9);
  }

  v10 = bswap32(*(a1 + 8));
  v131 = 0;
  *__str = v10;
  if (*a1)
  {
    v11 = *a1;
  }

  expert_log(a1, 1uLL, "%6s  %-36s : %s", v4, v5, v6, v7, v8, "");
  expert_log(a1, 1uLL, "%6s  %-36s : %s", v12, v13, v14, v15, v16, "");
  expert_log(a1, 1uLL, "%s %-36s : 0x%x", v17, v18, v19, v20, v21, "  🔥🌸 ");
  expert_log(a1, 1uLL, "%6s  %-36s : 0x%llx", v22, v23, v24, v25, v26, "");
  expert_log(a1, 1uLL, "%6s  %-36s : 0x%llx", v27, v28, v29, v30, v31, "");
  expert_log(a1, 1uLL, "%6s  %-36s : 0x%llx", v32, v33, v34, v35, v36, "");
  v37 = v120;
  (*(a1 + 240))(a1);
  v38 = (*(a1 + 128))(a1, v37);
  chip_get_name(v38);
  expert_log(a1, 1uLL, "%6s  %-36s : %s", v39, v40, v41, v42, v43, "");
  (*(a1 + 240))(a1);
  v49 = *(a1 + 104);
  if (v49)
  {
    v50 = v49(a1);
    if (v50 >= 7)
    {
      goto LABEL_50;
    }

    v53 = off_29EEFE140[v50];
  }

  expert_log(a1, 1uLL, "%6s  %-36s : %s", v44, v45, v46, v47, v48, "");
  (*(a1 + 240))(a1);
  v54 = *(a1 + 112);
  if (!v54)
  {
    goto LABEL_16;
  }

  v55 = v54(a1);
  if (v55 >= 7)
  {
LABEL_50:
    v118 = "lvl";
    goto LABEL_51;
  }

  v56 = off_29EEFE140[v55];
LABEL_16:
  expert_log(a1, 1uLL, "%6s  %-36s : %s", v44, v45, v46, v47, v48, "");
  v64 = property_iterator_next(v121, v57, v58, v59, v60, v61, v62, v63);
  if (v64)
  {
    v65 = v64;
    do
    {
      v66 = v65 + 13;
      memset(v146, 0, sizeof(v146));
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      qmemcpy(__dst, "n/a", sizeof(__dst));
      LOBYTE(v137[0]) = 0;
      LODWORD(v138[0]) = 0;
      *v135 = 0;
      memset(v129, 0, sizeof(v129));
      v128 = 0x3E800000000;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      *__source = 0u;
      v123 = 0u;
      v67 = *v65[5];
      if (v67 <= 1)
      {
        if (!v67)
        {
          if (v65 >= v66)
          {
            goto LABEL_48;
          }

          if (expert_query_property_BOOL(a1, v38, v65, v137))
          {
            goto LABEL_39;
          }

LABEL_38:
          snprintf(__dst, 0x81uLL, "%#x");
          goto LABEL_39;
        }

        if (v67 != 1)
        {
          goto LABEL_49;
        }

        if (v65 >= v66)
        {
LABEL_48:
          __break(0x5519u);
LABEL_49:
          v118 = "pi->p_type->pt_switchable";
LABEL_51:
          __panic_npx("panic: unreachable case: %s = 0x%llx", v51, v52, v44, v45, v46, v47, v48, v118);
        }

        if (!expert_query_property_uint32(a1, v38, v65, v138))
        {
          goto LABEL_38;
        }
      }

      else
      {
        switch(v67)
        {
          case 2:
            if (v65 >= v66)
            {
              goto LABEL_48;
            }

            if (!expert_query_property_uint64(a1, v38, v65, v135))
            {
              snprintf(__dst, 0x81uLL, "%#llx");
            }

            break;
          case 3:
            if (v65 >= v66)
            {
              goto LABEL_48;
            }

            if (!expert_query_property_digest(a1, v38, v65, v129))
            {
              digest_print_cstr(v129, __dst, v73, v68, v69, v70, v71, v72);
            }

            break;
          case 4:
            if (v65 >= v66)
            {
              goto LABEL_48;
            }

            if (!expert_query_property_version(a1, v38, v65, __source))
            {
              version_copyout(__source, __dst);
            }

            break;
          default:
            goto LABEL_49;
        }
      }

LABEL_39:
      v119 = *v65;
      expert_log(a1, 1uLL, "%6s  %-36s : %s", v68, v69, v70, v71, v72, v65 + 28);
      v65 = property_iterator_next(v121, v74, v75, v76, v77, v78, v79, v80);
    }

    while (v65);
  }

  memset(v138, 0, sizeof(v138));
  memset(v137, 0, sizeof(v137));
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  *__source = 0u;
  *(v129 + 11) = 0;
  BYTE4(v129[0]) = 0;
  *(v129 + 5) = 0;
  *(v129 + 7) = 0;
  *(&v129[1] + 9) = 0;
  *(&v129[1] + 3) = 0;
  strcpy(v129, "n/a");
  *&v135[11] = 0;
  v135[4] = 0;
  *&v135[5] = 0;
  *&v135[7] = 0;
  *(v136 + 6) = 0;
  v136[0] = 0;
  strcpy(v135, "n/a");
  memset(v146, 0, sizeof(v146));
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  qmemcpy(__dst, "n/a", sizeof(__dst));
  (*(a1 + 240))(a1);
  if (!(*(a1 + 144))(a1, 0, 0, v138))
  {
    nonce_print_cstr(v138, v129, v81, v82, v83, v84, v85, v86);
    (*(a1 + 240))(a1);
    if (!(*(a1 + 152))(a1, 0, 0, v138, v137))
    {
      nonce_print_cstr(v137, v135, v87, v82, v83, v84, v85, v86);
      (*(a1 + 240))(a1);
      v88 = (*(a1 + 128))(a1, 0);
      odometer_compute_nonce_hash(a1, v88, v137, __source);
      digest_print_cstr(__source, __dst, v89, v90, v91, v92, v93, v94);
    }
  }

  expert_log(a1, 2uLL, "%6s  %-36s : %s", v82, v83, v84, v85, v86, "");
  expert_log(a1, 2uLL, "%6s  %-36s : %s", v95, v96, v97, v98, v99, "");
  expert_log(a1, 2uLL, "%6s  %-36s : %s", v100, v101, v102, v103, v104, "");
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  *__source = 0u;
  memset(v146, 0, sizeof(v146));
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  qmemcpy(__dst, "n/a", sizeof(__dst));
  if (!expert_query_property_digest(a1, 0, &_property_bmfh, __source))
  {
    digest_print_cstr(__source, __dst, v105, v106, v107, v108, v109, v110);
  }

  result = expert_log(a1, 1uLL, "%6s  %-36s : %s", v106, v107, v108, v109, v110, "");
  if (*(a1 + 56))
  {
    expert_log(a1, 1uLL, "%s %-36s", v112, v113, v114, v115, v116, "");
    result = (*(a1 + 56))(a1, 1);
  }

  v117 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t expert_get_secure_boot(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  v4 = *(a1 + 120);

  return v4(a1, a2);
}

uint64_t expert_log(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 >= 3)
  {
    if (a2 != 3)
    {
      __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "level");
    }
  }

  else
  {
    (*(a1 + 240))(a1);
  }

  return (*(a1 + 48))(a1, a2, a3, &a9);
}

uint64_t expert_query_chip(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  v4 = *(a1 + 128);

  return v4(a1, a2);
}

uint64_t expert_get_exception_level(uint64_t a1)
{
  (*(a1 + 240))();
  v2 = *(a1 + 104);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t expert_get_unprivileged_limit(uint64_t a1)
{
  (*(a1 + 240))();
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 6;
  }

  return v2(a1);
}

uint64_t expert_query_property_BOOL(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v50 = *MEMORY[0x29EDCA608];
  v44 = 0;
  (*(a1 + 240))();
  _expert_query_resolve_debug(a1, a2, a3);
  v8 = chip_select_property_expert(a2, a3, a1);
  v41 = *v8;
  v43 = *a1;
  expert_log(a1, 2uLL, "selected property expert: property = %s, selected = %s, base = %s", v9, v10, v11, v12, v13, a3 + 28);
  if (v8 >= v8 + 288)
  {
    __break(0x5519u);
  }

  v14 = (*(v8 + 200))(v8, a2, a3, &v44);
  v20 = v14;
  if (v14 > 18)
  {
    if (v14 != 45 && v14 != 19)
    {
      goto LABEL_5;
    }

LABEL_11:
    expert_log(a1, 2uLL, "property not present: %s: %d", v15, v16, v17, v18, v19, *a3);
    goto LABEL_12;
  }

  if (v14)
  {
    if (v14 != 2)
    {
LABEL_5:
      expert_log(a1, 0, "failed to query property: %s: %d", v15, v16, v17, v18, v19, *a3);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_12:
  expert_log(a1, 2uLL, "queried property: %s => 0x%x", v15, v16, v17, v18, v19, a3 + 28);
LABEL_13:
  v29 = *(a3 + 88);
  memset(v49, 0, sizeof(v49));
  v48 = 0u;
  v47 = 0u;
  qmemcpy(__str, "n/a", sizeof(__str));
  v45 = v44;
  if (*(a3 + 48) == &_property_constraint_un)
  {
    v30 = _expert_post_process_unconstrain_BOOL;
  }

  else
  {
    v30 = v29;
  }

  if (v20 != 2)
  {
    if (v20)
    {
      goto LABEL_22;
    }

    v30 = *(a3 + 96);
    snprintf(__str, 0x40uLL, "0x%x", v44);
  }

  if (v30)
  {
    v31 = v30(a3, a2, &v45);
    if (v31)
    {
      v37 = v31;
      expert_log(a1, 1uLL, "transform not applied: p = %s, kind = %s: %d", v32, v33, v34, v35, v36, a3 + 28);
      v20 = v37;
      goto LABEL_23;
    }

    v42 = *(*(a3 + 40) + 8);
    expert_log(a1, 2uLL, "applied transform: p = %s, type = %s, xf kind = %s, value = [%s => 0x%x], error = [%d => %d]", v32, v33, v34, v35, v36, a3 + 28);
    v38 = v45;
LABEL_27:
    v20 = 0;
    *a4 = v38;
    goto LABEL_28;
  }

LABEL_22:
  if (!v20)
  {
    v38 = v44;
    goto LABEL_27;
  }

LABEL_23:
  if (v20 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v21, v22, v23, v24, v25, v26, v27, v20);
  }

LABEL_28:
  v39 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t expert_query_property_uint32(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v50 = *MEMORY[0x29EDCA608];
  v44 = 0;
  (*(a1 + 240))();
  _expert_query_resolve_debug(a1, a2, a3);
  v8 = chip_select_property_expert(a2, a3, a1);
  v41 = *v8;
  v43 = *a1;
  expert_log(a1, 2uLL, "selected property expert: property = %s, selected = %s, base = %s", v9, v10, v11, v12, v13, a3 + 28);
  if (v8 >= v8 + 288)
  {
    __break(0x5519u);
  }

  v14 = (*(v8 + 208))(v8, a2, a3, &v44);
  v20 = v14;
  if (v14 > 18)
  {
    if (v14 != 45 && v14 != 19)
    {
      goto LABEL_5;
    }

LABEL_11:
    expert_log(a1, 2uLL, "property not present: %s: %d", v15, v16, v17, v18, v19, *a3);
    goto LABEL_12;
  }

  if (v14)
  {
    if (v14 != 2)
    {
LABEL_5:
      expert_log(a1, 0, "failed to query property: %s: %d", v15, v16, v17, v18, v19, *a3);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_12:
  expert_log(a1, 2uLL, "queried property: %s => 0x%x", v15, v16, v17, v18, v19, a3 + 28);
LABEL_13:
  v29 = *(a3 + 88);
  memset(v49, 0, sizeof(v49));
  v48 = 0u;
  v47 = 0u;
  qmemcpy(__str, "n/a", sizeof(__str));
  v45 = v44;
  if (*(a3 + 48) == &_property_constraint_un)
  {
    v30 = _expert_post_process_unconstrain_uint32;
  }

  else
  {
    v30 = v29;
  }

  if (v20 != 2)
  {
    if (v20)
    {
      goto LABEL_22;
    }

    v30 = *(a3 + 96);
    snprintf(__str, 0x40uLL, "0x%x", v44);
  }

  if (v30)
  {
    v31 = v30(a3, a2, &v45);
    if (v31)
    {
      v37 = v31;
      expert_log(a1, 1uLL, "transform not applied: p = %s, kind = %s: %d", v32, v33, v34, v35, v36, a3 + 28);
      v20 = v37;
      goto LABEL_23;
    }

    v42 = *(*(a3 + 40) + 8);
    expert_log(a1, 2uLL, "applied transform: p = %s, type = %s, xf kind = %s, value = [%s => 0x%x], error = [%d => %d]", v32, v33, v34, v35, v36, a3 + 28);
    v38 = v45;
LABEL_27:
    v20 = 0;
    *a4 = v38;
    goto LABEL_28;
  }

LABEL_22:
  if (!v20)
  {
    v38 = v44;
    goto LABEL_27;
  }

LABEL_23:
  if (v20 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v21, v22, v23, v24, v25, v26, v27, v20);
  }

LABEL_28:
  v39 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t expert_query_property_uint64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = *MEMORY[0x29EDCA608];
  v44 = 0;
  (*(a1 + 240))();
  _expert_query_resolve_debug(a1, a2, a3);
  v8 = chip_select_property_expert(a2, a3, a1);
  v41 = *v8;
  v43 = *a1;
  expert_log(a1, 2uLL, "selected property expert: property = %s, selected = %s, base = %s", v9, v10, v11, v12, v13, a3 + 28);
  if (v8 >= v8 + 288)
  {
    __break(0x5519u);
  }

  v14 = (*(v8 + 216))(v8, a2, a3, &v44);
  v20 = v14;
  if (v14 > 18)
  {
    if (v14 != 45 && v14 != 19)
    {
      goto LABEL_5;
    }

LABEL_11:
    expert_log(a1, 2uLL, "property not present: %s: %d", v15, v16, v17, v18, v19, *a3);
    goto LABEL_12;
  }

  if (v14)
  {
    if (v14 != 2)
    {
LABEL_5:
      expert_log(a1, 0, "failed to query property: %s: %d", v15, v16, v17, v18, v19, *a3);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_12:
  expert_log(a1, 2uLL, "queried property: %s => 0x%llx", v15, v16, v17, v18, v19, a3 + 28);
LABEL_13:
  v29 = *(a3 + 88);
  memset(v49, 0, sizeof(v49));
  v48 = 0u;
  v47 = 0u;
  qmemcpy(__str, "n/a", sizeof(__str));
  v45 = v44;
  if (*(a3 + 48) == &_property_constraint_un)
  {
    v30 = _expert_post_process_unconstrain_uint64;
  }

  else
  {
    v30 = v29;
  }

  if (v20 != 2)
  {
    if (v20)
    {
      goto LABEL_22;
    }

    v30 = *(a3 + 96);
    snprintf(__str, 0x40uLL, "0x%llx", v44);
  }

  if (v30)
  {
    v31 = v30(a3, a2, &v45);
    if (v31)
    {
      v37 = v31;
      expert_log(a1, 1uLL, "transform not applied: p = %s, kind = %s: %d", v32, v33, v34, v35, v36, a3 + 28);
      v20 = v37;
      goto LABEL_23;
    }

    v42 = *(*(a3 + 40) + 8);
    expert_log(a1, 2uLL, "applied transform: p = %s, type = %s, xf kind = %s, value = [%s => 0x%llx], error = [%d => %d]", v32, v33, v34, v35, v36, a3 + 28);
    v38 = v45;
LABEL_27:
    v20 = 0;
    *a4 = v38;
    goto LABEL_28;
  }

LABEL_22:
  if (!v20)
  {
    v38 = v44;
    goto LABEL_27;
  }

LABEL_23:
  if (v20 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v21, v22, v23, v24, v25, v26, v27, v20);
  }

LABEL_28:
  v39 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t expert_query_property_digest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x29EDCA608];
  memset(v52, 0, sizeof(v52));
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  (*(a1 + 240))();
  _expert_query_resolve_debug(a1, a2, a3);
  v8 = chip_select_property_expert(a2, a3, a1);
  v47 = *v8;
  v49 = *a1;
  expert_log(a1, 2uLL, "selected property expert: property = %s, selected = %s, base = %s", v9, v10, v11, v12, v13, a3 + 28);
  if (v8 >= v8 + 288)
  {
    __break(0x5519u);
  }

  v14 = (*(v8 + 224))(v8, a2, a3, v52);
  v21 = v14;
  if (v14 > 18)
  {
    if (v14 != 45 && v14 != 19)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (!v14)
  {
LABEL_9:
    digest_print_cstr(v52, v50, v15, v16, v17, v18, v19, v20);
    expert_log(a1, 2uLL, "queried property: %s => %s", v22, v23, v24, v25, v26, a3 + 28);
    goto LABEL_10;
  }

  if (v14 == 2)
  {
LABEL_8:
    expert_log(a1, 2uLL, "property not present: %s: %d", v16, v17, v18, v19, v20, *a3);
    goto LABEL_9;
  }

LABEL_16:
  expert_log(a1, 0, "failed to query property: %s: %d", v16, v17, v18, v19, v20, *a3);
LABEL_10:
  memset(v63, 0, sizeof(v63));
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  qmemcpy(v56, "n/a", sizeof(v56));
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  if (v21 == 2)
  {
    if (*(a3 + 48) != &_property_constraint_un)
    {
      v21 = 2;
      goto LABEL_19;
    }

    memset(v55, 0, sizeof(v55));
    digest_print_cstr(v52, v53, v28, v29, v30, v31, v32, v33);
    v48 = *(*(a3 + 40) + 8);
    expert_log(a1, 2uLL, "applied transform: p = %s, type = %s, xf kind = %s, value = [%s => %s], error = [%d => %d]", v34, v35, v36, v37, v38, a3 + 28);
    digest_copy(v52, v55, v39, v40, v41, v42, v43, v44);
LABEL_18:
    digest_copy(a4, v52, v28, v29, v30, v31, v32, v33);
    v21 = 0;
    goto LABEL_19;
  }

  if (!v21)
  {
    goto LABEL_18;
  }

  if (v21 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v27, v28, v29, v30, v31, v32, v33, v21);
  }

LABEL_19:
  v45 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t expert_query_property_version(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x29EDCA608];
  v34 = 0x3E800000000;
  memset(v33, 0, sizeof(v33));
  (*(a1 + 240))();
  _expert_query_resolve_debug(a1, a2, a3);
  v8 = chip_select_property_expert(a2, a3, a1);
  v30 = *v8;
  v32 = *a1;
  expert_log(a1, 2uLL, "selected property expert: property = %s, selected = %s, base = %s", v9, v10, v11, v12, v13, a3 + 28);
  if (v8 >= v8 + 288)
  {
    __break(0x5519u);
  }

  v14 = (*(v8 + 232))(v8, a2, a3, v33);
  v20 = v14;
  if (v14 > 18)
  {
    if (v14 != 45 && v14 != 19)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (!v14)
  {
LABEL_9:
    expert_log(a1, 2uLL, "queried property: %s => %s", v15, v16, v17, v18, v19, a3 + 28);
    goto LABEL_10;
  }

  if (v14 == 2)
  {
LABEL_8:
    expert_log(a1, 2uLL, "property not present: %s: %d", v15, v16, v17, v18, v19, *a3);
    goto LABEL_9;
  }

LABEL_16:
  expert_log(a1, 0, "failed to query property: %s: %d", v15, v16, v17, v18, v19, *a3);
LABEL_10:
  memset(v44, 0, sizeof(v44));
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  qmemcpy(v37, "n/a", sizeof(v37));
  if (v20 == 2)
  {
    if (*(a3 + 48) != &_property_constraint_un)
    {
      v20 = 2;
      goto LABEL_19;
    }

    v36 = 0x3E800000000;
    memset(v35, 0, sizeof(v35));
    v31 = *(*(a3 + 40) + 8);
    expert_log(a1, 2uLL, "applied transform: p = %s, type = %s, xf kind = %s, value = [%s => %s], error = [%d => %d]", v23, v24, v25, v26, v27, a3 + 28);
    version_copy(v33, v35);
LABEL_18:
    version_copy(a4, v33);
    v20 = 0;
    goto LABEL_19;
  }

  if (!v20)
  {
    goto LABEL_18;
  }

  if (v20 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v21, v22, v23, v24, v25, v26, v27, v20);
  }

LABEL_19:
  v28 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t expert_get_image4_certificate_type(uint64_t a1, unsigned int *a2)
{
  v11 = 0;
  (*(a1 + 240))();
  if ((*(a1 + 208))(a1, 0, &_property_i4ct, &v11))
  {
    expert_log(a1, 1uLL, "[non-fatal] failed to query prop: %s: %d", v4, v5, v6, v7, v8, 0x298F0CE4ELL);
    v9 = 0;
  }

  else
  {
    v9 = v11;
    if (v11 > 1)
    {
      expert_log(a1, 0, "unsupported image4-cert-type: %u", v4, v5, v6, v7, v8, v11);
      return 45;
    }
  }

  result = 0;
  *a2 = v9;
  return result;
}

uint64_t expert_get_digest_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a1 + 240))();
  if (!a2)
  {
    (*(a1 + 240))(a1);
    a2 = (*(a1 + 128))(a1, 0);
  }

  v6 = *(a1 + 96);

  return v6(a1, a2, a3);
}

uint64_t expert_query_chip_boot(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  v4 = *(a1 + 136);

  return v4(a1, a2);
}

uint64_t expert_query_nonce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a1 + 240))();
  v8 = *(a1 + 144);

  return v8(a1, a2, a3, a4);
}

uint64_t expert_entangle_nonce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a1 + 240))();
  v10 = *(a1 + 152);

  return v10(a1, a2, a3, a4, a5);
}

uint64_t expert_read_boot_manifest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a1 + 240))();
  v8 = *(a1 + 160);

  return v8(a1, a2, a3, a4);
}

uint64_t expert_query_trust_store(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a1 + 240))();
  v10 = *(a1 + 168);

  return v10(a1, a2, a3, a4, a5);
}

uint64_t expert_read_storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a1 + 240))();
  result = (*(a1 + 248))(a1);
  if (!result)
  {
    v9 = *(a1 + 176);

    return v9(a1, a2, a3, a4);
  }

  return result;
}

uint64_t expert_runtime_boot(uint64_t a1)
{
  (*(a1 + 240))();
  v2 = *(a1 + 248);

  return v2(a1);
}

uint64_t expert_write_storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a1 + 240))();
  result = (*(a1 + 248))(a1);
  if (!result)
  {
    v9 = *(a1 + 184);

    return v9(a1, a2, a3, a4);
  }

  return result;
}

uint64_t expert_sync_storage(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  result = (*(a1 + 248))(a1);
  if (!result)
  {
    v5 = *(a1 + 192);

    return v5(a1, a2);
  }

  return result;
}

uint64_t _expert_query_resolve_debug(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    result = chip_expert(a2);
    if (result)
    {
      chip_get_name(a2);
      v11 = *(a2 + 16);
      v12 = *(a3 + 80);
      return expert_log(v5, 2uLL, "querying property with chip expert resolution: p = %s, chip = %s, chip type = 0x%llx, chip expert authority >= 0x%llx", v6, v7, v8, v9, v10, a3 + 28);
    }
  }

  return result;
}

uint64_t expert_read_random(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a1 + 240))();
  v6 = *(a1 + 256);

  return v6(a1, a2, a3);
}

uint64_t expert_syscall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a1 + 264))
  {
    return 78;
  }

  (*(a1 + 240))();
  v12 = *(a1 + 264);

  return v12(a1, a2, a3, a4, a5, a6);
}

unint64_t expert_unlock(unint64_t *a1)
{
  result = *a1;
  if (result)
  {
    if (result >= result + 288)
    {
      __break(0x5519u);
    }

    else
    {
      result = (*(result + 280))();
      *a1 = 0;
    }
  }

  return result;
}

uint64_t expert_get_boot_nonce_hash(uint64_t a1, uint64_t a2)
{
  v7[3] = *MEMORY[0x29EDCA608];
  memset(v7, 0, 24);
  memset(v6, 0, sizeof(v6));
  (*(a1 + 240))();
  result = (*(a1 + 144))(a1, 0, 0, v7);
  if (!result)
  {
    (*(a1 + 240))(a1);
    result = (*(a1 + 152))(a1, 0, 0, v7, v6);
    if (!result)
    {
      odometer_compute_nonce_hash(a1, 0, v6, a2);
      result = 0;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL expert_compute_data_only(uint64_t a1)
{
  (*(a1 + 240))();
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = v2(a1);
  }

  else
  {
    v3 = 0;
  }

  (*(a1 + 240))(a1);
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = 6;
  }

  return v3 < v5;
}

uint64_t expert_compute_udid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  result = expert_query_property_uint32(a1, a2, &_property_CHIP, &v14 + 1);
  if (result || (result = expert_query_property_uint64(a1, a2, &_property_ECID, &v15), result))
  {
    if (result >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v7, v8, v9, v10, v11, v12, v13, result);
    }
  }

  else
  {
    LODWORD(v14) = 0;
    HIDWORD(v14) = bswap32(HIDWORD(v14));
    v15 = bswap64(v15);
    digest_init(a3, &v14, 0x10uLL, v9, v10, v11, v12, v13);
    return 0;
  }

  return result;
}

uint64_t expert_compute_eieiou(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = expert_compute_eieiou_ps[v6];
    v18 = 0;
    result = expert_query_property_BOOL(a1, a2, v8, &v18);
    if (result > 0x2D || ((1 << result) & 0x200000000005) == 0)
    {
      break;
    }

    v7 += v18;
    if (++v6 == 3)
    {
      result = 0;
      *a3 = v7;
      return result;
    }
  }

  if (result >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v10, v11, v12, v13, v14, v15, v16, result);
  }

  return result;
}

uint64_t expert_compute_eieiou_BOOL(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v12 = 0;
  result = expert_compute_eieiou(a1, a2, &v12);
  if (result)
  {
    if (result >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v5, v6, v7, v8, v9, v10, v11, result);
    }
  }

  else
  {
    *a3 = v12 != 0;
  }

  return result;
}

uint64_t _boot_precomp_enforceable(uint64_t *a1, uint64_t a2)
{
  if (!odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    v14 = *a2;
    name = chip_get_name(*(a2 + 16));
    v25 = *a1;
    v13 = 1;
    expert_log(v14, 1uLL, "odometer[%s:%s]: chip has no property for policy", v16, v17, v18, v19, v20, name);
    return v13;
  }

  if (!*(a2 + 144))
  {
    v5 = *a2;
    v23 = chip_get_name(*(a2 + 16));
    v26 = *a1;
    v21 = "odometer[%s:%s]: manifest has no constraint for policy";
LABEL_8:
    v13 = 1;
    expert_log(v5, 1uLL, v21, v7, v8, v9, v10, v11, v23);
    return v13;
  }

  v4 = *(a2 + 232);
  v5 = *a2;
  v6 = chip_get_name(*(a2 + 16));
  v12 = *a1;
  if (!v4)
  {
    v23 = v6;
    v27 = *a1;
    v21 = "odometer[%s:%s]: no caller-supplied nonce hash";
    goto LABEL_8;
  }

  v24 = *a1;
  expert_log(v5, 1uLL, "odometer[%s:%s]: policy is enforceable", v7, v8, v9, v10, v11, v6);
  return 0;
}

uint64_t _boot_precomp_enforce(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  chip_property = odometer_policy_get_chip_property(a1, *(a2 + 16));
  if (*(a2 + 232))
  {
    v10 = a2 + 152;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 144))
  {
    v11 = a2 + 64;
  }

  else
  {
    v11 = 0;
  }

  if (property_constrain_digest(chip_property, v4, v11, v10, v6, v7, v8, v9))
  {
    v12 = *(a1 + 24);
    v13 = *a2;
    name = chip_get_name(*(a2 + 16));
    v36 = *a1;
    v20 = expert_log(v13, 0, "odometer[%s:%s]: anti-replay violation: %d", v15, v16, v17, v18, v19, name);
    if (v12 >= 0x6B)
    {
      __panic_npx_2(v20, v21, v22, v23, v24, v25, v26, v27, v12);
    }
  }

  else
  {
    v28 = *a2;
    v29 = chip_get_name(*(a2 + 16));
    expert_log(v28, 1uLL, "odometer[%s]: manifest is current", v30, v31, v32, v33, v34, v29);
    return 0;
  }

  return v12;
}

uint64_t _boot_sideload_enforceable(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = odometer_policy_get_chip_property(a1, v4);
  if (!result)
  {
    v16 = *a2;
    name = chip_get_name(*(a2 + 16));
    v31 = *a1;
    v15 = 1;
    expert_log(v16, 1uLL, "odometer[%s:%s]: chip has no property for policy", v18, v19, v20, v21, v22, name);
    return v15;
  }

  if (!*(v4 + 160))
  {
    v6 = *(a2 + 144);
    v7 = *a2;
    v8 = chip_get_name(*(a2 + 16));
    v14 = *a1;
    if (v6)
    {
      expert_log(v7, 1uLL, "odometer[%s:%s]: policy is enforceable", v9, v10, v11, v12, v13, v8);
      return 0;
    }

    else
    {
      v15 = 1;
      expert_log(v7, 1uLL, "odometer[%s:%s]: manifest has no constraint for policy", v9, v10, v11, v12, v13, v8);
    }

    return v15;
  }

  if (v4 < v4 + 264)
  {
    v23 = chip_get_name(v4);
    __panic_npx("panic: illegal chip definition: anti-reply and sideload policies defined: %s", v24, v25, v26, v27, v28, v29, v30, v23);
  }

  __break(0x5519u);
  return result;
}

uint64_t _boot_sideload_enforce(uint64_t a1, uint64_t a2)
{
  v74[13] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  chip_property = odometer_policy_get_chip_property(a1, *(a2 + 16));
  if (!*(a2 + 144))
  {
    __panic_npx("panic: optional not set", v6, v7, v8, v9, v10, v11, v12, v68);
  }

  v13 = chip_property;
  if (*(a2 + 232))
  {
    v14 = *a2;
    name = chip_get_name(*(a2 + 16));
    v69 = *a1;
    expert_log(v14, 1uLL, "odometer[%s:%s]: using caller-provided nonce hash", v16, v17, v18, v19, v20, name);
    if (property_constrain_digest(v13, v4, a2 + 64, a2 + 152, v21, v22, v23, v24))
    {
      v25 = *(a1 + 24);
      v26 = *a2;
      v27 = chip_get_name(*(a2 + 16));
      v70 = *a1;
      expert_log(v26, 0, "odometer[%s:%s]: anti-replay violation: %d", v28, v29, v30, v31, v32, v27);
      goto LABEL_7;
    }

LABEL_9:
    v59 = *a2;
    v60 = chip_get_name(*(a2 + 16));
    v73 = *a1;
    expert_log(v59, 1uLL, "odometer[%s:%s]: manifest is current", v61, v62, v63, v64, v65, v60);
    v25 = 0;
    goto LABEL_10;
  }

  *v74 = xmmword_298EF7980;
  memset(&v74[2], 170, 88);
  digest_copy(v74, a2 + 64, v7, v8, v9, v10, v11, v12);
  v40 = *a2;
  v41 = chip_get_name(*(a2 + 16));
  v71 = *a1;
  expert_log(v40, 1uLL, "odometer[%s:%s]: enforcing nonce hash directly", v42, v43, v44, v45, v46, v41);
  v51 = odometer_enforce_property(a2, a1, v13, v74, v47, v48, v49, v50);
  if (!v51)
  {
    goto LABEL_9;
  }

  v25 = v51;
  v52 = *a2;
  v53 = chip_get_name(*(a2 + 16));
  v72 = *a1;
  expert_log(v52, 0, "odometer[%s:%s]: anti-replay violation: %d", v54, v55, v56, v57, v58, v53);
LABEL_7:
  if (v25 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v33, v34, v35, v36, v37, v38, v39, v25);
  }

LABEL_10:
  v66 = *MEMORY[0x29EDCA608];
  return v25;
}

uint64_t image4_trust_evaluate_leaf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 744))
  {
LABEL_23:
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v35);
  }

  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = *(a1 + 1320);
  v13 = (a1 + 752);
  if (*(a1 + 1320))
  {
    v14 = a1 + 752;
  }

  else
  {
    v14 = 0;
  }

  v39[1] = a3;
  v40[0] = _image4_trust_property_callback_BOOL;
  v40[1] = _image4_trust_property_callback_integer;
  v40[2] = _image4_trust_property_callback_data;
  v40[3] = _image4_trust_violation;
  memset(&v40[4], 0, 24);
  v39[0] = a1;
  v36 = *(v11 + 24);
  v38 = *v10;
  expert_log(a2, 2uLL, "performing leaf trust evaluation: coprocessor = %s, handle = %llx, evaluation type = %s", a4, a5, a6, a7, a8, **(v11 + 16));
  if (v11 >= v11 + 72)
  {
    goto LABEL_22;
  }

  v15 = image4_environment_resolve(v11);
  if (!v15)
  {
    v32 = 45;
    v37 = *(v11 + 24);
    expert_log(a2, 0, "environment not supported: coprocessor = %s, handle = %llx: %d", a4, a5, a6, a7, a8, **(v11 + 16));
    return v32;
  }

  v16 = v15;
  if (v12)
  {
    v17 = payload_parse(v13);
    if (v17)
    {
      v18 = v17;
      if (v17 != 92 && v17 != 33)
      {
        expert_log(a2, 0, "failed to parse payload: %d", a4, a5, a6, a7, a8, v17);
        goto LABEL_19;
      }

      expert_log(a2, 1uLL, "treating payload as non-Image4 wrapped", a4, a5, a6, a7, a8, v35);
    }
  }

  if (v10 >= v10 + 6)
  {
LABEL_22:
    __break(0x5519u);
    goto LABEL_23;
  }

  image4_trust_evaluation_prepare_manifest_callbacks(v10, v40);
  manifest_set_callbacks(a1 + 152, v39, v40);
  v19 = manifest_parse(a1 + 152);
  if (!v19)
  {
    v33 = img4_runtime_alloc(v10);
    v32 = manifest_impose((a1 + 152), v16, v14, v33);
    if (!v32)
    {
      _image4_trust_post_properties(a1, v25, v26, v27, v28, v29, v30, v31);
      return v32;
    }

    goto LABEL_20;
  }

  v18 = v19;
  expert_log(a2, 0, "failed to parse manifest: %d", v20, v21, v22, v23, v24, v19);
LABEL_19:
  v32 = v18;
LABEL_20:
  if (v32 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v25, v26, v27, v28, v29, v30, v31, v32);
  }

  return v32;
}

uint64_t _image4_trust_property_callback_BOOL(uint64_t *a1, unsigned int *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _image4_trust_find_record(*a5, a3, 1, *a2, a5, a6, a7, a8);
  if (!result)
  {
    return expert_log(*a1, 2uLL, "no BOOLean record for tag: %s", v12, v13, v14, v15, v16, (a2 + 1));
  }

  **(result + 24) = a4;
  v17 = *(result + 40);
  if (v17)
  {
    *v17 = *(result + 24);
  }

  return result;
}

uint64_t _image4_trust_property_callback_integer(uint64_t *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _image4_trust_find_record(*a5, a3, 2, *a2, a5, a6, a7, a8);
  if (!result)
  {
    return expert_log(*a1, 2uLL, "no integer record for tag: %s", v12, v13, v14, v15, v16, (a2 + 1));
  }

  **(result + 24) = a4;
  v17 = *(result + 40);
  if (v17)
  {
    *v17 = *(result + 24);
  }

  return result;
}

uint64_t _image4_trust_property_callback_data(uint64_t *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  result = _image4_trust_find_record(*a6, a3, 4, *a2, a5, a6, a7, a8);
  if (!result)
  {
    return expert_log(*a1, 2uLL, "no data record for tag: %s", v13, v14, v15, v16, v17, (a2 + 1));
  }

  if (a4 && !a5)
  {
    __break(0x5519u);
  }

  else
  {
    **(result + 24) = a4;
    **(result + 32) = a5;
  }

  return result;
}

void _image4_trust_violation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  if (*(*a4 + 8))
  {
    if (*(v4 + 1320))
    {
      v5 = *(v4 + 760) + 4;
    }

    name = chip_get_name(a2);
    __panic_npx("panic: critical trust evaluation failure: chip = %s, p = %s, payload = %s", v7, v8, v9, v10, v11, v12, v13, name);
  }
}

uint64_t _image4_trust_post_properties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 + 1912;
  v32 = a1 + 1384;
  v10 = 4;
  v11 = 1;
  do
  {
    v33 = v11;
    if (!*(a1 + 744))
    {
      goto LABEL_15;
    }

    v12 = *(a1 + 16);
    expert_log(v12, 2uLL, "posting properties for container: 0x%x", a4, a5, a6, a7, a8, v10);
    v13 = qword_298EF7A10[v10];
    Img4DecodeGetQueryForContainer(v10, v14, v15, v16, v17, v18, v19, v20);
    v21 = v32;
    v22 = 12;
    do
    {
      if (v21 > v9)
      {
        __break(0x5519u);
LABEL_15:
        __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v30);
      }

      v23 = *(v21 - 48);
      v24 = *(v21 - 32);
      v35 = 0;
      v34 = 0;
      result = fourcc_init(&v34, v24);
      if (*(v21 - 40) == v13)
      {
        if (v10 == 4)
        {
          v26 = 0;
        }

        else
        {
          if (!*(a1 + 1320))
          {
            goto LABEL_11;
          }

          v26 = *(a1 + 856);
        }

        expert_log(v12, 2uLL, "posting property callback: container = %x, type = %x, tag = %s", a4, a5, a6, a7, a8, v10);
        result = manifest_post_property_callback(a1 + 152, v10, v26, v23, &v34, v27, v28, v29, v31);
      }

LABEL_11:
      v21 += 48;
      --v22;
    }

    while (v22);
    v11 = 0;
    v10 = 5;
  }

  while ((v33 & 1) != 0);
  return result;
}

uint64_t image4_trust_evaluate_audit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 744))
  {
LABEL_21:
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v40);
  }

  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = *(a1 + 1320);
  v13 = (a1 + 752);
  if (*(a1 + 1320))
  {
    v14 = a1 + 752;
  }

  else
  {
    v14 = 0;
  }

  v45[1] = a3;
  v46[0] = _image4_trust_property_callback_BOOL;
  v46[1] = _image4_trust_property_callback_integer;
  v46[2] = _image4_trust_property_callback_data;
  v46[3] = _image4_trust_violation;
  v46[4] = 0;
  v46[5] = _image4_trust_override_decode;
  v46[6] = _image4_trust_audit;
  v45[0] = a1;
  v43 = *(v11 + 40);
  v44 = *v10;
  v41 = *(v11 + 24);
  expert_log(a2, 2uLL, "performing audit trust evaluation: coprocessor = %s, handle = %llx, secure boot level = %llx, evaluation type = %s", a4, a5, a6, a7, a8, **(v11 + 16));
  if (v11 >= v11 + 72)
  {
LABEL_20:
    __break(0x5519u);
    goto LABEL_21;
  }

  v15 = image4_environment_resolve(v11);
  if (!v15)
  {
    v33 = 45;
    v42 = *(v11 + 24);
    expert_log(a2, 0, "environment not supported: coprocessor = %s, handle = %llx: %d", a4, a5, a6, a7, a8, **(v11 + 16));
    return v33;
  }

  v16 = v15;
  if (!v12 || (v17 = payload_parse(v13), !v17))
  {
LABEL_11:
    if (v10 < v10 + 6)
    {
      image4_trust_evaluation_prepare_manifest_callbacks(v10, v46);
      manifest_set_callbacks(a1 + 152, v45, v46);
      v19 = manifest_parse(a1 + 152);
      if (v19)
      {
        v25 = v19;
        expert_log(a2, 0, "failed to parse manifest: %d", v20, v21, v22, v23, v24, v19);
        v33 = v25;
      }

      else
      {
        v33 = manifest_audit((a1 + 152), v16, v14);
        if (!v33)
        {
          _image4_trust_post_properties(a1, v26, v27, v28, v29, v30, v31, v32);
          expert_log(a2, 1uLL, "forcing failure after audit completion: %d", v34, v35, v36, v37, v38, 0);
          return 35;
        }
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v18 = v17;
  if (v17 == 92)
  {
    expert_log(a2, 1uLL, "treating payload as non-Image4 wrapped", a4, a5, a6, a7, a8, v40);
    goto LABEL_11;
  }

  expert_log(a2, 0, "failed to parse payload: %d", a4, a5, a6, a7, a8, v17);
  v33 = v18;
LABEL_18:
  if (v33 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v26, v27, v28, v29, v30, v31, v32, v33);
  }

  return v33;
}

uint64_t image4_trust_evaluate_boot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 744))
  {
LABEL_12:
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v47);
  }

  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v49[1] = a3;
  v50[0] = _image4_trust_property_callback_BOOL;
  v50[1] = _image4_trust_property_callback_integer;
  v50[2] = _image4_trust_property_callback_data;
  v50[3] = _image4_trust_violation;
  memset(&v50[4], 0, 24);
  v49[0] = a1;
  v48 = *v10;
  expert_log(a2, 2uLL, "performing boot trust evaluation: coprocessor = %s, type = %s", a4, a5, a6, a7, a8, **(v11 + 16));
  if (v11 >= v11 + 72)
  {
    goto LABEL_11;
  }

  v12 = image4_environment_resolve(v11);
  if (!v12)
  {
    v26 = 45;
    expert_log(a2, 0, "booter environment not supported: %s: %d", a4, a5, a6, a7, a8, **(v11 + 16));
    return v26;
  }

  if (v10 >= v10 + 6)
  {
LABEL_11:
    __break(0x5519u);
    goto LABEL_12;
  }

  v13 = v12;
  image4_trust_evaluation_prepare_manifest_callbacks(v10, v50);
  manifest_set_callbacks(a1 + 152, v49, v50);
  v26 = boot_expert_boot_manifest(a2, v13, (a1 + 152), v14, v15, v16, v17, v18);
  if (v26)
  {
    name = chip_get_name(v13);
    expert_log(a2, 0, "manifest boot failed: %s: %d", v28, v29, v30, v31, v32, name);
    if (v26 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v33, v34, v35, v36, v37, v38, v39, v26);
    }
  }

  else
  {
    _image4_trust_post_properties(a1, v19, v20, v21, v22, v23, v24, v25);
    v40 = chip_get_name(v13);
    expert_log(a2, 1uLL, "manifest boot succeeded: %s", v41, v42, v43, v44, v45, v40);
    expert_dump(a2);
  }

  return v26;
}

uint64_t image4_trust_evaluate_normalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 744))
  {
LABEL_17:
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v43);
  }

  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v51[1] = a3;
  v52[0] = _image4_trust_property_callback_BOOL;
  v52[1] = _image4_trust_property_callback_integer;
  v52[2] = _image4_trust_property_callback_data;
  v52[3] = _image4_trust_violation;
  memset(&v52[4], 0, 24);
  v51[0] = a1;
  memset(v50, 0, sizeof(v50));
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v44 = *(v11 + 24);
  v46 = *v10;
  expert_log(a2, 2uLL, "performing normalization trust evaluation: coprocessor = %s, handle = %llx, evaluation type = %s", a4, a5, a6, a7, a8, **(v11 + 16));
  if (v11 >= v11 + 72)
  {
    goto LABEL_16;
  }

  v12 = image4_environment_resolve(v11);
  if (!v12)
  {
    v20 = 45;
    v45 = *(v11 + 24);
    expert_log(a2, 0, "environment not supported: coprocessor = %s, handle = %llx: %d", a4, a5, a6, a7, a8, **(v11 + 16));
LABEL_8:
    v53 = &v47;
    buff_destroy(&v53);
    return v20;
  }

  if (v10 >= v10 + 6)
  {
LABEL_16:
    __break(0x5519u);
    goto LABEL_17;
  }

  v13 = v12;
  image4_trust_evaluation_prepare_manifest_callbacks(v10, v52);
  manifest_set_callbacks(a1 + 152, v51, v52);
  v14 = manifest_parse(a1 + 152);
  if (v14)
  {
    v20 = v14;
    expert_log(a2, 0, "failed to parse manifest: %d", v15, v16, v17, v18, v19, v14);
    goto LABEL_11;
  }

  v21 = closure_init(v50, (a1 + 152), v13);
  _closure_set_unique_tags(v21, "HCNBOPECDICEDIDUhcncylpenonsfunsnvrs", 9);
  v27 = closure_compute(v21, &v47, 0, v22, v23, v24, v25, v26);
  if (!v27)
  {
    if (*(a2 + 8) == 1651470196)
    {
      boot_expert_boot_closure(a2, v21, &v47);
    }

    v20 = 0;
    *(a1 + 728) = v49;
    v42 = v48;
    *(a1 + 696) = v47;
    *(a1 + 712) = v42;
    *(a1 + 736) = 1;
    *&v48 = &_buff_destructor_null;
    goto LABEL_8;
  }

  v33 = v27;
  expert_log(a2, 0, "failed to compute closure: %d", v28, v29, v30, v31, v32, v27);
  v20 = v33;
LABEL_11:
  v53 = &v47;
  buff_destroy(&v53);
  if (v20 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v34, v35, v36, v37, v38, v39, v40, v20);
  }

  return v20;
}

void image4_trust_new_buff(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (v3 > v3 + v4)
  {
    __break(0x5519u);
  }

  else
  {
    image4_trust_new(a1, a2, v3, v4, 0);
  }
}

void image4_trust_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _expert_alloc_type(*(a1 + 8), &_image4_type_trust);
  if (v10)
  {
    _image4_trust_init(v10, a1, a2, a3, a4, a5, 1, v11);
    *(v12 + 40) = &_image4_type_trust;
  }
}

void _image4_trust_init(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = *(a2 + 8);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  if (a7 >= 2)
  {
    __panic_npx("panic: unsupported struct version: actual = %hu, expected <= %u", a2, a3, a4, a5, a6, a7, a8, a7);
  }

  bzero(a1, 0x788uLL);
  *a1 = v8;
  *(a1 + 1) = a6;
  *(a1 + 2) = v9;
  *(a1 + 3) = a2;
  *(a1 + 4) = a3;
  *(a1 + 7) = 0;
  if (a1 + 964 < a1)
  {
    __break(0x5519u);
  }

  else
  {
    _image4_trust_add_link(a1, a1, v16, v17, v18, v19, v20, v21);
    inited = buff_init_wrap(v22, a4, a5);
    manifest_init((a1 + 76), v9, &inited);
    a1[372] = 1;
  }
}

uint64_t _image4_trust_add_link(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 144);
  if (v8 > 4)
  {
    __panic_npx("panic: trust chain length exceeded: %lu", a2, a3, a4, a5, a6, a7, a8, 5);
  }

  v9 = result + 16 * v8;
  *(result + 144) = v8 + 1;
  if (v9 + 80 > (result + 144))
  {
    __break(0x5519u);
  }

  else
  {
    *(v9 + 64) = *(result + 56);
    *(v9 + 72) = a2;
    *(result + 56) = v9 + 64;
  }

  return result;
}

uint64_t image4_trust_set_payload(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v13 = 0;
  v12 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  fourcc_init(&v12, a2);
  inited = buff_init_wrap(v9, a3, a4);
  result = payload_init(a1 + 752, v7, &v12, &inited);
  *(a1 + 1320) = 1;
  return result;
}

uint64_t image4_trust_set_booter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9[1] != *(a2 + 32))
  {
    __panic_npx("panic: trust chaining not supported for evaluation: %s", a2, a3, a4, a5, a6, a7, a8, *v9);
  }

  return _image4_trust_add_link(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t image4_trust_set_result_buffer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*result)
  {
    __panic_npx("panic: operation not supported on this structure version: actual = %hu, expected >= %hu", a2, a3, a4, a5, a6, a7, a8, 0);
  }

  *(result + 1912) = a2;
  *(result + 1920) = a3;
  return result;
}

uint64_t image4_trust_record_property_BOOL(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 1328);
  if (v9 > 0xB)
  {
    __panic_npx("panic: no more property record slots", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  v10 = result + 48 * v9;
  if (v10 + 1384 > (result + 1912))
  {
    __break(0x5519u);
  }

  else
  {
    v11 = v10 + 1336;
    *(v11 + 8) = a2;
    *v11 = 1;
    *(v11 + 16) = a3;
    *(result + 1328) = v9 + 1;
    *(v11 + 24) = a4;
    *(v11 + 40) = a5;
  }

  return result;
}

uint64_t image4_trust_record_property_integer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 1328);
  if (v9 > 0xB)
  {
    __panic_npx("panic: no more property record slots", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  v10 = result + 48 * v9;
  if (v10 + 1384 > (result + 1912))
  {
    __break(0x5519u);
  }

  else
  {
    v11 = v10 + 1336;
    *(v11 + 8) = a2;
    *v11 = 2;
    *(v11 + 16) = a3;
    *(result + 1328) = v9 + 1;
    *(v11 + 24) = a4;
    *(v11 + 40) = a5;
  }

  return result;
}

uint64_t image4_trust_record_property_data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 1328);
  if (v9 > 0xB)
  {
    __panic_npx("panic: no more property record slots", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  v10 = result + 48 * v9;
  if (v10 + 1384 > (result + 1912))
  {
    __break(0x5519u);
  }

  else
  {
    v11 = v10 + 1336;
    *(v11 + 8) = a2;
    *v11 = 4;
    *(v11 + 16) = a3;
    *(result + 1328) = v9 + 1;
    *(v11 + 24) = a4;
    *(v11 + 32) = a5;
    *(v11 + 40) = 0;
  }

  return result;
}

void *image4_trust_evaluate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v15 = *(v8 + 16);
  v14 = *(v8 + 24);
  bzero(&v80, 0xEE0uLL);
  v79 = v15;
  v52[0] = "boot";
  v52[1] = 0xAAAAAAAA626F6F74;
  v52[2] = &v79;
  v52[3] = &v79;
  v52[4] = _boot_expert_init;
  v52[5] = _boot_expert_boot;
  v52[6] = _boot_expert_logv;
  v52[7] = _boot_expert_dump;
  v53 = 0u;
  v54 = 0u;
  v56 = 0;
  v57 = 0;
  v55 = _boot_expert_get_digest_info;
  v58 = _boot_expert_get_secure_boot;
  v59 = _boot_expert_query_chip;
  v60 = _boot_expert_query_chip_boot;
  v61 = _boot_expert_query_nonce;
  v62 = _boot_expert_entangle_nonce;
  v63 = _boot_expert_read_boot_manifest;
  v64 = _boot_expert_query_trust_store;
  v65 = _boot_expert_read_storage;
  v66 = _boot_expert_write_storage;
  v67 = _boot_expert_sync_storage;
  v68 = _boot_expert_query_property_BOOL;
  v69 = _boot_expert_query_property_uint32;
  v70 = _boot_expert_query_property_uint64;
  v71 = _boot_expert_query_property_digest;
  v72 = _boot_expert_query_property_version;
  v73 = _boot_expert_init_once;
  v74 = _boot_expert_boot_once;
  v75 = _boot_expert_read_random;
  v76 = _boot_expert_syscall;
  v77 = _boot_expert_lock;
  v78 = _boot_expert_unlock;
  v23 = image4_environment_resolve(v14);
  if (v23)
  {
    if (*(v13 + 144) > 1uLL)
    {
      v15 = v52;
    }

    v24 = *(v13 + 56);
    if (v24)
    {
      v25 = 1;
      while (1)
      {
        v26 = v24[1];
        v27 = *(v26 + 32);
        if (v15 == v52)
        {
          if (!*(v26 + 744))
          {
            goto LABEL_38;
          }

          v28 = *(v26 + 1320);
          *(v26 + 152) = v15;
          if (v28)
          {
            *(v26 + 752) = v15;
          }
        }

        if (v26 >= v26 + 1928)
        {
          goto LABEL_37;
        }

        v29 = (*(v27 + 40))();
        if (v29)
        {
          break;
        }

        v24 = *v24;
        ++v25;
        if (!v24)
        {
          v30 = 0;
          goto LABEL_17;
        }
      }

      v30 = v29;
      v51 = *(v13 + 144);
      expert_log(v15, 0, "trust evaluation failed: coprocessor = %s, sequence number = %lu, chain length = %lu: %d", v18, v19, v20, v21, v22, **(v14 + 16));
    }

    else
    {
      v30 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v30 = 45;
    v50 = *(v14 + 24);
    expert_log(v15, 0, "environment not supported: coprocessor = %s, handle = %llx: %d", v18, v19, v20, v21, v22, **(v14 + 16));
  }

LABEL_17:
  v31 = *(v13 + 32);
  if (*(v13 + 744))
  {
    v32 = v13 + 152;
  }

  else
  {
    v32 = 0;
  }

  v33 = *(v13 + 1320);
  v81 = 0;
  v82[0] = 0;
  if (v30)
  {
    v34 = 0;
    v35 = 0;
    v36 = v30;
    goto LABEL_35;
  }

  if (v33)
  {
    v37 = v13 + 752;
  }

  else
  {
    v37 = 0;
  }

  v38 = image4_trust_evaluation_get_result(v31, v23, v32, v37, v82);
  v35 = v82[0];
  if (v38 > v38 + v82[0])
  {
    goto LABEL_37;
  }

  v34 = v38;
  v39 = v32 + 544;
  if (!*(v32 + 584))
  {
    v39 = 0;
  }

  v81 = v39;
  *(v32 + 584) = 0;
  if (!v38 || (v40 = *(v13 + 1912)) == 0)
  {
    v36 = 0;
    goto LABEL_35;
  }

  if (*(v13 + 1920) < v35)
  {
    v34 = 0;
    v35 = 0;
    v36 = 7;
    goto LABEL_35;
  }

  memcpy(v40, v34, v35);
  if (v35 > *(v13 + 1920))
  {
LABEL_37:
    __break(0x5519u);
LABEL_38:
    __panic_npx("panic: optional not set", v16, v17, v18, v19, v20, v21, v22, v49);
  }

  v36 = 0;
  v34 = *(v13 + 1912);
LABEL_35:
  v10(v13, v34, v35, v36, v12);
  result = buff_destroy(&v81);
  if (v30 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v42, v43, v44, v45, v46, v47, v48, v30);
  }

  return result;
}

uint64_t *image4_trust_destroy(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if (*result)
  {
    if (!*(v8 + 744))
    {
      __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v12);
    }

    v9 = result;
    v10 = *(v8 + 16);
    if (*(v8 + 1320))
    {
      v11 = v8 + 752;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = v8 + 152;
    manifest_destroy(&v13, a2, a3, a4, a5, a6, a7, a8);
    payload_destroy(&v12);
    return _expert_dealloc_type(v10, *(v8 + 40), v9);
  }

  return result;
}

uint64_t _image4_trust_find_record(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_20;
      }

      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

LABEL_11:
    v9 = a1 + 1336;
    v10 = 12;
    while (v9 + 48 <= (a1 + 1912))
    {
      if (*(v9 + 16) == a4 && *(v9 + 8) == v8 && *v9 == a3)
      {
        return v9;
      }

      v9 += 48;
      if (!--v10)
      {
        return 0;
      }
    }

    __break(0x5519u);
LABEL_20:
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "p_where");
  }

  if ((a2 - 2) >= 2)
  {
    if (a2 == 4)
    {
      v8 = 3;
    }

    else
    {
      if (a2 != 5)
      {
        goto LABEL_20;
      }

      v8 = 4;
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t image4_identifier_get_constraint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **(*a1 + 48);
  if (v8 >= 9)
  {
    v10 = **(*a1 + 48);
    __panic_npx_3(a1, a2, a3, a4, a5, a6, a7, a8, "id4->id_p->p_constraint->pc_code");
  }

  return qword_298EF7A40[v8];
}

void __panic_npx_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  v10 = &a9;
  vsnprintf(__str, 0x800uLL, "panic: unreachable case: %s = 0x%llx", &a9);
  _os_crash();
  __break(1u);
}

size_t _darwin_el0_init(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  memcpy(__dst, "IODeviceTree:/chosen", sizeof(__dst));
  memcpy(path, "IODeviceTree:/product", sizeof(path));
  memcpy(v82, "IODeviceTree:/chosen/manifest-properties", sizeof(v82));
  memcpy(v81, "IODeviceTree:/chosen/asmb", sizeof(v81));
  v77 = 64;
  v78 = 64;
  memset(v80, 0, sizeof(v80));
  v79[0] = 0;
  v79[1] = 0;
  *v2 = os_log_create("com.apple.security.libimage4", "darwin-user");
  v3 = IORegistryEntryFromPath(0, __dst);
  *(v2 + 12) = v3;
  if (!v3)
  {
LABEL_34:
    __panic_npx("panic: failed to get chosen node", v4, v5, v6, v7, v8, v9, v10, v76);
  }

  v11 = IORegistryEntryFromPath(0, path);
  *(v2 + 16) = v11;
  if (!v11)
  {
    __panic_npx("panic: failed to get product node", v12, v13, v14, v15, v16, v17, v18, v76);
  }

  v19 = IORegistryEntryFromPath(0, v82);
  *(v2 + 20) = v19;
  if (!v19)
  {
    __panic_npx("panic: failed to get manifest properties", v20, v21, v22, v23, v24, v25, v26, v76);
  }

  v27 = IORegistryEntryFromPath(0, v81);
  *(v2 + 24) = v27;
  if (!v27)
  {
    expert_log(a1, 3uLL, "no asmb", v28, v29, v30, v31, v32, v76);
  }

  v33 = v2 + 304;
  v34 = IOServiceMatching("AppleImage4");
  MatchingService = IOServiceGetMatchingService(0, v34);
  if (MatchingService)
  {
    if (v2 >= v33)
    {
LABEL_33:
      __break(0x5519u);
      goto LABEL_34;
    }

    v36 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, (v2 + 28));
    if (v36)
    {
      expert_log(a1, 3uLL, "IOServiceOpen: %d", v6, v7, v8, v9, v10, v36);
      goto LABEL_13;
    }

    v37 = "IOServiceOpen: success";
  }

  else
  {
    v37 = "IOServiceGetMatchingService failed";
  }

  expert_log(a1, 3uLL, v37, v6, v7, v8, v9, v10, v76);
LABEL_13:
  if (v2 >= v33)
  {
    goto LABEL_33;
  }

  if ((sysctlbyname("kern.osreleasetype", (v2 + 144), &v78, 0, 0) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v38 = *__error();
  if (v38 != 2)
  {
    if (v38)
    {
      v39 = __error();
      expert_log(a1, 3uLL, "sysctlbyname[kern.osreleasetype]: %d", v40, v41, v42, v43, v44, *v39);
    }

    else
    {
      *(v2 + 208) = 1;
    }
  }

  if ((sysctlbyname("kern.bootsessionuuid", v80, &v77, 0, 0) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v45 = *__error();
  if (v45 != 2)
  {
    if (v45)
    {
      v51 = __error();
      expert_log(a1, 3uLL, "sysctlbyname[kern.bootsessionuuid]: %d", v52, v53, v54, v55, v56, *v51);
    }

    else
    {
      if (darwin_uuid_parse(v80, v79))
      {
        expert_log(a1, 3uLL, "failed to parse boot session uuid: %s: %d", v46, v47, v48, v49, v50, v80);
        goto LABEL_32;
      }

      digest_init(v2 + 216, v79, 0x10uLL, v46, v47, v48, v49, v50);
      *(v2 + 296) = 1;
    }
  }

  v57 = getenv("IMAGE4_LOG_FD");
  if (v57)
  {
    v58 = v57;
    *__error() = 0;
    v59 = strtol(v58, 0, 0);
    if (*__error())
    {
      __panic_npx("panic: invalid log file descriptor", v60, v61, v62, v63, v64, v65, v66, v76);
    }

    if (v59 >= getdtablesize())
    {
      getdtablesize();
      __panic_npx("panic: invalid log file descriptor: actual = %ld, expected <= %d", v69, v70, v71, v72, v73, v74, v75, v59);
    }

    *(v2 + 8) = v59;
  }

LABEL_32:
  result = dylib_expert_state_init(v2 + 32);
  v68 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _darwin_el0_logv(uint64_t a1, uint64_t a2, char *a3, va_list a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = a4;
  v9 = *(a1 + 16);
  if ((v9[4] & 1) == 0 && !v9[6])
  {
    v12 = *v9;
    if ((v9[1] & 0x80000000) == 0)
    {
      memset(v16, 0, sizeof(v16));
      if (vasprintf(v16, a3, v17) < 0)
      {
        _darwin_el0_logv_cold_1(&v18, v19);
      }

      v13 = *(v9 + 2);
      v14 = getprogname();
      dprintf(v13, "%s: %s\n", v14, v16[0]);
      free(v16[0]);
    }

    if (a2 > 1)
    {
      if (a2 == 2 || a2 == 3)
      {
        goto LABEL_14;
      }
    }

    else if (a2 <= 1)
    {
LABEL_14:
      result = os_log_with_args();
      v15 = *MEMORY[0x29EDCA608];
      return result;
    }

    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "lvl");
  }

  v10 = *MEMORY[0x29EDCA608];

  return dylib_restoreos_logv(a2, a3, a4, a4, a5, a6, a7, a8);
}

uint64_t _darwin_el0_dump(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 16);
  v11 = *(v10 + 208);
  v12 = *(v10 + 296);
  memset(v39, 0, sizeof(v39));
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  qmemcpy(v32, "n/a", sizeof(v32));
  if (v12)
  {
    digest_print_cstr(v10 + 216, v32, a3, a4, a5, a6, a7, a8);
  }

  v13 = *(v10 + 24) != 0;
  expert_log(a1, a2, "%6s  %-36s : 0x%llx", a4, a5, a6, a7, a8, "");
  v31 = *(v10 + 28);
  expert_log(a1, a2, "%6s  %-36s : 0x%llx", v14, v15, v16, v17, v18, "");
  expert_log(a1, a2, "%6s  %-36s : %s", v19, v20, v21, v22, v23, "");
  result = expert_log(a1, a2, "%6s  %-36s : %s", v24, v25, v26, v27, v28, "");
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void *_darwin_el0_alloc_type(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  handle = type_get_handle(a2);
  size = type_get_size(a2);
  if (!handle)
  {
    goto LABEL_9;
  }

  v5 = size;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, v5, 0x8A375538uLL);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, v5, 0x8709206FuLL);
    if (!result)
    {
      _darwin_el0_alloc_type_cold_1(&v8, v9);
    }
  }

  if (v5 < 1)
  {
    __break(0x5519u);
LABEL_9:
    result = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void *_darwin_el0_alloc_data(uint64_t a1, int64_t a2)
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
      _darwin_el0_alloc_type_cold_1(&v5, v6);
    }
  }

  if (a2 < 1)
  {
    __break(0x5519u);
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _darwin_el0_get_secure_boot(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(a1 + 16) + 24);
  v20 = 0;
  if (v10)
  {
    darwin_read_iokit_u32(v10, "lp-smb0", &v20 + 1);
    darwin_read_iokit_u32(v10, "lp-smb1", &v20);
    v11 = (v20 + HIDWORD(v20));
    expert_log(a1, 2uLL, "secure boot state: smb0 = %#x, smb1 = %#x, secure boot = %#x", v12, v13, v14, v15, v16, HIDWORD(v20));
    if (v11 >= 3)
    {
      __panic_npx("panic: invalid secure boot state: %#x", v17, v18, a4, a5, a6, a7, a8, v11);
    }
  }

  else
  {
    v11 = 0;
  }

  expert_log(a1, 2uLL, "returning secure boot state: %#llx", a4, a5, a6, a7, a8, v11);
  *a2 = v11;
  return 0;
}

uint64_t _darwin_el0_query_chip(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 16) + 12);
  v40[1] = _img4_chip_ap_reduced;
  v40[2] = _img4_chip_ap_reduced;
  v40[3] = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39[2] = v5;
  v39[3] = v5;
  v39[0] = v5;
  v39[1] = v5;
  v38 = 0;
  v37 = 0;
  darwin_read_iokit_cstr(v4, "crypto-hash-method", v39);
  expert_log(a1, 2uLL, "crypto method: %s", v6, v7, v8, v9, v10, v39);
  if (LODWORD(v39[0]) == 828467315)
  {
    v18 = 0;
  }

  else
  {
    if (*&v39[0] != 0x3438332D32616873)
    {
      __panic_npx("panic: non-sensical crypto hash method: %s", v11, v12, v13, v14, v15, v16, v17, v39);
    }

    v18 = _img4_chip_ap_sha2_384;
  }

  v40[0] = v18;
  darwin_read_iokit_BOOL(v4, "use-ddi-secure-boot", &v38 + 1);
  if (HIBYTE(v38) == 1)
  {
    expert_log(a1, 2uLL, "%s: %#x", v19, v20, v21, v22, v23, "use-ddi-secure-boot");
    v40[0] = _img4_chip_ap_vma2;
  }

  darwin_read_iokit_BOOL(v4, "allow-ecid-mismatch", &v38);
  if (v38 == 1)
  {
    expert_log(a1, 2uLL, "%s: %#x", v24, v25, v26, v27, v28, "allow-ecid-mismatch");
    v40[0] = _img4_chip_ap_vma2_clone;
  }

  darwin_read_iokit_BOOL(v4, "uses-avp-root-ca", &v37);
  if (v37)
  {
    expert_log(a1, 2uLL, "%s: %#x", v29, v30, v31, v32, v33, "uses-avp-root-ca");
    v40[0] = _chip_vma3;
  }

  v34 = &v40[a2];
  if (v34 >= &v41 || v34 < v40)
  {
    __break(0x5519u);
  }

  result = *v34;
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

void _darwin_el0_query_trust_store(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v41 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 24);
  v37 = 0x4000;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  if (a2)
  {
    *&v40[0] = v35;
    buff_destroy(v40);
LABEL_13:
    v33 = *MEMORY[0x29EDCA608];
    return;
  }

  v9 = malloc_type_malloc(0x4000uLL, 0x2F48DA65uLL);
  if (!v9)
  {
    _darwin_el0_query_trust_store_cold_1(&v39, v40);
  }

  v38 = v9;
  buff_init_xfer(v35, &v38, 0x4000, &_buff_destructor_free, 0);
  os_unfair_lock_lock((v5 + 92));
  v14 = (v5 + 136);
  v15 = (v5 + 96);
  if (*(v5 + 136))
  {
LABEL_5:
    v16 = *v15;
    v17 = v15[1];
    if (v15 + 5 <= v14 && v16 <= *v15 + v17)
    {
      v19 = 0;
      *a4 = v16;
      *a5 = v17;
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v20 = darwin_syscall_image_copy_active(a1, 0, v35, &v37, v10, v11, v12, v13);
  if (v20)
  {
    v19 = v20;
    expert_log(a1, 0, "failed to copy active cryptex0 root: %d", v21, v22, v23, v24, v25, v20);
LABEL_12:
    os_unfair_lock_assert_owner((v5 + 92));
    os_unfair_lock_unlock((v5 + 92));
    *&v40[0] = v35;
    buff_destroy(v40);
    if (v19 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v26, v27, v28, v29, v30, v31, v32, v19);
    }

    goto LABEL_13;
  }

  v34 = v35;
  if (v5 < v5 + 304)
  {
    v15 = buff_xfer((v5 + 96), &v34);
    *v14 = 1;
    v14 = v15 + 5;
    goto LABEL_5;
  }

LABEL_18:
  __break(0x5519u);
}

unint64_t _darwin_el0_query_property_BOOL(uint64_t a1, uint64_t a2, uint64_t *a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(a1 + 16) + 12);
  v26 = 0;
  v25 = 4;
  v11 = a3[2];
  if (v11 <= 11)
  {
    if (v11 <= 6)
    {
      if (v11 == 5)
      {
        v12 = 0;
        v13 = "certificate-production-status";
        goto LABEL_26;
      }

      if (v11 == 6)
      {
        v12 = 0;
        v13 = "certificate-security-mode";
        goto LABEL_26;
      }
    }

    else
    {
      switch(v11)
      {
        case 7:
          v12 = 0;
          v13 = "effective-production-status-ap";
          goto LABEL_26;
        case 8:
          v12 = 0;
          v13 = "effective-security-mode-ap";
          goto LABEL_26;
        case 11:
          v13 = "mix-n-match-prevention-status";
          v12 = 1;
          goto LABEL_26;
      }
    }

LABEL_34:
    v24 = *a3;
    __panic_npx("panic: illegal %s property: %s", a2, a3, a4, a5, a6, a7, a8, *(a3[5] + 8));
  }

  if (v11 > 14)
  {
    switch(v11)
    {
      case 15:
        v12 = 0;
        v13 = "factory-prerelease-global-trust";
        goto LABEL_26;
      case 18:
        v12 = 0;
        v13 = "research-enabled";
        goto LABEL_26;
      case 32:
        v14 = expert_compute_data_only(a1);
        goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (v11 == 12)
  {
    result = expert_compute_eieiou(a1, a2, &v26);
    if (result)
    {
      goto LABEL_27;
    }

    v14 = v26;
    goto LABEL_31;
  }

  v12 = 0;
  if (v11 == 13)
  {
    v13 = "internal-use-only-unit";
  }

  else
  {
    v13 = "engineering-use-only-unit";
  }

LABEL_26:
  result = darwin_read_iokit_node(v10, v13, &v26, &v25);
  if (!result)
  {
    v14 = v26;
    if (v12)
    {
      v23 = !v26;
LABEL_32:
      result = 0;
      *a4 = v23;
      return result;
    }

LABEL_31:
    v23 = v14;
    goto LABEL_32;
  }

LABEL_27:
  if (result >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v16, v17, v18, v19, v20, v21, v22, result);
  }

  return result;
}

unint64_t _darwin_el0_query_property_uint32(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v21 = 4;
  v9 = a3[2];
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v11 = "board-id";
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_25;
        }

        v11 = "chip-id";
      }
    }

    else
    {
      v11 = "chip-epoch";
    }

LABEL_18:
    v12 = 12;
    goto LABEL_19;
  }

  if (v9 > 0x21)
  {
LABEL_14:
    if (v9 == 3)
    {
      v11 = "security-domain";
      goto LABEL_18;
    }

    if (v9 == 19)
    {
      v11 = "esdm-fuses";
      goto LABEL_18;
    }

LABEL_25:
    v20 = *a3;
    __panic_npx("panic: illegal %s property: %s", a2, a3, a4, a5, a6, a7, a8, *(a3[5] + 8));
  }

  if (((1 << v9) & 0x21700000) != 0)
  {
    return 45;
  }

  if (v9 != 23)
  {
    if (v9 == 33)
    {
      v11 = "image4-cert-type";
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v11 = "cryptex1-product-class";
  v12 = 16;
LABEL_19:
  result = darwin_read_iokit_node(*(*(a1 + 16) + v12), v11, &v22, &v21);
  if (result)
  {
    if (result >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v13, v14, v15, v16, v17, v18, v19, result);
    }
  }

  else
  {
    *a4 = v22;
  }

  return result;
}

unint64_t _darwin_el0_query_property_uint64(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 8;
  v22 = 0;
  v9 = a3[2];
  if (v9 == 4)
  {
    v10 = "unique-chip-id";
    v11 = 12;
  }

  else
  {
    if (v9 != 27)
    {
      v20 = *a3;
      __panic_npx("panic: illegal %s property: %s", a2, a3, a4, a5, a6, a7, a8, *(a3[5] + 8));
    }

    v10 = "lp-stng";
    v11 = 24;
  }

  result = darwin_read_iokit_node(*(*(a1 + 16) + v11), v10, &v22, &v21);
  if (result)
  {
    if (result >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v13, v14, v15, v16, v17, v18, v19, result);
    }
  }

  else
  {
    *a4 = v22;
  }

  return result;
}

unint64_t _darwin_el0_query_property_digest(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x29EDCA608];
  v11 = *(a1 + 16);
  v12 = *(v11 + 12);
  memset(v34, 0, sizeof(v34));
  __n = 64;
  v31[0] = 0;
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, 38);
  v29 = 38;
  v31[1] = 0;
  v13 = a3[2];
  if (v13 <= 24)
  {
    if (v13 != 9)
    {
      if (v13 != 10)
      {
        if (v13 != 16)
        {
          goto LABEL_35;
        }

        result = darwin_read_iokit_node(v12, "apfs-preboot-uuid", v32, &v29);
        if (result)
        {
          goto LABEL_21;
        }

        result = darwin_uuid_parse(v32, v31);
        if (result)
        {
          goto LABEL_21;
        }

        v23 = v31;
        v24 = 16;
        goto LABEL_29;
      }

      v25 = "boot-manifest-hash";
      goto LABEL_20;
    }

    v14 = expert_compute_udid(a1, a2, v33);
    if (v14)
    {
      goto LABEL_22;
    }

LABEL_30:
    digest_copy(a4, v33, v17, v18, v19, v20, v21, v22);
    v14 = 0;
    goto LABEL_31;
  }

  if (v13 > 27)
  {
    if (v13 == 28)
    {
      v26 = darwin_copy_kcinstall_nonce_hash(a1, a2);
      if (v26)
      {
        v14 = v26;
        if (v26 == 96)
        {
          result = darwin_syscall_nonce_copy_hash(a1, a2, -1, v34, &__n);
          if (result)
          {
            goto LABEL_21;
          }

          goto LABEL_27;
        }

        expert_log(a1, 0, "failed to copy kcinstall nonce hash: %d", v18, v19, v20, v21, v22, v26);
        if (v14)
        {
LABEL_22:
          if (v14 >= 0x6B)
          {
            __panic_npx("panic: error not set to valid posix code: %d", v16, v17, v18, v19, v20, v21, v22, v14);
          }

          goto LABEL_31;
        }
      }
    }

    else
    {
      if (v13 != 30)
      {
        goto LABEL_35;
      }

      if (!*(v11 + 296))
      {
        v14 = 2;
        goto LABEL_31;
      }

      digest_copy(v33, v11 + 216, a3, a4, a5, a6, a7, a8);
    }

    goto LABEL_30;
  }

  if (v13 != 25)
  {
    if (v13 == 26)
    {
      v14 = 45;
LABEL_31:
      v27 = *MEMORY[0x29EDCA608];
      return v14;
    }

LABEL_35:
    v28 = *a3;
    __panic_npx("panic: illegal %s property: %s", a2, a3, a4, a5, a6, a7, a8, *(a3[5] + 8));
  }

  v12 = *(v11 + 24);
  v25 = "lp-spih";
LABEL_20:
  result = darwin_read_iokit_node(v12, v25, v34, &__n);
  if (result)
  {
LABEL_21:
    v14 = result;
    goto LABEL_22;
  }

LABEL_27:
  v24 = __n;
  if (__n <= 0x40)
  {
    v23 = v34;
LABEL_29:
    digest_init(v33, v23, v24, v18, v19, v20, v21, v22);
    goto LABEL_30;
  }

  __break(0x5519u);
  return result;
}

uint64_t _darwin_el0_query_property_version(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(v24, 0, 64);
  v21 = 64;
  v23 = 0x3E800000000;
  memset(v22, 0, sizeof(v22));
  if (a3[2] != 17)
  {
    v20 = *a3;
    __panic_npx("panic: illegal %s property: %s", a2, a3, a4, a5, a6, a7, a8, *(a3[5] + 8));
  }

  boot_manifest = expert_read_boot_manifest(a1, "love", v24, &v21);
  v17 = boot_manifest;
  if (boot_manifest)
  {
    if (boot_manifest >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v10, v11, v12, v13, v14, v15, v16, boot_manifest);
    }
  }

  else
  {
    version_init(v22, v24, v21);
    version_copy(a4, v22);
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t _darwin_el0_init_once(uint64_t result)
{
  v1 = result;
  v2 = 0;
  if (_darwin_el0_init_once_once != -1)
  {
    return _darwin_el0_init_once_cold_1(&v1, &v2, result);
  }

  return result;
}

uint64_t _darwin_el0_boot_once(uint64_t a1)
{
  if (_darwin_el0_boot_once_once != -1)
  {
    _darwin_el0_boot_once_cold_1();
  }

  return *(*(a1 + 16) + 88);
}

uint64_t _darwin_el0_syscall(uint64_t a1, uint64_t a2, void *a3, size_t a4, void *a5, size_t *a6, uint64_t a7, uint64_t a8)
{
  v27 = *a2;
  v28 = *a6;
  result = expert_log(a1, 2uLL, "syscall: %s", a4, a5, a6, a7, a8, v27);
  if (v28 > *a6)
  {
    __break(0x5519u);
  }

  else
  {
    if (!sysctl((a2 + 12), *(a2 + 32), a5, &v28, a3, a4))
    {
      return 0;
    }

    v15 = *__error();
    dylib_expert_record_trap_error(a1, a2, "sysctl", v15, v16, v17, v18, v19);
    if (v15 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v20, v21, v22, v23, v24, v25, v26, v15);
    }

    return v15;
  }

  return result;
}

uint64_t _darwin_el0_init_once_tramp(uint64_t *a1)
{
  v1 = *a1;
  a1[1] = generic_expert();

  return dylib_init(v1);
}

uint64_t _darwin_el0_boot_once_tramp(uint64_t a1)
{
  result = expert_boot(a1);
  *(*(a1 + 24) + 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_2(void *a1, _OWORD *a2)
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

void _prepare_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[2] = *MEMORY[0x29EDCA608];
  v4 = *(*a3 + 24);
  v5 = *(v4 + 8);
  v21[0] = 0;
  v21[1] = 0;
  __n = 0;
  memset(v20, 0, sizeof(v20));
  boot_nonce = image4_environment_callout_query_boot_nonce(v4, v21, &__n);
  if (boot_nonce)
  {
    if (boot_nonce != 45)
    {
      expert_log(v5, 0, "failed to get nonce digest from callback: %d", v7, v8, v9, v10, v11, boot_nonce);
    }

    goto LABEL_6;
  }

  if (__n <= 0x10)
  {
    nonce_init(v20, v21, __n, v7, v8, v9, v10, v11);
    odometer_prepare_nonce(a2, v20, v12, v13, v14, v15, v16, v17);
LABEL_6:
    v18 = *MEMORY[0x29EDCA608];
    return;
  }

  __break(0x5519u);
}

uint64_t _extract_payload_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  payload_get_decoded_bytes(a4, v7);
  result = *&v7[0];
  *a5 = *(&v7[0] + 1);
  return result;
}

uint64_t img4_chip_init_from_buff(uint64_t a1, unint64_t a2)
{
  result = img4_runtime_get_expert(_img4_runtime_default);
  if (a2 == 384)
  {
    v12 = result;
    v13 = _expert_alloc_type(result, &_image4_type_custom_chip);
    if (!v13)
    {
      goto LABEL_8;
    }

    a1 = v13;
    *(v13 + 720) = v12;
    return a1;
  }

  if (a2)
  {
    *(a1 + 720) = 0;
    if (a2 <= 0x2D7)
    {
LABEL_8:
      __panic_npx("panic: object overflows buffer: object = chip, length = %lu, required = %lu", v5, v6, v7, v8, v9, v10, v11, a2);
    }

    return a1;
  }

  __break(0x5519u);
  return result;
}

unint64_t img4_chip_select_cryptex1_boot()
{
  result = img4_chip_select_effective_ap();
  v1 = *(result + 104);
  if (v1)
  {
    return *v1;
  }

  if (result < result + 264)
  {
    name = chip_get_name(result);
    __panic_npx("panic: no cryptex1 guests for %s", v3, v4, v5, v6, v7, v8, v9, name);
  }

  __break(0x5519u);
  return result;
}

unint64_t img4_chip_select_cryptex1_preboot()
{
  result = img4_chip_select_effective_ap();
  v1 = *(result + 104);
  if (v1)
  {
    return *(v1 + 16);
  }

  if (result < result + 264)
  {
    name = chip_get_name(result);
    __panic_npx("panic: no cryptex1 guests for %s", v3, v4, v5, v6, v7, v8, v9, name);
  }

  __break(0x5519u);
  return result;
}

unint64_t img4_chip_get_cryptex1_boot(unint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    return *v1;
  }

  if (result + 264 >= result)
  {
    name = chip_get_name(result);
    __panic_npx("panic: no cryptex1 guests for %s", v3, v4, v5, v6, v7, v8, v9, name);
  }

  __break(0x5519u);
  return result;
}

unint64_t img4_chip_get_cryptex1_boot_proposal(unint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    return *(v1 + 8);
  }

  if (result + 264 >= result)
  {
    name = chip_get_name(result);
    __panic_npx("panic: no cryptex1 guests for %s", v3, v4, v5, v6, v7, v8, v9, name);
  }

  __break(0x5519u);
  return result;
}

uint64_t img4_chip_instantiate(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  expert = img4_runtime_get_expert(_img4_runtime_default);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v17 = 0u;
  v18 = 0u;
  result = expert_runtime_boot(expert);
  if (result || (result = chip_instance_instantiate(&v17, expert, a1, v8, v9, v10, v11, v12), result))
  {
    if (result >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v6, v7, v8, v9, v10, v11, v12, result);
    }
  }

  else
  {
    *(a2 + 8) = a1;
    *(a2 + 16) = 0;
    *(a2 + 24) = v18;
    *(a2 + 40) = v19;
    *(a2 + 48) = DWORD2(v19);
    img4_dgst_init_from_digest(a2 + 64, v20, v7, v8, v9, v10, v11, v12);
    v14 = 0;
    *(a2 + 128) = v21;
    *(a2 + 52) = BYTE12(v22);
    *(a2 + 54) = BYTE13(v22);
    *(a2 + 60) = BYTE14(v22);
    *(a2 + 56) = DWORD2(v22);
    *(a2 + 53) = HIBYTE(v22);
    do
    {
      v15 = __omit_map[v14];
      if (v15)
      {
        v16 = property_find_from_expert(v14);
        if (!v16 || (v16[9] & *(&v17 + 1)) == 0)
        {
          *(a2 + 16) |= v15;
        }
      }

      v14 = (v14 + 1);
    }

    while (v14 != 35);
    result = 0;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t img4_chip_custom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  memset(&v25[8], 0, 120);
  v23 = v8;
  v24 = *(a1 + 24);
  *v25 = *(a1 + 40);
  *&v25[8] = *(a1 + 48);
  v9 = *(a1 + 72);
  if (v9 >= 0x31)
  {
    goto LABEL_10;
  }

  v12 = a2 + 264;
  v13 = a2 + 720;
  digest_init(&v25[16], (a1 + 80), v9, a4, a5, a6, a7, a8);
  v14 = 0;
  *&v25[96] = *(a1 + 128);
  v25[124] = *(a1 + 52);
  v25[125] = *(a1 + 54);
  v25[126] = *(a1 + 60);
  *&v25[120] = *(a1 + 56);
  v25[127] = *(a1 + 53);
  do
  {
    v15 = __omit_map[v14];
    if (v15)
    {
      v16 = property_find_from_expert(v14);
      if (v16)
      {
        if ((*(a1 + 16) & v15) == 0)
        {
          *(&v23 + 1) |= v16[9];
        }
      }
    }

    v14 = (v14 + 1);
  }

  while (v14 != 35);
  memcpy(a2, v8, 0x108uLL);
  *(a2 + 16) = 3;
  if (v12 >= v13)
  {
LABEL_10:
    __break(0x5519u);
  }

  *(a2 + 264) = "custom chip";
  *(a2 + 272) = 1667787120;
  *(a2 + 280) = a2 + 712;
  *(a2 + 288) = a2 + 712;
  *(a2 + 296) = _chip_expert_init;
  *(a2 + 304) = _chip_expert_boot;
  *(a2 + 312) = _chip_expert_logv;
  *(a2 + 320) = _chip_expert_dump;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 360) = _chip_expert_get_digest_info;
  *(a2 + 384) = _chip_expert_get_secure_boot;
  *(a2 + 392) = _chip_expert_query_chip;
  *(a2 + 400) = _chip_expert_query_chip_boot;
  *(a2 + 408) = _chip_expert_query_nonce;
  *(a2 + 416) = _chip_expert_entangle_nonce;
  *(a2 + 424) = _chip_expert_read_boot_manifest;
  *(a2 + 432) = _chip_expert_query_trust_store;
  *(a2 + 440) = _chip_expert_read_storage;
  *(a2 + 448) = _chip_expert_write_storage;
  *(a2 + 456) = _chip_expert_sync_storage;
  *(a2 + 464) = _chip_expert_query_property_BOOL;
  *(a2 + 472) = _chip_expert_query_property_uint32;
  *(a2 + 480) = _chip_expert_query_property_uint64;
  *(a2 + 488) = _chip_expert_query_property_digest;
  *(a2 + 496) = _chip_expert_query_property_version;
  *(a2 + 504) = _chip_expert_init_once;
  *(a2 + 512) = _chip_expert_boot_once;
  *(a2 + 520) = _chip_expert_read_random;
  *(a2 + 528) = _chip_expert_syscall;
  *(a2 + 536) = _chip_expert_lock;
  *(a2 + 544) = _chip_expert_unlock;
  *(a2 + 552) = v23;
  *(a2 + 568) = v24;
  v17 = *&v25[48];
  *(a2 + 616) = *&v25[32];
  *(a2 + 632) = v17;
  v18 = *&v25[16];
  *(a2 + 584) = *v25;
  *(a2 + 600) = v18;
  v19 = *&v25[112];
  *(a2 + 680) = *&v25[96];
  *(a2 + 696) = v19;
  v20 = *&v25[80];
  *(a2 + 648) = *&v25[64];
  *(a2 + 664) = v20;
  *(a2 + 712) = a2 + 552;
  *(a2 + 112) = v12;
  v21 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t img4_chip_select_personalized_ap()
{
  v0 = generic_expert_specialist();

  return expert_query_chip(v0, 0);
}

uint64_t img4_chip_select_effective_ap()
{
  v0 = generic_expert_specialist();
  v3 = 0;
  if (expert_get_secure_boot(v0, &v3))
  {
    v1 = 0;
    v3 = 0;
  }

  else
  {
    v1 = v3;
  }

  return expert_query_chip(v0, v1);
}

void *img4_buff_dealloc(void *result)
{
  if (result)
  {
    v1 = result[3];
    if (v1)
    {
      if (result[2])
      {
        v2 = 1;
      }

      else
      {
        v2 = result[1] == 0;
      }

      if (v2)
      {
        return v1(&_img4_runtime_default);
      }

      else
      {
        __break(0x5519u);
      }
    }
  }

  return result;
}

void *img4_runtime_find_object_spec(int a1)
{
  v1 = &_img4_runtime_object_spec_local_policy;
  if (a1 != 1819307884)
  {
    v1 = 0;
  }

  if (a1 == 1634756974)
  {
    return &_img4_runtime_object_spec_supplemental_root;
  }

  else
  {
    return v1;
  }
}

uint64_t img4_buff_init_from_buff(uint64_t result, void *a2)
{
  *result = 0;
  v2 = a2[1];
  if (*a2 > (*a2 + v2))
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 8) = *a2;
    *(result + 16) = v2;
    *(result + 24) = 0;
  }

  return result;
}

__n128 img4_buff_steal(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  *(a2 + 24) = 0;
  return result;
}

uint64_t img4_buff_dealloc_internal(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = v2[3];
    if (v3)
    {
      if (v2[2])
      {
        v5 = 1;
      }

      else
      {
        v5 = v2[1] == 0;
      }

      if (v5)
      {
        result = v3();
        *a2 = 0;
      }

      else
      {
        __break(0x5519u);
      }
    }
  }

  return result;
}

uint64_t img4_nonce_init_from_digest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  *(a1 + 52) = 48;
  digest_copy_out32(a2, (a1 + 2), (a1 + 52), a4, a5, a6, a7, a8);
  return a1;
}

uint64_t digest_init_from_img4_dgst(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 8);
  if (v8 < 0x31)
  {
    return digest_init(result, (a2 + 16), v8, a4, a5, a6, a7, a8);
  }

  __break(0x5519u);
  return result;
}

uint64_t digest_init_from_img4_nonce(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 52);
  if (v8 < 0x31)
  {
    return digest_init(result, (a2 + 2), v8, a4, a5, a6, a7, a8);
  }

  __break(0x5519u);
  return result;
}

uint64_t img4_dgst_init_from_digest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  *(a1 + 8) = 48;
  digest_copy_out(a2, (a1 + 16), (a1 + 8), a4, a5, a6, a7, a8);
  return a1;
}

void *_darwin_runtime_alloc(uint64_t a1, int64_t a2)
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

uint64_t _darwin_runtime_execute_object(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = dylib_expert();
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v37 = 2;
  v38 = *a2;
  memset(v39, 170, sizeof(v39));
  v32 = 2;
  v33 = v38;
  v34 = 0;
  v36 = 0;
  v35 = 0;
  v31 = 33;
  buff_init_from_img4_buff(v42, a3);
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  buff_init_from_img4_buff(v40, v8);
  v39[0] = *&v42[0];
  LODWORD(v39[1]) = buff_get_length_uint32(v42, v9, v10, v11, v12, v13, v14, v15);
  *(&v39[1] + 4) = *&v40[0];
  HIDWORD(v39[2]) = buff_get_length_uint32(v40, v16, v17, v18, v19, v20, v21, v22);
  result = dylib_expert_call_method(v7, 0xDuLL, &v37, 0x21uLL, &v32, &v31);
  if (result >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v24, v25, v26, v27, v28, v29, v30, result);
  }

  return result;
}

uint64_t _darwin_runtime_copy_object(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = dylib_expert();
  v39 = 1;
  v15 = *a2;
  v40 = *a2;
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a3 + 8) == 0;
  }

  if (!v17)
  {
    __break(0x5519u);
    goto LABEL_13;
  }

  v41 = *(a3 + 8);
  if (HIDWORD(v16))
  {
LABEL_13:
    __panic_npx("panic: integer cast overflow: v = %s, actual = %llu, expected <= %llu", v8, v9, v10, v11, v12, v13, v14, "payload->i4b_len");
  }

  v18 = v7;
  v42 = v16;
  v35 = 1;
  v36 = v15;
  v37 = 0;
  v38 = 0;
  v34 = 21;
  v19 = expert_runtime_boot(v7);
  if (v19)
  {
    v25 = v19;
    expert_log(v18, 3uLL, "failed to boot expert for syscall: %d", v20, v21, v22, v23, v24, v19);
  }

  else
  {
    v25 = dylib_expert_call_method(v18, 0xFuLL, &v39, 0x15uLL, &v35, &v34);
    if (!v25)
    {
      *a4 = v38;
      return v25;
    }
  }

  if (v25 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v26, v27, v28, v29, v30, v31, v32, v25);
  }

  return v25;
}

uint64_t darwin_copy_kcinstall_nonce_hash(uint64_t a1, char *a2)
{
  if (a2 != _chip_ap_kcinstall)
  {
    return 96;
  }

  __break(0x5519u);
  return result;
}

uint64_t *chip_bin_find_entry(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1;
  v6 = 24;
  while (1)
  {
    v7 = *v5;
    if (!*v5)
    {
      return 0;
    }

    if (*(a2 + 16) == 3)
    {
      v8 = strcmp(*(a2 + 8), *(v7 + 8));
      if (v7 == a2 || v8 == 0)
      {
        return v5;
      }

      goto LABEL_11;
    }

    if (v7 == a2)
    {
      return &a1[3 * v4];
    }

LABEL_11:
    ++v4;
    v5 += 3;
    if (!--v6)
    {
      return 0;
    }
  }
}

_DWORD *chip_bin_find_by_fourcc(uint64_t a1, int a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *(a1 + v2);
    if (!v3 || *v3 == a2)
    {
      break;
    }

    v2 += 24;
    if (v2 == 576)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t chip_bin_find_by_name(uint64_t a1, char *__s2)
{
  v4 = 0;
  while (1)
  {
    v5 = *(a1 + v4);
    if (!v5 || !strcmp(*(v5 + 8), __s2))
    {
      break;
    }

    v4 += 24;
    if (v4 == 576)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t chip_bin_find_by_handle(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v3 = 24;
  while (1)
  {
    result = *(v2 - 1);
    if (!result || *v2 == a2)
    {
      break;
    }

    v2 += 3;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t chip_bin_check(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (chip_bin_find_entry(a1, a2))
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t *_chip_bin_get_data(uint64_t *a1, uint64_t a2)
{
  result = chip_bin_find_entry(a1, a2);
  if (result)
  {
    return result[2];
  }

  return result;
}

uint64_t _manifest_impose_internal(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))
{
  v125 = *MEMORY[0x29EDCA608];
  v120[0] = a1;
  v120[1] = a2;
  v120[2] = a3;
  v120[3] = a4;
  v121 = 0;
  v122 = 0;
  v120[4] = a5;
  v123 = _manifest_evaluate_trust_payload;
  v124 = 0xAAAAAAAAFFFFFFFFLL;
  v118 = 0;
  v119 = 0;
  v8 = *a1;
  v9 = a1[1];
  if (a3)
  {
    v10 = *(a3 + 8) + 4;
    v11 = "payload";
  }

  else
  {
    v123 = _manifest_evaluate_trust_manifest;
    v11 = "manifest";
  }

  alloc_preference = _type_get_alloc_preference(&_image4_type_decode_context);
  if (alloc_preference <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = alloc_preference;
  }

  if (v20 == 1)
  {
    goto LABEL_11;
  }

  if (v20 != 2)
  {
    goto LABEL_50;
  }

  v21 = _expert_alloc_type(v8, &_image4_type_decode_context);
  if (!v21)
  {
LABEL_11:
    size = type_get_size(&_image4_type_decode_context);
    v37 = MEMORY[0x2A1C7C4A8](size, v30, v31, v32, v33, v34, v35, v36);
    v27 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v37 >= 0x31)
    {
      v38 = v37 - 48;
    }

    else
    {
      v38 = 0;
    }

    memset(v27 + 48, 170, v38);
    *v27 = 0u;
    *(v27 + 1) = 0u;
    *(v27 + 2) = 0u;
    v28 = "stack";
  }

  else
  {
    v27 = v21;
    v118 = v21;
    v28 = "heap";
  }

  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *v27 = 0u;
  expert_log(*a1, 1uLL, "decode context allocated on %s", v22, v23, v24, v25, v26, v28);
  v39 = *a1;
  v40 = chip_select_decode(a2);
  v121 = v40;
  if (!v40)
  {
    v87 = *a1;
    v86 = 82;
    expert_log(v87, 0, "chip environment not booted: %s: %d", v41, v42, v43, v44, v45, a2[1]);
    goto LABEL_46;
  }

  if (v9)
  {
    v46 = *(v9 + 40);
    if (v46)
    {
      v47 = v46(a1, v40, a1[2]);
      if (v47)
      {
        v121 = v47;
        *v27 = v47;
      }
    }
  }

  v48 = _type_get_alloc_preference(&_image4_type_odometer);
  if (v48 <= 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = v48;
  }

  if (v49 == 1)
  {
    goto LABEL_27;
  }

  if (v49 != 2)
  {
LABEL_50:
    __panic_npx("panic: unreachable case: %s = 0x%llx", v13, v14, v15, v16, v17, v18, v19, "_t_preference");
  }

  v50 = _expert_alloc_type(v8, &_image4_type_odometer);
  if (v50)
  {
    v56 = v50;
    v119 = v50;
    v57 = "heap";
    goto LABEL_31;
  }

LABEL_27:
  v58 = type_get_size(&_image4_type_odometer);
  v66 = MEMORY[0x2A1C7C4A8](v58, v59, v60, v61, v62, v63, v64, v65);
  v56 = &v118 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v66 >= 0x3D1)
  {
    v67 = v66 - 976;
  }

  else
  {
    v67 = 0;
  }

  memset(v56 + 976, 170, v67);
  bzero(v56, 0x3D0uLL);
  v57 = "stack";
LABEL_31:
  expert_log(*a1, 1uLL, "odometer allocated on %s", v51, v52, v53, v54, v55, v57);
  odometer_init(v56, *a1, a1, a2);
  v69 = v68;
  v122 = v68;
  v77 = odometer_prepare(v68, v70, v71, v72, v73, v74, v75, v76);
  if (v77)
  {
    v85 = v77;
    expert_log(*a1, 0, "failed to prepare anti-replay: %d", v80, v81, v82, v83, v84, v77);
    v86 = v85;
    goto LABEL_46;
  }

  if (v9 && *(v9 + 32))
  {
    expert_log(*a1, 2uLL, "calling out to manifest prepare function", v80, v81, v82, v83, v84, v118);
    (*(v9 + 32))(a1, v69, a1[2]);
  }

  *(v27 + 5) = v120;
  v88 = *a1;
  if (*a5 != _manifest_validate_property && *a5 != _manifest_audit_property)
  {
    __panic_npx("panic: unreachable", v78, v79, v80, v81, v82, v83, v84, v118);
  }

  chip_get_name(a2);
  v94 = a2[14];
  if (v94)
  {
    v95 = *v94;
  }

  v117 = a2[2];
  expert_log(v88, 1uLL, "performing trust evaluation: type = %s %s, chip = %s, chip type = 0x%llx, chip expert = %s, payload = %s", v89, v90, v91, v92, v93, v11);
  if ((v123)(a1, v120, v27))
  {
    v101 = v124;
    expert_log(*a1, 0, "trust evaluation failed: %d", v96, v97, v98, v99, v100, v124);
LABEL_45:
    v86 = v101;
    goto LABEL_46;
  }

  v101 = odometer_enforce(v122);
  v107 = *a1;
  if (v101)
  {
    expert_log(v107, 0, "manifest replay denied: %d", v102, v103, v104, v105, v106, v101);
    goto LABEL_45;
  }

  expert_log(v107, 2uLL, "trust evaluation succeeded; manifest is live", v102, v103, v104, v105, v106, v118);
  v86 = 0;
LABEL_46:
  _expert_dealloc_type(v8, &_image4_type_decode_context, &v118);
  _expert_dealloc_type(v8, &_image4_type_odometer, &v119);
  if (v86 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v108, v109, v110, v111, v112, v113, v114, v86);
  }

  v115 = *MEMORY[0x29EDCA608];
  return v86;
}

uint64_t _manifest_evaluate_trust_payload(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 528))
  {
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v24);
  }

  v16 = Img4DecodePerformTrustEvaluatationWithCallbacks(**(a2[2] + 8), a1 + 72, a2[4], a2[5], a3);
  v17 = *a1;
  if (v16)
  {
    expert_log(v17, 0, "Img4DecodePerformTrustEvaluationWithCallbacks: %d", v11, v12, v13, v14, v15, v16);
  }

  else
  {
    expert_log(v17, 2uLL, "trust evaluation succeeded for payload: %s", v11, v12, v13, v14, v15, *(a2[2] + 8) + 4);
  }

  _manifest_record_trust_evaluation_error(a1, v16, a3, v18, v19, v20, v21, v22);
  return v16;
}

uint64_t _manifest_evaluate_trust_manifest(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 528))
  {
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v25);
  }

  v16 = Img4DecodePerformManifestTrustEvaluationWithCallbacks(a1 + 72, a2[4], a2[5], a3);
  if (v16)
  {
    expert_log(*a1, 0, "Img4DecodePerformManifestTrustEvaluationWithCallbacks: %d", v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v22 = a2[2];
    if (v22)
    {
      v25 = *(v22 + 8) + 4;
      v23 = "manifest trust evaluation succeeded: %s";
    }

    else
    {
      v23 = "manifest trust evaluation succeeded";
    }

    expert_log(*a1, 2uLL, v23, v11, v12, v13, v14, v15, v25);
  }

  _manifest_record_trust_evaluation_error(a1, v16, a3, v17, v18, v19, v20, v21);
  return v16;
}

uint64_t manifest_init(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (!a2)
  {
    a2 = generic_expert_specialist();
  }

  *a1 = a2;
  bzero((a1 + 8), 0x218uLL);
  buff_xfer((a1 + 24), a3);
  *(a1 + 64) = 1;
  return a1;
}

uint64_t manifest_init_borrow(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    a2 = generic_expert_specialist();
  }

  *a1 = a2;
  bzero((a1 + 8), 0x210uLL);
  *(a1 + 536) = a3;
  buff_borrow((a1 + 24), a3);
  *(a1 + 64) = 1;
  return a1;
}

uint64_t manifest_init_wrap(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    a2 = generic_expert_specialist();
  }

  *a1 = a2;
  bzero((a1 + 8), 0x218uLL);
  buff_init_alias((a1 + 24), a3);
  *(a1 + 64) = 1;
  return a1;
}

uint64_t manifest_set_callbacks(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = a3;
  *(result + 16) = a2;
  return result;
}

unint64_t manifest_parse(uint64_t a1)
{
  v2 = a1 + 64;
  if (*(a1 + 64))
  {
    v3 = (a1 + 24);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  result = *v3;
  v5 = v3[1];
  if ((v3 + 5) > v2 || result > *v3 + v5)
  {
    __break(0x5519u);
  }

  else
  {
    Img4DecodeInitAsManifest(result, v5, a1 + 72);
    if (v7)
    {
      v8 = v7;
      v9 = posixdr(v7);
      expert_log(*a1, 0, "Img4DecodeInitAsManifest: %d", v10, v11, v12, v13, v14, v8);
      if (v9 >= 0x6B)
      {
        __panic_npx("panic: error not set to valid posix code: %d", v15, v16, v17, v18, v19, v20, v21, v9);
      }
    }

    else
    {
      v9 = 0;
      *(a1 + 528) = 1;
    }

    return v9;
  }

  return result;
}

uint64_t manifest_get_restore_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 528))
  {
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v18);
  }

  v8 = a1 + 72;
  v19 = 0;
  v9 = Img4DecodeRestoreInfoExists(a1 + 72, &v19);
  if (v9)
  {
    __panic_npx("panic: Img4DecodeRestoreInfoExists: %d", v10, v11, v12, v13, v14, v15, v16, v9);
  }

  if (v19)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void *manifest_get_bytes(uint64_t a1, void *a2)
{
  if (*(a1 + 528))
  {
    v3 = a1 + 72;
  }

  else
  {
    v3 = 0;
  }

  v14 = 0;
  v13 = 0;
  Manifest = Img4DecodeGetManifest(v3, &v13, &v14);
  if (Manifest)
  {
    __panic_npx("panic: Img4DecodeGetManifest: %d", v5, v6, v7, v8, v9, v10, v11, Manifest);
  }

  return buff_init_wrap(a2, v13, v14);
}

uint64_t manifest_impose(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = _manifest_validate_property;
  return _manifest_impose_internal(a1, a2, a3, a4, v5);
}

uint64_t _manifest_validate_property(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 7)
  {
    __panic_npx("panic: bogus property container input: actual = %u, expected < %u", a2, a3, a4, a5, a6, a7, a8, a3);
  }

  if (a3 == 1)
  {

    return _manifest_validate_property_object(a1, a2, a3, a4);
  }

  else
  {
    if (a3)
    {
      __panic_npx("panic: unreachable", a2, a3, a4, a5, a6, a7, a8, v9);
    }

    return _manifest_validate_property_manifest(a1, a2, 0, a4);
  }
}

uint64_t manifest_property_callback(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1[1];
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  if (v10)
  {
    fourcc_init(&v35, a3);
    v21 = a4[2];
    switch(v21)
    {
      case 4:
        if (!*(v10 + 16))
        {
          v23 = *a1;
          v24 = "no data property callback";
          goto LABEL_21;
        }

        PropertyData = Img4DecodeGetPropertyData(a4, a3, &v31, &v32);
        v23 = *a1;
        if (!PropertyData)
        {
          expert_log(v23, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v length = 0x%x", v16, v17, v18, v19, v20, &v35 + 4);
          return (*(v10 + 16))(a1, &v35, a2, v31, v32, a1[2]);
        }

        v30 = &v35 + 4;
        v24 = "Img4DecodeGetPropertyData: %s: %d";
        break;
      case 2:
        if (!*(v10 + 8))
        {
          v23 = *a1;
          v24 = "no integer property callback";
          goto LABEL_21;
        }

        PropertyInteger64 = Img4DecodeGetPropertyInteger64(a4, a3, &v33, v16, v17, v18, v19, v20);
        v23 = *a1;
        if (!PropertyInteger64)
        {
          expert_log(v23, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v = 0x%llx", v16, v17, v18, v19, v20, &v35 + 4);
          return (*(v10 + 8))(a1, &v35, a2, v33, a1[2]);
        }

        v30 = &v35 + 4;
        v24 = "Img4DecodeGetPropertyInteger64: %s: %d";
        break;
      case 1:
        if (*v10)
        {
          PropertyBoolean = Img4DecodeGetPropertyBoolean(a4, a3, &v34);
          v23 = *a1;
          if (!PropertyBoolean)
          {
            expert_log(v23, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v = 0x%x", v16, v17, v18, v19, v20, &v35 + 4);
            return (*v10)(a1, &v35, a2, v34, a1[2]);
          }

          v30 = &v35 + 4;
          v24 = "Img4DecodeGetPropertyBoolean: %s: %d";
          break;
        }

        v23 = *a1;
        v24 = "no BOOLean property callback";
LABEL_21:
        v29 = 2;
        return expert_log(v23, v29, v24, v16, v17, v18, v19, v20, v30);
      default:
        __panic_npx("panic: unreachable case: %s = 0x%llx", v14, v15, v16, v17, v18, v19, v20, "i4p->type");
    }

    v29 = 0;
    return expert_log(v23, v29, v24, v16, v17, v18, v19, v20, v30);
  }

  v25 = *a1;

  return expert_log(v25, 2uLL, "no callbacks present", a4, a5, a6, a7, a8, a9);
}

uint64_t manifest_post_property_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 8);
  v11 = *a5;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  if (v10)
  {
    v13 = a4;
    v14 = a3;
    if (!a3)
    {
      if (!*(a1 + 528))
      {
        __panic_npx("panic: optional not set", a2, 0, a4, a5, a6, a7, a8, v41);
      }

      v14 = a1 + 72;
    }

    QueryForContainer = Img4DecodeGetQueryForContainer(a2, a2, a3, a4, a5, a6, a7, a8);
    if (!QueryForContainer)
    {
      __panic_npx("panic: unsupported container for posting: %u", v17, v18, v19, v20, v21, v22, v23, a2);
    }

    v24 = QueryForContainer;
    if (Img4DecodeContainerExists(QueryForContainer, v14, &v46))
    {
      v32 = *a1;
      v42 = *v24;
      v33 = "failed to check for %s: %d";
LABEL_8:
      v34 = v32;
LABEL_21:
      v39 = 0;
      return expert_log(v34, v39, v33, v27, v28, v29, v30, v31, v42);
    }

    if ((v46 & 1) == 0)
    {
      v34 = *a1;
      v42 = *v24;
      v33 = "%s does not exist";
      goto LABEL_21;
    }

    v37 = v24 + 6;
    switch(v13)
    {
      case 4:
        if (v24 < v37)
        {
          PropertyData = Img4DecodeQueryPropertyData(v24, v14, v11, &v43, &v44);
          if (!PropertyData)
          {
            if (*(v10 + 16))
            {
              expert_log(*a1, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v length = %lu", v27, v28, v29, v30, v31, (a5 + 1));
              (*(v10 + 16))(a1, a5, a2, v43, v44, *(a1 + 16));
            }

            goto LABEL_34;
          }

          goto LABEL_29;
        }

        break;
      case 2:
        if (v24 < v37)
        {
          PropertyData = Img4DecodeQueryPropertyInteger64(v24, v14, v11, &v45);
          if (!PropertyData)
          {
            if (*(v10 + 8))
            {
              expert_log(*a1, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v = 0x%llx", v27, v28, v29, v30, v31, (a5 + 1));
              (*(v10 + 8))(a1, a5, a2, v45, *(a1 + 16));
            }

            goto LABEL_34;
          }

LABEL_29:
          v32 = *a1;
          v40 = *v24;
          if (PropertyData != 1)
          {
            v42 = *v24;
            v33 = "failed to decode property: container = %s, type = %x, p = %s: %d";
            goto LABEL_8;
          }

          v42 = *v24;
          v33 = "property does not exist: container = %s, type = %x, p = %s";
          v34 = *a1;
LABEL_35:
          v39 = 2;
          return expert_log(v34, v39, v33, v27, v28, v29, v30, v31, v42);
        }

        break;
      case 1:
        if (v24 < v37)
        {
          PropertyData = Img4DecodeQueryPropertyBool(v24, v14, v11, &v46);
          if (!PropertyData)
          {
            if (*v10)
            {
              expert_log(*a1, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v = 0x%x", v27, v28, v29, v30, v31, (a5 + 1));
              (*v10)(a1, a5, a2, v46, *(a1 + 16));
            }

LABEL_34:
            v34 = *a1;
            v42 = *v24;
            v33 = "posted property: container = %s, type = %x, p = %s";
            goto LABEL_35;
          }

          goto LABEL_29;
        }

        break;
      default:
        goto LABEL_39;
    }

    __break(0x5519u);
LABEL_39:
    __panic_npx("panic: unreachable case: %s = 0x%llx", v25, v26, v27, v28, v29, v30, v31, "asn1type");
  }

  v35 = *a1;

  return expert_log(v35, 2uLL, "no callbacks present", a4, a5, a6, a7, a8, a9);
}

uint64_t manifest_audit(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = _manifest_audit_property;
  return _manifest_impose_internal(a1, a2, a3, 0, v4);
}

uint64_t _manifest_audit_property(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 7)
  {
    __panic_npx("panic: bogus property container input: actual = %u, expected < %u", a2, a3, a4, a5, a6, a7, a8, a3);
  }

  v8 = **(a4 + 40);
  if (a3 == 1)
  {
    v9 = _manifest_validate_property_object(a1, a2, a3, a4);
    if (!v9)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (!a3)
  {
    v9 = _manifest_validate_property_manifest(a1, a2, 0, a4);
    if (v9)
    {
LABEL_5:
      expert_log(*v8, 1uLL, "auditing manifest; ignoring validation result: %d", v10, v11, v12, v13, v14, v9);
    }
  }

  return 0;
}

uint64_t manifest_measure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  memset(v48, 0, sizeof(v48));
  if (*(a1 + 528))
  {
    v6 = a1 + 72;
  }

  else
  {
    v6 = 0;
  }

  v47 = 0;
  alloc_preference = _type_get_alloc_preference(&_image4_type_decode_context);
  if (alloc_preference <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = alloc_preference;
  }

  if (v15 == 1)
  {
    goto LABEL_11;
  }

  if (v15 != 2)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", v8, v9, v10, v11, v12, v13, v14, "_t_preference");
  }

  v16 = _expert_alloc_type(v5, &_image4_type_decode_context);
  if (!v16)
  {
LABEL_11:
    size = type_get_size(&_image4_type_decode_context);
    v26 = MEMORY[0x2A1C7C4A8](size, v19, v20, v21, v22, v23, v24, v25);
    v17 = (&v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v26 >= 0x31)
    {
      v27 = v26 - 48;
    }

    else
    {
      v27 = 0;
    }

    memset(v17 + 3, 170, v27);
    *v17 = 0u;
    v17[1] = 0u;
    v17[2] = 0u;
  }

  else
  {
    v17 = v16;
    v47 = v16;
  }

  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  v28 = chip_select_decode(a2);
  if (!v28)
  {
    __panic_npx("panic: no decode implementation available for chip: %s", v29, v30, v31, v32, v33, v34, v35, *(a2 + 8));
  }

  v36 = v28;
  v37 = v28[4];
  v38 = *v37;
  if (*v37 > 0x40)
  {
    __break(0x5519u);
LABEL_21:
    __panic_npx("panic: Img4DecodeCopyManifestDigest: %d", v29, v30, v36, v32, v33, v34, v35, v28);
  }

  LODWORD(v28) = Img4DecodeCopyManifestDigest(v6, v48, *v37, v28);
  if (v28)
  {
    goto LABEL_21;
  }

  _expert_dealloc_type(v5, &_image4_type_decode_context, &v47);
  result = digest_init(a3, v48, v38, v39, v40, v41, v42, v43);
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

void *manifest_destroy(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if (*result)
  {
    if (!*(v8 + 64))
    {
      __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v12);
    }

    v9 = result;
    v13 = (v8 + 24);
    v10 = *(v8 + 536);
    if (v10)
    {
      buff_return(v10, &v13);
    }

    v11 = v8 + 544;
    if (!*(v8 + 584))
    {
      v11 = 0;
    }

    v12 = v11;
    buff_destroy(&v12);
    *(v8 + 64) = 0;
    result = buff_destroy(&v13);
    *v9 = 0;
  }

  return result;
}

uint64_t *_manifest_record_trust_evaluation_error(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    v11 = *(a3 + 40);
    if (*(v11 + 64) == -1)
    {
      expert_log(*result, 1uLL, "certificate trust evaluation failed", a4, a5, a6, a7, a8, v12);
      *(v11 + 64) = 80;
    }

    v13 = *(a3 + 32);
    return expert_log(*v10, 0, "trust evaluation: dr = %d, ct = 0x%x, error = %d", a4, a5, a6, a7, a8, a2);
  }

  return result;
}

uint64_t _manifest_validate_property_manifest(unsigned int a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = *(v6 + 48);
  v8 = *v6;
  v9 = *(v6 + 8);
  v46 = 0;
  v45 = 0;
  v10 = fourcc_init(&v45, a1);
  result = expert_log(*v8, 1uLL, "manifest property: %s", v11, v12, v13, v14, v15, v10 + 4);
  if (v10 >= (v10 + 12))
  {
    goto LABEL_18;
  }

  v23 = v8 + 74;
  result = property_find_from_fourcc(v10, 0, v17, v18, v19, v20, v21, v22);
  if (!result)
  {
    if (v8 >= v23)
    {
      goto LABEL_18;
    }

    _manifest_audit_pseudo_callback(v8, v10, a3);
    v40 = "unrecognized manifest property: %s";
LABEL_14:
    result = expert_log(*v8, 1uLL, v40, v30, v31, v32, v33, v34, v10 + 4);
    goto LABEL_15;
  }

  v29 = result;
  result = odometer_update(v7, result, a2, v24, v25, v26, v27, v28);
  if (!result)
  {
    if (v8 >= v23)
    {
      goto LABEL_18;
    }

    v41 = v8[1];
    if (v41)
    {
      v42 = *(v41 + 48);
      if (v42)
      {
        v42(v8, v29, 2, 0, 0, v8[2]);
      }
    }

    v40 = "anti-replay property consumed by odometer: %s";
    goto LABEL_14;
  }

  if (v8 >= v23)
  {
LABEL_18:
    __break(0x5519u);
    return result;
  }

  result = _manifest_impose_property(v8, v29, v9, a2, v6);
  if (result)
  {
    *(v6 + 64) = result;
    expert_log(*v8, 0, "property failed to impose on environment: %s: %d", v35, v36, v37, v38, v39, v10 + 4);
    return 3;
  }

LABEL_15:
  if (v8 >= v23)
  {
    goto LABEL_18;
  }

  manifest_property_callback(v8, a3, a1, a2, v36, v37, v38, v39, v43);
  return 0;
}

uint64_t _manifest_validate_property_object(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *v7;
  v9 = *(v7 + 8);
  v36 = 0;
  v35 = 0;
  v10 = fourcc_init(&v35, a1);
  result = expert_log(*v8, 1uLL, "object property: %s", v11, v12, v13, v14, v15, v10 + 4);
  if (v10 >= (v10 + 12))
  {
    goto LABEL_11;
  }

  v23 = v8 + 74;
  result = property_find_from_fourcc(v10, 1, v17, v18, v19, v20, v21, v22);
  if (!result)
  {
    if (v8 < v23)
    {
      _manifest_audit_pseudo_callback(v8, v10, a3);
      result = expert_log(*v8, 1uLL, "unrecognized object property: %s", v29, v30, v31, v32, v33, v10 + 4);
      goto LABEL_8;
    }

LABEL_11:
    __break(0x5519u);
    return result;
  }

  if (v8 >= v23)
  {
    goto LABEL_11;
  }

  result = _manifest_impose_property(v8, result, v9, a2, v7);
  if (result)
  {
    *(v7 + 64) = result;
    expert_log(*v8, 0, "object property failed to impose on environment: %d", v24, v25, v26, v27, v28, result);
    return 3;
  }

LABEL_8:
  if (v8 >= v23)
  {
    goto LABEL_11;
  }

  manifest_property_callback(v8, a3, a1, a2, v25, v26, v27, v28, v34);
  return 0;
}

uint64_t _manifest_audit_pseudo_callback(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *(result + 8);
  v6[0] = a2 + 4;
  v6[1] = 0;
  v4 = *a2;
  v6[2] = 34;
  v6[3] = v4;
  v7 = *(a2 + 2);
  v8 = &_property_type_BOOL;
  v9 = &_property_constraint_na;
  v10 = a3;
  v11 = xmmword_298EF8590;
  v13 = 0;
  v14 = 0;
  v12 = 4;
  if (v3)
  {
    v5 = *(v3 + 48);
    if (v5)
    {
      return v5(result, v6, 3, 0, 0, *(result + 16));
    }
  }

  return result;
}

uint64_t _manifest_impose_property(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v86 = *MEMORY[0x29EDCA608];
  v10 = *a1;
  digest = chip_get_digest(a3);
  v85[0] = xmmword_298EF85A0;
  memset(&v85[1], 170, 88);
  __n_4[0] = xmmword_298EF85A0;
  memset(&__n_4[1], 170, 88);
  v12 = *(a2 + 24);
  __n = 0;
  *v82 = 0;
  constraint = chip_get_constraint(a3, a2, *(a5 + 24));
  if (constraint != a2)
  {
    expert_log(*a1, 1uLL, "chip has custom constraint for property: %s", v15, v16, v17, v18, v19, a2 + 28);
  }

  v21 = *(constraint + 56);
  if (v21)
  {
    if (v21 == 6)
    {
      v22 = 0;
LABEL_55:
      v65 = 1;
LABEL_56:
      v73 = a1[1];
      if (v73)
      {
        v74 = *(v73 + 48);
        if (v74)
        {
          v74(a1, constraint, v65, v85, __n_4, a1[2]);
        }
      }

      if (v22 >= 0x6B)
      {
        __panic_npx("panic: error not set to valid posix code: %d", v13, v65, v15, v16, v17, v18, v19, v22);
      }

      goto LABEL_60;
    }

    if (v21 != 1)
    {
      v77 = "p->p_container";
      goto LABEL_63;
    }

    v22 = 85;
    v23 = "object";
  }

  else
  {
    v22 = 13;
    v23 = "manifest";
  }

  if (property_imposable(constraint, a3))
  {
    v24 = **(constraint + 40);
    if (v24 <= 1)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          PropertyInteger = Img4DecodeGetPropertyInteger(a4, v12, v85, v15, v16, v17, v18, v19);
          if (PropertyInteger)
          {
            v36 = PropertyInteger;
            v22 = posixdr(PropertyInteger);
            expert_log(*a1, 0, "Img4DecodeGetPropertyInteger: %d", v37, v38, v39, v40, v41, v36);
            goto LABEL_32;
          }

          property_uint32 = expert_query_property_uint32(v10, a3, constraint, __n_4);
          if (!property_uint32)
          {
            if (!property_constrain_uint32(constraint, v10, v85, __n_4, v16, v17, v18, v19))
            {
              goto LABEL_36;
            }

            goto LABEL_51;
          }

LABEL_49:
          v22 = property_uint32;
          goto LABEL_52;
        }

        goto LABEL_64;
      }

      PropertyBoolean = Img4DecodeGetPropertyBoolean(a4, v12, v85);
      if (PropertyBoolean)
      {
        v58 = PropertyBoolean;
        v22 = posixdr(PropertyBoolean);
        v32 = *a1;
        v79 = v58;
        v56 = "Img4DecodeGetPropertyBoolean: %d";
        goto LABEL_31;
      }

      property_uint32 = expert_query_property_BOOL(v10, a3, constraint, __n_4);
      if (property_uint32)
      {
        goto LABEL_49;
      }

      if (property_constrain_BOOL(constraint, v10, v85, __n_4, v16, v17, v18, v19))
      {
        goto LABEL_51;
      }
    }

    else
    {
      switch(v24)
      {
        case 2:
          PropertyInteger64 = Img4DecodeGetPropertyInteger64(a4, v12, v85, v15, v16, v17, v18, v19);
          if (PropertyInteger64)
          {
            v43 = PropertyInteger64;
            v22 = posixdr(PropertyInteger64);
            expert_log(*a1, 0, "Img4DecodeGetPropertyInteger64: %d", v44, v45, v46, v47, v48, v43);
            goto LABEL_32;
          }

          property_uint32 = expert_query_property_uint64(v10, a3, constraint, __n_4);
          if (property_uint32)
          {
            goto LABEL_49;
          }

          if (property_constrain_uint64(constraint, v10, v85, __n_4, v16, v17, v18, v19))
          {
            goto LABEL_51;
          }

          break;
        case 3:
          PropertyData = Img4DecodeGetPropertyData(a4, v12, v82, &__n);
          if (PropertyData)
          {
            v55 = PropertyData;
            v22 = posixdr(PropertyData);
            v32 = *a1;
            v79 = v55;
            goto LABEL_28;
          }

          digest_init(v85, *v82, __n, v50, v51, v52, v53, v54);
          if (property_equal(constraint, digest))
          {
            expert_log(*a1, 1uLL, "imposing object digest", v66, v67, v68, v69, v70, v78);
            payload_measure(*(a5 + 16), a3, __n_4);
          }

          else
          {
            property_uint32 = expert_query_property_digest(v10, a3, constraint, __n_4);
            if (property_uint32)
            {
              goto LABEL_49;
            }
          }

          if (property_constrain_digest(constraint, v10, v85, __n_4, v16, v17, v18, v19))
          {
            goto LABEL_51;
          }

          break;
        case 4:
          v25 = Img4DecodeGetPropertyData(a4, v12, v82, &__n);
          if (v25)
          {
            v26 = v25;
            v22 = posixdr(v25);
            v32 = *a1;
            v79 = v26;
LABEL_28:
            v56 = "Img4DecodeGetPropertyData: %d";
LABEL_31:
            expert_log(v32, 0, v56, v27, v28, v29, v30, v31, v79);
LABEL_32:
            if (!v22)
            {
              goto LABEL_55;
            }

LABEL_52:
            v71 = a1[1];
            if (v71)
            {
              v72 = *(v71 + 24);
              if (v72)
              {
                v72(a1, a3, constraint, a1[2]);
              }
            }

            goto LABEL_55;
          }

          version_init(v85, *v82, __n);
          property_uint32 = expert_query_property_version(v10, a3, constraint, __n_4);
          if (!property_uint32)
          {
            if (!property_constrain_version(constraint, v10, v85, __n_4, v16, v17, v18, v19))
            {
              break;
            }

LABEL_51:
            v81 = *(*(constraint + 40) + 8);
            expert_log(*a1, 0, "%s constraint violated: property = %s, type = %s: %d", v60, v61, v62, v63, v64, v23);
            goto LABEL_52;
          }

          goto LABEL_49;
        default:
LABEL_64:
          v77 = "p->p_type->pt_switchable";
LABEL_63:
          __panic_npx("panic: unreachable case: %s = 0x%llx", v13, v14, v15, v16, v17, v18, v19, v77);
      }
    }

LABEL_36:
    v80 = *(*(constraint + 40) + 8);
    expert_log(*a1, 2uLL, "%s constraint satisfied: property = %s, type = %s", v60, v61, v62, v63, v64, v23);
    v22 = 0;
    v65 = 0;
    goto LABEL_56;
  }

  expert_log(*a1, 1uLL, "%s property not imposable on chip: %s", v15, v16, v17, v18, v19, v23);
  v33 = a1[1];
  if (v33)
  {
    v34 = *(v33 + 48);
    if (v34)
    {
      v34(a1, constraint, 3, 0, 0, a1[2]);
    }
  }

  v22 = 0;
LABEL_60:
  v75 = *MEMORY[0x29EDCA608];
  return v22;
}

void *img4_firmware_new(char *a1, __n128 *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  expert = img4_runtime_get_expert(a1);
  v11 = _expert_alloc_type(expert, &_image4_type_firmware);
  v12 = v11;
  if (v11)
  {
    img4_firmware_init(v11, a1, a2, a3, a4, a5);
    v12[2] = &_image4_type_firmware;
  }

  return v12;
}

__n128 img4_firmware_init(void *a1, char *a2, __n128 *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  expert = img4_runtime_get_expert(a2);
  v19 = 0;
  v18 = 0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  bzero(a1, 0x508uLL);
  *a1 = a6;
  a1[1] = a2;
  a1[2] = 0;
  a1[6] = 0;
  a1[78] = 0;
  img4_buff_steal(a1 + 153, a5);
  inited = buff_init_wrap(v16, *(a5 + 8), *(a5 + 16));
  fourcc_init(&v18, a4);
  a1[6] = payload_init((a1 + 7), expert, &v18, &inited);
  v13 = a3[1].n128_u64[0];
  result = *a3;
  *(a1 + 3) = *a3;
  a1[5] = v13;
  return result;
}

void img4_firmware_init_from_buff(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0x507)
  {
    __panic_npx("panic: object overflows buffer: object = firmware, length = %lu, required = %lu", a2, a3, a4, a5, a6, a7, a8, a2);
  }
}

void img4_firmware_init_sentinel(void *a1, uint64_t a2, uint64_t a3)
{
  bzero(a1, 0x508uLL);
  *a1 = a3;
  a1[1] = a2;
  a1[2] = 0;
  a1[6] = 0;
  a1[78] = 0;
}

uint64_t img4_firmware_attach_manifest(uint64_t a1, uint64_t a2)
{
  expert = img4_runtime_get_expert(*(a1 + 8));
  if (!expert)
  {
    expert = generic_expert_specialist();
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  img4_buff_steal((a1 + 1256), a2);
  inited = buff_init_wrap(v7, *(a2 + 8), *(a2 + 16));
  result = manifest_init(a1 + 632, expert, &inited);
  *(a1 + 624) = result;
  return result;
}

uint64_t img4_firmware_select_chip(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = *MEMORY[0x29EDCA608];
  expert = img4_runtime_get_expert(*(a1 + 8));
  if (!expert)
  {
    expert = generic_expert_specialist();
  }

  v62 = 0;
  memset(v61, 0, sizeof(v61));
  if ((*a1 & 4) == 0)
  {
    v14 = "cannot select chip with first-stage boots";
LABEL_5:
    v15 = expert;
    v16 = 0;
LABEL_14:
    expert_log(v15, v16, v14, v8, v9, v10, v11, v12, v59);
LABEL_15:
    v22 = 0;
LABEL_16:
    v23 = *MEMORY[0x29EDCA608];
    return v22;
  }

  v17 = *(a1 + 624);
  if (v17)
  {
    v18 = v17 + 64;
    if (*(v17 + 64))
    {
      v19 = (v17 + 24);
      goto LABEL_12;
    }

LABEL_36:
    __panic_npx("panic: optional not set", v6, v7, v8, v9, v10, v11, v12, v59);
  }

  v20 = *(a1 + 48);
  if (!v20)
  {
    v14 = "no manifest with which to select chip";
    goto LABEL_5;
  }

  v18 = v20 + 88;
  if (!*(v20 + 88))
  {
    goto LABEL_36;
  }

  v19 = (v20 + 48);
LABEL_12:
  result = expert_runtime_boot(expert);
  if (result)
  {
    v59 = result;
    v14 = "failed to boot expert for chip selection: %d";
    v15 = expert;
    v16 = 3;
    goto LABEL_14;
  }

  if (v19 < v18 && (v19 + 5) <= v18)
  {
    result = *v19;
    v24 = v19[1];
    if (*v19 <= (*v19 + v24))
    {
      Img4DecodeInitAsManifest(result, v24, v61);
      if (v25)
      {
        v59 = v25;
        v14 = "Img4DecodeInitAsManifest: %d";
        goto LABEL_5;
      }

      if (!a3)
      {
        goto LABEL_15;
      }

      v26 = 0;
      while (1)
      {
        v22 = *(a2 + 8 * v26);
        v60[0] = _img4_firmware_select_chip_callback;
        v60[1] = 0;
        v60[2] = 0;
        name = chip_get_name(v22);
        result = expert_log(expert, 1uLL, "trying chip: %s", v28, v29, v30, v31, v32, name);
        if (*(v22 + 32))
        {
          break;
        }

        if (v22 >= v22 + 264)
        {
          goto LABEL_37;
        }

        v47 = chip_get_name(v22);
        expert_log(expert, 0, "chip has no static decode implementation: %s", v48, v49, v50, v51, v52, v47);
LABEL_32:
        v22 = 0;
        if (++v26 == a3)
        {
          goto LABEL_16;
        }
      }

      v38 = 0;
      v39 = 1;
      while (1)
      {
        v40 = v39;
        v41 = *(*(v22 + 32) + 8 * v38);
        expert_log(expert, 1uLL, "trying i4ct: %u", v33, v34, v35, v36, v37, v38);
        result = Img4DecodePerformManifestTrustEvaluationWithCallbacks(v61, v60, v41, 0);
        if (!result)
        {
          break;
        }

        expert_log(expert, 1uLL, "Img4DecodePerformManifestTrustEvaluationWithCallbacks: %d", v42, v43, v44, v45, v46, result);
        v39 = 0;
        v38 = 1;
        if ((v40 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if (v22 < v22 + 264)
      {
        v53 = chip_get_name(v22);
        expert_log(expert, 2uLL, "manifest matches chip: %s, i4ct: %u", v54, v55, v56, v57, v58, v53);
        goto LABEL_16;
      }
    }
  }

LABEL_37:
  __break(0x5519u);
  return result;
}

uint64_t img4_firmware_execute(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 624);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  result = img4_firmware_evaluate(a1, a2, a3);
  v8 = result;
  if (result || !*(v5 + 88))
  {
    v9 = 0;
  }

  else
  {
    if (v5 >= v5 + 568)
    {
      __break(0x5519u);
      return result;
    }

    v9 = img4_image_init(v17, v5, v6, *a1);
  }

  result = (*(a1 + 32))(a1, v9, v8, *(a1 + 40));
  if (a2[2] == 3 && a2[14] == a2 + 33)
  {
    result = a2[90];
    if (result)
    {
      v19 = a2;
      result = _expert_dealloc_type(result, &_image4_type_custom_chip, &v19);
    }
  }

  if (v8 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v10, v11, v12, v13, v14, v15, v16, v8);
  }

  return result;
}

uint64_t img4_firmware_evaluate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v32[14] = *MEMORY[0x29EDCA608];
  expert = img4_runtime_get_expert(*(a1 + 8));
  if (!expert)
  {
    expert = generic_expert_specialist();
  }

  v31 = 0;
  v32[0] = a1;
  memset(v27, 0, sizeof(v27));
  v29 = 0;
  v30 = 0;
  v28 = _img4_firmware_prepare;
  v32[1] = a2;
  memset(&v32[2], 0, 88);
  v32[13] = 0xAAAAAAAAFFFFFFFFLL;
  if (!expert)
  {
    __panic_npx("panic: failed to resolve expert for runtime", v6, v7, v8, v9, v10, v11, v12, v26);
  }

  if (!*(a1 + 48) || (*a1 & 2) != 0 || (v14 = payload_parse_relax(), !v14))
  {
    inited = *(a1 + 624);
    if (inited)
    {
      v16 = 1;
    }

    else
    {
      v17 = *(a1 + 48);
      if (!*(v17 + 88))
      {
        __panic_npx("panic: optional not set", v6, v7, v8, v9, v10, v11, v12, v26);
      }

      inited = manifest_init_borrow(a1 + 632, expert, (v17 + 48));
      v31 = inited;
      v16 = inited == 0;
    }

    manifest_set_callbacks(inited, v32, v27);
    if (a3)
    {
      digest_init_from_img4_nonce(&v32[3], a3, v18, v19, v20, v21, v22, v23);
      v32[2] = &v32[3];
    }

    if (manifest_parse(inited))
    {
      v14 = 79;
      if (v16)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v14 = manifest_impose(inited, a2, *(a1 + 48), 0);
    if (!v16)
    {
LABEL_15:
      manifest_destroy(&v31, v6, v7, v8, v9, v10, v11, v12);
    }
  }

LABEL_16:
  if (v14 == 85)
  {
    v14 = 8;
  }

  else if (v14 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v6, v7, v8, v9, v10, v11, v12, v14);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v14;
}

void _img4_firmware_prepare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  expert = img4_runtime_get_expert(*(*a3 + 8));
  if (!expert)
  {
    expert = generic_expert_specialist();
  }

  v12 = *(a3 + 8);
  v13 = *v5;
  if ((*v5 & 4) != 0)
  {
    if (v5 < v5 + 161)
    {
      v20 = v5[1];
      v21 = img4_runtime_get_expert(v20);
      if (!v21)
      {
        v21 = generic_expert_specialist();
      }

      LOBYTE(v67[0]) = 0;
      if (img4_runtime_check_custom_BOOL(v20))
      {
        expert_log(v21, 2uLL, "querying custom runtime for mix-n-match policy", v22, v23, v24, v25, v26, v64);
        identifier_BOOL = img4_runtime_get_identifier_BOOL(v20);
        if (identifier_BOOL)
        {
          expert_log(v21, 0, "failed to query mix-n-match identifier: %d", v28, v29, v30, v31, v32, identifier_BOOL);
        }

        else
        {
          expert_log(v21, 2uLL, "preparing mix-n-match policy: 0x%x", v28, v29, v30, v31, v32, LOBYTE(v67[0]));
          odometer_prepare_mixn_match(a2, v67[0]);
        }
      }

      else
      {
        expert_log(v21, 2uLL, "stock runtime; not querying for mix-n-match policy", v22, v23, v24, v25, v26, v64);
      }

      v33 = v5[1];
      v34 = img4_runtime_get_expert(v33);
      if (!v34)
      {
        v34 = generic_expert_specialist();
      }

      memset(v70, 0, sizeof(v70));
      memset(v69, 0, sizeof(v69));
      v68 = 0;
      memset(v67, 0, sizeof(v67));
      if (img4_runtime_check_custom_digest(v33))
      {
        expert_log(v34, 2uLL, "querying custom runtime for boot manifest hash", v35, v36, v37, v38, v39, v65);
        identifier_digest = img4_runtime_get_identifier_digest(v33);
        if (identifier_digest)
        {
          expert_log(v34, 0, "failed to query manifest hash identifier: %d", v42, v43, v44, v45, v46, identifier_digest);
        }

        else
        {
          digest_init_from_img4_dgst(v69, v70, v41, v42, v43, v44, v45, v46);
          digest_print_cstr(v69, v67, v52, v53, v54, v55, v56, v57);
          expert_log(v34, 2uLL, "preparing custom boot manifest hash: %s", v58, v59, v60, v61, v62, v67);
          odometer_prepare_notarized_manifest_hash(a2, v69);
        }
      }

      else
      {
        expert_log(v34, 2uLL, "stock runtime; not querying for boot manifest hash", v35, v36, v37, v38, v39, v65);
      }

      expert_log(expert, 2uLL, "forcing sideload anti-replay policy due to subsequent stage firmware evaluation", v47, v48, v49, v50, v51, v66);
      odometer_prepare_sideload_mixn_match(a2);
      goto LABEL_30;
    }

    goto LABEL_36;
  }

  if (*(a3 + 16))
  {
    expert_log(expert, 2uLL, "prepared custom nonce hash", v6, v7, v8, v9, v10, v64);
    odometer_prepare_nonce_hash(a2, *(a3 + 16));
    v13 = *v5;
  }

  if ((v13 & 8) != 0)
  {
    expert_log(expert, 2uLL, "forcing sideload anti-replay policy", v6, v7, v8, v9, v10, v64);
    odometer_prepare_sideload_mixn_match(a2);
  }

  if (v12[3] != 1 || v12[2] != 1)
  {
    goto LABEL_30;
  }

  if (v12 >= v12 + 33)
  {
LABEL_36:
    __break(0x5519u);
    return;
  }

  name = chip_get_name(v12);
  expert_log(expert, 1uLL, "%s: simulating chip boot for reduced-security virtual chip policy", v15, v16, v17, v18, v19, name);
  odometer_prepare_mixn_match(a2, 1);
LABEL_30:
  if (!v5[6] && (*v5 & 0x20) == 0)
  {
    expert_log(expert, 2uLL, "manifest-only evaluation; permitting replay", v6, v7, v8, v9, v10, v64);
    odometer_prepare_mixn_match(a2, 1);
  }

  if (!v12[25])
  {
    odometer_prepare_mix_n_match_god_mode(a2);
  }

  *(a3 + 104) = 0;
  v63 = *MEMORY[0x29EDCA608];
}

uint64_t *img4_firmware_destroy(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = v1[1];
    expert = img4_runtime_get_expert(v3);
    v12 = v1 + 157;
    v13 = v1 + 153;
    manifest_destroy(v1 + 78, v5, v6, v7, v8, v9, v10, v11);
    payload_destroy(v1 + 6);
    img4_buff_dealloc_internal(v3, &v13);
    img4_buff_dealloc_internal(v3, &v12);
    return _expert_dealloc_type(expert, v1[2], v2);
  }

  return result;
}

uint64_t _property_filter_constraint(uint64_t a1)
{
  if (*(a1 + 48) == &_property_constraint_na)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _property_filter_anti_replay(uint64_t a1)
{
  if (*(a1 + 48) == &_property_constraint_rp)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _property_filter_manifest(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _property_filter_object(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _property_filter_expert(uint64_t a1)
{
  if (*(a1 + 16) == 34)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

char **property_iterator_next(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  v9 = v8 + 1;
  if (v8 == 38)
  {
    return 0;
  }

  if (v8 <= -2)
  {
    __panic_npx("panic: iteration underflow: idx = 0x%lx, %ld", a2, a3, a4, a5, a6, a7, a8, v8 + 1);
  }

  if (v9 >= 0x28)
  {
    __panic_npx("panic: iteration overflow: idx = 0x%lx, %lu", a2, a3, a4, a5, a6, a7, a8, v8 + 1);
  }

  if (*a1)
  {
    v12 = *a1;
  }

  else
  {
    v12 = _property_filter_all;
  }

  while (1)
  {
    v10 = __all[v9];
    if (!(v12)(v10))
    {
      break;
    }

    v13 = v9 + 1;
    if (v9++ >= 0x26)
    {
      goto LABEL_13;
    }
  }

  v13 = v9;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_13:
  v10 = 0;
  v9 = v13;
LABEL_14:
  *(a1 + 8) = v10;
  *(a1 + 16) = v9;
  return v10;
}

uint64_t property_iterator_reset(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = -1;
  return result;
}

double Img4DecodeInitAsPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = Img4DecodeInit(a1, a2, a3);
  if (v7 == 2)
  {

    return Img4DecodeInitPayload(a1, a2, a3);
  }

  return result;
}

void Img4DecodeInitAsManifest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Img4DecodeInit(a1, a2, a3);
  if (v6 == 2)
  {

    Img4DecodeInitManifest(a1, a2, a3);
  }
}

uint64_t Img4DecodeGetQueryForContainer(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 6)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "pc");
  }

  return qword_29EEFF040[a1];
}

uint64_t Img4DecodeQueryPropertyBool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 16))(a3);
  v8 = *(a1 + 24);

  return v8(a2, v7, a4);
}

uint64_t Img4DecodeQueryPropertyInteger64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 16))(a3);
  v8 = *(a1 + 32);

  return v8(a2, v7, a4);
}

uint64_t Img4DecodeQueryPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a1 + 16))(a3);
  v10 = *(a1 + 40);

  return v10(a2, v9, a4, a5);
}

uint64_t Img4DecodeIterateObjectItems(unint64_t *a1, unsigned int *a2, uint64_t (**a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  __dst[57] = *MEMORY[0x29EDCA608];
  v22[0] = 0;
  v22[1] = 0;
  v20 = 0;
  v21[0] = 0;
  v21[1] = 0;
  result = DERDecodeSeqContentInit(a1 + 5, v22);
  if (!result)
  {
    for (LODWORD(result) = DERDecodeSeqNext(v22, &v20); !result; LODWORD(result) = DERDecodeSeqNext(v22, &v20))
    {
      v9 = v20;
      memset(v19, 0, sizeof(v19));
      v10 = memcpy(__dst, a1, 0x1C8uLL);
      memset(v18, 170, 5);
      v11 = log_expert(v10);
      if (v9 == 1296125520)
      {
        strcpy(v18, "MANP");
        expert_log(v11, 2uLL, "found %s; skipping", v12, v13, v14, v15, v16, v18);
      }

      else
      {
        LOBYTE(v18[1]) = 0;
        v18[0] = bswap32(v9);
        expert_log(v11, 2uLL, "found object: %s", v12, v13, v14, v15, v16, v18);
        result = DERImg4DecodePropertyWithItem(v21, v20, 0x2000000000000011uLL, v19);
        if (result)
        {
          goto LABEL_12;
        }

        *a2 = v9;
        *&__dst[9] = *(&v19[1] + 8);
        result = Img4DecodeEvaluateObjectProperties(__dst, *a3, a4);
        if (result)
        {
          goto LABEL_12;
        }

        *a2 = 0;
      }
    }

    if (result == 1)
    {
      result = 0;
    }

    else
    {
      result = result;
    }
  }

LABEL_12:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Img4DecodeCheckAuthority(uint64_t a1, __int128 *a2)
{
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = _CheckAuthorityManifestPropertyCallback;
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = _CheckAuthorityEvalCertProperties;
  v6 = a2[2];
  v7 = *(a2 + 6);
  return Img4DecodePerformManifestTrustEvaluationWithCallbacks(a1, v8, &v3, 0);
}

unint64_t DERImg4DecodePrintProperty(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v13 = 0;
  v9 = *(result + 40);
  if (v9 <= 0)
  {
    if (v9 != 0xA000000000000000)
    {
      if (v9 != 0xA000000000000001)
      {
        return result;
      }

      v10 = "MUST NOT EXIST";
      goto LABEL_18;
    }

    strcpy(a2, "MUST EXIST");
  }

  else
  {
    switch(v9)
    {
      case 4:
        v11 = *(result + 24);
        if (*(result + 32) >= 0x40uLL)
        {
          v12 = 64;
        }

        else
        {
          v12 = *(result + 32);
        }

        return sprintdgst_npx(a2, v11, v12, a4, a5, a6, a7, a8);
      case 2:
        result = DERParseInteger64(result + 24, &v13);
        if (result)
        {
LABEL_17:
          v10 = "decode failure";
LABEL_18:
          *a2 = *v10;
          *(a2 + 7) = *(v10 + 7);
          return result;
        }

        return snprintf(a2, 0x81uLL, "0x%llx");
      case 1:
        result = DERParseBoolean((result + 24), &v14);
        if (!result)
        {
          return snprintf(a2, 0x81uLL, "%s");
        }

        goto LABEL_17;
      default:
        return result;
    }
  }

  return result;
}

uint64_t CTImg4GetDigestType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  if (v9 == 5 && !memcmp(*a1, &_oidSha1, 5uLL))
  {
    return 1;
  }

  if (v9 == 9 && !memcmp(*a1, &_oidSha224, 9uLL))
  {
    return 2;
  }

  if (v9 == 9 && !memcmp(*a1, &_oidSha256, 9uLL))
  {
    return 4;
  }

  if (v9 == 9 && !memcmp(*a1, &_oidSha384, 9uLL))
  {
    return 8;
  }

  if (v9 != 9 || memcmp(*a1, &_oidSha512, 9uLL))
  {
    __panic_npx("panic: unsupported digest type: oid len = %lu", a2, a3, a4, a5, a6, a7, a8, v9);
  }

  return 16;
}

uint64_t (**CTImg4GetDecodeImplementation(const DERItem *a1))()
{
  if (a1 == &oidSha1Rsa)
  {
    return _ctImg4RsaSha1Impl;
  }

  if (a1 == &oidSha224Rsa)
  {
    return 0;
  }

  if (a1 == &oidSha256Rsa)
  {
    return _ctImg4RsaSha256Impl;
  }

  if (a1 == &oidSha384Rsa)
  {
    return _ctImg4RsaSha384Impl;
  }

  v1 = _ctImg4EcdsaSha1Impl;
  v2 = _ctImg4EcdsaSha256Impl;
  v3 = _ctImg4EcdsaSha384Impl;
  if (a1 == &oidSha512Ecdsa)
  {
    v4 = _ctImg4EcdsaSha512Impl;
  }

  else
  {
    v4 = 0;
  }

  if (a1 != &oidSha384Ecdsa)
  {
    v3 = v4;
  }

  if (a1 != &oidSha256Ecdsa)
  {
    v2 = v3;
  }

  if (a1 == &oidSha224Ecdsa)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  if (a1 != &oidSha1Ecdsa)
  {
    v1 = v5;
  }

  if (a1 == &oidSha512Rsa)
  {
    return _ctImg4RsaSha512Impl;
  }

  else
  {
    return v1;
  }
}

uint64_t _chip_decode_select_static(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = 0;
  expert_log(a2, 2uLL, "%s: decode selection: static", a4, a5, a6, a7, a8, *(a1 + 8));
  if (!*(a1 + 32))
  {
    __panic_npx("panic: illegal chip definition: no static decode implementation: %s", v10, v11, v12, v13, v14, v15, v16, *(a1 + 8));
  }

  image4_certificate_type = expert_get_image4_certificate_type(a2, &v33);
  if (image4_certificate_type)
  {
    __panic_npx("panic: cannot resolve image4-cert-type: %d", v18, v19, v20, v21, v22, v23, v24, image4_certificate_type);
  }

  expert_log(a2, 1uLL, "%s: using image4-cert-type: %u", v20, v21, v22, v23, v24, *(a1 + 8));
  if (v33 > 1)
  {
    __panic_npx("panic: unsupported image4-cert-type: %d", v25, v26, v27, v28, v29, v30, v31, 0);
  }

  return *(*(a1 + 32) + 8 * v33);
}

uint64_t _chip_decode_select_trust_store(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = *MEMORY[0x29EDCA608];
  v67 = 0;
  v68 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v60 = *(a1 + 56);
  expert_log(a2, 2uLL, "%s: decode selection: trust store [0x%llx]", a4, a5, a6, a7, a8, *(a1 + 8));
  if (*(a1 + 32))
  {
    __panic_npx("panic: illegal chip definition: trust store cannot override static decode implementation: %s", v11, v12, v13, v14, v15, v16, v17, *(a1 + 8));
  }

  if (expert_query_trust_store(a2, *(a1 + 56), a1, &v67, &v68))
  {
    v61 = *(a1 + 56);
    expert_log(a2, 0, "%s: failed to query anchor: 0x%llx: %d", v18, v19, v20, v21, v22, *(a1 + 8));
    goto LABEL_9;
  }

  result = (*(a1 + 48))();
  v30 = *(result + 24);
  v29 = *(result + 32);
  if (v29 <= &v29[v30])
  {
    v66[0] = *(result + 32);
    v66[1] = v30;
    sprintdgst_npx(v69, v29, v30, v24, v25, v26, v27, v28);
    v62 = *(a1 + 56);
    expert_log(a2, 1uLL, "%s: retrieved pinned root from trust store: type = 0x%llx, length = %lu, oid = %s, oid length = %lu", v31, v32, v33, v34, v35, *(a1 + 8));
    if (DERDecodeItem(v66, &v63))
    {
      expert_log(a2, 0, "%s: DERDecodeItem: %d", v36, v37, v38, v39, v40, *(a1 + 8));
    }

    else
    {
      sprintdgst_npx(v69, v64, v65, v36, v37, v38, v39, v40);
      expert_log(a2, 1uLL, "%s: finding digest algorithm for oid: %s", v41, v42, v43, v44, v45, *(a1 + 8));
      DigestType = CTImg4GetDigestType(&v64, v46, v47, v48, v49, v50, v51, v52);
      if (!CTImg4CreateContext(v67, v68, DigestType, 0, a3))
      {
        result = *a3;
        goto LABEL_10;
      }

      expert_log(a2, 0, "%s: failed to parse root: %d", v54, v55, v56, v57, v58, *(a1 + 8));
    }

LABEL_9:
    result = 0;
LABEL_10:
    v59 = *MEMORY[0x29EDCA608];
    return result;
  }

  __break(0x5519u);
  return result;
}

uint64_t chip_dump(uint64_t a1, mach_header_64 *mhp, unint64_t a3)
{
  size = 0xAAAAAAAAAAAAAAAALL;
  v6 = getsectdatafromheader_64(mhp, "__DATA_CONST", "__image4_chp", &size);
  v7 = &v6[_dyld_get_image_slide()];
  size = 0xAAAAAAAAAAAAAAAALL;
  v8 = getsectdatafromheader_64(mhp, "__DATA_CONST", "__image4_chp", &size);
  result = _dyld_get_image_slide();
  if (v7 < &v8[result + size])
  {
    do
    {
      v15 = *v7;
      v7 += 8;
      *(*v15 + 8);
      expert_log(a1, a3, "%6s  %-36s : %s", v10, v11, v12, v13, v14, "");
      size = 0xAAAAAAAAAAAAAAAALL;
      v16 = getsectdatafromheader_64(mhp, "__DATA_CONST", "__image4_chp", &size);
      result = _dyld_get_image_slide();
    }

    while (v7 < &v16[result + size]);
  }

  return result;
}

unint64_t chip_get_property_expert(uint64_t a1, void *a2)
{
  v4 = chip_expert(a1);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v6 = v4 + 288;
  v7 = chip_expert_instance(a1);
  v15 = *(a1 + 16);
  if (v15 - 2 >= 2 && v15 != 0)
  {
    if (v15 != 1)
    {
      goto LABEL_16;
    }

    if (!chip_instance_check(v7, a2, v9, v10, v11, v12, v13, v14))
    {
      v6 = 0;
      v5 = 0;
    }

    v15 = *(a1 + 16);
  }

  if (v15 < a2[10])
  {
    return 0;
  }

  if (v5 && v5 >= v6)
  {
    __break(0x5519u);
LABEL_16:
    __panic_npx("panic: unreachable case: %s = 0x%llx", v8, v9, v10, v11, v12, v13, v14, "chp->chp_type");
  }

  return v5;
}

unint64_t chip_select_property_expert(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 256))
    {
      v6 = *(a1 + 256);
    }

    else
    {
      v6 = &_property_DGST;
    }

    if (!property_equal(a2, v6))
    {
      property_expert = chip_get_property_expert(a1, a2);
      if (property_expert)
      {
        return property_expert;
      }
    }
  }

  return a3;
}

char **chip_get_digest(uint64_t a1)
{
  if (*(a1 + 256))
  {
    return *(a1 + 256);
  }

  else
  {
    return &_property_DGST;
  }
}

uint64_t chip_get_constraint(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3 == 34)
  {
    return a2;
  }

  v4 = *(result + 64);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = (v4 + 8 * v3);
  if (v5 >= v4 + 272 || v5 < v4)
  {
    goto LABEL_19;
  }

  result = *v5;
  if (!*v5)
  {
LABEL_17:
    if (!a3)
    {
      return a2;
    }

    v7 = (a3 + 8 * v3);
    if (v7 >= a3 + 272 || v7 < a3)
    {
LABEL_19:
      __break(0x5519u);
      return result;
    }

    result = *v7;
    if (!*v7)
    {
      return a2;
    }
  }

  return result;
}

uint64_t chip_check_entitlement(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a1 + 120;
  while (1)
  {
    v5 = *(v4 + v3);
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    if (property_equal(a2, v5))
    {
      break;
    }

    v3 += 8;
    if (v3 == 40)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

void _prepare_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[2] = *MEMORY[0x29EDCA608];
  v4 = *(*a3 + 24);
  v5 = *(v4 + 8);
  v30[0] = 0;
  v30[1] = 0;
  v25 = 0;
  __n = 0;
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  boot_nonce = image4_environment_callout_query_boot_nonce(v4, v30, &__n);
  if (boot_nonce)
  {
    if (boot_nonce != 45)
    {
      expert_log(v5, 0, "failed to get boot nonce from callback: %d", v7, v8, v9, v10, v11, boot_nonce);
      goto LABEL_11;
    }

    nonce_digest = image4_environment_callout_query_nonce_digest(v4, v28, &v25);
    if (nonce_digest == 45)
    {
LABEL_11:
      v24 = *MEMORY[0x29EDCA608];
      return;
    }

    if (nonce_digest)
    {
      expert_log(v5, 0, "failed to get nonce digest from callback: %d", v13, v14, v15, v16, v17, nonce_digest);
      goto LABEL_11;
    }

    if (v25 <= 0x40)
    {
      digest_init(v27, v28, v25, v13, v14, v15, v16, v17);
      odometer_prepare_nonce_hash(a2, v27);
      goto LABEL_11;
    }
  }

  else if (__n <= 0x10)
  {
    nonce_init(v29, v30, __n, v7, v8, v9, v10, v11);
    odometer_prepare_nonce(a2, v29, v18, v19, v20, v21, v22, v23);
    goto LABEL_11;
  }

  __break(0x5519u);
}

uint64_t _extract_payload_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 528);
  memset(&v13[3], 0, 32);
  if (v7)
  {
    v8 = a3 + 528;
  }

  else
  {
    v8 = 0;
  }

  memset(&v13[1], 0, 32);
  if (v7)
  {
    v9 = a3 + 72;
  }

  else
  {
    v9 = 0;
  }

  v13[0] = 0uLL;
  v10 = manifest_measure(a3, a2, v13);
  *a5 = *(*(a2 + 48))(v10);
  if (v9 + 456 > v8)
  {
    __break(0x5519u);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9 + 328;
}

void *_payload_img4_get_measured_bytes(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(result + 44))
  {
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  v11 = result[6];
  v10 = result[7];
  if (v11 > v11 + v10)
  {
    __break(0x5519u);
  }

  else
  {

    return buff_init_wrap(a2, v11, v10);
  }

  return result;
}

uint64_t payload_init(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t **a4)
{
  _payload_init(a1, a3, a2);
  buff_xfer((a1 + 48), a4);
  *(a1 + 88) = 1;
  return a1;
}

double _payload_init(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a3)
  {
    a3 = generic_expert_specialist();
  }

  *a1 = a3;
  *(a1 + 8) = fourcc_copy(a1 + 16, a2);
  *(a1 + 32) = _payload_callbacks_bare;
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

uint64_t payload_init_borrow(uint64_t a1, uint64_t a2, unsigned int *a3, void *a4)
{
  _payload_init(a1, a3, a2);
  buff_borrow((a1 + 48), a4);
  *(a1 + 96) = a4;
  *(a1 + 88) = 1;
  return a1;
}

uint64_t payload_init_wrap(uint64_t a1, uint64_t a2, unsigned int *a3, void *a4)
{
  _payload_init(a1, a3, a2);
  buff_init_alias((a1 + 48), a4);
  *(a1 + 88) = 1;
  return a1;
}

uint64_t payload_set_callbacks(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t payload_parse(uint64_t *a1)
{
  v23 = 0;
  v9 = _payload_parse_internal(a1);
  if (!v9)
  {
    PayloadType = Img4DecodeGetPayloadType((a1 + 14), &v23);
    if (!PayloadType)
    {
      v22 = a1[1];
      if (*v22 == v23)
      {
        return 0;
      }

      expert_log(*a1, 0, "%s: unexpected payload type: actual = %s, expected = %s", v11, v12, v13, v14, v15, (v22 + 1));
      return 79;
    }

    v9 = posixdr(PayloadType);
    expert_log(*a1, 0, "%s: Img4DecodeGetPayloadType: %d", v16, v17, v18, v19, v20, a1[1] + 4);
  }

  if (v9 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return v9;
}

unint64_t _payload_parse_internal(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    return 0;
  }

  result = *(a1 + 48);
  v3 = *(a1 + 56);
  if (result <= result + v3)
  {
    Img4DecodeInitAsPayload(result, v3, a1 + 112);
    if (v4)
    {
      v5 = posixdr(v4);
      expert_log(*a1, 0, "%s: Img4DecodeInitAsPayload: %d", v6, v7, v8, v9, v10, *(a1 + 8) + 4);
      if (v5 >= 0x6B)
      {
        __panic_npx("panic: error not set to valid posix code: %d", v11, v12, v13, v14, v15, v16, v17, v5);
      }

      return v5;
    }

    *(a1 + 104) = a1 + 112;
    if (*(a1 + 32) == _payload_callbacks_bare)
    {
      v5 = 0;
      *(a1 + 32) = _payload_callbacks_im4p;
      return v5;
    }

    return 0;
  }

  __break(0x5519u);
  return result;
}

unint64_t *payload_destroy(unint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    if (*(v1 + 88))
    {
      v3 = (v1 + 48);
    }

    else
    {
      v3 = 0;
    }

    v5 = v3;
    v4 = *(v1 + 96);
    if (v4)
    {
      buff_return(v4, &v5);
    }

    result = buff_destroy(&v5);
    *(v1 + 88) = 0;
    if (v1 >= v1 + 568)
    {
      __break(0x5519u);
    }

    else
    {
      result = (*(*(v1 + 32) + 16))(v1, *(v1 + 40));
      *v2 = 0;
    }
  }

  return result;
}

uint64_t _payload_im4p_measure(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  v48 = 0;
  memset(v49, 0, sizeof(v49));
  alloc_preference = _type_get_alloc_preference(&_image4_type_decode_context);
  if (alloc_preference <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = alloc_preference;
  }

  if (v15 == 1)
  {
    goto LABEL_8;
  }

  if (v15 != 2)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", v8, v9, v10, v11, v12, v13, v14, "_t_preference");
  }

  v16 = _expert_alloc_type(v6, &_image4_type_decode_context);
  if (!v16)
  {
LABEL_8:
    size = type_get_size(&_image4_type_decode_context);
    v25 = MEMORY[0x2A1C7C4A8](size, v18, v19, v20, v21, v22, v23, v24);
    v26 = (&v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v25 >= 0x31)
    {
      v27 = v25 - 48;
    }

    else
    {
      v27 = 0;
    }

    memset(v26 + 3, 170, v27);
    *v26 = 0u;
    v26[1] = 0u;
    v26[2] = 0u;
  }

  else
  {
    v48 = v16;
  }

  v28 = *a1;
  v29 = chip_select_decode(a2);
  if (!v29)
  {
    __panic_npx("panic: no decode implementation available for chip: %s", v30, v31, v32, v33, v34, v35, v36, *(a2 + 8));
  }

  v37 = v29;
  v38 = *(v29 + 32);
  v39 = *v38;
  if (*v38 > 0x40)
  {
    __break(0x5519u);
LABEL_18:
    __panic_npx("panic: Img4DecodeCopyPayloadDigest: %d", v30, v31, v37, v33, v34, v35, v36, v29);
  }

  Img4DecodeCopyPayloadDigest(a1[13], v49, *v38, v29);
  if (v29)
  {
    goto LABEL_18;
  }

  _expert_dealloc_type(v6, &_image4_type_decode_context, &v48);
  result = digest_init(a3, v49, v39, v40, v41, v42, v43, v44);
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

void *_payload_bare_measure(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 88))
  {
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v17);
  }

  v10 = (*(a2 + 48))();

  return digest_init_measure(a3, v10, (a1 + 48), v11, v12, v13, v14, v15);
}

void *_payload_bare_get_measured_bytes(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(result + 44))
  {
    __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  v11 = result[6];
  v10 = result[7];
  if (v11 > v11 + v10)
  {
    __break(0x5519u);
  }

  else
  {

    return buff_init_wrap(a2, v11, v10);
  }

  return result;
}

void *_payload_im4p_get_measured_bytes(uint64_t a1, void *a2)
{
  v12 = 0;
  v13 = 0;
  Payload = Img4DecodeGetPayload(*(a1 + 104), &v12);
  if (Payload)
  {
    __panic_npx("panic: Img4DecodeGetPayload: %d", v4, v5, v6, v7, v8, v9, v10, Payload);
  }

  return buff_init_wrap(a2, v12, v13);
}

uint64_t darwin_uuid_parse(_BYTE *a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    *&v7[13] = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v6 = v3;
    *v7 = v3;
    __strlcpy_chk();
    if (uuid_parse(&v6, a2))
    {
      result = 22;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 2;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t image4_auditor_post(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x29EDCA608];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  image4_audit_event_init(v11, a2, a3, a4, a5, a6, a7, a8);
  result = (*(*(a1 + 80) + 8))(a1, v11, *(a1 + 88));
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *image4_audit_event_init(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = a2;
  v8 = *(a2 + 56);
  if (v8 >= 4)
  {
    v18 = *(a2 + 56);
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "p->p_container");
  }

  a1[34] = qword_298EF88F0[v8];
  if (a3 >= 4)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "mfr");
  }

  a1[33] = a3;
  if (a4)
  {
    a1[1] = image4_audit_value_init((a1 + 2), a2, a4, a4, a5, a6, a7, a8);
    a1[17] = image4_audit_value_init((a1 + 18), a2, a5, v12, v13, v14, v15, v16);
  }

  return a1;
}

uint64_t image4_auditor_interpose_decode(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 32);
  *(a1 + 16) = _AuditorComputeDigest;
  result = a1 + 16;
  *(result + 8) = _AuditorVerifyChain;
  *(result + 16) = _AuditorVerifySignature;
  *(result + 24) = _AuditorEvaluateCertificateProperties;
  *(result + 32) = v3;
  *(result - 8) = result;
  *(result + 48) = v2;
  *(result + 56) = a2;
  return result;
}

uint64_t _AuditorComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __current();
  result = (**(v10 + 72))(a1, a2, a3, a4, a5);
  if (result)
  {
    __panic_npx("panic: digest computation failed: %d", v12, v13, v14, v15, v16, v17, v18, result);
  }

  return result;
}

uint64_t _AuditorVerifyChain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __current();
  v17 = (*(*(v16 + 72) + 8))(a1, a2, a3, a4, a5, a6, a7, a8);
  v23 = v17;
  if (v17)
  {
    _auerr(v16, v17, "certificate chain verification failed: %d", v18, v19, v20, v21, v22, v17);
  }

  return v23;
}

uint64_t _AuditorVerifySignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __current();
  v17 = (*(*(v16 + 72) + 16))(a1, a2, a3, a4, a5, a6, a7, a8);
  v23 = v17;
  if (v17)
  {
    _auerr(v16, v17, "signature verification failed: %d", v18, v19, v20, v21, v22, v17);
  }

  return v23;
}

uint64_t _AuditorEvaluateCertificateProperties(void *a1)
{
  v2 = __current();
  v8 = v2;
  v84[0] = 0;
  v84[1] = 0;
  v82[1] = 0;
  v83 = 0;
  v81 = 0;
  v82[0] = 0;
  if (!a1[40])
  {
    _auerr(v2, 0, "certificate properties invalid length: actual = %lu, expected > 0", v3, v4, v5, v6, v7, 0);
    return 3;
  }

  v9 = DERDecodeSeqInit((a1 + 39), &v83, v84);
  if (v9)
  {
    v15 = v9;
    _auerr(v8, v9, "DERDecodeSeqInit: %d", v10, v11, v12, v13, v14, v9);
    return v15;
  }

  if (v83 != 0x2000000000000011)
  {
    _auerr(v8, 0, "bad certificate tag: actual = 0x%llx, expected = 0x%llx", v10, v11, v12, v13, v14, v83);
    return 2;
  }

LABEL_6:
  while (2)
  {
    v16 = DERDecodeSeqNext(v84, &v81);
    if (v16)
    {
      if (v16 != 1)
      {
        __panic_npx("panic: exited enforcement loop with bogus value: dr = %d", v17, v18, v19, v20, v21, v22, v23, v16);
      }

      return 0;
    }

    v80 = 0;
    v79 = 0;
    *v78 = 0uLL;
    v75 = 0;
    __s1 = 0;
    __n = 0;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v71[0] = 0;
    v71[1] = 0;
    v70 = 0u;
    memset(v69, 0, sizeof(v69));
    __s2 = 0uLL;
    fourcc_init(&v79, v81);
    v29 = a1 + 7;
    switch(v81)
    {
      case 0xE00000004D414E50:
        goto LABEL_11;
      case 0xE00000004F424A50:
        v29 = a1 + 9;
        if (!a1[9])
        {
          v29 = a1 + 9;
          if (!a1[10])
          {
            continue;
          }
        }

LABEL_11:
        *v78 = *v29;
        v30 = DERImg4DecodeProperty(v82, v81, &v72);
        if (v30)
        {
          v15 = v30;
          _auerr(v8, v30, "DERImg4DecodeProperty: %d", v31, v32, v33, v34, v35, v30);
          return v15;
        }

        if (*(&v74 + 1) != 0x2000000000000011)
        {
          _auerr(v8, 0, "unexpected certificate dictionary type: actual = 0x%llx, expected = 0x%llx", v31, v32, v33, v34, v35, SBYTE8(v74));
          return 2;
        }

        v36 = DERDecodeSeqContentInit(&v73 + 1, v71);
        if (v36)
        {
          v15 = v36;
          _auerr(v8, v36, "DERDecodeSeqContentInit: %d", v37, v38, v39, v40, v41, v36);
          return v15;
        }

        while (1)
        {
          v42 = DERDecodeSeqNext(v71, &v75);
          if (v42)
          {
            if (v42 != 1)
            {
              __panic_npx("panic: bogus exit from enforcement loop: pdr = %d", v43, v44, v45, v46, v47, v48, v49, v42);
            }

            goto LABEL_6;
          }

          memset(v67, 0, sizeof(v67));
          fourcc_init(&v79, v75);
          v50 = DERImg4DecodeProperty(&__s1, v75, v69);
          if (v50)
          {
            goto LABEL_32;
          }

          v56 = *(&v70 + 1) == 0xA000000000000001;
          DERImg4DecodeContentFindItemWithTag(v78, v75, &__s2);
          if (v62 != v56)
          {
            break;
          }

          if (*(&v70 + 1) <= 4uLL && ((1 << SBYTE8(v70)) & 0x16) != 0)
          {
            v50 = DERImg4DecodeProperty(&__s2, v75, v67);
            if (v50)
            {
LABEL_32:
              v15 = v50;
              _auerr(v8, v50, "DERImg4DecodeProperty: %s: %d", v51, v52, v53, v54, v55, &v79 + 4);
              return v15;
            }

            if (__n == *(&__s2 + 1) && !memcmp(__s1, __s2, __n))
            {
              aupost(v8, &v79, 0, v69, v67, v53, v54, v55);
            }

            else
            {
              aupost(v8, &v79, 1, v69, v67, v53, v54, v55);
            }
          }

          else
          {
            if ((*(&v70 + 1) + 0x6000000000000000) >= 2)
            {
              _auerr(v8, 0, "unexpected certificate property type: tag = %s, type = 0x%llx", v57, v58, v59, v60, v61, &v79 + 4);
              return 2;
            }

            v63 = v8;
            v64 = 0;
LABEL_26:
            aupost(v63, &v79, v64, v69, 0, v59, v60, v61);
          }
        }

        v63 = v8;
        v64 = 1;
        goto LABEL_26;
      case 0xE00000006D616E78:
        _auerr(v8, 0, "manx section constraints not implemented", v24, v25, v26, v27, v28, v66);
        return 4;
    }
  }

  _auerr(v8, 0, "unexpected section tag: %s", v24, v25, v26, v27, v28, &v79 + 4);
  return 2;
}

uint64_t image4_audit_value_init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = a2;
  v8 = *a3;
  v9 = *(a3 + 32);
  *(result + 32) = *(a3 + 16);
  *(result + 48) = v9;
  *(result + 16) = v8;
  v10 = *(a3 + 48);
  v11 = *(a3 + 64);
  v12 = *(a3 + 80);
  *(result + 112) = *(a3 + 96);
  *(result + 80) = v11;
  *(result + 96) = v12;
  *(result + 64) = v10;
  v13 = **(a2 + 40);
  if (v13 >= 5)
  {
    v14 = **(a2 + 40);
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "p->p_type->pt_switchable");
  }

  *(result + 8) = qword_298EF8910[v13];
  return result;
}

uint64_t image4_auditor_new(uint64_t (**a1)(void), uint64_t a2)
{
  v4 = generic_expert_specialist();
  result = _expert_alloc_type(v4, &_image4_type_auditor);
  if (result)
  {
    *(result + 80) = a1;
    *(result + 88) = a2;
    __current = *a1;
  }

  return result;
}

uint64_t *image4_auditor_destroy(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*result)
  {
    v10 = **result;
    if (!*(v10 + 744))
    {
      __panic_npx("panic: optional not set", a2, a3, a4, a5, a6, a7, a8, v8);
    }

    v11 = result;
    v12 = *(v10 + 152);

    return _expert_dealloc_type(v12, &_image4_type_auditor, v11);
  }

  return result;
}

uint64_t _auerr(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v29 = *MEMORY[0x29EDCA608];
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
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__str = 0u;
  v14 = 0u;
  vsnprintf(__str, 0x100uLL, a3, &a9);
  result = (*(*(a1 + 80) + 16))(a1, __str, a2);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aupost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x29EDCA608];
  v38[0] = xmmword_298EF8888;
  memset(&v38[1], 170, 88);
  v37[0] = xmmword_298EF8888;
  memset(&v37[1], 170, 88);
  v36 = 0;
  v13 = *(a4 + 40);
  if (v13 <= 0)
  {
    if (v13 == 0xA000000000000000)
    {
      v14 = &_property_constraint_ex;
    }

    else
    {
      if (v13 != 0xA000000000000001)
      {
        goto LABEL_20;
      }

      v14 = &_property_constraint_nx;
    }

LABEL_14:
    v15 = &_property_type_BOOL;
    goto LABEL_15;
  }

  if (v13 == 1)
  {
    v14 = &_property_constraint_eq;
    goto LABEL_14;
  }

  if (v13 != 2)
  {
    if (v13 == 4)
    {
      v14 = &_property_constraint_eq;
      v15 = &_property_type_digest;
LABEL_15:
      v24 = a2 + 4;
      v25 = 0;
      v18 = *a2;
      v26 = 34;
      v27 = v18;
      v28 = *(a2 + 8);
      goto LABEL_16;
    }

LABEL_20:
    __panic_npx("panic: unreachable case: %s = 0x%llx", a2, a3, a4, a5, a6, a7, a8, "constraint->type");
  }

  v16 = DERParseInteger(a4 + 24, &v36);
  v24 = a2 + 4;
  v25 = 0;
  v17 = *a2;
  v26 = 34;
  v27 = v17;
  v28 = *(a2 + 8);
  v15 = &_property_type_uint32;
  if (v16)
  {
    v15 = &_property_type_uint64;
  }

  v14 = &_property_constraint_eq;
LABEL_16:
  v29 = v15;
  v30 = v14;
  v31 = 2;
  v32 = xmmword_298EF8590;
  v34 = 0;
  v35 = 0;
  v33 = 4;
  if (a5)
  {
    _property_value_init_with_DERImg4(v38, a4);
    _property_value_init_with_DERImg4(v37, a5);
    v56 = 0;
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
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v19 = v38;
    v20 = v37;
    v21 = a3;
  }

  else
  {
    v56 = 0;
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
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v21 = a3;
    v19 = 0;
    v20 = 0;
  }

  image4_audit_event_init(&v39, &v24, v21, v19, v20, a6, a7, a8);
  result = (*(*(a1 + 80) + 8))(a1, &v39, *(a1 + 88));
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _property_value_init_with_DERImg4(void *a1, uint64_t a2)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  result = DERParseBoolean((a2 + 24), &v12);
  if (result)
  {
    result = DERParseInteger(a2 + 24, &v11);
    if (result)
    {
      result = DERParseInteger64(a2 + 24, &v10);
      if (result)
      {
        if (a1 + 10 < a1)
        {
          __break(0x5519u);
        }

        else
        {
          return digest_init(a1, *(a2 + 24), *(a2 + 32), v5, v6, v7, v8, v9);
        }
      }

      else
      {
        *a1 = v10;
      }
    }

    else
    {
      *a1 = v11;
    }
  }

  else
  {
    *a1 = v12;
  }

  return result;
}

uint64_t _chain_manifest_enforceable(uint64_t *a1, uint64_t a2)
{
  if (odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    v4 = *(a2 + 320);
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
      expert_log(v5, 1uLL, "odometer[%s:%s]: manifest has no chained hash constraint", v7, v8, v9, v10, v11, name);
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

uint64_t _chain_manifest_enforce(uint64_t *a1, uint64_t a2)
{
  v37[13] = *MEMORY[0x29EDCA608];
  chip_property = odometer_policy_get_chip_property(a1, *(a2 + 16));
  if (!*(a2 + 320))
  {
    __panic_npx("panic: optional not set", v5, v6, v7, v8, v9, v10, v11, v34);
  }

  v12 = chip_property;
  *v37 = xmmword_298EF8938;
  memset(&v37[2], 170, 88);
  digest_copy(v37, a2 + 240, v6, v7, v8, v9, v10, v11);
  v17 = odometer_enforce_property(a2, a1, v12, v37, v13, v14, v15, v16);
  v18 = *a2;
  name = chip_get_name(*(a2 + 16));
  if (v17)
  {
    v35 = *a1;
    expert_log(v18, 0, "odometer[%s:%s]: boot chain integrity violation: %d", v20, v21, v22, v23, v24, name);
    if (v17 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v25, v26, v27, v28, v29, v30, v31, v17);
    }
  }

  else
  {
    v36 = *a1;
    expert_log(v18, 1uLL, "odometer[%s:%s]: manifest is consistent with boot chain", v20, v21, v22, v23, v24, name);
  }

  v32 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t image4_trust_evaluation_prepare_manifest_callbacks(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    *(a2 + 32) = v2;
  }

  return result;
}

unint64_t image4_trust_evaluation_get_result(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  if (v8 || (result = (*(result + 32))(result, a2, a3, a4, &v8), v6 = v8, result > result + v8) || ((*a5 = v8, result) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t darwin_syscall_init(uint64_t a1)
{
  v2 = &__traps;
  v3 = 16;
  do
  {
    v27 = 5;
    if ((sysctlnametomib(*v2, v2 + 3, &v27) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v9 = *__error();
    if ((v9 - 1) >= 2)
    {
      if (v9)
      {
        v17 = *v2;
        v26 = *__error();
        __panic_npx("panic: sysctlnametomib: %s%d", v18, v19, v20, v21, v22, v23, v24, v17);
      }

      result = expert_log(a1, 3uLL, "initialized trap: %s", v4, v5, v6, v7, v8, *v2);
      *(v2 + 8) = v27;
    }

    else
    {
      v10 = *v2;
      v25 = *__error();
      result = expert_log(a1, 3uLL, "trap not present trap: %s: %d", v11, v12, v13, v14, v15, v10);
      *(v2 + 3) = -1;
    }

    v2 += 5;
    --v3;
  }

  while (v3);
  return result;
}

char **darwin_syscall_get(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 0x10)
  {
    __panic_npx("panic: invalid trap number: actual = %#llx, expected < %#llx", a2, a3, a4, a5, a6, a7, a8, a1);
  }

  if (LODWORD((&__traps)[5 * a1 + 4]))
  {
    return &(&__traps)[5 * a1];
  }

  else
  {
    return 0;
  }
}

uint64_t darwin_syscall_kmod_copy_abi_version(uint64_t a1, _BYTE *a2)
{
  v25 = 0;
  v24 = 1;
  v4 = expert_runtime_boot(a1);
  if (v4)
  {
    v10 = v4;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v5, v6, v7, v8, v9, v4);
  }

  else
  {
    if (!dword_2A18AB3F8)
    {
      return 78;
    }

    v10 = expert_syscall(a1, &__traps, &v25 + 1, 1, &v25, &v24);
    if (!v10)
    {
      *a2 = v25;
      return v10;
    }

    expert_log(a1, 0, "trap failed: %s: %d", v19, v20, v21, v22, v23, __traps);
  }

  if (v10 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v11, v12, v13, v14, v15, v16, v17, v10);
  }

  return v10;
}

uint64_t darwin_syscall_kmod_copy_version(uint64_t a1, char *a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 1;
  memset(v27, 0, sizeof(v27));
  v26 = 1;
  v25 = 513;
  v4 = expert_runtime_boot(a1);
  if (v4)
  {
    v10 = v4;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v5, v6, v7, v8, v9, v4);
  }

  else
  {
    if (!dword_2A18AB420)
    {
      v10 = 78;
      goto LABEL_4;
    }

    v10 = expert_syscall(a1, &qword_2A18AB400, &v28, 513, &v26, &v25);
    if (!v10)
    {
      strlcpy(a2, v27, 0x200uLL);
      goto LABEL_4;
    }

    expert_log(a1, 0, "trap failed: %s: %d", v20, v21, v22, v23, v24, qword_2A18AB400);
  }

  if (v10 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v11, v12, v13, v14, v15, v16, v17, v10);
  }

LABEL_4:
  v18 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t darwin_syscall_nonce_copy_hash(uint64_t a1, int *a2, int a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v43 = 0;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v36 = 1;
  v37 = *a2;
  v38 = a3;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v31 = 1;
  v32 = v37;
  v33 = a3;
  v30 = 77;
  v8 = expert_runtime_boot(a1);
  if (v8)
  {
    v14 = v8;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v9, v10, v11, v12, v13, v8);
    goto LABEL_3;
  }

  if (!dword_2A18AB510)
  {
    v14 = 78;
LABEL_4:
    v22 = *MEMORY[0x29EDCA608];
    return v14;
  }

  result = expert_syscall(a1, &qword_2A18AB4F0, &v36, 77, &v31, &v30);
  if (result)
  {
    v14 = result;
    expert_log(a1, 0, "trap failed: %s: %d", v24, v25, v26, v27, v28, qword_2A18AB4F0);
LABEL_3:
    if (v14 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v15, v16, v17, v18, v19, v20, v21, v14);
    }

    goto LABEL_4;
  }

  v29 = v35;
  if (v35 <= 0x40)
  {
    memcpy(a4, v34, v35);
    v14 = 0;
    *a5 = v29;
    goto LABEL_4;
  }

  __break(0x5519u);
  return result;
}

uint64_t darwin_syscall_nonce_peek_hash(uint64_t a1, int *a2, int a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v43 = 0;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v36 = 1;
  v37 = *a2;
  v38 = a3;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v31 = 1;
  v32 = v37;
  v33 = a3;
  v30 = 77;
  v8 = expert_runtime_boot(a1);
  if (v8)
  {
    v14 = v8;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v9, v10, v11, v12, v13, v8);
    goto LABEL_3;
  }

  if (!dword_2A18AB538)
  {
    v14 = 78;
LABEL_4:
    v22 = *MEMORY[0x29EDCA608];
    return v14;
  }

  result = expert_syscall(a1, &qword_2A18AB518, &v36, 77, &v31, &v30);
  if (result)
  {
    v14 = result;
    expert_log(a1, 0, "trap failed: %s: %d", v24, v25, v26, v27, v28, qword_2A18AB518);
LABEL_3:
    if (v14 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v15, v16, v17, v18, v19, v20, v21, v14);
    }

    goto LABEL_4;
  }

  v29 = v35;
  if (v35 <= 0x40)
  {
    memcpy(a4, v34, v35);
    v14 = 0;
    *a5 = v29;
    goto LABEL_4;
  }

  __break(0x5519u);
  return result;
}

uint64_t darwin_syscall_nonce_roll(uint64_t a1, int *a2, int a3)
{
  v28 = 1;
  v29 = *a2;
  v30 = a3;
  v25 = 1;
  v26 = v29;
  v27 = a3;
  v24 = 9;
  v4 = expert_runtime_boot(a1);
  if (v4)
  {
    v10 = v4;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v5, v6, v7, v8, v9, v4);
    goto LABEL_3;
  }

  if (!dword_2A18AB560)
  {
    return 78;
  }

  v10 = expert_syscall(a1, &qword_2A18AB540, &v28, 9, &v25, &v24);
  if (v10)
  {
    expert_log(a1, 0, "trap failed: %s: %d", v19, v20, v21, v22, v23, qword_2A18AB540);
LABEL_3:
    if (v10 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v11, v12, v13, v14, v15, v16, v17, v10);
    }
  }

  return v10;
}

uint64_t darwin_syscall_nonce_unroll(uint64_t a1, int *a2, int a3)
{
  v28 = 1;
  v29 = *a2;
  v30 = a3;
  v25 = 1;
  v26 = v29;
  v27 = a3;
  v24 = 9;
  v4 = expert_runtime_boot(a1);
  if (v4)
  {
    v10 = v4;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v5, v6, v7, v8, v9, v4);
    goto LABEL_3;
  }

  if (!dword_2A18AB588)
  {
    return 78;
  }

  v10 = expert_syscall(a1, &qword_2A18AB568, &v28, 9, &v25, &v24);
  if (v10)
  {
    expert_log(a1, 0, "trap failed: %s: %d", v19, v20, v21, v22, v23, qword_2A18AB568);
LABEL_3:
    if (v10 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v11, v12, v13, v14, v15, v16, v17, v10);
    }
  }

  return v10;
}

uint64_t darwin_syscall_nonce_generate_proposal(uint64_t a1, _DWORD *a2, int a3, void *a4, void *a5, char *a6, unint64_t *a7)
{
  v57 = *MEMORY[0x29EDCA608];
  v50 = 0u;
  v56 = 0;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v49 = 1;
  DWORD2(v50) = *a2;
  HIDWORD(v50) = a3;
  v43 = 0;
  v48 = 0;
  v47 = 0u;
  memset(v46, 0, sizeof(v46));
  v42 = 1;
  v44 = DWORD2(v50);
  v45 = a3;
  v41 = 105;
  v12 = expert_runtime_boot(a1);
  if (v12)
  {
    v18 = v12;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v13, v14, v15, v16, v17, v12);
    goto LABEL_3;
  }

  if (!dword_2A18AB5B0)
  {
    v18 = 78;
    goto LABEL_4;
  }

  v28 = a6 != 0;
  if (a7 && a6 && *a7)
  {
    v28 = 1;
    *&v50 = 1;
  }

  v29 = expert_syscall(a1, &qword_2A18AB590, &v49, 105, &v42, &v41);
  if (!v29)
  {
    v38 = v47;
    if (v47 <= 0x40)
    {
      memcpy(a4, v46, v47);
      *a5 = v38;
      v39 = HIDWORD(v48);
      if (!HIDWORD(v48))
      {
        v18 = 0;
        goto LABEL_4;
      }

      v37 = *a7;
      if (*a7 <= 0xF)
      {
LABEL_24:
        __panic_npx("panic: insufficient nonce buffer length: actual = %lu, expected >= %lu", v30, v31, v32, v33, v34, v35, v36, v37);
      }

      v40 = a6 + 16;
      if (!v28)
      {
        v40 = 0;
      }

      if (v37 <= v40 - a6 && HIDWORD(v48) <= 0x10)
      {
        memcpy(a6, &v47 + 4, HIDWORD(v48));
        v18 = 0;
        *a7 = v39;
        goto LABEL_4;
      }
    }

    __break(0x5519u);
    goto LABEL_24;
  }

  v18 = v29;
  expert_log(a1, 0, "trap failed: %s: %d", v32, v33, v34, v35, v36, qword_2A18AB590);
LABEL_3:
  if (v18 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v19, v20, v21, v22, v23, v24, v25, v18);
  }

LABEL_4:
  v26 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t darwin_syscall_nonce_verify(uint64_t a1, int *a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, _OWORD *a7, unint64_t a8)
{
  v55 = *MEMORY[0x29EDCA608];
  memset(v54, 0, sizeof(v54));
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v46 = 1;
  v47 = a4;
  v48 = *a2;
  v49 = a3;
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v36 = 1;
  v37 = a4;
  v38 = v48;
  v39 = a3;
  v35 = 105;
  v12 = expert_runtime_boot(a1);
  if (v12)
  {
    v20 = v12;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v15, v16, v17, v18, v19, v12);
    goto LABEL_3;
  }

  if (!dword_2A18AB5D8)
  {
    v20 = 78;
    goto LABEL_4;
  }

  if (a6 > 0x40)
  {
    goto LABEL_16;
  }

  __memcpy_chk();
  v54[0] = a6;
  if (!a7 || !a8)
  {
    goto LABEL_12;
  }

  if (a8 <= 0xF)
  {
LABEL_17:
    __panic_npx("panic: insufficient nonce buffer length: actual = %lu, expected >= %lu", v13, v14, v15, v16, v17, v18, v19, a8);
  }

  if (a8 != 16)
  {
LABEL_16:
    __break(0x5519u);
    goto LABEL_17;
  }

  *&v54[1] = *a7;
  v54[5] = 16;
LABEL_12:
  v20 = expert_syscall(a1, &qword_2A18AB5B8, &v46, 105, &v36, &v35);
  if (!v20)
  {
    goto LABEL_4;
  }

  expert_log(a1, 0, "trap failed: %s: %d", v30, v31, v32, v33, v34, qword_2A18AB5B8);
LABEL_3:
  if (v20 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v21, v22, v23, v24, v25, v26, v27, v20);
  }

LABEL_4:
  v28 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t darwin_syscall_image_activate(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = 2;
  v11 = *a3;
  v46 = a2;
  v47 = v11;
  length_uint32 = buff_get_length_uint32(a3, a2, a3, a4, a5, a6, a7, a8);
  v49 = *a4;
  v50 = buff_get_length_uint32(a4, v12, v13, v14, v15, v16, v17, v18);
  v40 = 2;
  v41 = a2;
  v42 = 0;
  v44 = 0;
  v43 = 0;
  v39 = 33;
  v19 = expert_runtime_boot(a1);
  if (v19)
  {
    v25 = v19;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v20, v21, v22, v23, v24, v19);
    goto LABEL_3;
  }

  if (!dword_2A18AB600)
  {
    return 78;
  }

  v25 = expert_syscall(a1, &qword_2A18AB5E0, &v45, 33, &v40, &v39);
  if (v25)
  {
    expert_log(a1, 0, "trap failed: %s: %d", v34, v35, v36, v37, v38, qword_2A18AB5E0);
LABEL_3:
    if (v25 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v26, v27, v28, v29, v30, v31, v32, v25);
    }
  }

  return v25;
}

uint64_t darwin_syscall_image_dfu(uint64_t a1, int *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = *MEMORY[0x29EDCA608];
  v42 = 0;
  v43 = *a2;
  v44 = *a3;
  length_uint32 = buff_get_length_uint32(a3, a2, a3, a4, a5, a6, a7, a8);
  v47 = 0;
  v46 = 0;
  v48 = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *(&v38 + 1) = *a2;
  v41 = 16;
  v37 = 37;
  v12 = expert_runtime_boot(a1);
  if (v12)
  {
    v18 = v12;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v13, v14, v15, v16, v17, v12);
    goto LABEL_3;
  }

  if (!dword_2A18AB628)
  {
    v18 = 78;
    goto LABEL_4;
  }

  v28 = expert_syscall(a1, &qword_2A18AB608, &v42, 37, &v38, &v37);
  if (v28)
  {
    v18 = v28;
    expert_log(a1, 0, "trap failed: %s: %d", v31, v32, v33, v34, v35, qword_2A18AB608);
LABEL_3:
    if (v18 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v19, v20, v21, v22, v23, v24, v25, v18);
    }

    goto LABEL_4;
  }

  v36 = v41;
  if (v41 >= 0x11)
  {
    __panic_npx("panic: kernel nonce overflows bounds: actual = %u, expected <= %u", v29, v30, v31, v32, v33, v34, v35, v41);
  }

  memcpy(a4, &v39 + 1, v41);
  v18 = 0;
  *a5 = v36;
LABEL_4:
  v26 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t darwin_syscall_image_copy_active(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = 1;
  v37 = a2;
  v38 = *a3;
  length_uint32 = buff_get_length_uint32(a3, a2, a3, a4, a5, a6, a7, a8);
  v32 = 1;
  v33 = a2;
  v34 = 0;
  v35 = 0;
  v31 = 21;
  v11 = expert_runtime_boot(a1);
  if (v11)
  {
    v17 = v11;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v12, v13, v14, v15, v16, v11);
  }

  else
  {
    if (!dword_2A18AB650)
    {
      return 78;
    }

    v17 = expert_syscall(a1, &qword_2A18AB630, &v36, 21, &v32, &v31);
    if (!v17)
    {
      *a4 = v35;
      return v17;
    }

    expert_log(a1, 0, "trap failed: %s: %d", v26, v27, v28, v29, v30, qword_2A18AB630);
  }

  if (v17 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v18, v19, v20, v21, v22, v23, v24, v17);
  }

  return v17;
}

uint64_t posixdr(unsigned int a1)
{
  if (a1 > 7)
  {
    return 14;
  }

  else
  {
    return dword_298EF8A40[a1];
  }
}

const char *strdr(unsigned int a1)
{
  if (a1 > 7)
  {
    return "generic error";
  }

  else
  {
    return off_29EEFF748[a1];
  }
}

uint64_t _chain_sideload_enforceable(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = a2[2];
  v5 = v4 + 33;
  if (v4[24] && v4[22])
  {
    if (v4 < v5)
    {
      name = chip_get_name(a2[2]);
      __panic_npx("panic: illegal chip definition: sideload and pivot policies defined: %s", v24, v25, v26, v27, v28, v29, v30, name);
    }

    goto LABEL_12;
  }

  if (v4 >= v5)
  {
LABEL_12:
    __break(0x5519u);
    return result;
  }

  if (odometer_policy_get_chip_property(result, a2[2]))
  {
    v6 = v4[31];
    v7 = *a2;
    v8 = chip_get_name(a2[2]);
    v14 = *v3;
    if (v6)
    {
      expert_log(v7, 1uLL, "odometer[%s:%s]: policy is enforceable", v9, v10, v11, v12, v13, v8);
      return 0;
    }

    else
    {
      v15 = 1;
      expert_log(v7, 1uLL, "odometer[%s:%s]: sideload chip has no notary", v9, v10, v11, v12, v13, v8);
    }
  }

  else
  {
    v16 = *a2;
    v17 = chip_get_name(a2[2]);
    v31 = *v3;
    v15 = 1;
    expert_log(v16, 1uLL, "odometer[%s:%s]: chip has no property for policy", v18, v19, v20, v21, v22, v17);
  }

  return v15;
}

uint64_t _chain_sideload_enforce(uint64_t *a1, uint64_t a2)
{
  v37[13] = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *v37 = xmmword_298EF8A60;
  memset(&v37[2], 170, 88);
  if (*(a2 + 440) == 1)
  {
    v6 = *a2;
    name = chip_get_name(v5);
    v34 = *a1;
    expert_log(v6, 1uLL, "odometer[%s:%s]: manifest self-entitled for mix-n-match; relaxing chain integrity policy", v7, v8, v9, v10, v11, name);
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  manifest_measure(v4, v5, v37);
  v16 = odometer_enforce_property(a2, a1, &_property_bmfh, v37, v12, v13, v14, v15);
  v17 = *a2;
  v18 = chip_get_name(*(a2 + 16));
  if (!v16)
  {
    v36 = *a1;
    expert_log(v17, 1uLL, "odometer[%s:%s]: manifest is consistent with boot chain", v19, v20, v21, v22, v23, v18);
    goto LABEL_7;
  }

  v35 = *a1;
  expert_log(v17, 0, "odometer[%s:%s]: boot chain integrity violation: %d", v19, v20, v21, v22, v23, v18);
  if (v16 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v24, v25, v26, v27, v28, v29, v30, v16);
  }

LABEL_8:
  v31 = *MEMORY[0x29EDCA608];
  return v16;
}