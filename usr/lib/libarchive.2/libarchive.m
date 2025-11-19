_DWORD *archive_read_new()
{
  v1 = malloc_type_calloc(1uLL, 0x858uLL, 0x10F00400E4E988EuLL);
  if (!v1)
  {
    return 0;
  }

  *v1 = 14594245;
  v1[1] = 1;
  *(v1 + 18) = archive_entry_new2(v1);
  *(v1 + 1) = archive_read_vtable;
  *(v1 + 263) = v1 + 524;
  return v1;
}

_DWORD *archive_entry_new2(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x4E0uLL, 0x10B0040FA1FE6CFuLL);
  if (!v2)
  {
    return 0;
  }

  *v2 = a1;
  v2[311] = 0;
  return v2;
}

uint64_t archive_read_support_format_all(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_all") == -30)
  {
    return -30;
  }

  else
  {
    archive_read_support_format_ar(a1);
    archive_read_support_format_cpio(a1);
    archive_read_support_format_empty(a1);
    archive_read_support_format_lha(a1);
    archive_read_support_format_mtree(a1);
    archive_read_support_format_tar(a1);
    archive_read_support_format_xar(a1);
    archive_read_support_format_warc(a1);
    archive_read_support_format_7zip(a1);
    archive_read_support_format_cab(a1);
    archive_read_support_format_rar(a1);
    archive_read_support_format_rar5(a1);
    archive_read_support_format_iso9660(a1);
    archive_read_support_format_zip(a1);
    archive_clear_error(a1);
    return 0;
  }
}

uint64_t __archive_check_magic(int *a1, int a2, int a3, const char *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!archive_handle_type_name(*a1))
  {
    errmsg("PROGRAMMER ERROR: Function ");
    errmsg(a4);
    errmsg(" invoked with invalid archive handle.\n");
    diediedie();
  }

  if (*a1 == a2)
  {
    if ((a1[1] & a3) != 0)
    {
      v19 = 0;
    }

    else
    {
      if (a1[1] != 0x8000)
      {
        write_all_states(v21, a1[1]);
        write_all_states(v20, a3);
        archive_set_error(a1, -1, "INTERNAL ERROR: Function '%s' invoked with archive structure in state '%s', should be in state '%s'", v9, v10, v11, v12, v13, a4);
      }

      a1[1] = 0x8000;
      v19 = -30;
    }
  }

  else
  {
    archive_set_error(a1, -1, "PROGRAMMER ERROR: Function '%s' invoked on '%s' archive object, which is not supported.", v4, v5, v6, v7, v8, a4);
    a1[1] = 0x8000;
    v19 = -30;
  }

  *MEMORY[0x1E69E9840];
  return v19;
}

const char *archive_handle_type_name(int a1)
{
  switch(a1)
  {
    case -1329217314:
      return "archive_write";
    case -1073631035:
      return "archive_write_disk";
    case 14594245:
      return "archive_read";
    case 195932357:
      return "archive_read_disk";
    case 212668873:
      return "archive_match";
  }

  return 0;
}

