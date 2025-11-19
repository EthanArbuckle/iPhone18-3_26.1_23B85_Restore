void sub_2986D4F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

id _mount_log()
{
  if (_mount_log_onceToken != -1)
  {
    _mount_log_cold_1();
  }

  v1 = _mount_log_osl;

  return v1;
}

uint64_t cryptex_unmount(void *a1, void *a2, CFTypeRef *a3)
{
  *&v54[5] = *MEMORY[0x29EDCA608];
  v5 = a2;
  cf = 0;
  v6 = dispatch_get_global_queue(0, 0);
  if (v5)
  {
    _cryptex_attr_get_mount_flags(v5);
  }

  v7 = _cryptex_get_core(a1);
  if ((cryptex_core_is_cryptex1() & 1) == 0)
  {
    v14 = _mount_log();

    if (v14)
    {
      v15 = _mount_log();
      os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      LOWORD(v53) = 0;
      v13 = _os_log_send_and_compose_impl();
    }

    else
    {
      LOWORD(v53) = 0;
      v13 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_unmount", "cryptex_mount.m", 229, "com.apple.security.cryptex", 2, 0, v13);
    goto LABEL_30;
  }

  info_asset = cryptex_core_get_info_asset();
  if (!info_asset)
  {
    v17 = _mount_log();

    if (v17)
    {
      v18 = _mount_log();
      os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      v53 = 136315138;
      *v54 = MEMORY[0x28];
      v13 = _os_log_send_and_compose_impl();
    }

    else
    {
      v53 = 136315138;
      *v54 = MEMORY[0x28];
      v13 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_unmount", "cryptex_mount.m", 236, "com.apple.security.cryptex", 2, 0, v13);
    goto LABEL_30;
  }

  if ((*(info_asset + 16) & 0x80000000) != 0)
  {
    v19 = _mount_log();

    if (v19)
    {
      v20 = _mount_log();
      os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      v53 = 136315138;
      *v54 = MEMORY[0x28];
      v13 = _os_log_send_and_compose_impl();
    }

    else
    {
      v53 = 136315138;
      *v54 = MEMORY[0x28];
      v13 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_unmount", "cryptex_mount.m", 243, "com.apple.security.cryptex", 2, 0, v13);
LABEL_30:
    v29 = Error;
    v24 = 0;
    v10 = 0;
LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

  unmount_request = mount_interface_create_unmount_request();
  v10 = 0;
  if (unmount_request)
  {
    v11 = _mount_log();

    if (v11)
    {
      v12 = _mount_log();
      os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      LOWORD(v53) = 0;
      v13 = _os_log_send_and_compose_impl();
    }

    else
    {
      LOWORD(v53) = 0;
      v13 = _os_log_send_and_compose_impl();
    }

    v28 = createError("cryptex_unmount", "cryptex_mount.m", 250, "com.apple.security.cryptex", 2, unmount_request, v13);
    v24 = 0;
    v22 = 0;
LABEL_27:
    v29 = v28;
    goto LABEL_32;
  }

  connection = cryptex_xpc_create_connection();
  v22 = connection;
  if (!connection)
  {
    v33 = _mount_log();

    if (v33)
    {
      v34 = _mount_log();
      os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      LOWORD(v53) = 0;
      v13 = _os_log_send_and_compose_impl();
    }

    else
    {
      LOWORD(v53) = 0;
      v13 = _os_log_send_and_compose_impl();
    }

    v29 = createError("cryptex_unmount", "cryptex_mount.m", 257, "com.apple.security.cryptex", 2, 0, v13);
    v24 = 0;
    goto LABEL_31;
  }

  v23 = xpc_connection_send_message_with_reply_sync(connection, v10);
  v24 = v23;
  if (v23)
  {
    if (MEMORY[0x29C28F4F0](v23) == MEMORY[0x29EDCAA18])
    {
      v13 = xpc_copy_debug_description();
      v37 = _mount_log();

      if (v37)
      {
        v38 = _mount_log();
        os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
        v53 = 136315138;
        *v54 = v13;
        cStrb = _os_log_send_and_compose_impl();

        v39 = cStrb;
      }

      else
      {
        v53 = 136315138;
        *v54 = v13;
        v39 = _os_log_send_and_compose_impl();
      }

      cStr = v39;
      v43 = createError("cryptex_unmount", "cryptex_mount.m", 269, "com.apple.security.cryptex", 2, 0, v39);
    }

    else
    {
      if (MEMORY[0x29C28F4F0](v24) == MEMORY[0x29EDCAA00])
      {
        cferr = _xpc_dictionary_try_get_cferr(v24, "UNMOUNT:ERROR_DICT", &cf);
        if ((cferr | 2) == 2)
        {
          if (!cf)
          {
            v29 = 0;
            v30 = 1;
            goto LABEL_35;
          }

          v41 = _mount_log();

          if (v41)
          {
            v42 = _mount_log();
            os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
            v53 = 138543362;
            *v54 = cf;
            v13 = _os_log_send_and_compose_impl();
          }

          else
          {
            v53 = 138543362;
            *v54 = cf;
            v13 = _os_log_send_and_compose_impl();
          }

          v28 = createError("cryptex_unmount", "cryptex_mount.m", 297, "com.apple.security.cryptex", 2, cf, v13);
        }

        else
        {
          v44 = _mount_log();

          if (v44)
          {
            v45 = _mount_log();
            os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
            v46 = strerror(cferr);
            v53 = 67109378;
            v54[0] = cferr;
            LOWORD(v54[1]) = 2080;
            *(&v54[1] + 2) = v46;
          }

          else
          {
            v47 = MEMORY[0x29EDCA988];
            v48 = strerror(cferr);
            v53 = 67109378;
            v54[0] = cferr;
            LOWORD(v54[1]) = 2080;
            *(&v54[1] + 2) = v48;
            v45 = MEMORY[0x29EDCA988];
          }

          v13 = _os_log_send_and_compose_impl();

          v28 = createError("cryptex_unmount", "cryptex_mount.m", 288, "com.apple.security.cryptex", 2, 0, v13);
        }

        goto LABEL_27;
      }

      v13 = xpc_copy_debug_description();
      v25 = _mount_log();

      if (v25)
      {
        v26 = _mount_log();
        os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        v53 = 136315138;
        *v54 = v13;
        cStra = _os_log_send_and_compose_impl();

        v27 = cStra;
      }

      else
      {
        v53 = 136315138;
        *v54 = v13;
        v27 = _os_log_send_and_compose_impl();
      }

      cStr = v27;
      v43 = createError("cryptex_unmount", "cryptex_mount.m", 274, "com.apple.security.cryptex", 2, 0, v27);
    }

    v29 = v43;
    free(cStr);
    goto LABEL_32;
  }

  v35 = _mount_log();

  if (v35)
  {
    v36 = _mount_log();
    os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    LOWORD(v53) = 0;
    v13 = _os_log_send_and_compose_impl();
  }

  else
  {
    LOWORD(v53) = 0;
    v13 = _os_log_send_and_compose_impl();
  }

  v29 = createError("cryptex_unmount", "cryptex_mount.m", 264, "com.apple.security.cryptex", 2, 0, v13);
  v24 = 0;
LABEL_32:
  free(v13);
  v30 = 0;
  if (a3 && v29)
  {
    v30 = 0;
    *a3 = CFRetain(v29);
  }

LABEL_35:

  if (v29)
  {
    CFRelease(v29);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

void sub_2986D5CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, CFTypeRef cf)
{
  free(0);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t ___mount_log_block_invoke()
{
  _mount_log_osl = os_log_create("com.apple.libcryptex", "mount");

  return MEMORY[0x2A1C71028]();
}

uint64_t cryptex_identity_set_host_identity(unsigned int *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  memset(v4, 0, sizeof(v4));
  LOWORD(v4[0]) = 6;
  if (a1)
  {
    result = img4_chip_instantiate();
    if (!result)
    {
      result = cryptex_identity_set_chip(a1, v4);
    }
  }

  else
  {
    result = 22;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_identity_set_chip(unsigned int *a1, uint64_t a2)
{
  v2 = 22;
  if (a1)
  {
    if (a2)
    {
      *(a1 + 1) = 0;
      *(a1 + 2) = *(a2 + 28);
      a1[6] = *(a2 + 36);
      v2 = *a1;
      if (v2)
      {
        v3 = *(a2 + 16);
        if ((v3 & 0x58000) != 0)
        {
          return 0;
        }

        *(a1 + 1) = 6;
        a1[10] = *(a2 + 140);
        *(a1 + 7) = *(a2 + 128);
        if ((v3 & 0x20000) != 0)
        {
          return 0;
        }

        else
        {
          v2 = 0;
          a1[9] = *(a2 + 136);
        }
      }
    }
  }

  return v2;
}

void _cryptex_dealloc(uint64_t a1)
{
  os_release(*(a1 + 48));
  v2 = *(a1 + 104);
  if (v2)
  {
    os_release(v2);
  }

  object_proto_destroy(a1 + 16);
}

uint64_t _cryptex_create(_OWORD *a1, char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = a2;
    v6 = 0;
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      _cryptex_create_cold_2();
    }

    v13 = 0;
    v7 = arc4random();
    if (asprintf(&v13, "%s.%#x", "default", v7) < 0)
    {
      _cryptex_bundle_add_cryptex_assets_cold_1(&v14, v15);
    }

    v6 = v13;
    v5 = v13;
  }

  v8 = _cryptex_alloc();
  *(v8 + 40) = a3;
  *(v8 + 48) = cryptex_core_create();
  v10 = a1[1];
  v9 = a1[2];
  *(v8 + 56) = *a1;
  *(v8 + 72) = v10;
  *(v8 + 88) = v9;
  object_proto_init(v8 + 16, "com.apple.security.libcryptex", "cryptex");
  object_set_name(v8 + 16, v5);
  object_set_name_nocopy(*(v8 + 48) + 16, *(v8 + 16));
  free(v6);
  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

BOOL _cryptex_identity_equal_device(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 8) & 1;
    if (v3 != (*(a2 + 8) & 1))
    {
      return 0;
    }

    if (v3)
    {
      return 1;
    }

    return *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL _cryptex_identity_equal_cryptex1_chipid(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = *a1;
      if (v2)
      {
        v2 = *a2;
        if (v2)
        {
          v3 = *(a1 + 1) & 4;
          if (v3 == (*(a2 + 1) & 4))
          {
            return !v3 || a1[7] == a2[7];
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

BOOL _cryptex_identity_equal_cryptex1(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = *a1;
      if (v2)
      {
        v2 = *a2;
        if (v2)
        {
          v3 = *(a1 + 1) & 2;
          if (v3 == (*(a2 + 1) & 2))
          {
            if (!v3)
            {
              return 1;
            }

            if (a1[8] == a2[8])
            {
              return a1[10] == a2[10];
            }
          }

          return 0;
        }
      }
    }
  }

  return v2;
}

char *_cryptex_identity_copy_description(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = 512;
  v3 = __dst;
  memcpy(__dst, "generic", sizeof(__dst));
  if ((*(a1 + 8) & 1) == 0)
  {
    v4 = snprintf(__dst, 0x200uLL, "device(bord = %#x, chip = %#x, sdom = %#x) ", *(a1 + 16), *(a1 + 20), *(a1 + 24));
    if ((v4 & 0x80000000) != 0)
    {
      v6 = *__error();
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 12;
        v7 = MEMORY[0x29EDCA988];
        v8 = "Failed to write device identifiers.: %{darwin.errno}d";
LABEL_16:
        _os_log_impl(&dword_2986C0000, v7, OS_LOG_TYPE_ERROR, v8, buf, 8u);
      }

LABEL_17:
      v9 = __error();
      result = 0;
      *v9 = v6;
      goto LABEL_18;
    }

    v3 = &__dst[v4];
    v2 = 512 - v4;
  }

  if (*a1 && (*(a1 + 8) & 2) != 0 && snprintf(v3, v2, "cryptex1(fchp = %#x, type = %#x, styp = %#x, clas = %#x)", *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40)) < 0)
  {
    v6 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 12;
      v7 = MEMORY[0x29EDCA988];
      v8 = "Failed to write cryptex1 identifiers.: %{darwin.errno}d";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(__dst);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(__dst);
    if (!result)
    {
      _cryptex_identity_copy_description_cold_1(__dst, &v11, buf);
    }
  }

LABEL_18:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

char *cryptex_system_cx_copy_name(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1 == 1)
  {
    result = strdup("com.apple.system.nextos");
    if (!result)
    {
      cryptex_system_cx_copy_name_cold_1(&v3, v4);
    }
  }

  else if (a1)
  {
    result = 0;
  }

  else
  {
    result = strdup("com.apple.system.app");
    if (!result)
    {
      cryptex_system_cx_copy_name_cold_2(&v3, v4);
    }
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 cryptex_get_identity@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72);
  *a2 = *(a1 + 56);
  *(a2 + 16) = v2;
  result = *(a1 + 88);
  *(a2 + 32) = result;
  return result;
}

uint64_t cryptex_get_variant(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t cryptex_get_image_type(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 48);
  v2 = *(cryptex_core_get_image_asset() + 8);
  if (v2 == MEMORY[0x29EDC9630])
  {
    result = 0;
  }

  else if (v2 == MEMORY[0x29EDC9668])
  {
    result = 1;
  }

  else
  {
    if (v2 != MEMORY[0x29EDC9638])
    {
      cryptex_get_image_type_cold_1(&v5, v6, v2);
    }

    result = 2;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_lockdown()
{
  v34 = *MEMORY[0x29EDCA608];
  v0 = _g;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v9 = 32;
  v1 = os_log_create("com.apple.libcryptex", "cryptex");
  v2 = _cryptex_copy_connected_actor(v0, MEMORY[0x29EDC9680]);
  _cryptex_actor_init_invoke_u64();
  codex_lockdown_pack();
  v3 = cryptex_actor_trap();
  if (v3)
  {
    v4 = *__error();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(&dword_2986C0000, v1, OS_LOG_TYPE_ERROR, "lockdown rpc: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v4;
  }

  rpc_destroy(&v9);
  rpc_destroy(v32);
  if (v1)
  {
    os_release(v1);
  }

  if (v2)
  {
    os_release(v2);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t cryptex_install2(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v107 = *MEMORY[0x29EDCA608];
  v5 = _g;
  v77 = 0;
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v106 = 0;
  memset(v105, 0, sizeof(v105));
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 32;
  if ((*(a1 + 40) & 2) != 0)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v17 = *(a1 + 16);
      if (!v17)
      {
        v17 = "[anonymous]";
      }
    }

    else
    {
      v17 = *(a1 + 16);
      if (!v17)
      {
        v17 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v79 = v17;
    v80 = 1024;
    LODWORD(v81) = 45;
    v19 = _os_log_send_and_compose_impl();
    v20 = 786;
    v21 = 45;
    goto LABEL_41;
  }

  v7 = *(a1 + 48);
  image_asset = cryptex_core_get_image_asset();
  if (!image_asset)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v18 = *(a1 + 16);
      if (!v18)
      {
        v18 = "[anonymous]";
      }
    }

    else
    {
      v18 = *(a1 + 16);
      if (!v18)
      {
        v18 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v79 = v18;
    v80 = 1024;
    LODWORD(v81) = 22;
    v19 = _os_log_send_and_compose_impl();
    v20 = 794;
    goto LABEL_32;
  }

  v9 = image_asset;
  v10 = *(image_asset + 16);
  v11 = *(a1 + 48);
  info_asset = cryptex_core_get_info_asset();
  if (!info_asset)
  {
    v22 = 0;
LABEL_21:
    v23 = *(a1 + 48);
    tc_asset = cryptex_core_get_tc_asset();
    if (tc_asset)
    {
      v25 = *(tc_asset + 16);
      goto LABEL_23;
    }

    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v31 = *(a1 + 16);
      if (!v31)
      {
        v31 = "[anonymous]";
      }
    }

    else
    {
      v31 = *(a1 + 16);
      if (!v31)
      {
        v31 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v79 = v31;
    v80 = 1024;
    LODWORD(v81) = 22;
    v19 = _os_log_send_and_compose_impl();
    v63 = "com.apple.security.cryptex.posix";
    v64 = 836;
    v65 = 22;
LABEL_120:
    Error = createError("cryptex_install2", "cryptex.c", v64, v63, v65, 0, v19);
    v34 = 0;
    v35 = 0;
    goto LABEL_42;
  }

  file = _read_file(*(info_asset + 16), v75);
  if (file)
  {
    v14 = file;
    v15 = file;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v16 = *(a1 + 16);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      *buf = 136446466;
      v79 = v16;
      v80 = 1024;
      LODWORD(v81) = v14;
    }

    else
    {
      v32 = *(a1 + 16);
      if (!v32)
      {
        v32 = "[anonymous]";
      }

      *buf = 136446466;
      v79 = v32;
      v80 = 1024;
      LODWORD(v81) = file;
    }

    v19 = _os_log_send_and_compose_impl();
    v20 = 806;
    v21 = v15;
    goto LABEL_41;
  }

  v29 = xpc_create_from_plist();
  if (!v29)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v61 = *(a1 + 16);
      if (!v61)
      {
        v61 = "[anonymous]";
      }
    }

    else
    {
      v61 = *(a1 + 16);
      if (!v61)
      {
        v61 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v79 = v61;
    v80 = 1024;
    LODWORD(v81) = 22;
    v19 = _os_log_send_and_compose_impl();
    v20 = 814;
LABEL_32:
    v21 = 22;
LABEL_41:
    Error = createError("cryptex_install2", "cryptex.c", v20, "com.apple.security.cryptex.posix", v21, 0, v19);
    v34 = 0;
    v35 = 0;
    v22 = 0;
LABEL_42:
    v36 = 0;
    goto LABEL_43;
  }

  v22 = v29;
  v30 = _xpc_dictionary_try_get_BOOL(v29, "NoCode", &v77);
  if (v30 == 79)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v66 = *(a1 + 16);
      if (!v66)
      {
        v66 = "[anonymous]";
      }
    }

    else
    {
      v66 = *(a1 + 16);
      if (!v66)
      {
        v66 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v79 = v66;
    v80 = 2080;
    v81 = "NoCode";
    v19 = _os_log_send_and_compose_impl();
    v63 = "com.apple.security.cryptex";
    v64 = 826;
    v65 = 11;
    goto LABEL_120;
  }

  if (v30 == 2)
  {
    v77 = 0;
    goto LABEL_21;
  }

  if (!v77)
  {
    goto LABEL_21;
  }

LABEL_23:
  v26 = *(a1 + 48);
  volumehash_asset = cryptex_core_get_volumehash_asset();
  if (volumehash_asset)
  {
    v28 = *(volumehash_asset + 16);
  }

  v43 = *(a1 + 48);
  asset = cryptex_core_get_asset();
  if (asset)
  {
    v45 = *(asset + 16);
  }

  v72 = a3;
  if (_cryptex_attr_get_persistence(a2) >= 3)
  {
    v46 = *(*(a1 + 48) + 16);
    v47 = *__error();
    v48 = *(*(a1 + 48) + 32);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = "[anonymous]";
      if (v46)
      {
        v49 = v46;
      }

      *buf = 136446210;
      v79 = v49;
      _os_log_impl(&dword_2986C0000, v48, OS_LOG_TYPE_DEFAULT, "%{public}s: Installing as ephemeral", buf, 0xCu);
    }

    *__error() = v47;
  }

  _cryptex_attr_get_nonce_persistence(a2);
  v50 = *(a1 + 48);
  if (cryptex_core_is_cryptex1())
  {
    v51 = *(*(a1 + 48) + 216);
    v52 = cryptex_core_cx1_copy_xpc_dictionary();
  }

  else
  {
    v52 = xpc_dictionary_create(0, 0, 0);
  }

  v36 = v52;
  v53 = *(a2 + 40) & 1;
  if (os_variant_allows_internal_security_policies())
  {
    v54 = (*(a2 + 40) >> 1) & 1;
  }

  v73 = *(*(v9 + 8) + 24);
  v74 = *(a2 + 64);
  result = MEMORY[0x29C28F4F0](v36);
  if (result != MEMORY[0x29EDCAA00])
  {
    __break(1u);
    return result;
  }

  v34 = _cryptex_copy_connected_actor(v5, MEMORY[0x29EDC9680]);
  _cryptex_actor_init_invoke_u64();
  codex_install_pack();
  v55 = cryptex_actor_trap_with_cferr();
  a3 = v72;
  if (v55)
  {
    v35 = v55;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v56 = *(a1 + 16);
      if (!v56)
      {
        v56 = "[anonymous]";
      }

      *buf = 136446210;
      v79 = v56;
    }

    else
    {
      v62 = *(a1 + 16);
      if (!v62)
      {
        v62 = "[anonymous]";
      }

      *buf = 136446210;
      v79 = v62;
    }

    v19 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_install2", "cryptex.c", 916, "com.apple.security.cryptex", 14, v35, v19);
  }

  else
  {
    v57 = codex_install_reply_unpack();
    if (!v57)
    {
      v67 = *(a1 + 16);
      v68 = *__error();
      v69 = *(a1 + 32);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        v70 = "[anonymous]";
        if (v67)
        {
          v70 = v67;
        }

        *buf = 136446466;
        v79 = v70;
        v80 = 2080;
        v81 = 0;
        _os_log_impl(&dword_2986C0000, v69, OS_LOG_TYPE_DEBUG, "%{public}s: installed as: %s", buf, 0x16u);
      }

      Error = 0;
      v35 = 0;
      *__error() = v68;
      goto LABEL_53;
    }

    v58 = v57;
    v59 = v57;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v60 = *(a1 + 16);
      if (!v60)
      {
        v60 = "[anonymous]";
      }

      *buf = 136446466;
      v79 = v60;
      v80 = 1024;
      LODWORD(v81) = v58;
    }

    else
    {
      v71 = *(a1 + 16);
      if (!v71)
      {
        v71 = "[anonymous]";
      }

      *buf = 136446466;
      v79 = v71;
      v80 = 1024;
      LODWORD(v81) = v57;
    }

    v19 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_install2", "cryptex.c", 923, "com.apple.security.cryptex.posix", v59, 0, v19);
    v35 = 0;
  }

LABEL_43:
  free(v19);
  if (a3 && Error)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v37 = *(a1 + 16);
      if (!v37)
      {
        v37 = "[anonymous]";
      }

      *buf = 136446210;
      v79 = v37;
    }

    else
    {
      v38 = *(a1 + 16);
      if (!v38)
      {
        v38 = "[anonymous]";
      }

      *buf = 136446210;
      v79 = v38;
    }

    v39 = _os_log_send_and_compose_impl();
    v40 = createError("cryptex_install2", "cryptex.c", 933, "com.apple.security.cryptex", 14, Error, v39);
    free(v39);
    *a3 = v40;
  }

LABEL_53:
  buff_destroy(v75);
  rpc_destroy(&v82);
  rpc_destroy(v105);
  if (v36)
  {
    os_release(v36);
  }

  if (v22)
  {
    os_release(v22);
  }

  if (Error)
  {
    CFRelease(Error);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v34)
  {
    os_release(v34);
  }

  result = Error == 0;
  v42 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL cryptex_uninstall(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 128) & 1;
  uninstall_request = codex_interface_create_uninstall_request();
  cf = uninstall_request;
  if (uninstall_request)
  {
    v7 = uninstall_request;
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    LOWORD(v26) = 0;
    v8 = _os_log_send_and_compose_impl();
    v9 = 962;
    v10 = v7;
LABEL_3:
    Error = createError("cryptex_uninstall", "cryptex.c", v9, "com.apple.security.cryptex", 4, v10, v8);
    v12 = 0;
    v13 = 0;
    goto LABEL_4;
  }

  dispatch_get_global_queue(0, 0);
  connection = cryptex_xpc_create_connection();
  if (!connection)
  {
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    LOWORD(v26) = 0;
    v8 = _os_log_send_and_compose_impl();
    v9 = 970;
    v10 = 0;
    goto LABEL_3;
  }

  v13 = connection;
  v18 = xpc_connection_send_message_with_reply_sync(connection, 0);
  if (!v18)
  {
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    LOWORD(v26) = 0;
    v8 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_uninstall", "cryptex.c", 978, "com.apple.security.cryptex", 4, 0, v8);
    v12 = 0;
    goto LABEL_4;
  }

  v12 = v18;
  if (MEMORY[0x29C28F4F0]() == MEMORY[0x29EDCAA18])
  {
    v8 = xpc_copy_debug_description();
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v26 = 136315138;
    v27 = v8;
    v19 = _os_log_send_and_compose_impl();
    v20 = 984;
    goto LABEL_24;
  }

  if (MEMORY[0x29C28F4F0](v12) != MEMORY[0x29EDCAA00])
  {
    v8 = xpc_copy_debug_description();
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v26 = 136315138;
    v27 = v8;
    v19 = _os_log_send_and_compose_impl();
    v20 = 990;
LABEL_24:
    Error = createError("cryptex_uninstall", "cryptex.c", v20, "com.apple.security.cryptex", 4, 0, v19);
    free(v19);
    goto LABEL_4;
  }

  cferr = _xpc_dictionary_try_get_cferr(v12, "UNINSTALL:ERROR_DICT", &cf);
  if ((cferr | 2) == 2)
  {
    Error = cf;
    if (!cf)
    {
      v14 = 1;
LABEL_8:
      os_release(v12);
      goto LABEL_9;
    }

    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v26 = 138543362;
    v27 = Error;
    v8 = _os_log_send_and_compose_impl();
    v22 = cf;
    v23 = 1013;
  }

  else
  {
    v24 = cferr;
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v26 = 67109120;
    LODWORD(v27) = v24;
    v8 = _os_log_send_and_compose_impl();
    v23 = 1004;
    v22 = 0;
  }

  Error = createError("cryptex_uninstall", "cryptex.c", v23, "com.apple.security.cryptex", 4, v22, v8);
LABEL_4:
  free(v8);
  if (a4 && Error)
  {
    *a4 = CFRetain(Error);
  }

  v14 = Error == 0;
  if (v12)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v13)
  {
    os_release(v13);
  }

  if (!v14)
  {
    CFRelease(Error);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

BOOL cryptex_personalize2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5, NSObject *a6, const void *a7)
{
  v105 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 48);
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  v100 = 0x3000000000;
  v92 = MEMORY[0x29EDC96E0];
  if (!a6)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v16 = *(a1 + 16);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      *buf = 136446210;
      v94 = v16;
    }

    else
    {
      v18 = *(a1 + 16);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *buf = 136446210;
      v94 = v18;
    }

    v19 = _os_log_send_and_compose_impl();
    v20 = "com.apple.security.cryptex";
    v21 = 1052;
    v22 = 11;
    goto LABEL_32;
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v17 = *(a1 + 16);
      if (!v17)
      {
        v17 = "[anonymous]";
      }
    }

    else
    {
      v17 = *(a1 + 16);
      if (!v17)
      {
        v17 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v94 = v17;
    v95 = 1024;
    LODWORD(v96) = 45;
    v19 = _os_log_send_and_compose_impl();
    v20 = "com.apple.security.cryptex.posix";
    v21 = 1058;
    v22 = 45;
    goto LABEL_32;
  }

  if (cryptex_core_get_asset())
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v15 = *(a1 + 16);
      if (!v15)
      {
        v15 = "[anonymous]";
      }
    }

    else
    {
      v15 = *(a1 + 16);
      if (!v15)
      {
        v15 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v94 = v15;
    v95 = 1024;
    LODWORD(v96) = 17;
    v19 = _os_log_send_and_compose_impl();
    v20 = "com.apple.security.cryptex.posix";
    v21 = 1065;
    v22 = 17;
LABEL_32:
    Error = createError("cryptex_personalize2", "cryptex.c", v21, v20, v22, 0, v19);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    goto LABEL_33;
  }

  v90 = a5;
  if (cryptex_core_is_cryptex1())
  {
    v23 = *(a1 + 16);
    v24 = *__error();
    v25 = *(a1 + 32);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = "[anonymous]";
      if (v23)
      {
        v26 = v23;
      }

      *buf = 136446210;
      v94 = v26;
      _os_log_impl(&dword_2986C0000, v25, OS_LOG_TYPE_DEBUG, "%{public}s: Will personalize Cryptex1 dmg with a Cryptex1 TSS request.", buf, 0xCu);
    }

    *__error() = v24;
  }

  v89 = (*(a2 + 112) >> 1) & 1;
  v41 = *(a2 + 64);
  v91 = a2;
  _cryptex_attr_get_nonce_persistence(a2);
  cryptex_core_set_nonce_persistence();
  v32 = ctx_new(a1, 0x30uLL);
  dispatch_retain(a6);
  v32[4] = a6;
  v32[5] = _Block_copy(a7);
  v29 = cryptex_host_create();
  cryptex_core_attach_host();
  v42 = *(a2 + 64);
  if (v42 == 2)
  {
    v30 = cryptex_scrivener_create();
LABEL_117:
    cryptex_scrivener_sign();
    cryptex_activate();
    v28 = 0;
    Error = 0;
    v31 = 0;
    goto LABEL_49;
  }

  if (v42 != 1)
  {
    v30 = cryptex_scrivener_create();
    if (*(a2 + 72))
    {
      cryptex_scrivener_set_url();
    }

    a5 = v90;
    if (!a3)
    {
      nonce_domain = cryptex_core_get_nonce_domain();
      v57 = nonce_domain;
      if (nonce_domain || !v92)
      {
        v60 = nonce_domain;
        if (*(a1 + 32))
        {
          os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
          v70 = *(a1 + 16);
          if (!v70)
          {
            v70 = "[anonymous]";
          }

          *buf = 136446466;
          v94 = v70;
          v95 = 1024;
          LODWORD(v96) = v57;
        }

        else
        {
          v75 = *(a1 + 16);
          if (!v75)
          {
            v75 = "[anonymous]";
          }

          *buf = 136446466;
          v94 = v75;
          v95 = 1024;
          LODWORD(v96) = nonce_domain;
        }

        v19 = _os_log_send_and_compose_impl();
        v73 = 1163;
      }

      else
      {
        v58 = cryptex_core_copy_nonce_domain_desc();
        if (v58)
        {
          v59 = v58;
          v60 = v58;
          if (*(a1 + 32))
          {
            os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
            v61 = *(a1 + 16);
            if (!v61)
            {
              v61 = "[anonymous]";
            }

            *buf = 136446466;
            v94 = v61;
            v95 = 1024;
            LODWORD(v96) = v59;
          }

          else
          {
            v84 = *(a1 + 16);
            if (!v84)
            {
              v84 = "[anonymous]";
            }

            *buf = 136446466;
            v94 = v84;
            v95 = 1024;
            LODWORD(v96) = v58;
          }

          v19 = _os_log_send_and_compose_impl();
          v73 = 1170;
        }

        else
        {
          v76 = *(a1 + 16);
          v77 = *__error();
          v78 = *(a1 + 32);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            v79 = "[anonymous]";
            if (v76)
            {
              v79 = v76;
            }

            *buf = 136446466;
            v94 = v79;
            v95 = 2080;
            v96 = 0;
            _os_log_impl(&dword_2986C0000, v78, OS_LOG_TYPE_DEBUG, "%{public}s: copying nonce from domain %s", buf, 0x16u);
          }

          *__error() = v77;
          v80 = img4_nonce_domain_copy_nonce();
          if (!v80)
          {
            cryptex_scrivener_set_nonce();
            v85 = *(a1 + 16);
            v51 = *__error();
            v86 = *(a1 + 32);
            if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_106;
            }

            v87 = "[anonymous]";
            if (v85)
            {
              v87 = v85;
            }

            *buf = 136446466;
            v94 = v87;
            v95 = 2080;
            v96 = 0;
            v54 = "%{public}s: personalizing with host nonce from %s";
            v66 = v86;
            v67 = 22;
            goto LABEL_105;
          }

          v81 = v80;
          v60 = v80;
          if (*(a1 + 32))
          {
            os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
            v82 = *(a1 + 16);
            if (!v82)
            {
              v82 = "[anonymous]";
            }

            *buf = 136446466;
            v94 = v82;
            v95 = 1024;
            LODWORD(v96) = v81;
          }

          else
          {
            v88 = *(a1 + 16);
            if (!v88)
            {
              v88 = "[anonymous]";
            }

            *buf = 136446466;
            v94 = v88;
            v95 = 1024;
            LODWORD(v96) = v80;
          }

          v19 = _os_log_send_and_compose_impl();
          v73 = 1180;
        }
      }

      v74 = v60;
      goto LABEL_164;
    }

    if (a4)
    {
      cryptex_scrivener_set_nonce();
      v50 = *(a1 + 16);
      v51 = *__error();
      v52 = *(a1 + 32);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v53 = "[anonymous]";
        if (v50)
        {
          v53 = v50;
        }

        *buf = 136446210;
        v94 = v53;
        v54 = "%{public}s: personalizing with client provided nonce";
LABEL_104:
        v66 = v52;
        v67 = 12;
LABEL_105:
        _os_log_impl(&dword_2986C0000, v66, OS_LOG_TYPE_DEBUG, v54, buf, v67);
      }
    }

    else
    {
      cryptex_scrivener_set_nonce();
      v64 = *(a1 + 16);
      v51 = *__error();
      v52 = *(a1 + 32);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v65 = "[anonymous]";
        if (v64)
        {
          v65 = v64;
        }

        *buf = 136446210;
        v94 = v65;
        v54 = "%{public}s: personalizing with zero nonce";
        goto LABEL_104;
      }
    }

LABEL_106:
    *__error() = v51;
    v68 = *(a2 + 88);
    if (*(a2 + 80))
    {
      if (v68)
      {
        cryptex_scrivener_set_socks_proxy();
LABEL_114:
        if (*(a2 + 96) && *(a2 + 104))
        {
          cryptex_scrivener_set_auth_token();
        }

        goto LABEL_117;
      }
    }

    else if (v68 < 1)
    {
      goto LABEL_114;
    }

    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v69 = *(a1 + 16);
      if (!v69)
      {
        v69 = "[anonymous]";
      }
    }

    else
    {
      v69 = *(a1 + 16);
      if (!v69)
      {
        v69 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v94 = v69;
    v95 = 1024;
    LODWORD(v96) = 22;
    v19 = _os_log_send_and_compose_impl();
    v73 = 1202;
    v74 = 22;
LABEL_164:
    Error = createError("cryptex_personalize2", "cryptex.c", v73, "com.apple.security.cryptex.posix", v74, 0, v19);
    v28 = 0;
LABEL_165:
    v31 = 0;
    goto LABEL_33;
  }

  if (!xpc_array_get_count(*(*(a1 + 48) + 208)))
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v55 = *(a1 + 16);
      if (!v55)
      {
        v55 = "[anonymous]";
      }
    }

    else
    {
      v55 = *(a1 + 16);
      if (!v55)
      {
        v55 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v94 = v55;
    v95 = 1024;
    LODWORD(v96) = 22;
    v19 = _os_log_send_and_compose_impl();
    a5 = v90;
    Error = createError("cryptex_personalize2", "cryptex.c", 1116, "com.apple.security.cryptex.posix", 22, 0, v19);
    v28 = 0;
    v30 = 0;
    goto LABEL_165;
  }

  v43 = *(a1 + 16);
  v44 = *__error();
  v45 = *(a1 + 32);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    if (v43)
    {
      v46 = v43;
    }

    else
    {
      v46 = "[anonymous]";
    }

    count = xpc_array_get_count(*(*(a1 + 48) + 208));
    *buf = 136446466;
    v94 = v46;
    a2 = v91;
    v95 = 2048;
    v96 = count;
    _os_log_impl(&dword_2986C0000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s: requesting Diavlo personalization with %lu signatures", buf, 0x16u);
  }

  *__error() = v44;
  v31 = cryptex_signing_service_create(v89 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v41 & 1)));
  v48 = cryptex_signing_service_set_cryptex_core(v31, v9);
  a5 = v90;
  if (v48)
  {
    v28 = v48;
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v49 = *(a1 + 16);
      if (!v49)
      {
        v49 = "[anonymous]";
      }

      *buf = 136446210;
      v94 = v49;
    }

    else
    {
      v71 = *(a1 + 16);
      if (!v71)
      {
        v71 = "[anonymous]";
      }

      *buf = 136446210;
      v94 = v71;
    }

    v19 = _os_log_send_and_compose_impl();
    v72 = 1127;
  }

  else
  {
    v62 = *(a2 + 72);
    if (v62)
    {
      cryptex_signing_service_set_tss_url(v31, v62);
    }

    v28 = cryptex_signing_service_sign(v31);
    if (!v28)
    {
      Error = 0;
      v30 = 0;
      goto LABEL_49;
    }

    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v63 = *(a1 + 16);
      if (!v63)
      {
        v63 = "[anonymous]";
      }

      *buf = 136446210;
      v94 = v63;
    }

    else
    {
      v83 = *(a1 + 16);
      if (!v83)
      {
        v83 = "[anonymous]";
      }

      *buf = 136446210;
      v94 = v83;
    }

    v19 = _os_log_send_and_compose_impl();
    v72 = 1139;
  }

  Error = createError("cryptex_personalize2", "cryptex.c", v72, "com.apple.security.cryptex", 5, v28, v19);
  v30 = 0;
