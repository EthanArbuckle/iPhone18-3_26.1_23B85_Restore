uint64_t *shar_quote(uint64_t *result, char *a2, int a3)
{
  v6 = result;
  while (*a2)
  {
    if (v3)
    {
      result = archive_strncat(v6, a2, v3);
      a2 += v3;
    }

    else if (*a2 == 10)
    {
      if (a3)
      {
        result = archive_strcat(v6, "\n");
      }

      else
      {
        result = archive_strcat(v6, "\\n");
      }

      ++a2;
    }

    else
    {
      archive_strappend_char(v6, 92);
      result = archive_strappend_char(v6, *a2++);
    }
  }

  return result;
}

uint64_t _uuencode_line(_DWORD *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = 0;
  v17 = 0;
  v17 = *(a2 + 104) + 62;
  if (archive_string_ensure(a2 + 96, v17))
  {
    v18 = (*(v21 + 96) + *(v21 + 104));
    if (v19)
    {
      v13 = (v19 & 0x3F) + 32;
    }

    else
    {
      v13 = 96;
    }

    v9 = v18++;
    *v9 = v13;
    while (v19 >= 3)
    {
      uuencode_group(v20, v18);
      v19 -= 3;
      v20 += 3;
      v18 += 4;
    }

    if (v19)
    {
      v14 = *v20;
      if (v19 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = v20[1];
      }

      v16 = 0;
      uuencode_group(&v14, v18);
      v18 += 4;
    }

    v10 = v18++;
    *v10 = 10;
    if (&v18[-*(v21 + 96)] <= *(v21 + 104) + 62)
    {
      *(v21 + 104) = &v18[-*(v21 + 96)];
      return 0;
    }

    else
    {
      archive_set_error(v22, -1, "Buffer overflow", v4, v5, v6, v7, v8, v12);
      return -30;
    }
  }

  else
  {
    archive_set_error(v22, 12, "Out of memory", v4, v5, v6, v7, v8, v12);
    return -30;
  }
}

unsigned __int8 *uuencode_group(unsigned __int8 *result, _BYTE *a2)
{
  v6 = (result[1] << 8) | (*result << 16) | result[2];
  if (((v6 >> 18) & 0x3F) != 0)
  {
    v5 = ((v6 >> 18) & 0x3F) + 32;
  }

  else
  {
    LOBYTE(v5) = 96;
  }

  *a2 = v5;
  if (((v6 >> 12) & 0x3F) != 0)
  {
    v4 = ((v6 >> 12) & 0x3F) + 32;
  }

  else
  {
    LOBYTE(v4) = 96;
  }

  a2[1] = v4;
  if (((v6 >> 6) & 0x3F) != 0)
  {
    v3 = ((v6 >> 6) & 0x3F) + 32;
  }

  else
  {
    LOBYTE(v3) = 96;
  }

  a2[2] = v3;
  if ((v6 & 0x3F) != 0)
  {
    v2 = (v6 & 0x3F) + 32;
  }

  else
  {
    v2 = 96;
  }

  a2[3] = v2;
  return result;
}

uint64_t archive_read_support_filter_gzip(int *a1)
{
  if (archive_allow_entitlement_filter("gzip"))
  {
    if (__archive_read_register_bidder(a1, 0, "gzip", gzip_bidder_vtable))
    {
      return -30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t gzip_bidder_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  if (peek_at_header(a2, &v9, 0, a4, a5, a6, a7, a8))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t gzip_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 1;
  *(a1 + 48) = "gzip";
  v8 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10B0040B7F5C59DuLL);
  v7 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  if (v8 && v7)
  {
    *(a1 + 40) = v8;
    v8[16] = 0x10000;
    v8[15] = v7;
    *(a1 + 32) = gzip_reader_vtable;
    *(v8 + 112) = 0;
    return 0;
  }

  else
  {
    free(v7);
    free(v8);
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for gzip decompression", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

size_t peek_at_header(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  __s1 = 0;
  v19 = 0;
  v18 = 10;
  __s1 = __archive_read_filter_ahead(a1, 0xAuLL, &v19, a4, a5, a6, a7, a8);
  if (!__s1 || !v19)
  {
    return 0;
  }

  if (memcmp(__s1, "\x1F\x8B\b", 3uLL))
  {
    return 0;
  }

  if ((*(__s1 + 3) & 0xE0) != 0)
  {
    return 0;
  }

  v17 = *(__s1 + 3);
  if (v21)
  {
    v13 = archive_le32dec_9(__s1 + 4);
    *(v21 + 152) = v13;
  }

  if ((v17 & 4) != 0)
  {
    __s1 = __archive_read_filter_ahead(v23, 0xCuLL, &v19, v8, v9, v10, v11, v12);
    if (!__s1)
    {
      return 0;
    }

    v18 = (*(__s1 + 10) | (*(__s1 + 11) << 8)) + 12;
  }

  if ((v17 & 8) != 0)
  {
    v16 = v18;
    do
    {
      if (v19 < ++v18)
      {
        __s1 = __archive_read_filter_ahead(v23, v18, &v19, v8, v9, v10, v11, v12);
      }

      if (!__s1)
      {
        return 0;
      }
    }

    while (*(__s1 + v18 - 1));
    if (v21)
    {
      free(*(v21 + 160));
      v14 = strdup(__s1 + v16);
      *(v21 + 160) = v14;
    }
  }

  if ((v17 & 0x10) != 0)
  {
    while (1)
    {
      if (v19 < ++v18)
      {
        __s1 = __archive_read_filter_ahead(v23, v18, &v19, v8, v9, v10, v11, v12);
      }

      if (!__s1)
      {
        return 0;
      }

      if (!*(__s1 + v18 - 1))
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    if ((v17 & 2) != 0)
    {
      __s1 = __archive_read_filter_ahead(v23, v18 + 2, &v19, v8, v9, v10, v11, v12);
      if (!__s1)
      {
        return 0;
      }

      v18 += 2;
    }

    if (v22)
    {
      *v22 = 27;
    }

    return v18;
  }
}

uint64_t gzip_filter_read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a1;
  v29 = a2;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v28 = *(a1 + 40);
  v28->next_out = *&v28[1].avail_in;
  v28->avail_out = v28[1].total_in;
  while (1)
  {
    v22 = 0;
    if (v28->avail_out)
    {
      v22 = LOBYTE(v28[1].state) == 0;
    }

    if (!v22)
    {
      break;
    }

    if (!LOBYTE(v28[1].next_in))
    {
      v23 = consume_header(v30, a2, a3, a4, a5, a6, a7, a8);
      if (v23 == 1)
      {
        LOBYTE(v28[1].state) = 1;
        break;
      }

      if (v23 < 0)
      {
        return v23;
      }
    }

    v8 = __archive_read_filter_ahead(*(v30 + 16), 1uLL, &v26, a4, a5, a6, a7, a8);
    v28->next_in = v8;
    if (!v28->next_in)
    {
      archive_set_error(*(v30 + 24), -1, "truncated gzip input", v9, v10, v11, v12, v13, v20);
      return -30;
    }

    if (v26 < 0)
    {
      return -30;
    }

    if (v26 > 0xFFFFFFFFLL)
    {
      v26 = 0xFFFFFFFFLL;
    }

    v28->avail_in = v26;
    v24 = inflate(v28, 0);
    if (v24)
    {
      if (v24 != 1)
      {
        msg = v28->msg;
        archive_set_error(*(v30 + 24), -1, "gzip decompression failed (zlib returned error %d, msg %s)", v14, v15, v16, v17, v18, v24);
        return -30;
      }

      __archive_read_filter_consume(*(v30 + 16), v26 - v28->avail_in);
      v25 = consume_trailer(v30);
      if (v25 < 0)
      {
        return v25;
      }
    }

    else
    {
      __archive_read_filter_consume(*(v30 + 16), v26 - v28->avail_in);
    }
  }

  v27 = &v28->next_out[-*&v28[1].avail_in];
  v28[1].next_out += v27;
  if (v27)
  {
    *v29 = *&v28[1].avail_in;
  }

  else
  {
    *v29 = 0;
  }

  return v27;
}

uint64_t gzip_filter_close(uint64_t a1)
{
  strm = *(a1 + 40);
  v8 = 0;
  if (LOBYTE(strm[1].next_in) && inflateEnd(strm))
  {
    archive_set_error(*(a1 + 24), -1, "Failed to clean up gzip compressor", v1, v2, v3, v4, v5, v7);
    v8 = -30;
  }

  free(strm[1].msg);
  free(*&strm[1].avail_in);
  free(strm);
  return v8;
}

uint64_t gzip_read_header(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 152))
  {
    archive_entry_set_mtime(a2, *(v3 + 152), 0);
  }

  if (*(v3 + 160))
  {
    archive_entry_set_pathname(a2, *(v3 + 160));
  }

  return 0;
}

uint64_t consume_header(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a1;
  v24 = 0;
  v23 = 0;
  v24 = *(a1 + 40);
  v22 = peek_at_header(*(a1 + 16), 0, v24, a4, a5, a6, a7, a8);
  if (v22)
  {
    __archive_read_filter_consume(*(v25 + 16), v22);
    *&v24[1].avail_out = crc32(0, 0, 0);
    v13 = __archive_read_filter_ahead(*(v25 + 16), 1uLL, &v23, v8, v9, v10, v11, v12);
    v24->next_in = v13;
    v24->avail_in = v23;
    v21 = inflateInit2_(v24, -15, "1.2.12", 112);
    switch(v21)
    {
      case 0xFFFFFFFA:
        archive_set_error(*(v25 + 24), -1, "Internal error initializing compression library: invalid library version", v14, v15, v16, v17, v18, v20);
        break;
      case 0xFFFFFFFC:
        archive_set_error(*(v25 + 24), 12, "Internal error initializing compression library: out of memory", v14, v15, v16, v17, v18, v20);
        break;
      case 0xFFFFFFFE:
        archive_set_error(*(v25 + 24), -1, "Internal error initializing compression library: invalid setup parameter", v14, v15, v16, v17, v18, v20);
        break;
      case 0u:
        LOBYTE(v24[1].next_in) = 1;
        return 0;
      default:
        archive_set_error(*(v25 + 24), -1, "Internal error initializing compression library:  Zlib error %d", v14, v15, v16, v17, v18, v21);
        break;
    }

    return -30;
  }

  return 1;
}

uint64_t consume_trailer(uint64_t a1)
{
  v12 = a1;
  strm = 0;
  v10 = 0;
  v9 = 0;
  strm = *(a1 + 40);
  LOBYTE(strm[1].next_in) = 0;
  if (inflateEnd(strm))
  {
    archive_set_error(*(v12 + 24), -1, "Failed to clean up gzip decompressor", v1, v2, v3, v4, v5, v8);
    return -30;
  }

  else
  {
    v6 = __archive_read_filter_ahead(*(v12 + 16), 8uLL, &v9, v1, v2, v3, v4, v5);
    v10 = v6;
    if (v6 && v9)
    {
      __archive_read_filter_consume(*(v12 + 16), 8uLL);
      return 0;
    }

    else
    {
      return -30;
    }
  }
}

uint64_t archive_write_set_format_ustar(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_ustar") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200404DE2C876uLL);
    if (v8)
    {
      *(a1 + 248) = v8;
      *(a1 + 256) = "ustar";
      *(a1 + 272) = archive_write_ustar_options;
      *(a1 + 288) = archive_write_ustar_header;
      *(a1 + 296) = archive_write_ustar_data;
      *(a1 + 304) = archive_write_ustar_close;
      *(a1 + 312) = archive_write_ustar_free;
      *(a1 + 280) = archive_write_ustar_finish_entry;
      *(a1 + 16) = 196609;
      *(a1 + 24) = "POSIX ustar";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate ustar data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_write_ustar_options(uint64_t a1, const char *a2, const char *a3)
{
  v10 = *(a1 + 248);
  v9 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v10 + 16) = archive_string_conversion_to_charset(a1, a3, 0);
      if (*(v10 + 16))
      {
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "%s: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, *(a1 + 256));
    }

    return v9;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_ustar_header(uint64_t a1, _DWORD *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v22 = *(a1 + 248);
  if (*(v22 + 16))
  {
    v20 = *(v22 + 16);
  }

  else
  {
    if (!*(v22 + 32))
    {
      *(v22 + 24) = archive_string_default_conversion_for_write();
      *(v22 + 32) = 1;
    }

    v20 = *(v22 + 24);
  }

  if (archive_entry_pathname(v25))
  {
    if (archive_entry_hardlink(v25) || archive_entry_symlink(v25) || archive_entry_filetype(v25) != 0x8000)
    {
      archive_entry_set_size(v25, 0);
    }

    if (archive_entry_filetype(v25) == 0x4000)
    {
      v18 = 0;
      __s = archive_entry_pathname(v25);
      if (__s)
      {
        if (*__s && __s[strlen(__s) - 1] != 47)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = strlen(__s);
          if (!archive_string_ensure(&v15, v18 + 2))
          {
            archive_set_error(v26, 12, "Can't allocate ustar data", v7, v8, v9, v10, v11, v14);
            archive_string_free(&v15);
            v27 = -30;
            goto LABEL_26;
          }

          v16 = 0;
          archive_strncat(&v15, __s, v18);
          archive_strappend_char(&v15, 47);
          archive_entry_copy_pathname(v25, v15);
          archive_string_free(&v15);
        }
      }
    }

    v21 = 0;
    v24 = __archive_write_format_header_ustar(v26, v28, v25, -1, 1, v20);
    if (v24 >= -20)
    {
      v23 = __archive_write_output(v26, v28, 512);
      if (v23 >= -20)
      {
        if (v23 < v24)
        {
          v24 = v23;
        }

        v12 = archive_entry_size(v25);
        *v22 = v12;
        *(v22 + 8) = -*v22 & 0x1FFLL;
        archive_entry_free(v21);
        v27 = v24;
      }

      else
      {
        archive_entry_free(v21);
        v27 = v23;
      }
    }

    else
    {
      archive_entry_free(v21);
      v27 = v24;
    }
  }

  else
  {
    archive_set_error(v26, -1, "Can't record entry in tar file without pathname", v2, v3, v4, v5, v6, v14);
    v27 = -25;
  }

LABEL_26:
  *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t archive_write_ustar_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *v5)
  {
    v6 = *v5;
  }

  v4 = __archive_write_output(a1, a2, v6);
  *v5 -= v6;
  if (v4)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t archive_write_ustar_free(uint64_t a1)
{
  free(*(a1 + 248));
  *(a1 + 248) = 0;
  return 0;
}

uint64_t archive_write_ustar_finish_entry(uint64_t a1)
{
  v2 = *(a1 + 248);
  LODWORD(result) = __archive_write_nulls(a1, *v2 + v2[1]);
  v2[1] = 0;
  *v2 = 0;
  return result;
}

uint64_t __archive_write_format_header_ustar(_DWORD *a1, _BYTE *a2, _DWORD *a3, int a4, int a5, uint64_t a6)
{
  v139 = a1;
  v138 = a2;
  v137 = a3;
  v136 = a4;
  v135 = a5;
  v134 = a6;
  v133 = 0;
  i = 0;
  v131 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v130 = 0;
  v126 = -1;
  __memcpy_chk();
  v131 = _archive_entry_pathname_l(v137, &v127, &v129, v134);
  if (v131)
  {
    if (*__error() == 12)
    {
      archive_set_error(v139, 12, "Can't allocate memory for Pathname", v6, v7, v8, v9, v10, v114);
      return -30;
    }

    v125 = v139;
    v124 = v127;
    archive_string_conversion_charset_name(v134);
    archive_set_error(v125, 79, "Can't translate pathname '%s' to %s", v11, v12, v13, v14, v15, v124);
    v130 = -20;
  }

  if (v129 > 0x64)
  {
    v128 = strchr(&v127[v129 - 101], 47);
    if (v128 == v127)
    {
      v128 = strchr(v128 + 1, 47);
    }

    if (v128 && v128[1] && v128 <= v127 + 155)
    {
      __memcpy_chk();
      __memcpy_chk();
    }

    else
    {
      archive_set_error(v139, 63, "Pathname too long", v16, v17, v18, v19, v20, v114);
      v130 = -25;
    }
  }

  else
  {
    __memcpy_chk();
  }

  v131 = _archive_entry_hardlink_l(v137, &v128, &v129, v134);
  if (v131)
  {
    if (*__error() == 12)
    {
LABEL_17:
      archive_set_error(v139, 12, "Can't allocate memory for Linkname", v26, v27, v28, v29, v30, v114);
      return -30;
    }

    v123 = v139;
    v122 = v128;
    archive_string_conversion_charset_name(v134);
    archive_set_error(v123, 79, "Can't translate linkname '%s' to %s", v31, v32, v33, v34, v35, v122);
    v130 = -20;
  }

  if (v129)
  {
    v126 = 49;
  }

  else
  {
    v131 = _archive_entry_symlink_l(v137, &v128, &v129, v134);
    if (v131)
    {
      if (*__error() == 12)
      {
        goto LABEL_17;
      }

      v121 = v139;
      v120 = v128;
      archive_string_conversion_charset_name(v134);
      archive_set_error(v121, 79, "Can't translate linkname '%s' to %s", v36, v37, v38, v39, v40, v120);
      v130 = -20;
    }
  }

  if (v129)
  {
    if (v129 > 0x64)
    {
      archive_set_error(v139, 63, "Link contents too long", v21, v22, v23, v24, v25, v114);
      v130 = -25;
      v129 = 100;
    }

    __memcpy_chk();
  }

  v131 = _archive_entry_uname_l(v137, &v128, &v129, v134);
  if (v131)
  {
    if (*__error() == 12)
    {
      archive_set_error(v139, 12, "Can't allocate memory for Uname", v46, v47, v48, v49, v50, v114);
      return -30;
    }

    v119 = v139;
    v118 = v128;
    archive_string_conversion_charset_name(v134);
    archive_set_error(v119, 79, "Can't translate uname '%s' to %s", v51, v52, v53, v54, v55, v118);
    v130 = -20;
  }

  if (v129)
  {
    if (v129 > 0x20)
    {
      if (v136 != 120)
      {
        archive_set_error(v139, -1, "Username too long", v41, v42, v43, v44, v45, v114);
        v130 = -25;
      }

      v129 = 32;
    }

    __memcpy_chk();
  }

  v131 = _archive_entry_gname_l(v137, &v128, &v129, v134);
  if (v131)
  {
    if (*__error() == 12)
    {
      archive_set_error(v139, 12, "Can't allocate memory for Gname", v56, v57, v58, v59, v60, v114);
      return -30;
    }

    v117 = v139;
    v116 = v128;
    archive_string_conversion_charset_name(v134);
    archive_set_error(v117, 79, "Can't translate gname '%s' to %s", v61, v62, v63, v64, v65, v116);
    v130 = -20;
  }

  if (v129)
  {
    if (strlen(v128) > 0x20)
    {
      if (v136 != 120)
      {
        archive_set_error(v139, -1, "Group name too long", v66, v67, v68, v69, v70, v114);
        v130 = -25;
      }

      v129 = 32;
    }

    __memcpy_chk();
  }

  v71 = archive_entry_mode(v137);
  if (format_number_0(v71 & 0xFFF, v138 + 100, 6, 8, v135))
  {
    archive_set_error(v139, 34, "Numeric mode too large", v72, v73, v74, v75, v76, v114);
    v130 = -25;
  }

  v77 = archive_entry_uid(v137);
  if (format_number_0(v77, v138 + 108, 6, 8, v135))
  {
    archive_set_error(v139, 34, "Numeric user ID too large", v78, v79, v80, v81, v82, v114);
    v130 = -25;
  }

  v83 = archive_entry_gid(v137);
  if (format_number_0(v83, v138 + 116, 6, 8, v135))
  {
    archive_set_error(v139, 34, "Numeric group ID too large", v84, v85, v86, v87, v88, v114);
    v130 = -25;
  }

  v89 = archive_entry_size(v137);
  if (format_number_0(v89, v138 + 124, 11, 12, v135))
  {
    archive_set_error(v139, 34, "File size out of range", v90, v91, v92, v93, v94, v114);
    v130 = -25;
  }

  v95 = archive_entry_mtime(v137);
  if (format_number_0(v95, v138 + 136, 11, 11, v135))
  {
    archive_set_error(v139, 34, "File modification time too large", v96, v97, v98, v99, v100, v114);
    v130 = -25;
  }

  if (archive_entry_filetype(v137) == 24576 || archive_entry_filetype(v137) == 0x2000)
  {
    v101 = archive_entry_rdevmajor(v137);
    if (format_number_0(v101, v138 + 329, 6, 8, v135))
    {
      archive_set_error(v139, 34, "Major device number too large", v102, v103, v104, v105, v106, v114);
      v130 = -25;
    }

    v107 = archive_entry_rdevminor(v137);
    if (format_number_0(v107, v138 + 337, 6, 8, v135))
    {
      archive_set_error(v139, 34, "Minor device number too large", v108, v109, v110, v111, v112, v114);
      v130 = -25;
    }
  }

  if (v136 < 0)
  {
    if (v126 < 0)
    {
      v115 = archive_entry_filetype(v137);
      switch(v115)
      {
        case 4096:
          v138[156] = 54;
          break;
        case 8192:
          v138[156] = 51;
          break;
        case 16384:
          v138[156] = 53;
          break;
        case 24576:
          v138[156] = 52;
          break;
        case 32768:
          v138[156] = 48;
          break;
        case 40960:
          v138[156] = 50;
          break;
        default:
          __archive_write_entry_filetype_unsupported(v139, v137);
          v130 = -25;
          break;
      }
    }

    else
    {
      v138[156] = v126;
    }
  }

  else
  {
    v138[156] = v136;
  }

  v133 = 0;
  for (i = 0; i < 512; ++i)
  {
    v133 += v138[i];
  }

  v138[154] = 0;
  format_octal_2(v133, v138 + 148, 6);
  return v130;
}

uint64_t format_number_0(uint64_t a1, _BYTE *a2, int a3, int a4, int a5)
{
  v7 = a3;
  v6 = 1 << (3 * a3);
  if (a5)
  {
    return format_octal_2(a1, a2, v7);
  }

  else
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      while (v7 <= a4)
      {
        if (a1 < v6)
        {
          return format_octal_2(a1, a2, v7);
        }

        ++v7;
        v6 *= 8;
      }
    }

    return format_256_0(a1, a2, a4);
  }
}