uint64_t archive_read_support_format_ar(int *a1)
{
  if (archive_allow_entitlement_format("ar"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_ar") == -30)
    {
      return -30;
    }

    else
    {
      v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x10100402A43CA8AuLL);
      if (v14)
      {
        v14[4] = 0;
        register_format = __archive_read_register_format(a1, v14, "ar", archive_read_format_ar_bid, 0, archive_read_format_ar_read_header, archive_read_format_ar_read_data, archive_read_format_ar_skip, 0, archive_read_format_ar_cleanup, 0, 0);
        if (register_format)
        {
          free(v14);
          return register_format;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        archive_set_error(a1, 12, "Can't allocate ar data", v6, v7, v8, v9, v10, v12);
        return -30;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

BOOL archive_allow_entitlement(const char *a1, const char *a2, os_unfair_lock_s *a3, const __CFSet **a4, BOOL *a5)
{
  os_unfair_lock_lock(a3);
  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = 0;
  }

  theSet = v7;
  if (a5)
  {
    v6 = *a5;
  }

  else
  {
    v6 = 0;
  }

  v9 = v6 != 0;
  if (!v6)
  {
    theSet = populate_entitlement_table(a2);
    v9 = 1;
  }

  if (theSet)
  {
    value = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498]);
    v11 = CFSetContainsValue(theSet, value) != 0;
    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    v11 = 1;
  }

  *a4 = theSet;
  *a5 = v9;
  os_unfair_lock_unlock(a3);
  return v11;
}

uint64_t __archive_read_register_format(int *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (archive_allow_entitlement_format(a3))
  {
    if (__archive_check_magic(a1, 14594245, 1, "__archive_read_register_format") == -30)
    {
      return -30;
    }

    else
    {
      for (i = 0; i < 16; ++i)
      {
        if (*&a1[22 * i + 170] == a4)
        {
          return -20;
        }

        if (!*&a1[22 * i + 170])
        {
          *&a1[22 * i + 170] = a4;
          *&a1[22 * i + 172] = a5;
          *&a1[22 * i + 174] = a6;
          *&a1[22 * i + 176] = a7;
          *&a1[22 * i + 178] = a8;
          *&a1[22 * i + 180] = a9;
          *&a1[22 * i + 182] = a10;
          *&a1[22 * i + 166] = a2;
          *&a1[22 * i + 168] = a3;
          *&a1[22 * i + 184] = a11;
          *&a1[22 * i + 186] = a12;
          return 0;
        }
      }

      archive_set_error(a1, 12, "Not enough slots for format registration", v17, v18, v19, v20, v21, v23);
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements", v12, v13, v14, v15, v16, v23);
    return -30;
  }
}

CFMutableSetRef populate_entitlement_table(const char *a1)
{
  v18 = a1;
  Mutable = 0;
  v5 = MEMORY[0x1E695E480];
  v16 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x600u, *MEMORY[0x1E695E498]);
  v15 = SecTaskCreateFromSelf(*v5);
  error = 0;
  v13 = SecTaskCopyValueForEntitlement(v15, v16, &error);
  if (v16)
  {
    CFRelease(v16);
    v16 = 0;
  }

  if (v15)
  {
    CFRelease(v15);
    v15 = 0;
  }

  if (v13)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v13))
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 15, MEMORY[0x1E695E9F8]);
      if (Mutable)
      {
        Count = CFArrayGetCount(v13);
        for (idx = 0; idx < Count; ++idx)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, idx);
          v3 = CFGetTypeID(ValueAtIndex);
          if (v3 == CFStringGetTypeID())
          {
            CFSetAddValue(Mutable, ValueAtIndex);
          }

          else
          {
            fprintf(*MEMORY[0x1E69E9848], "Unexpected non-string types in entitlement");
          }
        }

        CFRelease(v13);
        return Mutable;
      }

      else
      {
        CFRelease(v13);
        return 0;
      }
    }

    else
    {
      v1 = CFGetTypeID(v13);
      cf = CFCopyTypeIDDescription(v1);
      c_string = get_c_string(cf);
      if (cf)
      {
        CFRelease(cf);
      }

      fprintf(*MEMORY[0x1E69E9848], "Error in type of entitlement expected: CFTypeArray got %s", c_string);
      CFRelease(v13);
      free(c_string);
      return 0;
    }
  }

  else if (error)
  {
    v12 = CFErrorCopyDescription(error);
    v11 = get_c_string(v12);
    fprintf(*MEMORY[0x1E69E9848], "Error discovering entitlements, error: %s", v11);
    if (v12)
    {
      CFRelease(v12);
    }

    free(v11);
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_support_format_cpio(int *a1)
{
  if (archive_allow_entitlement_filter("cpio"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_cpio") == -30)
    {
      return -30;
    }

    else
    {
      v13 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040D81D3FF9uLL);
      if (v13)
      {
        *v13 = 320083222;
        if (__archive_read_register_format(a1, v13, "cpio", archive_read_format_cpio_bid, archive_read_format_cpio_options, archive_read_format_cpio_read_header, archive_read_format_cpio_read_data, archive_read_format_cpio_skip, 0, archive_read_format_cpio_cleanup, 0, 0))
        {
          free(v13);
        }

        return 0;
      }

      else
      {
        archive_set_error(a1, 12, "Can't allocate cpio data", v6, v7, v8, v9, v10, v12);
        return -30;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

uint64_t archive_read_support_format_empty(int *a1)
{
  if (archive_allow_entitlement_format("empty"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_empty") == -30)
    {
      return -30;
    }

    else
    {
      return __archive_read_register_format(a1, 0, "empty", archive_read_format_empty_bid, 0, archive_read_format_empty_read_header, archive_read_format_empty_read_data, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t archive_read_support_format_lha(int *a1)
{
  if (archive_allow_entitlement_filter("lha"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_lha") == -30)
    {
      return -30;
    }

    else
    {
      v13 = malloc_type_calloc(1uLL, 0x1A8uLL, 0x1070040FEA8A56AuLL);
      if (v13)
      {
        v13[34] = 0;
        v13[35] = 0;
        v13[36] = 0;
        if (__archive_read_register_format(a1, v13, "lha", archive_read_format_lha_bid, archive_read_format_lha_options, archive_read_format_lha_read_header, archive_read_format_lha_read_data, archive_read_format_lha_read_data_skip, 0, archive_read_format_lha_cleanup, 0, 0))
        {
          free(v13);
        }

        return 0;
      }

      else
      {
        archive_set_error(a1, 12, "Can't allocate lha data", v6, v7, v8, v9, v10, v12);
        return -30;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

uint64_t archive_read_support_format_mtree(int *a1)
{
  if (archive_allow_entitlement_filter("mtree"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_mtree") == -30)
    {
      return -30;
    }

    else
    {
      v13 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10700405C4A5BC3uLL);
      if (v13)
      {
        v13[176] = 0;
        *(v13 + 12) = -1;
        __archive_rb_tree_init(v13 + 19, archive_read_support_format_mtree_rb_ops);
        if (__archive_read_register_format(a1, v13, "mtree", mtree_bid, archive_read_format_mtree_options, read_header, read_data, skip, 0, cleanup_0, 0, 0))
        {
          free(v13);
        }

        return 0;
      }

      else
      {
        archive_set_error(a1, 12, "Can't allocate mtree data", v6, v7, v8, v9, v10, v12);
        return -30;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

uint64_t archive_read_support_format_tar(int *a1)
{
  if (archive_allow_entitlement_filter("tar"))
  {
    if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_tar") == -30)
    {
      return -30;
    }

    else
    {
      v13 = malloc_type_calloc(1uLL, 0x1C8uLL, 0x1030040C7D48C63uLL);
      if (v13)
      {
        v13[110] = 1;
        if (__archive_read_register_format(a1, v13, "tar", archive_read_format_tar_bid, archive_read_format_tar_options, archive_read_format_tar_read_header, archive_read_format_tar_read_data, archive_read_format_tar_skip, 0, archive_read_format_tar_cleanup, 0, 0))
        {
          free(v13);
        }

        return 0;
      }

      else
      {
        archive_set_error(a1, 12, "Can't allocate tar data", v6, v7, v8, v9, v10, v12);
        return -30;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

uint64_t archive_read_support_format_7zip(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_7zip") == -30)
  {
    return -30;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x5108uLL, 0x10F0040DBF92E40uLL);
    if (v8)
    {
      v8[5184] = -1;
      if (__archive_read_register_format(a1, v8, "7zip", archive_read_format_7zip_bid, 0, archive_read_format_7zip_read_header, archive_read_format_7zip_read_data, archive_read_format_7zip_read_data_skip, 0, archive_read_format_7zip_cleanup, archive_read_support_format_7zip_capabilities, archive_read_format_7zip_has_encrypted_entries))
      {
        free(v8);
      }

      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate 7zip data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_read_support_format_cab(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_cab") == -30)
  {
    return -30;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x1C0uLL, 0x10F00403258FFA1uLL);
    if (v8)
    {
      v8[15] = 0;
      v8[16] = 0;
      v8[17] = 0;
      archive_wstring_ensure((v8 + 15), 256);
      if (__archive_read_register_format(a1, v8, "cab", archive_read_format_cab_bid, archive_read_format_cab_options, archive_read_format_cab_read_header, archive_read_format_cab_read_data, archive_read_format_cab_read_data_skip, 0, archive_read_format_cab_cleanup, 0, 0))
      {
        free(v8);
      }

      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate CAB data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_string_ensure(uint64_t a1, unint64_t a2)
{
  if (*a1 && a2 <= *(a1 + 16))
  {
    return a1;
  }

  if (*(a1 + 16) >= 0x20uLL)
  {
    if (*(a1 + 16) >= 0x2000uLL)
    {
      size = *(a1 + 16) + *(a1 + 16) / 4uLL;
      if (size < *(a1 + 16))
      {
        archive_string_free(a1);
        *__error() = 12;
        return 0;
      }
    }

    else
    {
      size = 2 * *(a1 + 16);
    }
  }

  else
  {
    size = 32;
  }

  if (size < a2)
  {
    size = a2;
  }

  v4 = malloc_type_realloc(*a1, size, 0x100004077774924uLL);
  if (v4)
  {
    *a1 = v4;
    *(a1 + 16) = size;
    return a1;
  }

  else
  {
    archive_string_free(a1);
    *__error() = 12;
    return 0;
  }
}

uint64_t archive_read_support_format_rar(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_rar") == -30)
  {
    return -30;
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, 0x4F60uLL, 0x10F00407510CCC6uLL);
    if (v9)
    {
      v9[5078] = -1;
      register_format = __archive_read_register_format(a1, v9, "rar", archive_read_format_rar_bid, archive_read_format_rar_options, archive_read_format_rar_read_header, archive_read_format_rar_read_data, archive_read_format_rar_read_data_skip, archive_read_format_rar_seek_data, archive_read_format_rar_cleanup, archive_read_support_format_rar_capabilities, archive_read_format_rar_has_encrypted_entries);
      if (register_format)
      {
        free(v9);
      }

      return register_format;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate rar data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_read_support_format_rar5(int *a1)
{
  v16[1] = a1;
  v16[0] = 0;
  v14 = get_archive_read(a1, v16);
  if (v14)
  {
    return v14;
  }

  else
  {
    v13 = malloc_type_malloc(0x5330uLL, 0x105004069060638uLL);
    if (v13)
    {
      if (rar5_init(v13))
      {
        archive_set_error(v16[0], 12, "Can't allocate rar5 filter buffer", v6, v7, v8, v9, v10, v12);
        free(v13);
        return -30;
      }

      else
      {
        register_format = __archive_read_register_format(v16[0], v13, "rar5", rar5_bid, rar5_options, rar5_read_header, rar5_read_data, rar5_read_data_skip, rar5_seek_data, rar5_cleanup, rar5_capabilities, rar5_has_encrypted_entries);
        if (register_format)
        {
          rar5_cleanup(v16[0]);
        }

        return register_format;
      }
    }

    else
    {
      archive_set_error(v16[0], 12, "Can't allocate rar5 data", v1, v2, v3, v4, v5, v12);
      return -30;
    }
  }
}

uint64_t get_archive_read(int *a1, int **a2)
{
  *a2 = a1;
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_rar5") == -30)
  {
    return -30;
  }

  else
  {
    return 0;
  }
}

_WORD *cdeque_clear(_WORD *result)
{
  result[3] = 0;
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t archive_read_support_format_iso9660(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_iso9660") == -30)
  {
    return -30;
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, 0xA10uLL, 0x10B004091975EA2uLL);
    if (v9)
    {
      *v9 = -1772054944;
      v9[16] = 0;
      v9[17] = v9 + 16;
      v9[18] = 0;
      v9[19] = v9 + 18;
      *(v9 + 1) = 1;
      *(v9 + 2) = 1;
      register_format = __archive_read_register_format(a1, v9, "iso9660", archive_read_format_iso9660_bid, archive_read_format_iso9660_options, archive_read_format_iso9660_read_header, archive_read_format_iso9660_read_data, archive_read_format_iso9660_read_data_skip, 0, archive_read_format_iso9660_cleanup, 0, 0);
      if (register_format)
      {
        free(v9);
        return register_format;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate iso9660 data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

void *__archive_rb_tree_init(void *result, uint64_t a2)
{
  result[1] = a2;
  *result = 0;
  return result;
}

uint64_t archive_read_support_format_xar(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_xar") == -30)
  {
    return -30;
  }

  else
  {
    v10 = malloc_type_calloc(1uLL, 0x400uLL, 0x10F0040B321D4E6uLL);
    if (v10)
    {
      v10[216] = 0;
      v10[217] = 0;
      *(v10 + 107) = 0;
      register_format = __archive_read_register_format(a1, v10, "xar", xar_bid, 0, xar_read_header, xar_read_data, xar_read_data_skip, 0, xar_cleanup, 0, 0);
      if (register_format)
      {
        free(v10);
      }

      return register_format;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate xar data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_read_support_format_warc(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_warc") == -30)
  {
    return -30;
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, 0x48uLL, 0x10100403BD722C9uLL);
    if (v9)
    {
      register_format = __archive_read_register_format(a1, v9, "warc", _warc_bid, 0, _warc_rdhdr, _warc_read, _warc_skip, 0, _warc_cleanup, 0, 0);
      if (register_format)
      {
        free(v9);
        return register_format;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate warc data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t rar5_init(uint64_t a1)
{
  __memset_chk();
  if (cdeque_init(a1 + 19256, 0x2000))
  {
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t cdeque_init(uint64_t a1, int a2)
{
  if (a1 && a2)
  {
    *(a1 + 4) = a2 - 1;
    *(a1 + 8) = 0;
    if ((a2 & *(a1 + 4)) != 0)
    {
      return 2;
    }

    else
    {
      cdeque_clear(a1);
      *(a1 + 8) = malloc_type_malloc(8 * a2, 0x80040B8603338uLL);
      return *(a1 + 8) == 0;
    }
  }

  else
  {
    return 2;
  }
}

uint64_t archive_read_support_format_zip(int *a1)
{
  support_format_zip_streamable = archive_read_support_format_zip_streamable(a1);
  if (support_format_zip_streamable)
  {
    return support_format_zip_streamable;
  }

  else
  {
    return archive_read_support_format_zip_seekable(a1);
  }
}

uint64_t archive_read_support_format_zip_streamable(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_zip") == -30)
  {
    return -30;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x21A0uLL, 0x10F00401908A625uLL);
    if (v8)
    {
      v8[2003] = 0;
      v8[2004] = 0;
      v8[14] = -1;
      *(v8 + 22) = real_crc32;
      if (__archive_read_register_format(a1, v8, "zip", archive_read_format_zip_streamable_bid, archive_read_format_zip_options, archive_read_format_zip_streamable_read_header, archive_read_format_zip_read_data, archive_read_format_zip_read_data_skip_streamable, 0, archive_read_format_zip_cleanup, archive_read_support_format_zip_capabilities_streamable, archive_read_format_zip_has_encrypted_entries))
      {
        free(v8);
      }

      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate zip data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t __archive_read_filter_ahead(uint64_t a1, size_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 138))
  {
    if (a3)
    {
      *a3 = -30;
    }

    return 0;
  }

  while (1)
  {
    while (1)
    {
      if (*(a1 + 96) >= a2 && *(a1 + 96))
      {
        if (a3)
        {
          *a3 = *(a1 + 96);
        }

        return *(a1 + 88);
      }

      if (*(a1 + 112) >= *(a1 + 128) + *(a1 + 96) && *(a1 + 128) + *(a1 + 96) >= a2)
      {
        *(a1 + 128) += *(a1 + 96);
        *(a1 + 120) -= *(a1 + 96);
        *(a1 + 96) = 0;
        *(a1 + 88) = *(a1 + 72);
        if (a3)
        {
          *a3 = *(a1 + 128);
        }

        return *(a1 + 120);
      }

      if (*(a1 + 88) > *(a1 + 72) && *(a1 + 88) + a2 > *(a1 + 72) + *(a1 + 80))
      {
        if (*(a1 + 96))
        {
          v8 = *(a1 + 72);
          v9 = *(a1 + 88);
          v10 = *(a1 + 96);
          __memmove_chk();
        }

        *(a1 + 88) = *(a1 + 72);
      }

      if (*(a1 + 128))
      {
        break;
      }

      if (*(a1 + 136))
      {
        if (a3)
        {
          *a3 = 0;
        }

        return 0;
      }

      v26 = (**(a1 + 32))(a1, a1 + 104);
      if (v26 < 0)
      {
        *(a1 + 128) = 0;
        *(a1 + 112) = 0;
        *(a1 + 104) = 0;
        *(a1 + 120) = 0;
        *(a1 + 138) = 1;
        if (a3)
        {
          *a3 = -30;
        }

        return 0;
      }

      if (v26)
      {
        *(a1 + 112) = v26;
        *(a1 + 128) = *(a1 + 112);
        *(a1 + 120) = *(a1 + 104);
      }

      else if (*(*(a1 + 24) + 228) == *(*(a1 + 24) + 224) - 1 || client_switch_proxy(a1, *(*(a1 + 24) + 228) + 1))
      {
        *(a1 + 128) = 0;
        *(a1 + 112) = 0;
        *(a1 + 104) = 0;
        *(a1 + 120) = 0;
        *(a1 + 136) = 1;
        if (a3)
        {
          *a3 = *(a1 + 96);
        }

        return 0;
      }
    }

    if (a2 > *(a1 + 80))
    {
      break;
    }

LABEL_52:
    v25 = *(a1 + 72) + *(a1 + 80) - (*(a1 + 88) + *(a1 + 96));
    if (v25 + *(a1 + 96) > a2)
    {
      v25 = a2 - *(a1 + 96);
    }

    if (v25 > *(a1 + 128))
    {
      v25 = *(a1 + 128);
    }

    v18 = *(a1 + 88) + *(a1 + 96);
    v19 = *(a1 + 120);
    __memcpy_chk();
    *(a1 + 120) += v25;
    *(a1 + 128) -= v25;
    *(a1 + 96) += v25;
  }

  v23 = *(a1 + 80);
  size = v23;
  if (!v23)
  {
    size = a2;
  }

  while (size < a2)
  {
    v23 *= 2;
    if (v23 <= size)
    {
      archive_set_error(*(a1 + 24), 12, "Unable to allocate copy buffer", a4, a5, a6, a7, a8, v21);
      *(a1 + 138) = 1;
      if (a3)
      {
        *a3 = -30;
      }

      return 0;
    }

    size = v23;
  }

  v22 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (v22)
  {
    if (*(a1 + 96))
    {
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      __memmove_chk();
    }

    free(*(a1 + 72));
    *(a1 + 72) = v22;
    *(a1 + 88) = v22;
    *(a1 + 80) = size;
    goto LABEL_52;
  }

  archive_set_error(*(a1 + 24), 12, "Unable to allocate copy buffer", v11, v12, v13, v14, v15, v21);
  *(a1 + 138) = 1;
  if (a3)
  {
    *a3 = -30;
  }

  return 0;
}

uint64_t archive_read_support_format_zip_seekable(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_zip_seekable") == -30)
  {
    return -30;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x21A0uLL, 0x10F00401908A625uLL);
    if (v8)
    {
      v8[2003] = 1;
      v8[2004] = 1;
      v8[14] = -1;
      *(v8 + 22) = real_crc32;
      if (__archive_read_register_format(a1, v8, "zip", archive_read_format_zip_seekable_bid, archive_read_format_zip_options, archive_read_format_zip_seekable_read_header, archive_read_format_zip_read_data, archive_read_format_zip_read_data_skip_seekable, 0, archive_read_format_zip_cleanup, archive_read_support_format_zip_capabilities_seekable, archive_read_format_zip_has_encrypted_entries))
      {
        free(v8);
      }

      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate zip data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_read_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  archive_read_set_open_callback(a1, a3);
  archive_read_set_read_callback(a1, a4);
  archive_read_set_close_callback(a1, a5);
  archive_read_set_callback_data(a1, a2);
  return archive_read_open1(a1);
}

uint64_t archive_clear_error(uint64_t result)
{
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 36) = 0;
  return result;
}

uint64_t archive_read_set_read_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_read_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 184) = a2;
    return 0;
  }
}

uint64_t archive_read_set_close_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_close_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 208) = a2;
    return 0;
  }
}

uint64_t archive_read_set_open_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_open_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 176) = a2;
    return 0;
  }
}

uint64_t archive_read_set_callback_data2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  HIDWORD(v9) = __archive_check_magic(a1, 14594245, 1, "archive_read_set_callback_data2");
  if (HIDWORD(v9) == -30)
  {
    return -30;
  }

  else
  {
    if (!*(a1 + 224))
    {
      *(a1 + 240) = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
      if (!*(a1 + 240))
      {
        archive_set_error(a1, 12, "No memory.", v3, v4, v5, v6, v7, v9);
        return -30;
      }

      *(a1 + 224) = 1;
    }

    if (a3 <= *(a1 + 224) - 1)
    {
      *(*(a1 + 240) + 24 * a3 + 16) = a2;
      *(*(a1 + 240) + 24 * a3) = -1;
      *(*(a1 + 240) + 24 * a3 + 8) = -1;
      return 0;
    }

    else
    {
      archive_set_error(a1, 22, "Invalid index specified.", v3, v4, v5, v6, v7, v9);
      return -30;
    }
  }
}

uint64_t archive_read_open1(uint64_t a1)
{
  v15 = 0;
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_open") == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(a1);
    if (*(a1 + 184))
    {
      if (*(a1 + 176) && (v15 = (*(a1 + 176))(a1, *(*(a1 + 240) + 16))) != 0)
      {
        read_client_close_proxy(a1);
        return v15;
      }

      else
      {
        v18 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F004046953F9BuLL);
        if (v18)
        {
          v18[1] = 0;
          v18[2] = 0;
          v18[3] = a1;
          v18[5] = *(*(a1 + 240) + 16);
          v18[4] = none_reader_vtable;
          v18[6] = "none";
          *(v18 + 14) = 0;
          *(v18 + 15) = 1;
          *(v18 + 16) = 1;
          **(a1 + 240) = 0;
          if (*(a1 + 632) && *(a1 + 640))
          {
              ;
            }

            *(i + 16) = v18;
          }

          else
          {
            *(a1 + 632) = v18;
            v15 = choose_filters(a1, v6, v7, v8, v9, v10, v11, v12);
            if (v15 < -20)
            {
              *(a1 + 4) = 0x8000;
              return -30;
            }
          }

          if (!*(a1 + 2072))
          {
            v16 = choose_format(a1, v6, v7, v8, v9, v10, v11, v12);
            if (v16 < 0)
            {
              close_filters(a1);
              *(a1 + 4) = 0x8000;
              return -30;
            }

            *(a1 + 2072) = a1 + 664 + 88 * v16;
          }

          *(a1 + 4) = 2;
          client_switch_proxy(*(a1 + 632), 0);
          return v15;
        }

        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 22, "No reader function provided to archive_read_open", v1, v2, v3, v4, v5, v14);
      *(a1 + 4) = 0x8000;
      return -30;
    }
  }
}

uint64_t choose_filters(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a1;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  HIDWORD(v9) = 0;
  for (i = 0; ; ++i)
  {
    if (i >= 25)
    {
      archive_set_error(v19, 79, "Input requires too many filters for decoding", a4, a5, a6, a7, a8, v9);
      return -30;
    }

    v18 = 16;
    v15 = 0;
    v12 = 0;
    v13 = v19 + 62;
    v17 = 0;
    while (v17 < v18)
    {
      if (*(v13 + 2))
      {
        v16 = (**(v13 + 2))(v13, *(v19 + 79));
        if (v16 > v15)
        {
          v15 = v16;
          v12 = v13;
        }
      }

      ++v17;
      v13 += 6;
    }

    if (!v12)
    {
      break;
    }

    v11 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F004046953F9BuLL);
    if (!v11)
    {
      return -30;
    }

    v11[1] = v12;
    v11[3] = v19;
    v11[2] = *(v19 + 79);
    *(v19 + 79) = v11;
    HIDWORD(v9) = (*(*(v12 + 2) + 8))(*(v19 + 79));
    if (HIDWORD(v9))
    {
      __archive_read_free_filters(v19);
      return -30;
    }
  }

  __archive_read_filter_ahead(*(v19 + 79), 1uLL, &v10, a4, a5, a6, a7, a8);
  if (v10 < 0)
  {
    __archive_read_free_filters(v19);
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t choose_format(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = -1;
  v10 = -1;
  *(a1 + 2072) = a1 + 664;
  for (i = 0; i < 16; ++i)
  {
    if (*(*(a1 + 2072) + 16))
    {
      v12 = (*(*(a1 + 2072) + 16))(a1, v11);
      if (v12 == -30)
      {
        return -30;
      }

      if (**(a1 + 632))
      {
        __archive_read_seek(a1, 0, 0);
      }

      if (v12 > v11 || (v10 & 0x80000000) != 0)
      {
        v11 = v12;
        v10 = i;
      }
    }

    *(a1 + 2072) += 88;
  }

  if ((v10 & 0x80000000) != 0)
  {
    archive_set_error(a1, 79, "No formats registered", a4, a5, a6, a7, a8, v9);
    return -30;
  }

  else if (v11 >= 1)
  {
    return v10;
  }

  else
  {
    archive_set_error(a1, 79, "Unrecognized archive format", a4, a5, a6, a7, a8, v9);
    return -30;
  }
}

uint64_t archive_read_format_ar_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __s1 = __archive_read_ahead(a1, 8uLL, 0, a4, a5, a6, a7, a8);
  if (__s1)
  {
    if (!memcmp(__s1, "!<arch>\n", 8uLL))
    {
      return 64;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t archive_read_format_cpio_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = **(a1 + 2072);
  ahead = __archive_read_ahead(a1, 6uLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    if (!memcmp(ahead, "070707", 6uLL))
    {
      *(v10 + 8) = header_odc;
      return 48;
    }

    else if (!memcmp(ahead, "070727", 6uLL))
    {
      *(v10 + 8) = header_odc;
      return 48;
    }

    else if (!memcmp(ahead, "070701", 6uLL))
    {
      *(v10 + 8) = header_newc;
      return 48;
    }

    else if (!memcmp(ahead, "070702", 6uLL))
    {
      *(v10 + 8) = header_newc;
      return 48;
    }

    else if (ahead[1] + (*ahead << 8) == 29127)
    {
      *(v10 + 8) = header_bin_be;
      return 16;
    }

    else
    {
      if (*ahead + (ahead[1] << 8) != 29127)
      {
        return -20;
      }

      *(v10 + 8) = header_bin_le;
      return 16;
    }
  }

  return -1;
}

uint64_t archive_read_format_empty_bid(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 1 || __archive_read_ahead(a1, 1uLL, 0, a4, a5, a6, a7, a8))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_read_format_lha_bid(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  ahead = 0;
  v18 = 0;
  v17 = 0;
  if (a2 <= 30)
  {
    ahead = __archive_read_ahead(v21, 0x16uLL, 0, a4, a5, a6, a7, a8);
    if (ahead)
    {
      if (lha_check_header_format(ahead))
      {
        if (*ahead == 77 && ahead[1] == 90)
        {
          v16 = 0;
          v15 = 4096;
          while (v16 < 20480)
          {
            v18 = __archive_read_ahead(v21, v16 + v15, &v17, v8, v9, v10, v11, v12);
            if (v18)
            {
              for (ahead = (v18 + v16); (ahead + 22) < v18 + v17; ahead += v14)
              {
                v14 = lha_check_header_format(ahead);
                if (!v14)
                {
                  return 30;
                }
              }

              v16 = &ahead[-v18];
            }

            else
            {
              v15 >>= 1;
              if (v15 < 25)
              {
                return 0;
              }
            }
          }
        }

        return 0;
      }

      else
      {
        return 30;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t mtree_bid(uint64_t a1)
{
  v1 = strlen("#mtree");
  ahead = __archive_read_ahead(a1, v1, 0, v2, v3, v4, v5, v6);
  if (ahead)
  {
    v7 = strlen("#mtree");
    if (!memcmp(ahead, "#mtree", v7))
    {
      return (8 * strlen("#mtree"));
    }

    else
    {
      return detect_form(a1, 0, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    return -1;
  }
}

uint64_t lha_check_header_format(_BYTE *a1)
{
  v2 = a1[5];
  if (v2 == 45)
  {
    return 3;
  }

  if ((v2 - 48) > 7 && v2 != 100)
  {
    if (v2 == 104)
    {
      return 1;
    }

    if (v2 == 108)
    {
      return 2;
    }

    if (v2 != 115)
    {
      if (v2 == 122)
      {
        return 1;
      }

      else
      {
        return 4;
      }
    }
  }

  v3 = 4;
  if (!*a1 || a1[2] != 45 || a1[3] != 108 || a1[6] != 45)
  {
    return v3;
  }

  if (a1[4] != 104)
  {
    goto LABEL_21;
  }

  if (a1[5] == 115)
  {
    return v3;
  }

  if (!a1[20])
  {
    return 0;
  }

  if (a1[20] <= 3u && a1[19] == 32)
  {
    return 0;
  }

LABEL_21:
  if (a1[4] != 122 || a1[20] || a1[5] != 115 && a1[5] != 52 && a1[5] != 53)
  {
    return v3;
  }

  return 0;
}

uint64_t next_line(uint64_t a1, char **a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  if (*a3)
  {
    line_size = get_line_size(*a2, *a3, a5);
  }

  else
  {
    *a5 = 0;
    line_size = 0;
  }

  while (1)
  {
    v14 = 0;
    if (!*a5)
    {
      v14 = 0;
      if (line_size == *a3)
      {
        v14 = v18 == 0;
      }
    }

    if (!v14)
    {
      break;
    }

    v17 = *a4 - *a3;
    v16 = (*a4 + 1023) & 0xFFFFFC00;
    if (line_size >= 0x100000)
    {
      return -1;
    }

    if (v16 < *a4 + 160)
    {
      v16 *= 2;
    }

    *a2 = __archive_read_ahead(a1, v16, a3, a4, a5, a6, a7, a8);
    if (!*a2)
    {
      if (*a4 >= *a3)
      {
        return 0;
      }

      *a2 = __archive_read_ahead(a1, *a3, a3, v8, v9, v10, v11, v12);
      v18 = 1;
    }

    *a4 = *a3;
    *a2 += v17;
    *a3 -= v17;
    v15 = line_size;
    line_size = get_line_size(&(*a2)[line_size], *a3 - line_size, a5);
    if ((line_size & 0x8000000000000000) == 0)
    {
      line_size += v15;
    }
  }

  return line_size;
}

uint64_t detect_form(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a1;
  v24 = a2;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  if (a2)
  {
    *v24 = 0;
  }

  v23 = __archive_read_ahead(v25, 1uLL, &v22, a4, a5, a6, a7, a8);
  if (v23)
  {
    v21 = v22;
    while (1)
    {
      v20 = next_line(v25, &v23, &v22, &v21, &v19, v8, v9, v10);
      if (v20 <= 0 || !v19)
      {
        break;
      }

      if (v17)
      {
        if (bid_keyword_list(v23, v20, 0, 0) <= 0)
        {
          break;
        }

        if (v23[v20 - v19 - 1] != 92)
        {
          if (v17 == 1 && ++v18 >= 3)
          {
            break;
          }

          v17 = 0;
        }

        v23 += v20;
        v22 -= v20;
      }

      else
      {
        while (1)
        {
          v13 = 0;
          if (v20 > 0)
          {
            v12 = 1;
            if (*v23 != 32)
            {
              v12 = *v23 == 9;
            }

            v13 = v12;
          }

          if (!v13)
          {
            break;
          }

          ++v23;
          --v22;
          --v20;
        }

        if (*v23 == 35 || *v23 == 10 || *v23 == 13)
        {
          v23 += v20;
          v22 -= v20;
        }

        else
        {
          if (*v23 == 47)
          {
            if (v20 > 4 && !strncmp(v23, "/set", 4uLL))
            {
              if (bid_keyword_list(v23 + 4, v20 - 4, 0, 0) <= 0)
              {
                break;
              }

              if (v23[v20 - v19 - 1] == 92)
              {
                v17 = 2;
              }
            }

            else
            {
              if (v20 <= 6 || strncmp(v23, "/unset", 6uLL) || bid_keyword_list(v23 + 6, v20 - 6, 1, 0) <= 0)
              {
                break;
              }

              if (v23[v20 - v19 - 1] == 92)
              {
                v17 = 2;
              }
            }
          }

          else
          {
            v15 = 0;
            v14 = bid_entry(v23, v20, v19, &v15);
            if (v14 < 0)
            {
              break;
            }

            if (v16)
            {
              if (v16 == 1 && !v15 && v14 > 0)
              {
                break;
              }
            }

            else if (v15)
            {
              v16 = 1;
            }

            else if (v14 > 0)
            {
              v16 = -1;
            }

            if (v15 || v23[v20 - v19 - 1] != 92)
            {
              if (++v18 >= 3)
              {
                break;
              }
            }

            else
            {
              v17 = 1;
            }
          }

          v23 += v20;
          v22 -= v20;
        }
      }
    }

    if (v18 < 3 && (v18 <= 0 || v20))
    {
      return 0;
    }

    else
    {
      if (v24 && v16 == 1)
      {
        *v24 = 1;
      }

      return 32;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t get_line_size(char *a1, uint64_t a2, void *a3)
{
  for (i = 0; i < a2; ++i)
  {
    v4 = *a1;
    if (!*a1)
    {
      if (a3)
      {
        *a3 = 0;
      }

      return -1;
    }

    if (v4 == 10)
    {
      goto LABEL_15;
    }

    if (v4 == 13)
    {
      if (a2 - i > 1 && a1[1] == 10)
      {
        if (a3)
        {
          *a3 = 2;
        }

        return i + 2;
      }

LABEL_15:
      if (a3)
      {
        *a3 = 1;
      }

      return i + 1;
    }

    ++a1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2;
}

uint64_t archive_read_format_tar_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ahead = __archive_read_ahead(a1, 0x200uLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    if (*ahead || !archive_block_is_null(ahead))
    {
      if (checksum(a1, ahead))
      {
        v10 = 48;
        if (!strcmp((ahead + 257), "ustar") && !memcmp((ahead + 263), "00", 2uLL))
        {
          v10 = 104;
        }

        if (!memcmp((ahead + 257), "ustar ", 6uLL) && !strcmp((ahead + 263), " "))
        {
          v10 += 56;
        }

        if (*(ahead + 156) && (*(ahead + 156) < 48 || *(ahead + 156) > 57) && (*(ahead + 156) < 65 || *(ahead + 156) > 90) && (*(ahead + 156) < 97 || *(ahead + 156) > 122))
        {
          return 0;
        }

        else
        {
          v11 = v10 + 2;
          if (!validate_number_field((ahead + 100), 8uLL) || !validate_number_field((ahead + 108), 8uLL) || !validate_number_field((ahead + 116), 8uLL) || !validate_number_field((ahead + 136), 0xCuLL) || !validate_number_field((ahead + 124), 0xCuLL) || !validate_number_field((ahead + 329), 8uLL) || !validate_number_field((ahead + 337), 8uLL))
          {
            return 0;
          }

          return v11;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 10;
    }
  }

  else
  {
    return -1;
  }
}

BOOL checksum(uint64_t a1, uint64_t a2)
{
  for (i = 0; i < 8; ++i)
  {
    v3 = *(a2 + 148 + i);
    if (v3 != 32 && v3 && (v3 < 48 || v3 > 55))
    {
      return 0;
    }
  }

  v7 = tar_atol((a2 + 148), 8uLL);
  v8 = 0;
  for (j = 0; j < 0x94; ++j)
  {
    v8 += *(a2 + j);
  }

  while (j < 0x9C)
  {
    v8 += 32;
    ++j;
  }

  while (j < 0x200)
  {
    v8 += *(a2 + j++);
  }

  if (v7 == v8)
  {
    return 1;
  }

  else
  {
    v9 = 0;
    for (k = 0; k < 0x94; ++k)
    {
      v9 += *(a2 + k);
    }

    while (k < 0x9C)
    {
      v9 += 32;
      ++k;
    }

    while (k < 0x200)
    {
      v9 += *(a2 + k++);
    }

    return v7 == v9;
  }
}

unint64_t tar_atol(_BYTE *a1, unint64_t a2)
{
  if ((*a1 & 0x80) != 0)
  {
    return tar_atol256(a1, a2);
  }

  else
  {
    return tar_atol8(a1, a2);
  }
}

unint64_t tar_atol_base_n(_BYTE *a1, uint64_t a2, int a3)
{
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0x7FFFFFFFFFFFFFFFLL / a3;
  v10 = 0x7FFFFFFFFFFFFFFFLL % a3;
  while (1)
  {
    v7 = 0;
    if (a2)
    {
      v6 = 1;
      if (*a1 != 32)
      {
        v6 = *a1 == 9;
      }

      v7 = v6;
    }

    if (!v7)
    {
      break;
    }

    ++a1;
    --a2;
  }

  v8 = 1;
  if (a2 && *a1 == 45)
  {
    v8 = -1;
    ++a1;
    --a2;
    v12 = 0x8000000000000000;
    v11 = -(0x8000000000000000 / a3);
    v10 = -(0x8000000000000000 % a3);
  }

  v13 = 0;
  if (a2)
  {
    v9 = *a1 - 48;
    while (1)
    {
      v5 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        v5 = 0;
        if (v9 < a3)
        {
          v5 = a2 != 0;
        }
      }

      if (!v5)
      {
        break;
      }

      if (v13 > v11 || v13 == v11 && v9 >= v10)
      {
        return v12;
      }

      v13 = v13 * a3 + v9;
      v9 = *++a1 - 48;
      --a2;
    }
  }

  if (v8 < 0)
  {
    return -v13;
  }

  else
  {
    return v13;
  }
}

uint64_t validate_number_field(unsigned __int8 *a1, unint64_t a2)
{
  v6 = *a1;
  if (*a1 == 128 || v6 == 255 || !v6)
  {
    return 1;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v4 = 0;
      if (i < a2)
      {
        v4 = a1[i] == 32;
      }

      if (!v4)
      {
        break;
      }
    }

    while (1)
    {
      v3 = 0;
      if (i < a2)
      {
        v3 = 0;
        if (a1[i] >= 48)
        {
          v3 = a1[i] <= 55;
        }
      }

      if (!v3)
      {
        break;
      }

      ++i;
    }

    while (i < a2)
    {
      if (a1[i] != 32 && a1[i])
      {
        return 0;
      }

      ++i;
    }

    return 1;
  }
}

uint64_t xar_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ahead = __archive_read_ahead(a1, 0x1CuLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    if (archive_be32dec_2(ahead) == 2019652129)
    {
      if (archive_be16dec((ahead + 4)) == 28)
      {
        if (archive_be16dec((ahead + 6)) == 1)
        {
          if (archive_be32dec_2(ahead + 24) > 2)
          {
            return 0;
          }

          else
          {
            return 96;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t _warc_bid(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v11 = __archive_read_ahead(a1, 0xCuLL, &v10, a4, a5, a6, a7, a8);
  if (v11)
  {
    if (v10 >= 12)
    {
      v9 = _warc_rdver(v11, v10);
      if (v9 >= 0x4B0 && v9 <= 0x2710)
      {
        return 64;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t _warc_rdver(char *a1, unint64_t a2)
{
  v4 = 0;
  if (a2 >= 0xC && !memcmp(a1, "WARC/", 5uLL))
  {
    v8 = (a1 + 5);
    if (isdigit(*v8) && v8[1] == 46 && isdigit(v8[2]))
    {
      v3 = isdigit(v8[3]) != 0;
      v5 = 10000 * (*v8 - 48);
      if (v3)
      {
        v4 = v5 + 1000 * (v8[2] - 48) + 100 * (v8[3] - 48);
      }

      else
      {
        v4 = v5 + 100 * (v8[2] - 48);
      }

      __s1 = &v8[v3 + 3];
      if (v4 < 0x4B0)
      {
        if (*__s1 != 32 && *__s1 != 9)
        {
          return 0;
        }
      }

      else if (memcmp(__s1, "\r\n", 2uLL))
      {
        return 0;
      }
    }

    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_format_7zip_bid(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  ahead = 0;
  if (a2 <= 32)
  {
    ahead = __archive_read_ahead(v21, 6uLL, 0, a4, a5, a6, a7, a8);
    if (ahead)
    {
      if (!memcmp(ahead, "7z\xBC\xAF'\x1C", 6uLL))
      {
        return 48;
      }

      else
      {
        if (*ahead == 77 && ahead[1] == 90 || !memcmp(ahead, "\x7FELF", 4uLL))
        {
          v18 = 159744;
          v17 = 4096;
          v16 = 0;
          while (v18 + v17 <= 393216)
          {
            v15 = __archive_read_ahead(v21, v18 + v17, &v16, v8, v9, v10, v11, v12);
            if (v15)
            {
              for (ahead = (v15 + v18); (ahead + 32) < v15 + v16; ahead += v14)
              {
                v14 = check_7zip_header_in_sfx(ahead);
                if (!v14)
                {
                  return 48;
                }
              }

              v18 = &ahead[-v15];
            }

            else
            {
              v17 >>= 1;
              if (v17 < 64)
              {
                return 0;
              }
            }
          }
        }

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t archive_read_format_cab_bid(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  ahead = 0;
  v18 = 0;
  if (a2 <= 64)
  {
    ahead = __archive_read_ahead(v21, 8uLL, 0, a4, a5, a6, a7, a8);
    if (ahead)
    {
      if (!memcmp(ahead, "MSCF", 8uLL))
      {
        return 64;
      }

      else
      {
        if (*ahead == 77 && ahead[1] == 90)
        {
          v17 = 0;
          v16 = 4096;
          while (v17 < 0x20000)
          {
            v15 = __archive_read_ahead(v21, v17 + v16, &v18, v8, v9, v10, v11, v12);
            if (v15)
            {
              for (ahead = (v15 + v17); (ahead + 8) < v15 + v18; ahead += cab_magic)
              {
                cab_magic = find_cab_magic(ahead);
                if (!cab_magic)
                {
                  return 64;
                }
              }

              v17 = &ahead[-v15];
            }

            else
            {
              v16 >>= 1;
              if (v16 < 128)
              {
                return 0;
              }
            }
          }
        }

        return 0;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t archive_read_format_rar_bid(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v19 = a2;
  __s1 = 0;
  if (a2 <= 30)
  {
    __s1 = __archive_read_ahead(v20, 7uLL, 0, a4, a5, a6, a7, a8);
    if (__s1)
    {
      if (!memcmp(__s1, &unk_1BF343880, 7uLL))
      {
        return 30;
      }

      else
      {
        if (*__s1 == 77 && *(__s1 + 1) == 90 || !memcmp(__s1, "\x7FELF", 4uLL))
        {
          v17 = 0x10000;
          v16 = 4096;
          v15 = 0;
          while (v17 + v16 <= 0x20000)
          {
            v14 = __archive_read_ahead(v20, v17 + v16, &v15, v8, v9, v10, v11, v12);
            if (v14)
            {
              for (__s1 = (v14 + v17); __s1 + 7 < v14 + v15; __s1 = __s1 + 16)
              {
                if (!memcmp(__s1, &unk_1BF343880, 7uLL))
                {
                  return 30;
                }
              }

              v17 = __s1 - v14;
            }

            else
            {
              v16 >>= 1;
              if (v16 < 64)
              {
                return 0;
              }
            }
          }
        }

        return 0;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t archive_read_format_zip_streamable_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ahead = __archive_read_ahead(a1, 4uLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    if (*ahead == 80 && ahead[1] == 75 && (ahead[2] == 1 && ahead[3] == 2 || ahead[2] == 3 && ahead[3] == 4 || ahead[2] == 5 && ahead[3] == 6 || ahead[2] == 6 && ahead[3] == 6 || ahead[2] == 7 && ahead[3] == 8 || ahead[2] == 48 && ahead[3] == 48))
    {
      return 29;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t rar5_bid(uint64_t a1, int a2)
{
  if (a2 <= 30)
  {
    v10 = bid_standard(a1);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = bid_sfx(a1, v2, v3, v4, v5, v6, v7, v8);
      if ((v11 & 0x80000000) != 0)
      {
        return -1;
      }

      else
      {
        return v11;
      }
    }

    else
    {
      return v10;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t archive_read_format_iso9660_bid(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  if (a2 <= 48)
  {
    v13 = **(v15 + 2072);
    v10 = __archive_read_ahead(v15, 0xC000uLL, &v12, a4, a5, a6, a7, a8);
    if (v10)
    {
      v12 -= 0x8000;
      v11 = (v10 + 0x8000);
      v9 = 0;
      while (v12 > 2048)
      {
        if (*v11 >= 4u && *v11 != 255)
        {
          return 0;
        }

        if (memcmp(v11 + 1, "CD001", 5uLL))
        {
          return 0;
        }

        if (!isPVD(v13, v11) && (*(v13 + 196) || !isJolietSVD(v13, v11)) && !isBootRecord(v13, v11) && !isEVD(v13, v11) && !isSVD(v13, v11) && !isVolumePartition(v13, v11))
        {
          if (!isVDSetTerminator(v13, v11))
          {
            return 0;
          }

          v9 = 1;
          break;
        }

        v12 -= 2048;
        v11 += 2048;
      }

      if (v9 && *(v13 + 188) > 16)
      {
        return 48;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t _archive_read_next_header2(uint64_t a1, _DWORD *a2)
{
  if (__archive_check_magic(a1, 195932357, 6, "archive_read_next_header2") != -30)
  {
    v5 = *(a1 + 160);
    if ((*(v5 + 520) & 0x80000000) == 0)
    {
      close_and_restore_time(*(v5 + 520), v5, v5 + 408);
      *(v5 + 520) = -1;
    }

    do
    {
      archive_entry_clear(a2);
      entry_0 = next_entry_0(a1, v5, a2);
      if ((*(v5 + 520) & 0x80000000) == 0)
      {
        close(*(v5 + 520));
        *(v5 + 520) = -1;
      }
    }

    while (entry_0 == -10);
    tree_enter_initial_dir(v5);
    switch(entry_0)
    {
      case 0xFFFFFFE2:
        *(a1 + 4) = 0x8000;
        break;
      case 0xFFFFFFEC:
      case 0u:
        v2 = tree_current_path(v5);
        archive_entry_copy_sourcepath(a2, v2);
        *(v5 + 536) = 0;
        if (archive_entry_filetype(a2) == 0x8000)
        {
          *(v5 + 404) = archive_entry_nlink(a2);
          *(v5 + 528) = archive_entry_size(a2);
          *(v5 + 524) = *(v5 + 528) == 0;
          if (!*(v5 + 524) && setup_sparse(a1, a2))
          {
            return -30;
          }
        }

        else
        {
          *(v5 + 528) = 0;
          *(v5 + 524) = 1;
        }

        *(a1 + 4) = 4;
        break;
      case 1u:
        *(a1 + 4) = 16;
        break;
    }

    __archive_reset_read_data(a1);
    return entry_0;
  }

  return -30;
}

uint64_t _archive_read_next_header2_0(uint64_t a1, uint64_t a2)
{
  data_skip = 0;
  if (__archive_check_magic(a1, 14594245, 6, "archive_read_next_header") == -30)
  {
    return -30;
  }

  archive_entry_clear(a2);
  archive_clear_error(a1);
  if (*(a1 + 4) == 4)
  {
    data_skip = archive_read_data_skip(a1);
    if (data_skip == 1)
    {
      archive_set_error(a1, 5, "Premature end-of-file.", v2, v3, v4, v5, v6, v8);
LABEL_7:
      *(a1 + 4) = 0x8000;
      return -30;
    }

    if (data_skip == -30)
    {
      goto LABEL_7;
    }
  }

  *(a1 + 648) = **(a1 + 632);
  ++*(a1 + 32);
  v10 = (*(*(a1 + 2072) + 32))(a1, a2);
  if (v10 == -30)
  {
    *(a1 + 4) = 0x8000;
  }

  else if (v10 == -20)
  {
    *(a1 + 4) = 4;
  }

  else if (v10 != -10)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        *(a1 + 4) = 16;
        --*(a1 + 32);
      }
    }

    else
    {
      *(a1 + 4) = 4;
    }
  }

  __archive_reset_read_data(a1);
  *(a1 + 656) = *(a1 + 228);
  if (v10 < data_skip || v10 == 1)
  {
    return v10;
  }

  else
  {
    return data_skip;
  }
}

uint64_t archive_read_format_zip_seekable_bid(uint64_t a1, int a2)
{
  v16 = **(a1 + 2072);
  if (a2 <= 32)
  {
    seek = __archive_read_seek(a1, 0, 2);
    if (seek > 0)
    {
      if (seek <= 0x4000)
      {
        v9 = seek;
      }

      else
      {
        v9 = 0x4000;
      }

      v14 = __archive_read_seek(a1, -v9, 2);
      if (v14 < 0)
      {
        return 0;
      }

      else
      {
        ahead = __archive_read_ahead(a1, v9, 0, v2, v3, v4, v5, v6);
        if (ahead)
        {
          for (i = v9 - 22; ; i -= 4)
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    if (i <= 0)
                    {
                      return 0;
                    }

                    v8 = *(ahead + i);
                    if (v8 != 5)
                    {
                      break;
                    }

                    i -= 2;
                  }

                  if (v8 != 6)
                  {
                    break;
                  }

                  i -= 3;
                }

                if (v8 != 75)
                {
                  break;
                }

                --i;
              }

              if (v8 == 80)
              {
                break;
              }

              i -= 4;
            }

            if (!memcmp((ahead + i), "PK\x05\x06", 4uLL))
            {
              break;
            }
          }

          eocd = read_eocd(v16, (ahead + i), v14 + i);
          if (i >= 20 && !memcmp((ahead + i - 20), "PK\x06\a", 4uLL))
          {
            zip64_eocd = read_zip64_eocd(a1, v16, (ahead + i - 20));
            if (zip64_eocd > eocd)
            {
              return zip64_eocd;
            }
          }

          return eocd;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t client_switch_proxy(uint64_t a1, int a2)
{
  v6 = 0;
  if (*(*(a1 + 24) + 228) == a2)
  {
    return 0;
  }

  else
  {
    *(*(a1 + 24) + 228) = a2;
    v4 = *(*(*(a1 + 24) + 240) + 24 * *(*(a1 + 24) + 228) + 16);
    if (*(*(a1 + 24) + 216))
    {
      v5 = (*(*(a1 + 24) + 216))(*(a1 + 24), *(a1 + 40), v4);
      v6 = v5;
      *(a1 + 40) = v4;
    }

    else
    {
      if (*(*(a1 + 24) + 208))
      {
        v6 = (*(*(a1 + 24) + 208))(*(a1 + 24), *(a1 + 40));
      }

      *(a1 + 40) = v4;
      v5 = client_open_proxy(a1);
    }

    if (v6 >= v5)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t _archive_read_next_header(uint64_t a1, void *a2)
{
  *a2 = 0;
  LODWORD(result) = _archive_read_next_header2(a1, *(a1 + 144));
  *a2 = *(a1 + 144);
  return result;
}

uint64_t _archive_read_next_header_0(uint64_t a1, void *a2)
{
  *a2 = 0;
  LODWORD(result) = _archive_read_next_header2_0(a1, *(a1 + 144));
  *a2 = *(a1 + 144);
  return result;
}

void archive_mstring_clean(uint64_t a1)
{
  archive_wstring_free(a1 + 48);
  archive_string_free(a1);
  archive_string_free(a1 + 24);
  archive_string_free(a1 + 72);
  *(a1 + 96) = 0;
}

uint64_t archive_entry_clear(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  archive_mstring_clean(a1 + 168);
  archive_mstring_clean(a1 + 288);
  archive_mstring_clean(a1 + 392);
  archive_mstring_clean(a1 + 496);
  archive_mstring_clean(a1 + 808);
  archive_mstring_clean(a1 + 600);
  archive_mstring_clean(a1 + 704);
  archive_entry_copy_mac_metadata(a1, 0, 0);
  archive_acl_clear(a1 + 1136);
  archive_entry_xattr_clear(a1);
  archive_entry_sparse_clear(a1);
  free(*(a1 + 8));
  *(a1 + 1244) = 0;
  __memset_chk();
  return a1;
}

void archive_string_free(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  free(*a1);
  *a1 = 0;
}

void archive_wstring_free(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  free(*a1);
  *a1 = 0;
}

void archive_entry_copy_mac_metadata(uint64_t a1, uint64_t a2, size_t a3)
{
  free(*(a1 + 920));
  if (a2 && a3)
  {
    *(a1 + 928) = a3;
    *(a1 + 920) = malloc_type_malloc(a3, 0x17F5CD8AuLL);
    if (!*(a1 + 920))
    {
      abort();
    }

    v3 = *(a1 + 920);
    __memcpy_chk();
  }

  else
  {
    *(a1 + 920) = 0;
    *(a1 + 928) = 0;
  }
}

void archive_acl_clear(uint64_t a1)
{
  while (*(a1 + 8))
  {
    v1 = **(a1 + 8);
    archive_mstring_clean(*(a1 + 8) + 24);
    free(*(a1 + 8));
    *(a1 + 8) = v1;
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
  free(*(a1 + 40));
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
}

void archive_entry_xattr_clear(uint64_t a1)
{
  while (*(a1 + 1192))
  {
    v1 = **(a1 + 1192);
    free(*(*(a1 + 1192) + 8));
    free(*(*(a1 + 1192) + 16));
    free(*(a1 + 1192));
    *(a1 + 1192) = v1;
  }

  *(a1 + 1192) = 0;
}

void archive_entry_sparse_clear(uint64_t a1)
{
  while (*(a1 + 1208))
  {
    v1 = **(a1 + 1208);
    free(*(a1 + 1208));
    *(a1 + 1208) = v1;
  }

  *(a1 + 1216) = 0;
}

uint64_t archive_read_format_tar_read_header(_DWORD *a1, void *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  archive_entry_set_dev(a2, archive_read_format_tar_read_header_default_dev + 1);
  archive_entry_set_ino(v10, ++archive_read_format_tar_read_header_default_inode);
  if (archive_read_format_tar_read_header_default_inode >= 0xFFFF)
  {
    ++archive_read_format_tar_read_header_default_dev;
    archive_read_format_tar_read_header_default_inode = 0;
  }

  v9 = **(v11 + 259);
  v9[36] = 0;
  gnu_clear_sparse_list(v9);
  v9[39] = -1;
  *(v9 + 112) = 0;
  *(v9 + 68) = 0;
  v9[51] = v9[50];
  if (!v9[51])
  {
    if (!*(v9 + 108))
    {
      v9[53] = archive_string_default_conversion_for_read();
      *(v9 + 108) = 1;
    }

    v9[51] = v9[53];
  }

  v6 = tar_read_header(v11, v9, v10, &v4);
  tar_flush_unconsumed(v11, &v4);
  if (v9[41])
  {
    for (i = v9[41]; i; i = *i)
    {
      if (!*(i + 24))
      {
        archive_entry_sparse_add_entry(v10, *(i + 8), *(i + 16));
      }
    }
  }

  else if (gnu_add_sparse_entry(v11, v9, 0, v9[35]))
  {
    return -30;
  }

  if (!v6 && archive_entry_filetype(v10) == 0x8000)
  {
    v7 = archive_entry_pathname_w(v10);
    if (v7)
    {
      v5 = wcslen(v7);
      if (v5 && v7[v5 - 1] == 47)
      {
        archive_entry_set_filetype(v10, 0x4000);
        v9[35] = 0;
        v9[37] = 0;
      }
    }

    else
    {
      v8 = archive_entry_pathname(v10);
      if (v8)
      {
        v5 = strlen(v8);
        if (v5)
        {
          if (v8[v5 - 1] == 47)
          {
            archive_entry_set_filetype(v10, 0x4000);
            v9[35] = 0;
            v9[37] = 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t archive_entry_set_ino(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v2 = 0;
  }

  *(result + 16) = 0;
  *(result + 160) |= 0x80u;
  *(result + 96) = v2;
  return result;
}

_DWORD *archive_entry_set_dev(_DWORD *result, int a2)
{
  result[4] = 0;
  result[40] |= 0x100u;
  result[32] = 0;
  result[33] = a2;
  return result;
}

void gnu_clear_sparse_list(uint64_t a1)
{
  while (*(a1 + 328))
  {
    v1 = *(a1 + 328);
    *(a1 + 328) = *v1;
    free(v1);
  }

  *(a1 + 336) = 0;
}

uint64_t tar_read_header(_DWORD *a1, uint64_t *a2, _DWORD *a3, unint64_t *a4)
{
  v49 = a1;
  v48 = a2;
  v47 = a3;
  v46 = a4;
  v45 = 0;
  v43 = 0;
  while (1)
  {
    tar_flush_unconsumed(v49, v46);
    v41 = __archive_read_ahead(v49, 0x200uLL, &v45, v4, v5, v6, v7, v8);
    if (v45 < 0)
    {
      return v45;
    }

    if (!v45)
    {
      return 1;
    }

    if (v45 < 512)
    {
      archive_set_error(v49, 79, "Truncated tar archive", v9, v10, v11, v12, v13, v37);
      return -30;
    }

    *v46 = 512;
    if (*v41 || !archive_block_is_null(v41))
    {
      break;
    }

    if (!*(v49 + 3))
    {
      v49[4] = 196608;
      *(v49 + 3) = "tar";
    }

    if (!*(v48 + 111))
    {
      tar_flush_unconsumed(v49, v46);
      ahead = __archive_read_ahead(v49, 0x200uLL, 0, v14, v15, v16, v17, v18);
      if (ahead && !*ahead && archive_block_is_null(ahead))
      {
        __archive_read_consume(v49, 0x200uLL);
      }

      archive_clear_error(v49);
      return 1;
    }
  }

  if (!checksum(v49, v41))
  {
    tar_flush_unconsumed(v49, v46);
    archive_set_error(v49, 22, "Damaged tar archive", v20, v21, v22, v23, v24, v37);
    return -10;
  }

  v25 = *(v48 + 67) + 1;
  *(v48 + 67) = v25;
  if (v25 > 32)
  {
    tar_flush_unconsumed(v49, v46);
    archive_set_error(v49, 22, "Too many special headers", v26, v27, v28, v29, v30, v37);
    return -20;
  }

  v38 = v41[156];
  switch(v38)
  {
    case 'A':
      v49[4] = 196610;
      *(v49 + 3) = "Solaris tar";
      v44 = header_Solaris_ACL(v49, v48, v47, v41, v46);
      break;
    case 'K':
      v44 = header_longlink(v49, v48, v47, v41, v46);
      break;
    case 'L':
      v44 = header_longname(v49, v48, v47, v41, v46);
      break;
    case 'V':
      v44 = header_volume(v49, v48, v47, v41, v46);
      if (v44 == 1)
      {
        v43 = 1;
      }

      break;
    case 'X':
      v49[4] = 196610;
      *(v49 + 3) = "POSIX pax interchange format (Sun variant)";
      v44 = header_pax_extensions(v49, v48, v47, v41, v46);
      break;
    case 'g':
      v49[4] = 196610;
      *(v49 + 3) = "POSIX pax interchange format";
      v44 = header_pax_global(v49, v48, v47, v41, v46);
      if (v44 == 1)
      {
        return 1;
      }

      break;
    case 'x':
      v49[4] = 196610;
      *(v49 + 3) = "POSIX pax interchange format";
      v44 = header_pax_extensions(v49, v48, v47, v41, v46);
      break;
    default:
      if (!strcmp(v41 + 257, "ustar  "))
      {
        v49[4] = 196612;
        *(v49 + 3) = "GNU tar format";
        v44 = header_gnutar(v49, v48, v47, v41, v46);
      }

      else if (!memcmp(v41 + 257, "ustar", 5uLL))
      {
        if (v49[4] != 196610)
        {
          v49[4] = 196609;
          *(v49 + 3) = "POSIX ustar format";
        }

        v44 = header_ustar(v49, v48, v47, v41);
      }

      else
      {
        v49[4] = 196608;
        *(v49 + 3) = "tar (non-POSIX)";
        v44 = header_old_tar(v49, v48, v47, v41);
      }

      break;
  }

  if (v44 == -30)
  {
    return -30;
  }

  tar_flush_unconsumed(v49, v46);
  --*(v48 + 67);
  if ((v44 == -20 || !v44) && !*(v48 + 67) && *(v48 + 110))
  {
    if (++*(v48 + 68) > 1)
    {
      return 0;
    }

    mac_metadata_blob = read_mac_metadata_blob(v49, v48, v47, 0, v46);
    if (mac_metadata_blob < v44)
    {
      v44 = mac_metadata_blob;
    }

    --*(v48 + 68);
  }

  if (v44 != -20 && v44)
  {
    if (v44 == 1)
    {
      if (v43)
      {
        return 1;
      }

      archive_set_error(v49, 22, "Damaged tar archive", v31, v32, v33, v34, v35, v37);
    }

    return -30;
  }

  else
  {
    if (*(v48 + 368))
    {
      if (*(v48 + 90) != 1 || *(v48 + 91))
      {
        archive_set_error(v49, -1, "Unrecognized GNU sparse file format", v31, v32, v33, v34, v35, v37);
        return -20;
      }

      *(v48 + 368) = 0;
      v39 = gnu_sparse_10_read(v49, v48, v46);
      if (v39 < 0)
      {
        return v39;
      }

      v48[35] -= v39;
      *(v48 + 368) = 0;
    }

    return v44;
  }
}

uint64_t tar_flush_unconsumed(uint64_t result, unint64_t *a2)
{
  if (*a2)
  {
    result = __archive_read_consume(result, *a2);
    *a2 = 0;
  }

  return result;
}

uint64_t read_body_to_string(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v23 = tar_atol((a4 + 124), 0xCuLL);
  if (v23 > 0x200000 || v23 < 0)
  {
    archive_set_error(a1, 22, "Special header too large: %llu", v5, v6, v7, v8, v9, v23);
    return -30;
  }

  else if (archive_string_ensure(a3, v23 + 1))
  {
    tar_flush_unconsumed(a1, a5);
    *a5 = (v23 + 511) & 0xFFFFFFFFFFFFFE00;
    if (__archive_read_ahead(a1, *a5, 0, v15, v16, v17, v18, v19))
    {
      v20 = *a3;
      __memcpy_chk();
      *(*a3 + v23) = 0;
      a3[1] = v23;
      return 0;
    }

    else
    {
      *a5 = 0;
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, 12, "No memory", v10, v11, v12, v13, v14, v22);
    return -30;
  }
}

uint64_t header_pax_extensions(_DWORD *a1, uint64_t *a2, _DWORD *a3, uint64_t a4, unint64_t *a5)
{
  body_to_string = read_body_to_string(a1, a2, a2 + 24, a4, a5);
  if (body_to_string)
  {
    return body_to_string;
  }

  else
  {
    header = tar_read_header(a1, a2, a3, a5);
    if (!header || header == -20)
    {
      v11 = pax_header(a1, a2, a3, a2 + 24, v5, v6, v7, v8);
      if (header >= v11)
      {
        v10 = v11;
      }

      else
      {
        v10 = header;
      }

      a2[37] = -a2[35] & 0x1FF;
      return v10;
    }

    else
    {
      return header;
    }
  }
}

uint64_t __archive_read_filter_consume(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return -30;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = advance_file_pointer(a1, a2);
  if (v8 == a2)
  {
    return v8;
  }

  archive_set_error(*(a1 + 24), -1, "Truncated input file (needed %jd bytes, only %jd available)", v2, v3, v4, v5, v6, a2);
  return -30;
}

uint64_t advance_file_pointer(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v6 = 0;
  if (*(a1 + 138))
  {
    return -1;
  }

  if (*(a1 + 96))
  {
    if (a2 < *(a1 + 96))
    {
      v4 = a2;
    }

    else
    {
      v4 = *(a1 + 96);
    }

    *(a1 + 88) += v4;
    *(a1 + 96) -= v4;
    v8 = a2 - v4;
    *a1 += v4;
    v6 = v4;
  }

  if (*(a1 + 128))
  {
    if (v8 < *(a1 + 128))
    {
      v3 = v8;
    }

    else
    {
      v3 = *(a1 + 128);
    }

    *(a1 + 120) += v3;
    *(a1 + 128) -= v3;
    v8 -= v3;
    *a1 += v3;
    v6 += v3;
  }

  if (!v8)
  {
    return v6;
  }

  if (!*(a1 + 60))
  {
    goto LABEL_20;
  }

  v7 = client_skip_proxy(a1, v8);
  if (v7 < 0)
  {
    *(a1 + 138) = 1;
    return v7;
  }

  else
  {
    *a1 += v7;
    v6 += v7;
    v8 -= v7;
    if (v8)
    {
      while (1)
      {
        while (1)
        {
LABEL_20:
          v5 = (**(a1 + 32))(a1, a1 + 104);
          if (v5 < 0)
          {
            *(a1 + 104) = 0;
            *(a1 + 138) = 1;
            return v5;
          }

          if (v5)
          {
            break;
          }

          if (*(*(a1 + 24) + 228) == *(*(a1 + 24) + 224) - 1 || client_switch_proxy(a1, *(*(a1 + 24) + 228) + 1))
          {
            *(a1 + 104) = 0;
            *(a1 + 136) = 1;
            return v6;
          }
        }

        if (v5 >= v8)
        {
          break;
        }

        *a1 += v5;
        v6 += v5;
        v8 -= v5;
      }

      *(a1 + 120) = *(a1 + 104) + v8;
      *(a1 + 128) = v5 - v8;
      *(a1 + 112) = v5;
      *a1 += v8;
      return v6 + v8;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t header_ustar(_DWORD *a1, void *a2, _DWORD *a3, _BYTE *a4)
{
  v8 = 0;
  v9 = a2 + 3;
  if (a4[345])
  {
    a2[4] = 0;
    archive_strncat(v9, (a4 + 345), 0x9BuLL);
    if (*(*v9 + v9[1] - 1) != 47)
    {
      archive_strappend_char(v9, 47);
    }

    archive_strncat(v9, a4, 0x64uLL);
  }

  else
  {
    a2[4] = 0;
    archive_strncat(v9, a4, 0x64uLL);
  }

  if (_archive_entry_copy_pathname_l(a3, *v9, v9[1], a2[51]) && (v8 = set_conversion_failed_error(a1, a2[51], "Pathname"), v8 == -30))
  {
    return -30;
  }

  else
  {
    v7 = header_common(a1, a2, a3, a4);
    if (v7 == -30)
    {
      return -30;
    }

    else
    {
      if (v7 < v8)
      {
        v8 = v7;
      }

      if (_archive_entry_copy_uname_l(a3, a4 + 265, 0x20uLL, a2[51]) && (v8 = set_conversion_failed_error(a1, a2[51], "Uname"), v8 == -30))
      {
        return -30;
      }

      else if (_archive_entry_copy_gname_l(a3, a4 + 297, 0x20uLL, a2[51]) && (v8 = set_conversion_failed_error(a1, a2[51], "Gname"), v8 == -30))
      {
        return -30;
      }

      else
      {
        if (a4[156] == 51 || a4[156] == 52)
        {
          v4 = tar_atol(a4 + 329, 8uLL);
          archive_entry_set_rdevmajor(a3, v4);
          v5 = tar_atol(a4 + 337, 8uLL);
          archive_entry_set_rdevminor(a3, v5);
        }

        a2[37] = -a2[35] & 0x1FFLL;
        return v8;
      }
    }
  }
}

uint64_t *archive_string_append(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!archive_string_ensure(a1, a1[1] + a3 + 1))
  {
    return 0;
  }

  if (a3)
  {
    v3 = *a1;
    v4 = a1[1];
    __memmove_chk();
  }

  a1[1] += a3;
  *(*a1 + a1[1]) = 0;
  return a1;
}

uint64_t *archive_strncat(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  for (i = a2; ; ++i)
  {
    v4 = 0;
    if (v6 < a3)
    {
      v4 = *i != 0;
    }

    if (!v4)
    {
      break;
    }

    ++v6;
  }

  v7 = archive_string_append(a1, a2, v6);
  if (!v7)
  {
    __archive_errx(1, "Out of memory");
  }

  return v7;
}

uint64_t archive_strncat_l(uint64_t *a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  v10 = 0;
  v8 = 0;
  if (a2 && a3)
  {
    if (a4 && (*(a4 + 36) & 0x2800) != 0)
    {
      v10 = utf16nbytes(a2, a3);
    }

    else
    {
      v10 = mbsnbytes(a2, a3);
    }
  }

  if (v10)
  {
    if (a4)
    {
      v11 = a2;
      v9 = 0;
      if (*(a4 + 96) > 1)
      {
        *(a4 + 64) = 0;
        v6 = (*(a4 + 80))(a4 + 56, a2, v10, a4);
        if (v6 && *__error() == 12)
        {
          return v6;
        }

        if (v6 < 0)
        {
          v8 = v6;
        }

        v11 = *(a4 + 56);
        v10 = *(a4 + 64);
        v9 = 1;
      }

      v7 = (*(a4 + 80 + 8 * v9))(a1, v11, v10, a4);
      if (v8 > v7)
      {
        return v7;
      }

      return v8;
    }

    else if (archive_string_append(a1, a2, v10))
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v5 = 1;
    if (a4 && (*(a4 + 36) & 0x1400) != 0)
    {
      v5 = 2;
    }

    if (archive_string_ensure(a1, a1[1] + v5))
    {
      *(*a1 + a1[1]) = 0;
      if (v5 == 2)
      {
        *(*a1 + a1[1] + 1) = 0;
      }

      return 0;
    }

    else
    {
      return -1;
    }
  }
}

uint64_t archive_mstring_copy_mbs_len_l(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    *(a1 + 8) = 0;
    *(a1 + 56) = 0;
    *(a1 + 32) = 0;
    v5 = archive_strncpy_l(a1, a2, a3, a4);
    if (v5)
    {
      *(a1 + 96) = 0;
    }

    else
    {
      *(a1 + 96) = 1;
    }

    return v5;
  }

  else
  {
    *(a1 + 96) = 0;
    return 0;
  }
}

unint64_t mbsnbytes(_BYTE *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  for (i = a1; ; ++i)
  {
    v3 = 0;
    if (v5 < a2)
    {
      v3 = *i != 0;
    }

    if (!v3)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t header_common(_DWORD *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v22 = 0;
  if (a4[157])
  {
    *(a2 + 80) = 0;
    archive_strncat((a2 + 72), (a4 + 157), 0x64uLL);
  }

  else
  {
    *(a2 + 80) = 0;
  }

  v4 = tar_atol(a4 + 100, 8uLL);
  archive_entry_set_mode(a3, v4);
  v5 = tar_atol(a4 + 108, 8uLL);
  archive_entry_set_uid(a3, v5);
  v6 = tar_atol(a4 + 116, 8uLL);
  archive_entry_set_gid(a3, v6);
  *(a2 + 280) = tar_atol(a4 + 124, 0xCuLL);
  if ((*(a2 + 280) & 0x8000000000000000) == 0)
  {
    if (*(a2 + 280) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(a2 + 280) = 0;
      archive_set_error(a1, -1, "Tar entry size overflow", v7, v8, v9, v10, v11, v20);
      return -30;
    }

    *(a2 + 312) = *(a2 + 280);
    archive_entry_set_size(a3, *(a2 + 280));
    v12 = tar_atol(a4 + 136, 0xCuLL);
    archive_entry_set_mtime(a3, v12, 0);
    v21 = a4[156];
    if (v21 != 48)
    {
      switch(v21)
      {
        case '1':
          if (_archive_entry_copy_hardlink_l(a3, *(a2 + 72), *(a2 + 80), *(a2 + 408)))
          {
            v22 = set_conversion_failed_error(a1, *(a2 + 408), "Linkname");
            if (v22 == -30)
            {
              return -30;
            }
          }

          if (archive_entry_size(a3) > 0)
          {
            archive_entry_set_filetype(a3, 0x8000);
          }

          if (archive_entry_size(a3) && a1[4] != 196610)
          {
            if (a1[4] == 196608 || a1[4] == 196612)
            {
              archive_entry_set_size(a3, 0);
              *(a2 + 280) = 0;
            }

            else if (archive_read_format_tar_bid(a1, 50, v13, v14, v15, v16, v17, v18) > 50)
            {
              archive_entry_set_size(a3, 0);
              *(a2 + 280) = 0;
            }
          }

          break;
        case '2':
          archive_entry_set_filetype(a3, 40960);
          archive_entry_set_size(a3, 0);
          *(a2 + 280) = 0;
          if (_archive_entry_copy_symlink_l(a3, *(a2 + 72), *(a2 + 80), *(a2 + 408)))
          {
            v22 = set_conversion_failed_error(a1, *(a2 + 408), "Linkname");
            if (v22 == -30)
            {
              return -30;
            }
          }

          break;
        case '3':
          archive_entry_set_filetype(a3, 0x2000);
          archive_entry_set_size(a3, 0);
          *(a2 + 280) = 0;
          break;
        case '4':
          archive_entry_set_filetype(a3, 24576);
          archive_entry_set_size(a3, 0);
          *(a2 + 280) = 0;
          break;
        case '5':
          archive_entry_set_filetype(a3, 0x4000);
          archive_entry_set_size(a3, 0);
          *(a2 + 280) = 0;
          break;
        case '6':
          archive_entry_set_filetype(a3, 4096);
          archive_entry_set_size(a3, 0);
          *(a2 + 280) = 0;
          break;
        case 'D':
          archive_entry_set_filetype(a3, 0x4000);
          break;
        case 'M':
          break;
        case 'S':
          goto LABEL_42;
        default:
          goto LABEL_43;
      }

      return v22;
    }

LABEL_42:
    *(a2 + 320) = 1;
LABEL_43:
    archive_entry_set_filetype(a3, 0x8000);
    return v22;
  }

  *(a2 + 280) = 0;
  archive_set_error(a1, -1, "Tar entry has negative size", v7, v8, v9, v10, v11, v20);
  return -30;
}

uint64_t archive_entry_set_mode(uint64_t result, __int16 a2)
{
  *(result + 16) = 0;
  *(result + 1136) = a2;
  *(result + 160) |= 0x600u;
  return result;
}

uint64_t archive_entry_set_uid(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v2 = 0;
  }

  *(result + 16) = 0;
  *(result + 120) = v2;
  *(result + 160) |= 0x800u;
  return result;
}

uint64_t archive_entry_set_gid(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v2 = 0;
  }

  *(result + 16) = 0;
  *(result + 88) = v2;
  *(result + 160) |= 0x1000u;
  return result;
}

uint64_t archive_entry_set_size(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v2 = 0;
  }

  *(result + 16) = 0;
  *(result + 112) = v2;
  *(result + 160) |= 0x40u;
  return result;
}

uint64_t archive_entry_set_filetype(uint64_t result, __int16 a2)
{
  *(result + 16) = 0;
  *(result + 1136) &= 0xFFFu;
  *(result + 1136) |= a2 & 0xF000;
  *(result + 160) |= 0x400u;
  return result;
}

uint64_t archive_entry_set_mtime(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + a3 / 1000000000;
  v3 = a3 % 1000000000;
  if (a3 % 1000000000 < 0)
  {
    --v4;
    LODWORD(v3) = v3 + 1000000000;
  }

  *(result + 16) = 0;
  *(result + 160) |= 0x10u;
  *(result + 56) = v4;
  *(result + 64) = v3;
  return result;
}

uint64_t pax_header(_DWORD *a1, uint64_t a2, _DWORD *a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a4;
  v21 = a4[1];
  *(a2 + 264) = 0;
  *(a2 + 128) = 0;
  *(a2 + 80) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = 0;
  *(a2 + 104) = 0;
  v14 = 0;
  while (v21)
  {
    v19 = 0;
    v20 = v21;
    v18 = v12;
    while (v20)
    {
      if (*v18 == 32)
      {
        ++v18;
        break;
      }

      if (*v18 < 48 || *v18 > 57)
      {
        archive_set_error(a1, -1, "Ignoring malformed pax extended attributes", a4, a5, a6, a7, a8, v9);
        return -20;
      }

      v19 = 10 * v19 + *v18 - 48;
      if (v19 > 0xF423F)
      {
        archive_set_error(a1, -1, "Rejecting pax extended attribute > 1MB", a4, a5, a6, a7, a8, v9);
        return -20;
      }

      ++v18;
      --v20;
    }

    if (v19 > v21 || !v19 || v12[v19 - 1] != 10)
    {
      archive_set_error(a1, -1, "Ignoring malformed pax extended attribute", a4, a5, a6, a7, a8, v9);
      return -20;
    }

    v12[v19 - 1] = 0;
    v17 = v18;
    if (*v18 == 61)
    {
      return -1;
    }

    while (1)
    {
      v11 = 0;
      if (*v18)
      {
        v11 = *v18 != 61;
      }

      if (!v11)
      {
        break;
      }

      ++v18;
    }

    if (!*v18)
    {
      archive_set_error(a1, -1, "Invalid pax extended attributes", a4, a5, a6, a7, a8, v9);
      return -20;
    }

    *v18 = 0;
    v13 = pax_attribute(a1, a2, a3, v17, v18 + 1, &v12[v19 - 1] - (v18 + 1));
    if (v13 == -30)
    {
      return -30;
    }

    if (v14 >= v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = v14;
    }

    v14 = v10;
    v12 += v19;
    v21 -= v19;
  }

  if (*(a2 + 264))
  {
    v15 = *(a2 + 400);
    goto LABEL_37;
  }

  v15 = archive_string_conversion_from_charset(a1, "UTF-8", 1);
  if (v15)
  {
    if (*(a2 + 436))
    {
      archive_string_conversion_set_opt(v15, 1);
    }

LABEL_37:
    if (*(a2 + 128) && _archive_entry_copy_gname_l(a3, *(a2 + 120), *(a2 + 128), v15))
    {
      v14 = set_conversion_failed_error(a1, v15, "Gname");
      if (v14 == -30)
      {
        return -30;
      }

      archive_entry_copy_gname(a3, *(a2 + 120));
    }

    if (*(a2 + 80) && _archive_entry_copy_link_l(a3, *(a2 + 72), *(a2 + 80), v15))
    {
      v14 = set_conversion_failed_error(a1, v15, "Linkname");
      if (v14 == -30)
      {
        return -30;
      }

      archive_entry_copy_link(a3, *(a2 + 72));
    }

    v16 = 0;
    if (*(a2 + 56))
    {
      v16 = (a2 + 48);
    }

    else if (*(a2 + 32))
    {
      v16 = (a2 + 24);
    }

    if (v16 && _archive_entry_copy_pathname_l(a3, *v16, v16[1], v15))
    {
      v14 = set_conversion_failed_error(a1, v15, "Pathname");
      if (v14 == -30)
      {
        return -30;
      }

      archive_entry_copy_pathname(a3, *v16);
    }

    if (*(a2 + 104) && _archive_entry_copy_uname_l(a3, *(a2 + 96), *(a2 + 104), v15))
    {
      v14 = set_conversion_failed_error(a1, v15, "Uname");
      if (v14 == -30)
      {
        return -30;
      }

      archive_entry_copy_uname(a3, *(a2 + 96));
    }

    return v14;
  }

  return -30;
}

uint64_t pax_attribute(_DWORD *a1, uint64_t a2, _DWORD *a3, const char *a4, char *a5, size_t a6)
{
  v73 = a1;
  v72 = a2;
  v71 = a3;
  v70 = a4;
  v69 = a5;
  v68 = a6;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  if (!a5)
  {
    v69 = &unk_1BF3442C6;
  }

  switch(*v70)
  {
    case 'G':
      if (!strncmp(v70, "GNU.sparse", 0xAuLL) && !*(v72 + 320))
      {
        archive_set_error(v73, -1, "Non-regular file cannot be sparse", v6, v7, v8, v9, v10, v53);
        return -30;
      }

      if (!strcmp(v70, "GNU.sparse.numblocks"))
      {
        *(v72 + 344) = -1;
        *(v72 + 352) = -1;
        *(v72 + 360) = 0;
        *(v72 + 364) = 0;
      }

      if (strcmp(v70, "GNU.sparse.offset"))
      {
        goto LABEL_14;
      }

      v11 = strlen(v69);
      *(v72 + 344) = tar_atol10(v69, v11);
      if (*(v72 + 352) == -1)
      {
        goto LABEL_14;
      }

      if (gnu_add_sparse_entry(v73, v72, *(v72 + 344), *(v72 + 352)))
      {
        return -30;
      }

      *(v72 + 344) = -1;
      *(v72 + 352) = -1;
LABEL_14:
      if (strcmp(v70, "GNU.sparse.numbytes"))
      {
        goto LABEL_19;
      }

      v12 = strlen(v69);
      *(v72 + 352) = tar_atol10(v69, v12);
      if (*(v72 + 344) == -1)
      {
        goto LABEL_19;
      }

      if (gnu_add_sparse_entry(v73, v72, *(v72 + 344), *(v72 + 352)))
      {
        return -30;
      }

      else
      {
        *(v72 + 344) = -1;
        *(v72 + 352) = -1;
LABEL_19:
        if (!strcmp(v70, "GNU.sparse.size"))
        {
          v13 = strlen(v69);
          *(v72 + 312) = tar_atol10(v69, v13);
          archive_entry_set_size(v71, *(v72 + 312));
          *(v72 + 448) = 1;
        }

        if (strcmp(v70, "GNU.sparse.map") || (*(v72 + 360) = 0, *(v72 + 364) = 1, !gnu_sparse_01_parse(v73, v72, v69)))
        {
          if (!strcmp(v70, "GNU.sparse.major"))
          {
            v14 = strlen(v69);
            *(v72 + 360) = tar_atol10(v69, v14);
            *(v72 + 368) = 1;
          }

          if (!strcmp(v70, "GNU.sparse.minor"))
          {
            v15 = strlen(v69);
            *(v72 + 364) = tar_atol10(v69, v15);
            *(v72 + 368) = 1;
          }

          if (!strcmp(v70, "GNU.sparse.name"))
          {
            *(v72 + 56) = 0;
            v63 = (v72 + 48);
            if (v69)
            {
              v62 = strlen(v69);
              archive_strncat(v63, v69, v62);
            }

            else
            {
              archive_strncat(v63, 0, 0);
            }
          }

          if (!strcmp(v70, "GNU.sparse.realsize"))
          {
            v16 = strlen(v69);
            *(v72 + 312) = tar_atol10(v69, v16);
            archive_entry_set_size(v71, *(v72 + 312));
            *(v72 + 448) = 1;
          }

          return v65;
        }

        return -20;
      }

    case 'L':
      if (!strcmp(v70, "LIBARCHIVE.creationtime"))
      {
        pax_time(v69, &v67, &v66);
        archive_entry_set_birthtime(v71, v67, v66);
      }

      if (!strcmp(v70, "LIBARCHIVE.symlinktype"))
      {
        if (!strcmp(v69, "file"))
        {
          archive_entry_set_symlink_type(v71, 1);
        }

        else if (!strcmp(v69, "dir"))
        {
          archive_entry_set_symlink_type(v71, 2);
        }
      }

      if (strlen(v70) >= 0x12 && !memcmp(v70, "LIBARCHIVE.xattr.", 0x11uLL))
      {
        pax_attribute_xattr(v71, v70, v69);
      }

      return v65;
    case 'R':
      if (!strcmp(v70, "RHT.security.selinux"))
      {
        pax_attribute_rht_security_selinux(v71, v69, v68);
      }

      return v65;
    case 'S':
      if (!strcmp(v70, "SCHILY.acl.access"))
      {
        if (pax_attribute_acl(v73, v72, v71, v69, 256, v17, v18, v19) != -30)
        {
          return v65;
        }

        return -30;
      }

      if (!strcmp(v70, "SCHILY.acl.default"))
      {
        if (pax_attribute_acl(v73, v72, v71, v69, 512, v20, v21, v22) != -30)
        {
          return v65;
        }

        return -30;
      }

      if (!strcmp(v70, "SCHILY.acl.ace"))
      {
        if (pax_attribute_acl(v73, v72, v71, v69, 15360, v23, v24, v25) != -30)
        {
          return v65;
        }

        return -30;
      }

      if (!strcmp(v70, "SCHILY.devmajor"))
      {
        v26 = strlen(v69);
        v27 = tar_atol10(v69, v26);
        archive_entry_set_rdevmajor(v71, v27);
        return v65;
      }

      if (!strcmp(v70, "SCHILY.devminor"))
      {
        v28 = strlen(v69);
        v29 = tar_atol10(v69, v28);
        archive_entry_set_rdevminor(v71, v29);
        return v65;
      }

      if (!strcmp(v70, "SCHILY.fflags"))
      {
        archive_entry_copy_fflags_text(v71, v69);
        return v65;
      }

      if (!strcmp(v70, "SCHILY.dev"))
      {
        v30 = strlen(v69);
        v31 = tar_atol10(v69, v30);
        archive_entry_set_dev(v71, v31);
        return v65;
      }

      if (!strcmp(v70, "SCHILY.ino"))
      {
        v32 = strlen(v69);
        v33 = tar_atol10(v69, v32);
        archive_entry_set_ino(v71, v33);
        return v65;
      }

      if (!strcmp(v70, "SCHILY.nlink"))
      {
        v34 = strlen(v69);
        v35 = tar_atol10(v69, v34);
        archive_entry_set_nlink(v71, v35);
        return v65;
      }

      if (!strcmp(v70, "SCHILY.realsize"))
      {
        v36 = strlen(v69);
        *(v72 + 312) = tar_atol10(v69, v36);
        *(v72 + 448) = 1;
        archive_entry_set_size(v71, *(v72 + 312));
        return v65;
      }

      if (!strncmp(v70, "SCHILY.xattr.", 0xDuLL))
      {
        pax_attribute_schily_xattr(v71, v70, v69, v68);
        return v65;
      }

      if (!strcmp(v70, "SUN.holesdata"))
      {
        v64 = solaris_sparse_parse(v73, v72, v71, v69);
        if (v64 < 0)
        {
          if (v64 == -30)
          {
            return -30;
          }

          v65 = v64;
          archive_set_error(v73, -1, "Parse error: SUN.holesdata", v37, v38, v39, v40, v41, v53);
        }
      }

      return v65;
    case 'a':
      if (!strcmp(v70, "atime"))
      {
        pax_time(v69, &v67, &v66);
        archive_entry_set_atime(v71, v67, v66);
      }

      return v65;
    case 'c':
      if (!strcmp(v70, "ctime"))
      {
        pax_time(v69, &v67, &v66);
        archive_entry_set_ctime(v71, v67, v66);
      }

      else if (strcmp(v70, "charset"))
      {
        strcmp(v70, "comment");
      }

      return v65;
    case 'g':
      if (!strcmp(v70, "gid"))
      {
        v42 = strlen(v69);
        v43 = tar_atol10(v69, v42);
        archive_entry_set_gid(v71, v43);
      }

      else if (!strcmp(v70, "gname"))
      {
        *(v72 + 128) = 0;
        v61 = (v72 + 120);
        if (v69)
        {
          v60 = strlen(v69);
          archive_strncat(v61, v69, v60);
        }

        else
        {
          archive_strncat(v61, 0, 0);
        }
      }

      return v65;
    case 'h':
      if (!strcmp(v70, "hdrcharset"))
      {
        if (!strcmp(v69, "BINARY"))
        {
          *(v72 + 264) = 1;
        }

        else if (!strcmp(v69, "ISO-IR 10646 2000 UTF-8"))
        {
          *(v72 + 264) = 0;
        }
      }

      return v65;
    case 'l':
      if (!strcmp(v70, "linkpath"))
      {
        *(v72 + 80) = 0;
        v59 = (v72 + 72);
        if (v69)
        {
          v58 = strlen(v69);
          archive_strncat(v59, v69, v58);
        }

        else
        {
          archive_strncat(v59, 0, 0);
        }
      }

      return v65;
    case 'm':
      if (!strcmp(v70, "mtime"))
      {
        pax_time(v69, &v67, &v66);
        archive_entry_set_mtime(v71, v67, v66);
      }

      return v65;
    case 'p':
      if (!strcmp(v70, "path"))
      {
        *(v72 + 32) = 0;
        v57 = (v72 + 24);
        if (v69)
        {
          v56 = strlen(v69);
          archive_strncat(v57, v69, v56);
        }

        else
        {
          archive_strncat(v57, 0, 0);
        }
      }

      return v65;
    case 's':
      if (strcmp(v70, "size"))
      {
        return v65;
      }

      v44 = strlen(v69);
      *(v72 + 280) = tar_atol10(v69, v44);
      if ((*(v72 + 280) & 0x8000000000000000) != 0)
      {
        *(v72 + 280) = 0;
        archive_set_error(v73, -1, "Tar size attribute is negative", v45, v46, v47, v48, v49, v53);
        return -30;
      }

      else if (*(v72 + 280) == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v72 + 280) = 0;
        archive_set_error(v73, -1, "Tar size attribute overflow", v45, v46, v47, v48, v49, v53);
        return -30;
      }

      else
      {
        if (!*(v72 + 448))
        {
          archive_entry_set_size(v71, *(v72 + 280));
          *(v72 + 312) = *(v72 + 280);
        }

        return v65;
      }

    case 'u':
      if (!strcmp(v70, "uid"))
      {
        v50 = strlen(v69);
        v51 = tar_atol10(v69, v50);
        archive_entry_set_uid(v71, v51);
      }

      else if (!strcmp(v70, "uname"))
      {
        *(v72 + 104) = 0;
        v55 = (v72 + 96);
        if (v69)
        {
          v54 = strlen(v69);
          archive_strncat(v55, v69, v54);
        }

        else
        {
          archive_strncat(v55, 0, 0);
        }
      }

      return v65;
    default:
      return v65;
  }
}

_BYTE *pax_time(_BYTE *result, void *a2, void *a3)
{
  v8 = result;
  v6 = 0;
  v4 = 1;
  if (*result == 45)
  {
    v4 = -1;
    v8 = result + 1;
  }

  while (1)
  {
    v3 = 0;
    if (*v8 >= 48)
    {
      v3 = *v8 <= 57;
    }

    if (!v3)
    {
      break;
    }

    v7 = *v8 - 48;
    if (v6 > 0xCCCCCCCCCCCCCCCLL || v6 == 0xCCCCCCCCCCCCCCCLL && v7 > 7)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      break;
    }

    v6 = 10 * v6 + v7;
    ++v8;
  }

  *a2 = v6 * v4;
  *a3 = 0;
  if (*v8 == 46)
  {
    v5 = 100000000;
    do
    {
      if (*++v8 < 48)
      {
        break;
      }

      if (*v8 > 57)
      {
        break;
      }

      *a3 += (*v8 - 48) * v5;
      v5 /= 0xAuLL;
    }

    while (v5);
  }

  return result;
}

uint64_t pax_attribute_xattr(uint64_t a1, const char *a2, char *a3)
{
  v10 = a1;
  v9 = a2;
  __s = a3;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (strlen(a2) >= 0x12 && !memcmp(v9, "LIBARCHIVE.xattr.", 0x11uLL))
  {
    v9 += 17;
    v7 = url_decode(v9);
    if (v7)
    {
      v3 = strlen(__s);
      v6 = base64_decode(__s, v3, &v5);
      if (v6)
      {
        archive_entry_xattr_add_entry(v10, v7, v6, v5);
        free(v7);
        free(v6);
        return 0;
      }

      else
      {
        free(v7);
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 3;
  }
}

char *url_decode(const char *a1)
{
  v1 = strlen(a1);
  v10 = malloc_type_malloc(v1 + 1, 0x100004077774924uLL);
  if (!v10)
  {
    return 0;
  }

  v8 = a1;
  v9 = v10;
  while (*v8)
  {
    if (*v8 == 37 && v8[1] && v8[2] && (v7 = tohex(v8[1]), v6 = tohex(v8[2]), (v7 & 0x80000000) == 0) && (v6 & 0x80000000) == 0)
    {
      v8 += 3;
      v2 = v9++;
      *v2 = v6 | (16 * v7);
    }

    else
    {
      v3 = v8++;
      v4 = v9++;
      *v4 = *v3;
    }
  }

  *v9 = 0;
  return v10;
}

_BYTE *base64_decode(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (base64_decode_decode_table[base64_decode_digits[1]] != 1)
  {
    memset(base64_decode_decode_table, -1, 0x80uLL);
    for (i = 0; i < 0x40uLL; ++i)
    {
      base64_decode_decode_table[base64_decode_digits[i]] = i;
    }
  }

  v12 = malloc_type_malloc(a2 - a2 / 4 + 1, 0x100004077774924uLL);
  if (v12)
  {
    for (j = v12; ; j += 3 * v6 / 4)
    {
      if (!a2)
      {
        *a3 = j - v12;
        return v12;
      }

      v7 = 0;
      v6 = 0;
      while (1)
      {
        v5 = 0;
        if (v6 < 4)
        {
          v5 = a2 != 0;
        }

        if (!v5)
        {
          break;
        }

        if (*a1 == 61 || *a1 == 95)
        {
          a2 = 0;
          break;
        }

        if (*a1 > 0x7Fu || *a1 < 0x20u || base64_decode_decode_table[*a1] == 255)
        {
          --a2;
          ++a1;
        }

        else
        {
          v3 = a1++;
          v7 = (v7 << 6) | base64_decode_decode_table[*v3];
          --a2;
          ++v6;
        }
      }

      v8 = v7 << (6 * (4 - v6));
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          if (v6 != 3)
          {
            if (v6 != 4)
            {
              continue;
            }

            j[2] = v8;
          }

          j[1] = BYTE1(v8);
        }

        *j = BYTE2(v8);
      }
    }
  }

  *a3 = 0;
  return 0;
}

uint64_t archive_entry_xattr_add_entry(uint64_t a1, const char *a2, uint64_t a3, size_t a4)
{
  v7 = malloc_type_malloc(0x20uLL, 0x10B0040BDB88CC9uLL);
  if (!v7)
  {
    __archive_errx(1, "Out of memory");
  }

  v4 = strdup(a2);
  v7[1] = v4;
  if (!v4)
  {
    __archive_errx(1, "Out of memory");
  }

  result = malloc_type_malloc(a4, 0x1CA54DADuLL);
  v7[2] = result;
  if (result)
  {
    v6 = v7[2];
    result = __memcpy_chk();
    v7[3] = a4;
  }

  else
  {
    v7[3] = 0;
  }

  *v7 = *(a1 + 1192);
  *(a1 + 1192) = v7;
  return result;
}

uint64_t **archive_string_conversion_from_charset(_DWORD *a1, const char *a2, int a3)
{
  v5 = 2;
  if (a3)
  {
    v5 = 6;
  }

  current_charset = get_current_charset(a1);
  return get_sconv_object(a1, a2, current_charset, v5);
}

uint64_t pax_attribute_schily_xattr(uint64_t a1, const char *a2, uint64_t a3, size_t a4)
{
  if (strlen(a2) >= 0xE && !memcmp(a2, "SCHILY.xattr.", 0xDuLL))
  {
    archive_entry_xattr_add_entry(a1, a2 + 13, a3, a4);
    return 0;
  }

  else
  {
    return 1;
  }
}

const char *get_current_charset(uint64_t a1)
{
  if (!a1)
  {
    return default_iconv_charset(&unk_1BF3442C6);
  }

  __s1 = default_iconv_charset(*(a1 + 72));
  if (!*(a1 + 72))
  {
    *(a1 + 72) = strdup(__s1);
    *(a1 + 80) = get_current_codepage();
    *(a1 + 84) = get_current_oemcp();
  }

  return __s1;
}

const char *default_iconv_charset(_BYTE *a1)
{
  if (a1 && *a1)
  {
    return a1;
  }

  else
  {
    return "UTF-8";
  }
}

uint64_t **get_sconv_object(_DWORD *a1, const char *a2, const char *a3, int a4)
{
  sconv_object = find_sconv_object(a1, a2, a3);
  if (sconv_object)
  {
    return sconv_object;
  }

  if (a1)
  {
    current_codepage = a1[20];
  }

  else
  {
    current_codepage = get_current_codepage();
  }

  v12 = canonical_charset_name(a2);
  v4 = canonical_charset_name(a3);
  v15 = create_sconv_object(v12, v4, current_codepage, a4);
  if (v15)
  {
    if (*(v15 + 24))
    {
      if (a1)
      {
        add_sconv_object(a1, v15);
      }

      return v15;
    }

    else
    {
      if (a1)
      {
        if (a4)
        {
        }

        else
        {
        }
      }

      free_sconv_object(v15);
      return 0;
    }
  }

  else
  {
    if (a1)
    {
      archive_set_error(a1, 12, "Could not allocate memory for a string conversion object", v5, v6, v7, v8, v9, v11);
    }

    return 0;
  }
}

const char *canonical_charset_name(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 && *a1 && strlen(a1) <= 0xF)
  {
    v6 = __s1;
    v5 = a1;
    while (*v5)
    {
      v1 = v5++;
      v4 = *v1;
      if (*v1 >= 97 && v4 <= 122)
      {
        v4 -= 32;
      }

      v2 = v6++;
      *v2 = v4;
    }

    *v6 = 0;
    if (!strcmp(__s1, "UTF-8") || !strcmp(__s1, "UTF8"))
    {
      v8 = "UTF-8";
    }

    else if (!strcmp(__s1, "UTF-16BE") || !strcmp(__s1, "UTF16BE"))
    {
      v8 = "UTF-16BE";
    }

    else if (!strcmp(__s1, "UTF-16LE") || !strcmp(__s1, "UTF16LE"))
    {
      v8 = "UTF-16LE";
    }

    else if (!strcmp(__s1, "CP932"))
    {
      v8 = "CP932";
    }

    else
    {
      v8 = a1;
    }
  }

  else
  {
    v8 = a1;
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t **find_sconv_object(uint64_t a1, const char *a2, const char *a3)
{
  if (!a1)
  {
    return 0;
  }

    ;
  }

  return i;
}

void *create_sconv_object(const char *a1, const char *a2, int a3, int a4)
{
  v5 = malloc_type_calloc(1uLL, 0x68uLL, 0x10B0040BB514045uLL);
  if (!v5)
  {
    return 0;
  }

  *v5 = 0;
  v5[1] = strdup(a1);
  if (v5[1])
  {
    v5[2] = strdup(a2);
    if (v5[2])
    {
      v5[7] = 0;
      v5[8] = 0;
      v5[9] = 0;
      if (a4)
      {
        *(v5 + 6) = a3;
        *(v5 + 7) = make_codepage_from_charset();
      }

      else if ((a4 & 2) != 0)
      {
        *(v5 + 7) = a3;
        *(v5 + 6) = make_codepage_from_charset();
      }

      *(v5 + 8) = !strcmp(a1, a2) || *(v5 + 6) != -1 && *(v5 + 6) == *(v5 + 7);
      if (!strcmp(a2, "UTF-8"))
      {
        a4 |= 0x100u;
      }

      else if (!strcmp(a2, "UTF-16BE"))
      {
        a4 |= 0x400u;
      }

      else if (!strcmp(a2, "UTF-16LE"))
      {
        a4 |= 0x1000u;
      }

      if (!strcmp(a1, "UTF-8"))
      {
        a4 |= 0x200u;
      }

      else if (!strcmp(a1, "UTF-16BE"))
      {
        a4 |= 0x800u;
      }

      else if (!strcmp(a1, "UTF-16LE"))
      {
        a4 |= 0x2000u;
      }

      if ((a4 & 2) != 0 && (a4 & 0x2A00) != 0)
      {
        if ((a4 & 0x100) != 0)
        {
          a4 |= 0x80u;
        }

        else
        {
          a4 |= 0x40u;
        }
      }

      if ((a4 & 1) != 0 && (a4 & 0x2A00) != 0 && (a4 & 0x1500) == 0)
      {
        a4 |= 0x40u;
      }

      if ((a4 & 2) != 0 && (a4 & 0x2A00) == 0 && (a4 & 0x100) != 0)
      {
        a4 |= 0x80u;
      }

      v5[6] = -1;
      if ((a4 & 0x1500) != 0 && (a4 & 0x2A00) != 0 || (a4 & 8) != 0)
      {
        v5[5] = -1;
      }

      else
      {
        v5[5] = MEMORY[0x1BFB558C0](a2, a1);
        if (v5[5] == -1 && (*(v5 + 9) & 4) != 0)
        {
          if (!strcmp(a2, "CP932"))
          {
            v5[5] = MEMORY[0x1BFB558C0]("SJIS", a1);
          }

          else if (!strcmp(a1, "CP932"))
          {
            v5[5] = MEMORY[0x1BFB558C0](a2, "SJIS");
          }
        }
      }

      *(v5 + 9) = a4;
      setup_converter(v5);
      return v5;
    }

    else
    {
      free(v5[1]);
      free(v5);
      return 0;
    }
  }

  else
  {
    free(v5);
    return 0;
  }
}

uint64_t setup_converter(uint64_t result)
{
  v1 = result;
  *(result + 96) = 0;
  if ((*(result + 36) & 0x10) != 0)
  {
    return add_converter(result, strncat_from_utf8_libarchive2);
  }

  if ((*(result + 36) & 0x1400) != 0)
  {
    if ((*(result + 36) & 0x200) != 0)
    {
      return add_converter(result, archive_string_append_unicode);
    }

    if (*(result + 40) != -1)
    {
      return add_converter(v1, iconv_strncat_in_locale);
    }

    if ((*(result + 36) & 4) != 0)
    {
      if ((*(result + 36) & 0x400) != 0)
      {
        return add_converter(result, best_effort_strncat_to_utf16be);
      }

      else
      {
        return add_converter(result, best_effort_strncat_to_utf16le);
      }
    }

    else
    {
      *(result + 96) = 0;
    }
  }

  else if ((*(result + 36) & 0x2800) != 0)
  {
    if ((*(result + 36) & 0x80) != 0)
    {
      result = add_converter(result, archive_string_normalize_D);
    }

    else if ((*(result + 36) & 0x40) != 0)
    {
      result = add_converter(result, archive_string_normalize_C);
    }

    if ((*(v1 + 36) & 0x100) != 0)
    {
      if ((*(v1 + 36) & 0xC0) == 0)
      {
        return add_converter(v1, archive_string_append_unicode);
      }
    }

    else
    {
      if (*(v1 + 40) != -1)
      {
        return add_converter(v1, iconv_strncat_in_locale);
      }

      if ((*(v1 + 36) & 0x804) == 0x804)
      {
        return add_converter(v1, best_effort_strncat_from_utf16be);
      }

      else if ((*(v1 + 36) & 0x2004) == 0x2004)
      {
        return add_converter(v1, best_effort_strncat_from_utf16le);
      }

      else
      {
        *(v1 + 96) = 0;
      }
    }
  }

  else
  {
    if ((*(result + 36) & 0x200) == 0)
    {
      goto LABEL_37;
    }

    if ((*(result + 36) & 0x80) != 0)
    {
      result = add_converter(result, archive_string_normalize_D);
    }

    else if ((*(result + 36) & 0x40) != 0)
    {
      result = add_converter(result, archive_string_normalize_C);
    }

    if ((*(v1 + 36) & 0x100) != 0)
    {
      if ((*(v1 + 36) & 0xC0) == 0)
      {
        return add_converter(v1, strncat_from_utf8_to_utf8);
      }
    }

    else
    {
LABEL_37:
      if (*(v1 + 40) == -1)
      {
        if ((*(v1 + 36) & 4) != 0 || *(v1 + 32))
        {
          return add_converter(v1, best_effort_strncat_in_locale);
        }

        else
        {
          *(v1 + 96) = 0;
        }
      }

      else
      {
        result = add_converter(v1, iconv_strncat_in_locale);
        if ((*(v1 + 36) & 2) != 0 && (*(v1 + 36) & 0x100) != 0 && (*(v1 + 36) & 0x80) != 0)
        {
          return add_converter(v1, archive_string_normalize_D);
        }
      }
    }
  }

  return result;
}

uint64_t add_converter(uint64_t result, uint64_t a2)
{
  if (!result || *(result + 96) >= 2)
  {
    __archive_errx(1, "Programming error");
  }

  v2 = (*(result + 96))++;
  *(result + 80 + 8 * v2) = a2;
  return result;
}

uint64_t add_sconv_object(uint64_t result, uint64_t a2)
{
    ;
  }

  *i = a2;
  return result;
}

uint64_t archive_entry_pathname_w(_DWORD **a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_wcs(*a1, (a1 + 62), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t read_mac_metadata_blob(uint64_t a1, uint64_t a2, _DWORD **a3, uint64_t a4, unint64_t *a5)
{
  v12 = archive_entry_pathname_w(a3);
  v11 = v12;
  if (v12)
  {
    while (*v12)
    {
      if (*v12 == 47)
      {
        if (v12[1])
        {
          v11 = v12 + 1;
        }
      }

      ++v12;
    }

    if (*v11 != 46 || v11[1] != 95 || !v11[2])
    {
      return 0;
    }
  }

  else
  {
    v14 = archive_entry_pathname(a3);
    v13 = v14;
    if (!v14)
    {
      return -25;
    }

    while (*v14)
    {
      if (*v14 == 47 && v14[1])
      {
        v13 = v14 + 1;
      }

      ++v14;
    }

    if (*v13 != 46 || v13[1] != 95 || !v13[2])
    {
      return 0;
    }
  }

  v16 = archive_entry_size(a3);
  if ((v16 & 0x8000000000000000) != 0)
  {
    *a5 = 0;
    return -30;
  }

  else
  {
    ahead = __archive_read_ahead(a1, v16, 0, v5, v6, v7, v8, v9);
    if (ahead)
    {
      archive_entry_copy_mac_metadata(a3, ahead, v16);
      *a5 = (v16 + 511) & 0xFFFFFFFFFFFFFE00;
      tar_flush_unconsumed(a1, a5);
      return tar_read_header(a1, a2, a3, a5);
    }

    else
    {
      *a5 = 0;
      return -30;
    }
  }
}

uint64_t archive_wstring_append_from_mbs(void *a1, const char *a2, size_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = a3;
  memset(&__b, 0, sizeof(__b));
  if (archive_wstring_ensure(a1, a1[1] + a3 + 1))
  {
    for (i = (*a1 + 4 * a1[1]); ; ++i)
    {
      v4 = 0;
      if (*a2)
      {
        v4 = v7 != 0;
      }

      if (!v4)
      {
        break;
      }

      v9 = mbrtowc(i, a2, v7, &__b);
      if (v9 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v8 = -1;
        break;
      }

      if (!v9 || v9 > v7)
      {
        break;
      }

      a2 += v9;
      v7 -= v9;
    }

    a1[1] = (i - *a1) / 4;
    *(*a1 + 4 * a1[1]) = 0;
    v12 = v8;
  }

  else
  {
    v12 = -1;
  }

  *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t archive_mstring_get_wcs(_DWORD *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  if ((*(a2 + 96) & 4) != 0)
  {
    *v7 = *(v8 + 48);
    return v5;
  }

  else
  {
    *v7 = 0;
    if ((*(v8 + 96) & 1) == 0)
    {
      v4 = 0;
      archive_mstring_get_mbs(v9, v8, &v4);
    }

    if (*(v8 + 96))
    {
      *(v8 + 56) = 0;
      v6 = archive_wstring_append_from_mbs((v8 + 48), *v8, *(v8 + 8));
      if (v6)
      {
        return -1;
      }

      else
      {
        *(v8 + 96) |= 4u;
        *v7 = *(v8 + 48);
      }
    }

    return v5;
  }
}

_DWORD *archive_string_vsprintf(uint64_t *a1, char *a2, unint64_t *a3)
{
  result = archive_string_ensure(a1, 0x40uLL);
  if (!result)
  {
    __archive_errx(1, "Out of memory");
  }

  if (a2)
  {
    for (i = a2; ; ++i)
    {
      if (!*i)
      {
        return result;
      }

      v21 = i;
      if (*i != 37)
      {
        result = archive_strappend_char(a1, *i);
        continue;
      }

      ++i;
      v28 = 0;
      v20 = *i;
      if (v20 == 106 || v20 == 108 || v20 == 122)
      {
        v28 = *i++;
      }

      v19 = *i;
      switch(v19)
      {
        case '%':
          result = archive_strappend_char(a1, 37);
          continue;
        case 'S':
          v12 = *a3++;
          v23 = v12;
          if (!v12)
          {
            v23 = &unk_1BF3425F8;
          }

          v13 = wcslen(v23);
          result = archive_string_append_from_wcs(a1, v23, v13);
          if (result)
          {
            result = __error();
            if (*result == 12)
            {
              __archive_errx(1, "Out of memory");
            }
          }

          break;
        case 'X':
          goto LABEL_49;
        case 'c':
          v4 = *a3++;
          result = archive_strappend_char(a1, v4);
          continue;
        case 'd':
          switch(v28)
          {
            case 'j':
              v5 = *a3++;
              v27 = v5;
              break;
            case 'l':
              v6 = *a3++;
              v27 = v6;
              break;
            case 'z':
              v7 = *a3++;
              v27 = v7;
              break;
            default:
              v8 = *a3++;
              v27 = v8;
              break;
          }

          result = append_int(a1, v27, 0xAu);
          break;
        case 'o':
          goto LABEL_49;
        case 's':
          if (v28 == 108)
          {
            v9 = *a3++;
            v22 = v9;
            if (!v9)
            {
              v22 = &unk_1BF3425F8;
            }

            v10 = wcslen(v22);
            result = archive_string_append_from_wcs(a1, v22, v10);
            if (result)
            {
              result = __error();
              if (*result == 12)
              {
                __archive_errx(1, "Out of memory");
              }
            }
          }

          else
          {
            v11 = *a3++;
            v24 = v11;
            if (!v11)
            {
              v24 = "(null)";
            }

            result = archive_strcat(a1, v24);
          }

          break;
        case 'u':
        case 'x':
LABEL_49:
          switch(v28)
          {
            case 'j':
              v14 = *a3++;
              v26 = v14;
              break;
            case 'l':
              v15 = *a3++;
              v26 = v15;
              break;
            case 'z':
              v16 = *a3++;
              v26 = v16;
              break;
            default:
              v17 = *a3++;
              v26 = v17;
              break;
          }

          v18 = *i;
          if (v18 == 111)
          {
            result = append_uint(a1, v26, 8u);
          }

          else if (v18 == 117)
          {
            result = append_uint(a1, v26, 0xAu);
          }

          else
          {
            result = append_uint(a1, v26, 0x10u);
          }

          continue;
        default:
          i = v21;
          result = archive_strappend_char(a1, *v21);
          continue;
      }
    }
  }

  **a1 = 0;
  return result;
}

uint64_t gnu_add_sparse_entry(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040FA731AC5uLL);
  if (v10)
  {
    if (*(a2 + 336))
    {
      **(a2 + 336) = v10;
    }

    else
    {
      *(a2 + 328) = v10;
    }

    *(a2 + 336) = v10;
    if (a4 < 0 || a3 < 0 || a3 > 0x7FFFFFFFFFFFFFFFLL - a4)
    {
      archive_set_error(a1, -1, "Malformed sparse map data", v4, v5, v6, v7, v8, v10);
      return -30;
    }

    else
    {
      v10[1] = a3;
      v10[2] = a4;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory", v4, v5, v6, v7, v8, 0);
    return -30;
  }
}

_DWORD *archive_set_error(_DWORD *result, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = result;
  result[9] = a2;
  if (a3)
  {
    *(result + 7) = 0;
    result = archive_string_vsprintf(result + 6, a3, &a9);
    *(v9 + 5) = *(v9 + 6);
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t __archive_reset_read_data(uint64_t result)
{
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

uint64_t _archive_read_data_block(uint64_t a1, void *a2, ssize_t *a3, void *a4)
{
  v31 = *(a1 + 160);
  v26 = 0;
  if (__archive_check_magic(a1, 195932357, 4, "archive_read_data_block") == -30)
  {
    return -30;
  }

  if (*(v31 + 524) || *(v31 + 528) <= 0)
  {
    buffer = 1;
LABEL_35:
    *a2 = 0;
    *a3 = 0;
    *a4 = *(v31 + 536);
    if ((*(v31 + 520) & 0x80000000) == 0)
    {
      close_and_restore_time(*(v31 + 520), v31, v31 + 408);
      *(v31 + 520) = -1;
    }

    return buffer;
  }

  if ((*(v31 + 520) & 0x80000000) != 0)
  {
    v4 = tree_current_access_path(v31);
    *(v31 + 520) = open_on_current_dir(v31, v4, 0x1000000);
    __archive_ensure_cloexec_flag(*(v31 + 520));
    if ((*(v31 + 520) & 0x80000000) != 0)
    {
      v25 = *__error();
      v5 = tree_current_path(v31);
      archive_set_error(a1, v25, "Couldn't open %s", v6, v7, v8, v9, v10, v5);
      buffer = -25;
      tree_enter_initial_dir(v31);
      goto LABEL_35;
    }

    tree_enter_initial_dir(v31);
  }

  if (!*(*(v31 + 488) + 56))
  {
    buffer = setup_suitable_read_buffer(a1);
    if (buffer)
    {
      *(a1 + 4) = 0x8000;
      goto LABEL_35;
    }
  }

  *(v31 + 544) = *(*(v31 + 488) + 64);
  *(v31 + 552) = *(*(v31 + 488) + 72);
  v27 = *(v31 + 552);
  if (v27 > **(v31 + 464))
  {
    v27 = **(v31 + 464);
  }

  if (!**(v31 + 464))
  {
    v26 = 1;
  }

  if (*(*(v31 + 464) + 8) > *(v31 + 536))
  {
    if (lseek(*(v31 + 520), *(*(v31 + 464) + 8), 0) != *(*(v31 + 464) + 8))
    {
      v11 = __error();
      archive_set_error(a1, *v11, "Seek error", v12, v13, v14, v15, v16, v24);
      buffer = -30;
      *(a1 + 4) = 0x8000;
      goto LABEL_35;
    }

    v28 = *(*(v31 + 464) + 8) - *(v31 + 536);
    *(v31 + 528) -= v28;
    *(v31 + 536) += v28;
  }

  if (v27)
  {
    v29 = read(*(v31 + 520), *(v31 + 544), v27);
    if (v29 < 0)
    {
      v17 = __error();
      archive_set_error(a1, *v17, "Read error", v18, v19, v20, v21, v22, v24);
      buffer = -30;
      *(a1 + 4) = 0x8000;
      goto LABEL_35;
    }
  }

  else
  {
    v29 = 0;
  }

  if (!v29 && !v26)
  {
    *(v31 + 524) = 1;
    buffer = 1;
    goto LABEL_35;
  }

  *a2 = *(v31 + 544);
  *a3 = v29;
  *a4 = *(v31 + 536);
  *(v31 + 536) += v29;
  *(v31 + 528) -= v29;
  if (!*(v31 + 528))
  {
    close_and_restore_time(*(v31 + 520), v31, v31 + 408);
    *(v31 + 520) = -1;
    *(v31 + 524) = 1;
  }

  *(*(v31 + 464) + 8) += v29;
  **(v31 + 464) -= v29;
  if (!**(v31 + 464) && !*(v31 + 524))
  {
    *(v31 + 464) += 16;
  }

  return 0;
}

uint64_t _archive_read_data_block_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, 14594245, 4, "archive_read_data_block") == -30)
  {
    return -30;
  }

  else if (*(*(a1 + 2072) + 40))
  {
    return (*(*(a1 + 2072) + 40))(a1, a2, a3, a4);
  }

  else
  {
    archive_set_error(a1, 22, "Internal error: No format->read_data function registered", v4, v5, v6, v7, v8, v10);
    return -30;
  }
}

_DWORD *archive_write_disk_new()
{
  v2 = malloc_type_calloc(1uLL, 0x328uLL, 0x10F0040C64C61B3uLL);
  if (!v2)
  {
    return 0;
  }

  *v2 = -1073631035;
  v2[1] = 2;
  *(v2 + 1) = archive_write_disk_vtable;
  *(v2 + 25) = time(0);
  v0 = umask(0);
  *(v2 + 72) = v0;
  umask(v0);
  *(v2 + 21) = geteuid();
  if (archive_string_ensure((v2 + 64), 0x200uLL))
  {
    **(v2 + 32) = 0;
    v2[201] = 5;
    return v2;
  }

  else
  {
    free(v2);
    return 0;
  }
}

uint64_t archive_read_format_tar_read_data(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  v13 = **(a1 + 2072);
  while (1)
  {
    while (1)
    {
      v11 = 0;
      if (v13[41])
      {
        v11 = *(v13[41] + 16) == 0;
      }

      if (!v11)
      {
        break;
      }

      v12 = v13[41];
      v13[41] = *v12;
      free(v12);
    }

    if (v13[38])
    {
      __archive_read_consume(v18, v13[38]);
      v13[38] = 0;
    }

    if (!v13[41] || !v13[35])
    {
      break;
    }

    v8 = __archive_read_ahead(v18, 1uLL, &v14, a4, a5, a6, a7, a8);
    *v17 = v8;
    if (v14 < 0)
    {
      return -30;
    }

    if (!*v17)
    {
      archive_set_error(v18, -1, "Truncated tar archive", a4, a5, a6, a7, a8, v10);
      return -30;
    }

    if (v14 > v13[35])
    {
      v14 = v13[35];
    }

    if (*(v13[41] + 16) < v14)
    {
      v14 = *(v13[41] + 16);
    }

    *v16 = v14;
    *v15 = *(v13[41] + 8);
    *(v13[41] + 16) -= v14;
    *(v13[41] + 8) += v14;
    v13[35] -= v14;
    v13[38] = v14;
    if (!*(v13[41] + 24))
    {
      return 0;
    }
  }

  if (__archive_read_consume(v18, v13[37]) < 0)
  {
    return -30;
  }

  else
  {
    v13[37] = 0;
    *v17 = 0;
    *v16 = 0;
    *v15 = v13[39];
    return 1;
  }
}

uint64_t archive_entry_pathname(_DWORD **a1)
{
  v3 = a1;
  v2 = 0;
  if (!archive_mstring_get_mbs(*a1, (a1 + 62), &v2))
  {
    return v2;
  }

  if (*__error() == 92 && !archive_mstring_get_utf8(*v3, (v3 + 62), &v2))
  {
    return v2;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_write_disk_set_standard_lookup(uint64_t a1)
{
  v3 = malloc_type_calloc(0x7FuLL, 0x10uLL, 0x1010040FDD9F14CuLL);
  v2 = malloc_type_calloc(0x7FuLL, 0x10uLL, 0x1010040FDD9F14CuLL);
  if (v3 && v2)
  {
    archive_write_disk_set_group_lookup(a1, v2, lookup_gid, cleanup_1);
    archive_write_disk_set_user_lookup(a1, v3, lookup_uid, cleanup_1);
    return 0;
  }

  else
  {
    free(v3);
    free(v2);
    return -30;
  }
}

uint64_t archive_write_disk_set_group_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, -1073631035, 0x7FFF, "archive_write_disk_set_group_lookup") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 216) && *(a1 + 224))
    {
      (*(a1 + 216))(*(a1 + 224));
    }

    *(a1 + 208) = a3;
    *(a1 + 216) = a4;
    *(a1 + 224) = a2;
    return 0;
  }
}

uint64_t archive_mstring_get_mbs(_DWORD *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if ((*(a2 + 96) & 1) == 0)
  {
    *a3 = 0;
    if ((*(a2 + 96) & 4) != 0)
    {
      *(a2 + 8) = 0;
      v5 = archive_string_append_from_wcs(a2, *(a2 + 48), *(a2 + 56));
      *a3 = *a2;
      if (!v5)
      {
        *(a2 + 96) |= 1u;
        return 0;
      }

      v4 = -1;
    }

    if ((*(a2 + 96) & 2) != 0)
    {
      *(a2 + 8) = 0;
      v7 = archive_string_conversion_from_charset(a1, "UTF-8", 1);
      if (!v7)
      {
        return -1;
      }

      v6 = archive_strncpy_l(a2, *(a2 + 24), *(a2 + 32), v7);
      if (!a1)
      {
        free_sconv_object(v7);
      }

      *a3 = *a2;
      if (v6)
      {
        return -1;
      }

      else
      {
        *(a2 + 96) |= 1u;
        return 0;
      }
    }

    return v4;
  }

  *a3 = *a2;
  return 0;
}

uint64_t archive_write_disk_set_user_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, -1073631035, 0x7FFF, "archive_write_disk_set_user_lookup") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 240) && *(a1 + 248))
    {
      (*(a1 + 240))(*(a1 + 248));
    }

    *(a1 + 232) = a3;
    *(a1 + 240) = a4;
    *(a1 + 248) = a2;
    return 0;
  }
}

uint64_t archive_read_data_skip(int *a1)
{
  v8 = a1;
  v7 = a1;
  data_block = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v2 = __archive_check_magic(a1, 14594245, 4, "archive_read_data_skip");
  if (v2 == -30)
  {
    return -30;
  }

  else
  {
    if (*(*(v7 + 259) + 48))
    {
      data_block = (*(*(v7 + 259) + 48))(v7);
    }

    else
    {
      do
      {
        data_block = archive_read_data_block(v7, &v5, &v4, &v2 + 4);
      }

      while (!data_block);
    }

    if (data_block == 1)
    {
      data_block = 0;
    }

    v7[1] = 2;
    return data_block;
  }
}

uint64_t archive_read_format_tar_skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  v4 = 0;
  for (i = v2[41]; i; i = *i)
  {
    if (!*(i + 6))
    {
      if (i[2] >= 0x7FFFFFFFFFFFFFFFLL - v4)
      {
        return -30;
      }

      v4 += i[2];
    }
  }

  if (v4 > v2[35])
  {
    v4 = v2[35];
  }

  if (__archive_read_consume(a1, v4 + v2[37] + v2[38]) < 0)
  {
    return -30;
  }

  else
  {
    v2[35] = 0;
    v2[38] = 0;
    v2[37] = 0;
    gnu_clear_sparse_list(v2);
    return 0;
  }
}

uint64_t archive_mstring_copy_mbs(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v2 = strlen(a2);
    return archive_mstring_copy_mbs_len(a1, a2, v2);
  }

  else
  {
    *(a1 + 96) = 0;
    return 0;
  }
}

uint64_t archive_block_is_null(_BYTE *a1)
{
  for (i = 0; i < 0x200; ++i)
  {
    v1 = a1++;
    if (*v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t archive_mstring_copy_mbs_len(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    *(a1 + 96) = 1;
    *(a1 + 8) = 0;
    archive_strncat(a1, a2, a3);
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
  }

  else
  {
    *(a1 + 96) = 0;
  }

  return 0;
}

uint64_t _archive_read_close(uint64_t a1)
{
  if (__archive_check_magic(a1, 195932357, 0xFFFF, "archive_read_close") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 4) != 0x8000)
    {
      *(a1 + 4) = 32;
    }

    tree_close(*(a1 + 160));
    return 0;
  }
}

uint64_t _archive_read_close_0(int *a1)
{
  v3 = 0;
  if (__archive_check_magic(a1, 14594245, 0xFFFF, "archive_read_close") == -30)
  {
    return -30;
  }

  else if (a1[1] == 32)
  {
    return 0;
  }

  else
  {
    archive_clear_error(a1);
    a1[1] = 32;
    v2 = close_filters(a1);
    if (v2 < 0)
    {
      return v2;
    }

    return v3;
  }
}

uint64_t _archive_write_disk_header(_DWORD *a1, uint64_t *a2)
{
  v68 = a1;
  v67 = a2;
  v66 = a1;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = __archive_check_magic(a1, -1073631035, 6, "archive_write_disk_header");
  if (v61 == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(v66);
    if ((v66[1] & 4) != 0 && (v62 = _archive_write_disk_finish_entry(v66), v62 == -30))
    {
      return -30;
    }

    else
    {
      *(v66 + 53) = 0;
      *(v66 + 20) = 0;
      v66[127] = 0;
      if (*(v66 + 54))
      {
        archive_entry_free(*(v66 + 54));
        *(v66 + 54) = 0;
      }

      *(v66 + 54) = archive_entry_clone(v67);
      v66[129] = -1;
      *(v66 + 66) = 0;
      *(v66 + 65) = 0;
      v66[138] = -1;
      *(v66 + 70) = *(v66 + 21);
      *(v66 + 279) = archive_entry_mode(*(v66 + 54));
      if (archive_entry_size_is_set(*(v66 + 54)))
      {
        *(v66 + 68) = archive_entry_size(*(v66 + 54));
      }

      else
      {
        *(v66 + 68) = -1;
      }

      *(v66 + 57) = 0;
      v52 = (v66 + 112);
      v53 = archive_entry_pathname(*(v66 + 54));
      if (archive_entry_pathname(*(v66 + 54)))
      {
        v2 = archive_entry_pathname(*(v66 + 54));
        v51 = strlen(v2);
        archive_strncat(v52, v53, v51);
      }

      else
      {
        archive_strncat(v52, v53, 0);
      }

      *(v66 + 55) = *(v66 + 56);
      archive_clear_error(v66);
      v63 = cleanup_pathname(v66, v3, v4, v5, v6, v7, v8, v9);
      if (v63)
      {
        return v63;
      }

      else
      {
        v64 = archive_entry_hardlink(*(v66 + 54));
        if (v64 && !strcmp(*(v66 + 55), v64))
        {
          archive_set_error(v66, -1, "Skipping hardlink pointing to itself: %s", v10, v11, v12, v13, v14, *(v66 + 55));
          return -20;
        }

        else
        {
          v15 = umask(0);
          *(v66 + 72) = v15;
          umask(v15);
          v66[126] = 0x20000000;
          if ((v66[128] & 2) != 0)
          {
            v66[126] |= 0x40000000u;
            if ((*(v66 + 279) & 0x400) != 0)
            {
              v66[126] |= 0x6000000u;
            }

            if ((*(v66 + 279) & 0x800) != 0)
            {
              v66[126] |= 0x18000000u;
            }
          }

          else
          {
            *(v66 + 279) &= ~0x800u;
            *(v66 + 279) &= ~0x400u;
            *(v66 + 279) &= ~0x200u;
            *(v66 + 279) &= ~*(v66 + 72);
          }

          if (v66[128])
          {
            v66[126] |= 1u;
          }

          if ((v66[128] & 4) != 0)
          {
            v66[126] |= 4u;
          }

          if ((v66[128] & 0x20) != 0)
          {
            v60 = 0;
            if ((v66[128] & 0x2000) == 0 || !archive_entry_mac_metadata(*(v66 + 54), &v60) || !v60)
            {
              if (archive_entry_filetype(*(v66 + 54)) == 0x4000)
              {
                v66[127] |= 0x20u;
              }

              else
              {
                v66[126] |= 0x20u;
              }
            }
          }

          if ((v66[128] & 0x2000) != 0)
          {
            if (archive_entry_filetype(*(v66 + 54)) == 0x4000)
            {
              v66[127] |= 0x2000u;
            }

            else
            {
              v66[126] |= 0x2000u;
            }
          }

          if ((v66[128] & 0x4000) == 0)
          {
            v59 = 0;
            v58 = 0;
            archive_entry_fflags(*(v66 + 54), &v59, &v58);
            if ((v59 & ~v58 & 0x20) != 0)
            {
              v66[126] |= 0x8000u;
              v66[154] = -1;
            }
          }

          if ((v66[128] & 0x8000) != 0 && (*(v66 + 279) & 0xF000) == 0x8000 && *(v66 + 68) > 0)
          {
            v66[126] |= 0x8000u;
            v66[154] = -1;
          }

          v57 = 0;
          v57 = strrchr(*(v66 + 55), 47);
          if (v57)
          {
            ++v57;
          }

          else
          {
            v57 = *(v66 + 55);
          }

          if (*v57 == 46 && v57[1] == 95)
          {
            v66[126] &= ~0x8000u;
            if (*(v66 + 68) > 0)
            {
              v66[126] |= 0x1000000u;
            }
          }

          if ((v66[128] & 0x80) != 0)
          {
            v56 = 0;
            if ((v66[128] & 0x2000) == 0 || !archive_entry_mac_metadata(*(v66 + 54), &v56) || !v56)
            {
              v66[126] |= 0x80u;
            }
          }

          if ((v66[128] & 0x40) != 0)
          {
            v66[126] |= 0x40u;
          }

          if ((v66[128] & 0x100) != 0 && (v63 = check_symlinks(v66)) != 0)
          {
            return v63;
          }

          else
          {
            edit_deep_directories(v66);
            v63 = restore_entry(v66);
            if (v66[126] | 0x8000 && ((v66[129] & 0x80000000) != 0 || fchflags(v66[129], 0x20u)))
            {
              v66[126] &= ~0x8000u;
            }

            if ((v66[138] & 0x80000000) == 0)
            {
              if (v66[139])
              {
                v50 = v66[138];
              }

              else
              {
                v50 = -1;
              }

              v62 = MEMORY[0x1BFB55CF0](v50);
              if (v62)
              {
                v49 = v66;
                v16 = __error();
                archive_set_error(v49, *v16, "chdir() failure", v17, v18, v19, v20, v21, v42);
                v63 = -30;
              }

              close(v66[138]);
              v66[138] = -1;
              *(v66 + 556) = 0;
            }

            if ((v66[127] & 0x34000000) != 0)
            {
              v48 = v66;
              v22 = archive_entry_pathname(v67);
              v65 = current_fixup(v48, v22);
              if (!v65)
              {
                return -30;
              }

              v23 = archive_entry_filetype(v67);
              *(v65 + 66) = v23;
              *(v65 + 160) |= 0x20000000u;
              *(v65 + 64) = *(v66 + 279);
            }

            if ((v66[127] & 4) != 0 && (archive_entry_mtime_is_set(v67) || archive_entry_atime_is_set(v67)))
            {
              v47 = v66;
              v24 = archive_entry_pathname(v67);
              v65 = current_fixup(v47, v24);
              if (!v65)
              {
                return -30;
              }

              v25 = archive_entry_filetype(v67);
              *(v65 + 66) = v25;
              *(v65 + 64) = *(v66 + 279);
              *(v65 + 160) |= 4u;
              if (archive_entry_atime_is_set(v67))
              {
                v26 = archive_entry_atime(v67);
                *(v65 + 72) = v26;
                v27 = archive_entry_atime_nsec(v67);
                *(v65 + 104) = v27;
              }

              else
              {
                *(v65 + 72) = *(v66 + 25);
                *(v65 + 104) = 0;
              }

              if (archive_entry_mtime_is_set(v67))
              {
                v28 = archive_entry_mtime(v67);
                *(v65 + 88) = v28;
                v29 = archive_entry_mtime_nsec(v67);
                *(v65 + 120) = v29;
              }

              else
              {
                *(v65 + 88) = *(v66 + 25);
                *(v65 + 120) = 0;
              }

              if (archive_entry_birthtime_is_set(v67))
              {
                v30 = archive_entry_birthtime(v67);
                *(v65 + 80) = v30;
                v31 = archive_entry_birthtime_nsec(v67);
                *(v65 + 112) = v31;
              }

              else
              {
                *(v65 + 80) = *(v65 + 88);
                *(v65 + 112) = *(v65 + 120);
              }
            }

            if ((v66[127] & 0x20) != 0)
            {
              v46 = v66;
              v32 = archive_entry_pathname(v67);
              v65 = current_fixup(v46, v32);
              if (!v65)
              {
                return -30;
              }

              v33 = archive_entry_filetype(v67);
              *(v65 + 66) = v33;
              *(v65 + 160) |= 0x20u;
              v45 = (v65 + 8);
              v34 = archive_entry_acl(v67);
              archive_acl_copy(v45, v34);
            }

            if ((v66[127] & 0x2000) != 0)
            {
              v55 = 0;
              size = 0;
              v55 = archive_entry_mac_metadata(*(v66 + 54), &size);
              if (v55)
              {
                if (size)
                {
                  v44 = v66;
                  v35 = archive_entry_pathname(v67);
                  v65 = current_fixup(v44, v35);
                  if (!v65)
                  {
                    return -30;
                  }

                  v36 = archive_entry_filetype(v67);
                  *(v65 + 66) = v36;
                  v37 = malloc_type_malloc(size, 0x289DCC05uLL);
                  *(v65 + 152) = v37;
                  if (*(v65 + 152))
                  {
                    v38 = *(v65 + 152);
                    __memcpy_chk();
                    *(v65 + 144) = size;
                    *(v65 + 160) |= 0x2000u;
                  }
                }
              }
            }

            if ((v66[127] & 0x40) != 0)
            {
              v43 = v66;
              v39 = archive_entry_pathname(v67);
              v65 = current_fixup(v43, v39);
              if (!v65)
              {
                return -30;
              }

              v40 = archive_entry_filetype(v67);
              *(v65 + 66) = v40;
              *(v65 + 160) |= 0x40u;
            }

            if (v63 >= -20)
            {
              v66[1] = 4;
            }

            if ((v66[129] & 0x80000000) != 0)
            {
              archive_entry_set_size(v67, 0);
              *(v66 + 68) = 0;
            }

            return v63;
          }
        }
      }
    }
  }
}

uint64_t close_filters(uint64_t a1)
{
  v5 = *(a1 + 632);
  v4 = 0;
  while (v5)
  {
    v3 = *(v5 + 16);
    if (!*(v5 + 137) && *(v5 + 32))
    {
      v2 = (*(*(v5 + 32) + 8))(v5);
      *(v5 + 137) = 1;
      if (v2 < v4)
      {
        v4 = v2;
      }
    }

    free(*(v5 + 72));
    *(v5 + 72) = 0;
    v5 = v3;
  }

  return v4;
}

void *archive_entry_clone(uint64_t *a1)
{
  v7 = a1;
  v6 = 0;
  i = 0;
  j = 0;
  v3 = 0;
  v6 = archive_entry_new2(*a1);
  if (!v6)
  {
    return 0;
  }

  memcpy(v6 + 3, v7 + 3, 0x88uLL);
  v6[34] = v7[34];
  v6[35] = v7[35];
  archive_mstring_copy((v6 + 21), (v7 + 21));
  archive_mstring_copy((v6 + 36), (v7 + 36));
  archive_mstring_copy((v6 + 49), (v7 + 49));
  archive_mstring_copy((v6 + 62), (v7 + 62));
  archive_mstring_copy((v6 + 101), (v7 + 101));
  archive_mstring_copy((v6 + 75), (v7 + 75));
  *(v6 + 40) = *(v7 + 40);
  archive_mstring_copy((v6 + 88), (v7 + 88));
  *(v6 + 311) = *(v7 + 311);
  *(v6 + 912) = *(v7 + 912);
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  archive_acl_copy(v6 + 568, (v7 + 142));
  v2 = archive_entry_mac_metadata(v7, &v3);
  archive_entry_copy_mac_metadata(v6, v2, v3);
  for (i = v7[149]; i; i = *i)
  {
    archive_entry_xattr_add_entry(v6, *(i + 8), *(i + 16), *(i + 24));
  }

  for (j = v7[151]; j; j = *j)
  {
    archive_entry_sparse_add_entry(v6, j[1], j[2]);
  }

  return v6;
}

uint64_t *archive_string_concat(uint64_t *a1, uint64_t *a2)
{
  result = archive_string_append(a1, *a2, a2[1]);
  if (!result)
  {
    __archive_errx(1, "Out of memory");
  }

  return result;
}

uint64_t read_client_close_proxy(uint64_t a1)
{
  v4 = 0;
  if (*(a1 + 208))
  {
    for (i = 0; i < *(a1 + 224); ++i)
    {
      v3 = (*(a1 + 208))(a1, *(*(a1 + 240) + 24 * i + 16));
      if (v4 > v3)
      {
        v4 = v3;
      }
    }

    return v4;
  }

  else
  {
    return 0;
  }
}

void *archive_mstring_copy(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 8) = 0;
  archive_string_concat(a1, a2);
  *(a1 + 32) = 0;
  archive_string_concat((a1 + 24), (a2 + 24));
  *(a1 + 56) = 0;
  return archive_wstring_concat((a1 + 48), a2 + 48);
}

uint64_t archive_free(uint64_t a1)
{
  if (a1)
  {
    archive_entitlement_cleanup();
    return (*(*(a1 + 8) + 8))(a1);
  }

  else
  {
    return 0;
  }
}

void *archive_wstring_concat(void *a1, uint64_t a2)
{
  result = archive_wstring_append(a1, *a2, *(a2 + 8));
  if (!result)
  {
    __archive_errx(1, "Out of memory");
  }

  return result;
}

void *archive_wstring_append(void *a1, const __int32 *a2, size_t a3)
{
  if (!archive_wstring_ensure(a1, a1[1] + a3 + 1))
  {
    return 0;
  }

  if (a3)
  {
    wmemmove((*a1 + 4 * a1[1]), a2, a3);
  }

  a1[1] += a3;
  *(*a1 + 4 * a1[1]) = 0;
  return a1;
}

void archive_entitlement_cleanup()
{
  os_unfair_lock_lock(&formats_lock);
  if (allowed_formats)
  {
    CFRelease(allowed_formats);
    allowed_formats = 0;
  }

  formats_populated = 0;
  os_unfair_lock_unlock(&formats_lock);
  os_unfair_lock_lock(&filters_lock);
  if (allowed_filters)
  {
    CFRelease(allowed_filters);
    allowed_filters = 0;
  }

  filters_populated = 0;
  os_unfair_lock_unlock(&filters_lock);
}

uint64_t _archive_read_free(uint64_t a1)
{
  if (a1)
  {
    if (__archive_check_magic(a1, 195932357, 0xFFFF, "archive_read_free") == -30)
    {
      return -30;
    }

    else
    {
      if (*(a1 + 4) == 32)
      {
        close = 0;
      }

      else
      {
        close = _archive_read_close(a1);
      }

      tree_free(*(a1 + 160));
      if (*(a1 + 208) && *(a1 + 216))
      {
        (*(a1 + 208))(*(a1 + 216));
      }

      if (*(a1 + 232) && *(a1 + 240))
      {
        (*(a1 + 232))(*(a1 + 240));
      }

      archive_string_free(a1 + 48);
      archive_entry_free(*(a1 + 144));
      *a1 = 0;
      __archive_clean(a1);
      free(a1);
      return close;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t _archive_read_free_0(char *a1)
{
  close = 0;
  if (a1)
  {
    if (__archive_check_magic(a1, 14594245, 0xFFFF, "archive_read_free") == -30)
    {
      return -30;
    }

    else
    {
      if (*(a1 + 1) != 32 && *(a1 + 1) != 0x8000)
      {
        close = archive_read_close(a1);
      }

      if (*(a1 + 261))
      {
        close = (*(a1 + 261))(a1);
      }

      for (i = 0; i < 16; ++i)
      {
        *(a1 + 259) = &a1[88 * i + 664];
        if (*&a1[88 * i + 728])
        {
          (*&a1[88 * i + 728])(a1);
        }
      }

      __archive_read_free_filters(a1);
      for (j = 0; j < 16; ++j)
      {
        if (*&a1[24 * j + 264] && *(*&a1[24 * j + 264] + 16))
        {
          (*(*&a1[24 * j + 264] + 16))(&a1[24 * j + 248]);
        }
      }

      for (k = *(a1 + 262); k; k = v4)
      {
        v4 = *(k + 8);
        v3 = *k;
        v1 = strlen(*k);
        __memset_chk();
        free(*k);
        free(k);
      }

      archive_string_free((a1 + 48));
      archive_entry_free(*(a1 + 18));
      *a1 = 0;
      __archive_clean(a1);
      free(*(a1 + 30));
      free(a1);
      return close;
    }
  }

  else
  {
    return 0;
  }
}

void archive_acl_copy(_WORD *a1, uint64_t a2)
{
  archive_acl_clear(a1);
  *a1 = *a2;
  for (i = *(a2 + 8); i; i = *i)
  {
    v2 = acl_new_entry(a1, *(i + 2), *(i + 4), *(i + 3), *(i + 5));
    if (v2)
    {
      archive_mstring_copy((v2 + 3), (i + 3));
    }
  }
}

uint64_t archive_read_format_ar_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  free(v2[4]);
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

uint64_t archive_read_format_cpio_cleanup(uint64_t a1)
{
  for (i = **(a1 + 2072); i[2]; i[2] = v2)
  {
    v2 = *i[2];
    free(*(i[2] + 4));
    free(i[2]);
  }

  free(i);
  **(a1 + 2072) = 0;
  return 0;
}

uint64_t archive_read_format_lha_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  lzh_decode_free(v2 + 368);
  archive_string_free(v2 + 224);
  archive_string_free(v2 + 248);
  archive_string_free(v2 + 144);
  archive_string_free(v2 + 168);
  archive_wstring_free(v2 + 272);
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

void lzh_decode_free(uint64_t a1)
{
  if (*(a1 + 48))
  {
    free(*(*(a1 + 48) + 16));
    lzh_huffman_free((*(a1 + 48) + 56));
    lzh_huffman_free((*(a1 + 48) + 184));
    free(*(a1 + 48));
    *(a1 + 48) = 0;
  }
}

void cleanup(uint64_t a1)
{
  if (a1)
  {
    for (i = 0; i < *(a1 + 32); ++i)
    {
      if (*(a1 + 40 + 16 * i + 8))
      {
        if (*(a1 + 40 + 16 * i + 8) != "(noname)")
        {
          free(*(a1 + 40 + 16 * i + 8));
        }
      }
    }

    free(*(a1 + 8));
    free(a1);
  }
}

uint64_t cleanup_0(uint64_t a1)
{
  v4 = **(a1 + 2072);
  for (i = *(v4 + 8); i; i = v2)
  {
    v2 = *(i + 4);
    free(*(i + 6));
    free_options(*(i + 5));
    free(i);
  }

  archive_string_free(v4);
  archive_string_free(v4 + 96);
  archive_string_free(v4 + 120);
  archive_entry_linkresolver_free(*(v4 + 18));
  free(*(v4 + 4));
  free(v4);
  **(a1 + 2072) = 0;
  return 0;
}

void cleanup_1(void **a1)
{
  for (i = 0; i < 0x7F; ++i)
  {
    free(a1[2 * i]);
  }

  free(a1);
}

uint64_t cleanup_pathname(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1;
  v15 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = cleanup_pathname_fsobj(v17[55], &v15, v16, *(v17 + 128), a5, a6, a7, a8);
  if (v14)
  {
    archive_set_error(v17, v15, "%s", v8, v9, v10, v11, v12, v16[0]);
  }

  archive_string_free(v16);
  return v14;
}

uint64_t cleanup_pathname_fsobj(char *a1, _DWORD *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0;
  v16 = a1;
  v17 = a1;
  if (!*a1)
  {
    fsobj_error(a2, a3, 0xFFFFFFFFLL, "Invalid empty ", "pathname", a6, a7, a8);
    return -25;
  }

  if (*a1 != 47)
  {
    goto LABEL_7;
  }

  if ((a4 & 0x10000) != 0)
  {
    fsobj_error(a2, a3, 0xFFFFFFFFLL, "Path is ", "absolute", a6, a7, a8);
    return -25;
  }

  v16 = a1 + 1;
  v15 = *a1;
LABEL_7:
  while (*v16)
  {
    if (*v16 == 47)
    {
      ++v16;
    }

    else
    {
      if (*v16 != 46)
      {
        goto LABEL_19;
      }

      if (!v16[1])
      {
        break;
      }

      if (v16[1] == 47)
      {
        v16 += 2;
      }

      else
      {
        if (v16[1] == 46 && (v16[2] == 47 || !v16[2]) && (a4 & 0x200) != 0)
        {
          fsobj_error(a2, a3, 0xFFFFFFFFLL, "Path contains ", "'..'", a6, a7, a8);
          return -25;
        }

LABEL_19:
        if (v15)
        {
          v8 = v17++;
          *v8 = 47;
        }

        while (1)
        {
          v14 = 0;
          if (*v16)
          {
            v14 = *v16 != 47;
          }

          if (!v14)
          {
            break;
          }

          v9 = v16++;
          v10 = v17++;
          *v10 = *v9;
        }

        if (!*v16)
        {
          break;
        }

        v11 = v16++;
        v15 = *v11;
      }
    }
  }

  if (v17 == a1)
  {
    v12 = v17++;
    if (v15)
    {
      *v12 = 47;
    }

    else
    {
      *v12 = 46;
    }
  }

  *v17 = 0;
  return 0;
}

void archive_entry_linkresolver_free(void **a1)
{
  if (a1)
  {
    while (1)
    {
      entry = next_entry(a1, 3);
      if (!entry)
      {
        break;
      }

      archive_entry_free(entry[3]);
    }

    free(*a1);
    free(a1);
  }
}

uint64_t archive_entry_hardlink(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  if ((*(a1 + 160) & 1) == 0)
  {
    return 0;
  }

  if (!archive_mstring_get_mbs(*v3, (v3 + 49), &v2))
  {
    return v2;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_read_format_tar_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  gnu_clear_sparse_list(v2);
  archive_string_free(v2);
  archive_string_free(v2 + 24);
  archive_string_free(v2 + 48);
  archive_string_free(v2 + 72);
  archive_string_free(v2 + 96);
  archive_string_free(v2 + 120);
  archive_string_free(v2 + 240);
  archive_string_free(v2 + 216);
  archive_string_free(v2 + 192);
  archive_string_free(v2 + 168);
  archive_string_free(v2 + 144);
  archive_string_free(v2 + 376);
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

uint64_t xar_cleanup(uint64_t a1)
{
  v7 = **(a1 + 2072);
  checksum_cleanup(a1);
  v4 = decompression_cleanup(a1);
  for (i = *(v7 + 880); i; i = v3)
  {
    v3 = *i;
    free(i);
  }

  for (j = 0; j < *(v7 + 868); ++j)
  {
    file_free_1(*(*(v7 + 856) + 8 * j));
  }

  free(*(v7 + 856));
  while (*(v7 + 48))
  {
    v2 = *(v7 + 48);
    *(v7 + 48) = *v2;
    archive_string_free((v2 + 1));
    free(v2);
  }

  free(*(v7 + 32));
  free(v7);
  **(a1 + 2072) = 0;
  return v4;
}

uint64_t archive_entry_fflags(uint64_t result, void *a2, void *a3)
{
  *a2 = *(result + 272);
  *a3 = *(result + 280);
  return result;
}

uint64_t checksum_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  _checksum_final((v2 + 452), 0, 0);
  return _checksum_final((v2 + 644), 0, 0);
}

uint64_t check_symlinks(const char **a1)
{
  v10 = a1;
  v8 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = check_symlinks_fsobj(v10[55], &v8, v9, *(v10 + 128), 0);
  if (os_variant_has_internal_content())
  {
    __call_test_hook("__test_hook_after_check_symlinks_fsobj");
  }

  if (v7)
  {
    archive_set_error(v10, v8, "%s", v1, v2, v3, v4, v5, v9[0]);
  }

  archive_string_free(v9);
  v10[53] = 0;
  return v7;
}

uint64_t _checksum_final(int *a1, const void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      off_1F3DE4E20(a1 + 1, __s2);
      if (a3 != 20 || memcmp(a2, __s2, 0x14uLL))
      {
        v5 = -25;
      }
    }

    else if (v4 == 2)
    {
      off_1F3DE4DF0((a1 + 1), __s2);
      if (a3 != 16 || memcmp(a2, __s2, 0x10uLL))
      {
        v5 = -25;
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t check_symlinks_fsobj(const char *a1, _DWORD *a2, uint64_t *a3, int a4, int a5)
{
  v65 = a1;
  v64 = a2;
  v63 = a3;
  v62 = a4;
  v61 = a5;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  memset(&__b, 0, sizeof(__b));
  if (*v65)
  {
    v53 = la_opendirat(-2, ".");
    __archive_ensure_cloexec_flag(v53);
    if ((v53 & 0x80000000) != 0)
    {
      v50 = v64;
      v49 = v63;
      v5 = __error();
      fsobj_error(v50, v49, *v5, "Could not open ", v65, v6, v7, v8);
      return -30;
    }

    else
    {
      v58 = v65;
      v59 = v65;
      v57 = 0;
      if (*v65 == 47)
      {
        ++v59;
      }

      while (!v57)
      {
        while (*v59 == 47)
        {
          ++v59;
        }

        while (1)
        {
          v48 = 0;
          if (*v59)
          {
            v48 = *v59 != 47;
          }

          if (!v48)
          {
            break;
          }

          ++v59;
        }

        v47 = 1;
        if (*v59)
        {
          v46 = 0;
          if (*v59 == 47)
          {
            v46 = v59[1] == 0;
          }

          v47 = v46;
        }

        v57 = v47 & 1;
        v56 = *v59;
        *v59 = 0;
        v55 = fstatat(v53, v58, &__b, 32);
        if (v55)
        {
          *v59 = v56;
          if (*__error() != 2)
          {
            v45 = v64;
            v44 = v63;
            v12 = __error();
            fsobj_error(v45, v44, *v12, "Could not stat ", v65, v13, v14, v15);
            v60 = -25;
          }

          break;
        }

        if ((__b.st_mode & 0xF000) == 0x4000)
        {
          if (!v57)
          {
            v51 = openat(v53, v58, 1611661312);
            if (v51 < 0)
            {
              v55 = -1;
            }

            else
            {
              v55 = 0;
              close(v53);
              v53 = v51;
            }

            if (v55)
            {
              *v59 = v56;
              v43 = v64;
              v42 = v63;
              v16 = __error();
              fsobj_error(v43, v42, *v16, "Could not chdir ", v65, v17, v18, v19);
              v60 = -30;
              break;
            }

            v58 = v59 + 1;
          }
        }

        else if ((__b.st_mode & 0xF000) == 0xA000)
        {
          if (v57 && v61)
          {
            v60 = 0;
            break;
          }

          if (v57)
          {
            v55 = unlinkat(v53, v58, 0);
            if (v55)
            {
              *v59 = v56;
              v41 = v64;
              v40 = v63;
              v20 = __error();
              fsobj_error(v41, v40, *v20, "Could not remove symlink ", v65, v21, v22, v23);
              v60 = -25;
            }

            else
            {
              *v59 = v56;
              v60 = 0;
            }

            break;
          }

          if ((v62 & 0x10) != 0)
          {
            v55 = unlinkat(v53, v58, 0);
            if (v55)
            {
              *v59 = v56;
              fsobj_error(v64, v63, 0, "Cannot remove intervening symlink ", v65, v24, v25, v26);
              v60 = -25;
              break;
            }

            *v59 = v56;
          }

          else
          {
            if ((v62 & 0x100) != 0)
            {
              goto LABEL_53;
            }

            v55 = fstatat(v53, v58, &__b, 0);
            if (v55)
            {
              *v59 = v56;
              if (*__error() != 2)
              {
                v39 = v64;
                v38 = v63;
                v27 = __error();
                fsobj_error(v39, v38, *v27, "Could not stat ", v65, v28, v29, v30);
                v60 = -25;
              }

              break;
            }

            if ((__b.st_mode & 0xF000) != 0x4000)
            {
LABEL_53:
              *v59 = v56;
              fsobj_error(v64, v63, 0, "Cannot extract through symlink ", v65, v9, v10, v11);
              v60 = -25;
              break;
            }

            v52 = la_opendirat(v53, v58);
            if ((v52 & 0x80000000) != 0)
            {
              v55 = -1;
            }

            else
            {
              v55 = 0;
              close(v53);
              v53 = v52;
            }

            if (v55)
            {
              *v59 = v56;
              v37 = v64;
              v36 = v63;
              v31 = __error();
              fsobj_error(v37, v36, *v31, "Could not chdir ", v65, v32, v33, v34);
              v60 = -30;
              break;
            }

            v58 = v59 + 1;
          }
        }

        *v59 = v56;
        if (*v59)
        {
          ++v59;
        }
      }

      *v59 = v56;
      if ((v53 & 0x80000000) == 0)
      {
        close(v53);
      }

      return v60;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t decompression_cleanup(uint64_t a1)
{
  v14 = **(a1 + 2072);
  v13 = 0;
  if (*(v14 + 216) && inflateEnd((v14 + 104)))
  {
    archive_set_error(a1, -1, "Failed to clean up zlib decompressor", v1, v2, v3, v4, v5, v12);
    v13 = -30;
  }

  if (*(v14 + 304) && BZ2_bzDecompressEnd((v14 + 224)))
  {
    archive_set_error(a1, -1, "Failed to clean up bzip2 decompressor", v6, v7, v8, v9, v10, v12);
    v13 = -30;
  }

  if (*(v14 + 448))
  {
    lzma_end();
  }

  return v13;
}

uint64_t __archive_ensure_cloexec_flag(uint64_t result)
{
  v1 = result;
  if ((result & 0x80000000) == 0)
  {
    result = fcntl(result, 1);
    if (result != -1 && (result & 1) == 0)
    {
      return fcntl(v1, 2, result | 1);
    }
  }

  return result;
}

uint64_t _warc_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (v2[3])
  {
    free(v2[4]);
  }

  archive_string_free((v2 + 6));
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

size_t edit_deep_directories(uint64_t a1)
{
  __s = *(a1 + 440);
  result = strlen(__s);
  if (result >= 0x400)
  {
    *(a1 + 552) = la_opendirat(-2, ".");
    result = __archive_ensure_cloexec_flag(*(a1 + 552));
    if ((*(a1 + 552) & 0x80000000) == 0)
    {
      *(a1 + 556) = MEMORY[0x1BFB55CF0](0xFFFFFFFFLL) == 0;
      while (1)
      {
        result = strlen(__s);
        if (result < 0x400)
        {
          break;
        }

        for (__sa = __s + 1016; ; --__sa)
        {
          v2 = 0;
          if (__sa > *(a1 + 440))
          {
            v2 = *__sa != 47;
          }

          if (!v2)
          {
            break;
          }
        }

        if (__sa <= *(a1 + 440))
        {
          break;
        }

        *__sa = 0;
        dir = create_dir(a1, *(a1 + 440));
        result = os_variant_has_internal_content();
        if (result)
        {
          result = __call_test_hook("__test_hook_edit_deep_directories_after_create_dir");
        }

        if (!dir)
        {
          v3 = 1074790400;
          if ((*(a1 + 512) & 0x100) != 0)
          {
            v3 = 1611661312;
          }

          result = open(*(a1 + 440), v3);
          v4 = result;
          if ((result & 0x80000000) != 0)
          {
            dir = -25;
          }

          else
          {
            if (MEMORY[0x1BFB55CF0](result))
            {
              dir = -25;
            }

            result = close(v4);
          }
        }

        *__sa = 47;
        if (dir)
        {
          break;
        }

        __s = __sa + 1;
        *(a1 + 440) = __s;
      }
    }
  }

  return result;
}

uint64_t archive_read_format_7zip_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  free_StreamsInfo(v2);
  free(v2[20]);
  free(v2[22]);
  free_decompression(a1, v2);
  free(v2[27]);
  free(v2[2503]);
  free(v2[2504]);
  free(v2[2505]);
  free(v2[2512]);
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

void free_PackInfo(void **a1)
{
  free(a1[2]);
  free(a1[5]);
  free_Digest(a1 + 3);
}

void free_SubStreamsInfo(void **a1)
{
  free(a1[1]);
  free(a1[2]);
  free(a1[3]);
}

void free_StreamsInfo(void **a1)
{
  free_PackInfo(a1);
  free_CodersInfo((a1 + 6));
  free_SubStreamsInfo(a1 + 9);
}

uint64_t create_filesystem_object(uint64_t a1)
{
  v6 = strrchr(*(a1 + 440), 47);
  if (v6)
  {
    *v6 = 0;
    v1 = *(a1 + 440);
    if ((*(a1 + 512) & 0x100) != 0)
    {
      v2 = open(v1, 1611661312, 0);
    }

    else
    {
      v2 = open(v1, 1074790400, 0);
    }

    v5 = v2;
    *v6 = 47;
    if ((v2 & 0x80000000) != 0)
    {
      return *__error();
    }

    else
    {
      __archive_ensure_cloexec_flag(v2);
      filesystem_object_at = create_filesystem_object_at(v5, v6 + 1, a1);
      close(v5);
      return filesystem_object_at;
    }
  }

  else
  {
    return create_filesystem_object_at(-2, *(a1 + 440), a1);
  }
}

uint64_t restore_entry(uint64_t a1)
{
  if ((*(a1 + 512) & 0x10) != 0 && (*(a1 + 558) & 0xF000) != 0x4000)
  {
    if ((*(a1 + 512) & 0x20000) != 0)
    {
      clear_nochange_fflags(a1);
    }

    if (unlink(*(a1 + 440)))
    {
      if (*__error() != 2)
      {
        if (rmdir(*(a1 + 440)))
        {
          v1 = __error();
          archive_set_error(a1, *v1, "Could not unlink", v2, v3, v4, v5, v6, v52);
          return -25;
        }

        *(a1 + 424) = 0;
      }
    }

    else
    {
      *(a1 + 424) = 0;
    }
  }

  filesystem_object = create_filesystem_object(a1);
  if ((filesystem_object == 20 || filesystem_object == 2) && (*(a1 + 512) & 0x400) == 0)
  {
    create_parent_dir(a1, *(a1 + 440));
    filesystem_object = create_filesystem_object(a1);
  }

  if (filesystem_object == 2 && archive_entry_hardlink(*(a1 + 432)))
  {
    v14 = archive_entry_hardlink(*(a1 + 432));
    archive_set_error(a1, 2, "Hard-link target '%s' does not exist.", v15, v16, v17, v18, v19, v14);
    return -25;
  }

  if ((filesystem_object == 21 || filesystem_object == 17) && (*(a1 + 512) & 8) != 0)
  {
    if ((*(a1 + 558) & 0xF000) == 0x4000)
    {
      *(a1 + 504) = 0;
    }

    goto LABEL_39;
  }

  if (filesystem_object == 21)
  {
    if (rmdir(*(a1 + 440)))
    {
      v20 = __error();
      archive_set_error(a1, *v20, "Can't remove already-existing dir", v21, v22, v23, v24, v25, v52);
      return -25;
    }

LABEL_27:
    *(a1 + 424) = 0;
    filesystem_object = create_filesystem_object(a1);
    goto LABEL_65;
  }

  if (filesystem_object == 17)
  {
    v53 = 0;
    if ((*(a1 + 558) & 0xF000) == 0x4000)
    {
      v53 = stat(*(a1 + 440), (a1 + 280));
    }

    if (v53 || (*(a1 + 558) & 0xF000) != 0x4000)
    {
      v53 = lstat(*(a1 + 440), (a1 + 280));
    }

    if (v53)
    {
      v26 = __error();
      archive_set_error(a1, *v26, "Can't stat existing object", v27, v28, v29, v30, v31, v52);
      return -25;
    }

    if ((*(a1 + 512) & 0x800) != 0 && (*(a1 + 284) & 0xF000) != 0x4000 && !older(a1 + 280, *(a1 + 432)))
    {
LABEL_39:
      archive_entry_unset_size(*(a1 + 432));
      return 0;
    }

    if (*(a1 + 176) && *(a1 + 280) == *(a1 + 184) && *(a1 + 288) == *(a1 + 192))
    {
      archive_set_error(a1, 0, "Refusing to overwrite archive", v9, v10, v11, v12, v13, v52);
      return -25;
    }

    if ((*(a1 + 284) & 0xF000) == 0x4000)
    {
      if ((*(a1 + 558) & 0xF000) == 0x4000)
      {
        if (*(a1 + 558) != *(a1 + 284) && (*(a1 + 504) & 0x40000000) != 0)
        {
          *(a1 + 508) |= *(a1 + 504) & 0x34000000;
        }

        filesystem_object = 0;
      }

      else
      {
        if ((*(a1 + 512) & 0x20000) != 0)
        {
          clear_nochange_fflags(a1);
        }

        if (rmdir(*(a1 + 440)))
        {
          v45 = __error();
          archive_set_error(a1, *v45, "Can't replace existing directory with non-directory", v46, v47, v48, v49, v50, v52);
          return -25;
        }

        filesystem_object = create_filesystem_object(a1);
      }

      goto LABEL_65;
    }

    if ((*(a1 + 512) & 0x20000) != 0)
    {
      clear_nochange_fflags(a1);
    }

    if ((*(a1 + 512) & 0x40000) != 0 && (*(a1 + 284) & 0xF000) == 0x8000)
    {
      v32 = la_mktemp(a1, v7, v8, v9, v10, v11, v12, v13);
      *(a1 + 516) = v32;
      if (v32 == -1)
      {
        v33 = __error();
        archive_set_error(a1, *v33, "Can't create temporary file", v34, v35, v36, v37, v38, v52);
        return -25;
      }

      *(a1 + 424) = 0;
      filesystem_object = 0;
      goto LABEL_65;
    }

    if (unlink(*(a1 + 440)))
    {
      v39 = __error();
      archive_set_error(a1, *v39, "Can't unlink already-existing object", v40, v41, v42, v43, v44, v52);
      return -25;
    }

    goto LABEL_27;
  }

LABEL_65:
  if (filesystem_object)
  {
    if (!*(a1 + 40))
    {
      archive_set_error(a1, filesystem_object, "Can't create '%s'", v9, v10, v11, v12, v13, *(a1 + 440));
    }

    return -25;
  }

  else
  {
    *(a1 + 424) = 0;
    return 0;
  }
}

uint64_t archive_entry_symlink(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  if ((*(a1 + 160) & 2) == 0)
  {
    return 0;
  }

  if (!archive_mstring_get_mbs(*v3, (v3 + 75), &v2))
  {
    return v2;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

void free_CodersInfo(uint64_t a1)
{
  if (*(a1 + 8))
  {
    for (i = 0; i < *a1; ++i)
    {
      free_Folder(*(a1 + 8) + 104 * i);
    }

    free(*(a1 + 8));
  }
}

uint64_t _archive_write_disk_finish_entry(_DWORD *a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v67 = a1;
  v66 = a1;
  v65 = 0;
  v64 = __archive_check_magic(a1, -1073631035, 6, "archive_write_finish_entry");
  if (v64 == -30)
  {
    v68 = -30;
    goto LABEL_72;
  }

  if ((v66[1] & 2) != 0)
  {
    v68 = 0;
    goto LABEL_72;
  }

  archive_clear_error(v66);
  if ((v66[129] & 0x80000000) == 0 && (*(v66 + 68) & 0x8000000000000000) == 0 && *(v66 + 66) != *(v66 + 68))
  {
    if ((v66[126] & 0x8000) != 0)
    {
      v63 = 0;
      if (*(v66 + 85))
      {
        bzero(v69, 0x400uLL);
      }

      while (*(v66 + 85))
      {
        if (*(v66 + 85) > 0x400uLL)
        {
          v63 = hfs_write_data_block(v66, v69, 0x400uLL, v2, v3, v4, v5, v6);
        }

        else
        {
          v63 = hfs_write_data_block(v66, v69, *(v66 + 85), v2, v3, v4, v5, v6);
        }

        if (v63 < 0)
        {
          close_file_descriptor(v66);
          v68 = v63;
          goto LABEL_72;
        }
      }
    }

    else
    {
      if (ftruncate(v66[129], *(v66 + 68)) == -1 && !*(v66 + 68))
      {
        v7 = __error();
        archive_set_error(v66, *v7, "File size could not be restored", v8, v9, v10, v11, v12, v39);
        close_file_descriptor(v66);
        v68 = -25;
        goto LABEL_72;
      }

      *(v66 + 53) = 0;
      v65 = lazy_stat(v66);
      if (v65)
      {
        close_file_descriptor(v66);
        v68 = v65;
        goto LABEL_72;
      }

      if (*(v66 + 47) < *(v66 + 68))
      {
        __buf = 0;
        if (lseek(v66[129], *(v66 + 68) - 1, 0) < 0)
        {
          v13 = __error();
          archive_set_error(v66, *v13, "Seek failed", v14, v15, v16, v17, v18, v39);
          close_file_descriptor(v66);
          v68 = -30;
          goto LABEL_72;
        }

        if (write(v66[129], &__buf, 1uLL) < 0)
        {
          v50 = v66;
          v19 = __error();
          archive_set_error(v50, *v19, "Write to restore size failed", v20, v21, v22, v23, v24, v39);
          close_file_descriptor(v66);
          v68 = -30;
          goto LABEL_72;
        }

        *(v66 + 53) = 0;
      }
    }
  }

  if ((v66[126] & 0x1000000) == 0)
  {
    goto LABEL_34;
  }

  v61 = fixup_appledouble(v66, *(v66 + 55));
  if (v61 != 1)
  {
    if (v61 < v65)
    {
      v65 = v61;
    }

LABEL_34:
    if ((v66[126] & 0x14000001) != 0)
    {
      v49 = v66;
      v48 = archive_entry_uname(*(v66 + 54));
      v25 = archive_entry_uid(*(v66 + 54));
      v26 = archive_write_disk_uid(v49, v48, v25);
      *(v66 + 70) = v26;
    }

    if ((v66[126] & 0x14000001) != 0)
    {
      v47 = v66;
      v46 = archive_entry_gname(*(v66 + 54));
      v27 = archive_entry_gid(*(v66 + 54));
      v28 = archive_write_disk_gid(v47, v46, v27);
      *(v66 + 71) = v28;
    }

    if (v66[126])
    {
      v60 = set_ownership(v66);
      if (v60 < v65)
      {
        v65 = v60;
      }
    }

    if (*(v66 + 21))
    {
      if ((v66[126] & 0x80) != 0)
      {
        v59 = set_xattrs(v66);
        if (v59 < v65)
        {
          v65 = v59;
        }
      }
    }

    if ((v66[126] & 0x34000000) != 0)
    {
      v58 = set_mode(v66, *(v66 + 279), v1, v2, v3, v4, v5, v6);
      if (v58 < v65)
      {
        v65 = v58;
      }
    }

    if (!*(v66 + 21) && (v66[126] & 0x80) != 0)
    {
      v57 = set_xattrs(v66);
      if (v57 < v65)
      {
        v65 = v57;
      }
    }

    if ((v66[126] & 0x40) != 0)
    {
      v56 = set_fflags(v66);
      if (v56 < v65)
      {
        v65 = v56;
      }
    }

    if ((v66[126] & 4) != 0)
    {
      v55 = set_times_from_entry(v66);
      if (v55 < v65)
      {
        v65 = v55;
      }
    }

    if ((v66[126] & 0x2000) != 0)
    {
      v54 = 0;
      v53 = 0;
      v54 = archive_entry_mac_metadata(*(v66 + 54), &v53);
      if (v54)
      {
        if (v53)
        {
          v45 = v66;
          v29 = archive_entry_pathname(*(v66 + 54));
          v52 = set_mac_metadata(v45, v29, v54, v53);
          if (v52 < v65)
          {
            v65 = v52;
          }
        }
      }
    }

    if ((v66[126] & 0x20) != 0)
    {
      v44 = v66;
      v41 = v66[129];
      v42 = archive_entry_pathname(*(v66 + 54));
      v43 = archive_entry_acl(*(v66 + 54));
      archive_entry_mode(*(v66 + 54));
      v51 = archive_write_disk_set_acls(v44, v41, v42, v43);
      if (v51 < v65)
      {
        v65 = v51;
      }
    }
  }

  if ((v66[129] & 0x80000000) == 0)
  {
    close(v66[129]);
    v66[129] = -1;
    if (*(v66 + 59))
    {
      rename(*(v66 + 59), *(v66 + 55), v30);
      if (v31 == -1)
      {
        v40 = v66;
        v32 = __error();
        archive_set_error(v40, *v32, "Failed to rename temporary file", v33, v34, v35, v36, v37, v39);
        v65 = -25;
        unlink(*(v66 + 59));
      }

      *(v66 + 59) = 0;
    }
  }

  archive_entry_free(*(v66 + 54));
  *(v66 + 54) = 0;
  v66[1] = 2;
  v68 = v65;
LABEL_72:
  *MEMORY[0x1E69E9840];
  return v68;
}

uint64_t set_mode(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 0;
  v30 = a2 & 0xFFF;
  if ((*(a1 + 504) & 0x2000000) != 0)
  {
    v29 = lazy_stat(a1);
    if (v29)
    {
      return v29;
    }

    if (*(*(a1 + 424) + 20) != *(a1 + 568))
    {
      v30 &= ~0x400u;
      if (*(a1 + 512))
      {
        archive_set_error(a1, -1, "Can't restore SGID bit", v8, v9, v10, v11, v12, v26);
        v29 = -20;
      }
    }

    if (*(*(a1 + 424) + 16) != *(a1 + 560) && (*(a1 + 504) & 0x10000000) != 0)
    {
      v30 &= ~0x800u;
      if (*(a1 + 512))
      {
        archive_set_error(a1, -1, "Can't restore SUID bit", v8, v9, v10, v11, v12, v26);
        v29 = -20;
      }
    }

    *(a1 + 504) &= ~0x2000000u;
    *(a1 + 504) &= ~0x8000000u;
  }

  else if ((*(a1 + 504) & 0x8000000) != 0)
  {
    if (*(a1 + 168) != *(a1 + 560))
    {
      v30 = a2 & 0x7FF;
      if (*(a1 + 512))
      {
        archive_set_error(a1, -1, "Can't make file SUID", a4, a5, a6, a7, a8, v26);
        v29 = -20;
      }
    }

    *(a1 + 504) &= ~0x8000000u;
  }

  if ((*(a1 + 558) & 0xF000) == 0xA000)
  {
    if (lchmod(*(a1 + 440), v30))
    {
      v27 = *__error();
      if (v27 != 45 && v27 != 78 && v27 != 102)
      {
        v13 = __error();
        archive_set_error(a1, *v13, "Can't set permissions to 0%o", v14, v15, v16, v17, v18, v30);
        return -20;
      }
    }
  }

  else if ((*(a1 + 558) & 0xF000) != 0x4000)
  {
    if ((*(a1 + 516) & 0x80000000) != 0 ? chmod(*(a1 + 440), v30) : fchmod(*(a1 + 516), v30))
    {
      v19 = __error();
      archive_set_error(a1, *v19, "Can't set permissions to 0%o", v20, v21, v22, v23, v24, v30);
      return -20;
    }
  }

  return v29;
}

uint64_t free_decompression(_DWORD *a1, uint64_t a2)
{
  v14 = 0;
  if (*(a2 + 448))
  {
    lzma_end();
  }

  if (*(a2 + 536))
  {
    if (BZ2_bzDecompressEnd((a2 + 456)))
    {
      archive_set_error(a1, -1, "Failed to clean up bzip2 decompressor", v2, v3, v4, v5, v6, v13);
      v14 = -30;
    }

    *(a2 + 536) = 0;
  }

  if (*(a2 + 656))
  {
    if (inflateEnd((a2 + 544)))
    {
      archive_set_error(a1, -1, "Failed to clean up zlib decompressor", v7, v8, v9, v10, v11, v13);
      v14 = -30;
    }

    *(a2 + 656) = 0;
  }

  if (*(a2 + 19976))
  {
    off_1F3DE4D70(a2 + 664);
    *(a2 + 19976) = 0;
  }

  return v14;
}

uint64_t archive_read_format_cab_cleanup(uint64_t a1)
{
  v4 = **(a1 + 2072);
  if (*(v4 + 12))
  {
    for (i = 0; i < v4[40]; ++i)
    {
      free(*(*(v4 + 12) + 96 * i + 56));
    }

    free(*(v4 + 12));
  }

  if (*(v4 + 13))
  {
    for (j = 0; j < v4[41]; ++j)
    {
      archive_string_free(*(v4 + 13) + 48 * j + 24);
    }

    free(*(v4 + 13));
  }

  if (*(v4 + 384))
  {
    inflateEnd((v4 + 136));
  }

  lzx_decode_free((v4 + 196));
  archive_wstring_free((v4 + 60));
  free(*(v4 + 20));
  free(v4);
  **(a1 + 2072) = 0;
  return 0;
}

void lzx_decode_free(uint64_t a1)
{
  if (*(a1 + 48))
  {
    free(*(*(a1 + 48) + 16));
    free(*(*(a1 + 48) + 96));
    lzx_huffman_free(*(a1 + 48) + 120);
    lzx_huffman_free(*(a1 + 48) + 432);
    lzx_huffman_free(*(a1 + 48) + 328);
    lzx_huffman_free(*(a1 + 48) + 224);
    free(*(a1 + 48));
    *(a1 + 48) = 0;
  }
}

uint64_t _archive_write_disk_close(int *a1)
{
  v14 = a1;
  v13 = a1;
  v12 = 0;
  i = 0;
  memset(&__b, 0, sizeof(__b));
  if (__archive_check_magic(v13, -1073631035, 6, "archive_write_disk_close") == -30)
  {
    return -30;
  }

  else
  {
    v7 = _archive_write_disk_finish_entry(v13);
    for (i = sort_dir_list(*(v13 + 19)); i; i = v12)
    {
      v8 = -1;
      *(v13 + 53) = 0;
        ;
      }

      while (1)
      {
        v5 = 0;
        if (j != *(i + 21))
        {
          v5 = *(j - 1) == 47;
        }

        if (!v5)
        {
          break;
        }

        *--j = 0;
      }

      if (*(i + 40))
      {
        v6 = 16777472;
        if (i[33] == 0x4000)
        {
          v6 = 17826048;
        }

        v8 = open(*(i + 21), v6);
        if (v8 != -1 && i[33] == 0x4000 || (v8 <= 0 || !fstat(v8, &__b) && la_verify_filetype(__b.st_mode, i[33])) && !lstat(*(i + 21), &__b) && la_verify_filetype(__b.st_mode, i[33]))
        {
          if ((*(i + 40) & 4) != 0)
          {
            v3 = *(i + 12);
            v4 = *(i + 16);
            set_times(v13, v8, i[32], *(i + 21), *(i + 9), *(i + 13), *(i + 10), *(i + 14), *(i + 11), *(i + 15));
          }

          if ((*(i + 40) & 0x20000000) != 0)
          {
            if (v8 < 0)
            {
              lchmod(*(i + 21), i[32] & 0xFFF);
            }

            else
            {
              fchmod(v8, i[32] & 0xFFF);
            }
          }

          if ((*(i + 40) & 0x20) != 0)
          {
            v1 = i[32];
            archive_write_disk_set_acls(v13, v8, *(i + 21), i + 4);
          }

          if ((*(i + 40) & 0x40) != 0)
          {
            set_fflags_platform(v13, v8, *(i + 21), i[32], *(i + 17), 0);
          }

          if ((*(i + 40) & 0x2000) != 0)
          {
            set_mac_metadata(v13, *(i + 21), *(i + 19), *(i + 18));
          }
        }
      }

      v12 = *i;
      archive_acl_clear((i + 4));
      free(*(i + 19));
      free(*(i + 21));
      if ((v8 & 0x80000000) == 0)
      {
        close(v8);
      }

      free(i);
    }

    *(v13 + 19) = 0;
    return v7;
  }
}

uint64_t free_codes(uint64_t a1)
{
  v2 = **(a1 + 2072);
  free(v2[36]);
  free(v2[41]);
  free(v2[46]);
  free(v2[51]);
  free(v2[40]);
  free(v2[45]);
  free(v2[50]);
  free(v2[55]);
  __memset_chk();
  __memset_chk();
  __memset_chk();
  return __memset_chk();
}

uint64_t archive_read_format_rar_cleanup(uint64_t a1)
{
  v2 = **(a1 + 2072);
  free_codes(a1);
  clear_filters((v2 + 115));
  free(v2[9]);
  free(v2[10]);
  free(v2[32]);
  free(v2[28]);
  free(v2[107]);
  off_1F3DE4D70((v2 + 124));
  free(v2);
  **(a1 + 2072) = 0;
  return 0;
}

void **sort_dir_list(void **a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return a1;
  }

  v3 = a1;
  v7 = **a1;
  while (v7)
  {
    v7 = *v7;
    if (v7)
    {
      v7 = *v7;
    }

    v3 = *v3;
  }

  v5 = *v3;
  *v3 = 0;
  v8 = sort_dir_list(a1);
  v6 = sort_dir_list(v5);
  if (strcmp(*(v8 + 168), *(v6 + 168)) <= 0)
  {
    v9 = v6;
    v4 = v6;
    v6 = *v6;
  }

  else
  {
    v9 = v8;
    v4 = v8;
    v8 = *v8;
  }

  while (1)
  {
    v2 = 0;
    if (v8)
    {
      v2 = v6 != 0;
    }

    if (!v2)
    {
      break;
    }

    if (strcmp(*(v8 + 168), *(v6 + 168)) <= 0)
    {
      *v4 = v6;
      v6 = *v6;
    }

    else
    {
      *v4 = v8;
      v8 = *v8;
    }

    v4 = *v4;
  }

  if (v8)
  {
    *v4 = v8;
  }

  if (v6)
  {
    *v4 = v6;
  }

  return v9;
}

void clear_filters(uint64_t a1)
{
  delete_filter(*(a1 + 16));
  delete_program_code(*(a1 + 8));
  free(*a1);
}

void delete_filter(uint64_t a1)
{
  while (a1)
  {
    v1 = *(a1 + 80);
    free(*(a1 + 40));
    free(a1);
    a1 = v1;
  }
}

uint64_t _archive_write_disk_free(uint64_t a1)
{
  if (a1)
  {
    if (__archive_check_magic(a1, -1073631035, 0xFFFF, "archive_write_disk_free") == -30)
    {
      return -30;
    }

    else
    {
      v8 = _archive_write_disk_close(a1);
      archive_write_disk_set_group_lookup(a1, 0, 0, 0);
      archive_write_disk_set_user_lookup(a1, 0, 0, 0);
      archive_entry_free(*(a1 + 432));
      archive_string_free(a1 + 448);
      archive_string_free(a1 + 480);
      archive_string_free(a1 + 48);
      archive_string_free(a1 + 256);
      *a1 = 0;
      __archive_clean(a1);
      free(*(a1 + 584));
      free(*(a1 + 600));
      free(*(a1 + 632));
      free(*(a1 + 664));
      if (*(a1 + 800) && deflateEnd((a1 + 688)))
      {
        archive_set_error(a1, -1, "Failed to clean up compressor", v1, v2, v3, v4, v5, v7);
        v8 = -30;
      }

      free(a1);
      return v8;
    }
  }

  else
  {
    return 0;
  }
}

void delete_program_code(uint64_t a1)
{
  while (a1)
  {
    v1 = *(a1 + 48);
    free(*a1);
    free(*(a1 + 16));
    free(a1);
    a1 = v1;
  }
}

void Ppmd7_Free(uint64_t a1)
{
  free(*(a1 + 64));
  *(a1 + 52) = 0;
  *(a1 + 64) = 0;
}

uint64_t rar5_cleanup(uint64_t a1)
{
  context = get_context(a1);
  free(context[10]);
  free(context[11]);
  clear_data_ready_stack();
  free(context[2660]);
  free_filters(context);
  cdeque_free((context + 2407));
  free(context);
  **(a1 + 2072) = 0;
  return 0;
}

void archive_string_conversion_free(uint64_t a1)
{
  for (i = *(a1 + 88); i; i = v1)
  {
    v1 = *i;
    free_sconv_object(i);
  }

  *(a1 + 88) = 0;
  free(*(a1 + 72));
  *(a1 + 72) = 0;
}

_WORD *free_filters(uint64_t a1)
{
  v3 = (a1 + 19256);
  while (cdeque_size(v3))
  {
    cdeque_filter_p();
    if (!cdeque_pop_front(v3, v1))
    {
      free(0);
    }
  }

  result = cdeque_clear(v3);
  *(a1 + 19272) = 0;
  *(a1 + 19280) = 0;
  return result;
}

void cdeque_free(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      free(*(a1 + 8));
      *(a1 + 8) = 0;
      *a1 = -1;
      *(a1 + 2) = -1;
      *(a1 + 4) = 0;
    }
  }
}

uint64_t archive_read_format_iso9660_cleanup(uint64_t a1)
{
  v8 = 0;
  v9 = **(a1 + 2072);
  release_files(v9);
  free(*(v9 + 7));
  archive_string_free((v9 + 16));
  archive_string_free((v9 + 80));
  free(*(v9 + 14));
  free(*(v9 + 32));
  free(*(v9 + 39));
  if (*(v9 + 118) && inflateEnd((v9 + 360)))
  {
    archive_set_error(a1, -1, "Failed to clean up zlib decompressor", v1, v2, v3, v4, v5, v7);
    v8 = -30;
  }

  free(*(v9 + 62));
  free(*(v9 + 64));
  free(v9);
  **(a1 + 2072) = 0;
  return v8;
}

void release_files(uint64_t a1)
{
  for (i = *(a1 + 104); i; i = v1)
  {
    v1 = *i;
    archive_string_free((i + 21));
    archive_string_free((i + 27));
    free(i[24]);
    for (j = i[34]; j; j = v3)
    {
      v3 = j[2];
      free(j);
    }

    free(i);
  }
}

uint64_t _archive_write_disk_data_block(unint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, -1073631035, 4, "archive_write_data_block") == -30)
  {
    return -30;
  }

  *(a1 + 520) = a4;
  if ((*(a1 + 504) & 0x8000) != 0)
  {
    v15 = hfs_write_data_block(a1, a2, a3, v4, v5, v6, v7, v8);
  }

  else
  {
    v15 = write_data_block(a1, a2, a3, v4, v5, v6, v7, v8);
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    return v15;
  }

  if (v15 >= a3)
  {
    return 0;
  }

  archive_set_error(a1, 0, "Too much data: Truncating file at %ju bytes", v9, v10, v11, v12, v13, *(a1 + 544));
  return -20;
}

uint64_t archive_read_format_zip_cleanup(uint64_t a1)
{
  v6 = **(a1 + 2072);
  if (*(v6 + 320))
  {
    inflateEnd((v6 + 208));
  }

  if (*(v6 + 464))
  {
    lzma_end();
  }

  if (*(v6 + 552))
  {
    BZ2_bzDecompressEnd((v6 + 472));
  }

  free(*(v6 + 192));
  if (*(v6 + 7976))
  {
    off_1F3DE4D40(v6 + 584);
  }

  if (*(v6 + 64))
  {
    for (i = *(v6 + 64); i; i = v4)
    {
      v4 = i[3];
      archive_string_free((i + 9));
      free(i);
    }
  }

  if (*(v6 + 72))
  {
    for (j = *(v6 + 72); j; j = v2)
    {
      v2 = j[3];
      free(j);
    }
  }

  free(*(v6 + 8024));
  if (*(v6 + 8160))
  {
    off_1F3DE4E88(v6 + 8080);
  }

  if (*(v6 + 8548))
  {
    off_1F3DE4DD8();
  }

  free(*(v6 + 8584));
  free(*(v6 + 8592));
  free(*(v6 + 8600));
  archive_string_free(v6);
  free(v6);
  **(a1 + 2072) = 0;
  return 0;
}

void __archive_read_free_filters(uint64_t a1)
{
  close_filters(a1);
  while (*(a1 + 632))
  {
    v1 = *(*(a1 + 632) + 16);
    free(*(a1 + 632));
    *(a1 + 632) = v1;
  }
}

uint64_t archive_write_data_block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1 + 8) + 40))
  {
    return (*(*(a1 + 8) + 40))(a1, a2, a3, a4);
  }

  archive_set_error(a1, -1, "archive_write_data_block not supported", a4, a5, a6, a7, a8, v9);
  *(a1 + 4) = 0x8000;
  return -30;
}

uint64_t write_data_block(unint64_t a1, _BYTE *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a3;
  v28 = a3;
  v26 = 0;
  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 544) && (*(a1 + 516) & 0x80000000) == 0)
  {
    if ((*(a1 + 512) & 0x1000) != 0)
    {
      v24 = lazy_stat(a1);
      if (v24)
      {
        return v24;
      }

      v26 = *(*(a1 + 424) + 112);
    }

    if ((*(a1 + 544) & 0x8000000000000000) == 0 && (*(a1 + 520) + v29) > *(a1 + 544))
    {
      v29 = *(a1 + 544) - *(a1 + 520);
      v28 = v29;
    }

    while (v29)
    {
      if (v26)
      {
          ;
        }

        *(a1 + 520) += i - a2;
        v29 -= i - a2;
        a2 = i;
        if (!v29)
        {
          return v28 - v29;
        }

        v22 = (*(a1 + 520) / v26 + 1) * v26;
        __nbyte = v29;
        if ((*(a1 + 520) + v29) > v22)
        {
          __nbyte = v22 - *(a1 + 520);
        }
      }

      else
      {
        __nbyte = v29;
      }

      if (*(a1 + 520) != *(a1 + 528))
      {
        if (lseek(*(a1 + 516), *(a1 + 520), 0) < 0)
        {
          v8 = __error();
          archive_set_error(a1, *v8, "Seek failed", v9, v10, v11, v12, v13, v21);
          return -30;
        }

        *(a1 + 528) = *(a1 + 520);
      }

      v27 = write(*(a1 + 516), a2, __nbyte);
      if (v27 < 0)
      {
        v14 = __error();
        archive_set_error(a1, *v14, "Write failed", v15, v16, v17, v18, v19, a1);
        return -20;
      }

      a2 += v27;
      v29 -= v27;
      *(a1 + 536) += v27;
      *(a1 + 520) += v27;
      *(a1 + 528) = *(a1 + 520);
    }

    return v28 - v29;
  }

  else
  {
    archive_set_error(a1, 0, "Attempt to write to an empty file", a4, a5, a6, a7, a8, v21);
    return -20;
  }
}

void free_sconv_object(uint64_t a1)
{
  free(*(a1 + 8));
  free(*(a1 + 16));
  archive_string_free(a1 + 56);
  if (*(a1 + 40) != -1)
  {
    MEMORY[0x1BFB558B0](*(a1 + 40));
  }

  if (*(a1 + 48) != -1)
  {
    MEMORY[0x1BFB558B0](*(a1 + 48));
  }

  free(a1);
}

uint64_t archive_read_open_memory2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = malloc_type_calloc(1uLL, 0x20uLL, 0x10500404B6A7EA7uLL);
  if (v11)
  {
    v11[1] = a2;
    *v11 = a2;
    v11[2] = *v11 + a3;
    v11[3] = a4;
    archive_read_set_open_callback(a1, memory_read_open);
    archive_read_set_read_callback(a1, memory_read);
    archive_read_set_seek_callback(a1, memory_read_seek);
    archive_read_set_skip_callback(a1, memory_read_skip);
    archive_read_set_close_callback(a1, memory_read_close);
    archive_read_set_callback_data(a1, v11);
    return archive_read_open1(a1);
  }

  else
  {
    archive_set_error(a1, 12, "No memory", v4, v5, v6, v7, v8, v10);
    return -30;
  }
}

uint64_t archive_read_set_seek_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_seek_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 200) = a2;
    return 0;
  }
}

uint64_t archive_read_set_skip_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_skip_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 192) = a2;
    return 0;
  }
}

uint64_t memory_read(uint64_t a1, void *a2, void *a3)
{
  *a3 = a2[1];
  v4 = a2[2] - a2[1];
  if (v4 > a2[3])
  {
    v4 = a2[3];
  }

  a2[1] += v4;
  return v4;
}

uint64_t archive_entry_pathname_utf8(_DWORD **a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_utf8(*a1, (a1 + 62), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_mstring_get_utf8(_DWORD *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  if ((*(a2 + 96) & 2) != 0)
  {
    *v7 = *(v8 + 24);
    return 0;
  }

  else
  {
    *v7 = 0;
    if ((*(v8 + 96) & 1) == 0)
    {
      v4 = 0;
      archive_mstring_get_mbs(v9, v8, &v4);
    }

    if (*(v8 + 96))
    {
      v6 = archive_string_conversion_to_charset(v9, "UTF-8", 1);
      if (v6)
      {
        v5 = archive_strncpy_l((v8 + 24), *v8, *(v8 + 8), v6);
        if (!v9)
        {
          free_sconv_object(v6);
        }

        if (v5)
        {
          return -1;
        }

        else
        {
          *(v8 + 96) |= 2u;
          *v7 = *(v8 + 24);
          return 0;
        }
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t **archive_string_conversion_to_charset(_DWORD *a1, const char *a2, int a3)
{
  v5 = 1;
  if (a3)
  {
    v5 = 5;
  }

  current_charset = get_current_charset(a1);
  return get_sconv_object(a1, current_charset, a2, v5);
}

uint64_t strncat_from_utf8_to_utf8(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (archive_string_ensure(a1, a1[1] + a3 + 1))
  {
    v12 = v15;
    v11 = (*v16 + v16[1]);
    v10 = (*v16 + v16[2] - 1);
    do
    {
      v7 = 0;
      v6 = v12;
      while (1)
      {
        v9 = utf8_to_unicode(&v7, v12, v14);
        if (v9 <= 0)
        {
          break;
        }

        v12 += v9;
        v14 -= v9;
      }

      if (v6 < v12)
      {
        if (&v11[v12 - v6] > v10)
        {
          v16[1] = &v11[-*v16];
          if (!archive_string_ensure(v16, &v12[v16[2]] - v6 + 1))
          {
            return -1;
          }

          v11 = (*v16 + v16[1]);
          v10 = (*v16 + v16[2] - 1);
        }

        __memcpy_chk();
        v11 += v12 - v6;
      }

      if (v9 < 0)
      {
        if (v9 == -3 && v7 >= 0xD800 && v7 < 0xE000)
        {
          v9 = cesu8_to_unicode(&v7, v12, v14);
        }

        if (v9 < 0)
        {
          v8 = -1;
          v9 = -v9;
        }

        while (1)
        {
          v5 = unicode_to_utf8(v11, v10 - v11, v7);
          if (v5)
          {
            break;
          }

          v16[1] = &v11[-*v16];
          if (!archive_string_ensure(v16, v16[2] + v14 + 1))
          {
            return -1;
          }

          v11 = (*v16 + v16[1]);
          v10 = (*v16 + v16[2] - 1);
        }

        v11 += v5;
        v12 += v9;
        v14 -= v9;
      }
    }

    while (v9 > 0);
    v16[1] = &v11[-*v16];
    *(*v16 + v16[1]) = 0;
    return v8;
  }

  else
  {
    return -1;
  }
}

uint64_t utf8_to_unicode(_DWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = _utf8_to_unicode(a1, a2, a3);
  if (v4 == 3 && *a1 >= 0xD800u && *a1 < 0xE000u)
  {
    return -3;
  }

  else
  {
    return v4;
  }
}

uint64_t _utf8_to_unicode(_DWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v8 = *a2;
    if (!*a2)
    {
      return 0;
    }

    v5 = _utf8_to_unicode_utf8_count[*a2];
    if (a3 < v5)
    {
      v5 = a3;
      for (i = 1; i < a3; ++i)
      {
        if ((a2[i] & 0xC0) != 0x80)
        {
          v5 = i;
          goto LABEL_58;
        }
      }

      goto LABEL_58;
    }

    if (v5 == 1)
    {
      *a1 = v8 & 0x7F;
      return 1;
    }

    if (v5 == 2)
    {
      if ((a2[1] & 0xC0) == 0x80)
      {
        *a1 = a2[1] & 0x3F | ((v8 & 0x1F) << 6);
        return v5;
      }

      v5 = 1;
    }

    else
    {
      if (v5 == 3)
      {
        if ((a2[1] & 0xC0) != 0x80)
        {
          v5 = 1;
          goto LABEL_58;
        }

        if ((a2[2] & 0xC0) != 0x80)
        {
          v5 = 2;
          goto LABEL_58;
        }

        v4 = ((a2[1] & 0x3F) << 6) | ((v8 & 0xF) << 12) | a2[2] & 0x3F;
        if (v4 < 0x800)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v5 != 4)
        {
          if (v8 == 192 || v8 == 193)
          {
            v5 = 2;
          }

          else if (*a2 < 0xF5u || *a2 > 0xF7u)
          {
            if (*a2 < 0xF8u || *a2 > 0xFBu)
            {
              if (v8 == 252 || v8 == 253)
              {
                v5 = 6;
              }

              else
              {
                v5 = 1;
              }
            }

            else
            {
              v5 = 5;
            }
          }

          else
          {
            v5 = 4;
          }

          if (a3 < v5)
          {
            v5 = a3;
          }

          for (j = 1; j < v5; ++j)
          {
            if ((a2[j] & 0xC0) != 0x80)
            {
              v5 = j;
              goto LABEL_58;
            }
          }

          goto LABEL_58;
        }

        if ((a2[1] & 0xC0) != 0x80)
        {
          v5 = 1;
          goto LABEL_58;
        }

        if ((a2[2] & 0xC0) != 0x80)
        {
          v5 = 2;
          goto LABEL_58;
        }

        if ((a2[3] & 0xC0) != 0x80)
        {
          v5 = 3;
          goto LABEL_58;
        }

        v4 = ((a2[1] & 0x3F) << 12) | ((v8 & 7) << 18) | ((a2[2] & 0x3F) << 6) | a2[3] & 0x3F;
        if (v4 < 0x10000)
        {
          goto LABEL_58;
        }
      }

      if (v4 < 0x110000)
      {
        *a1 = v4;
        return v5;
      }
    }

LABEL_58:
    *a1 = 65533;
    return -v5;
  }

  return 0;
}