LABEL_33:
  free(v19);
  if (a5 && Error)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v33 = *(a1 + 16);
      if (!v33)
      {
        v33 = "[anonymous]";
      }

      *buf = 136446210;
      v94 = v33;
    }

    else
    {
      v34 = *(a1 + 16);
      if (!v34)
      {
        v34 = "[anonymous]";
      }

      *buf = 136446210;
      v94 = v34;
    }

    v35 = _os_log_send_and_compose_impl();
    v36 = createError("cryptex_personalize2", "cryptex.c", 1219, "com.apple.security.cryptex", 5, Error, v35);
    free(v35);
    *a5 = v36;
  }

  if (v32)
  {
    v37 = v32[5];
    if (v37)
    {
      os_release(v37);
    }

    v38 = v32[2];
    if (v38)
    {
      CFRelease(v38);
    }

    ctx_destroy(v32);
  }

LABEL_49:
  free(0);
  if (v31)
  {
    os_release(v31);
  }

  if (v30)
  {
    os_release(v30);
  }

  if (v29)
  {
    os_release(v29);
  }

  if (Error)
  {
    CFRelease(Error);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  result = Error == 0;
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_personalize2_continue_tss(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v53 = *MEMORY[0x29EDCA608];
  v6 = *a4;
  v7 = *(*a4 + 48);
  bzero(v46, 0x400uLL);
  memcpy(__dst, "cryptex.personalize.XXXXXX", sizeof(__dst));
  v43 = -1;
  v44 = 0;
  if (a3)
  {
    if (*(v6 + 32))
    {
      os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
      v8 = *(v6 + 16);
      if (!v8)
      {
        v8 = "[anonymous]";
      }

      v47 = 136446210;
      v48 = v8;
    }

    else
    {
      v16 = *(v6 + 16);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      v47 = 136446210;
      v48 = v16;
    }

    v17 = _os_log_send_and_compose_impl();
    Error = createError("_cryptex_personalize2_continue_tss", "cryptex.c", 196, "com.apple.security.cryptex", 5, a3, v17);
    v10 = -1;
    goto LABEL_37;
  }

  _confstr(65537, v46);
  v9 = open(v46, 0x100000);
  v10 = v9;
  if (v9 < 0)
  {
    v19 = *__error();
    v13 = v19;
    if (*(v6 + 32))
    {
      os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
      v20 = *(v6 + 16);
      v47 = 136446722;
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = "[anonymous]";
      }

      v48 = v21;
      v49 = 2080;
      v50 = v46;
      v51 = 1024;
      v52 = v19;
    }

    else
    {
      v30 = "[anonymous]";
      if (*(v6 + 16))
      {
        v30 = *(v6 + 16);
      }

      v47 = 136446722;
      v48 = v30;
      v49 = 2080;
      v50 = v46;
      v51 = 1024;
      v52 = v19;
    }

    v17 = _os_log_send_and_compose_impl();
    v29 = 205;
    goto LABEL_36;
  }

  v11 = _mkodtempat(v9, __dst, &v43);
  if (v11)
  {
    v12 = v11;
    v13 = v11;
    if (*(v6 + 32))
    {
      os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
      v14 = *(v6 + 16);
      v47 = 136446722;
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = "[anonymous]";
      }

      v48 = v15;
      v49 = 2080;
      v50 = v46;
      v51 = 1024;
      v52 = v12;
    }

    else
    {
      v28 = "[anonymous]";
      if (*(v6 + 16))
      {
        v28 = *(v6 + 16);
      }

      v47 = 136446722;
      v48 = v28;
      v49 = 2080;
      v50 = v46;
      v51 = 1024;
      v52 = v11;
    }

    v17 = _os_log_send_and_compose_impl();
    v29 = 213;
LABEL_36:
    Error = createError("_cryptex_personalize2_continue_tss", "cryptex.c", v29, "com.apple.security.cryptex.posix", v13, 0, v17);
LABEL_37:
    free(v17);
    a4[2] = Error;
    cryptex_tss_async();
    goto LABEL_38;
  }

  v22 = *(MEMORY[0x29EDC9658] + 40);
  v23 = openat(v43, v22, 513, 438);
  if ((v23 & 0x80000000) == 0)
  {
    v24 = cryptex_signature_write();
    if (v24)
    {
      v25 = v24;
      v26 = v24;
      if (*(v6 + 32))
      {
        os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
        v27 = *(v6 + 16);
        if (!v27)
        {
          v27 = "[anonymous]";
        }

        v47 = 136446466;
        v48 = v27;
        v49 = 1024;
        LODWORD(v50) = v25;
      }

      else
      {
        v36 = *(v6 + 16);
        if (!v36)
        {
          v36 = "[anonymous]";
        }

        v47 = 136446466;
        v48 = v36;
        v49 = 1024;
        LODWORD(v50) = v24;
      }

      v37 = _os_log_send_and_compose_impl();
      v38 = 229;
    }

    else
    {
      if ((openat(v43, v22, 0) & 0x80000000) == 0)
      {
        v44 = cryptex_asset_new();
        cryptex_core_set_asset();
        v35 = 0;
LABEL_54:
        a4[2] = v35;
        cryptex_tss_async();
LABEL_58:
        if (close(v23) == -1)
        {
          _cryptex_bundle_new_asset_from_object_cold_1(&v44, &v47);
        }

        goto LABEL_38;
      }

      v41 = *__error();
      v26 = v41;
      if (*(v6 + 32))
      {
        os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
        v42 = *(v6 + 16);
        if (!v42)
        {
          v42 = "[anonymous]";
        }
      }

      else
      {
        v42 = *(v6 + 16);
        if (!v42)
        {
          v42 = "[anonymous]";
        }
      }

      v47 = 136446466;
      v48 = v42;
      v49 = 1024;
      LODWORD(v50) = v41;
      v37 = _os_log_send_and_compose_impl();
      v38 = 238;
    }

    v35 = createError("_cryptex_personalize2_continue_tss", "cryptex.c", v38, "com.apple.security.cryptex.posix", v26, 0, v37);
    free(v37);
    goto LABEL_54;
  }

  v33 = *__error();
  if (*(v6 + 32))
  {
    os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
    v34 = *(v6 + 16);
    if (!v34)
    {
      v34 = "[anonymous]";
    }
  }

  else
  {
    v34 = *(v6 + 16);
    if (!v34)
    {
      v34 = "[anonymous]";
    }
  }

  v47 = 136446466;
  v48 = v34;
  v49 = 1024;
  LODWORD(v50) = v33;
  v39 = _os_log_send_and_compose_impl();
  v40 = createError("_cryptex_personalize2_continue_tss", "cryptex.c", 222, "com.apple.security.cryptex.posix", v33, 0, v39);
  free(v39);
  a4[2] = v40;
  cryptex_tss_async();
  if (v23 != -1)
  {
    goto LABEL_58;
  }