uint64_t format_octal_2(uint64_t a1, _BYTE *a2, int a3)
{
  v13 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a3;
  if (a1 < 0)
  {
    while (1)
    {
      v3 = v9--;
      if (v3 <= 0)
      {
        break;
      }

      v4 = v11++;
      *v4 = 48;
    }

    return -1;
  }

  else
  {
    v12 = &a2[a3];
    while (1)
    {
      v5 = v10--;
      if (v5 <= 0)
      {
        break;
      }

      *--v12 = (v13 & 7) + 48;
      v13 >>= 3;
    }

    if (v13)
    {
      while (1)
      {
        v6 = v9--;
        if (v6 <= 0)
        {
          break;
        }

        v7 = v12++;
        *v7 = 55;
      }

      return -1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t format_256_0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v6 = (a2 + a3);
  while (1)
  {
    v3 = v5--;
    if (v3 <= 0)
    {
      break;
    }

    *--v6 = a1;
    a1 >>= 8;
  }

  *v6 |= 0x80u;
  return 0;
}

uint64_t __archive_read_get_extract(uint64_t a1)
{
  if (*(a1 + 2080))
  {
    return *(a1 + 2080);
  }

  *(a1 + 2080) = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  if (*(a1 + 2080))
  {
    *(a1 + 2088) = archive_read_extract_cleanup;
    return *(a1 + 2080);
  }

  archive_set_error(a1, 12, "Can't extract", v1, v2, v3, v4, v5, v7);
  return 0;
}

uint64_t archive_read_extract_cleanup(uint64_t a1)
{
  v2 = 0;
  if (**(a1 + 2080))
  {
    v2 = archive_write_free(**(a1 + 2080));
  }

  free(*(a1 + 2080));
  *(a1 + 2080) = 0;
  return v2;
}

uint64_t archive_read_extract2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 152))
  {
    archive_write_disk_set_skip_file(a3, *(a1 + 160), *(a1 + 168));
  }

  v5 = archive_write_header(a3, a2);
  if (v5 < -20)
  {
    v5 = -20;
  }

  if (v5)
  {
    archive_copy_error(a1, a3);
  }

  else if (!archive_entry_size_is_set(a2) || archive_entry_size(a2) > 0)
  {
    v5 = copy_data(a1, a3);
  }

  v4 = archive_write_finish_entry(a3);
  if (v4 < -20)
  {
    v4 = -20;
  }

  if (v4 && !v5)
  {
    archive_copy_error(a1, a3);
  }

  if (v4 < v5)
  {
    return v4;
  }

  return v5;
}

uint64_t copy_data(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v21 = a2;
  v20 = 0;
  v19 = 0;
  v17 = 0;
  v18 = __archive_read_get_extract(a1);
  if (v18)
  {
    while (1)
    {
      data_block = archive_read_data_block(v22, &v19, &v17, &v20);
      if (data_block == 1)
      {
        return 0;
      }

      if (data_block)
      {
        return data_block;
      }

      v16 = archive_write_data_block(v21, v19, v17, v20, v2, v3, v4, v5);
      if (v16 < -20)
      {
        v16 = -20;
      }

      if (v16 < 0)
      {
        break;
      }

      if (*(v18 + 8))
      {
        (*(v18 + 8))(*(v18 + 16));
      }
    }

    v14 = v22;
    v13 = archive_errno(v21);
    v6 = archive_error_string(v21);
    archive_set_error(v14, v13, "%s", v7, v8, v9, v10, v11, v6);
    return v16;
  }

  else
  {
    return -30;
  }
}

uint64_t archive_read_extract_set_progress_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __archive_read_get_extract(a1);
  if (result)
  {
    *(result + 8) = a2;
    *(result + 16) = a3;
  }

  return result;
}

uint64_t archive_write_set_format_filter_by_ext(_DWORD *a1, const char *a2)
{
  array_index = get_array_index(a2);
  if (array_index < 0)
  {
    archive_set_error(a1, 22, "No such format '%s'", v2, v3, v4, v5, v6, a2);
    a1[1] = 0x8000;
    return -30;
  }

  else
  {
    v8 = ((&names_0)[3 * array_index + 1])(a1);
    if (v8)
    {
      return v8;
    }

    else
    {
      return ((&names_0)[3 * array_index + 2])(a1);
    }
  }
}

uint64_t get_array_index(const char *a1)
{
  for (i = 0; (&names_0)[3 * i]; ++i)
  {
    if (!cmpsuff(a1, (&names_0)[3 * i]))
    {
      return i;
    }
  }

  return -1;
}

uint64_t archive_write_set_format_filter_by_ext_def(_DWORD *a1, const char *a2, const char *a3)
{
  array_index = get_array_index(a2);
  if (array_index < 0)
  {
    array_index = get_array_index(a3);
  }

  if (array_index < 0)
  {
    archive_set_error(a1, 22, "No such format '%s'", v3, v4, v5, v6, v7, a2);
    a1[1] = 0x8000;
    return -30;
  }

  else
  {
    v9 = ((&names_0)[3 * array_index + 1])(a1);
    if (v9)
    {
      return v9;
    }

    else
    {
      return ((&names_0)[3 * array_index + 2])(a1);
    }
  }
}

uint64_t cmpsuff(const char *a1, const char *a2)
{
  if (a1 && a2)
  {
    v4 = strlen(a1);
    v3 = strlen(a2);
    if (v4 < v3)
    {
      return -1;
    }

    else
    {
      return strcmp(&a1[v4 - v3], a2);
    }
  }

  else
  {
    return -1;
  }
}