LABEL_38:
  result = v43;
  if (v43 != -1)
  {
    result = close(v43);
    if (result == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v44, &v47);
    }
  }

  if (v10 != -1)
  {
    result = close(v10);
    if (result == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v44, &v47);
    }
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _cryptex_personalize2_continue(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v53 = *MEMORY[0x29EDCA608];
  v6 = *a4;
  v7 = *(*a4 + 48);
  bzero(v46, 0x400uLL);
  memcpy(__dst, "cryptex.personalize.XXXXXX", sizeof(__dst));
  v43 = -1;
  v44 = 0;
  if (a3)
  {
    if (*(v6 + 32))
    {
      os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
      v8 = *(v6 + 16);
      if (!v8)
      {
        v8 = "[anonymous]";
      }

      v47 = 136446210;
      v48 = v8;
    }

    else
    {
      v16 = *(v6 + 16);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      v47 = 136446210;
      v48 = v16;
    }

    v17 = _os_log_send_and_compose_impl();
    Error = createError("_cryptex_personalize2_continue", "cryptex.c", 123, "com.apple.security.cryptex", 5, a3, v17);
    v10 = -1;
    goto LABEL_37;
  }

  _confstr(65537, v46);
  v9 = open(v46, 0x100000);
  v10 = v9;
  if (v9 < 0)
  {
    v19 = *__error();
    v13 = v19;
    if (*(v6 + 32))
    {
      os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
      v20 = *(v6 + 16);
      v47 = 136446722;
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = "[anonymous]";
      }

      v48 = v21;
      v49 = 2080;
      v50 = v46;
      v51 = 1024;
      v52 = v19;
    }

    else
    {
      v30 = "[anonymous]";
      if (*(v6 + 16))
      {
        v30 = *(v6 + 16);
      }

      v47 = 136446722;
      v48 = v30;
      v49 = 2080;
      v50 = v46;
      v51 = 1024;
      v52 = v19;
    }

    v17 = _os_log_send_and_compose_impl();
    v29 = 132;
    goto LABEL_36;
  }

  v11 = _mkodtempat(v9, __dst, &v43);
  if (v11)
  {
    v12 = v11;
    v13 = v11;
    if (*(v6 + 32))
    {
      os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
      v14 = *(v6 + 16);
      v47 = 136446722;
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = "[anonymous]";
      }

      v48 = v15;
      v49 = 2080;
      v50 = v46;
      v51 = 1024;
      v52 = v12;
    }

    else
    {
      v28 = "[anonymous]";
      if (*(v6 + 16))
      {
        v28 = *(v6 + 16);
      }

      v47 = 136446722;
      v48 = v28;
      v49 = 2080;
      v50 = v46;
      v51 = 1024;
      v52 = v11;
    }

    v17 = _os_log_send_and_compose_impl();
    v29 = 140;
LABEL_36:
    Error = createError("_cryptex_personalize2_continue", "cryptex.c", v29, "com.apple.security.cryptex.posix", v13, 0, v17);
LABEL_37:
    free(v17);
    a4[2] = Error;
    cryptex_target_async_f();
    goto LABEL_38;
  }

  v22 = *(MEMORY[0x29EDC9658] + 40);
  v23 = openat(v43, v22, 513, 438);
  if ((v23 & 0x80000000) == 0)
  {
    v24 = cryptex_signature_write();
    if (v24)
    {
      v25 = v24;
      v26 = v24;
      if (*(v6 + 32))
      {
        os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
        v27 = *(v6 + 16);
        if (!v27)
        {
          v27 = "[anonymous]";
        }

        v47 = 136446466;
        v48 = v27;
        v49 = 1024;
        LODWORD(v50) = v25;
      }

      else
      {
        v36 = *(v6 + 16);
        if (!v36)
        {
          v36 = "[anonymous]";
        }

        v47 = 136446466;
        v48 = v36;
        v49 = 1024;
        LODWORD(v50) = v24;
      }

      v37 = _os_log_send_and_compose_impl();
      v38 = 156;
    }

    else
    {
      if ((openat(v43, v22, 0) & 0x80000000) == 0)
      {
        v44 = cryptex_asset_new();
        cryptex_core_set_asset();
        v35 = 0;
LABEL_54:
        a4[2] = v35;
        cryptex_target_async_f();
LABEL_58:
        if (close(v23) == -1)
        {
          _cryptex_bundle_new_asset_from_object_cold_1(&v44, &v47);
        }

        goto LABEL_38;
      }

      v41 = *__error();
      v26 = v41;
      if (*(v6 + 32))
      {
        os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
        v42 = *(v6 + 16);
        if (!v42)
        {
          v42 = "[anonymous]";
        }
      }

      else
      {
        v42 = *(v6 + 16);
        if (!v42)
        {
          v42 = "[anonymous]";
        }
      }

      v47 = 136446466;
      v48 = v42;
      v49 = 1024;
      LODWORD(v50) = v41;
      v37 = _os_log_send_and_compose_impl();
      v38 = 165;
    }

    v35 = createError("_cryptex_personalize2_continue", "cryptex.c", v38, "com.apple.security.cryptex.posix", v26, 0, v37);
    free(v37);
    goto LABEL_54;
  }

  v33 = *__error();
  if (*(v6 + 32))
  {
    os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
    v34 = *(v6 + 16);
    if (!v34)
    {
      v34 = "[anonymous]";
    }
  }

  else
  {
    v34 = *(v6 + 16);
    if (!v34)
    {
      v34 = "[anonymous]";
    }
  }

  v47 = 136446466;
  v48 = v34;
  v49 = 1024;
  LODWORD(v50) = v33;
  v39 = _os_log_send_and_compose_impl();
  v40 = createError("_cryptex_personalize2_continue", "cryptex.c", 149, "com.apple.security.cryptex.posix", v33, 0, v39);
  free(v39);
  a4[2] = v40;
  cryptex_target_async_f();
  if (v23 != -1)
  {
    goto LABEL_58;
  }

LABEL_38:
  result = v43;
  if (v43 != -1)
  {
    result = close(v43);
    if (result == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v44, &v47);
    }
  }

  if (v10 != -1)
  {
    result = close(v10);
    if (result == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v44, &v47);
    }
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

CFErrorRef cryptex_fcopy_personalized_manifest2(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 48);
  asset = cryptex_core_get_asset();
  if (asset)
  {
    v6 = asset;
    v7 = dup(a2);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = *(v6 + 16);
      if (v8 < 0)
      {
        if (*(a1 + 32))
        {
          os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
          v14 = *(a1 + 16);
          if (!v14)
          {
            v14 = "[anonymous]";
          }
        }

        else
        {
          v14 = *(a1 + 16);
          if (!v14)
          {
            v14 = "[anonymous]";
          }
        }

        v27 = 136446466;
        v28 = v14;
        v29 = 1024;
        v30 = 9;
        v21 = _os_log_send_and_compose_impl();
        v22 = 1254;
        v23 = 9;
      }

      else
      {
        if (!fcopyfile(v8, a2, 0, 0x100000Fu))
        {
          Error = 0;
          goto LABEL_39;
        }

        v9 = *__error();
        if (*(a1 + 32))
        {
          os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
          if (*(a1 + 16))
          {
            v10 = *(a1 + 16);
          }

          else
          {
            v10 = "[anonymous]";
          }
        }

        else if (*(a1 + 16))
        {
          v10 = *(a1 + 16);
        }

        else
        {
          v10 = "[anonymous]";
        }

        v20 = *__error();
        v27 = 136446466;
        v28 = v10;
        v29 = 1024;
        v30 = v20;
        v21 = _os_log_send_and_compose_impl();
        v22 = 1260;
        v23 = v9;
      }

      Error = createError("cryptex_fcopy_personalized_manifest2", "cryptex.c", v22, "com.apple.security.cryptex.posix", v23, 0, v21);
      free(v21);
LABEL_39:
      if (close(v7) == -1)
      {
        _cryptex_bundle_new_asset_from_object_cold_1(&v26, &v27);
      }

      goto LABEL_40;
    }

    v12 = *__error();
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      if (*(a1 + 16))
      {
        v13 = *(a1 + 16);
      }

      else
      {
        v13 = "[anonymous]";
      }
    }

    else if (*(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    else
    {
      v13 = "[anonymous]";
    }

    v18 = *__error();
    v27 = 136446466;
    v28 = v13;
    v29 = 1024;
    v30 = v18;
    v19 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_fcopy_personalized_manifest2", "cryptex.c", 1248, "com.apple.security.cryptex.posix", v12, 0, v19);
    free(v19);
    if (v7 != -1)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v11 = *(a1 + 16);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      v27 = 136446466;
      v28 = v11;
      v29 = 1024;
      v30 = 2;
    }

    else
    {
      v15 = *(a1 + 16);
      if (!v15)
      {
        v15 = "[anonymous]";
      }

      v27 = 136446466;
      v28 = v15;
      v29 = 1024;
      v30 = 2;
    }

    v16 = _os_log_send_and_compose_impl();
    Error = createError("cryptex_fcopy_personalized_manifest2", "cryptex.c", 1241, "com.apple.security.cryptex.posix", 2, 0, v16);
    free(v16);
  }