uint64_t archive_write_zip_set_compression_deflate(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 7, "archive_write_zip_set_compression_deflate") == -30)
  {
    return -30;
  }

  else if (*(a1 + 16) == 327680)
  {
    *(*(a1 + 248) + 648) = 8;
    return 0;
  }

  else
  {
    archive_set_error(a1, -1, "Can only use archive_write_zip_set_compression_deflate with zip format", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t archive_write_zip_set_compression_store(uint64_t a1)
{
  v9 = *(a1 + 248);
  if (__archive_check_magic(a1, -1329217314, 7, "archive_write_zip_set_compression_deflate") == -30)
  {
    return -30;
  }

  else if (*(a1 + 16) == 327680)
  {
    *(v9 + 648) = 0;
    return 0;
  }

  else
  {
    archive_set_error(a1, -1, "Can only use archive_write_zip_set_compression_store with zip format", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t archive_write_set_format_zip(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_zip") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v12 = malloc_type_calloc(1uLL, 0x320uLL, 0x10B00403725003EuLL);
    if (v12)
    {
      *(v12 + 162) = -1;
      *(v12 + 163) = -1;
      *(v12 + 73) = real_crc32_0;
      *(v12 + 98) = 0x10000;
      *(v12 + 99) = malloc_type_malloc(*(v12 + 98), 0x24B9A1BuLL);
      if (*(v12 + 99))
      {
        *(a1 + 248) = v12;
        *(a1 + 256) = "zip";
        *(a1 + 272) = archive_write_zip_options;
        *(a1 + 288) = archive_write_zip_header;
        *(a1 + 296) = archive_write_zip_data;
        *(a1 + 280) = archive_write_zip_finish_entry;
        *(a1 + 304) = archive_write_zip_close;
        *(a1 + 312) = archive_write_zip_free;
        *(a1 + 16) = 327680;
        *(a1 + 24) = "ZIP";
        return 0;
      }

      else
      {
        free(v12);
        archive_set_error(a1, 12, "Can't allocate compression buffer", v6, v7, v8, v9, v10, real_crc32_0);
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate zip data", v1, v2, v3, v4, v5, real_crc32_0);
      return -30;
    }
  }
}

uint64_t archive_write_zip_options(uint64_t a1, const char *a2, const char *a3)
{
  v26 = *(a1 + 248);
  v25 = -25;
  if (!strcmp(a2, "compression"))
  {
    if (a3 && *a3)
    {
      if (!strcmp(a3, "deflate"))
      {
        *(v26 + 648) = 8;
        return 0;
      }

      else if (!strcmp(a3, "store"))
      {
        *(v26 + 648) = 0;
        return 0;
      }
    }

    else
    {
      archive_set_error(a1, -1, "%s: compression option needs a compression name", v3, v4, v5, v6, v7, *(a1 + 256));
    }

    return v25;
  }

  if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 48 && *a3 <= 57 && !a3[1])
    {
      if (*a3 == 48)
      {
        *(v26 + 648) = 0;
      }

      else
      {
        *(v26 + 648) = 8;
        *(v26 + 652) = *a3 - 48;
      }

      return 0;
    }

    else
    {
      return -20;
    }
  }

  if (!strcmp(a2, "encryption"))
  {
    if (!a3)
    {
      *(v26 + 660) = 0;
      return 0;
    }

    if (*a3 == 49 || !strcmp(a3, "traditional") || !strcmp(a3, "zipcrypt") || !strcmp(a3, "ZipCrypt"))
    {
      if (is_traditional_pkware_encryption_supported())
      {
        *(v26 + 660) = 1;
        return 0;
      }
    }

    else if (!strcmp(a3, "aes128"))
    {
      if (is_winzip_aes_encryption_supported(2))
      {
        *(v26 + 660) = 2;
        return 0;
      }
    }

    else
    {
      if (strcmp(a3, "aes256"))
      {
        archive_set_error(a1, -1, "%s: unknown encryption '%s'", v13, v14, v15, v16, v17, *(a1 + 256));
        return v25;
      }

      if (is_winzip_aes_encryption_supported(3))
      {
        *(v26 + 660) = 3;
        return 0;
      }
    }

    archive_set_error(a1, -1, "encryption not supported", v8, v9, v10, v11, v12, v24);
    return v25;
  }

  if (!strcmp(a2, "experimental"))
  {
    if (a3 && *a3)
    {
      *(v26 + 664) |= 4u;
    }

    else
    {
      *(v26 + 664) &= ~4u;
    }

    return 0;
  }

  else if (!strcmp(a2, "fakecrc32"))
  {
    if (a3 && *a3)
    {
      *(v26 + 584) = fake_crc32_0;
    }

    else
    {
      *(v26 + 584) = real_crc32_0;
    }

    return 0;
  }

  else if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v26 + 632) = archive_string_conversion_to_charset(a1, a3, 0);
      if (*(v26 + 632))
      {
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "%s: hdrcharset option needs a character-set name", v18, v19, v20, v21, v22, *(a1 + 256));
    }

    return v25;
  }

  else if (!strcmp(a2, "zip64"))
  {
    if (a3 && *a3)
    {
      *(v26 + 664) |= 2u;
      *(v26 + 664) &= ~1u;
    }

    else
    {
      *(v26 + 664) &= ~2u;
      *(v26 + 664) |= 1u;
    }

    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_zip_header(uint64_t a1, uint64_t *a2)
{
  v102 = *MEMORY[0x1E69E9840];
  v97 = a1;
  v96 = a2;
  v95 = *(a1 + 248);
  v94 = 0;
  v93 = 0;
  v92 = 0;
  __s = 0;
  v90 = 0;
  sconv_1 = get_sconv_1(a1, v95);
  v88 = 0;
  *&v87[4] = 0;
  v86 = 10;
  *v87 = archive_entry_filetype(v96);
  if (*v87 == 0x8000 || *v87 == 0x4000 || *v87 == 40960)
  {
    if (v95[83])
    {
      if (archive_entry_size_is_set(v96) && archive_entry_size(v96) > 0xFFFFFFFFLL)
      {
        archive_set_error(v97, -1, "Files > 4GB require Zip64 extensions", v2, v3, v4, v5, v6, v64);
        v98 = -25;
        goto LABEL_172;
      }

      if (v95[78] > 0xFFFFFFFFLL)
      {
        archive_set_error(v97, -1, "Archives > 4GB require Zip64 extensions", v2, v3, v4, v5, v6, v64);
        v98 = -25;
        goto LABEL_172;
      }
    }

    if (*v87 != 0x8000)
    {
      archive_entry_set_size(v96, 0);
    }

    *v95 = v95[78];
    v95[5] = 0x7FFFFFFFFFFFFFFFLL;
    v95[1] = 0;
    v95[2] = 0;
    v95[3] = 0;
    v95[4] = 0;
    *(v95 + 17) = 0;
    *(v95 + 14) = (v95[73])(0, 0);
    *(v95 + 16) = 0;
    archive_entry_free(v95[6]);
    v95[6] = 0;
    if (*(v95 + 176))
    {
      off_1F3DE4EA0((v95 + 12));
    }

    if (*(v95 + 564))
    {
      off_1F3DE4DD8();
    }

    *(v95 + 564) = 0;
    *(v95 + 176) = 0;
    *(v95 + 88) = 0;
    if (*v87 == 0x8000 && (!archive_entry_size_is_set(v96) || archive_entry_size(v96) > 0))
    {
      v79 = *(v95 + 165);
      if (v79)
      {
        if ((v79 - 1) <= 2)
        {
          *(v95 + 17) |= 1u;
          *(v95 + 16) = *(v95 + 165);
        }
      }
    }

    v95[6] = archive_entry_clone(v96);
    if (v95[6])
    {
      if (sconv_1)
      {
        v85 = 0;
        v84 = 0;
        if (_archive_entry_pathname_l(v96, &v85, &v84, sconv_1))
        {
          if (*__error() == 12)
          {
            archive_set_error(v97, 12, "Can't allocate memory for Pathname", v12, v13, v14, v15, v16, v64);
            v98 = -30;
            goto LABEL_172;
          }

          v78 = v97;
          v77 = archive_entry_pathname(v96);
          archive_string_conversion_charset_name(sconv_1);
          archive_set_error(v78, 79, "Can't translate Pathname '%s' to %s", v17, v18, v19, v20, v21, v77);
          *&v87[2] = -20;
        }

        if (v84)
        {
          archive_entry_set_pathname(v95[6], v85);
        }

        if (*v87 == 40960)
        {
          if (_archive_entry_symlink_l(v96, &v85, &v84, sconv_1))
          {
            if (*__error() == 12)
            {
              archive_set_error(v97, 12, "Can't allocate memory  for Symlink", v22, v23, v24, v25, v26, v64);
              v98 = -30;
              goto LABEL_172;
            }
          }

          else if (v84)
          {
            archive_entry_set_symlink(v95[6], v85);
          }
        }
      }

      v27 = archive_entry_pathname(v95[6]);
      if (!is_all_ascii(v27))
      {
        if (v95[79])
        {
          v28 = archive_string_conversion_charset_name(v95[79]);
          if (!strcmp(v28, "UTF-8"))
          {
            *(v95 + 17) |= 0x800u;
          }
        }

        else
        {
          v29 = nl_langinfo(0);
          if (!strcmp(v29, "UTF-8"))
          {
            *(v95 + 17) |= 0x800u;
          }
        }
      }

      v92 = path_length(v95[6]);
      if (*v87 == 40960)
      {
        __s = archive_entry_symlink(v95[6]);
        if (__s)
        {
          v90 = strlen(__s);
        }

        else
        {
          v90 = 0;
        }

        v95[5] = v90;
        v95[1] = v90;
        v95[2] = v90;
        v30 = (v95[73])(*(v95 + 14), __s, v90);
        v95[7] = v30;
        if (v86 < 20)
        {
          v86 = 20;
        }
      }

      else if (*v87 == 0x8000)
      {
        if (archive_entry_size_is_set(v95[6]))
        {
          v83 = archive_entry_size(v95[6]);
          v82 = 0;
          v95[5] = v83;
          *(v95 + 15) = *(v95 + 162);
          if (*(v95 + 15) == -1)
          {
            *(v95 + 15) = 8;
          }

          if (!v83)
          {
            *(v95 + 15) = 0;
          }

          if (*(v95 + 15))
          {
            v95[2] = v83;
            if (v86 < 20)
            {
              v86 = 20;
            }
          }

          else
          {
            v95[1] = v83;
            v95[2] = v83;
            if (v86 < 10)
            {
              v86 = 10;
            }
          }

          if (*(v95 + 17))
          {
            v76 = *(v95 + 16);
            if (v76)
            {
              switch(v76)
              {
                case 1:
                  v82 = 12;
                  if (v86 < 20)
                  {
                    v86 = 20;
                  }

                  break;
                case 2:
                  v82 = 20;
                  if (v86 < 20)
                  {
                    v86 = 20;
                  }

                  break;
                case 3:
                  v82 = 28;
                  if (v86 < 20)
                  {
                    v86 = 20;
                  }

                  break;
              }
            }

            if (!*(v95 + 15))
            {
              v95[1] += v82;
            }
          }

          if (((v95[83] & 2) != 0 || v95[2] + v82 > 0xFFFFFFFFLL || v95[2] > 4278190080 && *(v95 + 15)) && v86 < 45)
          {
            v86 = 45;
          }

          *(v95 + 17) |= 8u;
        }

        else
        {
          *(v95 + 15) = *(v95 + 162);
          if (*(v95 + 15) == -1)
          {
            *(v95 + 15) = 8;
          }

          *(v95 + 17) |= 8u;
          if (v95[83])
          {
            if (*(v95 + 15))
            {
              if (v86 < 20)
              {
                v86 = 20;
              }
            }

            else if (v86 < 10)
            {
              v86 = 10;
            }
          }

          else if (v86 < 45)
          {
            v86 = 45;
          }

          if (*(v95 + 17))
          {
            v75 = *(v95 + 16);
            if (v75)
            {
              if ((v75 - 1) <= 2 && v86 < 20)
              {
                v86 = 20;
              }
            }
          }
        }
      }

      else
      {
        *(v95 + 15) = 0;
        v95[5] = 0;
        if (v86 < 20)
        {
          v86 = 20;
        }
      }

      v100 = 0u;
      v101 = 0u;
      LODWORD(v100) = *"PK\x03\x04";
      archive_le16enc_2(&v100 + 2, v86);
      v31 = *(v95 + 17);
      archive_le16enc_2(&v100 + 3, *(v95 + 17));
      if (*(v95 + 16) == 2 || *(v95 + 16) == 3)
      {
        archive_le16enc_2(&v100 + 4, 99);
      }

      else
      {
        v32 = *(v95 + 15);
        archive_le16enc_2(&v100 + 4, *(v95 + 15));
      }

      v33 = archive_entry_mtime(v95[6]);
      v34 = dos_time(v33);
      archive_le32enc_6(&v100 + 10, v34);
      if ((*(v95 + 17) & 8) == 0)
      {
        archive_le32enc_6(&v100 + 14, *(v95 + 14));
        archive_le32enc_6(&v101 + 2, v95[1]);
        archive_le32enc_6(&v101 + 6, v95[2]);
      }

      archive_le16enc_2(&v101 + 5, v92);
      if (*(v95 + 16) == 1)
      {
        if ((*(v95 + 17) & 8) != 0)
        {
          *(v95 + 89) = BYTE11(v100);
        }

        else
        {
          *(v95 + 89) = BYTE1(v101);
        }
      }

      v35 = cd_alloc(v95, 46);
      v95[71] = v35;
      ++v95[77];
      v36 = v95[71];
      __memset_chk();
      v37 = v95[71];
      __memcpy_chk();
      archive_le16enc_2((v95[71] + 4), v86 + 768);
      archive_le16enc_2((v95[71] + 6), v86);
      v38 = *(v95 + 17);
      archive_le16enc_2((v95[71] + 8), *(v95 + 17));
      if (*(v95 + 16) == 2 || *(v95 + 16) == 3)
      {
        archive_le16enc_2((v95[71] + 10), 99);
      }

      else
      {
        v39 = *(v95 + 15);
        archive_le16enc_2((v95[71] + 10), *(v95 + 15));
      }

      v73 = v95[71] + 12;
      v40 = archive_entry_mtime(v95[6]);
      v41 = dos_time(v40);
      archive_le32enc_6(v73, v41);
      archive_le16enc_2((v95[71] + 28), v92);
      v74 = v95[71] + 38;
      v42 = archive_entry_mode(v95[6]);
      archive_le32enc_6(v74, v42 << 16);
      v94 = cd_alloc(v95, v92);
      copy_path(v95[6], v94);
      memset(__b, 0, sizeof(__b));
      v94 = __b;
      if (archive_entry_uid_is_set(v96) || archive_entry_gid_is_set(v96))
      {
        __memcpy_chk();
        v94 = (v94 + 5);
        v43 = v94;
        v94 = (v94 + 1);
        *v43 = 4;
        v71 = v94;
        v44 = archive_entry_uid(v96);
        archive_le32enc_6(v71, v44);
        v94 += 2;
        v45 = v94;
        v94 = (v94 + 1);
        *v45 = 4;
        v72 = v94;
        v46 = archive_entry_gid(v96);
        archive_le32enc_6(v72, v46);
        v94 += 2;
      }

      if ((*(v95 + 17) & 1) != 0 && (*(v95 + 16) == 2 || *(v95 + 16) == 3))
      {
        __memcpy_chk();
        if (archive_entry_size_is_set(v95[6]) && archive_entry_size(v95[6]) < 20)
        {
          archive_le16enc_2(v94 + 2, 2);
          *(v95 + 23) = 2;
        }

        else
        {
          *(v95 + 23) = 1;
        }

        v94 += 4;
        if (*(v95 + 16) == 2)
        {
          v47 = 1;
        }

        else
        {
          v47 = 3;
        }

        v48 = v94;
        v94 = (v94 + 1);
        *v48 = v47;
        v49 = *(v95 + 15);
        archive_le16enc_2(v94++, *(v95 + 15));
      }

      v95[72] = v95[76];
      v93 = cd_alloc(v95, v94 - __b);
      __memcpy_chk();
      if (archive_entry_mtime_is_set(v96) || archive_entry_atime_is_set(v96) || archive_entry_ctime_is_set(v96))
      {
        v81 = v94;
        __memcpy_chk();
        v94 += 2;
        v69 = archive_entry_mtime_is_set(v96) != 0;
        if (archive_entry_atime_is_set(v96))
        {
          v50 = 2;
        }

        else
        {
          v50 = 0;
        }

        v70 = v69 | v50;
        if (archive_entry_ctime_is_set(v96))
        {
          v51 = 4;
        }

        else
        {
          v51 = 0;
        }

        v52 = v70 | v51;
        v53 = v94;
        v94 = (v94 + 1);
        *v53 = v52;
        if (archive_entry_mtime_is_set(v96))
        {
          v68 = v94;
          v54 = archive_entry_mtime(v96);
          archive_le32enc_6(v68, v54);
          v94 += 2;
        }

        if (archive_entry_atime_is_set(v96))
        {
          v67 = v94;
          v55 = archive_entry_atime(v96);
          archive_le32enc_6(v67, v55);
          v94 += 2;
        }

        if (archive_entry_ctime_is_set(v96))
        {
          v66 = v94;
          v56 = archive_entry_ctime(v96);
          archive_le32enc_6(v66, v56);
          v94 += 2;
        }

        archive_le16enc_2(v81 + 1, v94 - v81 - 4);
      }

      if (archive_entry_size_is_set(v95[6]) && (v95[2] > 0xFFFFFFFFLL || v95[1] > 0xFFFFFFFFLL))
      {
        __memcpy_chk();
        v94 += 2;
      }

      if ((v95[83] & 4) != 0)
      {
        v80 = v94;
        __memcpy_chk();
        v94 += 2;
        *v94 = 7;
        v94 = (v94 + 1);
        archive_le16enc_2(v94++, v86 + 768);
        archive_le16enc_2(v94++, 0);
        v65 = v94;
        v57 = archive_entry_mode(v95[6]);
        archive_le32enc_6(v65, v57 << 16);
        v94 += 2;
        archive_le16enc_2(v80 + 1, v94 - (v80 + 4));
      }

      archive_le16enc_2(&v101 + 6, v94 - __b);
      v88 = __archive_write_output(v97, &v100, 30);
      if (v88)
      {
        v98 = -30;
      }

      else
      {
        v95[78] += 30;
        v88 = write_path(v95[6], v97);
        if (v88 > 0)
        {
          v95[78] += v88;
          v88 = __archive_write_output(v97, __b, v94 - __b);
          if (v88)
          {
            v98 = -30;
          }

          else
          {
            v95[78] += v94 - __b;
            if (__s)
            {
              v88 = __archive_write_output(v97, __s, v90);
              if (v88)
              {
                v98 = -30;
                goto LABEL_172;
              }

              v95[3] += v90;
              v95[4] += v90;
              v95[78] += v90;
            }

            if (*(v95 + 15) == 8 && (v95[92] = 0, v95[93] = 0, v95[94] = 0, v95[87] = v95[99], *(v95 + 176) = v95[98], deflateInit2_(v95 + 6, *(v95 + 163), 8, -15, 8, 0, "1.2.12", 112)))
            {
              archive_set_error(v97, 12, "Can't init deflate compressor", v58, v59, v60, v61, v62, v64);
              v98 = -30;
            }

            else
            {
              v98 = *&v87[2];
            }
          }
        }

        else
        {
          v98 = -30;
        }
      }
    }

    else
    {
      archive_set_error(v97, 12, "Can't allocate zip header data", v7, v8, v9, v10, v11, v64);
      v98 = -30;
    }
  }

  else
  {
    __archive_write_entry_filetype_unsupported(v97, v96);
    v98 = -25;
  }

LABEL_172:
  *MEMORY[0x1E69E9840];
  return v98;
}

uint64_t archive_write_zip_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  inited = 0;
  v27 = *(a1 + 248);
  if (a3 > *(v27 + 40))
  {
    v29 = *(v27 + 40);
  }

  *(v27 + 32) += v29;
  if (!v29)
  {
    return 0;
  }

  if (*(v27 + 68))
  {
    v22 = *(v27 + 64);
    if (v22)
    {
      if (v22 == 1)
      {
        if (!*(v27 + 88))
        {
          inited = init_traditional_pkware_encryption(v31);
          if (inited)
          {
            return inited;
          }

          *(v27 + 88) = 1;
        }
      }

      else if ((v22 == 3 || v22 == 2) && !*(v27 + 176))
      {
        inited = init_winzip_aes_encryption(v31);
        if (inited)
        {
          return inited;
        }

        *(v27 + 564) = 1;
        *(v27 + 176) = 1;
      }
    }
  }

  v21 = *(v27 + 60);
  if (v21 == -1)
  {
LABEL_55:
    archive_set_error(v31, -1, "Invalid ZIP compression type", a4, a5, a6, a7, a8, v20);
    return -30;
  }

  if (v21)
  {
    if (v21 == 8)
    {
      *(v27 + 672) = v30;
      *(v27 + 680) = v29;
      while (1)
      {
        inited = deflate((v27 + 672), 0);
        if (inited == -2)
        {
          return -30;
        }

        if (!*(v27 + 704))
        {
          if (*(v27 + 88))
          {
            trad_enc_encrypt_update((v27 + 76), *(v27 + 792), *(v27 + 784), *(v27 + 792), *(v27 + 784));
          }

          else if (*(v27 + 176))
          {
            v23 = *(v27 + 784);
            inited = off_1F3DE4E98(v27 + 96, *(v27 + 792), *(v27 + 784), *(v27 + 792), &v23);
            if (inited < 0)
            {
              archive_set_error(v31, -1, "Failed to encrypt file", v13, v14, v15, v16, v17, v20);
              return -25;
            }

            off_1F3DE4DC8((v27 + 180), *(v27 + 792), *(v27 + 784));
          }

          inited = __archive_write_output(v31, *(v27 + 792), *(v27 + 784));
          if (inited)
          {
            return inited;
          }

          *(v27 + 24) += *(v27 + 784);
          *(v27 + 624) += *(v27 + 784);
          *(v27 + 696) = *(v27 + 792);
          *(v27 + 704) = *(v27 + 784);
        }

        if (!*(v27 + 680))
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_55;
  }

  if (*(v27 + 88) || *(v27 + 176))
  {
    v26 = v30;
    v25 = v30 + v29;
    while (v26 < v25)
    {
      v24 = 0;
      if (*(v27 + 88))
      {
        v24 = trad_enc_encrypt_update((v27 + 76), v26, v25 - v26, *(v27 + 792), *(v27 + 784));
      }

      else
      {
        v24 = *(v27 + 784);
        inited = off_1F3DE4E98(v27 + 96, v26, v25 - v26, *(v27 + 792), &v24);
        if (inited < 0)
        {
          archive_set_error(v31, -1, "Failed to encrypt file", v8, v9, v10, v11, v12, v20);
          return -25;
        }

        off_1F3DE4DC8((v27 + 180), *(v27 + 792), v24);
      }

      inited = __archive_write_output(v31, *(v27 + 792), v24);
      if (inited)
      {
        return inited;
      }

      *(v27 + 24) += v24;
      *(v27 + 624) += v24;
      v26 += v24;
    }
  }

  else
  {
    inited = __archive_write_output(v31, v30, v29);
    if (inited)
    {
      return inited;
    }

    *(v27 + 624) += v29;
    *(v27 + 24) += v29;
  }

LABEL_56:
  *(v27 + 40) -= v29;
  if (!*(v27 + 176) || *(v27 + 92) != 2)
  {
    v18 = (*(v27 + 584))(*(v27 + 56), v30, v29);
    *(v27 + 56) = v18;
  }

  return v29;
}

uint64_t archive_write_zip_finish_entry(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v22 = *(a1 + 248);
  v21 = 0;
  if (*(v22 + 15) == 8)
  {
    while (1)
    {
      v20 = 0;
      v21 = deflate(v22 + 6, 4);
      if (v21 == -2)
      {
        v24 = -30;
        goto LABEL_65;
      }

      v20 = v22[98] - *(v22 + 176);
      if (*(v22 + 88))
      {
        trad_enc_encrypt_update(v22 + 19, v22[99], v20, v22[99], v20);
      }

      else if (*(v22 + 176))
      {
        v19 = v20;
        v21 = off_1F3DE4E98((v22 + 12), v22[99], v20, v22[99], &v19);
        if ((v21 & 0x80000000) != 0)
        {
          archive_set_error(v23, -1, "Failed to encrypt file", v1, v2, v3, v4, v5, v13);
          v24 = -25;
          goto LABEL_65;
        }

        off_1F3DE4DC8((v22 + 180), v22[99], v20);
      }

      v21 = __archive_write_output(v23, v22[99], v20);
      if (v21)
      {
        v24 = v21;
        goto LABEL_65;
      }

      v22[3] += v20;
      v22[78] += v20;
      v22[87] = v22[99];
      if (*(v22 + 176))
      {
        break;
      }

      *(v22 + 176) = v22[98];
    }

    deflateEnd(v22 + 6);
  }

  if (*(v22 + 564))
  {
    v18 = 20;
    off_1F3DE4DD0((v22 + 180), v34, &v18);
    v21 = __archive_write_output(v23, v34, 10);
    if (v21)
    {
      v24 = v21;
      goto LABEL_65;
    }

    v22[3] += 10;
    v22[78] += 10;
  }

  if ((*(v22 + 17) & 8) != 0)
  {
    HIDWORD(v30) = *"PK\a\b";
    if (*(v22 + 176) && *(v22 + 23) == 2)
    {
      archive_le32enc_6(v31, 0);
    }

    else
    {
      archive_le32enc_6(v31, *(v22 + 14));
    }

    if (v22[3] > 0xFFFFFFFFLL || v22[4] > 0xFFFFFFFFLL || (v22[83] & 2) != 0)
    {
      archive_le64enc_2(v32, v22[3]);
      archive_le64enc_2(&v33 + 4, v22[4]);
      v21 = __archive_write_output(v23, &v30 + 4, 24);
      v22[78] += 24;
    }

    else
    {
      archive_le32enc_6(v32, v22[3]);
      archive_le32enc_6(&v33, v22[4]);
      v21 = __archive_write_output(v23, &v30 + 4, 16);
      v22[78] += 16;
    }

    if (v21)
    {
      v24 = -30;
      goto LABEL_65;
    }
  }

  if (archive_entry_mtime_is_set(v22[6]))
  {
    __memcpy_chk();
    v6 = archive_entry_mtime(v22[6]);
    archive_le32enc_6(&v30, v6);
    if (!cd_alloc(v22, &v30 + 4 - &v29))
    {
LABEL_33:
      archive_set_error(v23, 12, "Can't allocate zip data", v7, v8, v9, v10, v11, v13);
      v24 = -30;
      goto LABEL_65;
    }

    __memcpy_chk();
  }

  if (*(v22 + 176) && *(v22 + 23) == 2)
  {
    archive_le32enc_6(v22[71] + 16, 0);
  }

  else
  {
    archive_le32enc_6(v22[71] + 16, *(v22 + 14));
  }

  archive_le32enc_6(v22[71] + 20, v22[3]);
  archive_le32enc_6(v22[71] + 24, v22[4]);
  archive_le16enc_2((v22[71] + 30), v22[76] - v22[72]);
  archive_le32enc_6(v22[71] + 42, *v22);
  if (v22[3] >= 0xFFFFFFFFLL || v22[4] >= 0xFFFFFFFFLL || *v22 > 0xFFFFFFFFLL)
  {
    __memcpy_chk();
    v17 = &v27;
    if (v22[4] >= 0xFFFFFFFFLL)
    {
      archive_le32enc_6(v22[71] + 24, 0xFFFFFFFF);
      archive_le64enc_2(&v27, v22[4]);
      v17 = &v28;
    }

    if (v22[3] >= 0xFFFFFFFFLL)
    {
      archive_le32enc_6(v22[71] + 20, 0xFFFFFFFF);
      archive_le64enc_2(v17, v22[3]);
      v17 += 8;
    }

    if (*v22 >= 0xFFFFFFFFLL)
    {
      archive_le32enc_6(v22[71] + 42, 0xFFFFFFFF);
      archive_le64enc_2(v17, *v22);
      v17 += 8;
    }

    archive_le16enc_2(&v26, v17 - (&vars0 - 105));
    if (!cd_alloc(v22, v17 - &v25))
    {
      goto LABEL_33;
    }

    __memcpy_chk();
    if (archive_le16dec_6((v22[71] + 6)) < 45)
    {
      archive_le16enc_2((v22[71] + 6), 45);
    }
  }

  if (*(v22 + 176) && *(v22 + 23) == 2)
  {
    archive_le32enc_6(v22[71] + 16, 0);
  }

  else
  {
    archive_le32enc_6(v22[71] + 16, *(v22 + 14));
  }

  v16 = v22[71] + 20;
  if (v22[3] <= 0xFFFFFFFFLL)
  {
    archive_le32enc_6(v16, v22[3]);
  }

  else
  {
    archive_le32enc_6(v16, 0xFFFFFFFF);
  }

  v15 = v22[71] + 24;
  if (v22[4] <= 0xFFFFFFFFLL)
  {
    archive_le32enc_6(v15, v22[4]);
  }

  else
  {
    archive_le32enc_6(v15, 0xFFFFFFFF);
  }

  archive_le16enc_2((v22[71] + 30), v22[76] - v22[72]);
  v14 = v22[71] + 42;
  if (*v22 <= 0xFFFFFFFFLL)
  {
    archive_le32enc_6(v14, *v22);
  }

  else
  {
    archive_le32enc_6(v14, 0xFFFFFFFF);
  }

  v24 = 0;
LABEL_65:
  *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t archive_write_zip_close(uint64_t a1)
{
  __b[8] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 248);
  v5 = *(v3 + 624);
  for (i = *(v3 + 592); i; i = *i)
  {
    if (__archive_write_output(a1, i[2], i[3] - i[2]))
    {
      v7 = -30;
      goto LABEL_30;
    }

    *(v3 + 624) += i[3] - i[2];
  }

  v4 = *(v3 + 624);
  if (v4 - v5 > 0xFFFFFFFFLL || v5 > 0xFFFFFFFFLL || *(v3 + 616) >= 0x10000uLL || (*(v3 + 664) & 2) != 0)
  {
    memset(__b, 0, 0x38uLL);
    LODWORD(__b[0]) = *"PK\x06\x06";
    archive_le64enc_2(__b + 4, 44);
    archive_le16enc_2(&__b[1] + 2, 45);
    archive_le16enc_2(&__b[1] + 3, 45);
    archive_le64enc_2(&__b[3], *(v3 + 616));
    archive_le64enc_2(&__b[4], *(v3 + 616));
    archive_le64enc_2(&__b[5], v4 - v5);
    archive_le64enc_2(&__b[6], v5);
    if (__archive_write_output(a1, __b, 56))
    {
      v7 = -30;
      goto LABEL_30;
    }

    *(v3 + 624) += 56;
    __b[1] = 0;
    LODWORD(__b[2]) = 0;
    __b[0] = *"PK\x06\a";
    archive_le32enc_6(__b + 4, 0);
    archive_le64enc_2(&__b[1], v4);
    archive_le32enc_6(&__b[2], 1u);
    if (__archive_write_output(a1, __b, 20))
    {
      v7 = -30;
      goto LABEL_30;
    }

    *(v3 + 624) += 20;
  }

  memset(__b, 0, 0x40uLL);
  LODWORD(__b[0]) = *"PK\x05\x06";
  if (*(v3 + 616) >= 0xFFFFuLL)
  {
    archive_le16enc_2(&__b[1], 0xFFFF);
  }

  else
  {
    archive_le16enc_2(&__b[1], *(v3 + 616));
  }

  if (*(v3 + 616) >= 0xFFFFuLL)
  {
    archive_le16enc_2(&__b[1] + 1, 0xFFFF);
  }

  else
  {
    archive_le16enc_2(&__b[1] + 1, *(v3 + 616));
  }

  if (v4 - v5 >= 0xFFFFFFFFLL)
  {
    archive_le32enc_6(&__b[1] + 4, 0xFFFFFFFF);
  }

  else
  {
    archive_le32enc_6(&__b[1] + 4, v4 - v5);
  }

  if (v5 >= 0xFFFFFFFFLL)
  {
    archive_le32enc_6(&__b[2], 0xFFFFFFFF);
  }

  else
  {
    archive_le32enc_6(&__b[2], v5);
  }

  if (__archive_write_output(a1, __b, 22))
  {
    v7 = -30;
  }

  else
  {
    *(v3 + 624) += 22;
    v7 = 0;
  }

LABEL_30:
  *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t archive_write_zip_free(uint64_t a1)
{
  v3 = *(a1 + 248);
  while (*(v3 + 74))
  {
    v2 = *(v3 + 74);
    *(v3 + 74) = *v2;
    free(v2[2]);
    free(v2);
  }

  free(*(v3 + 99));
  archive_entry_free(*(v3 + 6));
  if (*(v3 + 176))
  {
    off_1F3DE4EA0(v3 + 96);
  }

  if (*(v3 + 564))
  {
    off_1F3DE4DD8();
  }

  free(v3);
  *(a1 + 248) = 0;
  return 0;
}

BOOL is_traditional_pkware_encryption_supported()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = archive_random(v2, 0xBuLL) == 0;
  *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t is_winzip_aes_encryption_supported(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v5 = 0;
  v4 = 0;
  memset(__b, 0, 0x50uLL);
  bzero(&v3, 0x180uLL);
  if (v6 == 2)
  {
    v4 = 8;
    v5 = 16;
  }

  else
  {
    v4 = 16;
    v5 = 32;
  }

  if (archive_random(v10, v4))
  {
    v7 = 0;
  }

  else if ((__archive_cryptor[0])("p", 1uLL, v10, v4, 0x3E8u, v9, 2 * v5 + 2))
  {
    v7 = 0;
  }

  else if (off_1F3DE4E90(__b, v9, v5))
  {
    v7 = 0;
  }

  else
  {
    v2 = __archive_hmac(&v3, &v9[v5], v5);
    off_1F3DE4EA0(__b);
    if (v2)
    {
      v7 = 0;
    }

    else
    {
      off_1F3DE4DD8();
      v7 = 1;
    }
  }

  *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t get_sconv_1(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 632))
  {
    return *(a2 + 632);
  }

  if (!*(a2 + 656))
  {
    *(a2 + 640) = archive_string_default_conversion_for_write();
    *(a2 + 656) = 1;
  }

  return *(a2 + 640);
}

uint64_t is_all_ascii(unsigned __int8 *a1)
{
  while (*a1)
  {
    v1 = a1++;
    if (*v1 > 0x7Fu)
    {
      return 0;
    }
  }

  return 1;
}

size_t path_length(_DWORD **a1)
{
  v4 = archive_entry_filetype(a1);
  __s = archive_entry_pathname(a1);
  if (!__s)
  {
    return 0;
  }

  v2 = strlen(__s);
  if (v4 == 0x4000 && (!*__s || __s[v2 - 1] != 47))
  {
    ++v2;
  }

  return v2;
}

uint64_t archive_le32enc_6(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t dos_time(time_t a1)
{
  v5 = a1;
  v4 = 0;
  v3 = 0;
  memset(&__b, 0, sizeof(__b));
  v4 = localtime_r(&v5, &__b);
  if (v4->tm_year >= 80)
  {
    if (v4->tm_year <= 207)
    {
      v3 = 0;
      v3 = ((v4->tm_year - 80) & 0x7F) << 9;
      v3 += 32 * ((v4->tm_mon + 1) & 0xF);
      v3 += v4->tm_mday & 0x1F;
      v3 <<= 16;
      v3 += (v4->tm_hour & 0x1F) << 11;
      v3 += 32 * (v4->tm_min & 0x3F);
      v3 += (v4->tm_sec & 0x3E) >> 1;
    }

    else
    {
      return -6307971;
    }
  }

  else
  {
    return 2162688;
  }

  return v3;
}

uint64_t cd_alloc(void *a1, uint64_t a2)
{
  if (a1[74] && (*(a1[75] + 24) + a2) <= *(a1[75] + 16) + *(a1[75] + 8))
  {
    goto LABEL_10;
  }

  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040322C5439uLL);
  if (v3)
  {
    v3[1] = 0x10000;
    v3[2] = malloc_type_malloc(v3[1], 0x7EC37AE2uLL);
    if (!v3[2])
    {
      free(v3);
      return 0;
    }

    v3[3] = v3[2];
    if (a1[74])
    {
      *a1[75] = v3;
      a1[75] = v3;
    }

    else
    {
      a1[75] = v3;
      a1[74] = v3;
    }

LABEL_10:
    v4 = *(a1[75] + 24);
    *(a1[75] + 24) = v4 + a2;
    a1[76] += a2;
    return v4;
  }

  return 0;
}

uint64_t copy_path(_DWORD **a1, uint64_t a2)
{
  __s = archive_entry_pathname(a1);
  v4 = strlen(__s);
  v3 = archive_entry_filetype(a1);
  result = __memcpy_chk();
  if (v3 == 0x4000 && __s[v4 - 1] != 47)
  {
    *(a2 + v4) = 47;
  }

  return result;
}

uint64_t write_path(_DWORD **a1, uint64_t a2)
{
  v6 = archive_entry_pathname(a1);
  v5 = archive_entry_filetype(a1);
  if (v6)
  {
    v2 = strlen(v6);
    if (!__archive_write_output(a2, v6, v2))
    {
      v4 = strlen(v6);
      if (((v5 == 0x4000) & (v6[strlen(v6) - 1] != 47)) != 0)
      {
        if (__archive_write_output(a2, "/", 1))
        {
          return -30;
        }

        ++v4;
      }

      return v4;
    }

    return -30;
  }

  else
  {
    return -30;
  }
}

uint64_t init_traditional_pkware_encryption(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = *(a1 + 248);
  __s = __archive_write_get_passphrase(a1);
  if (__s)
  {
    if (archive_random(v20, 0xBuLL))
    {
      archive_set_error(a1, -1, "Can't generate random number for encryption", v6, v7, v8, v9, v10, v13);
      v18 = -30;
    }

    else
    {
      v11 = strlen(__s);
      trad_enc_init_0((v16 + 76), __s, v11);
      v20[11] = *(v16 + 89);
      trad_enc_encrypt_update((v16 + 76), v20, 0xCuLL, v19, 0xCuLL);
      v14 = __archive_write_output(a1, v19, 12);
      if (v14)
      {
        v18 = v14;
      }

      else
      {
        *(v16 + 624) += 12;
        *(v16 + 24) += 12;
        v18 = 0;
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Encryption needs passphrase", v1, v2, v3, v4, v5, v13);
    v18 = -25;
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t init_winzip_aes_encryption(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = *(a1 + 248);
  __s = __archive_write_get_passphrase(a1);
  if (__s)
  {
    if (*(v29 + 64) == 2)
    {
      v26 = 8;
      v27 = 16;
      v6 = archive_random(v33, 8uLL);
    }

    else
    {
      v26 = 16;
      v27 = 32;
      v6 = archive_random(v33, 0x10uLL);
    }

    if (v6)
    {
      archive_set_error(a1, -1, "Can't generate random number for encryption", v7, v8, v9, v10, v11, v24);
      v31 = -30;
    }

    else
    {
      v12 = strlen(__s);
      (__archive_cryptor[0])(__s, v12, v33, v26, 0x3E8u, v32, 2 * v27 + 2);
      if (off_1F3DE4E90(v29 + 96, v32, v27))
      {
        archive_set_error(a1, -1, "Decryption is unsupported due to lack of crypto library", v13, v14, v15, v16, v17, v24);
        v31 = -25;
      }

      else if (__archive_hmac((v29 + 180), &v32[v27], v27))
      {
        off_1F3DE4EA0(v29 + 96);
        archive_set_error(a1, -1, "Failed to initialize HMAC-SHA1", v18, v19, v20, v21, v22, v24);
        v31 = -25;
      }

      else
      {
        v33[v26] = v32[2 * v27];
        v33[v26 + 1] = v32[2 * v27 + 1];
        v25 = __archive_write_output(a1, v33, v26 + 2);
        if (v25)
        {
          v31 = v25;
        }

        else
        {
          *(v29 + 624) += v26 + 2;
          *(v29 + 24) += v26 + 2;
          v31 = 0;
        }
      }
    }
  }

  else
  {
    archive_set_error(a1, -1, "Encryption needs passphrase", v1, v2, v3, v4, v5, v24);
    v31 = -25;
  }

  *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t trad_enc_encrypt_update(int *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a3;
  }

  for (i = 0; i < v6; ++i)
  {
    v7 = *(a2 + i);
    *(a4 + i) = v7 ^ trad_enc_decrypt_byte_0(a1);
    trad_enc_update_keys_0(a1, v7);
  }

  return i;
}

uint64_t trad_enc_init_0(int *a1, Bytef *a2, uint64_t a3)
{
  *a1 = 305419896;
  a1[1] = 591751049;
  a1[2] = 878082192;
  while (a3)
  {
    v3 = a2++;
    trad_enc_update_keys_0(a1, *v3);
    --a3;
  }

  return 0;
}

uLong trad_enc_update_keys_0(int *a1, Bytef a2)
{
  v6 = a1;
  buf = a2;
  v4 = 0;
  v2 = crc32(*a1 ^ 0xFFFFFFFFLL, &buf, 1u);
  *v6 = ~v2;
  v6[1] = 134775813 * (v6[1] + *v6) + 1;
  v4 = HIBYTE(v6[1]);
  result = crc32(v6[2] ^ 0xFFFFFFFFLL, &v4, 1u);
  v6[2] = ~result;
  return result;
}

uint64_t archive_le64enc_2(uint64_t a1, uint64_t a2)
{
  v4 = HIDWORD(a2);
  archive_le32enc_6(a1, a2);
  return archive_le32enc_6(a1 + 4, v4);
}

uint64_t archive_write_set_format_cpio_binary(uint64_t a1, int a2)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_cpio_binary") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v9 = malloc_type_calloc(1uLL, 0x40uLL, 0x102004099191E4EuLL);
    if (v9)
    {
      *(a1 + 248) = v9;
      *(a1 + 256) = "cpio";
      *(a1 + 272) = archive_write_binary_options;
      *(a1 + 288) = archive_write_binary_header;
      *(a1 + 296) = archive_write_binary_data;
      *(a1 + 280) = archive_write_binary_finish_entry;
      *(a1 + 304) = archive_write_binary_close;
      *(a1 + 312) = archive_write_binary_free;
      *(a1 + 16) = a2;
      if (a2 == 65538)
      {
        *(a1 + 24) = "7th Edition cpio";
      }

      else
      {
        if (a2 != 65543)
        {
          archive_set_error(a1, 22, "binary format must be 'pwb' or 'bin'", v2, v3, v4, v5, v6, v8);
          return -30;
        }

        *(a1 + 24) = "PWB cpio";
      }

      return 0;
    }

    archive_set_error(a1, 12, "Can't allocate cpio data", v2, v3, v4, v5, v6, v8);
    return -30;
  }
}

uint64_t archive_write_binary_options(uint64_t a1, const char *a2, const char *a3)
{
  v10 = *(a1 + 248);
  v9 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v10 + 40) = archive_string_conversion_to_charset(a1, a3, 0);
      if (*(v10 + 40))
      {
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "%s: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, *(a1 + 256));
    }

    return v9;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_binary_header(_DWORD *a1, _DWORD *a2)
{
  v24 = a1;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  if (archive_entry_filetype(a2) || archive_entry_hardlink(v23))
  {
    v20 = v23;
    sconv_2 = get_sconv_2(v24);
    if (_archive_entry_pathname_l(v23, &v22, &v21, sconv_2) && *__error() == 12)
    {
      archive_set_error(v24, 12, "Can't allocate memory for Pathname", v8, v9, v10, v11, v12, v20);
      return -30;
    }

    else if (v21 && v22 && *v22)
    {
      if (archive_entry_size_is_set(v23) && (archive_entry_size(v23) & 0x8000000000000000) == 0)
      {
        return write_header_1(v24, v23);
      }

      else
      {
        archive_set_error(v24, -1, "Size required", v13, v14, v15, v16, v17, v20);
        return -25;
      }
    }

    else
    {
      archive_set_error(v24, -1, "Pathname required", v8, v9, v10, v11, v12, v20);
      return -25;
    }
  }

  else
  {
    archive_set_error(v24, -1, "Filetype required", v2, v3, v4, v5, v6, v19);
    return -25;
  }
}

uint64_t archive_write_binary_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *v5)
  {
    v6 = *v5;
  }

  v4 = __archive_write_output(a1, a2, v6);
  *v5 -= v6;
  if (v4 < 0)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t archive_write_binary_close(uint64_t a1)
{
  v2 = archive_entry_new2(0);
  archive_entry_set_nlink(v2, 1);
  archive_entry_set_size(v2, 0);
  archive_entry_set_pathname(v2, "TRAILER!!!");
  v3 = write_header_1(a1, v2);
  archive_entry_free(v2);
  return v3;
}

uint64_t archive_write_binary_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  free(v2[2]);
  free(v2);
  *(a1 + 248) = 0;
  return 0;
}

uint64_t get_sconv_2(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = *(v3 + 40);
  if (!v2)
  {
    if (!*(v3 + 56))
    {
      *(v3 + 48) = archive_string_default_conversion_for_write();
      *(v3 + 56) = 1;
    }

    return *(v3 + 48);
  }

  return v2;
}

uint64_t write_header_1(uint64_t a1, _DWORD *a2)
{
  v77 = a1;
  v76 = a2;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  memset(v68, 0, 10);
  sconv_2 = 0;
  v64 = 0;
  v63 = 0;
  v75 = *(a1 + 248);
  v70 = 0;
  sconv_2 = get_sconv_2(a1);
  v64 = 0;
  v71 = _archive_entry_pathname_l(v76, &v73, &v63, sconv_2);
  if (v71)
  {
    if (*__error() == 12)
    {
      archive_set_error(v77, 12, "Can't allocate memory for Pathname", v2, v3, v4, v5, v6, v58);
      v70 = -30;
      goto LABEL_53;
    }

    v62 = v77;
    v61 = archive_entry_pathname(v76);
    archive_string_conversion_charset_name(sconv_2);
    archive_set_error(v62, 79, "Can't translate pathname '%s' to %s", v7, v8, v9, v10, v11, v61);
    v70 = -20;
  }

  v72 = v63 + 1;
  LOWORD(v66) = la_swap16(29127);
  v12 = archive_entry_dev(v76);
  WORD1(v66) = la_swap16(v12);
  v69 = synthesize_ino_value_0(v75, v76);
  if (v69 < 0)
  {
    archive_set_error(v77, 12, "No memory for ino translation table", v13, v14, v15, v16, v17, v58);
    v70 = -30;
  }

  else if (v69 < 0x8000)
  {
    WORD2(v66) = la_swap16(v69);
    HIWORD(v66) = archive_entry_mode(v76);
    if ((HIWORD(v66) & 0xF000) == 0xC000 || (HIWORD(v66) & 0xF000) == 0x1000)
    {
      archive_set_error(v77, 22, "sockets and fifos cannot be represented in the binary cpio formats", v18, v19, v20, v21, v22, v58);
      v70 = -30;
    }

    else if (v77[4] == 65543 && (HIWORD(v66) & 0xF000) == 0xA000)
    {
      archive_set_error(v77, 22, "symbolic links cannot be represented in the PWB cpio format", v18, v19, v20, v21, v22, v58);
      v70 = -30;
    }

    else
    {
      HIWORD(v66) = la_swap16(HIWORD(v66));
      v23 = archive_entry_uid(v76);
      LOWORD(v67) = la_swap16(v23);
      v24 = archive_entry_gid(v76);
      WORD1(v67) = la_swap16(v24);
      v25 = archive_entry_nlink(v76);
      WORD2(v67) = la_swap16(v25);
      if (archive_entry_filetype(v76) == 24576 || archive_entry_filetype(v76) == 0x2000)
      {
        v26 = archive_entry_rdev(v76);
        HIWORD(v67) = la_swap16(v26);
      }

      else
      {
        HIWORD(v67) = 0;
      }

      v27 = archive_entry_mtime(v76);
      LODWORD(v68[0]) = la_swap32(v27);
      WORD2(v68[0]) = la_swap16(v72);
      if (archive_entry_filetype(v76) != 0x8000)
      {
        archive_entry_set_size(v76, 0);
      }

      v71 = _archive_entry_symlink_l(v76, &v74, &v63, sconv_2);
      if (v71)
      {
        if (*__error() == 12)
        {
          archive_set_error(v77, 12, "Can't allocate memory for Linkname", v33, v34, v35, v36, v37, v58);
          v70 = -30;
          goto LABEL_53;
        }

        v60 = v77;
        v59 = archive_entry_symlink(v76);
        archive_string_conversion_charset_name(sconv_2);
        archive_set_error(v60, 79, "Can't translate linkname '%s' to %s", v38, v39, v40, v41, v42, v59);
        v70 = -20;
      }

      if (v63 && v74 && *v74)
      {
        if (v77[4] == 65543)
        {
          archive_set_error(v77, 22, "symlinks are not supported by UNIX V6 or by PWB cpio", v28, v29, v30, v31, v32, v58);
          v70 = -30;
          goto LABEL_53;
        }

        v43 = strlen(v74);
        *(v68 + 6) = la_swap32(v43);
      }

      else
      {
        if (v77[4] == 65543 && archive_entry_size(v76) > 0xFFFFFF)
        {
          archive_set_error(v77, 34, "File is too large for PWB binary cpio format.", v44, v45, v46, v47, v48, v58);
          v70 = -25;
          goto LABEL_53;
        }

        if (archive_entry_size(v76) > 0x7FFFFFFF)
        {
          archive_set_error(v77, 34, "File is too large for binary cpio format.", v49, v50, v51, v52, v53, v58);
          v70 = -25;
          goto LABEL_53;
        }

        v54 = archive_entry_size(v76);
        *(v68 + 6) = la_swap32(v54);
      }

      v71 = __archive_write_output(v77, &v66, 26);
      if (v71)
      {
        v70 = -30;
      }

      else
      {
        v71 = __archive_write_output(v77, v73, v72);
        if (!v71 && v72 % 2)
        {
          v71 = __archive_write_nulls(v77, 1uLL);
        }

        if (v71)
        {
          v70 = -30;
        }

        else
        {
          v55 = archive_entry_size(v76);
          *v75 = v55;
          if (*v75 % 2uLL)
          {
            ++*v75;
          }

          if (v74 && *v74)
          {
            v56 = strlen(v74);
            v71 = __archive_write_output(v77, v74, v56);
            if (!v71 && strlen(v74) % 2)
            {
              v71 = __archive_write_nulls(v77, 1uLL);
            }

            if (v71)
            {
              v70 = -30;
            }
          }
        }
      }
    }
  }

  else
  {
    archive_set_error(v77, 34, "Too many files for this cpio format", v13, v14, v15, v16, v17, v58);
    v70 = -30;
  }

LABEL_53:
  archive_entry_free(v64);
  return v70;
}

uint64_t synthesize_ino_value_0(uint64_t a1, uint64_t a2)
{
  v9 = archive_entry_ino64(a2);
  if (v9)
  {
    if (archive_entry_nlink(a2) >= 2)
    {
      for (i = 0; i < *(a1 + 32); ++i)
      {
        if (*(*(a1 + 16) + 16 * i) == v9)
        {
          return *(*(a1 + 16) + 16 * i + 8);
        }
      }

      v3 = *(a1 + 8) + 1;
      *(a1 + 8) = v3;
      v8 = v3;
      if (*(a1 + 24) <= *(a1 + 32))
      {
        if (*(a1 + 24) >= 0x200uLL)
        {
          v5 = 2 * *(a1 + 24);
        }

        else
        {
          v5 = 512;
        }

        v6 = malloc_type_realloc(*(a1 + 16), 16 * v5, 0x1000040D9A13B51uLL);
        if (!v6)
        {
          return -1;
        }

        *(a1 + 24) = v5;
        *(a1 + 16) = v6;
      }

      *(*(a1 + 16) + 16 * *(a1 + 32)) = v9;
      *(*(a1 + 16) + 16 * (*(a1 + 32))++ + 8) = v8;
      return v8;
    }

    v2 = *(a1 + 8) + 1;
    *(a1 + 8) = v2;
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t la_swap32(int a1)
{
  LOWORD(v2) = HIWORD(a1);
  HIWORD(v2) = a1;
  return v2;
}

uint64_t archive_write_add_filter_by_name(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = 0; (&names_1)[2 * i]; ++i)
  {
    if (!strcmp(a2, (&names_1)[2 * i]))
    {
      return ((&names_1)[2 * i + 1])(a1);
    }
  }

  archive_set_error(a1, 22, "No such filter '%s'", a4, a5, a6, a7, a8, a2);
  a1[1] = 0x8000;
  return -30;
}

uint64_t archive_read_support_filter_lz4(int *a1)
{
  if (archive_allow_entitlement_filter("lz4"))
  {
    if (__archive_read_register_bidder(a1, 0, "lz4", lz4_bidder_vtable))
    {
      return -30;
    }

    else
    {
      archive_set_error(a1, -1, "Using external lz4 program", v6, v7, v8, v9, v10, v12);
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlements", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

uint64_t lz4_reader_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  v11 = 0;
  v12 = __archive_read_filter_ahead(a2, 0xBuLL, &v11, a4, a5, a6, a7, a8);
  if (v12)
  {
    v10 = 0;
    v9 = archive_le32dec_10(v12);
    if (v9 == 407708164)
    {
      if ((v12[4] & 0xC0) >> 6 != 1)
      {
        return 0;
      }

      if ((v12[4] & 2) != 0)
      {
        return 0;
      }

      if ((v12[5] & 0x70) >> 4 < 4)
      {
        return 0;
      }

      if ((v12[5] & 0x8F) != 0)
      {
        return 0;
      }

      return 48;
    }

    else if (v9 == 407642370)
    {
      return 32;
    }

    return v10;
  }

  return 0;
}

uint64_t lz4_reader_init(uint64_t a1)
{
  LODWORD(result) = __archive_read_program(a1, "lz4 -d -q");
  *(a1 + 56) = 13;
  *(a1 + 48) = "lz4";
  return result;
}

uint64_t archive_read_format_rar_options(uint64_t a1, const char *a2, const char *a3)
{
  HIDWORD(v9) = -25;
  v11 = **(a1 + 2072);
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v11 + 20256) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v11 + 20256))
      {
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "rar: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, v9);
    }

    return v10;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_rar_read_header(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = 851968;
  if (!*(a1 + 24))
  {
    *(a1 + 24) = "RAR";
  }

  v54 = **(a1 + 2072);
  if (*(v54 + 20312) == -1)
  {
    *(v54 + 20312) = 0;
  }

  ahead = __archive_read_ahead(a1, 7uLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    if (!*(v54 + 248) && (*ahead == 77 && ahead[1] == 90 || !memcmp(ahead, "\x7FELF", 4uLL)))
    {
      v48 = skip_sfx_0(a1, v8, v9, v10, v11, v12, v13, v14);
      if (v48 < -20)
      {
        return v48;
      }
    }

    *(v54 + 248) = 1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v57 = __archive_read_ahead(a1, 7uLL, 0, v10, v11, v12, v13, v14);
            if (!v57)
            {
              archive_set_error(a1, 79, "Failed to read next header.", v15, v16, v17, v18, v19, v42);
              return -30;
            }

            v55 = v57;
            v50 = v57[2];
            if (v50 != 114)
            {
              break;
            }

            if (memcmp(v57, &unk_1BF343880, 7uLL))
            {
              archive_set_error(a1, 79, "Invalid marker header", v20, v21, v22, v23, v24, v42);
              return -30;
            }

            __archive_read_consume(a1, 7uLL);
          }

          if (v50 != 115)
          {
            break;
          }

          *v54 = archive_le16dec_7(v57 + 3);
          v51 = archive_le16dec_7(v57 + 5);
          if (v51 < 0xD)
          {
            goto LABEL_27;
          }

          v58 = __archive_read_ahead(a1, v51, 0, v25, v26, v27, v28, v29);
          if (!v58)
          {
            return -30;
          }

          __memcpy_chk();
          __memcpy_chk();
          if ((*v54 & 0x200) != 0)
          {
            if (v51 < 0xE)
            {
LABEL_27:
              archive_set_error(a1, 79, "Invalid header size", v25, v26, v27, v28, v29, v42);
              return -30;
            }

            *(v54 + 22) = *(v58 + 13);
          }

          if ((*v54 & 0x80) != 0)
          {
            archive_entry_set_is_metadata_encrypted(a2, 1);
            archive_entry_set_is_data_encrypted(a2, 1);
            *(v54 + 20312) = 1;
            archive_set_error(a1, 79, "RAR encryption support unavailable.", v30, v31, v32, v33, v34, v42);
            return -30;
          }

          v43 = crc32(0, (v58 + 2), v51 - 2);
          if (v43 != archive_le16dec_7(v58))
          {
LABEL_36:
            archive_set_error(a1, 79, "Header CRC error", v10, v11, v12, v13, v14, v42);
            return -30;
          }

          __archive_read_consume(a1, v51);
        }

        if (v50 == 116)
        {
          return read_header_0(a1, a2, v50, v15, v16, v17, v18, v19);
        }

        if ((v50 - 117) > 4)
        {
          break;
        }

LABEL_39:
        v47 = archive_le16dec_7(v57 + 3);
        v52 = archive_le16dec_7(v57 + 5);
        if (v52 < 7)
        {
          goto LABEL_40;
        }

        if (v47 < 0)
        {
          if (v52 < 11)
          {
LABEL_40:
            archive_set_error(a1, 79, "Invalid header size too small", v35, v36, v37, v38, v39, v42);
            return -30;
          }

          v40 = __archive_read_ahead(a1, v52, 0, v35, v36, v37, v38, v39);
          if (!v40)
          {
            return -30;
          }

          v55 = v40;
          v52 += archive_le32dec_11((v40 + 7));
        }

        v46 = archive_le16dec_7(v55);
        __archive_read_consume(a1, 2uLL);
        v53 = v52 - 2;
        crc = 0;
        while (v53 > 0)
        {
          if (v53 <= 0x8000)
          {
            len = v53;
          }

          else
          {
            len = 0x8000;
          }

          v59 = __archive_read_ahead(a1, len, 0, v10, v11, v12, v13, v14);
          if (!v59)
          {
            goto LABEL_54;
          }

          crc = crc32(crc, v59, len);
          __archive_read_consume(a1, len);
          v53 -= len;
        }

        if (crc != v46)
        {
          goto LABEL_36;
        }

        if (v50 == 123)
        {
          return 1;
        }
      }

      if (v50 != 122)
      {
        if (v50 != 123)
        {
LABEL_54:
          archive_set_error(a1, 79, "Bad RAR file", v15, v16, v17, v18, v19, v42);
          return -30;
        }

        goto LABEL_39;
      }

      header_0 = read_header_0(a1, a2, v50, v15, v16, v17, v18, v19);
      if (header_0 < -20)
      {
        return header_0;
      }
    }
  }

  return 1;
}