LABEL_40:
  v24 = *MEMORY[0x29EDCA608];
  return Error;
}

CFErrorRef cryptex_fcopy_info_plist(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 48);
  info_asset = cryptex_core_get_info_asset();
  if (!info_asset)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
    }

    *(a1 + 16);
    v10 = _os_log_send_and_compose_impl();
    v11 = 1278;
    v12 = 2;
    goto LABEL_17;
  }

  v6 = *(info_asset + 16);
  if (v6 < 0)
  {
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
    }

    *(a1 + 16);
    v10 = _os_log_send_and_compose_impl();
    v11 = 1284;
    v12 = 9;
    goto LABEL_17;
  }

  if (fcopyfile(v6, a2, 0, 0x100000Fu))
  {
    v7 = *__error();
    if (*(a1 + 32))
    {
      os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      if (*(a1 + 16))
      {
        v8 = *(a1 + 16);
      }
    }

    else if (*(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v16 = *__error();
    v10 = _os_log_send_and_compose_impl();
    v11 = 1290;
    v12 = v7;
LABEL_17:
    Error = createError("cryptex_fcopy_info_plist", "cryptex.c", v11, "com.apple.security.cryptex.posix", v12, 0, v10);
    free(v10);
    goto LABEL_18;
  }

  Error = 0;
LABEL_18:
  v14 = *MEMORY[0x29EDCA608];
  return Error;
}

uint64_t cryptex_attach_personalized_manifest(void *a1, int a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v21 = -1;
  v4 = a1[6];
  if (cryptex_core_get_asset())
  {
    v5 = a1[2];
    v6 = *__error();
    v7 = a1[4];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = "[anonymous]";
      if (v5)
      {
        v8 = v5;
      }

      *buf = 136446466;
      v24 = v8;
      v25 = 1024;
      v26 = 17;
      _os_log_impl(&dword_2986C0000, v7, OS_LOG_TYPE_ERROR, "%{public}s: This cryptex is already personalized.: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v6;
    v9 = 17;
  }

  else
  {
    v21 = dup(a2);
    if (v21 < 0)
    {
      v9 = *__error();
      v13 = a1[2];
      v14 = *__error();
      v15 = a1[4];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = "[anonymous]";
        if (v13)
        {
          v16 = v13;
        }

        *buf = 136446466;
        v24 = v16;
        v25 = 1024;
        v26 = v9;
        _os_log_impl(&dword_2986C0000, v15, OS_LOG_TYPE_ERROR, "%{public}s: Failed to dup manifest fd.: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v14;
    }

    else
    {
      v22 = cryptex_asset_new();
      if (v22)
      {
        v12 = a1[6];
        cryptex_core_set_asset();
        v9 = 0;
      }

      else
      {
        v17 = a1[2];
        v18 = *__error();
        v19 = a1[4];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = "[anonymous]";
          if (v17)
          {
            v20 = v17;
          }

          *buf = 136446466;
          v24 = v20;
          v25 = 1024;
          v26 = 12;
          _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_ERROR, "%{public}s: Failed to create new asset.: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v18;
        v9 = 12;
      }
    }
  }

  if (v21 != -1 && close(v21) == -1)
  {
    _cryptex_bundle_new_asset_from_object_cold_1(&v22, buf);
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t cryptex_copy_installed_cryptex()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = 45;
    _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Not supported on this platform.: %{darwin.errno}d", v3, 8u);
  }

  *__error() = v0;
  v1 = *MEMORY[0x29EDCA608];
  return 45;
}

uint64_t cryptex_upgrade_stage2(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v5 = _os_log_send_and_compose_impl();
  Error = createError("cryptex_upgrade_stage2", "cryptex.c", 1360, "com.apple.security.cryptex", 10, 0, v5);
  free(v5);
  if (a4 && Error)
  {
    *a4 = CFRetain(Error);
  }

  else if (!Error)
  {
    return 1;
  }

  CFRelease(Error);
  return 0;
}

uint64_t cryptex_upgrade_commit2(uint64_t a1, CFTypeRef *a2)
{
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v3 = _os_log_send_and_compose_impl();
  Error = createError("cryptex_upgrade_commit2", "cryptex.c", 1382, "com.apple.security.cryptex", 10, 0, v3);
  free(v3);
  if (a2 && Error)
  {
    *a2 = CFRetain(Error);
  }

  else if (!Error)
  {
    return 1;
  }

  CFRelease(Error);
  return 0;
}

uint64_t cryptex_upgrade_abort2(uint64_t a1, CFTypeRef *a2)
{
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v3 = _os_log_send_and_compose_impl();
  Error = createError("cryptex_upgrade_abort2", "cryptex.c", 1404, "com.apple.security.cryptex", 10, 0, v3);
  free(v3);
  if (a2 && Error)
  {
    *a2 = CFRetain(Error);
  }

  else if (!Error)
  {
    return 1;
  }

  CFRelease(Error);
  return 0;
}

uint64_t _cryptex_identity_init_from_dict(void *a1, NSObject *a2, uint64_t a3, int a4)
{
  v62 = *MEMORY[0x29EDCA608];
  v55 = 0;
  v8 = _xpc_plist_value_copy(&_ap_boardid, a1);
  if (!v8)
  {
    v9 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v57 = "ApBoardID";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v9;
  }

  v10 = _xpc_plist_value_copy(&_ap_chipid, a1);
  if (!v10)
  {
    v11 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v57 = "ApChipID";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v11;
  }

  v12 = _xpc_plist_value_copy(&_ap_security_domain, a1);
  if (!v12)
  {
    v21 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v57 = "ApSecurityDomain";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v21;
    if (a4)
    {
      goto LABEL_11;
    }

LABEL_28:
    v13 = 0;
    v15 = 0;
    v17 = 0;
    v20 = 0;
    goto LABEL_32;
  }

  if (!a4)
  {
    goto LABEL_28;
  }

LABEL_11:
  v13 = _xpc_plist_value_copy(&_cryptex1_chip, a1);
  if (!v13)
  {
    v14 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v57 = "Cryptex1,ChipID";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v14;
  }

  v15 = _xpc_plist_value_copy(&_cryptex1_type, a1);
  if (!v15)
  {
    v16 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v57 = "Cryptex1,Type";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v16;
  }

  v17 = _xpc_plist_value_copy(&_cryptex1_styp_0, a1);
  if (!v17)
  {
    v18 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v57 = "Cryptex1,SubType";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v18;
  }

  v19 = _xpc_plist_value_copy(&_cryptex1_product_class, a1);
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v22 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v57 = "Cryptex1,ProductClass";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    v20 = 0;
    *__error() = v22;
  }

LABEL_32:
  if (v8)
  {
    v23 = v10 == 0;
  }

  else
  {
    v23 = 1;
  }

  v25 = !v23 && v12 != 0;
  if (v25 != ((v8 | v10 | v12) != 0))
  {
    v26 = *__error();
    if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 67109120;
    LODWORD(v57) = 22;
    v27 = "build identity device identifiers incomplete: %{darwin.errno}d";
    goto LABEL_44;
  }

  if ((!v15 || !v17 || !v20) && (v13 || v15 || v17 || v20))
  {
    v26 = *__error();
    if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
    {
LABEL_45:
      *__error() = v26;
      v28 = 22;
      if (!v20)
      {
        goto LABEL_92;
      }

LABEL_91:
      os_release(v20);
      goto LABEL_92;
    }

    *buf = 67109120;
    LODWORD(v57) = 22;
    v27 = "build identity cryptex1 identifiers incomplete: %{darwin.errno}d";
LABEL_44:
    _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_ERROR, v27, buf, 8u);
    goto LABEL_45;
  }

  if (v8 | v10 | v12)
  {
    string_ptr = xpc_string_get_string_ptr(v8);
    v30 = _strtou32(string_ptr, &v55, 0);
    if (v55 && *v55)
    {
      v31 = *__error();
      if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315650;
      v57 = "ApBoardID";
      v58 = 2112;
      v59 = v8;
      v60 = 1024;
      v61 = 214;
      goto LABEL_89;
    }

    v39 = xpc_string_get_string_ptr(v10);
    v40 = _strtou32(v39, &v55, 0);
    if (v55 && *v55)
    {
      v31 = *__error();
      if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315650;
      v57 = "ApChipID";
      v58 = 2112;
      v59 = v10;
      v60 = 1024;
      v61 = 214;
      goto LABEL_89;
    }

    HIDWORD(v54) = v40;
    v41 = xpc_string_get_string_ptr(v12);
    v42 = _strtou32(v41, &v55, 0);
    if (v55 && *v55)
    {
      v31 = *__error();
      if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315650;
      v57 = "ApSecurityDomain";
      v58 = 2112;
      v59 = v12;
      v60 = 1024;
      v61 = 214;
      goto LABEL_89;
    }

    v53 = v42;
    LODWORD(v54) = v30;
    v33 = 0;
    if (v13)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v32 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "build identity has no device identifiers", buf, 2u);
    }

    v54 = 0;
    v53 = 0;
    *__error() = v32;
    v33 = 1;
    if (v13)
    {
      goto LABEL_79;
    }
  }

  if (!v15 && !v17 && !v20)
  {
    v51 = v33;
    v52 = a3;
    v49 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "build identity has no cryptex1 identifiers", buf, 2u);
    }

    v34 = __error();
    v35 = 0;
    value = 0;
    v37 = 0;
    v38 = 0;
    *v34 = v49;
    goto LABEL_106;
  }

LABEL_79:
  if (v13)
  {
    v43 = v33 | 6;
    v44 = xpc_string_get_string_ptr(v13);
    v45 = _strtou32(v44, &v55, 0);
    if (v55 && *v55)
    {
      v31 = *__error();
      if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315650;
      v57 = "Cryptex1,ChipID";
      v58 = 2112;
      v59 = v13;
      v60 = 1024;
      v61 = 214;
      goto LABEL_89;
    }
  }

  else
  {
    v45 = 0;
    v43 = v33 | 2;
  }

  v50 = v45;
  v51 = v43;
  v52 = a3;
  value = xpc_int64_get_value(v15);
  v37 = xpc_int64_get_value(v17);
  v46 = xpc_string_get_string_ptr(v20);
  v38 = _strtou32(v46, &v55, 0);
  if (v55)
  {
    v35 = v50;
    if (*v55)
    {
      v31 = *__error();
      if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315650;
      v57 = "Cryptex1,ProductClass";
      v58 = 2112;
      v59 = v20;
      v60 = 1024;
      v61 = 214;
LABEL_89:
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_ERROR, "invalid %s value: %@: %{darwin.errno}d", buf, 0x1Cu);
LABEL_90:
      *__error() = v31;
      v28 = 214;
      if (!v20)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  else
  {
    v35 = v50;
  }

LABEL_106:
  v28 = 0;
  *v52 = 1;
  *(v52 + 8) = v51;
  *(v52 + 16) = v54;
  *(v52 + 24) = v53;
  *(v52 + 28) = v35;
  *(v52 + 32) = value;
  *(v52 + 36) = v37;
  *(v52 + 40) = v38;
  *(v52 + 44) = 0;
  if (v20)
  {
    goto LABEL_91;
  }

LABEL_92:
  if (v17)
  {
    os_release(v17);
  }

  if (v15)
  {
    os_release(v15);
  }

  if (v13)
  {
    os_release(v13);
  }

  if (v12)
  {
    os_release(v12);
  }

  if (v10)
  {
    os_release(v10);
  }

  if (v8)
  {
    os_release(v8);
  }

  v47 = *MEMORY[0x29EDCA608];
  return v28;
}

CFIndex cryptex_install(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (cryptex_install2(a1, a2, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_personalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = __cryptex_personalize_block_invoke;
  v9[3] = &__block_descriptor_tmp_2;
  v9[4] = a7;
  v9[5] = a6;
  if (cryptex_personalize2(a1, a2, a3, a4, &v10, a5, v9))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(v10);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return TopLevelPosixError;
}

uint64_t __cryptex_personalize_block_invoke(uint64_t a1, const void *TopLevelPosixError, uint64_t a3)
{
  if (TopLevelPosixError)
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(TopLevelPosixError);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  return v6(a3, TopLevelPosixError, v5);
}

CFErrorRef cryptex_fcopy_personalized_manifest(uint64_t a1, int a2)
{
  result = cryptex_fcopy_personalized_manifest2(a1, a2);
  if (result)
  {
    v3 = result;
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(result);
    CFRelease(v3);
    return TopLevelPosixError;
  }

  return result;
}

CFIndex cryptex_upgrade_abort(uint64_t a1)
{
  cf = 0;
  if (cryptex_upgrade_abort2(a1, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_upgrade_stage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (cryptex_upgrade_stage2(a1, a2, a3, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_upgrade_commit(uint64_t a1)
{
  cf = 0;
  if (cryptex_upgrade_commit2(a1, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void _cryptex_personalize2_callback(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v4 = a1[4];
  v3 = a1[5];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___cryptex_personalize2_callback_block_invoke;
  v5[3] = &unk_29EEA7A38;
  v5[4] = v3;
  v5[5] = v2;
  v5[6] = v1;
  v5[7] = a1;
  dispatch_async(v4, v5);
  if (v4)
  {
    os_release(v4);
  }
}

void ___cryptex_personalize2_callback_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(a1[4] + 16))();
  v4 = a1[4];
  if (v4)
  {
    os_release(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];

  ctx_destroy(v6);
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

id _remote_service_log()
{
  if (_remote_service_log_onceToken != -1)
  {
    _remote_service_log_cold_1();
  }

  v1 = _remote_service_log_osl;

  return v1;
}

void sub_2986DD38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  free(v12);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t cryptex_remote_service_nonce_get_nonce(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_service_nonce_get_nonce_cold_1();
  }

  v2 = v1;
  v3 = [v1 nonce];

  return v3;
}

void cryptex_remote_service_nonce_attr_set_image_type(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v4 = v3;
  [v3 setImage_type:a2];
}

void cryptex_remote_service_nonce_attr_set_persistence(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v4 = v3;
  [v3 setPersistence:a2];
}

void cryptex_remote_service_nonce_attr_set_ndom_handle(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v4 = v3;
  [v3 setNdom_handle:a2];
}

void cryptex_remote_service_nonce_attr_set_cryptex(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v5 = v4;
  if (!v4)
  {
    cryptex_remote_service_nonce_attr_set_cryptex_cold_2();
  }

  v6 = _cryptex_get_core(v4);
  [v3 setImage_type:cryptex_get_image_type(v5)];
  if ([v3 image_type] == 2)
  {
    if (cryptex_core_get_nonce_domain_handle())
    {
      cryptex_remote_service_nonce_attr_set_cryptex_cold_1();
    }

    [v3 setNdom_handle:0];
  }
}

uint64_t cryptex_remote_service_nonce_attr_get_nonce_domain(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v2 = v1;
  v3 = [v1 getNonceDomainIndex];
  v4 = *__error();
  v5 = _remote_service_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218496;
    v10 = [v2 image_type];
    v11 = 2048;
    v12 = [v2 persistence];
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&dword_2986C0000, v5, OS_LOG_TYPE_DEBUG, "nonce attr [image_type = %llu, persistence = %llu] => domain index: %llu", &v9, 0x20u);
  }

  *__error() = v4;
  nonce_domain_from_index = _img4_get_nonce_domain_from_index(v3);

  v7 = *MEMORY[0x29EDCA608];
  return nonce_domain_from_index;
}

BOOL cryptex_remote_service_copy_device_identifier2(void *a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x29EDCA608];
  v5 = a1;
  if (!v5)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  if (!a2)
  {
    cryptex_remote_service_copy_device_identifier2_cold_1();
  }

  v6 = v5;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  memset(v60, 0, sizeof(v60));
  LOWORD(v60[0]) = 6;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy_;
  v54 = __Block_byref_object_dispose_;
  v55 = 0;
  if ([v5 supportsFeature:"ReadIdentifiers"])
  {
    personalization_identifiers_request = remote_service_create_personalization_identifiers_request();
    v8 = [v6 internal_queue];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __cryptex_remote_service_copy_device_identifier2_block_invoke;
    block[3] = &unk_29EEA7A60;
    v48 = &v56;
    v46 = v6;
    v9 = personalization_identifiers_request;
    v47 = v9;
    v49 = &v50;
    dispatch_sync(v8, block);

    if (v57[3])
    {
      v10 = *__error();
      v11 = _remote_service_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v57[3];
        *buf = 138412290;
        v62 = v12;
        _os_log_impl(&dword_2986C0000, v11, OS_LOG_TYPE_ERROR, "personalization identifier request failed: %@", buf, 0xCu);
      }

LABEL_18:

      *__error() = v10;
      v28 = 0;
      goto LABEL_38;
    }

    v26 = img4_chip_instance_from_xpc(v51[5], v60);
    v57[3] = v26;
    if (v26)
    {
      v10 = *__error();
      v11 = _remote_service_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v27 = v57[3];
        *buf = 138412290;
        v62 = v27;
        _os_log_impl(&dword_2986C0000, v11, OS_LOG_TYPE_ERROR, "failed to decode AppleImage4 chip instance.: %@", buf, 0xCu);
      }

      goto LABEL_18;
    }

    v13 = v46;
    goto LABEL_25;
  }

  v13 = v6;
  v14 = [v13 device];
  v15 = remote_device_get_state() == 2;

  if (!v15)
  {
    v22 = _remote_service_log();

    if (v22)
    {
      v23 = _remote_service_log();
      os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      v24 = [v13 device];
      name = remote_device_get_name();
      *buf = 136446210;
      v62 = name;
      v21 = _os_log_send_and_compose_impl();
    }

    else
    {
      v29 = MEMORY[0x29EDCA988];
      v30 = [v13 device];
      v31 = remote_device_get_name();
      *buf = 136446210;
      v62 = v31;
      v21 = _os_log_send_and_compose_impl();

      v23 = MEMORY[0x29EDCA988];
    }

    Error = createError("_cryptex_remote_service_copy_device_identifier_from_rsd", "remote_service.m", 396, "com.apple.security.cryptex", 19, 0, v21);
    goto LABEL_30;
  }

  v16 = [v13 device];
  v17 = remote_device_copy_properties();

  if (!v17)
  {
    v33 = _remote_service_log();

    if (v33)
    {
      v34 = _remote_service_log();
      os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v21 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v21 = _os_log_send_and_compose_impl();
    }

    Error = createError("_cryptex_remote_service_copy_device_identifier_from_rsd", "remote_service.m", 405, "com.apple.security.cryptex", 19, 0, v21);
LABEL_30:
    v28 = Error;
    v17 = 0;
    goto LABEL_31;
  }

  v18 = _img4_chip_instance_from_remote_device_properties(v17, v60);
  if (!v18)
  {

    v9 = 0;
LABEL_25:

LABEL_35:
    v28 = 0;
    *a2 = [[CryptexRemoteDeviceIdentifier alloc] initWithChipInstance:v60];
    goto LABEL_38;
  }

  v19 = _remote_service_log();

  if (v19)
  {
    v20 = _remote_service_log();
    os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    *buf = 67109120;
    LODWORD(v62) = v18;
    v21 = _os_log_send_and_compose_impl();
  }

  else
  {
    *buf = 67109120;
    LODWORD(v62) = v18;
    v21 = _os_log_send_and_compose_impl();
  }

  v28 = createError("_cryptex_remote_service_copy_device_identifier_from_rsd", "remote_service.m", 416, "com.apple.security.cryptex.posix", v18, 0, v21);
LABEL_31:
  free(v21);

  if (!v28)
  {
    v9 = 0;
    goto LABEL_35;
  }

  v35 = _remote_service_log();

  if (v35)
  {
    v36 = _remote_service_log();
    os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    *buf = 0;
    v37 = _os_log_send_and_compose_impl();
  }

  else
  {
    *buf = 0;
    v37 = _os_log_send_and_compose_impl();
  }

  v38 = createError("cryptex_remote_service_copy_device_identifier2", "remote_service.m", 551, "com.apple.security.cryptex", 19, v28, v37);
  free(v37);
  v9 = 0;
  v57[3] = v38;
LABEL_38:
  v39 = v57;
  if (a3)
  {
    v40 = v57[3];
    if (v40)
    {
      v40 = CFRetain(v40);
      v39 = v57;
    }

    *a3 = v40;
  }

  v41 = v39[3];
  _Block_object_dispose(&v50, 8);

  if (v28)
  {
    CFRelease(v28);
  }

  _Block_object_dispose(&v56, 8);
  v42 = v57[3];
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *MEMORY[0x29EDCA608];
  return v41 == 0;
}

void sub_2986DE26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26)
{
  free(v26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  v28 = *(a26 + 24);
  if (v28)
  {
    CFRelease(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __cryptex_remote_service_copy_device_identifier2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

uint64_t cryptex_remote_device_identifier_get_chip_inst(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_service_copy_device_identifier2_cold_1();
  }

  v2 = v1;
  v3 = [v1 inst];

  return v3;
}

uint64_t cryptex_remote_cryptex_get_identifier(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_cryptex_get_identifier_cold_1();
  }

  v2 = v1;
  v3 = [v1 identifier];

  return v3;
}

uint64_t cryptex_remote_cryptex_get_version_string(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_cryptex_get_identifier_cold_1();
  }

  v2 = v1;
  v3 = [v1 version];

  return v3;
}

void cryptex_remote_array_apply(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    cryptex_remote_array_apply_cold_2();
  }

  v5 = v4;
  if (!v4)
  {
    cryptex_remote_array_apply_cold_1();
  }

  v6 = [v3 array];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __cryptex_remote_array_apply_block_invoke;
  v8[3] = &unk_29EEA7A88;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

uint64_t __cryptex_remote_array_apply_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = result ^ 1;
  return result;
}

uint64_t cryptex_remote_array_get_count(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_array_apply_cold_2();
  }

  v2 = v1;
  v3 = [v1 array];
  v4 = [v3 count];

  return v4;
}

CryptexRemoteService *cryptex_remote_service_create(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    cryptex_remote_service_create_cold_2();
  }

  v7 = v6;
  if (!v6)
  {
    cryptex_remote_service_create_cold_1();
  }

  v8 = [[CryptexRemoteService alloc] initWithDevice:v5 queue:v6 flags:a3];

  return v8;
}

BOOL cryptex_remote_service_copy_nonce2(void *a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x29EDCA608];
  v7 = a1;
  v8 = a2;
  if (!v7)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  v9 = v8;
  if (!v8)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  if (!a3)
  {
    cryptex_remote_service_nonce_get_nonce_cold_1();
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  if ([v8 image_type] == 2)
  {
    [v9 ndom_handle];
    nonce_handle_request = remote_service_create_nonce_handle_request();
  }

  else
  {
    [v9 getNonceDomainIndex];
    nonce_handle_request = remote_service_create_nonce_index_request();
  }

  v11 = nonce_handle_request;
  v12 = [v7 internal_queue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __cryptex_remote_service_copy_nonce2_block_invoke;
  block[3] = &unk_29EEA7A60;
  v34 = &v42;
  v13 = v7;
  v32 = v13;
  v14 = v11;
  v33 = v14;
  v35 = &v36;
  dispatch_sync(v12, block);

  if (v43[3])
  {
    v15 = *__error();
    v16 = _remote_service_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v43[3];
      *buf = 138412290;
      v47 = v17;
      _os_log_impl(&dword_2986C0000, v16, OS_LOG_TYPE_ERROR, "remote service copy nonce request failed: %@", buf, 0xCu);
    }

    *__error() = v15;
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(v37[5], "nonce", &length);
    if (*data)
    {
      v19 = _remote_service_log();

      if (v19)
      {
        v20 = _remote_service_log();
        os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        v21 = *data;
        *buf = 67109120;
        LODWORD(v47) = v21;
        v22 = _os_log_send_and_compose_impl();
      }

      else
      {
        v23 = *data;
        *buf = 67109120;
        LODWORD(v47) = v23;
        v22 = _os_log_send_and_compose_impl();
      }

      Error = createError("cryptex_remote_service_copy_nonce2", "remote_service.m", 668, "com.apple.security.cryptex", 10, 0, v22);
      free(v22);
      v43[3] = Error;
    }

    else
    {
      *a3 = [[CryptexRemoteServiceNonce alloc] initWithNonce:data];
    }
  }

  v25 = v43;
  if (a4)
  {
    v26 = v43[3];
    if (v26)
    {
      v26 = CFRetain(v26);
      v25 = v43;
    }

    *a4 = v26;
  }

  v27 = v25[3] == 0;

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  v28 = *MEMORY[0x29EDCA608];
  return v27;
}

void sub_2986DEA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  free(v21);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void __cryptex_remote_service_copy_nonce2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

BOOL cryptex_remote_service_roll_nonce2(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  v7 = v6;
  if (!v6)
  {
    cryptex_remote_service_roll_nonce2_cold_1();
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = 0;
  if ([v6 image_type] == 2)
  {
    [v7 ndom_handle];
    roll_nonce_handle_request = remote_service_create_roll_nonce_handle_request();
  }

  else
  {
    [v7 getNonceDomainIndex];
    roll_nonce_handle_request = remote_service_create_roll_nonce_index_request();
  }

  v9 = roll_nonce_handle_request;
  v10 = [v5 internal_queue];
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __cryptex_remote_service_roll_nonce2_block_invoke;
  v22[3] = &unk_29EEA7A60;
  v25 = &v29;
  v11 = v5;
  v23 = v11;
  v12 = v9;
  v24 = v12;
  v26 = v27;
  dispatch_sync(v10, v22);

  v13 = v30;
  if (v30[3])
  {
    v14 = *__error();
    v15 = _remote_service_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v30[3];
      *buf = 138412290;
      v34 = v16;
      _os_log_impl(&dword_2986C0000, v15, OS_LOG_TYPE_ERROR, "remote service roll nonce request failed: %@", buf, 0xCu);
    }

    *__error() = v14;
    v13 = v30;
  }

  if (a3)
  {
    v17 = v13[3];
    if (v17)
    {
      v17 = CFRetain(v17);
      v13 = v30;
    }

    *a3 = v17;
  }

  v18 = v13[3];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
  v19 = v30[3];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v18 == 0;
}

void sub_2986DED78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  v25 = *(a24 + 24);
  if (v25)
  {
    CFRelease(v25);
  }

  _Unwind_Resume(a1);
}

void __cryptex_remote_service_roll_nonce2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

BOOL cryptex_remote_service_install2(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v76 = *MEMORY[0x29EDCA608];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v55 = v9;
  if (!v9)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  if (!v10)
  {
    cryptex_remote_service_nonce_attr_set_cryptex_cold_2();
  }

  if (!v11)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v57 = v11;
  if (!a5)
  {
    cryptex_remote_cryptex_get_identifier_cold_1();
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy_;
  v68 = __Block_byref_object_dispose_;
  v69 = 0;
  v12 = _cryptex_get_core(v10);
  image_asset = cryptex_core_get_image_asset();
  v14 = image_asset;
  if (!image_asset)
  {
    v23 = _remote_service_log();

    if (v23)
    {
      v24 = _remote_service_log();
      os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v25 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v25 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_remote_service_install2", "remote_service.m", 764, "com.apple.security.cryptex", 11, 0, v25);
    goto LABEL_39;
  }

  v15 = *(image_asset + 16);
  dup_np();
  v16 = *(*(v14 + 8) + 24);
  tc_asset = cryptex_core_get_tc_asset();
  if (!tc_asset)
  {
    v26 = _remote_service_log();

    if (v26)
    {
      v27 = _remote_service_log();
      os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v25 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v25 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_remote_service_install2", "remote_service.m", 775, "com.apple.security.cryptex", 11, 0, v25);
    goto LABEL_39;
  }

  v18 = *(tc_asset + 16);
  dup_np();
  asset = cryptex_core_get_asset();
  if (!asset)
  {
    v28 = _remote_service_log();

    if (v28)
    {
      v29 = _remote_service_log();
      os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v25 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v25 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_remote_service_install2", "remote_service.m", 785, "com.apple.security.cryptex", 11, 0, v25);
LABEL_39:
    v48 = Error;
    free(v25);
    v33 = 0;
    v34 = 0;
    v39 = 0;
    v47 = 0;
    v71[3] = v48;
    goto LABEL_40;
  }

  v20 = *(asset + 16);
  dup_np();
  info_asset = cryptex_core_get_info_asset();
  if (info_asset)
  {
    v22 = *(info_asset + 16);
    dup_np();
  }

  volumehash_asset = cryptex_core_get_volumehash_asset();
  if (volumehash_asset)
  {
    v32 = *(volumehash_asset + 16);
    dup_np();
  }

  if (cryptex_core_is_cryptex1())
  {
    v33 = cryptex_core_get_cryptex1_properties();
    v34 = cryptex_core_cx1_copy_xpc_dictionary();
  }

  else
  {
    v34 = xpc_dictionary_create(0, 0, 0);
    v33 = 0;
  }

  persistence = _cryptex_attr_get_persistence(v57);
  if (persistence == 2)
  {
    v36 = 2;
  }

  else
  {
    v36 = persistence == 1;
  }

  nonce_persistence = _cryptex_attr_get_nonce_persistence(v57);
  _cryptex_attr_get_authentication(v57);
  v63 = 0;
  install_request = remote_service_create_install_request();
  v39 = 0;
  v71[3] = install_request;
  if (install_request)
  {
    v40 = *__error();
    v41 = _remote_service_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = v71[3];
      *buf = 138412290;
      v75 = v42;
      _os_log_impl(&dword_2986C0000, v41, OS_LOG_TYPE_ERROR, "failed to create remote service install request: %@", buf, 0xCu);
    }

    v43 = __error();
LABEL_34:
    v47 = 0;
    *v43 = v40;
    goto LABEL_40;
  }

  v44 = [v55 internal_queue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __cryptex_remote_service_install2_block_invoke;
  block[3] = &unk_29EEA7A60;
  v61 = &v70;
  v59 = v55;
  v39 = v39;
  v60 = v39;
  v62 = &v64;
  dispatch_sync(v44, block);

  if (v71[3])
  {
    v40 = *__error();
    v45 = _remote_service_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = v71[3];
      *buf = 138412290;
      v75 = v46;
      _os_log_impl(&dword_2986C0000, v45, OS_LOG_TYPE_ERROR, "remote service install request failed: %@", buf, 0xCu);
    }

    v43 = __error();
    goto LABEL_34;
  }

  v47 = xpc_dictionary_get_dictionary(v65[5], "remote-cryptex");
  *a5 = [[CryptexRemoteObject alloc] initWithDesc:v47];
LABEL_40:
  v49 = v71;
  if (a6)
  {
    v50 = v71[3];
    if (v50)
    {
      v50 = CFRetain(v50);
      v49 = v71;
    }

    *a6 = v50;
  }

  v51 = v49[3];

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v70, 8);
  v52 = v71[3];
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = *MEMORY[0x29EDCA608];
  return v51 == 0;
}

void sub_2986DF5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  v29 = *(*(v27 - 152) + 24);
  if (v29)
  {
    CFRelease(v29);
  }

  _Unwind_Resume(a1);
}

void __cryptex_remote_service_install2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

BOOL cryptex_remote_service_uninstall2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = *MEMORY[0x29EDCA608];
  v7 = a1;
  if (!v7)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  if (!a2)
  {
    cryptex_remote_service_uninstall2_cold_1();
  }

  v8 = v7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = 0;
  uninstall_request = remote_service_create_uninstall_request();
  v10 = [v8 internal_queue];
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __cryptex_remote_service_uninstall2_block_invoke;
  v22[3] = &unk_29EEA7A60;
  v25 = &v29;
  v11 = v8;
  v23 = v11;
  v12 = uninstall_request;
  v24 = v12;
  v26 = v27;
  dispatch_sync(v10, v22);

  v13 = v30;
  if (v30[3])
  {
    v14 = *__error();
    v15 = _remote_service_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v30[3];
      *buf = 138412290;
      v34 = v16;
      _os_log_impl(&dword_2986C0000, v15, OS_LOG_TYPE_ERROR, "remote service uninstall request failed: %@", buf, 0xCu);
    }

    *__error() = v14;
    v13 = v30;
  }

  if (a5)
  {
    v17 = v13[3];
    if (v17)
    {
      v17 = CFRetain(v17);
      v13 = v30;
    }

    *a5 = v17;
  }

  v18 = v13[3];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
  v19 = v30[3];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v18 == 0;
}

void sub_2986DF928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  v25 = *(a24 + 24);
  if (v25)
  {
    CFRelease(v25);
  }

  _Unwind_Resume(a1);
}

void __cryptex_remote_service_uninstall2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