uint64_t archive_read_format_rar_read_data(uint64_t a1, const Bytef **a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = **(a1 + 2072);
  if (*(v12 + 20312) == -1)
  {
    *(v12 + 20312) = 0;
  }

  if (*(v12 + 160) > 0)
  {
    __archive_read_consume(a1, *(v12 + 160));
    *(v12 + 160) = 0;
  }

  *a2 = 0;
  if (*(v12 + 237) || *(v12 + 200) >= *(v12 + 40))
  {
    *a3 = 0;
    *a4 = *(v12 + 184);
    if (*a4 < *(v12 + 40))
    {
      *a4 = *(v12 + 40);
    }

    return 1;
  }

  else
  {
    v10 = *(v12 + 23);
    if (v10 == 48)
    {
      return read_data_stored(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    if ((v10 - 49) <= 4)
    {
      data_compressed = read_data_compressed(a1, a2, a3, a4, 0, a6, a7, a8);
      if (data_compressed && data_compressed != -20)
      {
        off_1F3DE4D70(v12 + 992);
        *(v12 + 912) = 1;
        *(v12 + 984) = 0;
      }
    }

    else
    {
      archive_set_error(a1, 79, "Unsupported compression method for RAR file.", a4, a5, a6, a7, a8, v9);
      return -30;
    }

    return data_compressed;
  }
}

uint64_t archive_read_format_rar_read_data_skip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = **(a1 + 2072);
  if (*(v16 + 160) > 0)
  {
    __archive_read_consume(a1, *(v16 + 160));
    *(v16 + 160) = 0;
  }

  if (*(v16 + 168) > 0 && __archive_read_consume(a1, *(v16 + 168)) < 0)
  {
    return -30;
  }

  else if ((*v16 & 1) != 0 && (*(v16 + 24) & 2) != 0)
  {
    header = archive_read_format_rar_read_header(a1, *(a1 + 144), a3, a4, a5, a6, a7, a8);
    if (header == 1)
    {
      header = archive_read_format_rar_read_header(a1, *(a1 + 144), v8, v9, v10, v11, v12, v13);
    }

    if (header)
    {
      return header;
    }

    else
    {
      return archive_read_format_rar_read_data_skip(a1);
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_format_rar_seek_data(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = **(a1 + 2072);
  if (*(v23 + 23) != 48)
  {
    archive_set_error(a1, -1, "Seeking of compressed RAR files is unsupported", a4, a5, a6, a7, a8, v22);
    return -25;
  }

  switch(a3)
  {
    case 0:
      goto LABEL_8;
    case 1:
      v31 = *(v23 + 200);
      break;
    case 2:
      v31 = *(v23 + 40);
      break;
    default:
LABEL_8:
      v31 = 0;
      break;
  }

  v32 = v31 + a2;
  if (v32 < 0)
  {
    return -1;
  }

  if (v32 > *(v23 + 40))
  {
    *(v23 + 200) = v32;
    v32 = *(v23 + 40);
  }

  v33 = v32 + *(*(v23 + 256) + 8);
  for (i = 0; i < *(v23 + 264); v33 += *(*(v23 + 256) + 24 * i + 8) - *(*(v23 + 256) + 24 * (i - 1) + 16))
  {
    ++i;
  }

  if (*v23)
  {
    do
    {
      while (v33 >= *(*(v23 + 256) + 24 * *(v23 + 264) + 8) || (*(v23 + 24) & 1) == 0)
      {
        if (v33 <= *(*(v23 + 256) + 24 * *(v23 + 264) + 16) || (*(v23 + 24) & 2) == 0)
        {
          goto LABEL_38;
        }

        if (++*(v23 + 264) >= *(v23 + 272) || v33 <= *(*(v23 + 256) + 24 * *(v23 + 264) + 16))
        {
          --*(v23 + 264);
          seek = __archive_read_seek(a1, *(*(v23 + 256) + 24 * *(v23 + 264) + 16), 0);
          if (seek < 0)
          {
            return seek;
          }

          header = archive_read_format_rar_read_header(a1, *(a1 + 144), v14, v15, v16, v17, v18, v19);
          if (header == 1)
          {
            *(v23 + 252) = 1;
            header = archive_read_format_rar_read_header(a1, *(a1 + 144), v20, a4, a5, a6, a7, a8);
          }

          if (header)
          {
            goto LABEL_25;
          }

          v33 += *(*(v23 + 256) + 24 * *(v23 + 264) + 8) - *(*(v23 + 256) + 24 * (*(v23 + 264) - 1) + 16);
        }

        else
        {
          v33 += *(*(v23 + 256) + 24 * *(v23 + 264) + 8) - *(*(v23 + 256) + 24 * (*(v23 + 264) - 1) + 16);
        }
      }

      if (!*(v23 + 264))
      {
        archive_set_error(a1, -1, "Attempt to seek past beginning of RAR data block", a4, a5, a6, a7, a8, v22);
        return -25;
      }

      --*(v23 + 264);
      v33 -= *(*(v23 + 256) + 24 * (*(v23 + 264) + 1) + 8) - *(*(v23 + 256) + 24 * *(v23 + 264) + 16);
    }

    while (v33 < *(*(v23 + 256) + 24 * *(v23 + 264) + 8));
    v26 = __archive_read_seek(a1, *(*(v23 + 256) + 24 * *(v23 + 264) + 8) - *(*(v23 + 256) + 24 * *(v23 + 264)), 0);
    if (v26 < 0)
    {
      return v26;
    }

    if (archive_read_format_rar_read_header(a1, *(a1 + 144), v8, v9, v10, v11, v12, v13))
    {
LABEL_25:
      archive_set_error(a1, -1, "Error during seek of RAR file", a4, a5, a6, a7, a8, v22);
      return -25;
    }

    --*(v23 + 264);
  }

LABEL_38:
  v29 = __archive_read_seek(a1, v33, 0);
  if (v29 < 0)
  {
    return v29;
  }

  *(v23 + 168) = *(*(v23 + 256) + 24 * *(v23 + 264) + 16) - v29;
  for (j = *(v23 + 264); j; v29 -= *(*(v23 + 256) + 24 * (j + 1) + 8) - *(*(v23 + 256) + 24 * j + 16))
  {
    --j;
  }

  v30 = v29 - *(*(v23 + 256) + 8);
  __archive_reset_read_data(a1);
  *(v23 + 160) = 0;
  *(v23 + 184) = 0;
  if (v30 == *(v23 + 40) && *(v23 + 200) > *(v23 + 40))
  {
    return *(v23 + 200);
  }

  *(v23 + 200) = v30;
  return *(v23 + 200);
}

uint64_t archive_read_format_rar_has_encrypted_entries(uint64_t a1)
{
  if (a1 && *(a1 + 2072) && (v2 = **(a1 + 2072)) != 0)
  {
    return *(v2 + 20312);
  }

  else
  {
    return -1;
  }
}

uint64_t skip_sfx_0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 4096;
  while ((v12 + v10) <= 0x20000)
  {
    v16 = __archive_read_ahead(v17, v10, &v11, a4, a5, a6, a7, a8);
    if (v16)
    {
      if (v11 < 64)
      {
        break;
      }

      v15 = v16;
      v14 = &v16[v11];
      while (v15 + 7 < v14)
      {
        if (!memcmp(v15, &unk_1BF343880, 7uLL))
        {
          v13 = (v15 - v16);
          __archive_read_consume(v17, v15 - v16);
          return 0;
        }

        v15 += 16;
      }

      v13 = (v15 - v16);
      __archive_read_consume(v17, v15 - v16);
      v12 += v13;
    }

    else
    {
      v10 >>= 1;
      if (v10 < 64)
      {
        break;
      }
    }
  }

  archive_set_error(v17, 79, "Couldn't find out RAR header", a4, a5, a6, a7, a8, v9);
  return -30;
}

uint64_t read_header_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v148 = *MEMORY[0x1E69E9840];
  v144 = a1;
  v143 = a2;
  v142 = a3;
  ahead = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  *v137 = 0;
  *&v137[3] = 0;
  memset(v136, 0, 25);
  v119 = 0;
  v138 = **(a1 + 2072);
  v122 = v138[2532];
  if (!v122)
  {
    if (!*(v138 + 5060))
    {
      v138[2531] = archive_string_default_conversion_for_read();
      *(v138 + 5060) = 1;
    }

    v122 = v138[2531];
  }

  ahead = __archive_read_ahead(v144, 7uLL, 0, a4, a5, a6, a7, a8);
  if (!ahead)
  {
    v145 = -30;
    goto LABEL_139;
  }

  v140 = ahead;
  *v137 = *ahead;
  *&v137[3] = *(ahead + 3);
  *(v138 + 6) = archive_le16dec_7(&v137[3]);
  v135 = archive_le16dec_7(&v137[5]);
  if (v135 < 0x20)
  {
    goto LABEL_115;
  }

  crc = crc32(0, v140 + 2, 5u);
  __archive_read_consume(v144, 7uLL);
  if ((v138[3] & 0x10) != 0)
  {
    archive_set_error(v144, 79, "RAR solid archive support unavailable.", v13, v14, v15, v16, v17, v100);
    v145 = -30;
    goto LABEL_139;
  }

  *(v138 + 23) = 0;
  v138[4] = 0;
  v138[5] = 0;
  v138[6] = 0;
  v138[16] = 0;
  v138[14] = 0;
  v138[18] = 0;
  *(v138 + 32) = 0;
  __memset_chk();
  v138[14] = 0;
  v138[15] = 0;
  v138[16] = 0;
  v138[17] = 0;
  v138[6] = 0;
  v138[7] = 0;
  v138[18] = 0;
  v138[19] = 0;
  v23 = __archive_read_ahead(v144, v135 - 7, 0, v18, v19, v20, v21, v22);
  ahead = v23;
  if (!v23)
  {
    archive_set_error(v144, 79, "Failed to read full header content.", v24, v25, v26, v27, v28, v100);
    v145 = -30;
    goto LABEL_139;
  }

  v106 = crc32(crc, ahead, v135 - 7);
  if (v106 != archive_le16dec_7(v137))
  {
    archive_set_error(v144, 79, "Header CRC error", v29, v30, v31, v32, v33, v100);
    v145 = -30;
    goto LABEL_139;
  }

  v140 = ahead;
  v139 = &ahead[v135 - 7];
  v136[0] = *ahead;
  *(v136 + 9) = *(ahead + 9);
  v140 = (ahead + 25);
  *(v138 + 23) = BYTE2(v136[1]);
  v123 = archive_le32dec_11(v136 + 13);
  v138[6] = get_time(v123);
  v138[1] = archive_le32dec_11(v136 + 9);
  if ((v138[3] & 4) != 0)
  {
    archive_entry_set_is_data_encrypted(v143, 1);
    *(v138 + 5078) = 1;
    archive_set_error(v144, 79, "RAR encryption support unavailable.", v34, v35, v36, v37, v38, v100);
  }

  if ((v138[3] & 0x100) != 0)
  {
    if (v140 + 8 > v139)
    {
      goto LABEL_115;
    }

    v147[0] = v136[0];
    v147[1] = *v140;
    v140 += 4;
    v146[0] = DWORD1(v136[0]);
    v146[1] = *v140;
    v140 += 4;
    v138[4] = archive_le64dec_4(v147);
    v138[5] = archive_le64dec_4(v146);
  }

  else
  {
    v138[4] = archive_le32dec_11(v136);
    v138[5] = archive_le32dec_11(v136 + 4);
  }

  if (v138[4] < 0 || v138[5] < 0)
  {
    archive_set_error(v144, 79, "Invalid sizes specified.", v39, v40, v41, v42, v43, v100);
    v145 = -30;
    goto LABEL_139;
  }

  v138[21] = v138[4];
  if (v142 == 122)
  {
    v117 = v140 - ahead;
    if (v138[4] > (0x7FFFFFFFFFFFFFFFLL - v135))
    {
      archive_set_error(v144, 79, "Extended header size too large.", v39, v40, v41, v42, v43, v100);
      v145 = -30;
      goto LABEL_139;
    }

    v135 += v138[4];
    ahead = __archive_read_ahead(v144, v135 - 7, 0, v39, v40, v41, v42, v43);
    if (!ahead)
    {
      archive_set_error(v144, 79, "Failed to read extended header data.", v44, v45, v46, v47, v48, v100);
      v145 = -30;
      goto LABEL_139;
    }

    v139 = &ahead[v135 - 7];
    v140 = &ahead[v117];
  }

  v129 = archive_le16dec_7(&v136[1] + 3);
  if (&v140[v129] > v139)
  {
    archive_set_error(v144, 79, "Invalid filename size", v49, v50, v51, v52, v53, v100);
    v145 = -30;
    goto LABEL_139;
  }

  if (v138[12] < (2 * v129 + 2))
  {
    v116 = malloc_type_realloc(v138[9], 2 * v129 + 2, 0x1EB388C9uLL);
    if (!v116)
    {
      goto LABEL_108;
    }

    v138[9] = v116;
    v138[12] = 2 * v129 + 2;
  }

  v127 = v138[9];
  __memcpy_chk();
  v127[v129] = 0;
  if ((v138[3] & 0x200) == 0)
  {
    v121 = v122;
    while (1)
    {
      v126 = strchr(v127, 92);
      if (!v126)
      {
        break;
      }

      *v126 = 47;
    }

    v140 += v129;
    goto LABEL_94;
  }

  if (v129 == strlen(v127))
  {
    if (!v138[2533])
    {
      v138[2533] = archive_string_conversion_from_charset(v144, "UTF-8", 1);
      if (!v138[2533])
      {
        v145 = -30;
        goto LABEL_139;
      }
    }

    v121 = v138[2533];
    while (1)
    {
      v125 = strchr(v127, 92);
      if (!v125)
      {
        break;
      }

      *v125 = 47;
    }

    v140 += v129;
    goto LABEL_94;
  }

  v128 = v129;
  v113 = 2 * v129;
  v130 = 0;
  v112 = strlen(v127) + 1;
  if (v112 < v128)
  {
    v59 = v112++;
    v105 = v140[v59];
  }

  else
  {
    v105 = 0;
  }

  v115 = 0;
  v114 = 0;
  while (1)
  {
    v104 = 0;
    if (v112 < v128)
    {
      v104 = v130 < v113;
    }

    if (!v104)
    {
      break;
    }

    if (!v115)
    {
      v60 = v112++;
      v114 = v140[v60];
      v115 = 8;
    }

    v115 -= 2;
    v103 = (v114 >> v115) & 3;
    if (v103)
    {
      if (v103 == 1)
      {
        if (v112 < v128)
        {
          v64 = v130;
          v132 = v130 + 1;
          v127[v64] = v105;
          v65 = v112++;
          v66 = v132;
          v130 = v132 + 1;
          v127[v66] = v140[v65];
        }
      }

      else if (v103 == 2)
      {
        if (v112 < v128 - 1)
        {
          v67 = v130;
          v133 = v130 + 1;
          v127[v67] = v140[v112 + 1];
          v68 = v133;
          v130 = v133 + 1;
          v127[v68] = v140[v112];
          v112 += 2;
        }

        else
        {
          v112 = v128;
        }
      }

      else if (v112 < v128)
      {
        v69 = v112++;
        v108 = v140[v69];
        if ((v108 & 0x80) == 0)
        {
          v110 = 0;
          v111 = 0;
          goto LABEL_66;
        }

        if (v112 < v128)
        {
          v70 = v112++;
          v111 = v140[v70];
          v110 = v105;
LABEL_66:
          for (i = (v108 & 0x7F) + 2; ; --i)
          {
            v102 = 0;
            if (i)
            {
              v102 = v130 < v113;
            }

            if (!v102)
            {
              break;
            }

            v107 = v130 >> 1;
            v71 = v130;
            v134 = v130 + 1;
            v127[v71] = v110;
            v72 = v134;
            v130 = v134 + 1;
            v127[v72] = v140[v107] + v111;
          }
        }
      }
    }

    else if (v112 < v128)
    {
      v61 = v130;
      v131 = v130 + 1;
      v127[v61] = 0;
      v62 = v112++;
      v63 = v131;
      v130 = v131 + 1;
      v127[v63] = v140[v62];
    }
  }

  if (v130 > v113)
  {
    archive_set_error(v144, 79, "Invalid filename", v54, v55, v56, v57, v58, v100);
    v145 = -30;
    goto LABEL_139;
  }

  v73 = v130;
  v129 = v130 + 1;
  v127[v73] = 0;
  v127[v129] = 0;
  if (!v138[2534])
  {
    v138[2534] = archive_string_conversion_from_charset(v144, "UTF-16BE", 1);
    if (!v138[2534])
    {
      v145 = -30;
      goto LABEL_139;
    }
  }

  v121 = v138[2534];
  for (j = v127; memcmp(j, &unk_1BF343888, 2uLL); j += 2)
  {
    if (!memcmp(j, &unk_1BF34388B, 2uLL))
    {
      j[1] = 47;
    }
  }

  v140 += v112;
LABEL_94:
  if (v138[10] && v129 == v138[11] && !memcmp(v138[9], v138[10], v129 + 1))
  {
    __archive_read_consume(v144, v135 - 7);
    v138[2537] = 0;
    v138[2538] = 0;
    if (++v138[33] < v138[34])
    {
      goto LABEL_100;
    }

    ++v138[34];
    v79 = malloc_type_realloc(v138[32], 24 * v138[34], 0x1000040504FFAC1uLL);
    v138[32] = v79;
    if (v79)
    {
      *(v138[32] + 24 * v138[33]) = v135;
      *(v138[32] + 24 * v138[33] + 8) = -1;
      *(v138[32] + 24 * v138[33] + 16) = -1;
LABEL_100:
      if ((*(v138[32] + 24 * v138[33] + 8) & 0x8000000000000000) != 0)
      {
        if (v138[4] > 0x7FFFFFFFFFFFFFFFLL - **(v144 + 79))
        {
LABEL_102:
          archive_set_error(v144, 79, "Unable to store offsets.", v8, v9, v10, v11, v12, v100);
          v145 = -30;
          goto LABEL_139;
        }

        *(v138[32] + 24 * v138[33] + 8) = **(v144 + 79);
        *(v138[32] + 24 * v138[33] + 16) = *(v138[32] + 24 * v138[33] + 8) + v138[4];
      }

      v145 = 0;
      goto LABEL_139;
    }

LABEL_108:
    archive_set_error(v144, 12, "Couldn't allocate memory.", v8, v9, v10, v11, v12, v100);
    v145 = -30;
    goto LABEL_139;
  }

  if (*(v138 + 280))
  {
    archive_set_error(v144, 79, "Mismatch of file parts split across multi-volume archive", v74, v75, v76, v77, v78, v100);
    v145 = -30;
    goto LABEL_139;
  }

  v138[10] = malloc_type_realloc(v138[10], v129 + 1, 0x100004077774924uLL);
  v80 = v138[10];
  v81 = v138[9];
  __memcpy_chk();
  v138[11] = v129;
  free(v138[32]);
  v82 = malloc_type_calloc(1uLL, 0x18uLL, 0x1000040504FFAC1uLL);
  v138[32] = v82;
  if (!v82)
  {
    goto LABEL_108;
  }

  *v138[32] = v135;
  *(v138[32] + 8) = -1;
  *(v138[32] + 16) = -1;
  v138[33] = 0;
  v138[34] = 1;
  if ((v138[3] & 0x400) != 0)
  {
    if (v140 + 8 <= v139)
    {
      __memcpy_chk();
      v140 += 8;
      goto LABEL_113;
    }

LABEL_115:
    archive_set_error(v144, 79, "Invalid header size", v8, v9, v10, v11, v12, v100);
    v145 = -30;
    goto LABEL_139;
  }

LABEL_113:
  if ((v138[3] & 0x1000) != 0 && (read_exttime(v140, v138, v139) & 0x80000000) != 0)
  {
    goto LABEL_115;
  }

  __archive_read_consume(v144, v135 - 7);
  if (v138[4] > 0x7FFFFFFFFFFFFFFFLL - **(v144 + 79))
  {
    goto LABEL_102;
  }

  *(v138[32] + 8) = **(v144 + 79);
  *(v138[32] + 16) = *(v138[32] + 8) + v138[4];
  if (SBYTE8(v136[0]) <= 2)
  {
    *(v138 + 32) = archive_le32dec_11(&v136[1] + 5);
    if ((v138[8] & 0x10) != 0)
    {
      *(v138 + 32) = 16457;
    }

    else
    {
      *(v138 + 32) = 0x8000;
    }

    *(v138 + 32) |= 0x1A4u;
  }

  else
  {
    if ((SBYTE8(v136[0]) - 3) > 2)
    {
      archive_set_error(v144, 79, "Unknown file attributes from RAR file's host OS", v8, v9, v10, v11, v12, v100);
      v145 = -30;
      goto LABEL_139;
    }

    *(v138 + 32) = archive_le32dec_11(&v136[1] + 5);
  }

  v138[20] = 0;
  v138[22] = 0;
  v138[23] = 0;
  v138[109] = 0;
  v138[25] = 0;
  *(v138 + 58) = 0;
  v138[24] = 0;
  *(v138 + 5072) = 0;
  v138[2537] = 0;
  v138[2538] = 0;
  v138[30] = 0;
  *(v138 + 237) = 0;
  *(v138 + 208) = 1;
  *(v138 + 986) = 0;
  *(v138 + 912) = 1;
  free(v138[28]);
  v138[28] = 0;
  *(v138 + 53) = 0;
  *(v138 + 54) = 0x20000;
  __memset_chk();
  off_1F3DE4D70((v138 + 124));
  *(v138 + 985) = 0;
  *(v138 + 984) = 0;
  v138[118] = 0x7FFFFFFFFFFFFFFFLL;
  if (v142 == 122)
  {
    v145 = 0;
  }

  else
  {
    archive_entry_set_mtime(v143, v138[6], v138[7]);
    archive_entry_set_ctime(v143, v138[16], v138[17]);
    archive_entry_set_atime(v143, v138[14], v138[15]);
    archive_entry_set_size(v143, v138[5]);
    archive_entry_set_mode(v143, *(v138 + 32));
    if (_archive_entry_copy_pathname_l(v143, v127, v129, v121))
    {
      if (*__error() == 12)
      {
        archive_set_error(v144, 12, "Can't allocate memory for Pathname", v83, v84, v85, v86, v87, v100);
        v145 = -30;
        goto LABEL_139;
      }

      v101 = v144;
      v88 = archive_string_conversion_charset_name(v121);
      archive_set_error(v101, 79, "Pathname cannot be converted from %s to current locale.", v89, v90, v91, v92, v93, v88);
      v119 = -20;
    }

    if ((v138[8] & 0xF000) == 0xA000)
    {
      v138[21] = 0;
      archive_entry_set_size(v143, 0);
      symlink_stored = read_symlink_stored(v144, v143, v122, v94, v95, v96, v97, v98);
      if (symlink_stored < -20)
      {
        v145 = symlink_stored;
        goto LABEL_139;
      }

      if (v119 > symlink_stored)
      {
        v119 = symlink_stored;
      }
    }

    if (!v138[21])
    {
      *(v138 + 237) = 1;
    }

    v145 = v119;
  }

LABEL_139:
  *MEMORY[0x1E69E9840];
  return v145;
}

time_t get_time(int a1)
{
  v3 = a1;
  memset(&__b, 0, sizeof(__b));
  __b.tm_sec = 2 * (v3 & 0x1F);
  __b.tm_min = (v3 >> 5) & 0x3F;
  __b.tm_hour = (v3 >> 11) & 0x1F;
  __b.tm_mday = (v3 >> 16) & 0x1F;
  __b.tm_mon = ((v3 >> 21) & 0xF) - 1;
  __b.tm_year = ((v3 >> 25) & 0x7F) + 80;
  __b.tm_isdst = -1;
  return mktime(&__b);
}

uint64_t read_exttime(unsigned __int8 *a1, time_t *a2, unint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  j = 0;
  v10 = 0;
  v9 = 0;
  i = 0;
  v7 = 0;
  time = 0;
  v5 = 0;
  memset(&v4, 0, sizeof(v4));
  if ((v17 + 2) > v15)
  {
    return -1;
  }

  else
  {
    v13 = archive_le16dec_7(v17);
    v17 += 2;
    for (i = 3; (i & 0x80000000) == 0; --i)
    {
      time = 0;
      if (i == 3)
      {
        time = v16[6];
      }

      v14 = v13 >> (4 * i);
      if ((v14 & 8) != 0)
      {
        if (!time)
        {
          if ((v17 + 4) > v15)
          {
            return -1;
          }

          v9 = archive_le32dec_11(v17);
          time = get_time(v9);
          v17 += 4;
        }

        v12 = 0;
        v10 = v14 & 3;
        if (&v17[v14 & 3] > v15)
        {
          return -1;
        }

        for (j = 0; j < v10; ++j)
        {
          v12 = (v12 >> 8) | (*v17++ << 16);
        }

        v7 = localtime_r(&time, &v4);
        v5 = v7->tm_sec + v12 / 0x989680;
        if ((v14 & 4) != 0)
        {
          ++v7->tm_sec;
          time = mktime(v7);
        }

        switch(i)
        {
          case 3:
            v16[6] = time;
            v16[7] = v5;
            break;
          case 2:
            v16[16] = time;
            v16[17] = v5;
            break;
          case 1:
            v16[14] = time;
            v16[15] = v5;
            break;
          default:
            v16[18] = time;
            v16[19] = v5;
            break;
        }
      }
    }

    return 0;
  }
}

uint64_t read_symlink_stored(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0;
  v28 = **(a1 + 2072);
  v8 = *(v28 + 32);
  ahead = rar_read_ahead(a1, v8, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    if (_archive_entry_copy_symlink_l(a2, ahead, *(v28 + 32), a3))
    {
      if (*__error() == 12)
      {
        archive_set_error(a1, 12, "Can't allocate memory for link", v14, v15, v16, v17, v18, v26);
        return -30;
      }

      v19 = archive_string_conversion_charset_name(a3);
      archive_set_error(a1, 79, "link cannot be converted from %s to current locale.", v20, v21, v22, v23, v24, v19);
      v27 = -20;
    }

    __archive_read_consume(a1, *(v28 + 32));
    return v27;
  }

  archive_set_error(a1, 79, "Failed to read link.", v9, v10, v11, v12, v13, v26);
  return -30;
}

uint64_t rar_read_ahead(uint64_t a1, size_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = **(a1 + 2072);
  while (1)
  {
    ahead = __archive_read_ahead(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!a3)
    {
      break;
    }

    if (*(a1 + 128) && *a3 > *(a1 + 136))
    {
      *a3 = *(a1 + 136);
    }

    if (*a3 > *(v11 + 168))
    {
      *a3 = *(v11 + 168);
    }

    if ((*a3 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    if (*a3 || (*v11 & 1) == 0 || (*(v11 + 24) & 2) == 0)
    {
      break;
    }

    *(v11 + 280) = 1;
    header = archive_read_format_rar_read_header(a1, *(a1 + 144));
    if (header == 1)
    {
      *(v11 + 252) = 1;
      header = archive_read_format_rar_read_header(a1, *(a1 + 144));
    }

    *(v11 + 280) = 0;
    if (header)
    {
      return 0;
    }
  }

  return ahead;
}

uint64_t read_data_stored(uint64_t a1, const Bytef **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = 0;
  *len = 0;
  v18 = **(a1 + 2072);
  if (*(v18 + 168) || (*v18 & 1) != 0 && (*(v18 + 24) & 2) != 0)
  {
    ahead = rar_read_ahead(v22, 1uLL, len, a4, a5, a6, a7, a8);
    *v21 = ahead;
    if (*len > 0)
    {
      *v20 = *len;
      *v19 = *(v18 + 184);
      *(v18 + 184) += *len;
      *(v18 + 200) += *len;
      *(v18 + 168) -= *len;
      *(v18 + 160) = *len;
      v14 = crc32(*(v18 + 240), *v21, len[0]);
      *(v18 + 240) = v14;
      return 0;
    }

    else
    {
      archive_set_error(v22, 79, "Truncated RAR file data", v9, v10, v11, v12, v13, v16);
      return -30;
    }
  }

  else
  {
    *v21 = 0;
    *v20 = 0;
    *v19 = *(v18 + 184);
    if (*(v18 + 8) == *(v18 + 240))
    {
      *(v18 + 237) = 1;
      return 1;
    }

    else
    {
      archive_set_error(v22, 79, "File CRC error", a4, a5, a6, a7, a8, v16);
      return -30;
    }
  }
}

uint64_t read_data_compressed(_DWORD *a1, const Bytef **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5 + 1;
  if (a5 > 0x400)
  {
    return -30;
  }

  v31 = 0;
  v30 = 0;
  v29 = 0;
  v25 = 0;
  v31 = **(v36 + 259);
  while (1)
  {
    if (!*(v31 + 208))
    {
      return -30;
    }

    if (*(v31 + 976))
    {
      if (*(v31 + 212))
      {
        *v35 = *(v31 + 224);
        *v34 = *(v31 + 212);
        *(v31 + 212) = 0;
        *v33 = *(v31 + 192);
        *(v31 + 192) += *v34;
      }

      else
      {
        *v35 = *(v31 + 968);
        *v34 = *(v31 + 976);
        *(v31 + 184) += *v34;
        *v33 = *(v31 + 192);
        *(v31 + 192) += *v34;
        *(v31 + 976) -= *v34;
        *(v31 + 968) += *v34;
      }

      goto LABEL_80;
    }

    if (*(v31 + 985) || *(v31 + 232) && *(v31 + 184) >= *(v31 + 40))
    {
      break;
    }

    if (*(v31 + 986) || !*(v31 + 232) || *(v31 + 176) <= 0)
    {
      if (*(v31 + 960) == *(v31 + 944))
      {
        if (!run_filters(v36))
        {
          return -30;
        }
      }

      else
      {
        if (!*(v31 + 20304))
        {
          v25 = rar_br_preparation(v36, v31 + 20280, a3, a4, a5, a6, a7, a8);
          if (v25 < -20)
          {
            return v25;
          }
        }

        if (*(v31 + 912))
        {
          v25 = parse_codes(v36);
          if (v25 < -20)
          {
            return v25;
          }
        }

        if (!*(v31 + 986))
        {
          v30 = *(v31 + 184);
          v29 = v30 + *(v31 + 232);
          if (*(v31 + 232) > 0x104u)
          {
            v29 -= 260;
          }

          if (*(v31 + 944) < v29)
          {
            v29 = *(v31 + 944);
          }

          v26 = expand(v36, &v29);
          if (v26)
          {
            return v26;
          }

          *(v31 + 176) = v29 - v30;
          *(v31 + 960) = v29;
          if (*(v31 + 960) != *(v31 + 944) && !*(v31 + 176))
          {
            archive_set_error(v36, 79, "Internal error extracting RAR file", v10, v11, v12, v13, v14, v17);
            return -30;
          }

          goto LABEL_72;
        }

        v24 = off_1F3DE4DA0(v31 + 992, v31 + 20176);
        if (v24 < 0)
        {
          goto LABEL_61;
        }

        if (v24 != *(v31 + 988))
        {
          goto LABEL_49;
        }

        v22 = off_1F3DE4DA0(v31 + 992, v31 + 20176);
        if (v22 < 0)
        {
          goto LABEL_61;
        }

        HIDWORD(v17) = v22;
        if (!v22)
        {
          *(v31 + 912) = 1;
          return read_data_compressed(v36, v35, v34, v33, v32);
        }

        if (v22 != 2)
        {
          switch(v22)
          {
            case 3:
              archive_set_error(v36, -1, "Parsing filters is unsupported.", a4, a5, a6, a7, a8, v17);
              return -25;
            case 4:
              v21 = 0;
              for (i = 2; (i & 0x80000000) == 0; --i)
              {
                v23 = off_1F3DE4DA0(v31 + 992, v31 + 20176);
                if (v23 < 0)
                {
                  goto LABEL_61;
                }

                v21 |= v23 << (8 * i);
              }

              v19 = off_1F3DE4DA0(v31 + 992, v31 + 20176);
              if (v19 < 0)
              {
LABEL_61:
                archive_set_error(v36, 79, "Invalid symbol", a4, a5, a6, a7, a8, v17);
                return -30;
              }

              lzss_emit_match(v31, v21 + 2, v19 + 32);
              *(v31 + 176) += v19 + 32;
              break;
            case 5:
              v20 = off_1F3DE4DA0(v31 + 992, v31 + 20176);
              if (v20 < 0)
              {
                goto LABEL_61;
              }

              lzss_emit_match(v31, 1, v20 + 4);
              *(v31 + 176) += v20 + 4;
              break;
            default:
LABEL_49:
              lzss_emit_literal(v31, v24);
              ++*(v31 + 176);
              break;
          }

LABEL_72:
          if (*(v31 + 176) <= (*(v31 + 216) - *(v31 + 212)))
          {
            v28 = *(v31 + 176);
          }

          else
          {
            v28 = (*(v31 + 216) - *(v31 + 212));
          }

          v25 = copy_from_lzss_window_to_unp(v36, v35, *(v31 + 184), v28);
          if (v25)
          {
            return v25;
          }

          *(v31 + 184) += v28;
          *(v31 + 176) -= v28;
          goto LABEL_78;
        }

        *(v31 + 985) = 1;
      }
    }

    else
    {
      if (*(v31 + 176) <= (*(v31 + 216) - *(v31 + 212)))
      {
        v27 = *(v31 + 176);
      }

      else
      {
        v27 = (*(v31 + 216) - *(v31 + 212));
      }

      v25 = copy_from_lzss_window_to_unp(v36, v35, *(v31 + 184), v27);
      if (v25)
      {
        return v25;
      }

      *(v31 + 184) += v27;
      *(v31 + 176) -= v27;
      if (*v35)
      {
        *(v31 + 212) = 0;
        *v34 = *(v31 + 216);
        *v33 = *(v31 + 192);
        *(v31 + 192) += *v34;
        v9 = crc32(*(v31 + 240), *v35, *v34);
        *(v31 + 240) = v9;
        return 0;
      }
    }

LABEL_78:
    if (*v35)
    {
      *(v31 + 212) = 0;
      *v34 = *(v31 + 216);
      *v33 = *(v31 + 192);
      *(v31 + 192) += *v34;
LABEL_80:
      v15 = crc32(*(v31 + 240), *v35, *v34);
      *(v31 + 240) = v15;
      return v25;
    }
  }

  if (*(v31 + 212))
  {
    *v35 = *(v31 + 224);
    *v34 = *(v31 + 212);
    *v33 = *(v31 + 192);
    *(v31 + 192) += *v34;
    v8 = crc32(*(v31 + 240), *v35, *v34);
    *(v31 + 240) = v8;
    *(v31 + 212) = 0;
    return 0;
  }

  else
  {
    *v35 = 0;
    *v34 = 0;
    *v33 = *(v31 + 184);
    if (*(v31 + 8) == *(v31 + 240))
    {
      *(v31 + 237) = 1;
      return 1;
    }

    else
    {
      archive_set_error(v36, 79, "File CRC error", a4, a5, a6, a7, a8, v17);
      return -30;
    }
  }
}

uint64_t copy_from_lzss_window_to_unp(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v23 = **(a1 + 2072);
  if (*(v23 + 224) || (v4 = malloc_type_malloc(*(v23 + 216), 0x3F4796ADuLL), (*(v23 + 224) = v4) != 0))
  {
    v25 = lzss_offset_for_position(v23 + 856, a3);
    if (v25 + a4 > lzss_size(v23 + 856))
    {
      if (a4 > lzss_size(v23 + 856) || (v24 = lzss_size(v23 + 856) - v25, v24 < 0))
      {
        archive_set_error(a1, 79, "Bad RAR file data", v12, v13, v14, v15, v16, v22);
        return -30;
      }

      v17 = *(v23 + 224) + *(v23 + 212);
      v18 = *(v23 + 856);
      if (v24 < a4)
      {
        __memcpy_chk();
        v19 = *(v23 + 224) + (*(v23 + 212) + v24);
        v20 = *(v23 + 856);
      }

      __memcpy_chk();
    }

    else
    {
      v10 = *(v23 + 224) + *(v23 + 212);
      v11 = *(v23 + 856);
      __memcpy_chk();
    }

    *(v23 + 212) += a4;
    if (*(v23 + 212) >= *(v23 + 216))
    {
      *a2 = *(v23 + 224);
    }

    else
    {
      *a2 = 0;
    }

    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Unable to allocate memory for uncompressed data.", v5, v6, v7, v8, v9, v22);
    return -30;
  }
}

uint64_t run_filters(uint64_t a1)
{
  v30 = a1;
  v29 = **(a1 + 2072);
  v28 = v29 + 115;
  v27 = v29[117];
  i = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  if (v29 != -920 && v27)
  {
    v25 = v28[3];
    v24 = v25 + v27[16];
    v28[3] = 0x7FFFFFFFFFFFFFFFLL;
    v23 = v24;
    if (expand(v30, &v23))
    {
      return 0;
    }

    else
    {
      v20 = -30;
      for (i = v28[2]; i; i = *(i + 80))
      {
        if (i == v27)
        {
          v20 = 0;
          break;
        }
      }

      if (v20)
      {
        return 0;
      }

      else if ((v23 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      else
      {
        v24 = v23;
        if (v23 == v25 + v27[16])
        {
          if (*v28 || (v6 = malloc_type_calloc(1uLL, 0x40024uLL, 0x10000406715B213uLL), (*v28 = v6) != 0))
          {
            if (v27[16] > 0x40000u)
            {
              archive_set_error(v30, 79, "Bad RAR file data", v1, v2, v3, v4, v5, v18);
              return 0;
            }

            else if (copy_from_lzss_window(v30, *v28 + 32, v25, v27[16]))
            {
              return 0;
            }

            else
            {
              if (execute_filter(v30, v27, *v28, v29[23], v8, v9, v10, v11))
              {
                while (1)
                {
                  v22 = v27[17];
                  v21 = v27[18];
                  v28[2] = *(v27 + 10);
                  *(v27 + 10) = 0;
                  delete_filter(v27);
                  v27 = v28[2];
                  v19 = 0;
                  if (v27)
                  {
                    v19 = 0;
                    if (*(v27 + 7) == v28[3])
                    {
                      v19 = v27[16] == v21;
                    }
                  }

                  if (!v19)
                  {
                    break;
                  }

                  v12 = *v28 + 32;
                  __memmove_chk();
                  if (!execute_filter(v30, v27, *v28, v29[23], v13, v14, v15, v16))
                  {
                    return 0;
                  }
                }

                if (v28[2])
                {
                  if (*(v28[2] + 56) < v24)
                  {
                    return 0;
                  }

                  v28[3] = *(v28[2] + 56);
                }

                v28[5] = v24;
                v28[6] = *v28 + 32 + v22;
                v28[7] = v21;
                return 1;
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
          return 0;
        }
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t rar_br_preparation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = **(a1 + 2072);
  if (*(v15 + 168) <= 0)
  {
    return 0;
  }

  *(a2 + 24) = rar_read_ahead(a1, 1uLL, (a2 + 16), a4, a5, a6, a7, a8);
  if (*(a2 + 24))
  {
    if (!*(a2 + 8))
    {
      rar_br_fillup(a1, a2, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  archive_set_error(a1, 79, "Truncated RAR file data", v9, v10, v11, v12, v13, v15);
  return -30;
}

uint64_t parse_codes(_DWORD *a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v66 = a1;
  v65 = 0;
  i = 0;
  next_symbol = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  memset(__b, 0, sizeof(__b));
  v56 = **(v66 + 259);
  v55 = (v56 + 20280);
  free_codes(v66);
  *(v56 + 20288) &= 0xFFFFFFF8;
  if (*(v56 + 20288) < 1 && !rar_br_fillup(v66, v55, v1, v2, v3, v4, v5, v6) && *(v56 + 20288) < 1)
  {
    goto LABEL_119;
  }

  v7 = (*(v56 + 20280) >> (*(v56 + 20288) - 1)) & 1;
  *(v56 + 986) = v7;
  if (!v7)
  {
    if (--*(v56 + 20288) >= 1 || rar_br_fillup(v66, v55, v1, v2, v3, v4, v5, v6) || *(v56 + 20288) >= 1)
    {
      if (((*(v56 + 20280) >> (*(v56 + 20288) - 1)) & 1) == 0)
      {
        __memset_chk();
      }

      --*(v56 + 20288);
      v68[0] = 0;
      v68[1] = 0;
      v69 = 0;
      v65 = 0;
      while (v65 < 20)
      {
        if (*(v56 + 20288) < 4 && !rar_br_fillup(v66, v55, v1, v2, v3, v4, v5, v6) && *(v56 + 20288) < 4)
        {
          goto LABEL_119;
        }

        v24 = (*(v56 + 20280) >> (*(v56 + 20288) - 4)) & 0xF;
        v25 = v65++;
        *(v68 + v25) = v24;
        *(v56 + 20288) -= 4;
        if (*(v68 + v65 - 1) == 15)
        {
          if (*(v56 + 20288) < 4 && !rar_br_fillup(v66, v55, v1, v2, v3, v4, v5, v6) && *(v56 + 20288) < 4)
          {
            goto LABEL_119;
          }

          v60 = (*(v56 + 20280) >> (*(v56 + 20288) - 4)) & 0xF;
          *(v56 + 20288) -= 4;
          if (v60)
          {
            --v65;
            for (i = 0; ; ++i)
            {
              v52 = 0;
              if (i < v60 + 2)
              {
                v52 = v65 < 20;
              }

              if (!v52)
              {
                break;
              }

              v26 = v65++;
              *(v68 + v26) = 0;
            }
          }
        }
      }

      memset(__b, 0, sizeof(__b));
      code = create_code(v66, __b, v68, 20, 15);
      v61 = code;
      if (code)
      {
        free(__b[0]);
        free(__b[4]);
        v67 = v61;
        goto LABEL_120;
      }

      v65 = 0;
      while (v65 < 404)
      {
        next_symbol = read_next_symbol(v66, __b, v28, v29, v30, v31, v32, v33);
        if (next_symbol < 0)
        {
          free(__b[0]);
          free(__b[4]);
          v67 = -30;
          goto LABEL_120;
        }

        if (next_symbol >= 16)
        {
          if (next_symbol >= 18)
          {
            if (next_symbol == 18)
            {
              if (*(v56 + 20288) < 3 && !rar_br_fillup(v66, v55, v28, v29, v30, v31, v32, v33) && *(v56 + 20288) < 3)
              {
                goto LABEL_92;
              }

              v62 = ((*(v56 + 20280) >> (*(v56 + 20288) - 3)) & 7) + 3;
              *(v56 + 20288) -= 3;
            }

            else
            {
              if (*(v56 + 20288) < 7 && !rar_br_fillup(v66, v55, v28, v29, v30, v31, v32, v33) && *(v56 + 20288) < 7)
              {
LABEL_92:
                free(__b[0]);
                free(__b[4]);
                goto LABEL_119;
              }

              v62 = ((*(v56 + 20280) >> (*(v56 + 20288) - 7)) & 0x7F) + 11;
              *(v56 + 20288) -= 7;
            }

            for (i = 0; ; ++i)
            {
              v50 = 0;
              if (i < v62)
              {
                v50 = v65 < 404;
              }

              if (!v50)
              {
                break;
              }

              v39 = v65++;
              *(v56 + 448 + v39) = 0;
            }
          }

          else
          {
            if (!v65)
            {
              free(__b[0]);
              free(__b[4]);
              archive_set_error(v66, 79, "Internal error extracting RAR file.", v34, v35, v36, v37, v38, v49);
              v67 = -30;
              goto LABEL_120;
            }

            if (next_symbol == 16)
            {
              if (*(v56 + 20288) < 3 && !rar_br_fillup(v66, v55, v28, v29, v30, v31, v32, v33) && *(v56 + 20288) < 3)
              {
                goto LABEL_92;
              }

              v62 = ((*(v56 + 20280) >> (*(v56 + 20288) - 3)) & 7) + 3;
              *(v56 + 20288) -= 3;
            }

            else
            {
              if (*(v56 + 20288) < 7 && !rar_br_fillup(v66, v55, v28, v29, v30, v31, v32, v33) && *(v56 + 20288) < 7)
              {
                goto LABEL_92;
              }

              v62 = ((*(v56 + 20280) >> (*(v56 + 20288) - 7)) & 0x7F) + 11;
              *(v56 + 20288) -= 7;
            }

            for (i = 0; ; ++i)
            {
              v51 = 0;
              if (i < v62)
              {
                v51 = v65 < 404;
              }

              if (!v51)
              {
                break;
              }

              *(v56 + 448 + v65) = *(v56 + 448 + v65 - 1);
              ++v65;
            }
          }
        }

        else
        {
          *(v56 + 448 + v65) = (*(v56 + 448 + v65) + next_symbol) & 0xF;
          ++v65;
        }
      }

      free(__b[0]);
      free(__b[4]);
      v40 = create_code(v66, (v56 + 288), v56 + 448, 299, 15);
      v61 = v40;
      if (v40)
      {
        v67 = v61;
        goto LABEL_120;
      }

      v61 = create_code(v66, (v56 + 328), v56 + 747, 60, 15);
      if (v61)
      {
        v67 = v61;
        goto LABEL_120;
      }

      v61 = create_code(v66, (v56 + 368), v56 + 807, 17, 15);
      if (v61)
      {
        v67 = v61;
        goto LABEL_120;
      }

      v61 = create_code(v66, (v56 + 408), v56 + 824, 28, 15);
      if (v61)
      {
        v67 = v61;
        goto LABEL_120;
      }

      goto LABEL_108;
    }

    goto LABEL_119;
  }

  if (--*(v56 + 20288) < 7 && !rar_br_fillup(v66, v55, v1, v2, v3, v4, v5, v6) && *(v56 + 20288) < 7)
  {
    goto LABEL_119;
  }

  v59 = (*(v56 + 20280) >> (*(v56 + 20288) - 7)) & 0x7F;
  *(v56 + 20288) -= 7;
  if ((v59 & 0x20) != 0)
  {
    if (*(v56 + 20288) < 8 && !rar_br_fillup(v66, v55, v1, v2, v3, v4, v5, v6) && *(v56 + 20288) < 8)
    {
      goto LABEL_119;
    }

    *(v56 + 232) = ((*(v56 + 20280) >> (*(v56 + 20288) - 8)) + 1) << 20;
    *(v56 + 20288) -= 8;
  }

  if ((v59 & 0x40) != 0)
  {
    if (*(v56 + 20288) >= 8 || rar_br_fillup(v66, v55, v1, v2, v3, v4, v5, v6) || *(v56 + 20288) >= 8)
    {
      v8 = (*(v56 + 20280) >> (*(v56 + 20288) - 8));
      *(v56 + 1020) = v8;
      *(v56 + 988) = v8;
      *(v56 + 20288) -= 8;
      goto LABEL_19;
    }

LABEL_119:
    archive_set_error(v66, 79, "Truncated RAR file data", v2, v3, v4, v5, v6, v49);
    *(v56 + 208) = 0;
    v67 = -30;
    goto LABEL_120;
  }

  *(v56 + 988) = 2;
LABEL_19:
  if ((v59 & 0x20) == 0)
  {
    if (!*(v56 + 984))
    {
      archive_set_error(v66, 79, "Invalid PPMd sequence", v2, v3, v4, v5, v6, v49);
      v67 = -30;
      goto LABEL_120;
    }

    if (!off_1F3DE4D98(v56 + 20176))
    {
      goto LABEL_29;
    }

    goto LABEL_108;
  }

  v58 = (v59 & 0x1F) + 1;
  if (v58 > 0x10)
  {
    v58 = 3 * (v58 - 16) + 16;
  }

  if (v58 != 1)
  {
    off_1F3DE4D70(v56 + 992);
    *(v56 + 20224) = v66;
    *(v56 + 20232) = ppmd_read_1;
    (off_1F3DE4D88[0])((v56 + 20176));
    *(v56 + 20216) = v56 + 20224;
    __archive_ppmd7_functions(v56 + 992);
    if (!*(v56 + 232))
    {
      archive_set_error(v66, 79, "Invalid zero dictionary size", v9, v10, v11, v12, v13, v49);
      v67 = -30;
      goto LABEL_120;
    }

    if (!(off_1F3DE4D68[0])(v56 + 992, *(v56 + 232)))
    {
      archive_set_error(v66, 12, "Out of memory", v14, v15, v16, v17, v18, v49);
      v67 = -30;
      goto LABEL_120;
    }

    if (!off_1F3DE4D98(v56 + 20176))
    {
LABEL_29:
      archive_set_error(v66, 79, "Unable to initialize PPMd range decoder", v19, v20, v21, v22, v23, v49);
      v67 = -30;
      goto LABEL_120;
    }

    off_1F3DE4D78(v56 + 992, v58);
    *(v56 + 984) = 1;
LABEL_108:
    if (!*(v56 + 232) || !*(v56 + 856))
    {
      if (*(v56 + 40) < 0x400000)
      {
        size = 2 * rar_fls(*(v56 + 40));
      }

      else
      {
        size = 0x400000;
      }

      if (!size)
      {
        archive_set_error(v66, 79, "Zero window size is invalid.", v19, v20, v21, v22, v23, v49);
        v67 = -30;
        goto LABEL_120;
      }

      size_4 = malloc_type_realloc(*(v56 + 856), size, 0xAEF225BFuLL);
      if (!size_4)
      {
        archive_set_error(v66, 12, "Unable to allocate memory for uncompressed data.", v41, v42, v43, v44, v45, v49);
        v67 = -30;
        goto LABEL_120;
      }

      *(v56 + 856) = size_4;
      *(v56 + 232) = size;
      v46 = *(v56 + 856);
      v47 = *(v56 + 232);
      __memset_chk();
      *(v56 + 864) = *(v56 + 232) - 1;
    }

    *(v56 + 912) = 0;
    v67 = 0;
    goto LABEL_120;
  }

  archive_set_error(v66, 79, "Truncated RAR file data", v2, v3, v4, v5, v6, v49);
  v67 = -30;
LABEL_120:
  *MEMORY[0x1E69E9840];
  return v67;
}

_BYTE *lzss_emit_literal(uint64_t a1, char a2)
{
  result = lzss_current_pointer((a1 + 856));
  *result = a2;
  ++*(a1 + 872);
  return result;
}

uint64_t lzss_emit_match(uint64_t a1, int a2, int a3)
{
  v10 = lzss_current_offset(a1 + 856);
  result = lzss_mask(a1 + 856);
  v9 = (v10 - a2) & result;
  v6 = a3;
  while (v6 > 0)
  {
    v8 = v6;
    if (v10 <= v9)
    {
      if (v6 > (lzss_size(a1 + 856) - v9))
      {
        v8 = lzss_size(a1 + 856) - v9;
      }
    }

    else if (v6 > (lzss_size(a1 + 856) - v10))
    {
      v8 = lzss_size(a1 + 856) - v10;
    }

    v5 = *(a1 + 856) + v10;
    v4 = *(a1 + 856) + v9;
    if (v10 + v8 < v9 || v9 + v8 < v10)
    {
      __memcpy_chk();
    }

    else
    {
      for (i = 0; i < v8; ++i)
      {
        *(v5 + i) = *(v4 + i);
      }
    }

    v6 -= v8;
    v10 = (v10 + v8) & lzss_mask(a1 + 856);
    result = lzss_mask(a1 + 856);
    v9 = (v9 + v8) & result;
  }

  *(a1 + 872) += a3;
  return result;
}

uint64_t expand(uint64_t a1, uint64_t *a2)
{
  v19 = **(a1 + 2072);
  v18 = (v19 + 20280);
  if (*(v19 + 944) < *a2)
  {
    *a2 = *(v19 + 944);
  }

  while (1)
  {
    if (lzss_position(v19 + 856) >= *a2)
    {
      return 0;
    }

    if (*(v19 + 986))
    {
      *a2 = lzss_position(v19 + 856);
      return 0;
    }

    next_symbol = read_next_symbol(a1, v19 + 288, v2, v3, v4, v5, v6, v7);
    if (next_symbol < 0)
    {
      break;
    }

    if (next_symbol >= 256)
    {
      switch(next_symbol)
      {
        case 256:
          if (*(v19 + 20288) < 1 && !rar_br_fillup(a1, v18, v8, v9, v10, v11, v12, v13) && *(v19 + 20288) < 1)
          {
            goto LABEL_83;
          }

          if (((*(v19 + 20280) >> ((*(v19 + 20288))-- - 1)) & 1) == 0)
          {
            *(v19 + 236) = 1;
            if (*(v19 + 20288) >= 1 || rar_br_fillup(a1, v18, v8, v9, v10, v11, v12, v13) || *(v19 + 20288) >= 1)
            {
              *(v19 + 912) = (*(v19 + 20280) >> ((*(v19 + 20288))-- - 1)) & 1;
              *a2 = lzss_position(v19 + 856);
              return 0;
            }

LABEL_83:
            archive_set_error(a1, 79, "Truncated RAR file data", v9, v10, v11, v12, v13, v18);
            *(v19 + 208) = 0;
            return -30;
          }

          if (parse_codes(a1))
          {
            goto LABEL_84;
          }

          break;
        case 257:
          if (!read_filter(a1, a2, v8, v9, v10, v11, v12, v13))
          {
            goto LABEL_84;
          }

          break;
        case 258:
          if (*(v19 + 880))
          {
            v27 = *(v19 + 884);
            v26 = *(v19 + 880);
            goto LABEL_82;
          }

          break;
        default:
          if (next_symbol > 262)
          {
            if (next_symbol > 270)
            {
              if (next_symbol - 271 > 28)
              {
                goto LABEL_84;
              }

              v26 = expand_lengthbases[next_symbol - 271] + 3;
              if (expand_lengthbits[next_symbol - 271])
              {
                if (*(v19 + 20288) < expand_lengthbits[next_symbol - 271] && !rar_br_fillup(a1, v18, v8, v9, v10, v11, v12, v13) && *(v19 + 20288) < expand_lengthbits[next_symbol - 271])
                {
                  goto LABEL_83;
                }

                v26 += (*(v19 + 20280) >> (*(v19 + 20288) - expand_lengthbits[next_symbol - 271])) & cache_masks_1[expand_lengthbits[next_symbol - 271]];
                *(v19 + 20288) -= expand_lengthbits[next_symbol - 271];
              }

              v21 = read_next_symbol(a1, v19 + 328, v8, v9, v10, v11, v12, v13);
              if (v21 < 0 || v21 > 60)
              {
                goto LABEL_84;
              }

              v27 = expand_offsetbases[v21] + 1;
              if (expand_offsetbits[v21])
              {
                if (v21 <= 9)
                {
                  if (*(v19 + 20288) < expand_offsetbits[v21] && !rar_br_fillup(a1, v18, v16, v9, v10, v11, v12, v13) && *(v19 + 20288) < expand_offsetbits[v21])
                  {
                    goto LABEL_83;
                  }

                  v27 += (*(v19 + 20280) >> (*(v19 + 20288) - expand_offsetbits[v21])) & cache_masks_1[expand_offsetbits[v21]];
                  *(v19 + 20288) -= expand_offsetbits[v21];
                }

                else
                {
                  if (expand_offsetbits[v21] > 4u)
                  {
                    if (*(v19 + 20288) < expand_offsetbits[v21] - 4 && !rar_br_fillup(a1, v18, v16, v9, v10, v11, v12, v13) && *(v19 + 20288) < expand_offsetbits[v21] - 4)
                    {
                      goto LABEL_83;
                    }

                    v27 += 16 * ((*(v19 + 20280) >> (*(v19 + 20288) - (expand_offsetbits[v21] - 4))) & cache_masks_1[expand_offsetbits[v21] - 4]);
                    *(v19 + 20288) -= expand_offsetbits[v21] - 4;
                  }

                  if (*(v19 + 908))
                  {
                    --*(v19 + 908);
                    v27 += *(v19 + 904);
                  }

                  else
                  {
                    v20 = read_next_symbol(a1, v19 + 368, v16, v9, v10, v11, v12, v13);
                    if (v20 < 0)
                    {
                      goto LABEL_84;
                    }

                    if (v20 == 16)
                    {
                      *(v19 + 908) = 15;
                      v27 += *(v19 + 904);
                    }

                    else
                    {
                      v27 += v20;
                      *(v19 + 904) = v20;
                    }
                  }
                }
              }

              if (v27 >= 0x40000)
              {
                ++v26;
              }

              if (v27 >= 0x2000)
              {
                ++v26;
              }

              for (i = 3; i > 0; --i)
              {
                *(v19 + 888 + 4 * i) = *(v19 + 888 + 4 * (i - 1));
              }

              *(v19 + 888) = v27;
            }

            else
            {
              v27 = expand_shortbases[next_symbol - 263] + 1;
              if (expand_shortbits[next_symbol - 263])
              {
                if (*(v19 + 20288) < expand_shortbits[next_symbol - 263] && !rar_br_fillup(a1, v18, v8, v9, v10, v11, v12, v13) && *(v19 + 20288) < expand_shortbits[next_symbol - 263])
                {
                  goto LABEL_83;
                }

                v27 += (*(v19 + 20280) >> (*(v19 + 20288) - expand_shortbits[next_symbol - 263])) & cache_masks_1[expand_shortbits[next_symbol - 263]];
                *(v19 + 20288) -= expand_shortbits[next_symbol - 263];
              }

              v26 = 2;
              for (j = 3; j > 0; --j)
              {
                *(v19 + 888 + 4 * j) = *(v19 + 888 + 4 * (j - 1));
              }

              *(v19 + 888) = v27;
            }
          }

          else
          {
            v27 = *(v19 + 888 + 4 * (next_symbol - 259));
            v25 = read_next_symbol(a1, v19 + 408, v8, v9, v10, v11, v12, v13);
            if (v25 < 0 || v25 > 28)
            {
              goto LABEL_84;
            }

            v26 = expand_lengthbases[v25] + 2;
            if (expand_lengthbits[v25])
            {
              if (*(v19 + 20288) < expand_lengthbits[v25] && !rar_br_fillup(a1, v18, v15, v9, v10, v11, v12, v13) && *(v19 + 20288) < expand_lengthbits[v25])
              {
                goto LABEL_83;
              }

              v26 += (*(v19 + 20280) >> (*(v19 + 20288) - expand_lengthbits[v25])) & cache_masks_1[expand_lengthbits[v25]];
              *(v19 + 20288) -= expand_lengthbits[v25];
            }

            for (k = next_symbol - 259; k > 0; --k)
            {
              *(v19 + 888 + 4 * k) = *(v19 + 888 + 4 * (k - 1));
            }

            *(v19 + 888) = v27;
          }

LABEL_82:
          *(v19 + 884) = v27;
          *(v19 + 880) = v26;
          lzss_emit_match(v19, *(v19 + 884), *(v19 + 880));
          break;
      }
    }

    else
    {
      lzss_emit_literal(v19, next_symbol);
    }
  }

LABEL_84:
  archive_set_error(a1, 79, "Bad RAR file data", v9, v10, v11, v12, v13, v18);
  return -30;
}

uint64_t copy_from_lzss_window(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = **(a1 + 2072);
  v15 = lzss_offset_for_position(v13 + 856, a3);
  v14 = lzss_size(v13 + 856) - v15;
  if (v14 < 0)
  {
    archive_set_error(a1, 79, "Bad RAR file data", v4, v5, v6, v7, v8, v12);
    return -30;
  }

  else
  {
    v9 = *(v13 + 856);
    if (v14 < a4)
    {
      __memcpy_chk();
      v10 = *(v13 + 856);
    }

    __memcpy_chk();
    return 0;
  }
}

uint64_t execute_filter(_DWORD *a1, _DWORD *a2, uint64_t a3, vm_size_t a4, mach_msg_type_number_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(*(*a2 + 32))
  {
    case 0x1D0E06077DLL:
      return execute_filter_delta(a2, a3);
    case 0x35AD576887:
      return execute_filter_e8(a2, a3, a4, 0, a5);
    case 0x393CD7E57ELL:
      return execute_filter_e8(a2, a3, a4, 1, a5);
    case 0x951C2C5DC8:
      return execute_filter_rgb(a2, a3);
    case 0xD8BC85E701:
      return execute_filter_audio(a2, a3);
    default:
      archive_set_error(a1, 79, "No support for RAR VM program filter", a4, a5, a6, a7, a8, v9);
      return 0;
  }
}

uint64_t execute_filter_delta(_DWORD *a1, uint64_t a2)
{
  v11 = a1[6];
  v10 = a1[2];
  if (v11 <= 0x1E000)
  {
    v9 = (a2 + 32);
    v8 = a2 + 32 + v11;
    for (i = 0; i < v10; ++i)
    {
      v5 = 0;
      for (j = i; j < v11; j += v10)
      {
        if (v9 >= v8)
        {
          return 0;
        }

        v2 = v9++;
        v3 = v5 - *v2;
        *(v8 + j) = v3;
        v5 = v3;
      }
    }

    a1[17] = v11;
    a1[18] = v11;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t execute_filter_e8(_DWORD *a1, uint64_t a2, vm_size_t a3, vm_offset_t *a4, mach_msg_type_number_t *a5)
{
  v11 = a3;
  v10 = a4;
  v9 = a1[6];
  if (v9 <= 0x3C000 && v9 > 4)
  {
    for (i = 0; i <= v9 - 5; ++i)
    {
      if (*(a2 + 32 + i) == 232 || v10 && *(a2 + 32 + i) == 233)
      {
        v7 = v11 + i + 1;
        _32 = vm_read_32(a2, i + 1, a3, a4, a5);
        if ((_32 & 0x80000000) != 0 && v7 >= -_32)
        {
          vm_write_32(a2, i + 1, _32 + 0x1000000, a4);
        }

        else if ((_32 & 0x80000000) == 0 && _32 < 0x1000000)
        {
          vm_write_32(a2, i + 1, _32 - v7, a4);
        }

        i += 4;
      }
    }

    a1[17] = 0;
    a1[18] = v9;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t execute_filter_rgb(_DWORD *a1, uint64_t a2)
{
  v19 = a1[2];
  v18 = a1[3];
  v17 = a1[6];
  if (v17 <= 0x1E000 && v19 <= v17 && v17 >= 3 && v18 <= 2)
  {
    v16 = (a2 + 32);
    v15 = a2 + 32 + v17;
    for (i = 0; i < 3; ++i)
    {
      v11 = 0;
      v10 = (v15 + i - v19);
      for (j = i; j < v17; j += 3)
      {
        if (v16 >= v15)
        {
          return 0;
        }

        if (v10 >= v15)
        {
          v2 = v10[3] - *v10;
          if (v2 <= 0)
          {
            v2 = *v10 - v10[3];
          }

          v9 = v2;
          v3 = v11 - *v10;
          if (v3 <= 0)
          {
            v3 = *v10 - v11;
          }

          v8 = v3;
          v4 = v10[3] - *v10 + v11 - *v10;
          if (v4 <= 0)
          {
            v4 = *v10 - (v10[3] - *v10 + v11);
          }

          if (v9 > v8 || v9 > v4)
          {
            if (v8 > v4)
            {
              v7 = *v10;
            }

            else
            {
              v7 = v10[3];
            }

            v11 = v7;
          }
        }

        v5 = v16++;
        v11 -= *v5;
        *(v15 + j) = v11;
        v10 += 3;
      }
    }

    for (k = v18; k < v17 - 2; k += 3)
    {
      *(v15 + k) += *(v15 + k + 1);
      *(v15 + k + 2) += *(v15 + k + 1);
    }

    a1[17] = v17;
    a1[18] = v17;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t execute_filter_audio(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v27 = a2;
  v26 = *(a1 + 24);
  v25 = *(a1 + 8);
  v24 = 0;
  v23 = 0;
  i = 0;
  j = 0;
  if (v26 <= 0x1E000)
  {
    v24 = (v27 + 32);
    v23 = v27 + 32 + v26;
    for (i = 0; i < v25; ++i)
    {
      memset(__b, 0, sizeof(__b));
      for (j = i; j < v26; j += v25)
      {
        if (v24 >= v23)
        {
          return 0;
        }

        v2 = v24++;
        v19 = *v2;
        HIWORD(__b[2]) = __b[2];
        LOWORD(__b[2]) = SBYTE2(__b[3]) - HIWORD(__b[1]);
        HIWORD(__b[1]) = SBYTE2(__b[3]);
        v18 = ((8 * LOBYTE(__b[16]) + SLOBYTE(__b[0]) * SBYTE2(__b[3]) + SBYTE1(__b[0]) * SLOWORD(__b[2]) + SBYTE2(__b[0]) * SHIWORD(__b[2])) >> 3) - v19;
        v17 = 8 * v19;
        if (v17 > 0)
        {
          v3 = 8 * v19;
        }

        else
        {
          v3 = -8 * v19;
        }

        __b[4] += v3;
        if (v17 - SHIWORD(__b[1]) > 0)
        {
          v4 = v17 - SHIWORD(__b[1]);
        }

        else
        {
          v4 = SHIWORD(__b[1]) - v17;
        }

        __b[5] += v4;
        v5 = v17 + SHIWORD(__b[1]);
        if (v5 > 0)
        {
          v6 = v17 + SHIWORD(__b[1]);
        }

        else
        {
          v6 = -v5;
        }

        __b[6] += v6;
        if (v17 - SLOWORD(__b[2]) > 0)
        {
          v7 = v17 - SLOWORD(__b[2]);
        }

        else
        {
          v7 = SLOWORD(__b[2]) - v17;
        }

        __b[7] += v7;
        v8 = v17 + SLOWORD(__b[2]);
        if (v8 > 0)
        {
          v9 = v17 + SLOWORD(__b[2]);
        }

        else
        {
          v9 = -v8;
        }

        __b[8] += v9;
        if (v17 - SHIWORD(__b[2]) > 0)
        {
          v10 = v17 - SHIWORD(__b[2]);
        }

        else
        {
          v10 = SHIWORD(__b[2]) - v17;
        }

        __b[9] += v10;
        v11 = v17 + SHIWORD(__b[2]);
        if (v11 > 0)
        {
          v12 = v17 + SHIWORD(__b[2]);
        }

        else
        {
          v12 = -v11;
        }

        __b[10] += v12;
        BYTE2(__b[3]) = v18 - LOBYTE(__b[16]);
        LOBYTE(__b[16]) = v18;
        *(v23 + j) = v18;
        v13 = __b[15];
        ++__b[15];
        if ((v13 & 0x1F) == 0)
        {
          v15 = 0;
          for (k = 1; k < 7u; ++k)
          {
            if (__b[k + 4] < __b[v15 + 4])
            {
              v15 = k;
            }
          }

          memset(&__b[4], 0, 0x2CuLL);
          switch(v15)
          {
            case 1u:
              if (SLOBYTE(__b[0]) >= -16)
              {
                --LOBYTE(__b[0]);
              }

              break;
            case 2u:
              if (SLOBYTE(__b[0]) < 16)
              {
                ++LOBYTE(__b[0]);
              }

              break;
            case 3u:
              if (SBYTE1(__b[0]) >= -16)
              {
                --BYTE1(__b[0]);
              }

              break;
            case 4u:
              if (SBYTE1(__b[0]) < 16)
              {
                ++BYTE1(__b[0]);
              }

              break;
            case 5u:
              if (SBYTE2(__b[0]) >= -16)
              {
                --BYTE2(__b[0]);
              }

              break;
            default:
              if (v15 == 6 && SBYTE2(__b[0]) < 16)
              {
                ++BYTE2(__b[0]);
              }

              break;
          }
        }
      }
    }

    *(v28 + 68) = v26;
    *(v28 + 72) = v26;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_le32enc_7(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t rar_br_fillup(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = **(a1 + 2072);
  for (i = 64 - *(a2 + 2); ; i -= 8)
  {
    v11 = i >> 3;
    if (!(i >> 3))
    {
      return 1;
    }

    if (v11 == 6)
    {
      if (a2[2] >= 6)
      {
        *a2 = (*a2[3] << 40) | (*a2 << 48) | (*(a2[3] + 1) << 32) | (*(a2[3] + 2) << 24) | (*(a2[3] + 3) << 16) | (*(a2[3] + 4) << 8) | *(a2[3] + 5);
        a2[3] += 6;
        a2[2] -= 6;
        *(a2 + 2) += 48;
        *(v13 + 160) += 6;
        *(v13 + 168) -= 6;
        return 1;
      }
    }

    else if (v11 == 7)
    {
      if (a2[2] >= 7)
      {
        *a2 = (*a2[3] << 48) | (*a2 << 56) | (*(a2[3] + 1) << 40) | (*(a2[3] + 2) << 32) | (*(a2[3] + 3) << 24) | (*(a2[3] + 4) << 16) | (*(a2[3] + 5) << 8) | *(a2[3] + 6);
        a2[3] += 7;
        a2[2] -= 7;
        *(a2 + 2) += 56;
        *(v13 + 160) += 7;
        *(v13 + 168) -= 7;
        return 1;
      }
    }

    else if (v11 == 8 && a2[2] >= 8)
    {
      *a2 = _byteswap_uint64(*a2[3]);
      a2[3] += 8;
      a2[2] -= 8;
      *(a2 + 2) += 64;
      *(v13 + 160) += 8;
      *(v13 + 168) -= 8;
      return 1;
    }

    if (a2[2] <= 0)
    {
      if (*(v13 + 160) > 0)
      {
        __archive_read_consume(a1, *(v13 + 160));
        *(v13 + 160) = 0;
      }

      a2[3] = rar_read_ahead(a1, 1uLL, a2 + 2, a4, a5, a6, a7, a8);
      if (!a2[3])
      {
        return 0;
      }

      if (!a2[2])
      {
        break;
      }
    }

    v8 = *a2;
    v9 = a2[3];
    a2[3] = (v9 + 1);
    *a2 = *v9 | (v8 << 8);
    --a2[2];
    *(a2 + 2) += 8;
    ++*(v13 + 160);
    --*(v13 + 168);
  }

  return 0;
}

uint64_t ppmd_read_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *a1;
  v16 = **(*a1 + 2072);
  HIBYTE(v14) = 0;
  if (*(v16 + 20288) >= 8 || rar_br_fillup(v17, (v16 + 20280), a3, a4, a5, a6, a7, a8) || *(v16 + 20288) >= 8)
  {
    v15 = *(v16 + 20280) >> (*(v16 + 20288) - 8);
    *(v16 + 20288) -= 8;
    return v15;
  }

  else
  {
    archive_set_error(v17, 79, "Truncated RAR file data", v8, v9, v10, v11, v12, v14);
    *(v16 + 208) = 0;
    return 0;
  }
}

uint64_t create_code(_DWORD *a1, _DWORD *a2, uint64_t a3, int a4, char a5)
{
  v12 = a4;
  a2[2] = 0;
  a2[3] = 0;
  if ((new_node(a2) & 0x80000000) != 0)
  {
    archive_set_error(a1, 12, "Unable to allocate memory for node data.", v5, v6, v7, v8, v9, v11);
    return -30;
  }

  else
  {
    a2[2] = 1;
    a2[4] = 0x7FFFFFFF;
    a2[5] = 0x80000000;
    v13 = 0;
    for (i = 1; i <= a5; ++i)
    {
      for (j = 0; j < a4; ++j)
      {
        if (*(a3 + j) == i)
        {
          if (add_value(a1, a2, j, v13, i))
          {
            return -30;
          }

          ++v13;
          if (--v12 <= 0)
          {
            break;
          }
        }
      }

      if (v12 <= 0)
      {
        break;
      }

      v13 *= 2;
    }

    return 0;
  }
}

uint64_t read_next_symbol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 32) || !make_table(a1, a2))
  {
    v10 = **(a1 + 2072);
    v9 = (v10 + 20280);
    if (*(v10 + 20288) >= *(a2 + 24) || rar_br_fillup(a1, v9, a3, a4, a5, a6, a7, a8) || *(v10 + 20288) >= *(a2 + 24))
    {
      v14 = (*(v10 + 20280) >> (*(v10 + 20288) - *(a2 + 24))) & cache_masks_1[*(a2 + 24)];
      v13 = *(*(a2 + 32) + 8 * v14);
      v12 = *(*(a2 + 32) + 8 * v14 + 4);
      if (v13 < 0)
      {
LABEL_9:
        archive_set_error(a1, 79, "Invalid prefix code in bitstream", a4, a5, a6, a7, a8, v9);
        return -1;
      }

      else if (v13 > *(a2 + 24))
      {
        *(v10 + 20288) -= *(a2 + 24);
        for (i = v12; *(*a2 + 8 * i) != *(*a2 + 8 * i + 4); i = *(*a2 + 8 * i + 4 * v15))
        {
          if (*(v10 + 20288) < 1 && !rar_br_fillup(a1, v9, a3, a4, a5, a6, a7, a8) && *(v10 + 20288) < 1)
          {
            goto LABEL_7;
          }

          v15 = (*(v10 + 20280) >> ((*(v10 + 20288))-- - 1)) & 1;
          if ((*(*a2 + 8 * i + 4 * v15) & 0x80000000) != 0)
          {
            goto LABEL_9;
          }
        }

        return *(*a2 + 8 * i);
      }

      else
      {
        *(v10 + 20288) -= v13;
        return v12;
      }
    }

    else
    {
LABEL_7:
      archive_set_error(a1, 79, "Truncated RAR file data", a4, a5, a6, a7, a8, v9);
      *(v10 + 208) = 0;
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t new_node(uint64_t a1)
{
  if (*(a1 + 12) != *(a1 + 8))
  {
    goto LABEL_7;
  }

  v2 = 256;
  if (*(a1 + 8) > 0)
  {
    v2 = 2 * *(a1 + 8);
  }

  v3 = malloc_type_realloc(*a1, 8 * v2, 0x100004000313F17uLL);
  if (v3)
  {
    *a1 = v3;
    *(a1 + 12) = v2;
LABEL_7:
    *(*a1 + 8 * *(a1 + 8)) = -1;
    *(*a1 + 8 * *(a1 + 8) + 4) = -2;
    return 1;
  }

  return -1;
}

uint64_t add_value(_DWORD *a1, uint64_t a2, int a3, int a4, int a5)
{
  LODWORD(v12) = 0;
  free(*(a2 + 32));
  *(a2 + 32) = 0;
  if (a5 > *(a2 + 20))
  {
    *(a2 + 20) = a5;
  }

  if (a5 < *(a2 + 16))
  {
    *(a2 + 16) = a5;
  }

  v13 = 0;
  for (HIDWORD(v12) = a5 - 1; (v12 & 0x8000000000000000) == 0; --HIDWORD(v12))
  {
    LODWORD(v12) = (a4 >> SBYTE4(v12)) & 1;
    if (*(*a2 + 8 * v13) == *(*a2 + 8 * v13 + 4))
    {
      goto LABEL_8;
    }

    if ((*(*a2 + 8 * v13 + 4 * v12) & 0x80000000) != 0)
    {
      if ((new_node(a2) & 0x80000000) != 0)
      {
        archive_set_error(a1, 12, "Unable to allocate memory for node data.", v5, v6, v7, v8, v9, v12);
        return -30;
      }

      v10 = *(a2 + 8);
      *(a2 + 8) = v10 + 1;
      *(*a2 + 8 * v13 + 4 * v12) = v10;
    }

    v13 = *(*a2 + 8 * v13 + 4 * v12);
  }

  if (*(*a2 + 8 * v13) != -1 || *(*a2 + 8 * v13 + 4) != -2)
  {
LABEL_8:
    archive_set_error(a1, 79, "Prefix found", v5, v6, v7, v8, v9, v12);
    return -30;
  }

  *(*a2 + 8 * v13) = a3;
  *(*a2 + 8 * v13 + 4) = a3;
  return 0;
}

uint64_t make_table(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 20) >= *(a2 + 16) && *(a2 + 20) <= 10)
  {
    *(a2 + 24) = *(a2 + 20);
  }

  else
  {
    *(a2 + 24) = 10;
  }

  *(a2 + 32) = malloc_type_calloc(1uLL, 8 * (1 << *(a2 + 24)), 0x100004000313F17uLL);
  return make_table_recurse(a1, a2, 0, *(a2 + 32), 0, *(a2 + 24), v2, v3);
}

uint64_t make_table_recurse(_DWORD *a1, uint64_t a2, int a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a5;
  v13 = a6;
  HIDWORD(v9) = 0;
  if (*a2)
  {
    if (a3 < 0 || a3 >= *(a2 + 8))
    {
      archive_set_error(a1, 79, "Invalid location to Huffman tree specified.", a4, a5, a6, a7, a8, v9);
      return -30;
    }

    else
    {
      v12 = 1 << (a6 - a5);
      if (*(*a2 + 8 * a3) == *(*a2 + 8 * a3 + 4))
      {
        for (i = 0; i < v12; ++i)
        {
          a4[2 * i] = a5;
          a4[2 * i + 1] = *(*a2 + 8 * a3);
        }
      }

      else if (a5 == a6)
      {
        *a4 = a6 + 1;
        a4[1] = a3;
      }

      else
      {
        table_recurse = make_table_recurse(a1, a2, *(*a2 + 8 * a3), a4, (a5 + 1), a6);
        HIDWORD(v9) = table_recurse | make_table_recurse(a1, a2, *(*a2 + 8 * a3 + 4), &a4[2 * (v12 / 2)], (v14 + 1), v13);
      }

      return HIDWORD(v9);
    }
  }

  else
  {
    archive_set_error(a1, 79, "Huffman tree was not created.", a4, a5, a6, a7, a8, v9);
    return -30;
  }
}

uint64_t read_filter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  v34 = a2;
  v33 = **(a1 + 2072);
  v32 = 0;
  v31 = 0;
  if (rar_decode_byte(a1, &v32, a3, a4, a5, a6, a7, a8))
  {
    size = (v32 & 7) + 1;
    if (size == 7)
    {
      if (!rar_decode_byte(v35, &v31, v8, v9, v10, v11, v12, v13))
      {
        return 0;
      }

      size = v31 + 7;
    }

    else if (size == 8)
    {
      if (!rar_decode_byte(v35, &v31, v8, v9, v10, v11, v12, v13))
      {
        return 0;
      }

      sizea = v31 << 8;
      if (!rar_decode_byte(v35, &v31, v14, v15, v16, v17, v18, v19))
      {
        return 0;
      }

      size = sizea | v31;
    }

    size_2 = malloc_type_malloc(size, 0x595D1B09uLL);
    if (size_2)
    {
      for (i = 0; i < size; ++i)
      {
        if (!rar_decode_byte(v35, &size_2[i], v20, v21, v22, v23, v24, v25))
        {
          goto LABEL_18;
        }
      }

      if (!parse_filter_0(v35, size_2, size, v32))
      {
LABEL_18:
        free(size_2);
        return 0;
      }

      free(size_2);
      if (*(v33 + 944) < *v34)
      {
        *v34 = *(v33 + 944);
      }

      return 1;
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

uint64_t rar_decode_byte(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(a1 + 2072);
  if (*(v9 + 20288) >= 8 || rar_br_fillup(a1, (v9 + 20280), a3, a4, a5, a6, a7, a8) || *(v9 + 20288) >= 8)
  {
    *a2 = *(v9 + 20280) >> (*(v9 + 20288) - 8);
    *(v9 + 20288) -= 8;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t parse_filter_0(uint64_t a1, uint64_t a2, unsigned __int16 a3, char a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = **(a1 + 2072);
  v28 = v29 + 920;
  memset(__b, 0, sizeof(__b));
  v35 = 0u;
  v36 = 0u;
  __b[0] = v32;
  __b[1] = v31;
  v22 = 0;
  for (i = *(v29 + 928); i; i = *(i + 48))
  {
    ++v22;
  }

  if (v30 < 0)
  {
    rarvm_number = membr_next_rarvm_number(__b);
    if (rarvm_number)
    {
      --rarvm_number;
    }

    else
    {
      delete_filter(*(v28 + 16));
      *(v28 + 16) = 0;
      delete_program_code(*(v28 + 8));
      *(v28 + 8) = 0;
    }

    if (rarvm_number > v22)
    {
      v34 = 0;
      goto LABEL_72;
    }

    *(v28 + 32) = rarvm_number;
  }

  else
  {
    rarvm_number = *(v28 + 32);
  }

  v26 = *(v28 + 8);
  for (j = 0; j < rarvm_number; ++j)
  {
    v26 = v26[6];
  }

  if (v26)
  {
    ++*(v26 + 10);
  }

  v7 = membr_next_rarvm_number(__b);
  v17 = lzss_position(v29 + 856) + v7;
  if ((v30 & 0x40) != 0)
  {
    v17 += 258;
  }

  if ((v30 & 0x20) != 0)
  {
    v20 = membr_next_rarvm_number(__b);
  }

  else
  {
    if (v26)
    {
      v6 = *(v26 + 11);
    }

    else
    {
      v6 = 0;
    }

    v20 = v6;
  }

  if (v20 <= *(v29 + 232))
  {
    HIDWORD(v35) = 245760;
    LODWORD(v36) = v20;
    if (v26)
    {
      v5 = *(v26 + 10);
    }

    else
    {
      v5 = 0;
    }

    DWORD1(v36) = v5;
    HIDWORD(v36) = 0x40000;
    if ((v30 & 0x10) != 0)
    {
      size_7 = membr_bits(__b, 7);
      for (k = 0; k < 7; ++k)
      {
        if ((size_7 & (1 << k)) != 0)
        {
          *(&v35 + k) = membr_next_rarvm_number(__b);
        }
      }
    }

    if (!v26)
    {
      size = membr_next_rarvm_number(__b);
      if (!size || size > 0x10000)
      {
        v34 = 0;
        goto LABEL_72;
      }

      v9 = malloc_type_malloc(size, 0xBCB44236uLL);
      if (!v9)
      {
        v34 = 0;
        goto LABEL_72;
      }

      for (m = 0; m < size; ++m)
      {
        v9[m] = membr_bits(__b, 8);
      }

      v26 = compile_program(v9, size);
      if (!v26)
      {
        free(v9);
        v34 = 0;
        goto LABEL_72;
      }

      free(v9);
        ;
      }

      *n = v26;
    }

    *(v26 + 11) = v20;
    v18 = 0;
    v19 = 0;
    if ((v30 & 8) != 0)
    {
      v19 = membr_next_rarvm_number(__b);
      if (v19 > 0x1FC0)
      {
        v34 = 0;
        goto LABEL_72;
      }

      v18 = malloc_type_malloc(v19 + 64, 0x2A720A33uLL);
      if (!v18)
      {
        v34 = 0;
        goto LABEL_72;
      }

      for (ii = 0; ii < v19; ++ii)
      {
        v18[ii + 64] = membr_bits(__b, 8);
      }
    }

    if (HIDWORD(__b[4]))
    {
      free(v18);
      v34 = 0;
    }

    else
    {
      filter = create_filter(v26, v18, v19, &v35, v17, v20);
      free(v18);
      if (filter)
      {
        for (jj = 0; jj < 7; ++jj)
        {
          archive_le32enc_7(*(filter + 5) + 4 * jj, *(&v35 + jj));
        }

        archive_le32enc_7(*(filter + 5) + 28, v20);
        archive_le32enc_7(*(filter + 5) + 32, 0);
        archive_le32enc_7(*(filter + 5) + 44, *(v26 + 10));
          ;
        }

        *kk = filter;
        if (!*(*(v28 + 16) + 80))
        {
          *(v28 + 24) = v17;
        }

        v34 = 1;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 0;
  }

LABEL_72:
  *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t membr_next_rarvm_number(uint64_t a1)
{
  v2 = membr_bits(a1, 2);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = membr_bits(a1, 8);
      if (v3 < 0x10)
      {
        return ((16 * v3) | 0xFFFFFF00 | membr_bits(a1, 4));
      }

      else
      {
        return v3;
      }
    }

    else if (v2 == 2)
    {
      return membr_bits(a1, 16);
    }

    else
    {
      return membr_bits(a1, 32);
    }
  }

  else
  {
    return membr_bits(a1, 4);
  }
}

uint64_t membr_bits(uint64_t a1, int a2)
{
  if (a2 <= *(a1 + 32) || !*(a1 + 36) && membr_fill(a1, a2))
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32) - a2;
    *(a1 + 32) = v3;
    return ((v2 >> v3) & ((1 << a2) - 1));
  }

  else
  {
    return 0;
  }
}

void *compile_program(const Bytef *a1, unint64_t a2)
{
  v10 = a1;
  v9 = a2;
  memset(__b, 0, sizeof(__b));
  v6 = 0;
  for (i = 1; i < v9; ++i)
  {
    v6 ^= v10[i];
  }

  if (!v9 || v6 != *v10)
  {
    return 0;
  }

  __b[0] = v10;
  __b[1] = v9;
  __b[2] = 1;
  v7 = malloc_type_calloc(1uLL, 0x38uLL, 0x103004064E93543uLL);
  if (v7)
  {
    v2 = crc32(0, v10, v9);
    v7[4] = v2 | (v9 << 32);
    if (membr_bits(__b, 1))
    {
      *(v7 + 2) = membr_next_rarvm_number(__b) + 1;
      *v7 = malloc_type_malloc(*(v7 + 2), 0xADFE9696uLL);
      if (!*v7)
      {
        delete_program_code(v7);
        return 0;
      }

      for (j = 0; j < *(v7 + 2); ++j)
      {
        *(*v7 + j) = membr_bits(__b, 8);
      }
    }

    return v7;
  }

  return 0;
}

unsigned int *create_filter(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v9 = malloc_type_calloc(1uLL, 0x58uLL, 0x10300403FB173E5uLL);
  if (!v9)
  {
    return 0;
  }

  *v9 = a1;
  if (a3 > 0x40)
  {
    v8 = a3;
  }

  else
  {
    v8 = 64;
  }

  v9[12] = v8;
  *(v9 + 5) = malloc_type_calloc(1uLL, v9[12], 0xEBE5B60uLL);
  if (!*(v9 + 5))
  {
    return 0;
  }

  if (a2)
  {
    v6 = *(v9 + 5);
    __memcpy_chk();
  }

  if (a4)
  {
    __memcpy_chk();
  }

  *(v9 + 7) = a5;
  v9[16] = a6;
  return v9;
}

uint64_t membr_fill(uint64_t *a1, int a2)
{
  while (1)
  {
    v6 = 0;
    if (*(a1 + 8) < a2)
    {
      v6 = a1[2] < a1[1];
    }

    if (!v6)
    {
      break;
    }

    v2 = a1[3];
    v3 = *a1;
    v4 = a1[2];
    a1[2] = v4 + 1;
    a1[3] = *(v3 + v4) | (v2 << 8);
    *(a1 + 8) += 8;
  }

  if (a2 <= *(a1 + 8))
  {
    return 1;
  }

  else
  {
    *(a1 + 9) = 1;
    return 0;
  }
}

uint64_t archive_write_set_format_gnutar(uint64_t a1)
{
  v7 = malloc_type_calloc(1uLL, 0x68uLL, 0x1070040395D5FD2uLL);
  if (v7)
  {
    *(a1 + 248) = v7;
    *(a1 + 256) = "gnutar";
    *(a1 + 272) = archive_write_gnutar_options;
    *(a1 + 288) = archive_write_gnutar_header;
    *(a1 + 296) = archive_write_gnutar_data;
    *(a1 + 304) = archive_write_gnutar_close;
    *(a1 + 312) = archive_write_gnutar_free;
    *(a1 + 280) = archive_write_gnutar_finish_entry;
    *(a1 + 16) = 196612;
    *(a1 + 24) = "GNU tar";
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate gnutar data", v1, v2, v3, v4, v5, archive_write_gnutar_options);
    return -30;
  }
}

uint64_t archive_write_gnutar_options(uint64_t a1, const char *a2, const char *a3)
{
  v10 = *(a1 + 248);
  v9 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v10 + 80) = archive_string_conversion_to_charset(a1, a3, 0);
      if (*(v10 + 80))
      {
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "%s: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, *(a1 + 256));
    }

    return v9;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_gnutar_header(uint64_t a1, _DWORD **a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v84 = a1;
  v83 = a2;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v78 = *(a1 + 248);
  if (*(v78 + 80))
  {
    v77 = *(v78 + 80);
  }

  else
  {
    if (!*(v78 + 96))
    {
      *(v78 + 88) = archive_string_default_conversion_for_write();
      *(v78 + 96) = 1;
    }

    v77 = *(v78 + 88);
  }

  if (archive_entry_hardlink(v83) || archive_entry_symlink(v83) || archive_entry_filetype(v83) != 0x8000)
  {
    archive_entry_set_size(v83, 0);
  }

  if (archive_entry_filetype(v83) != 0x4000 || (v74 = 0, (__s = archive_entry_pathname(v83)) == 0) || !*__s || __s[strlen(__s) - 1] == 47)
  {
LABEL_17:
    v76 = 0;
    v82 = _archive_entry_pathname_l(v83, (v78 + 32), (v78 + 40), v77);
    if (v82)
    {
      if (*__error() == 12)
      {
        archive_set_error(v84, 12, "Can't allocate memory for pathname", v7, v8, v9, v10, v11, v54);
        v81 = -30;
LABEL_70:
        archive_entry_free(v76);
        v85 = v81;
        goto LABEL_71;
      }

      v65 = v84;
      v64 = archive_entry_pathname(v83);
      archive_string_conversion_charset_name(v77);
      archive_set_error(v65, 79, "Can't translate pathname '%s' to %s", v12, v13, v14, v15, v16, v64);
      v80 = -20;
    }

    v82 = _archive_entry_uname_l(v83, (v78 + 48), (v78 + 56), v77);
    if (v82)
    {
      if (*__error() == 12)
      {
        archive_set_error(v84, 12, "Can't allocate memory for Uname", v17, v18, v19, v20, v21, v54);
        v81 = -30;
        goto LABEL_70;
      }

      v63 = v84;
      v62 = archive_entry_uname(v83);
      archive_string_conversion_charset_name(v77);
      archive_set_error(v63, 79, "Can't translate uname '%s' to %s", v22, v23, v24, v25, v26, v62);
      v80 = -20;
    }

    v82 = _archive_entry_gname_l(v83, (v78 + 64), (v78 + 72), v77);
    if (v82)
    {
      if (*__error() == 12)
      {
        archive_set_error(v84, 12, "Can't allocate memory for Gname", v27, v28, v29, v30, v31, v54);
        v81 = -30;
        goto LABEL_70;
      }

      v61 = v84;
      v60 = archive_entry_gname(v83);
      archive_string_conversion_charset_name(v77);
      archive_set_error(v61, 79, "Can't translate gname '%s' to %s", v32, v33, v34, v35, v36, v60);
      v80 = -20;
    }

    v82 = _archive_entry_hardlink_l(v83, (v78 + 16), (v78 + 24), v77);
    if (v82)
    {
      if (*__error() == 12)
      {
LABEL_31:
        archive_set_error(v84, 12, "Can't allocate memory for Linkname", v37, v38, v39, v40, v41, v54);
        v81 = -30;
        goto LABEL_70;
      }

      v59 = v84;
      v58 = archive_entry_hardlink(v83);
      archive_string_conversion_charset_name(v77);
      archive_set_error(v59, 79, "Can't translate linkname '%s' to %s", v42, v43, v44, v45, v46, v58);
      v80 = -20;
    }

    if (!*(v78 + 24))
    {
      v82 = _archive_entry_symlink_l(v83, (v78 + 16), (v78 + 24), v77);
      if (v82)
      {
        if (*__error() == 12)
        {
          goto LABEL_31;
        }

        v57 = v84;
        v56 = archive_entry_hardlink(v83);
        archive_string_conversion_charset_name(v77);
        archive_set_error(v57, 79, "Can't translate linkname '%s' to %s", v47, v48, v49, v50, v51, v56);
        v80 = -20;
      }
    }

    if (*(v78 + 24) > 0x64uLL)
    {
      v70 = *(v78 + 24) + 1;
      v69 = archive_entry_new2(v84);
      archive_entry_set_uname(v69, "root");
      archive_entry_set_gname(v69, "wheel");
      archive_entry_set_pathname(v69, "././@LongLink");
      archive_entry_set_size(v69, v70);
      v81 = archive_format_gnutar_header(v84, v86, v69, 75);
      archive_entry_free(v69);
      if (v81 < -20)
      {
        goto LABEL_70;
      }

      v81 = __archive_write_output(v84, v86, 512);
      if (v81 < -20)
      {
        goto LABEL_70;
      }

      v81 = __archive_write_output(v84, *(v78 + 16), v70);
      if (v81 < -20)
      {
        goto LABEL_70;
      }

      v81 = __archive_write_nulls(v84, -v70 & 0x1FF);
      if (v81 < -20)
      {
        goto LABEL_70;
      }
    }

    if (*(v78 + 40) > 0x64uLL)
    {
      v68 = *(v78 + 32);
      v67 = *(v78 + 40) + 1;
      v66 = archive_entry_new2(v84);
      archive_entry_set_uname(v66, "root");
      archive_entry_set_gname(v66, "wheel");
      archive_entry_set_pathname(v66, "././@LongLink");
      archive_entry_set_size(v66, v67);
      v81 = archive_format_gnutar_header(v84, v86, v66, 76);
      archive_entry_free(v66);
      if (v81 < -20)
      {
        goto LABEL_70;
      }

      v81 = __archive_write_output(v84, v86, 512);
      if (v81 < -20)
      {
        goto LABEL_70;
      }

      v81 = __archive_write_output(v84, v68, v67);
      if (v81 < -20)
      {
        goto LABEL_70;
      }

      v81 = __archive_write_nulls(v84, -v67 & 0x1FF);
      if (v81 < -20)
      {
        goto LABEL_70;
      }
    }

    if (archive_entry_hardlink(v83))
    {
      v79 = 49;
    }

    else
    {
      v55 = archive_entry_filetype(v83);
      switch(v55)
      {
        case 4096:
          v79 = 54;
          break;
        case 8192:
          v79 = 51;
          break;
        case 16384:
          v79 = 53;
          break;
        case 24576:
          v79 = 52;
          break;
        case 32768:
          v79 = 48;
          break;
        case 40960:
          v79 = 50;
          break;
        default:
          __archive_write_entry_filetype_unsupported(v84, v83);
          v81 = -25;
          goto LABEL_70;
      }
    }

    v81 = archive_format_gnutar_header(v84, v86, v83, v79);
    if (v81 >= -20)
    {
      if (v80 < v81)
      {
        v81 = v80;
      }

      v80 = __archive_write_output(v84, v86, 512);
      if (v80 >= -20)
      {
        if (v80 < v81)
        {
          v81 = v80;
        }

        v52 = archive_entry_size(v83);
        *v78 = v52;
        *(v78 + 8) = -*v78 & 0x1FFLL;
      }

      else
      {
        v81 = v80;
      }
    }

    goto LABEL_70;
  }

  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = strlen(__s);
  if (archive_string_ensure(&v71, v74 + 2))
  {
    v72 = 0;
    archive_strncat(&v71, __s, v74);
    archive_strappend_char(&v71, 47);
    archive_entry_copy_pathname(v83, v71);
    archive_string_free(&v71);
    goto LABEL_17;
  }

  archive_set_error(v84, 12, "Can't allocate ustar data", v2, v3, v4, v5, v6, v54);
  archive_string_free(&v71);
  v85 = -30;
LABEL_71:
  *MEMORY[0x1E69E9840];
  return v85;
}

uint64_t archive_write_gnutar_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *v5)
  {
    v6 = *v5;
  }

  v4 = __archive_write_output(a1, a2, v6);
  *v5 -= v6;
  if (v4)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t archive_write_gnutar_free(uint64_t a1)
{
  free(*(a1 + 248));
  *(a1 + 248) = 0;
  return 0;
}

uint64_t archive_write_gnutar_finish_entry(uint64_t a1)
{
  v2 = *(a1 + 248);
  LODWORD(result) = __archive_write_nulls(a1, *v2 + v2[1]);
  v2[1] = 0;
  *v2 = 0;
  return result;
}

uint64_t archive_format_gnutar_header(uint64_t a1, uint64_t a2, _DWORD **a3, int a4)
{
  v41 = *(a1 + 248);
  v50 = 0;
  __memcpy_chk();
  if (a4 == 75 || a4 == 76)
  {
    __sa = archive_entry_pathname(a3);
    strlen(__sa);
  }

  else
  {
    __sb = v41[4];
    v47 = v41[5];
  }

  __memcpy_chk();
  if (v41[3])
  {
    v4 = v41[2];
    __memcpy_chk();
  }

  if (a4 == 75 || a4 == 76)
  {
    __sc = archive_entry_uname(a3);
    v48 = strlen(__sc);
  }

  else
  {
    __sd = v41[6];
    v48 = v41[7];
  }

  if (v48)
  {
    __memcpy_chk();
  }

  if (a4 == 75 || a4 == 76)
  {
    __s = archive_entry_gname(a3);
    v49 = strlen(__s);
  }

  else
  {
    __s = v41[8];
    v49 = v41[9];
  }

  if (v49)
  {
    strlen(__s);
    __memcpy_chk();
  }

  v5 = archive_entry_mode(a3);
  format_octal_3(v5 & 0xFFF, a2 + 100, 7);
  v6 = archive_entry_uid(a3);
  if (format_number_1(v6, a2 + 108, 7, 8))
  {
    v7 = archive_entry_uid(a3);
    archive_set_error(a1, 34, "Numeric user ID %jd too large", v8, v9, v10, v11, v12, v7);
    v50 = -25;
  }

  v13 = archive_entry_gid(a3);
  if (format_number_1(v13, a2 + 116, 7, 8))
  {
    v14 = archive_entry_gid(a3);
    archive_set_error(a1, 34, "Numeric group ID %jd too large", v15, v16, v17, v18, v19, v14);
    v50 = -25;
  }

  v20 = archive_entry_size(a3);
  if (format_number_1(v20, a2 + 124, 11, 12))
  {
    archive_set_error(a1, 34, "File size out of range", v21, v22, v23, v24, v25, v40);
    v50 = -25;
  }

  v26 = archive_entry_mtime(a3);
  format_octal_3(v26, a2 + 136, 11);
  if (archive_entry_filetype(a3) == 24576 || archive_entry_filetype(a3) == 0x2000)
  {
    v27 = archive_entry_rdevmajor(a3);
    if (format_octal_3(v27, a2 + 329, 6))
    {
      archive_set_error(a1, 34, "Major device number too large", v28, v29, v30, v31, v32, v40);
      v50 = -25;
    }

    v33 = archive_entry_rdevminor(a3);
    if (format_octal_3(v33, a2 + 337, 6))
    {
      archive_set_error(a1, 34, "Minor device number too large", v34, v35, v36, v37, v38, v40);
      v50 = -25;
    }
  }

  *(a2 + 156) = a4;
  v52 = 0;
  for (i = 0; i < 512; ++i)
  {
    v52 += *(a2 + i);
  }

  *(a2 + 154) = 0;
  format_octal_3(v52, a2 + 148, 6);
  return v50;
}

uint64_t format_octal_3(uint64_t a1, uint64_t a2, int a3)
{
  v10 = a1;
  v8 = a3;
  v7 = a3;
  if (a1 < 0)
  {
    v10 = 0;
  }

  v9 = (a2 + a3);
  while (1)
  {
    v3 = v8--;
    if (v3 <= 0)
    {
      break;
    }

    *--v9 = (v10 & 7) + 48;
    v10 >>= 3;
  }

  if (v10)
  {
    while (1)
    {
      v4 = v7--;
      if (v4 <= 0)
      {
        break;
      }

      v5 = v9++;
      *v5 = 55;
    }

    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t format_number_1(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if (a1 >= 1 << (3 * a3))
  {
    return format_256_1(a1, a2, a4);
  }

  else
  {
    return format_octal_3(a1, a2, a3);
  }
}

uint64_t format_256_1(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v6 = (a2 + a3);
  while (1)
  {
    v3 = v5--;
    if (v3 <= 0)
    {
      break;
    }

    *--v6 = a1;
    a1 >>= 8;
  }

  *v6 |= 0x80u;
  return 0;
}