BOOL cryptex_remote_service_copy_installed2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x29EDCA608];
  v6 = a1;
  if (!v6)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  if (!a3)
  {
    cryptex_remote_service_copy_installed2_cold_1();
  }

  v7 = v6;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v8 = [MEMORY[0x29EDB8DE8] array];
  copy_installed_request = remote_service_create_copy_installed_request();
  v10 = [v7 internal_queue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __cryptex_remote_service_copy_installed2_block_invoke;
  block[3] = &unk_29EEA7A60;
  v33 = &v41;
  v11 = v7;
  v31 = v11;
  v12 = copy_installed_request;
  v32 = v12;
  v34 = &v35;
  dispatch_sync(v10, block);

  if (v42[3])
  {
    v13 = *__error();
    v14 = _remote_service_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = v42[3];
      *buf = 138412290;
      v46 = v15;
      _os_log_impl(&dword_2986C0000, v14, OS_LOG_TYPE_ERROR, "remote service install request failed: %@", buf, 0xCu);
    }

    v16 = 0;
    *__error() = v13;
  }

  else if (_xpc_dictionary_key_with_type_exists(v36[5], "remote-cryptex-array", MEMORY[0x29EDCA9E0]))
  {
    v16 = xpc_dictionary_get_array(v36[5], "remote-cryptex-array");
    applier[0] = MEMORY[0x29EDCA5F8];
    applier[1] = 3221225472;
    applier[2] = __cryptex_remote_service_copy_installed2_block_invoke_152;
    applier[3] = &unk_29EEA7AB0;
    v17 = v8;
    v29 = v17;
    xpc_array_apply(v16, applier);

    *a3 = [[CryptexRemoteObjectArray alloc] initWithArray:v17];
  }

  else
  {
    v18 = _remote_service_log();

    if (v18)
    {
      v19 = _remote_service_log();
      os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v46 = "remote-cryptex-array";
      v20 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 136446210;
      v46 = "remote-cryptex-array";
      v20 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_remote_service_copy_installed2", "remote_service.m", 952, "com.apple.security.cryptex", 16, 0, v20);
    free(v20);
    v16 = 0;
    v42[3] = Error;
  }

  v22 = v42;
  if (a4)
  {
    v23 = v42[3];
    if (v23)
    {
      v23 = CFRetain(v23);
      v22 = v42;
    }

    *a4 = v23;
  }

  v24 = v22[3];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);
  v25 = v42[3];
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *MEMORY[0x29EDCA608];
  return v24 == 0;
}

void sub_2986DFE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  free(v25);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v26 - 160), 8);
  v28 = *(*(v26 - 152) + 24);
  if (v28)
  {
    CFRelease(v28);
  }

  _Unwind_Resume(a1);
}

void __cryptex_remote_service_copy_installed2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

uint64_t __cryptex_remote_service_copy_installed2_block_invoke_152(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[CryptexRemoteObject alloc] initWithDesc:v4];

  [*(a1 + 32) addObject:v5];
  return 1;
}

CFIndex cryptex_remote_service_copy_device_identifier(void *a1, void *a2)
{
  v3 = a1;
  cf = 0;
  if (cryptex_remote_service_copy_device_identifier2(v3, a2, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986DFFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex cryptex_remote_service_copy_nonce(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  cf = 0;
  if (cryptex_remote_service_copy_nonce2(v5, v6, a3, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986E008C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex cryptex_remote_service_roll_nonce(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  cf = 0;
  if (cryptex_remote_service_roll_nonce2(v3, v4, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986E012C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex cryptex_remote_service_install(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  cf = 0;
  if (cryptex_remote_service_install2(v8, v9, v10, v11, a5, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986E01E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex cryptex_remote_service_uninstall(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  cf = 0;
  if (cryptex_remote_service_uninstall2(v5, a2, a3, v6, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986E0280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex cryptex_remote_service_copy_installed(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  cf = 0;
  if (cryptex_remote_service_copy_installed2(v4, v5, a3, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986E0308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___remote_service_log_block_invoke()
{
  _remote_service_log_osl = os_log_create("com.apple.libcryptex", "remote_service_client");

  return MEMORY[0x2A1C71028]();
}

uint64_t session_create()
{
  v0 = session_core_create();

  return session_create_from_core(v0);
}

uint64_t session_set_homedir_size(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 22;
  }

  result = 0;
  *(v2 + 64) = a2;
  return result;
}

void _session_dealloc(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    session_send_exit_message(v2);
    xpc_connection_cancel(*(a1 + 80));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    _Block_release(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    xpc_release(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    dispatch_release(v5);
  }

  os_release(*(a1 + 40));

  object_proto_destroy(a1 + 16);
}

void session_send_exit_message(_xpc_connection_s *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "REMOVE", 1);
  xpc_connection_send_message(a1, v2);
  if (v2)
  {

    os_release(v2);
  }
}

uint64_t session_activate(uint64_t a1)
{
  v46 = *MEMORY[0x29EDCA608];
  v16 = -1;
  v2 = *(a1 + 40);
  v3 = cryptex_session_core_copy_xpc_object();
  if (MEMORY[0x29C28F4F0]() != MEMORY[0x29EDCAA00])
  {
    __break(1u);
  }

  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v21 = 32;
  v4 = daemon_for_session_subsystem(&v16);
  v5 = 0;
  if (!v16)
  {
    _cryptex_actor_init_invoke_u64();
    session_activate_pack();
    v16 = cryptex_actor_trap();
    if (v16)
    {
      v6 = v4[2];
      v7 = *__error();
      v8 = v4[4];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = "[anonymous]";
        if (v6)
        {
          v9 = v6;
        }

        *buf = 136446466;
        v18 = v9;
        v19 = 1024;
        v20 = v16;
        v10 = "%{public}s: rpc failed for session create: %{darwin.errno}d";
LABEL_13:
        _os_log_impl(&dword_2986C0000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v16 = session_activate_reply_unpack();
    if (v16)
    {
      v11 = v4[2];
      v7 = *__error();
      v8 = v4[4];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = "[anonymous]";
        if (v11)
        {
          v12 = v11;
        }

        *buf = 136446466;
        v18 = v12;
        v19 = 1024;
        v20 = v16;
        v10 = "%{public}s: rpc_unpack failed for session_create_reply: %{darwin.errno}d";
        goto LABEL_13;
      }

LABEL_14:
      v5 = 0;
      *__error() = v7;
      goto LABEL_15;
    }

    v5 = cryptex_session_core_create_from_xpc();
    cryptex_session_core_merge();
    *(v2 + 88) = xpc_copy(v5[11]);
    session_activate_endpoint(a1);
    xpc_release(0);
  }

LABEL_15:
  v13 = v16;
  rpc_destroy(&v21);
  rpc_destroy(v44);
  if (v3)
  {
    os_release(v3);
  }

  if (v4)
  {
    os_release(v4);
  }

  if (v5)
  {
    os_release(v5);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t session_iter_list()
{
  v42 = *MEMORY[0x29EDCA608];
  v12 = -1;
  xarray = 0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v17 = 32;
  v0 = daemon_for_session_subsystem(&v12);
  if (!v12)
  {
    _cryptex_actor_init_invoke_u64();
    session_list_pack();
    v12 = cryptex_actor_trap();
    if (v12)
    {
      v1 = v0[2];
      v2 = *__error();
      v3 = v0[4];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = "[anonymous]";
        if (v1)
        {
          v4 = v1;
        }

        *buf = 136446466;
        v14 = v4;
        v15 = 1024;
        v16 = v12;
        v5 = "%{public}s: rpc failed for session list: %{darwin.errno}d";
LABEL_12:
        _os_log_impl(&dword_2986C0000, v3, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    v12 = session_list_reply_unpack();
    if (v12)
    {
      v6 = v0[2];
      v2 = *__error();
      v3 = v0[4];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v7 = "[anonymous]";
        if (v6)
        {
          v7 = v6;
        }

        *buf = 136446466;
        v14 = v7;
        v15 = 1024;
        v16 = v12;
        v5 = "%{public}s: rpc_unpack failed for session_list_reply: %{darwin.errno}d";
        goto LABEL_12;
      }

LABEL_13:
      *__error() = v2;
      goto LABEL_14;
    }

    v12 = 0;
  }

LABEL_14:
  v8 = v12;
  rpc_destroy(&v17);
  rpc_destroy(v40);
  if (v0)
  {
    os_release(v0);
  }

  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t __session_iter_list_block_invoke(uint64_t a1)
{
  v2 = cryptex_session_core_create_from_xpc();
  v3 = session_create_from_core(v2);
  session_activate_endpoint(v3);
  if ((*(v3[5] + 120) & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  os_release(v3);
  return 1;
}

uint64_t session_set_event_handler(uint64_t a1, uint64_t a2, NSObject *a3, void *aBlock)
{
  *(a1 + 56) = a2;
  *(a1 + 48) = _Block_copy(aBlock);
  *(a1 + 96) = a3;
  if (a3)
  {
    dispatch_retain(a3);
  }

  if (*(a1 + 80))
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_string(empty, "ACTIVATE", *(*(a1 + 40) + 96));
    xpc_connection_send_message(*(a1 + 80), empty);
    xpc_release(empty);
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "session does not have a valid connection", v8, 2u);
  }

  return 0;
}

int64_t session_send_message(_xpc_connection_s *a1, int64_t a2, void *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "COMMAND", a2);
  if (a3)
  {
    xpc_dictionary_set_value(v6, "PAYLOAD", a3);
  }

  v7 = xpc_connection_send_message_with_reply_sync(a1, v6);
  if (v7)
  {
    v8 = v7;
    if (xpc_dictionary_get_int64(v7, "STATE") == 1)
    {
      v9 = xpc_copy_debug_description();
      int64 = xpc_dictionary_get_int64(v8, "ERROR");
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        v13[0] = 67109378;
        v13[1] = int64;
        v14 = 2080;
        v15 = v9;
        _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "XPC error (code %d) in response to session message: %s", v13, 0x12u);
      }

      free(v9);
    }

    else
    {
      int64 = 0;
    }

    xpc_release(v8);
    if (v6)
    {
LABEL_14:
      os_release(v6);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to get response to session message.", v13, 2u);
    }

    int64 = 61;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return int64;
}

void *cryptex_pack_core_cryptex(uint64_t a1, const char *a2)
{
  image_asset = cryptex_core_get_image_asset();
  tc_asset = cryptex_core_get_tc_asset();
  info_asset = cryptex_core_get_info_asset();
  volumehash_asset = cryptex_core_get_volumehash_asset();
  asset = cryptex_core_get_asset();
  cryptex1_properties = cryptex_core_get_cryptex1_properties();
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (image_asset)
  {
    v12 = *(image_asset + 16);
    if (tc_asset)
    {
LABEL_3:
      v13 = *(tc_asset + 16);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = -1;
    if (tc_asset)
    {
      goto LABEL_3;
    }
  }

  v13 = -1;
LABEL_6:
  if (info_asset)
  {
    v14 = *(info_asset + 16);
  }

  else
  {
    v14 = -1;
  }

  v15 = *(*(a1 + 176) + 24);
  if (!volumehash_asset)
  {
    v16 = -1;
    if (asset)
    {
      goto LABEL_11;
    }

LABEL_13:
    v17 = -1;
    goto LABEL_14;
  }

  v16 = *(volumehash_asset + 16);
  if (!asset)
  {
    goto LABEL_13;
  }

LABEL_11:
  v17 = *(asset + 16);
LABEL_14:
  xpc_dictionary_set_fd(v10, "DMG", v12);
  xpc_dictionary_set_fd(v11, "TCH", v13);
  xpc_dictionary_set_fd(v11, "INF", v14);
  xpc_dictionary_set_fd(v11, "VOLHASH", v16);
  xpc_dictionary_set_fd(v11, "IM4", v17);
  xpc_dictionary_set_int64(v11, "TYPE", v15);
  xpc_dictionary_set_string(v11, "BUNDLEID", a2);
  if (cryptex1_properties)
  {
    v18 = cryptex_core_cx1_copy_xpc_dictionary();
    xpc_dictionary_set_value(v11, "CRYPTEX1_PROPERTIES", v18);
    if (v18)
    {
      os_release(v18);
    }
  }

  return v11;
}

xpc_object_t cryptex_array_pack_from_path(const char *a1, const char *a2, int *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  object = 0;
  cf = 0;
  v20 = -1;
  memset(v28, 0, sizeof(v28));
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "default";
  }

  LOWORD(v28[0]) = 6;
  v6 = xpc_array_create(0, 0);
  img4_chip_select_personalized_ap();
  if (!img4_chip_instantiate())
  {
    v10 = *(&v28[1] + 12);
    v11 = DWORD1(v28[2]);
    v20 = open(a1, 0x100000);
    if (v20 == -1)
    {
      TopLevelPosixError = *__error();
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        cryptex_array_pack_from_path_cold_1(a1);
      }

      v7 = 0;
      goto LABEL_19;
    }

    v7 = cryptex_bundle_create_with_directory(&v20, 0);
    LODWORD(buf) = 1;
    *(&buf + 1) = 0;
    v24 = v10;
    v25 = v11;
    v27 = 0;
    v26 = 0;
    if (cryptex_bundle_copy_cryptex2(v7, &buf, v5, &object, &cf))
    {
      v8 = cryptex_pack_core_cryptex(*(object + 6), v5);
      xpc_array_append_value(v6, v8);
      TopLevelPosixError = 0;
      goto LABEL_20;
    }

    v12 = cf;
    v13 = *__error();
    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = cf;
        v14 = MEMORY[0x29EDCA988];
        v15 = "failed to copy cryptex from bundle: %@";
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 12;
LABEL_17:
        _os_log_impl(&dword_2986C0000, v14, v16, v15, &buf, v17);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      v14 = MEMORY[0x29EDCA988];
      v15 = "failed to copy cryptex from bundle [no error]";
      v16 = OS_LOG_TYPE_DEBUG;
      v17 = 2;
      goto LABEL_17;
    }

    *__error() = v13;
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 0;
  TopLevelPosixError = 71;
LABEL_20:
  *a3 = TopLevelPosixError;
  if (v20 != -1 && close(v20) == -1)
  {
    cryptex_array_pack_from_path_cold_2(&buf, v28);
  }

  if (v7)
  {
    os_release(v7);
  }

  if (object)
  {
    os_release(object);
  }

  if (v8)
  {
    os_release(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v18 = *MEMORY[0x29EDCA608];
  return v6;
}

int64_t session_start(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    return session_send_message(v1, 1, 0);
  }

  else
  {
    return 57;
  }
}

int64_t session_stop(uint64_t a1)
{
  if (*(*(a1 + 40) + 48))
  {
    return session_send_message(*(a1 + 80), 2, 0);
  }

  else
  {
    return 6;
  }
}

uint64_t session_get_stop_reason(uint64_t a1)
{
  if (*(*(a1 + 40) + 48) == 5)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t session_get_stop_code(void *a1)
{
  if (*(a1[5] + 48) == 5 && a1[8] == 2)
  {
    return a1[9];
  }

  else
  {
    return 0;
  }
}

int64_t session_add_cryptex(uint64_t a1, const char *a2, const char *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v23 = -1;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = cryptex_array_pack_from_path(a2, a3, &v23);
  v8 = v23;
  if (!v23)
  {
    xpc_dictionary_set_string(v6, "NAME", *(*(a1 + 40) + 96));
    xpc_dictionary_set_value(v6, "CRYPTEXES", v7);
    count = xpc_array_get_count(v7);
    v12 = *(a1 + 40);
    if (count)
    {
      if (*(v12 + 48) == 1)
      {
        v8 = session_send_message(*(a1 + 80), 3, v6);
      }

      else
      {
        v17 = *(v12 + 16);
        v18 = *__error();
        v19 = *(a1 + 40);
        v20 = *(v19 + 32);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          if (!v17)
          {
            v17 = "[anonymous]";
          }

          v21 = *(v19 + 48);
          v22 = cryptex_session_state_to_string();
          *buf = 136446722;
          v25 = v17;
          v26 = 2080;
          v27 = v22;
          v28 = 1024;
          LODWORD(v29) = 36;
          _os_log_impl(&dword_2986C0000, v20, OS_LOG_TYPE_ERROR, "%{public}s: Cryptexes cannot be added to session in the %s state.: %{darwin.errno}d", buf, 0x1Cu);
        }

        *__error() = v18;
        v8 = 36;
      }
    }

    else
    {
      v13 = *(v12 + 16);
      v14 = *__error();
      v15 = *(*(a1 + 40) + 32);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = "[anonymous]";
        *buf = 136446978;
        if (v13)
        {
          v16 = v13;
        }

        v25 = v16;
        v26 = 2080;
        v27 = a3;
        v28 = 2080;
        v29 = a2;
        v30 = 1024;
        v31 = 2;
        _os_log_impl(&dword_2986C0000, v15, OS_LOG_TYPE_ERROR, "%{public}s: Variant %s not found in %s: %{darwin.errno}d", buf, 0x26u);
      }

      *__error() = v14;
      v8 = 2;
    }
  }

  if (v7)
  {
    os_release(v7);
  }

  if (v6)
  {
    os_release(v6);
  }

  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t session_add_job_override(uint64_t a1, const char *a2, const char *a3, void *a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (!*(v5 + 48))
  {
    empty = xpc_dictionary_create_empty();
    v16 = *(*(a1 + 40) + 80);
    xpc_dictionary_set_value(empty, a3, a4);
    dictionary = xpc_dictionary_get_dictionary(v16, a2);
    if (dictionary)
    {
      v11 = _xpc_plist_merge(dictionary, empty);
      if (!empty)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v20 = xpc_dictionary_create_empty();
      v11 = _xpc_plist_merge(v20, empty);
      xpc_dictionary_set_value(v16, a2, v20);
      xpc_release(v20);
      if (!empty)
      {
        goto LABEL_10;
      }
    }

    os_release(empty);
    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  v7 = *__error();
  v8 = *(a1 + 40);
  v9 = *(v8 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    if (!v6)
    {
      v6 = "[anonymous]";
    }

    v10 = *(v8 + 48);
    v21 = 136446722;
    v22 = v6;
    v23 = 2080;
    v24 = cryptex_session_state_to_string();
    v25 = 1024;
    v26 = 36;
    _os_log_impl(&dword_2986C0000, v9, OS_LOG_TYPE_ERROR, "%{public}s: Job Overrides only allowed in LOCAL, currently in %s: %{darwin.errno}d", &v21, 0x1Cu);
  }

  *__error() = v7;
  v11 = 36;
LABEL_10:
  v18 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t session_add_session_environment(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (*(v3 + 48))
  {
    v4 = *(v3 + 16);
    v5 = *__error();
    v6 = *(a1 + 40);
    v7 = *(v6 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (!v4)
      {
        v4 = "[anonymous]";
      }

      v8 = *(v6 + 48);
      v12 = 136446722;
      v13 = v4;
      v14 = 2080;
      v15 = cryptex_session_state_to_string();
      v16 = 1024;
      v17 = 36;
      _os_log_impl(&dword_2986C0000, v7, OS_LOG_TYPE_ERROR, "%{public}s: ENV Variables only allowed in LOCAL, currently in %s: %{darwin.errno}d", &v12, 0x1Cu);
    }

    *__error() = v5;
    v9 = *MEMORY[0x29EDCA608];
    return 36;
  }

  else
  {
    v11 = *MEMORY[0x29EDCA608];

    return session_add_job_override(a1, "CRYPTEX_SESSION", "EnvironmentVariables", a2);
  }
}

uint64_t session_set_job_environment_override(uint64_t a1, const char *a2, void *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (*(v4 + 48))
  {
    v5 = *(v4 + 16);
    v6 = *__error();
    v7 = *(a1 + 40);
    v8 = *(v7 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (!v5)
      {
        v5 = "[anonymous]";
      }

      v9 = *(v7 + 48);
      v13 = 136446722;
      v14 = v5;
      v15 = 2080;
      v16 = cryptex_session_state_to_string();
      v17 = 1024;
      v18 = 36;
      _os_log_impl(&dword_2986C0000, v8, OS_LOG_TYPE_ERROR, "%{public}s: ENV Variables only allowed in LOCAL, currently in %s: %{darwin.errno}d", &v13, 0x1Cu);
    }

    *__error() = v6;
    v10 = *MEMORY[0x29EDCA608];
    return 36;
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];

    return session_add_job_override(a1, a2, "EnvironmentVariables", a3);
  }
}

uint64_t session_get_uuid(uint64_t a1, uuid_t uu)
{
  v2 = *(a1 + 40);
  v3 = 36;
  if (v2)
  {
    if (*(v2 + 48) == 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = 36;
    }
  }

  uuid_clear(uu);
  return v3;
}

uint64_t session_get_homedir(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return *(v1 + 112);
  }

  else
  {
    return 0;
  }
}

uint64_t session_get_name(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return *(v1 + 96);
  }

  else
  {
    return 0;
  }
}

void _cryptex_attr_dealloc(uint64_t a1)
{
  free(*(a1 + 72));
  free(*(a1 + 80));
  v2 = *(a1 + 96);

  free(v2);
}

uint64_t cryptex_attr_create()
{
  v0 = _cryptex_attr_alloc();
  object_proto_init(v0 + 16, "com.apple.security.libcryptex", "attr");
  return v0;
}

int *cryptex_attr_set_persistence(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v10 = 136446466;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting persistence: %#llx", &v10, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[6] = a2;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

int *cryptex_attr_set_nonce_persistence(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v10 = 136446466;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting nonce persistence: %#llx", &v10, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[7] = a2;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

int *cryptex_attr_set_authentication(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v10 = 136446466;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting authentication: %#llx", &v10, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[8] = a2;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

char *cryptex_attr_set_tss_url(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  free(*(a1 + 72));
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(a2);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(a2);
    if (!result)
    {
      cryptex_attr_set_tss_url_cold_1(a2, &v6, v7);
    }
  }

  *(a1 + 72) = result;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

int *cryptex_attr_set_personalization_flags(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v10 = 136446466;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting personalization flags: %#llx", &v10, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[14] = a2;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

char *cryptex_attr_set_socks_proxy(uint64_t a1, const char *a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  free(*(a1 + 80));
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(a2);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(a2);
    if (!result)
    {
      cryptex_attr_set_tss_url_cold_1(a2, &v8, v9);
    }
  }

  *(a1 + 80) = result;
  *(a1 + 88) = a3;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *cryptex_attr_set_auth_token(uint64_t a1, const void *a2, size_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  free(*(a1 + 96));
  *(a1 + 96) = 0;
  if (a2 && a3)
  {
    v6 = malloc_type_malloc(a3, 0x21F97586uLL);
    v7 = *(a1 + 16);
    v8 = *__error();
    v9 = *(a1 + 32);
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = "[anonymous]";
        if (v7)
        {
          v10 = v7;
        }

        v18 = 136446210;
        v19 = v10;
        _os_log_impl(&dword_2986C0000, v9, OS_LOG_TYPE_DEBUG, "%{public}s: setting auth token", &v18, 0xCu);
      }

      *__error() = v8;
      *(a1 + 96) = v6;
      *(a1 + 104) = a3;
      result = memcpy(v6, a2, a3);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = "[anonymous]";
        if (v7)
        {
          v16 = v7;
        }

        v18 = 136446210;
        v19 = v16;
        _os_log_impl(&dword_2986C0000, v9, OS_LOG_TYPE_ERROR, "%{public}s: failed to alloc buffer", &v18, 0xCu);
      }

      result = __error();
      *result = v8;
    }
  }

  else
  {
    v12 = *(a1 + 16);
    v13 = *__error();
    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = "[anonymous]";
      if (v12)
      {
        v15 = v12;
      }

      v18 = 136446210;
      v19 = v15;
      _os_log_impl(&dword_2986C0000, v14, OS_LOG_TYPE_ERROR, "%{public}s: empty auth token", &v18, 0xCu);
    }

    result = __error();
    *result = v13;
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

int *cryptex_attr_set_mount_flags(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v10 = 136446466;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting mount flags: %#llx", &v10, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[15] = a2;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

int *cryptex_attr_set_uninstall_flags(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v10 = 136446466;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting uninstall flags: %#llx", &v10, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[16] = a2;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cryptex_attr_set_read_write(uint64_t result, int a2)
{
  v2 = 2;
  if (!a2)
  {
    v2 = 0;
  }

  *(result + 40) = *(result + 40) & 0xFFFFFFFFFFFFFFFDLL | v2;
  return result;
}

void _cryptex_su_preboot_bundle_dealloc(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    xpc_release(v2);
  }

  v3 = *(a1 + 48);
  v7 = v3;
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(a1 + 48);
      if (v5 == v3)
      {
        *(a1 + 48) = *v5;
      }

      else
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5 != v3);
        *v6 = *v5;
        v3 = v7;
      }

      *v3 = -1;
      _cryptex_list_elm_destroy(&v7);
      v7 = v4;
      v3 = v4;
    }

    while (v4);
  }

  object_proto_destroy(a1 + 24);
}

uint64_t cryptex_su_preboot_bundle_copy_cryptex()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = 45;
    _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Unsupported on this platform.: %{darwin.errno}d", v3, 8u);
  }

  *__error() = v0;
  v1 = *MEMORY[0x29EDCA608];
  return 45;
}

uint64_t cryptex_su_preboot_bundle_create()
{
  v0 = _cryptex_su_preboot_bundle_alloc();
  object_proto_init(v0 + 24, "com.apple.security.libcryptex", "su_preboot_bundle");
  return v0;
}

void cryptex_inventory_lookup_endpoint(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = 0;
  connection = cryptex_xpc_create_connection();
  request = endpoint_lookup_interface_create_request();
  if (request)
  {
    v4[2](v4, request, 0);
  }

  else
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __cryptex_inventory_lookup_endpoint_block_invoke;
    v7[3] = &unk_29EEA7B00;
    v8 = v4;
    xpc_connection_send_message_with_reply(connection, v9, v3, v7);
  }
}

void __cryptex_inventory_lookup_endpoint_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x29C28F4F0]() == MEMORY[0x29EDCAA00])
  {
    v6 = xpc_dictionary_get_value(v3, "ENDPOINT");
    if (v6)
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    }

    else
    {
      os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
      v7 = _os_log_send_and_compose_impl();
      Error = createError("cryptex_inventory_lookup_endpoint_block_invoke", "inventory.m", 25, "com.apple.security.cryptex", 23, 0, v7);
      free(v7);
      (*(*(a1 + 32) + 16))(*(a1 + 32), Error);
    }
  }

  else
  {
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v4 = _os_log_send_and_compose_impl();
    v5 = createError("cryptex_inventory_lookup_endpoint_block_invoke", "inventory.m", 30, "com.apple.security.cryptex", 23, 0, v4);
    free(v4);
    (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
  }
}

uint64_t _img4_get_nonce_domain_from_index(unint64_t a1)
{
  if (a1 > 0xC || a1 - 1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_29EEA7B40[a1 - 1];
  }
}

uint64_t _img4_chip_instance_from_remote_device_properties(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  string = xpc_dictionary_get_string(a1, "Image4CryptoHashMethod");
  if (!string)
  {
    v9 = *__error();
    if (_img4_log_onceToken != -1)
    {
      _img4_chip_instance_from_remote_device_properties_cold_1();
    }

    v10 = _img4_log_osl;
    if (os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_INFO, "no image4 hash method advertised, falling back to use sha2-384 by default", &v17, 2u);
    }

    *__error() = v9;
    goto LABEL_14;
  }

  v5 = string;
  if (!strcmp(string, "sha1"))
  {
    v11 = MEMORY[0x29EDC96B0];
LABEL_16:
    *(a2 + 8) = v11;
    if (_xpc_dictionary_key_with_type_exists(a1, "BoardId", MEMORY[0x29EDCAA58]))
    {
      *(a2 + 28) = xpc_dictionary_get_uint64(a1, "BoardId");
      if (_xpc_dictionary_key_with_type_exists(a1, "ChipID", MEMORY[0x29EDCAA58]))
      {
        *(a2 + 32) = xpc_dictionary_get_uint64(a1, "ChipID");
        if (_xpc_dictionary_key_with_type_exists(a1, "SecurityDomain", MEMORY[0x29EDCAA58]))
        {
          *(a2 + 36) = xpc_dictionary_get_uint64(a1, "SecurityDomain");
          if (_xpc_dictionary_key_with_type_exists(a1, "UniqueChipID", MEMORY[0x29EDCAA58]))
          {
            *(a2 + 40) = xpc_dictionary_get_uint64(a1, "UniqueChipID");
            if (_xpc_dictionary_key_with_type_exists(a1, "CertificateProductionStatus", MEMORY[0x29EDCA9E8]))
            {
              *(a2 + 48) = xpc_dictionary_get_BOOL(a1, "CertificateProductionStatus");
              if (_xpc_dictionary_key_with_type_exists(a1, "CertificateSecurityMode", MEMORY[0x29EDCA9E8]))
              {
                *(a2 + 49) = xpc_dictionary_get_BOOL(a1, "CertificateSecurityMode");
                if (_xpc_dictionary_key_with_type_exists(a1, "EffectiveProductionStatusAp", MEMORY[0x29EDCA9E8]))
                {
                  *(a2 + 50) = xpc_dictionary_get_BOOL(a1, "EffectiveProductionStatusAp");
                  if (_xpc_dictionary_key_with_type_exists(a1, "EffectiveSecurityModeAp", MEMORY[0x29EDCA9E8]))
                  {
                    v12 = xpc_dictionary_get_BOOL(a1, "EffectiveSecurityModeAp");
                    result = 0;
                    *(a2 + 51) = v12;
                    *(a2 + 24) = 1;
                    goto LABEL_59;
                  }

                  v13 = *__error();
                  if (_img4_log_onceToken != -1)
                  {
                    _img4_chip_instance_from_remote_device_properties_cold_3();
                  }

                  v14 = _img4_log_osl;
                  if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
                  {
LABEL_58:
                    *__error() = v13;
                    result = 2;
                    goto LABEL_59;
                  }

                  v17 = 67109120;
                  LODWORD(v18) = 2;
                  v15 = "effective security mode not found: %{darwin.errno}d";
                }

                else
                {
                  v13 = *__error();
                  if (_img4_log_onceToken != -1)
                  {
                    _img4_chip_instance_from_remote_device_properties_cold_3();
                  }

                  v14 = _img4_log_osl;
                  if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_58;
                  }

                  v17 = 67109120;
                  LODWORD(v18) = 2;
                  v15 = "effective production status not found: %{darwin.errno}d";
                }
              }

              else
              {
                v13 = *__error();
                if (_img4_log_onceToken != -1)
                {
                  _img4_chip_instance_from_remote_device_properties_cold_3();
                }

                v14 = _img4_log_osl;
                if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_58;
                }

                v17 = 67109120;
                LODWORD(v18) = 2;
                v15 = "security mode not found: %{darwin.errno}d";
              }
            }

            else
            {
              v13 = *__error();
              if (_img4_log_onceToken != -1)
              {
                _img4_chip_instance_from_remote_device_properties_cold_3();
              }

              v14 = _img4_log_osl;
              if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_58;
              }

              v17 = 67109120;
              LODWORD(v18) = 2;
              v15 = "production status not found: %{darwin.errno}d";
            }
          }

          else
          {
            v13 = *__error();
            if (_img4_log_onceToken != -1)
            {
              _img4_chip_instance_from_remote_device_properties_cold_3();
            }

            v14 = _img4_log_osl;
            if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_58;
            }

            v17 = 67109120;
            LODWORD(v18) = 2;
            v15 = "ecid not found: %{darwin.errno}d";
          }
        }

        else
        {
          v13 = *__error();
          if (_img4_log_onceToken != -1)
          {
            _img4_chip_instance_from_remote_device_properties_cold_3();
          }

          v14 = _img4_log_osl;
          if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          v17 = 67109120;
          LODWORD(v18) = 2;
          v15 = "security domain not found: %{darwin.errno}d";
        }
      }

      else
      {
        v13 = *__error();
        if (_img4_log_onceToken != -1)
        {
          _img4_chip_instance_from_remote_device_properties_cold_3();
        }

        v14 = _img4_log_osl;
        if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v17 = 67109120;
        LODWORD(v18) = 2;
        v15 = "chip id not found: %{darwin.errno}d";
      }
    }

    else
    {
      v13 = *__error();
      if (_img4_log_onceToken != -1)
      {
        _img4_chip_instance_from_remote_device_properties_cold_3();
      }

      v14 = _img4_log_osl;
      if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v17 = 67109120;
      LODWORD(v18) = 2;
      v15 = "board id not found: %{darwin.errno}d";
    }

    _os_log_impl(&dword_2986C0000, v14, OS_LOG_TYPE_ERROR, v15, &v17, 8u);
    goto LABEL_58;
  }

  if (!strcmp(v5, "sha2-384"))
  {
LABEL_14:
    v11 = MEMORY[0x29EDC96B8];
    goto LABEL_16;
  }

  v6 = *__error();
  if (_img4_log_onceToken != -1)
  {
    _img4_chip_instance_from_remote_device_properties_cold_1();
  }

  v7 = _img4_log_osl;
  if (os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315394;
    v18 = v5;
    v19 = 1024;
    v20 = 22;
    _os_log_impl(&dword_2986C0000, v7, OS_LOG_TYPE_ERROR, "invalid crypto hash method: %s: %{darwin.errno}d", &v17, 0x12u);
  }

  *__error() = v6;
  result = 22;
LABEL_59:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

os_log_t ___img4_log_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "img4");
  _img4_log_osl = result;
  return result;
}

void rpc_destroy(_BYTE *a1)
{
  if (*a1)
  {
    if (*(a1 + 4) == 2)
    {
      v2 = *(a1 + 10);
      mach_right_send_release();
    }

    xpc_release(*(a1 + 37));
    os_release(*(a1 + 1));
    if ((*a1 & 0x40) != 0)
    {

      free(a1);
    }
  }
}

os_log_t object_proto_init(uint64_t a1, int a2, char *category)
{
  result = os_log_create("com.apple.libcryptex", category);
  *(a1 + 16) = result;
  return result;
}

char *object_set_name(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *__error();
  v6 = *(a1 + 16);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      v8 = *a1;
      *buf = 136446722;
      v13 = v4;
      v14 = 2080;
      v15 = v8;
      v16 = 2080;
      v17 = a2;
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: changing name: %s -> %s", buf, 0x20u);
    }

    *__error() = v5;
    free(*(a1 + 8));
  }

  else
  {
    if (v7)
    {
      *buf = 136446466;
      v13 = "[anonymous]";
      v14 = 2080;
      v15 = a2;
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting name: %s", buf, 0x16u);
    }

    *__error() = v5;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(a2);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(a2);
    if (!result)
    {
      _cryptex_copy_list_lossy_cold_2(a2, &v11, buf);
    }
  }

  *a1 = result;
  *(a1 + 8) = result;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void object_set_name_nocopy(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *__error();
  v6 = *(a1 + 16);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      v8 = *a1;
      v10 = 136446722;
      v11 = v4;
      v12 = 2080;
      v13 = v8;
      v14 = 2080;
      v15 = a2;
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: changing name: %s -> %s", &v10, 0x20u);
    }

    *__error() = v5;
    free(*(a1 + 8));
  }

  else
  {
    if (v7)
    {
      v10 = 136446466;
      v11 = "[anonymous]";
      v12 = 2080;
      v13 = a2;
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting name: %s", &v10, 0x16u);
    }

    *__error() = v5;
  }

  *a1 = a2;
  *(a1 + 8) = 0;
  v9 = *MEMORY[0x29EDCA608];
}

void object_proto_destroy(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  os_release(v2);
}

uint64_t _xferfd_unguarded(_DWORD *a1)
{
  v1 = *a1;
  *a1 = -1;
  return v1;
}

uint64_t _mkodtempat(int a1, char *a2, int *a3)
{
  v5 = mkdtempat_np(a1, a2);
  if (!v5)
  {
    return *__error();
  }

  v6 = openat(a1, v5, 1048832);
  if (v6 < 0)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *a3 = v7;
  return result;
}

size_t _confstr(int a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  result = confstr(a1, a2, 0x400uLL);
  if (!result)
  {
    _confstr_cold_2(&v4, v5);
  }

  if (result >= 0x401)
  {
    _confstr_cold_1();
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
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
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_ERROR, "stat: %{darwin.errno}d", buf, 8u);
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
    _cryptex_signing_service_read_fd_cold_1();
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
      _os_log_impl(&dword_2986C0000, v16, OS_LOG_TYPE_ERROR, "malloc: %{darwin.errno}d", buf, 8u);
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
      _os_log_impl(&dword_2986C0000, v14, OS_LOG_TYPE_ERROR, "pread: %{darwin.errno}d", buf, 8u);
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
      _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_DEBUG, "read %ld bytes", buf, 0xCu);
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
    _os_log_impl(&dword_2986C0000, v20, OS_LOG_TYPE_ERROR, "truncated read: actual = %ld, expected = %lu", buf, 0x16u);
  }

  *__error() = v18;
  v4 = 5;
LABEL_10:
  free(v8);
  v9 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t _write_file(int __fd, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v4 = pwrite(__fd, *a2, *(a2 + 8), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 67109120;
      LODWORD(v18) = v7;
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_ERROR, "write: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v5;
    v8 = *__error();
    if (v8 != 4)
    {
      goto LABEL_20;
    }
  }

  v9 = v4;
  v10 = *(a2 + 8);
  v11 = *__error();
  if (v9 == v10)
  {
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v12 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v18 = v9;
      _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_DEBUG, "wrote %ld bytes", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v13 = log_util_log;
    v8 = 5;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 8);
      *buf = 134218496;
      v18 = v9;
      v19 = 2048;
      v20 = v14;
      v21 = 1024;
      v22 = 5;
      _os_log_impl(&dword_2986C0000, v13, OS_LOG_TYPE_ERROR, "truncated write: actual = %ld, expected = %ld: %{darwin.errno}d", buf, 0x1Cu);
    }
  }

  *__error() = v11;
LABEL_20:
  v15 = *MEMORY[0x29EDCA608];
  return v8;
}

os_log_t __log_util_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "utility");
  log_util_log = result;
  return result;
}

void _confstr_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  OUTLINED_FUNCTION_10();
  v2 = *__error();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_2();
  __break(1u);
}

void *buff_init(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x29EDCA608];
  *result = a4;
  result[1] = a5;
  result[2] = a4;
  result[3] = a5;
  result[4] = a2;
  result[5] = a3;
  if (a5 < 0)
  {
    buff_init_cold_1(&v6, v7);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *buff_init_signed(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a5 < 0)
  {
    buff_init_signed_cold_1(&v7, v8);
  }

  v5 = *MEMORY[0x29EDCA608];

  return buff_init(a1, a2, a3, a4, a5);
}

void *buff_destroy(void *result)
{
  if (result)
  {
    if (*result)
    {
      v2 = result[5];
      if (v2)
      {
        if (result[6])
        {
          buff_destroy_cold_1();
        }

        v3 = result[3];
        v4 = result[4];
        v5 = result[2];

        return v2(v5, v3, v4);
      }
    }
  }

  return result;
}

void buff_init_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_1();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void buff_init_signed_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_1();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void *ctx_new(void *a1, size_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 <= 0x1F)
  {
    ctx_new_cold_2(&v8, v9);
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = malloc_type_calloc(1uLL, a2, 0x8A375538uLL);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = malloc_type_calloc(1uLL, a2, 0x8709206FuLL);
    if (!v4)
    {
      ctx_new_cold_1(&v8, v9);
    }
  }

  v5 = v4;
  if (a1)
  {
    *v4 = os_retain(a1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

void ctx_destroy(void **a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v2(a1);
    }

    if (*a1)
    {
      os_release(*a1);
    }

    free(a1);
  }
}

void ctx_new_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void ctx_new_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

xpc_object_t _xpc_plist_value_copy(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDCA9E0];
  if (*a1 != MEMORY[0x29EDCA9E0] && *a1 != MEMORY[0x29EDCAA00])
  {
    _xpc_plist_value_copy_cold_1();
  }

  v6 = MEMORY[0x29C28F4F0](a2);
  if (v6 != *a1)
  {
    return 0;
  }

  if (v6 == v2)
  {
    v9 = *(a1 + 24);
    if (v9 >= xpc_array_get_count(a2))
    {
      return 0;
    }

    value = xpc_array_get_value(a2, *(a1 + 24));
  }

  else
  {
    value = xpc_dictionary_get_value(a2, *(a1 + 16));
  }

  v10 = value;
  if (!value || MEMORY[0x29C28F4F0](value) != *(a1 + 8))
  {
    return 0;
  }

  return xpc_retain(v10);
}

xpc_object_t _xpc_plist_value_copy_at(void *a1, void *a2, size_t a3)
{
  v3 = MEMORY[0x29EDCA9E0];
  if (*a1 != MEMORY[0x29EDCA9E0])
  {
    _xpc_plist_value_copy_at_cold_1();
  }

  if (MEMORY[0x29C28F4F0](a2) != v3)
  {
    _xpc_plist_value_copy_at_cold_1();
  }

  if (xpc_array_get_count(a2) <= a3)
  {
    return 0;
  }

  value = xpc_array_get_value(a2, a3);
  if (!value)
  {
    return 0;
  }

  v8 = value;
  if (MEMORY[0x29C28F4F0]() != a1[1])
  {
    return 0;
  }

  return xpc_retain(v8);
}

uint64_t _xpc_plist_merge(uint64_t a1, xpc_object_t xdict)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (xdict)
  {
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = ___xpc_plist_merge_block_invoke;
    v4[3] = &unk_29EEA7BD8;
    v4[4] = &v5;
    v4[5] = a1;
    xpc_dictionary_apply(xdict, v4);
    v2 = *(v6 + 6);
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___xpc_plist_merge_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  value = xpc_dictionary_get_value(*(a1 + 40), a2);
  if (!value)
  {
LABEL_9:
    xpc_dictionary_set_value(*(a1 + 40), a2, a3);
    goto LABEL_10;
  }

  v7 = value;
  v8 = MEMORY[0x29C28F4F0]();
  if (v8 == MEMORY[0x29C28F4F0](a3))
  {
    if (v8 == MEMORY[0x29EDCAA00])
    {
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 0x40000000;
      applier[2] = ___xpc_plist_merge_block_invoke_2;
      applier[3] = &__block_descriptor_tmp_6;
      applier[4] = v7;
      xpc_dictionary_apply(a3, applier);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(*(*(a1 + 32) + 8) + 24) = 79;
  v9 = *__error();
  if (_xpc_log_onceToken != -1)
  {
    ___xpc_plist_merge_block_invoke_cold_1();
  }

  v10 = _xpc_log_osl;
  if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(*(a1 + 32) + 8) + 24);
    *buf = 136315394;
    v16 = a2;
    v17 = 1024;
    v18 = v11;
    _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_ERROR, "Error merging override for key %s: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v9;
LABEL_10:
  v12 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t _xpc_dictionary_try_get_uint64(void *a1, const char *a2, uint64_t *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C28F4F0]() != MEMORY[0x29EDCAA58])
  {
    return 79;
  }

  v7 = xpc_uint64_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _xpc_dictionary_try_get_string(void *a1, const char *a2, const char **a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C28F4F0]() != MEMORY[0x29EDCAA50])
  {
    return 79;
  }

  string_ptr = xpc_string_get_string_ptr(v5);
  result = 0;
  *a3 = string_ptr;
  return result;
}

uint64_t _xpc_dictionary_try_get_BOOL(void *a1, const char *a2, BOOL *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C28F4F0]() != MEMORY[0x29EDCA9E8])
  {
    return 79;
  }

  v7 = xpc_BOOL_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _xpc_dictionary_key_with_type_exists(void *a1, const char *a2, const _xpc_type_s *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!xpc_dictionary_get_value(a1, a2))
  {
    v5 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v10 = _xpc_log_osl;
    if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 136315138;
    v15 = a2;
    v7 = "key %s doesn't exist";
    v8 = v10;
    v9 = 12;
    goto LABEL_11;
  }

  if (MEMORY[0x29C28F4F0]() == a3)
  {
    result = 1;
    goto LABEL_14;
  }

  v5 = *__error();
  if (_xpc_log_onceToken != -1)
  {
    ___xpc_plist_merge_block_invoke_cold_1();
  }

  v6 = _xpc_log_osl;
  if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = a2;
    v16 = 2080;
    name = xpc_type_get_name(a3);
    v7 = "key %s isn't of type %s";
    v8 = v6;
    v9 = 22;
LABEL_11:
    _os_log_impl(&dword_2986C0000, v8, OS_LOG_TYPE_ERROR, v7, &v14, v9);
  }

LABEL_12:
  v11 = __error();
  result = 0;
  *v11 = v5;
LABEL_14:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _xpc_dictionary_try_get_cferr(void *a1, const char *a2, CFErrorRef *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C28F4F0]() != MEMORY[0x29EDCAA00])
  {
    return 79;
  }

  return _xpc_dictionary_to_cferr(v5, a3);
}

uint64_t _xpc_dictionary_to_cferr(void *a1, CFErrorRef *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  value = 0;
  dictionary = xpc_dictionary_get_dictionary(a1, "cferr_userinfo");
  if (dictionary)
  {
    v5 = dictionary;
    string = xpc_dictionary_get_string(a1, "cferr_domain");
    v7 = _CFStringCreateFromUTF8String(string);
    if (v7)
    {
      v8 = v7;
      int64 = xpc_dictionary_get_int64(a1, "cferr_code");
      v10 = xpc_dictionary_get_dictionary(v5, "underlying_cferr");
      if (v10 && _xpc_dictionary_to_cferr(v10, &value))
      {
        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *buf = 67109120;
        v32 = 22;
        v13 = "Failed to unpack underlying error.: %{darwin.errno}d";
      }

      else
      {
        xpc_dictionary_set_value(v5, "underlying_cferr", 0);
        v17 = _CFXPCCreateCFObjectFromXPCObject();
        if (v17)
        {
          v18 = v17;
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v17);
          if (MutableCopy)
          {
            v20 = MutableCopy;
            if (value)
            {
              CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDB8F68], value);
            }

            v21 = CFErrorCreate(0, v8, int64, v20);
            if (v21)
            {
              if (a2)
              {
                v16 = 0;
                *a2 = v21;
              }

              else
              {
                CFRelease(v21);
                v16 = 0;
              }
            }

            else
            {
              v26 = *__error();
              if (_xpc_log_onceToken != -1)
              {
                _xpc_dictionary_to_cferr_cold_1();
              }

              v27 = _xpc_log_osl;
              if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v32 = 12;
                _os_log_impl(&dword_2986C0000, v27, OS_LOG_TYPE_ERROR, "Failed to create CFError.: %{darwin.errno}d", buf, 8u);
              }

              *__error() = v26;
              v16 = 12;
            }

            CFRelease(v20);
          }

          else
          {
            v24 = *__error();
            if (_xpc_log_onceToken != -1)
            {
              _xpc_dictionary_to_cferr_cold_1();
            }

            v25 = _xpc_log_osl;
            if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v32 = 12;
              _os_log_impl(&dword_2986C0000, v25, OS_LOG_TYPE_ERROR, "Failed to create mutable dictionary.: %{darwin.errno}d", buf, 8u);
            }

            *__error() = v24;
            v16 = 12;
          }

          CFRelease(v18);
          goto LABEL_45;
        }

        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
LABEL_31:
          *__error() = v11;
          v16 = 22;
LABEL_45:
          CFRelease(v8);
          goto LABEL_46;
        }

        *buf = 67109120;
        v32 = 22;
        v13 = "Failed to convert CF to XPC.: %{darwin.errno}d";
      }

      _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
      goto LABEL_31;
    }

    v22 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v23 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v32 = 12;
      _os_log_impl(&dword_2986C0000, v23, OS_LOG_TYPE_ERROR, "Failed to create string.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v22;
    v16 = 12;
  }

  else
  {
    v14 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v15 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v32 = 22;
      _os_log_impl(&dword_2986C0000, v15, OS_LOG_TYPE_ERROR, "CFError XPC dictionary is missing user info.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v14;
    v16 = 22;
  }

LABEL_46:
  if (value)
  {
    CFRelease(value);
  }

  v28 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t _xpc_reply_get_error(void *a1, _DWORD *a2)
{
  if (!_xpc_dictionary_key_with_type_exists(a1, "error", MEMORY[0x29EDCAA58]))
  {
    return 22;
  }

  uint64 = xpc_dictionary_get_uint64(a1, "error");
  result = 0;
  *a2 = uint64;
  return result;
}

uint64_t _xpc_reply_get_cferr(void *a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = 0;
  v11 = -1;
  cferr = _xpc_dictionary_try_get_cferr(a1, "cferr", &v12);
  if (cferr == 2 && (cferr = 0, !_xpc_reply_get_error(a1, &v11)) && v11)
  {
    v5 = v11;
    v13 = 67109120;
    v14 = v11;
    v6 = _os_log_send_and_compose_impl();
    Error = createError("_xpc_reply_get_cferr", "xpc.c", 474, "com.apple.security.cryptex.posix", v5, 0, v6);
    free(v6);
    cferr = 0;
    v12 = Error;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    Error = v12;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (!cferr)
  {
    if (Error)
    {
      v8 = CFRetain(Error);
      Error = v12;
    }

    else
    {
      v8 = 0;
    }

    *a2 = v8;
  }

LABEL_12:
  if (Error)
  {
    CFRelease(Error);
  }

  v9 = *MEMORY[0x29EDCA608];
  return cferr;
}

uint64_t _xpc_reply_get_argv(void *a1, void *a2)
{
  if (!_xpc_dictionary_key_with_type_exists(a1, "argv", MEMORY[0x29EDCAA00]))
  {
    return 22;
  }

  value = xpc_dictionary_get_value(a1, "argv");
  result = 0;
  *a2 = value;
  return result;
}

os_log_t ___xpc_log_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "xpc");
  _xpc_log_osl = result;
  return result;
}

void _cryptex_copy_list_lossy_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_copy_list_lossy_cold_2(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  _os_log_send_and_compose_impl();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_signing_service_dealloc_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v4 = *__error();
  OUTLINED_FUNCTION_1_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_signing_service_set_tss_url_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  OUTLINED_FUNCTION_4();
  v5 = __error();
  strerror(*v5);
  OUTLINED_FUNCTION_0_0();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void cryptex_signing_service_set_image_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v4 = *__error();
  OUTLINED_FUNCTION_1_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_signing_service_set_sso_ticket_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  v3 = __error();
  strerror(*v3);
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_signing_service_read_fd_cold_2(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _hdi_copy_device_nodes_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  __break(1u);
}

void _hdi_copy_device_nodes_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  __break(1u);
}

void hdi_copy_mounted_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_0();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void hdi_copy_mounted_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_0();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_event_type_int_to_ext_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_msm_new_from_info_cold_1(const char *a1)
{
  OUTLINED_FUNCTION_8(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _cryptex_msm_new_from_info_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void cryptex_copy_list_4MSM_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _CFCreateAssertImpl_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_1();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _cryptex_attr_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _cryptex_bundle_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _cryptex_su_preboot_bundle_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _cryptex_signing_service_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _session_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _cryptex_bundle_new_asset_from_object_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  OUTLINED_FUNCTION_10();
  v2 = *__error();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_2();
  __break(1u);
}

void _cryptex_bundle_asset_new_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _cryptex_bundle_asset_new_cold_3(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _cryptex_list_elm_new_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void _cryptex_bundle_init_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  OUTLINED_FUNCTION_10();
  v2 = *__error();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_2();
  __break(1u);
}

void _cryptex_bundle_add_cryptex_assets_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  OUTLINED_FUNCTION_10();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_2();
  __break(1u);
}

void cryptex_bundle_write2_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  OUTLINED_FUNCTION_10();
  v2 = *__error();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_2();
  __break(1u);
}

void _cryptex_bundle_open_cold_1(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v6 = *(a3 + 16);
  OUTLINED_FUNCTION_0_0();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_identity_copy_description_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void cryptex_system_cx_copy_name_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_system_cx_copy_name_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_get_image_type_cold_1(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v6 = *(a3 + 40);
  OUTLINED_FUNCTION_0_0();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_array_pack_from_path_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to open %s", &v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

void cryptex_array_pack_from_path_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v4 = *__error();
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_attr_set_tss_url_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}