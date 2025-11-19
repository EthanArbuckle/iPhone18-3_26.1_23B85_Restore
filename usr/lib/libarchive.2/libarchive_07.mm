uint64_t init_WinZip_AES_decryption(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = **(a1 + 2072);
  if (!*(v39 + 8160) && !*(v39 + 8548))
  {
    v33 = *(*(v39 + 136) + 136);
    switch(v33)
    {
      case 1:
        v36 = 8;
        v37 = 16;
        break;
      case 2:
        v36 = 12;
        v37 = 24;
        break;
      case 3:
        v36 = 16;
        v37 = 32;
        break;
      default:
        goto LABEL_33;
    }

    ahead = __archive_read_ahead(a1, v36 + 2, 0, a4, a5, a6, a7, a8);
    if (!ahead)
    {
      archive_set_error(a1, 79, "Truncated ZIP file data", v8, v9, v10, v11, v12, v32);
      v41 = -30;
      goto LABEL_34;
    }

    for (i = 0; ; ++i)
    {
      __s = __archive_read_next_passphrase(a1);
      if (!__s)
      {
        if (i <= 0)
        {
          v18 = "Passphrase required for this entry";
        }

        else
        {
          v18 = "Incorrect passphrase";
        }

        archive_set_error(a1, -1, v18, v13, v14, v15, v16, v17, v32);
        v41 = -25;
        goto LABEL_34;
      }

      memset(__b, 0, sizeof(__b));
      v19 = strlen(__s);
      if ((__archive_cryptor[0])(__s, v19, ahead, v36, 0x3E8u, __b, 2 * v37 + 2))
      {
        goto LABEL_20;
      }

      if (__b[2 * v37] == ahead[v36] && __b[2 * v37 + 1] == ahead[v36 + 1])
      {
        break;
      }

      if (i > 10000)
      {
        archive_set_error(a1, -1, "Too many incorrect passphrases", v20, v21, v22, v23, v24, v32);
        v41 = -25;
        goto LABEL_34;
      }
    }

    if (off_1F3DE4E78(v39 + 8080, __b, v37))
    {
LABEL_20:
      archive_set_error(a1, -1, "Decryption is unsupported due to lack of crypto library", v20, v21, v22, v23, v24, v32);
      v41 = -25;
      goto LABEL_34;
    }

    if (__archive_hmac((v39 + 8164), &__b[v37], v37))
    {
      off_1F3DE4E88(v39 + 8080);
      archive_set_error(a1, -1, "Failed to initialize HMAC-SHA1", v26, v27, v28, v29, v30, v32);
      v41 = -25;
      goto LABEL_34;
    }

    *(v39 + 8548) = 1;
    *(v39 + 8160) = 1;
    __archive_read_consume(a1, v36 + 2);
    *(v39 + 144) -= v36 + 12;
    if ((*(*(v39 + 136) + 126) & 8) != 0 || (*(v39 + 144) & 0x8000000000000000) == 0)
    {
      *(v39 + 152) += v36 + 12;
      *(v39 + 8048) = 0;
      *(*(v39 + 136) + 128) = *(*(v39 + 136) + 140);
      v41 = zip_alloc_decryption_buffer(a1);
      goto LABEL_34;
    }

LABEL_33:
    archive_set_error(a1, 79, "Corrupted ZIP file data", a4, a5, a6, a7, a8, v32);
    v41 = -30;
    goto LABEL_34;
  }

  v41 = 0;
LABEL_34:
  *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t init_traditional_PKWARE_decryption(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a1;
  v32 = **(a1 + 2072);
  ahead = 0;
  i = 0;
  v29 = 0;
  if (*(v32 + 8076))
  {
    return 0;
  }

  else if ((*(*(v32 + 136) + 126) & 8) != 0 || *(v32 + 144) >= 12)
  {
    ahead = __archive_read_ahead(v33, 0xCuLL, 0, a4, a5, a6, a7, a8);
    if (ahead)
    {
      for (i = 0; ; ++i)
      {
        __s = 0;
        v27 = 0;
        __s = __archive_read_next_passphrase(v33);
        if (!__s)
        {
          if (i <= 0)
          {
            v18 = "Passphrase required for this entry";
          }

          else
          {
            v18 = "Incorrect passphrase";
          }

          archive_set_error(v33, -1, v18, v13, v14, v15, v16, v17, v26);
          return -25;
        }

        v19 = strlen(__s);
        v29 = trad_enc_init((v32 + 8064), __s, v19, ahead, 0xCuLL, &v27);
        if (!v29 && v27 == *(*(v32 + 136) + 131))
        {
          break;
        }

        if (i > 10000)
        {
          archive_set_error(v33, -1, "Too many incorrect passphrases", v20, v21, v22, v23, v24, v26);
          return -25;
        }
      }

      __archive_read_consume(v33, 0xCuLL);
      *(v32 + 8076) = 1;
      if ((*(*(v32 + 136) + 126) & 8) == 0)
      {
        *(v32 + 144) -= 12;
      }

      *(v32 + 152) += 12;
      *(v32 + 8048) = 0;
      return zip_alloc_decryption_buffer(v33);
    }

    else
    {
      archive_set_error(v33, 79, "Truncated ZIP file data", v8, v9, v10, v11, v12, v26);
      return -30;
    }
  }

  else
  {
    archive_set_error(v33, 79, "Truncated Zip encrypted body: only %jd bytes available", a4, a5, a6, a7, a8, *(v32 + 144));
    return -30;
  }
}

uint64_t zip_read_data_none(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v25 = **(a1 + 2072);
  if (*(v25 + 8548))
  {
    v8 = 10;
  }

  else
  {
    v8 = 0;
  }

  v22 = v8;
  if ((*(*(v25 + 136) + 126) & 8) != 0)
  {
    v20 = 0;
    v19 = v22 + 24;
    v24 = __archive_read_ahead(v29, v22 + 24, &v23, a4, a5, a6, a7, a8);
    if (v23 < v22 + 24)
    {
LABEL_6:
      archive_set_error(v29, 79, "Truncated ZIP file data", v9, v10, v11, v12, v13, v16);
      return -30;
    }

    v20 = &v24[v22];
    if (v24[v22] == 80 && v20[1] == 75 && v20[2] == 7 && v20[3] == 8)
    {
      v14 = archive_le32dec_7(v20 + 4);
      if (v14 == *(v25 + 168) || *(v25 + 184) || *(v25 + 8548) && *(*(v25 + 136) + 132) == 2)
      {
        *(v25 + 186) = 1;
        if (*(v25 + 8548) && (v21 = check_authentication_code(v29, v24)) != 0)
        {
          return v21;
        }

        else
        {
          return 0;
        }
      }
    }

    ++v20;
    while (v20 < &v24[v23 - 4])
    {
      switch(v20[3])
      {
        case 80:
          v20 += 3;
          break;
        case 75:
          v20 += 2;
          break;
        case 7:
          ++v20;
          break;
        default:
          if (v20[3] == 8 && v20[2] == 7 && v20[1] == 75 && *v20 == 80)
          {
            goto LABEL_32;
          }

          v20 += 4;
          break;
      }
    }

LABEL_32:
    v20 -= v22;
    v23 = v20 - v24;
  }

  else
  {
    if (!*(v25 + 144))
    {
      *(v25 + 186) = 1;
      if (*(v25 + 8548) && (v21 = check_authentication_code(v29, 0)) != 0)
      {
        return v21;
      }

      else
      {
        return 0;
      }
    }

    v24 = __archive_read_ahead(v29, 1uLL, &v23, a4, a5, a6, a7, a8);
    if (v23 <= 0)
    {
      goto LABEL_6;
    }

    if (v23 > *(v25 + 144))
    {
      v23 = *(v25 + 144);
    }
  }

  if (*(v25 + 8076) || *(v25 + 8160))
  {
    v18 = v23;
    if (v23 > *(v25 + 8040))
    {
      v18 = *(v25 + 8040);
    }

    if (*(v25 + 8076))
    {
      trad_enc_decrypt_update(v25 + 8064, v24, v18, *(v25 + 8024), v18);
    }

    else
    {
      v17 = v18;
      off_1F3DE4DC8((v25 + 8164), v24, v18);
      off_1F3DE4E80(v25 + 8080, v24, v18, *(v25 + 8024), &v17);
    }

    v23 = v18;
    v24 = *(v25 + 8024);
  }

  *(v25 + 144) -= v23;
  *(v25 + 160) += v23;
  *(v25 + 152) += v23;
  *(v25 + 128) += v23;
  *v27 = v23;
  *v28 = v24;
  return 0;
}

uint64_t zip_read_data_zipx_bzip2(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = **(a1 + 2072);
  v30 = 0;
  if (*(v31 + 185) || (v27 = zipx_bzip2_init(v35, v31)) == 0)
  {
    v28 = __archive_read_ahead(v35, 1uLL, &v30, a4, a5, a6, a7, a8);
    if ((v30 & 0x8000000000000000) == 0)
    {
      v25 = *(v31 + 144) < v30 ? *(v31 + 144) : v30;
      if (v25 >= 1)
      {
        *(v31 + 472) = v28;
        *(v31 + 480) = v25;
        *(v31 + 488) = 0;
        *(v31 + 484) = 0;
        *(v31 + 496) = *(v31 + 192);
        *(v31 + 504) = *(v31 + 200);
        *(v31 + 512) = 0;
        *(v31 + 508) = 0;
        HIDWORD(v24) = BZ2_bzDecompress((v31 + 472));
        if (HIDWORD(v24))
        {
          if (HIDWORD(v24) != 4)
          {
            archive_set_error(v35, -1, "bzip2 decompression failed", v13, v14, v15, v16, v17, v24);
            return -30;
          }

          if (BZ2_bzDecompressEnd((v31 + 472)))
          {
            archive_set_error(v35, -1, "Failed to clean up bzip2 decompressor", v18, v19, v20, v21, v22, v24);
            return -30;
          }

          *(v31 + 186) = 1;
        }

        v29 = *(v31 + 484);
        __archive_read_consume(v35, v29);
        v26 = *(v31 + 508) | (*(v31 + 512) << 32);
        *(v31 + 144) -= v29;
        *(v31 + 152) += v29;
        *(v31 + 160) += v26;
        *v33 = v26;
        *v34 = *(v31 + 192);
        return 0;
      }
    }

    archive_set_error(v35, 79, "Truncated bzip2 file body", v8, v9, v10, v11, v12, v24);
    return -30;
  }

  else
  {
    return v27;
  }
}

uint64_t zip_read_data_zipx_xz(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = **(a1 + 2072);
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if (!*(v31 + 185))
  {
    v30 = zipx_xz_init(v35, v31);
    if (v30)
    {
      return v30;
    }
  }

  v28 = __archive_read_ahead(v35, 1uLL, &v27, a4, a5, a6, a7, a8);
  if (v27 < 0)
  {
    archive_set_error(v35, 79, "Truncated xz file body", v8, v9, v10, v11, v12, v24);
    return -30;
  }

  if (*(v31 + 144) < v27)
  {
    v25 = *(v31 + 144);
  }

  else
  {
    v25 = v27;
  }

  *(v31 + 328) = v28;
  *(v31 + 336) = v25;
  *(v31 + 344) = 0;
  *(v31 + 352) = *(v31 + 192);
  *(v31 + 360) = *(v31 + 200);
  *(v31 + 368) = 0;
  v29 = lzma_code();
  switch(v29)
  {
    case 0u:
LABEL_20:
      v26 = *(v31 + 344);
      __archive_read_consume(v35, v26);
      *(v31 + 144) -= v26;
      *(v31 + 152) += v26;
      *(v31 + 160) += *(v31 + 368);
      *v33 = *(v31 + 368);
      *v34 = *(v31 + 192);
      return 0;
    case 1u:
      lzma_end();
      *(v31 + 464) = 0;
      if (*(v31 + 344) != *(v31 + 144))
      {
        archive_set_error(v35, -1, "xz premature end of stream", v18, v19, v20, v21, v22, v24);
        return -30;
      }

      *(v31 + 186) = 1;
      goto LABEL_20;
    case 2u:
      goto LABEL_20;
    case 9u:
      archive_set_error(v35, -1, "xz data error (error %d)", v13, v14, v15, v16, v17, 9uLL);
      break;
    default:
      archive_set_error(v35, -1, "xz unknown error %d", v13, v14, v15, v16, v17, v29);
      break;
  }

  return -30;
}

uint64_t zip_read_data_zipx_ppmd(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = **(a1 + 2072);
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (*(v18 + 185) || (v17 = zipx_ppmd8_init(v22, v18)) == 0)
  {
    __archive_read_ahead(v22, 1uLL, &v15, a4, a5, a6, a7, a8);
    if (v15 < 0)
    {
LABEL_5:
      archive_set_error(v22, 79, "Truncated PPMd8 file body", v8, v9, v10, v11, v12, v14);
      return -30;
    }

    else
    {
      *(v18 + 576) = 0;
      while (1)
      {
        HIDWORD(v14) = off_1F3DE4D58((v18 + 584));
        if ((v14 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (*(v18 + 7977))
        {
          goto LABEL_5;
        }

        *(*(v18 + 192) + v16++) = BYTE4(v14);
        if (v16 >= *(v18 + 200))
        {
          goto LABEL_11;
        }
      }

      *(v18 + 186) = 1;
LABEL_11:
      *(v18 + 144) -= *(v18 + 576);
      *(v18 + 152) += *(v18 + 576);
      *(v18 + 160) += v16;
      if (*(v18 + 186))
      {
        off_1F3DE4D40(v18 + 584);
        *(v18 + 7976) = 0;
      }

      *v21 = *(v18 + 192);
      *v20 = v16;
      return 0;
    }
  }

  else
  {
    return v17;
  }
}

unsigned __int8 *consume_end_of_file_marker(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(a2 + 136) + 126) & 8) != 0)
  {
    result = __archive_read_ahead(result, 0x18uLL, 0, a4, a5, a6, a7, a8);
    v18 = result;
    if (result)
    {
      v16 = result;
      v9 = *(a2 + 184);
      v8 = 0;
      v10 = *(a2 + 168);
      if (*(a2 + 8548))
      {
        if (*(*(a2 + 136) + 132) == 2)
        {
          v10 = 0;
        }

        else
        {
          v8 = 1;
        }
      }

      v12 = *(a2 + 152);
      v11 = *(a2 + 160);
      if (archive_le32dec_7(result) == 134695760 && (archive_le32dec_7(v18 + 4) == v10 || v8 && !archive_le32dec_7(v18 + 4) || v9) && archive_le64dec_2(v18 + 8) == v12 && (result = archive_le64dec_2(v18 + 16), result == v11))
      {
        if (!v9)
        {
          *(*(a2 + 136) + 120) = v10;
        }

        *(*(a2 + 136) + 40) = v12;
        *(*(a2 + 136) + 48) = v11;
        *(a2 + 128) += 24;
      }

      else if ((archive_le32dec_7(v18) == v10 || v8 && !archive_le32dec_7(v18 + 4) || v9) && archive_le64dec_2(v18 + 4) == v12 && (result = archive_le64dec_2(v18 + 12), result == v11))
      {
        if (!v9)
        {
          *(*(a2 + 136) + 120) = v10;
        }

        *(*(a2 + 136) + 40) = v12;
        *(*(a2 + 136) + 48) = v11;
        *(a2 + 128) += 20;
      }

      else if (archive_le32dec_7(v18) == 134695760 && (archive_le32dec_7(v18 + 4) == v10 || v8 && !archive_le32dec_7(v18 + 4) || v9) && archive_le32dec_7(v18 + 8) == v12 && (result = archive_le32dec_7(v18 + 12), result == v11))
      {
        if (!v9)
        {
          *(*(a2 + 136) + 120) = v10;
        }

        *(*(a2 + 136) + 40) = v12;
        *(*(a2 + 136) + 48) = v11;
        *(a2 + 128) += 16;
      }

      else if ((archive_le32dec_7(v18) == v10 || v8 && !archive_le32dec_7(v18 + 4) || v9) && archive_le32dec_7(v18 + 4) == v12 && (result = archive_le32dec_7(v18 + 8), result == v11))
      {
        if (!v9)
        {
          *(*(a2 + 136) + 120) = v10;
        }

        *(*(a2 + 136) + 40) = v12;
        *(*(a2 + 136) + 48) = v11;
        *(a2 + 128) += 12;
      }

      else
      {
        if (archive_le32dec_7(v18) == 134695760)
        {
          v16 = v18 + 4;
        }

        *(*(a2 + 136) + 120) = archive_le32dec_7(v16);
        v17 = v16 + 4;
        v15 = archive_le32dec_7(v17);
        v14 = archive_le32dec_7(v17 + 4);
        v13 = archive_le64dec_2(v17);
        result = archive_le64dec_2(v17 + 8);
        if (v15 == v12 && v14 == v11)
        {
          *(*(a2 + 136) + 40) = v15;
          *(*(a2 + 136) + 48) = v14;
        }

        else if (v13 == v12 || result == v11)
        {
          *(*(a2 + 136) + 40) = v13;
          *(*(a2 + 136) + 48) = result;
        }

        else
        {
          *(*(a2 + 136) + 40) = v15;
          *(*(a2 + 136) + 48) = v14;
        }
      }
    }
  }

  return result;
}

uint64_t zip_alloc_decryption_buffer(uint64_t a1)
{
  v7 = **(a1 + 2072);
  if (v7[1003] || (v7[1005] = 0x40000, (v7[1003] = malloc_type_malloc(0x40000uLL, 0xD6CE9D76uLL)) != 0))
  {
    v7[1004] = v7[1003];
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "No memory for ZIP decryption", v1, v2, v3, v4, v5, 0x40000uLL);
    return -30;
  }
}

uint64_t trad_enc_init(int *a1, Bytef *a2, uint64_t a3, uint64_t a4, unint64_t a5, _BYTE *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a5 >= 0xC)
  {
    *a1 = 305419896;
    a1[1] = 591751049;
    a1[2] = 878082192;
    while (a3)
    {
      v6 = a2++;
      trad_enc_update_keys(a1, *v6);
      --a3;
    }

    trad_enc_decrypt_update(a1, a4, 0xCuLL, v14, 0xCuLL);
    *a6 = v14[11];
    v13 = 0;
  }

  else
  {
    *a6 = -1;
    v13 = -1;
  }

  *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t zipx_bzip2_init(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 552))
  {
    BZ2_bzDecompressEnd((a2 + 472));
    *(a2 + 552) = 0;
  }

  __memset_chk();
  v14 = BZ2_bzDecompressInit((a2 + 472), 0, 1);
  if (v14)
  {
    archive_set_error(a1, -1, "bzip2 initialization failed(%d)", v2, v3, v4, v5, v6, v14);
    return -25;
  }

  else
  {
    *(a2 + 552) = 1;
    free(*(a2 + 192));
    *(a2 + 200) = 0x40000;
    *(a2 + 192) = malloc_type_malloc(*(a2 + 200), 0x100004077774924uLL);
    if (*(a2 + 192))
    {
      *(a2 + 185) = 1;
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "No memory for bzip2 decompression", v7, v8, v9, v10, v11, v13);
      return -30;
    }
  }
}

uint64_t zipx_xz_init(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 464))
  {
    lzma_end();
    *(a2 + 464) = 0;
  }

  __memset_chk();
  v14 = lzma_stream_decoder();
  if (v14)
  {
    archive_set_error(a1, -1, "xz initialization failed(%d)", v2, v3, v4, v5, v6, v14);
    return -25;
  }

  else
  {
    *(a2 + 464) = 1;
    free(*(a2 + 192));
    *(a2 + 200) = 0x40000;
    *(a2 + 192) = malloc_type_malloc(*(a2 + 200), 0x100004077774924uLL);
    if (*(a2 + 192))
    {
      *(a2 + 185) = 1;
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "No memory for xz decompression", v7, v8, v9, v10, v11, v13);
      return -30;
    }
  }
}

uint64_t zipx_ppmd8_init(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 7976))
  {
    off_1F3DE4D40(a2 + 584);
    *(a2 + 7976) = 0;
  }

  __archive_ppmd8_functions(a2 + 584);
  *(a2 + 7977) = 0;
  *(a2 + 704) = a2 + 560;
  *(a2 + 560) = a1;
  *(a2 + 568) = ppmd_read_0;
  *(a2 + 576) = 0;
  ahead = __archive_read_ahead(a1, 2uLL, 0, v2, v3, v4, v5, v6);
  if (ahead)
  {
    __archive_read_consume(a1, 2uLL);
    v37 = archive_le16dec_3(ahead);
    v36 = (v37 & 0xF) + 1;
    v35 = (v37 >> 4) + 1;
    v34 = v37 >> 12;
    if (v36 >= 2 && v34 <= 2)
    {
      if (off_1F3DE4D38(a2 + 584, v35 << 20))
      {
        *(a2 + 7976) = 1;
        if (off_1F3DE4D50(a2 + 584))
        {
          off_1F3DE4D48(a2 + 584, v36, v34);
          free(*(a2 + 192));
          *(a2 + 200) = 0x40000;
          *(a2 + 192) = malloc_type_malloc(*(a2 + 200), 0x100004077774924uLL);
          if (*(a2 + 192))
          {
            *(a2 + 185) = 1;
            *(a2 + 152) += *(a2 + 576) + 2;
            return 0;
          }

          else
          {
            archive_set_error(a1, 12, "No memory for PPMd8 decompression", v27, v28, v29, v30, v31, v33);
            return -30;
          }
        }

        else
        {
          archive_set_error(a1, 22, "PPMd8 stream range decoder initialization error", v22, v23, v24, v25, v26, v33);
          return -30;
        }
      }

      else
      {
        archive_set_error(a1, 12, "Unable to allocate memory for PPMd8 stream: %d bytes", v17, v18, v19, v20, v21, (v35 << 20));
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 79, "Invalid parameter set in PPMd8 stream (order=%d, restore=%d)", v12, v13, v14, v15, v16, v36);
      return -25;
    }
  }

  else
  {
    archive_set_error(a1, 79, "Truncated file data in PPMd8 stream", v7, v8, v9, v10, v11, v33);
    return -30;
  }
}

uint64_t ppmd_read_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v12 = *a1;
  v11 = **(v12 + 2072);
  v10 = 0;
  v9 = __archive_read_ahead(v12, 1uLL, &v10, a4, a5, a6, a7, a8);
  if (v10 >= 1)
  {
    __archive_read_consume(v12, 1uLL);
    ++*(v11 + 576);
    return *v9;
  }

  else
  {
    *(v11 + 7977) = 1;
    return 0;
  }
}

uint64_t read_eocd(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = archive_le16dec_3(a2 + 4);
  v6 = archive_le32dec_7(a2 + 12);
  v5 = archive_le32dec_7(a2 + 16);
  if (v7)
  {
    return 0;
  }

  else if (archive_le16dec_3(a2 + 6))
  {
    return 0;
  }

  else
  {
    v4 = archive_le16dec_3(a2 + 10);
    if (v4 == archive_le16dec_3(a2 + 8))
    {
      if (v5 + v6 <= a3)
      {
        *(a1 + 24) = v5;
        *(a1 + 32) = a3 - v6;
        return 32;
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

uint64_t read_zip64_eocd(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (archive_le32dec_7(a3 + 4))
  {
    return 0;
  }

  else if (archive_le32dec_7(a3 + 16) == 1)
  {
    v16 = archive_le64dec_2(a3 + 8);
    if (__archive_read_seek(a1, v16, 0) < 0)
    {
      return 0;
    }

    else
    {
      ahead = __archive_read_ahead(a1, 0x38uLL, 0, v3, v4, v5, v6, v7);
      if (ahead)
      {
        v15 = archive_le64dec_2((ahead + 4)) + 12;
        if (v15 >= 56 && v15 <= 0x4000)
        {
          v19 = __archive_read_ahead(a1, v15, 0, v8, v9, v10, v11, v12);
          if (v19)
          {
            if (archive_le32dec_7(v19 + 16))
            {
              return 0;
            }

            else if (archive_le32dec_7(v19 + 20))
            {
              return 0;
            }

            else
            {
              v14 = archive_le64dec_2(v19 + 24);
              if (v14 == archive_le64dec_2(v19 + 32))
              {
                *(a2 + 24) = archive_le64dec_2(v19 + 48);
                *(a2 + 32) = *(a2 + 24);
                return 32;
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
          return 0;
        }
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

uint64_t slurp_central_directory_0(_DWORD *a1, _DWORD **a2, uint64_t a3)
{
  v61 = a1;
  v60 = a2;
  v59 = a3;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  if (__archive_read_seek(a1, *(a3 + 32), 0) < 0)
  {
    return -30;
  }

  else
  {
    v57 = 0;
    while (1)
    {
      if (v57)
      {
        v8 = archive_filter_bytes(v61, 0);
        v56 = v8 - *(v59 + 24);
        __archive_rb_tree_init((v59 + 80), rb_ops);
        __archive_rb_tree_init((v59 + 96), rb_rsrc_ops);
        __archive_rb_tree_init((v59 + 112), rb_bomb_ops);
        *(v59 + 40) = 0;
        while (1)
        {
          ahead = __archive_read_ahead(v61, 4uLL, 0, v9, v10, v11, v12, v13);
          if (!ahead)
          {
            return -30;
          }

          if (!memcmp(ahead, "PK\x06\x06", 4uLL) || !memcmp(ahead, "PK\x05\x06", 4uLL))
          {
            return 0;
          }

          if (memcmp(ahead, "PK\x01\x02", 4uLL))
          {
            archive_set_error(v61, -1, "Invalid central directory signature", v14, v15, v16, v17, v18, v41);
            return -30;
          }

          v53 = __archive_read_ahead(v61, 0x2EuLL, 0, v14, v15, v16, v17, v18);
          if (!v53)
          {
            return -30;
          }

          v50 = malloc_type_calloc(1uLL, 0x90uLL, 0x1030040EC8AD5CDuLL);
          if (!v50)
          {
            archive_set_error(v61, 12, "Can't allocate zip entry", v19, v20, v21, v22, v23, v41);
            return -30;
          }

          v50[3] = *(v59 + 64);
          *(v50 + 130) |= 2u;
          *(v59 + 64) = v50;
          ++*(v59 + 40);
          *(v50 + 129) = v53[5];
          *(v50 + 63) = archive_le16dec_3(v53 + 8);
          if ((*(v50 + 63) & 0x41) != 0)
          {
            *(v59 + 56) = 1;
          }

          *(v50 + 128) = archive_le16dec_3(v53 + 10);
          v50[12] = zip_time(v53 + 12);
          *(v50 + 30) = archive_le32dec_7(v53 + 16);
          if ((*(v50 + 63) & 8) != 0)
          {
            *(v50 + 131) = v53[13];
          }

          else
          {
            *(v50 + 131) = v53[19];
          }

          v50[5] = archive_le32dec_7(v53 + 20);
          v50[6] = archive_le32dec_7(v53 + 24);
          v49 = archive_le16dec_3(v53 + 28);
          v48 = archive_le16dec_3(v53 + 30);
          v47 = archive_le16dec_3(v53 + 32);
          v46 = archive_le32dec_7(v53 + 38);
          v24 = archive_le32dec_7(v53 + 42);
          v50[4] = v56 + v24;
          if (*(v50 + 129) == 3)
          {
            *(v50 + 62) = HIWORD(v46);
          }

          else if (*(v50 + 129))
          {
            *(v50 + 62) = 0;
          }

          else
          {
            if ((v46 & 0x10) == 0x10)
            {
              *(v50 + 62) = 16893;
            }

            else
            {
              *(v50 + 62) = -32332;
            }

            if ((v46 & 1) == 1)
            {
              *(v50 + 62) &= 0x16Du;
            }
          }

          __archive_read_consume(v61, 0x2EuLL);
          v54 = __archive_read_ahead(v61, v49 + v48, 0, v25, v26, v27, v28, v29);
          if (!v54)
          {
            archive_set_error(v61, 79, "Truncated ZIP file header", v30, v31, v32, v33, v34, v41);
            return -30;
          }

          if (process_extra(v61, v60, v54 + v49, v48, v50, v32, v33, v34))
          {
            return -30;
          }

          if (*(v59 + 8012))
          {
            v45 = rsrc_basename(v54, v49);
            if (v49 >= 9 && !strncmp("__MACOSX/", v54, 9uLL))
            {
              if (*(v54 + v49 - 1) == 47 || v45 - v54 >= 3 && *v45 == 46 && v45[1] == 95)
              {
                v50[10] = 0;
                archive_strncat(v50 + 9, v54, v49);
                __archive_rb_tree_insert_node((v59 + 96), v50);
              }

              else
              {
                bomb_insert_central_node_and_detect_overlap((v59 + 80), v50);
                if (v45 || expose_parent_dirs(v59, v54, v49))
                {
                  goto LABEL_80;
                }
              }
            }

            else
            {
              v44 = v49;
              if (v49 && *(v54 + v49 - 1) == 47)
              {
                v44 = v49 - 1;
                v45 = rsrc_basename(v54, v49 - 1);
              }

              v50[10] = 0;
              archive_strncat(v50 + 9, "__MACOSX/", 9uLL);
              archive_strncat(v50 + 9, v54, v45 - v54);
              archive_strcat(v50 + 9, "._");
              archive_strncat(v50 + 9, v45, v44 - (v45 - v54));
              if (bomb_insert_central_node_and_detect_overlap((v59 + 80), v50))
              {
LABEL_80:
                archive_set_error(v61, 79, "Invalid header", v35, v36, v37, v38, v39, v41);
                return -30;
              }
            }
          }

          else if (bomb_insert_central_node_and_detect_overlap((v59 + 80), v50))
          {
            goto LABEL_80;
          }

          __archive_read_consume(v61, v49 + v48 + v47);
        }
      }

      v51 = __archive_read_ahead(v61, 0x14uLL, &v55, v3, v4, v5, v6, v7);
      if (!v51)
      {
        break;
      }

      v57 = 0;
      v58 = 0;
      while (1)
      {
        v43 = 0;
        if (!v57)
        {
          v43 = v58 < v55 - 4;
        }

        if (!v43)
        {
          break;
        }

        v42 = *(v51 + v58 + 3);
        switch(v42)
        {
          case 1:
            ++v58;
            break;
          case 2:
            if (!memcmp((v51 + v58), "PK\x01\x02", 4uLL))
            {
              v51 += v58;
              v57 = 1;
            }

            else
            {
              v58 += 4;
            }

            break;
          case 5:
            ++v58;
            break;
          case 6:
            if (!memcmp((v51 + v58), "PK\x05\x06", 4uLL))
            {
              v51 += v58;
              v57 = 1;
            }

            else if (!memcmp((v51 + v58), "PK\x06\x06", 4uLL))
            {
              v51 += v58;
              v57 = 1;
            }

            else
            {
              ++v58;
            }

            break;
          case 75:
            v58 += 2;
            break;
          case 80:
            v58 += 3;
            break;
          default:
            v58 += 4;
            break;
        }
      }

      __archive_read_consume(v61, v58);
    }

    return -30;
  }
}

uint64_t zip_read_mac_metadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v57 = a2;
  v56 = a3;
  v55 = **(a1 + 2072);
  v54 = 0;
  v53 = 0;
  v52 = archive_filter_bytes(a1, 0);
  v51 = 0;
  v50 = 0;
  local_file_header_size = 0;
  v48 = 0;
  v47 = 0;
  if (*(v56 + 128))
  {
    if (*(v56 + 128) != 8)
    {
      v8 = compression_name(*(v56 + 128));
      archive_set_error(v58, 79, "Unsupported ZIP compression method (%s)", v9, v10, v11, v12, v13, v8);
      return -20;
    }
  }

  else if (*(v56 + 48) != *(v56 + 40))
  {
    archive_set_error(v58, 79, "Malformed OS X metadata entry: inconsistent size", v3, v4, v5, v6, v7, v41);
    return -30;
  }

  if (*(v56 + 48) <= 10485760)
  {
    if (*(v56 + 40) <= 10485760)
    {
      v54 = malloc_type_malloc(*(v56 + 48), 0x71265D9FuLL);
      if (v54)
      {
        if (v52 >= *(v56 + 32))
        {
          if (v52 != *(v56 + 32))
          {
            __archive_read_seek(v58, *(v56 + 32), 0);
          }
        }

        else
        {
          __archive_read_consume(v58, *(v56 + 32) - v52);
        }

        local_file_header_size = zip_get_local_file_header_size(v58, 0, v14, v15, v16, v17, v18, v19);
        if (*(v55 + 8016) && bomb_detect_overlap(v55, v56, local_file_header_size))
        {
          archive_set_error(v58, 79, "Invalid header", v20, v21, v22, v23, v24, v41);
          v48 = -30;
        }

        else
        {
          __archive_read_consume(v58, local_file_header_size);
          v51 = *(v56 + 40);
          v50 = *(v56 + 48);
          v53 = v54;
          v47 = 0;
          while (1)
          {
            v42 = 0;
            if (!v47)
            {
              v42 = v51 != 0;
            }

            if (!v42)
            {
              break;
            }

            v46 = 0;
            v45 = 0;
            v46 = __archive_read_ahead(v58, 1uLL, &v45, v25, v26, v27, v28, v29);
            if (!v46)
            {
              archive_set_error(v58, 79, "Truncated ZIP file header", v30, v31, v32, v33, v34, v41);
              v48 = -20;
              goto LABEL_46;
            }

            if (v45 > v51)
            {
              v45 = v51;
            }

            if (*(v56 + 128))
            {
              if (*(v56 + 128) == 8)
              {
                v48 = zip_deflate_init(v58, v55);
                if (v48)
                {
                  goto LABEL_46;
                }

                *(v55 + 208) = v46;
                *(v55 + 216) = v45;
                *(v55 + 224) = 0;
                *(v55 + 232) = v53;
                *(v55 + 240) = v50;
                *(v55 + 248) = 0;
                v43 = inflate((v55 + 208), 0);
                if (v43 == -4)
                {
                  archive_set_error(v58, 12, "Out of memory for ZIP decompression", v35, v36, v37, v38, v39, v41);
                  v48 = -30;
                  goto LABEL_46;
                }

                if (v43)
                {
                  if (v43 != 1)
                  {
                    archive_set_error(v58, -1, "ZIP decompression failed (%d)", v35, v36, v37, v38, v39, v43);
                    v48 = -30;
                    goto LABEL_46;
                  }

                  v47 = 1;
                }

                v44 = *(v55 + 224);
                v50 -= *(v55 + 248);
                v53 += *(v55 + 248);
                __archive_read_consume(v58, v44);
              }

              else
              {
                v44 = 0;
                __archive_read_consume(v58, 0);
              }
            }

            else
            {
              if (v45 > v50)
              {
                v45 = v50;
              }

              __memcpy_chk();
              v44 = v45;
              v50 -= v45;
              v53 += v45;
              if (!v50)
              {
                v47 = 1;
              }

              __archive_read_consume(v58, v45);
            }

            v51 -= v44;
          }

          archive_entry_copy_mac_metadata(v57, v54, *(v56 + 48) - v50);
        }

LABEL_46:
        __archive_read_seek(v58, v52, 0);
        *(v55 + 185) = 0;
        free(v54);
        return v48;
      }

      else
      {
        archive_set_error(v58, 12, "Can't allocate memory for Mac metadata", v15, v16, v17, v18, v19, v41);
        return -30;
      }
    }

    else
    {
      archive_set_error(v58, 79, "Mac metadata is too large: %jd > 10M bytes", v3, v4, v5, v6, v7, *(v56 + 40));
      return -20;
    }
  }

  else
  {
    archive_set_error(v58, 79, "Mac metadata is too large: %jd > 10M bytes", v3, v4, v5, v6, v7, *(v56 + 48));
    return -20;
  }
}

uint64_t bomb_insert_central_node_and_detect_overlap(uint64_t *a1, void *a2)
{
  v12 = a1;
  v11 = a2;
  if (a1 && v11)
  {
    v10 = 0;
    v9 = 0;
    if (_bomb_get_begin_and_end(v11, 30, &v10, &v9))
    {
      return -30;
    }

    else
    {
      if (__archive_rb_tree_insert_node(v12, v11))
      {
        v8 = __archive_rb_tree_iterate(v12, v11, 0);
        if (v8)
        {
          v7 = 0;
          v6 = 0;
          if (_bomb_get_begin_and_end(v8, 30, &v7, &v6))
          {
            return -30;
          }

          if (v6 >= v10)
          {
            return -30;
          }
        }

        v5 = __archive_rb_tree_iterate(v12, v11, 1u);
        if (v5)
        {
          v4 = 0;
          v3 = 0;
          if (_bomb_get_begin_and_end(v5, 30, &v4, &v3))
          {
            return -30;
          }

          if (v4 <= v9)
          {
            return -30;
          }
        }

        return 0;
      }

      return -30;
    }
  }

  else
  {
    return -30;
  }
}

void *rsrc_basename(void *a1, uint64_t a2)
{
  __s = a1;
  for (i = a1; ; i = __s)
  {
    __sa = memchr(__s, 47, a2 - (__s - a1));
    if (!__sa)
    {
      break;
    }

    __s = __sa + 1;
  }

  return i;
}

uint64_t expose_parent_dirs(uint64_t a1, char *a2, char *a3)
{
  v7 = a1;
  __s[4] = a2;
  __s[3] = a3;
  memset(__s, 0, 24);
  archive_strncat(__s, a2, a3);
  while (1)
  {
    v4 = strrchr(__s[0], 47);
    if (!v4)
    {
      break;
    }

    *v4 = 0;
    node = __archive_rb_tree_find_node((v7 + 96), __s[0]);
    if (!node)
    {
      break;
    }

    __archive_rb_tree_remove_node((v7 + 96), node);
    archive_string_free((node + 9));
    if (bomb_insert_central_node_and_detect_overlap((v7 + 80), node))
    {
      return -30;
    }
  }

  archive_string_free(__s);
  return 0;
}

uint64_t cmp_node(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) <= *(a2 + 32))
  {
    return *(a1 + 32) < *(a2 + 32);
  }

  else
  {
    return -1;
  }
}

uint64_t bomb_cmp_node(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) <= *(a2 + 40))
  {
    return *(a1 + 40) < *(a2 + 40);
  }

  else
  {
    return -1;
  }
}

uint64_t bomb_cmp_key(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __archive_errx(1, "Programming error");
  }

  if (*(a1 + 40) <= *a2)
  {
    return *(a1 + 40) < *a2;
  }

  else
  {
    return -1;
  }
}

uint64_t zip_get_local_file_header_size(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __s1 = __archive_read_ahead(a1, a2 + 30, 0, a4, a5, a6, a7, a8);
  if (__s1)
  {
    __s1a = &__s1[a2];
    if (!memcmp(__s1a, "PK\x03\x04", 4uLL))
    {
      v19 = archive_le16dec_3(__s1a + 26);
      return v19 + 30 + archive_le16dec_3(__s1a + 28);
    }

    else
    {
      archive_set_error(a1, -1, "Damaged Zip archive", v13, v14, v15, v16, v17, 0);
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, 79, "Truncated ZIP file header", v8, v9, v10, v11, v12, 0);
    return -20;
  }
}

uint64_t archive_read_support_filter_compress(int *a1)
{
  if (archive_allow_entitlement_filter("compress"))
  {
    return __archive_read_register_bidder(a1, 0, "compress (.Z)", compress_bidder_vtable);
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t compress_bidder_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v10 = __archive_read_filter_ahead(a2, 3uLL, &v9, a4, a5, a6, a7, a8);
  if (v10)
  {
    if (*v10 == 31 && v10[1] == 157)
    {
      if ((v10[2] & 0x20) != 0)
      {
        return 0;
      }

      else if ((v10[2] & 0x40) != 0)
      {
        return 0;
      }

      else
      {
        return 18;
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

uint64_t compress_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 3;
  *(a1 + 48) = "compress (.Z)";
  v36 = malloc_type_calloc(1uLL, 0x3FF80uLL, 0x10D0040123C976AuLL);
  v35 = malloc_type_malloc(0x10000uLL, 0x40E9AF1CuLL);
  if (v36 && v35)
  {
    *(a1 + 40) = v36;
    v36[5] = 0x10000;
    v36[6] = v35;
    *(a1 + 32) = compress_reader_vtable;
    getbits(a1, 8, v1, v2, v3, v4, v5, v6);
    getbits(a1, 8, v12, v13, v14, v15, v16, v17);
    v33 = getbits(a1, 8, v18, v19, v20, v21, v22, v23);
    if ((v33 & 0x1Fu) <= 0x10)
    {
      *(v36 + 17) = v33 & 0x1F;
      *(v36 + 16) = 1 << *(v36 + 17);
      *(v36 + 14) = v33 & 0x80;
      *(v36 + 22) = 256;
      v36[24588] = v36 + 24589;
      if (*(v36 + 14))
      {
        ++*(v36 + 22);
      }

      *(v36 + 19) = 9;
      *(v36 + 18) = (1 << *(v36 + 19)) - 1;
      *(v36 + 20) = -1;
      for (i = 255; (i & 0x80000000) == 0; --i)
      {
        *(v36 + i + 32814) = 0;
        *(v36 + i + 92) = i;
      }

      next_code(a1, v24, v25, v26, v27, v28, v29, v30);
      return 0;
    }

    else
    {
      archive_set_error(*(a1 + 24), -1, "Invalid compressed data", v26, v27, v28, v29, v30, v32);
      return -30;
    }
  }

  else
  {
    free(v35);
    free(v36);
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for %s decompression", v7, v8, v9, v10, v11, *(a1 + 48));
    return -30;
  }
}

uint64_t getbits(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1;
  v15 = a2;
  v14 = *(a1 + 40);
  v13 = 0;
  v12 = 0;
  while (1)
  {
    if (*(v14 + 28) >= v15)
    {
      v13 = *(v14 + 24);
      *(v14 + 24) >>= v15;
      *(v14 + 28) -= v15;
      return (v13 & getbits_mask[v15]);
    }

    if (!*(v14 + 8))
    {
      break;
    }

LABEL_13:
    v10 = (*v14)++;
    *(v14 + 24) |= *v10 << *(v14 + 28);
    --*(v14 + 8);
    *(v14 + 28) += 8;
    ++*(v14 + 32);
  }

  if (*(v14 + 16))
  {
    __archive_read_filter_consume(*(v16 + 16), *(v14 + 16));
    *(v14 + 16) = 0;
  }

  v8 = __archive_read_filter_ahead(*(v16 + 16), 1uLL, &v12, a4, a5, a6, a7, a8);
  *v14 = v8;
  if (!v12)
  {
    return -1;
  }

  if ((v12 & 0x8000000000000000) == 0 && *v14)
  {
    v9 = v12;
    *(v14 + 8) = v12;
    *(v14 + 16) = v9;
    goto LABEL_13;
  }

  return -30;
}

uint64_t next_code(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *(a1 + 40);
  v24 = getbits(a1, *(v28 + 76), a3, a4, a5, a6, a7, a8);
  v25 = v24;
  if (v24 < 0)
  {
    return v24;
  }

  else
  {
    v14 = next_code_debug_index++;
    next_code_debug_buff[v14] = v24;
    if (next_code_debug_index >= 0x400uLL)
    {
      next_code_debug_index = 0;
    }

    if (v24 == 256 && *(v28 + 56))
    {
      v23 = (*(v28 + 76) - *(v28 + 32) % *(v28 + 76)) % *(v28 + 76);
      *(v28 + 28) = 0;
      while (1)
      {
        v15 = v23--;
        if (v15 <= 0)
        {
          break;
        }

        v26 = getbits(a1, 8, v8, v9, v10, v11, v12, v13);
        if ((v26 & 0x80000000) != 0)
        {
          return v26;
        }
      }

      *(v28 + 32) = 0;
      *(v28 + 76) = 9;
      *(v28 + 72) = (1 << *(v28 + 76)) - 1;
      *(v28 + 88) = 257;
      *(v28 + 80) = -1;
      return next_code(a1);
    }

    else if (v24 > *(v28 + 88) || v24 == *(v28 + 88) && (*(v28 + 80) & 0x80000000) != 0)
    {
      archive_set_error(*(a1 + 24), -1, "Invalid compressed data", v9, v10, v11, v12, v13, v22);
      return -30;
    }

    else
    {
      if (v24 >= *(v28 + 88))
      {
        v16 = *(v28 + 84);
        v17 = *(v28 + 196704);
        *(v28 + 196704) = v17 + 1;
        *v17 = v16;
        v25 = *(v28 + 80);
      }

      while (v25 >= 256)
      {
        v18 = *(v28 + 92 + v25);
        v19 = *(v28 + 196704);
        *(v28 + 196704) = v19 + 1;
        *v19 = v18;
        v25 = *(v28 + 65628 + 2 * v25);
      }

      *(v28 + 84) = v25;
      v20 = *(v28 + 196704);
      *(v28 + 196704) = v20 + 1;
      *v20 = v25;
      v27 = *(v28 + 88);
      if (v27 < *(v28 + 64) && (*(v28 + 80) & 0x80000000) == 0)
      {
        *(v28 + 65628 + 2 * v27) = *(v28 + 80);
        *(v28 + 92 + v27) = *(v28 + 84);
        ++*(v28 + 88);
      }

      if (*(v28 + 88) > *(v28 + 72))
      {
        ++*(v28 + 76);
        *(v28 + 32) = 0;
        if (*(v28 + 76) == *(v28 + 68))
        {
          *(v28 + 72) = *(v28 + 64);
        }

        else
        {
          *(v28 + 72) = (1 << *(v28 + 76)) - 1;
        }
      }

      *(v28 + 80) = v24;
      return 0;
    }
  }
}

_BYTE *compress_filter_read(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a1 + 40);
  if (*(v16 + 60))
  {
    *a2 = 0;
    return 0;
  }

  else
  {
    v14 = *(v16 + 48);
    v15 = v14;
    v13 = &v14[*(v16 + 40)];
    while (1)
    {
      v12 = 0;
      if (v15 < v13)
      {
        v12 = *(v16 + 60) == 0;
      }

      if (!v12)
      {
        break;
      }

      if (*(v16 + 196704) > (v16 + 196712))
      {
        v8 = (*(v16 + 196704) - 1);
        *(v16 + 196704) = v8;
        v9 = v15++;
        *v9 = *v8;
      }

      else
      {
        code = next_code(a1, a2, a3, a4, a5, a6, a7, a8);
        if (code == -1)
        {
          *(v16 + 60) = -1;
        }

        else if (code)
        {
          return code;
        }
      }
    }

    *a2 = v14;
    return (v15 - v14);
  }
}

uint64_t compress_filter_close(uint64_t a1)
{
  v2 = *(a1 + 40);
  free(v2[6]);
  free(v2);
  return 0;
}

void *archive_wstrncat(void *a1, const __int32 *a2, size_t a3)
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

  v7 = archive_wstring_append(a1, a2, v6);
  if (!v7)
  {
    __archive_errx(1, "Out of memory");
  }

  return v7;
}

uint64_t *archive_strappend_char(uint64_t *a1, char a2)
{
  v4 = a1;
  v3 = a2;
  v4 = archive_string_append(a1, &v3, 1);
  if (!v4)
  {
    __archive_errx(1, "Out of memory");
  }

  return v4;
}

void *archive_wstrappend_wchar(void *a1, __int32 a2)
{
  v4 = a1;
  v3 = a2;
  v4 = archive_wstring_append(a1, &v3, 1uLL);
  if (!v4)
  {
    __archive_errx(1, "Out of memory");
  }

  return v4;
}

uint64_t archive_string_append_from_wcs(void *a1, __int32 *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(&__b, 0, sizeof(__b));
  if (archive_string_ensure(a1, a1[1] + a3 + 1))
  {
    v9 = (*a1 + a1[1]);
    v8 = *a1 + a1[2] - *MEMORY[0x1E69E9838] - 1;
    while (1)
    {
      v7 = 0;
      if (*a2)
      {
        v7 = a3 != 0;
      }

      if (!v7)
      {
        break;
      }

      if (v9 >= v8)
      {
        a1[1] = &v9[-*a1];
        *(*a1 + a1[1]) = 0;
        if (*MEMORY[0x1E69E9838] >= (2 * a3))
        {
          v6 = *MEMORY[0x1E69E9838];
        }

        else
        {
          v6 = 2 * a3;
        }

        if (!archive_string_ensure(a1, a1[1] + v6 + 1))
        {
          v15 = -1;
          goto LABEL_21;
        }

        v9 = (*a1 + a1[1]);
        v8 = *a1 + a1[2] - *MEMORY[0x1E69E9838] - 1;
      }

      v3 = a2++;
      v11 = wcrtomb(v9, *v3, &__b);
      if (v11 == -1)
      {
        if (*__error() != 92)
        {
          v10 = -1;
          break;
        }

        v4 = v9++;
        *v4 = 63;
        v10 = -1;
      }

      else
      {
        v9 += v11;
      }

      --a3;
    }

    a1[1] = &v9[-*a1];
    *(*a1 + a1[1]) = 0;
    v15 = v10;
  }

  else
  {
    v15 = -1;
  }

LABEL_21:
  *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t archive_string_conversion_charset_name(uint64_t a1)
{
  if (*(a1 + 36))
  {
    return *(a1 + 16);
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t archive_string_conversion_set_opt(uint64_t result, int a2)
{
  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if ((*(result + 36) & 0x40) == 0)
      {
        *(result + 36) |= 0x40u;
        *(result + 36) &= ~0x80u;
        return setup_converter(result);
      }
    }

    else if (a2 == 4 && ((*(result + 36) & 8) != 0 || (*(result + 36) & 0x2A00) == 0 || (*(result + 36) & 0x1500) != 0) && (*(result + 36) & 0x80) == 0)
    {
      *(result + 36) |= 0x80u;
      *(result + 36) &= ~0x40u;
      return setup_converter(result);
    }
  }

  return result;
}

uint64_t utf16nbytes(_BYTE *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  for (i = a1; ; i += 2)
  {
    v4 = 0;
    if (v6 < a2 >> 1)
    {
      v3 = 1;
      if (!*i)
      {
        v3 = i[1] != 0;
      }

      v4 = v3;
    }

    if (!v4)
    {
      break;
    }

    ++v6;
  }

  return 2 * v6;
}

uint64_t archive_mstring_get_mbs_l(_DWORD *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = 0;
  if ((*(a2 + 96) & 1) == 0)
  {
    v6 = 0;
    archive_mstring_get_mbs(v12, v11, &v6);
  }

  if ((*(v11 + 96) & 1) == 0)
  {
    *v10 = 0;
    if (v9)
    {
      *v9 = 0;
    }

    return v7;
  }

  if (v8)
  {
    v7 = archive_strncpy_l((v11 + 72), *v11, *(v11 + 8), v8);
    *v10 = *(v11 + 72);
    if (v9)
    {
      *v9 = *(v11 + 80);
    }

    return v7;
  }

  *v10 = *v11;
  if (v9)
  {
    *v9 = *(v11 + 8);
  }

  return 0;
}

uint64_t archive_mstring_copy_wcs(uint64_t a1, const __int32 *a2)
{
  if (!a2)
  {
    return archive_mstring_copy_wcs_len(a1, 0, 0);
  }

  v3 = wcslen(a2);
  return archive_mstring_copy_wcs_len(a1, a2, v3);
}

uint64_t archive_mstring_copy_wcs_len(uint64_t a1, const __int32 *a2, size_t a3)
{
  if (a2)
  {
    *(a1 + 96) = 4;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    archive_wstrncat((a1 + 48), a2, a3);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  return 0;
}

uint64_t archive_mstring_copy_utf8(uint64_t a1, const char *a2)
{
  if (a2)
  {
    *(a1 + 96) = 2;
    *(a1 + 8) = 0;
    *(a1 + 56) = 0;
    *(a1 + 32) = 0;
    v2 = strlen(a2);
    archive_strncat((a1 + 24), a2, v2);
    return strlen(a2);
  }

  else
  {
    *(a1 + 96) = 0;
    return 0;
  }
}

uint64_t archive_mstring_update_utf8(_DWORD *a1, uint64_t a2, char *a3)
{
  if (a3)
  {
    *(a2 + 32) = 0;
    v7 = (a2 + 24);
    v6 = strlen(a3);
    archive_strncat(v7, a3, v6);
    *(a2 + 8) = 0;
    *(a2 + 56) = 0;
    *(a2 + 96) = 2;
    v9 = archive_string_conversion_from_charset(a1, "UTF-8", 1);
    if (v9)
    {
      if (a3)
      {
        v5 = strlen(a3);
        v3 = archive_strncpy_l(a2, a3, v5, v9);
      }

      else
      {
        v3 = archive_strncpy_l(a2, 0, 0, v9);
      }

      v8 = v3;
      if (!a1)
      {
        free_sconv_object(v9);
      }

      if (v8)
      {
        return -1;
      }

      else
      {
        *(a2 + 96) = 3;
        if (archive_wstring_append_from_mbs((a2 + 48), *a2, *(a2 + 8)))
        {
          return -1;
        }

        else
        {
          *(a2 + 96) = 7;
          return 0;
        }
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    *(a2 + 96) = 0;
    return 0;
  }
}

uint64_t strncat_from_utf8_libarchive2(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  memset(&__b, 0, sizeof(__b));
  if (archive_string_ensure(v15, v15[1] + v13 + 1))
  {
    v11 = v14;
    v9 = (*v15 + v15[1]);
    v8 = *v15 + v15[2] - *MEMORY[0x1E69E9838] - 1;
    while (1)
    {
      v10 = _utf8_to_unicode(&v7, v11, v13);
      if (!v10)
      {
        break;
      }

      if (v9 >= v8)
      {
        v15[1] = &v9[-*v15];
        if (*MEMORY[0x1E69E9838] >= (2 * v13))
        {
          v5 = *MEMORY[0x1E69E9838];
        }

        else
        {
          v5 = 2 * v13;
        }

        if (!archive_string_ensure(v15, v15[1] + v5 + 1))
        {
          v16 = -1;
          goto LABEL_19;
        }

        v9 = (*v15 + v15[1]);
        v8 = *v15 + v15[2] - *MEMORY[0x1E69E9838] - 1;
      }

      if (v10 < 0)
      {
        v10 = -v10;
        v6 = 63;
      }

      else
      {
        v6 = v7;
      }

      v11 += v10;
      v13 -= v10;
      v10 = wcrtomb(v9, v6, &__b);
      if (v10 == -1)
      {
        v16 = -1;
        goto LABEL_19;
      }

      v9 += v10;
    }

    v15[1] = &v9[-*v15];
    *(*v15 + v15[1]) = 0;
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

LABEL_19:
  *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t archive_string_append_unicode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v9 = 0;
  if ((*(a4 + 36) & 0x400) != 0)
  {
    v5 = unicode_to_utf16be;
    v8 = 2;
  }

  else if ((*(v16 + 36) & 0x1000) != 0)
  {
    v5 = unicode_to_utf16le;
    v8 = 2;
  }

  else if ((*(v16 + 36) & 0x100) != 0)
  {
    v5 = unicode_to_utf8;
    v8 = 1;
  }

  else if ((*(v16 + 36) & 0x800) != 0)
  {
    v5 = unicode_to_utf16be;
    v8 = 2;
  }

  else if ((*(v16 + 36) & 0x2000) != 0)
  {
    v5 = unicode_to_utf16le;
    v8 = 2;
  }

  else
  {
    v5 = unicode_to_utf8;
    v8 = 1;
  }

  if ((*(v16 + 36) & 0x800) != 0)
  {
    v6 = utf16be_to_unicode;
    v7 = 1;
  }

  else if ((*(v16 + 36) & 0x2000) != 0)
  {
    v6 = utf16le_to_unicode;
    v7 = 1;
  }

  else
  {
    v6 = cesu8_to_unicode;
    v7 = v8;
  }

  if (archive_string_ensure(v19, v19[1] + v17 * v7 + v8))
  {
    v15 = v18;
    v14 = *v19 + v19[1];
    v13 = *v19 + v19[2] - v8;
    while (1)
    {
      v10 = v6(&v12, v15, v17);
      if (!v10)
      {
        break;
      }

      if (v10 < 0)
      {
        v10 = -v10;
        v9 = -1;
      }

      v15 += v10;
      v17 -= v10;
      while (1)
      {
        v11 = v5(v14, v13 - v14, v12);
        if (v11)
        {
          break;
        }

        v19[1] = v14 - *v19;
        if (!archive_string_ensure(v19, v19[2] + v17 * v7 + v8))
        {
          return -1;
        }

        v14 = *v19 + v19[1];
        v13 = *v19 + v19[2] - v8;
      }

      v14 += v11;
    }

    v19[1] = v14 - *v19;
    *(*v19 + v19[1]) = 0;
    if (v8 == 2)
    {
      *(*v19 + v19[1] + 1) = 0;
    }

    return v9;
  }

  else
  {
    return -1;
  }
}

uint64_t iconv_strncat_in_locale(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if ((*(a4 + 36) & 0x1400) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if ((*(v15 + 36) & 0x2800) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (archive_string_ensure(v18, v18[1] + 2 * v16 + v8))
  {
    v12 = *(v15 + 40);
    v14 = v17;
    v13 = v16;
    v11 = (*v18 + v18[1]);
    v10 = v18[2] - v18[1] - v8;
    while (v13 >= v7 && MEMORY[0x1BFB558A0](v12, &v14, &v13, &v11, &v10) == -1)
    {
      if (*__error() == 92 || *__error() == 22)
      {
        if ((*(v15 + 36) & 0x1500) != 0)
        {
          if ((*(v15 + 36) & 0x100) != 0)
          {
            v6 = 3;
          }

          else
          {
            v6 = 2;
          }

          if (v10 < v6)
          {
            v18[1] = v11 - *v18;
            if (!archive_string_ensure(v18, v18[2] + v13 * v8 + v6))
            {
              return -1;
            }

            v11 = (*v18 + v18[1]);
            v10 = v18[2] - v18[1] - v8;
          }

          if ((*(v15 + 36) & 0x100) != 0)
          {
            __memcpy_chk();
          }

          else if ((*(v15 + 36) & 0x400) != 0)
          {
            archive_be16enc_1(v11, 65533);
          }

          else
          {
            archive_le16enc_1(v11, 65533);
          }

          v11 = (v11 + v6);
          v10 -= v6;
        }

        else
        {
          v4 = v11;
          v11 = (v11 + 1);
          *v4 = 63;
          --v10;
        }

        v14 += v7;
        v13 -= v7;
        v9 = -1;
      }

      else
      {
        v18[1] = v11 - *v18;
        if (!archive_string_ensure(v18, v18[2] + 2 * v13))
        {
          return -1;
        }

        v11 = (*v18 + v18[1]);
        v10 = v18[2] - v18[1] - v8;
      }
    }

    v18[1] = v11 - *v18;
    *(*v18 + v18[1]) = 0;
    if (v8 == 2)
    {
      *(*v18 + v18[1] + 1) = 0;
    }

    return v9;
  }

  else
  {
    return -1;
  }
}

uint64_t archive_string_normalize_D(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v54 = a1;
  v53 = a2;
  v52 = a3;
  v51 = a4;
  v50 = a2;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v44 = 1;
  v39 = 1;
  if ((*(a4 + 36) & 0x400) != 0)
  {
    v36 = unicode_to_utf16be;
    v39 = 2;
    v44 = (*(v51 + 36) & 0x800) == 0;
  }

  else if ((*(v51 + 36) & 0x1000) != 0)
  {
    v36 = unicode_to_utf16le;
    v39 = 2;
    v44 = (*(v51 + 36) & 0x2000) == 0;
  }

  else if ((*(v51 + 36) & 0x100) != 0)
  {
    v36 = unicode_to_utf8;
    v44 = (*(v51 + 36) & 0x200) == 0;
  }

  else
  {
    v44 = 0;
    if ((*(v51 + 36) & 0x800) != 0)
    {
      v36 = unicode_to_utf16be;
      v39 = 2;
    }

    else if ((*(v51 + 36) & 0x2000) != 0)
    {
      v36 = unicode_to_utf16le;
      v39 = 2;
    }

    else
    {
      v36 = unicode_to_utf8;
    }
  }

  if ((*(v51 + 36) & 0x800) != 0)
  {
    v37 = utf16be_to_unicode;
    v38 = 1;
    v40 = 4;
  }

  else if ((*(v51 + 36) & 0x2000) != 0)
  {
    v37 = utf16le_to_unicode;
    v38 = 1;
    v40 = 4;
  }

  else
  {
    v37 = cesu8_to_unicode;
    v38 = v39;
    v40 = 6;
  }

  if (!archive_string_ensure(v54, v54[1] + v52 * v38 + v39))
  {
    v55 = -1;
    goto LABEL_138;
  }

  v49 = (*v54 + v54[1]);
  v48 = *v54 + v54[2] - v39;
LABEL_20:
  v43 = v37(&v47, v50, v52);
  if (v43)
  {
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v29 = 0;
    while (1)
    {
      if (v43 < 0)
      {
        while (1)
        {
          v45 = (v36)(v49, v48 - v49, v47);
          if (v45)
          {
            break;
          }

          v54[1] = &v49[-*v54];
          if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
          {
            v55 = -1;
            goto LABEL_138;
          }

          v49 = (*v54 + v54[1]);
          v48 = *v54 + v54[2] - v39;
        }

        v49 += v45;
        v50 -= v43;
        v52 -= -v43;
        v41 = -1;
        goto LABEL_20;
      }

      if (v43 == v40 || v44)
      {
        v35 = 0;
      }

      else
      {
        v35 = v50;
      }

      v50 += v43;
      v52 -= v43;
      v32 = v47 - 44032;
      if (((v47 - 44032) & 0x80000000) == 0 && v32 < 11172)
      {
        v47 = v32 / 588 + 4352;
        v35 = 0;
        while (1)
        {
          v45 = (v36)(v49, v48 - v49, v47);
          if (v45)
          {
            break;
          }

          v54[1] = &v49[-*v54];
          if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
          {
            v55 = -1;
            goto LABEL_138;
          }

          v49 = (*v54 + v54[1]);
          v48 = *v54 + v54[2] - v39;
        }

        v49 += v45;
        v47 = v32 % 588 / 28 + 4449;
        v35 = 0;
        while (1)
        {
          v45 = (v36)(v49, v48 - v49, v47);
          if (v45)
          {
            break;
          }

          v54[1] = &v49[-*v54];
          if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
          {
            v55 = -1;
            goto LABEL_138;
          }

          v49 = (*v54 + v54[1]);
          v48 = *v54 + v54[2] - v39;
        }

        v49 += v45;
        if (v32 % 28)
        {
          v47 = v32 % 28 + 4519;
          v35 = 0;
          while (1)
          {
            v45 = (v36)(v49, v48 - v49, v47);
            if (v45)
            {
              break;
            }

            v54[1] = &v49[-*v54];
            if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
            {
              v55 = -1;
              goto LABEL_138;
            }

            v49 = (*v54 + v54[1]);
            v48 = *v54 + v54[2] - v39;
          }

          v49 += v45;
        }

        goto LABEL_20;
      }

      if (v47 >> 8 <= 0x1D2 && u_decomposable_blocks[v47 >> 8])
      {
        if (v47 > 0x1D244 ? 0 : ccc_val[16 * ccc_val_index[16 * ccc_index[v47 >> 8] + (v47 >> 4)] + (v47 & 0xF)])
        {
          if (v35)
          {
            if (&v49[v43] > v48)
            {
              v54[1] = &v49[-*v54];
              if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
              {
                v55 = -1;
                goto LABEL_138;
              }

              v49 = (*v54 + v54[1]);
              v48 = *v54 + v54[2] - v39;
            }

            switch(v43)
            {
              case 1:
                goto LABEL_70;
              case 2:
                goto LABEL_69;
              case 3:
                goto LABEL_68;
              case 4:
                v4 = v35++;
                LOBYTE(v4) = *v4;
                v5 = v49++;
                *v5 = v4;
LABEL_68:
                v6 = v35++;
                LOBYTE(v6) = *v6;
                v7 = v49++;
                *v7 = v6;
LABEL_69:
                v8 = v35++;
                LOBYTE(v8) = *v8;
                v9 = v49++;
                *v9 = v8;
LABEL_70:
                v10 = *v35;
                v11 = v49++;
                *v11 = v10;
                break;
            }

            v35 = 0;
            goto LABEL_20;
          }

          while (1)
          {
            v45 = (v36)(v49, v48 - v49, v47);
            if (v45)
            {
              break;
            }

            v54[1] = &v49[-*v54];
            if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
            {
              v55 = -1;
              goto LABEL_138;
            }

            v49 = (*v54 + v54[1]);
            v48 = *v54 + v54[2] - v39;
          }

          v49 += v45;
          goto LABEL_20;
        }
      }

      for (i = 0; ; ++i)
      {
        v24 = 0;
        if (get_nfd(&v34, &v33, v47))
        {
          v24 = i < 10;
        }

        if (!v24)
        {
          break;
        }

        for (j = i; j > 0; --j)
        {
          *&v56[2 * j] = *&v56[2 * j - 2];
        }

        if (v33 <= 0x1D244)
        {
          v23 = ccc_val[16 * ccc_val_index[16 * ccc_index[v33 >> 8] + (v33 >> 4)] + (v33 & 0xF)];
        }

        else
        {
          v23 = 0;
        }

        v56[1] = v23;
        v56[0] = v33;
        v47 = v34;
        v35 = 0;
      }

      while (1)
      {
        v42 = v37(&v46, v50, v52);
        v22 = 0;
        if (v42 > 0)
        {
          v21 = v46 > 0x1D244 ? 0 : ccc_val[16 * ccc_val_index[16 * ccc_index[v46 >> 8] + (v46 >> 4)] + (v46 & 0xF)];
          v29 = v21;
          v22 = 0;
          if (v21)
          {
            v22 = i < 10;
          }
        }

        if (!v22)
        {
          break;
        }

        v50 += v42;
        v52 -= v42;
          ;
        }

        if (k >= i)
        {
          v56[2 * i + 1] = v29;
          v56[2 * i] = v46;
        }

        else
        {
          for (m = i; m > k; --m)
          {
            *&v56[2 * m] = *&v56[2 * m - 2];
          }

          v56[2 * k + 1] = v29;
          v56[2 * k] = v46;
        }

        ++i;
      }

      if (v35)
      {
        break;
      }

      while (1)
      {
        v45 = (v36)(v49, v48 - v49, v47);
        if (v45)
        {
          break;
        }

        v54[1] = &v49[-*v54];
        if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
        {
          v55 = -1;
          goto LABEL_138;
        }

        v49 = (*v54 + v54[1]);
        v48 = *v54 + v54[2] - v39;
      }

      v49 += v45;
LABEL_125:
      for (n = 0; n < i; ++n)
      {
        v47 = v56[2 * n];
        v35 = 0;
        while (1)
        {
          v45 = (v36)(v49, v48 - v49, v47);
          if (v45)
          {
            break;
          }

          v54[1] = &v49[-*v54];
          if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
          {
            v55 = -1;
            goto LABEL_138;
          }

          v49 = (*v54 + v54[1]);
          v48 = *v54 + v54[2] - v39;
        }

        v49 += v45;
      }

      if (!v42)
      {
        goto LABEL_135;
      }

      v47 = v46;
      v35 = 0;
      v43 = v42;
    }

    if (&v49[v43] > v48)
    {
      v54[1] = &v49[-*v54];
      if (!archive_string_ensure(v54, v54[2] + v52 * v38 + v39))
      {
        v55 = -1;
        goto LABEL_138;
      }

      v49 = (*v54 + v54[1]);
      v48 = *v54 + v54[2] - v39;
    }

    if (v43 != 1)
    {
      if (v43 != 2)
      {
        if (v43 != 3)
        {
          if (v43 != 4)
          {
LABEL_119:
            v35 = 0;
            goto LABEL_125;
          }

          v12 = v35++;
          LOBYTE(v12) = *v12;
          v13 = v49++;
          *v13 = v12;
        }

        v14 = v35++;
        LOBYTE(v14) = *v14;
        v15 = v49++;
        *v15 = v14;
      }

      v16 = v35++;
      LOBYTE(v16) = *v16;
      v17 = v49++;
      *v17 = v16;
    }

    v18 = *v35;
    v19 = v49++;
    *v19 = v18;
    goto LABEL_119;
  }

LABEL_135:
  v54[1] = &v49[-*v54];
  *(*v54 + v54[1]) = 0;
  if (v39 == 2)
  {
    *(*v54 + v54[1] + 1) = 0;
  }

  v55 = v41;
LABEL_138:
  *MEMORY[0x1E69E9840];
  return v55;
}

uint64_t archive_string_normalize_C(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v115 = *MEMORY[0x1E69E9840];
  v111 = a1;
  v110 = a2;
  v109 = a3;
  v108 = a4;
  v107 = a2;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v88 = 0;
  v86 = 1;
  if ((*(a4 + 36) & 0x400) != 0)
  {
    v83 = unicode_to_utf16be;
    v86 = 2;
    v91 = (*(v108 + 36) & 0x800) == 0;
  }

  else if ((*(v108 + 36) & 0x1000) != 0)
  {
    v83 = unicode_to_utf16le;
    v86 = 2;
    v91 = (*(v108 + 36) & 0x2000) == 0;
  }

  else if ((*(v108 + 36) & 0x100) != 0)
  {
    v83 = unicode_to_utf8;
    v91 = (*(v108 + 36) & 0x200) == 0;
  }

  else
  {
    v91 = 0;
    if ((*(v108 + 36) & 0x800) != 0)
    {
      v83 = unicode_to_utf16be;
      v86 = 2;
    }

    else if ((*(v108 + 36) & 0x2000) != 0)
    {
      v83 = unicode_to_utf16le;
      v86 = 2;
    }

    else
    {
      v83 = unicode_to_utf8;
    }
  }

  if ((*(v108 + 36) & 0x800) != 0)
  {
    v84 = utf16be_to_unicode;
    v85 = 1;
    v87 = 4;
  }

  else if ((*(v108 + 36) & 0x2000) != 0)
  {
    v84 = utf16le_to_unicode;
    v85 = 1;
    v87 = 4;
  }

  else
  {
    v84 = cesu8_to_unicode;
    v85 = v86;
    v87 = 6;
  }

  if (!archive_string_ensure(v111, v111[1] + v109 * v85 + v86))
  {
    v112 = -1;
    goto LABEL_263;
  }

  v106 = (*v111 + v111[1]);
  v105 = *v111 + v111[2] - v86;
  while (1)
  {
LABEL_20:
    v90 = v84(&v104, v107, v109);
    if (!v90)
    {
      goto LABEL_260;
    }

    if ((v90 & 0x80000000) == 0)
    {
      break;
    }

    while (1)
    {
      v92 = (v83)(v106, v105 - v106, v104);
      if (v92)
      {
        break;
      }

      v111[1] = &v106[-*v111];
      if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
      {
        v112 = -1;
        goto LABEL_263;
      }

      v106 = (*v111 + v111[1]);
      v105 = *v111 + v111[2] - v86;
    }

    v106 += v92;
    v107 -= v90;
    v109 -= -v90;
    v88 = -1;
  }

  if (v90 == v87 || v91)
  {
    v82 = 0;
  }

  else
  {
    v82 = v107;
  }

  v107 += v90;
  v109 -= v90;
  while (1)
  {
    v89 = v84(&v103, v107, v109);
    if (v89 <= 0)
    {
      break;
    }

    v75 = 0;
    if (v89 == v87 || v91)
    {
      v81 = 0;
    }

    else
    {
      v81 = v107;
    }

    v107 += v89;
    v109 -= v89;
    if (v103 >> 8 <= 0x1D2 && u_decomposable_blocks[v103 >> 8])
    {
      v73 = v104 - 4352;
      if (v104 - 4352 < 0 || v73 >= 19)
      {
        v72 = v104 - 44032;
        if (v104 - 44032 < 0 || v72 >= 11172 || v72 % 28)
        {
          nfc = get_nfc(v104, v103);
          if (nfc)
          {
            v104 = nfc;
            v82 = 0;
          }

          else
          {
            if (v103 > 0x1D244)
            {
              v64 = 0;
            }

            else
            {
              v64 = ccc_val[16 * ccc_val_index[16 * ccc_index[v103 >> 8] + (v103 >> 4)] + (v103 & 0xF)];
            }

            v80 = v64;
            if (v64)
            {
              v79 = 0;
              v114[0] = v103;
              v113[0] = v64;
              for (i = 1; i < 10; ++i)
              {
                v75 = v84(&v114[i], v107, v109);
                if (v75 <= 0)
                {
                  break;
                }

                v63 = v114[i] > 0x1D244u ? 0 : ccc_val[16 * ccc_val_index[16 * ccc_index[v114[i] >> 8] + ((v114[i] >> 4) & 0xF)] + (v114[i] & 0xF)];
                v79 = v63;
                if (v80 >= v63 && v80 != 228 && v63 != 228)
                {
                  break;
                }

                v107 += v75;
                v109 -= v75;
                v80 = v63;
                v113[i] = v63;
              }

              if (i < 10)
              {
                v74 = i;
              }

              else
              {
                v88 = -1;
                v74 = 10;
              }

              v77 = 1;
              while (v77 < v74)
              {
                v71 = get_nfc(v104, v114[v77]);
                if (v71)
                {
                  v104 = v71;
                  v82 = 0;
                  for (j = v77; j + 1 < v74; ++j)
                  {
                    v114[j] = v114[j + 1];
                    v113[j] = v113[j + 1];
                  }

                  if (--v74 > 0 && v77 == v74 && v75 > 0 && v79 == v80)
                  {
                    v80 = v113[v74 - 1];
                    for (k = v74; k < 10; ++k)
                    {
                      v75 = v84(&v114[k], v107, v109);
                      if (v75 <= 0)
                      {
                        break;
                      }

                      v62 = v114[k] > 0x1D244u ? 0 : ccc_val[16 * ccc_val_index[16 * ccc_index[v114[k] >> 8] + ((v114[k] >> 4) & 0xF)] + (v114[k] & 0xF)];
                      v79 = v62;
                      if (v80 >= v62 && v80 != 228 && v62 != 228)
                      {
                        break;
                      }

                      v107 += v75;
                      v109 -= v75;
                      v80 = v62;
                      v113[k] = v62;
                    }

                    if (k < 10)
                    {
                      v74 = k;
                    }

                    else
                    {
                      v88 = -1;
                      v74 = 10;
                    }
                  }

                  v77 = 0;
                }

                else
                {
                  ++v77;
                }
              }

              if (v82)
              {
                if (&v106[v90] > v105)
                {
                  v111[1] = &v106[-*v111];
                  if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                  {
                    v112 = -1;
                    goto LABEL_263;
                  }

                  v106 = (*v111 + v111[1]);
                  v105 = *v111 + v111[2] - v86;
                }

                switch(v90)
                {
                  case 1:
                    goto LABEL_186;
                  case 2:
                    goto LABEL_185;
                  case 3:
                    goto LABEL_184;
                  case 4:
                    v36 = v82++;
                    LOBYTE(v36) = *v36;
                    v37 = v106++;
                    *v37 = v36;
LABEL_184:
                    v38 = v82++;
                    LOBYTE(v38) = *v38;
                    v39 = v106++;
                    *v39 = v38;
LABEL_185:
                    v40 = v82++;
                    LOBYTE(v40) = *v40;
                    v41 = v106++;
                    *v41 = v40;
LABEL_186:
                    v42 = *v82;
                    v43 = v106++;
                    *v43 = v42;
                    break;
                }

                v82 = 0;
              }

              else
              {
                while (1)
                {
                  v97 = (v83)(v106, v105 - v106, v104);
                  if (v97)
                  {
                    break;
                  }

                  v111[1] = &v106[-*v111];
                  if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                  {
                    v112 = -1;
                    goto LABEL_263;
                  }

                  v106 = (*v111 + v111[1]);
                  v105 = *v111 + v111[2] - v86;
                }

                v106 += v97;
              }

              for (m = 0; m < v74; ++m)
              {
                while (1)
                {
                  v98 = (v83)(v106, v105 - v106, v114[m]);
                  if (v98)
                  {
                    break;
                  }

                  v111[1] = &v106[-*v111];
                  if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                  {
                    v112 = -1;
                    goto LABEL_263;
                  }

                  v106 = (*v111 + v111[1]);
                  v105 = *v111 + v111[2] - v86;
                }

                v106 += v98;
              }

              if (v75 > 0 && v79 == v80 && v109)
              {
                while (1)
                {
                  v76 = v84(v114, v107, v109);
                  if (v76 <= 0)
                  {
                    break;
                  }

                  v61 = v114[0] > 0x1D244u ? 0 : ccc_val[16 * ccc_val_index[16 * ccc_index[v114[0] >> 8] + (LOBYTE(v114[0]) >> 4)] + (v114[0] & 0xF)];
                  if (v80 > v61)
                  {
                    break;
                  }

                  v107 += v76;
                  v109 -= v76;
                  v80 = v61;
                  while (1)
                  {
                    v99 = (v83)(v106, v105 - v106, v114[0]);
                    if (v99)
                    {
                      break;
                    }

                    v111[1] = &v106[-*v111];
                    if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                    {
                      v112 = -1;
                      goto LABEL_263;
                    }

                    v106 = (*v111 + v111[1]);
                    v105 = *v111 + v111[2] - v86;
                  }

                  v106 += v99;
                }
              }

              break;
            }

            if (v82)
            {
              if (&v106[v90] > v105)
              {
                v111[1] = &v106[-*v111];
                if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                {
                  v112 = -1;
                  goto LABEL_263;
                }

                v106 = (*v111 + v111[1]);
                v105 = *v111 + v111[2] - v86;
              }

              if (v90 != 1)
              {
                if (v90 != 2)
                {
                  if (v90 != 3)
                  {
                    if (v90 != 4)
                    {
                      goto LABEL_135;
                    }

                    v28 = v82++;
                    LOBYTE(v28) = *v28;
                    v29 = v106++;
                    *v29 = v28;
                  }

                  v30 = v82++;
                  LOBYTE(v30) = *v30;
                  v31 = v106++;
                  *v31 = v30;
                }

                v32 = v82++;
                LOBYTE(v32) = *v32;
                v33 = v106++;
                *v33 = v32;
              }

              v34 = *v82;
              v35 = v106++;
              *v35 = v34;
            }

            else
            {
              while (1)
              {
                v96 = (v83)(v106, v105 - v106, v104);
                if (v96)
                {
                  break;
                }

                v111[1] = &v106[-*v111];
                if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                {
                  v112 = -1;
                  goto LABEL_263;
                }

                v106 = (*v111 + v111[1]);
                v105 = *v111 + v111[2] - v86;
              }

              v106 += v96;
            }

LABEL_135:
            v104 = v103;
            v82 = v81;
            v90 = v89;
          }
        }

        else
        {
          v68 = v103 - 4519;
          if ((v103 - 4519) <= 0 || v68 >= 28)
          {
            if (v82)
            {
              if (&v106[v90] > v105)
              {
                v111[1] = &v106[-*v111];
                if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                {
                  v112 = -1;
                  goto LABEL_263;
                }

                v106 = (*v111 + v111[1]);
                v105 = *v111 + v111[2] - v86;
              }

              if (v90 != 1)
              {
                if (v90 != 2)
                {
                  if (v90 != 3)
                  {
                    if (v90 != 4)
                    {
                      goto LABEL_109;
                    }

                    v20 = v82++;
                    LOBYTE(v20) = *v20;
                    v21 = v106++;
                    *v21 = v20;
                  }

                  v22 = v82++;
                  LOBYTE(v22) = *v22;
                  v23 = v106++;
                  *v23 = v22;
                }

                v24 = v82++;
                LOBYTE(v24) = *v24;
                v25 = v106++;
                *v25 = v24;
              }

              v26 = *v82;
              v27 = v106++;
              *v27 = v26;
            }

            else
            {
              while (1)
              {
                v95 = (v83)(v106, v105 - v106, v104);
                if (v95)
                {
                  break;
                }

                v111[1] = &v106[-*v111];
                if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
                {
                  v112 = -1;
                  goto LABEL_263;
                }

                v106 = (*v111 + v111[1]);
                v105 = *v111 + v111[2] - v86;
              }

              v106 += v95;
            }

LABEL_109:
            v104 = v103;
            v82 = v81;
            v90 = v89;
          }

          else
          {
            v104 += v68;
            v82 = 0;
          }
        }
      }

      else
      {
        v69 = v103 - 4449;
        if ((v103 - 4449) < 0 || v69 >= 21)
        {
          if (v82)
          {
            if (&v106[v90] > v105)
            {
              v111[1] = &v106[-*v111];
              if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
              {
                v112 = -1;
                goto LABEL_263;
              }

              v106 = (*v111 + v111[1]);
              v105 = *v111 + v111[2] - v86;
            }

            if (v90 != 1)
            {
              if (v90 != 2)
              {
                if (v90 != 3)
                {
                  if (v90 != 4)
                  {
                    goto LABEL_83;
                  }

                  v12 = v82++;
                  LOBYTE(v12) = *v12;
                  v13 = v106++;
                  *v13 = v12;
                }

                v14 = v82++;
                LOBYTE(v14) = *v14;
                v15 = v106++;
                *v15 = v14;
              }

              v16 = v82++;
              LOBYTE(v16) = *v16;
              v17 = v106++;
              *v17 = v16;
            }

            v18 = *v82;
            v19 = v106++;
            *v19 = v18;
          }

          else
          {
            while (1)
            {
              v94 = (v83)(v106, v105 - v106, v104);
              if (v94)
              {
                break;
              }

              v111[1] = &v106[-*v111];
              if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
              {
                v112 = -1;
                goto LABEL_263;
              }

              v106 = (*v111 + v111[1]);
              v105 = *v111 + v111[2] - v86;
            }

            v106 += v94;
          }

LABEL_83:
          v104 = v103;
          v82 = v81;
          v90 = v89;
        }

        else
        {
          v104 = 28 * (21 * v73 + v69) + 44032;
          v82 = 0;
        }
      }
    }

    else
    {
      if (v82)
      {
        if (&v106[v90] > v105)
        {
          v111[1] = &v106[-*v111];
          if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
          {
            v112 = -1;
            goto LABEL_263;
          }

          v106 = (*v111 + v111[1]);
          v105 = *v111 + v111[2] - v86;
        }

        if (v90 != 1)
        {
          if (v90 != 2)
          {
            if (v90 != 3)
            {
              if (v90 != 4)
              {
                goto LABEL_58;
              }

              v4 = v82++;
              LOBYTE(v4) = *v4;
              v5 = v106++;
              *v5 = v4;
            }

            v6 = v82++;
            LOBYTE(v6) = *v6;
            v7 = v106++;
            *v7 = v6;
          }

          v8 = v82++;
          LOBYTE(v8) = *v8;
          v9 = v106++;
          *v9 = v8;
        }

        v10 = *v82;
        v11 = v106++;
        *v11 = v10;
      }

      else
      {
        while (1)
        {
          v93 = (v83)(v106, v105 - v106, v104);
          if (v93)
          {
            break;
          }

          v111[1] = &v106[-*v111];
          if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
          {
            v112 = -1;
            goto LABEL_263;
          }

          v106 = (*v111 + v111[1]);
          v105 = *v111 + v111[2] - v86;
        }

        v106 += v93;
      }

LABEL_58:
      v104 = v103;
      v82 = v81;
      v90 = v89;
    }
  }

  if ((v89 & 0x80000000) == 0)
  {
    if (!v89)
    {
      if (v82)
      {
        if (&v106[v90] > v105)
        {
          v111[1] = &v106[-*v111];
          if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
          {
            v112 = -1;
            goto LABEL_263;
          }

          v106 = (*v111 + v111[1]);
          v105 = *v111 + v111[2] - v86;
        }

        switch(v90)
        {
          case 1:
            goto LABEL_252;
          case 2:
            goto LABEL_251;
          case 3:
            goto LABEL_250;
          case 4:
            v52 = v82++;
            LOBYTE(v52) = *v52;
            v53 = v106++;
            *v53 = v52;
LABEL_250:
            v54 = v82++;
            LOBYTE(v54) = *v54;
            v55 = v106++;
            *v55 = v54;
LABEL_251:
            v56 = v82++;
            LOBYTE(v56) = *v56;
            v57 = v106++;
            *v57 = v56;
LABEL_252:
            v58 = *v82;
            v59 = v106++;
            *v59 = v58;
            break;
        }
      }

      else
      {
        while (1)
        {
          v102 = (v83)(v106, v105 - v106, v104);
          if (v102)
          {
            break;
          }

          v111[1] = &v106[-*v111];
          if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
          {
            v112 = -1;
            goto LABEL_263;
          }

          v106 = (*v111 + v111[1]);
          v105 = *v111 + v111[2] - v86;
        }

        v106 += v102;
      }

LABEL_260:
      v111[1] = &v106[-*v111];
      *(*v111 + v111[1]) = 0;
      if (v86 == 2)
      {
        *(*v111 + v111[1] + 1) = 0;
      }

      v112 = v88;
      goto LABEL_263;
    }

    goto LABEL_20;
  }

  if (v82)
  {
    if (&v106[v90] > v105)
    {
      v111[1] = &v106[-*v111];
      if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
      {
        v112 = -1;
        goto LABEL_263;
      }

      v106 = (*v111 + v111[1]);
      v105 = *v111 + v111[2] - v86;
    }

    if (v90 != 1)
    {
      if (v90 != 2)
      {
        if (v90 != 3)
        {
          if (v90 != 4)
          {
            goto LABEL_234;
          }

          v44 = v82++;
          LOBYTE(v44) = *v44;
          v45 = v106++;
          *v45 = v44;
        }

        v46 = v82++;
        LOBYTE(v46) = *v46;
        v47 = v106++;
        *v47 = v46;
      }

      v48 = v82++;
      LOBYTE(v48) = *v48;
      v49 = v106++;
      *v49 = v48;
    }

    v50 = *v82;
    v51 = v106++;
    *v51 = v50;
LABEL_234:
    while (1)
    {
      v101 = (v83)(v106, v105 - v106, v103);
      if (v101)
      {
        break;
      }

      v111[1] = &v106[-*v111];
      if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
      {
        v112 = -1;
        goto LABEL_263;
      }

      v106 = (*v111 + v111[1]);
      v105 = *v111 + v111[2] - v86;
    }

    v106 += v101;
    v107 -= v89;
    v109 -= -v89;
    v88 = -1;
    goto LABEL_20;
  }

  while (1)
  {
    v100 = (v83)(v106, v105 - v106, v104);
    if (v100)
    {
      v106 += v100;
      goto LABEL_234;
    }

    v111[1] = &v106[-*v111];
    if (!archive_string_ensure(v111, v111[2] + v109 * v85 + v86))
    {
      break;
    }

    v106 = (*v111 + v111[1]);
    v105 = *v111 + v111[2] - v86;
  }

  v112 = -1;
LABEL_263:
  *MEMORY[0x1E69E9840];
  return v112;
}

uint64_t best_effort_strncat_in_locale(uint64_t *a1, char *a2, size_t a3, uint64_t a4)
{
  v6 = 0;
  if (*(a4 + 32))
  {
    if (archive_string_append(a1, a2, a3))
    {
      return invalid_mbs(a2, a3, a4);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    for (i = a2; ; ++i)
    {
      v5 = 0;
      if (*i)
      {
        v5 = a3 != 0;
      }

      if (!v5)
      {
        break;
      }

      if (*i <= 0x7Fu)
      {
        archive_strappend_char(a1, *i);
      }

      else
      {
        if ((*(a4 + 36) & 0x100) != 0)
        {
          if (!archive_string_append(a1, &utf8_replacement_char, 3))
          {
            __archive_errx(1, "Out of memory");
          }
        }

        else
        {
          archive_strappend_char(a1, 63);
        }

        v6 = -1;
      }
    }

    return v6;
  }
}

uint64_t unicode_to_utf16be(_BYTE *a1, unint64_t a2, unsigned int a3)
{
  if (a3 < 0x10000)
  {
    if (a2 >= 2)
    {
      archive_be16enc_1(a1, a3);
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else if (a2 >= 4)
  {
    v5 = a3;
    archive_be16enc_1(a1, (((a3 - 0x10000) >> 10) & 0x3FF) - 10240);
    archive_be16enc_1(a1 + 2, (v5 & 0x3FF) - 9216);
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t unicode_to_utf16le(_WORD *a1, unint64_t a2, unsigned int a3)
{
  if (a3 < 0x10000)
  {
    if (a2 >= 2)
    {
      archive_le16enc_1(a1, a3);
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else if (a2 >= 4)
  {
    v5 = a3;
    archive_le16enc_1(a1, (((a3 - 0x10000) >> 10) & 0x3FF) - 10240);
    archive_le16enc_1(a1 + 1, (v5 & 0x3FF) - 9216);
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t unicode_to_utf8(_BYTE *a1, unint64_t a2, unsigned int a3)
{
  v4 = a3;
  if (a3 >= 0x110000)
  {
    v4 = 65533;
  }

  if (v4 > 0x7F)
  {
    if (v4 > 0x7FF)
    {
      if (v4 >= 0x10000)
      {
        if (a2 < 4)
        {
          return 0;
        }

        *a1 = (v4 >> 18) & 7 | 0xF0;
        a1[1] = (v4 >> 12) & 0x3F | 0x80;
        a1[2] = (v4 >> 6) & 0x3F | 0x80;
        v5 = a1 + 4;
        a1[3] = v4 & 0x3F | 0x80;
      }

      else
      {
        if (a2 < 3)
        {
          return 0;
        }

        *a1 = (v4 >> 12) & 0xF | 0xE0;
        a1[1] = (v4 >> 6) & 0x3F | 0x80;
        v5 = a1 + 3;
        a1[2] = v4 & 0x3F | 0x80;
      }
    }

    else
    {
      if (a2 < 2)
      {
        return 0;
      }

      *a1 = (v4 >> 6) & 0x1F | 0xC0;
      v5 = a1 + 2;
      a1[1] = v4 & 0x3F | 0x80;
    }

    return v5 - a1;
  }

  if (a2)
  {
    v5 = a1 + 1;
    *a1 = v4;
    return v5 - a1;
  }

  return 0;
}

uint64_t cesu8_to_unicode(unsigned int *a1, unsigned __int8 *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = _utf8_to_unicode(&v6, a2, a3);
  if (v5 != 3 || v6 < 0xD800 || v6 > 0xDBFF)
  {
    if (v5 == 3 && v6 >= 0xDC00 && v6 < 0xE000)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v9 = v6;
    return v5;
  }

  v4 = 0;
  if ((v7 - 3) >= 3)
  {
    v5 = _utf8_to_unicode(&v4, v8 + 3, v7 - 3);
    if (v5 == 3 && v4 >= 0xDC00 && v4 < 0xE000)
    {
      v6 = combine_surrogate_pair(v6, v4);
      v5 = 6;
      goto LABEL_13;
    }
  }

LABEL_14:
  *v9 = 65533;
  if (v5 > 0)
  {
    return -v5;
  }

  return v5;
}

_BYTE *archive_be16enc_1(_BYTE *result, __int16 a2)
{
  *result = HIBYTE(a2);
  result[1] = a2;
  return result;
}

uint64_t utf16_to_unicode(unsigned int *a1, unsigned __int16 *a2, unint64_t a3, int a4)
{
  v11 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      *a1 = 65533;
      return -1;
    }

    else
    {
      if (a4)
      {
        v6 = archive_be16dec_0(a2);
      }

      else
      {
        v6 = archive_le16dec_4(a2);
      }

      v8 = a2 + 1;
      if (v6 >= 0xD800 && v6 <= 0xDBFF)
      {
        if (a3 < 4)
        {
          v5 = 0;
        }

        else if (a4)
        {
          v5 = archive_be16dec_0(v8);
        }

        else
        {
          v5 = archive_le16dec_4(v8);
        }

        if (v5 < 0xDC00 || v5 >= 0xE000)
        {
          *a1 = 65533;
          return -2;
        }

        v6 = combine_surrogate_pair(v6, v5);
        LODWORD(v8) = v8 + 2;
      }

      if ((v6 < 0xD800 || v6 >= 0xE000) && v6 < 0x110000)
      {
        *a1 = v6;
        return (v8 - v11);
      }

      else
      {
        *a1 = 65533;
        return (v11 - v8);
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t best_effort_strncat_to_utf16(void *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = 0;
  v10 = a3;
  if (archive_string_ensure(a1, a1[1] + 2 * (a3 + 1)))
  {
    for (i = (*a1 + a1[1]); v10--; i += 2)
    {
      v6 = a2++;
      v8 = *v6;
      if (v8 > 0x7F)
      {
        LOWORD(v8) = -3;
        v9 = -1;
      }

      if (a5)
      {
        archive_be16enc_1(i, v8);
      }

      else
      {
        archive_le16enc_1(i, v8);
      }
    }

    a1[1] = &i[-*a1];
    *(*a1 + a1[1]) = 0;
    *(*a1 + a1[1] + 1) = 0;
    return v9;
  }

  else
  {
    return -1;
  }
}

uint64_t get_nfd(_DWORD *a1, _DWORD *a2, unsigned int a3)
{
  if ((a3 < 0x2000 || a3 >= 0x3000) && (a3 < 0xF900 || a3 > 0xFAFF) && (a3 < 0x2F800 || a3 > 0x2FAFF))
  {
    if (a3 == 69786 || a3 == 69788 || a3 == 69803)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v5 = 930;
      while (v5 >= v6)
      {
        v4 = (v6 + v5) / 2;
        if (u_decomposition_table[3 * v4] >= a3)
        {
          if (u_decomposition_table[3 * v4] <= a3)
          {
            *a1 = u_decomposition_table[3 * v4 + 1];
            *a2 = u_decomposition_table[3 * v4 + 2];
            return 1;
          }

          v5 = v4 - 1;
        }

        else
        {
          v6 = v4 + 1;
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

uint64_t get_nfc(unsigned int a1, unsigned int a2)
{
  v5 = 0;
  v4 = 930;
  while (v4 >= v5)
  {
    v3 = (v5 + v4) / 2;
    if (u_composition_table[3 * v3] >= a1)
    {
      if (u_composition_table[3 * v3] <= a1)
      {
        if (u_composition_table[3 * v3 + 1] >= a2)
        {
          if (u_composition_table[3 * v3 + 1] <= a2)
          {
            return u_composition_table[3 * v3 + 2];
          }

          v4 = v3 - 1;
        }

        else
        {
          v5 = v3 + 1;
        }
      }

      else
      {
        v4 = v3 - 1;
      }
    }

    else
    {
      v5 = v3 + 1;
    }
  }

  return 0;
}

uint64_t best_effort_strncat_from_utf16(uint64_t a1, unsigned __int16 *a2, unint64_t a3, uint64_t a4, int a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v7 = 0;
  if (archive_string_ensure(a1, *(a1 + 8) + a3 + 1))
  {
    v10 = (*v16 + v16[1]);
    while (1)
    {
      v8 = utf16_to_unicode(&v9, v11, v14, v12);
      if (!v8)
      {
        break;
      }

      if (v8 < 0)
      {
        v8 = -v8;
        v7 = -1;
      }

      v14 -= v8;
      v11 = (v11 + v8);
      v5 = v10++;
      if (v9 <= 0x7F)
      {
        *v5 = v9;
      }

      else
      {
        *v5 = 63;
        v7 = -1;
      }
    }

    v16[1] = &v10[-*v16];
    *(*v16 + v16[1]) = 0;
    return v7;
  }

  else
  {
    return -1;
  }
}

uint64_t invalid_mbs(char *a1, size_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a1;
  v5 = 0;
  memset(&__b, 0, sizeof(__b));
  while (v8)
  {
    v4 = 0;
    v5 = mbrtowc(&v4, v6, v8, &__b);
    if (v5 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v10 = -1;
      goto LABEL_8;
    }

    if (!v5)
    {
      break;
    }

    v6 += v5;
    v8 -= v5;
  }

  v10 = 0;
LABEL_8:
  *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t *append_int(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return append_uint(a1, a2, a3);
  }

  archive_strappend_char(a1, 45);
  if (a2 == 0x8000000000000000)
  {
    v4 = 0x8000000000000000;
  }

  else
  {
    v4 = -a2;
  }

  return append_uint(a1, v4, a3);
}

uint64_t *append_uint(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    append_uint(a1, a2 / a3, a3);
  }

  return archive_strappend_char(a1, append_uint_digits[a2 % a3]);
}

uint64_t archive_error_string(uint64_t a1)
{
  if (*(a1 + 40) && **(a1 + 40))
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t *archive_copy_error(uint64_t a1, uint64_t a2)
{
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 56) = 0;
  result = archive_string_concat((a1 + 48), (a2 + 48));
  *(a1 + 40) = *(a1 + 48);
  return result;
}

void __archive_errx(int a1, const char *a2)
{
  write(2, "Fatal Internal Error in libarchive: ", 0x24uLL);
  v2 = strlen(a2);
  write(2, a2, v2);
  write(2, "\n", 1uLL);
  exit(a1);
}

uint64_t get_tempdir(uint64_t *a1)
{
  v3 = getenv("TMPDIR");
  if (!v3)
  {
    v3 = "/tmp";
  }

  a1[1] = 0;
  if (v3)
  {
    v2 = strlen(v3);
    archive_strncat(a1, v3, v2);
  }

  else
  {
    archive_strncat(a1, 0, 0);
  }

  if (*(*a1 + a1[1] - 1) != 47)
  {
    archive_strappend_char(a1, 47);
  }

  return 0;
}

uint64_t __archive_mktemp(const char *a1)
{
  v7 = a1;
  v3 = -1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (a1)
  {
    v5 = 0;
    v2 = strlen(v7);
    archive_strncat(&v4, v7, v2);
    if (v4[v5 - 1] != 47)
    {
      archive_strappend_char(&v4, 47);
    }
  }

  else if (get_tempdir(&v4))
  {
    goto LABEL_8;
  }

  archive_strcat(&v4, "libarchive_XXXXXX");
  v3 = mkstemp(v4);
  if ((v3 & 0x80000000) == 0)
  {
    __archive_ensure_cloexec_flag(v3);
    unlink(v4);
  }

LABEL_8:
  archive_string_free(&v4);
  return v3;
}

uint64_t __archive_mkstemp(char *a1)
{
  v2 = mkstemp(a1);
  if ((v2 & 0x80000000) == 0)
  {
    __archive_ensure_cloexec_flag(v2);
  }

  return v2;
}

uint64_t archive_utility_string_sort(char **a1)
{
    ;
  }

  return archive_utility_string_sort_helper(a1, i);
}

uint64_t archive_utility_string_sort_helper(char **a1, unsigned int a2)
{
  if (a2 > 1)
  {
    v11 = 0;
    v12 = 0;
    ptr = 0;
    v10 = 0;
    __s2 = *a1;
    for (i = 1; i < a2; ++i)
    {
      if (strcmp(a1[i], __s2) < 0)
      {
        v7 = malloc_type_realloc(v10, 8 * ++v12, 0x10040436913F5uLL);
        if (!v7)
        {
          goto LABEL_7;
        }

        v10 = v7;
        *(v7 + v12 - 1) = a1[i];
      }

      else
      {
        v8 = malloc_type_realloc(ptr, 8 * ++v11, 0x10040436913F5uLL);
        if (!v8)
        {
LABEL_7:
          free(ptr);
          free(v10);
          return -30;
        }

        ptr = v8;
        *(v8 + v11 - 1) = a1[i];
      }
    }

    v5 = archive_utility_string_sort_helper(v10, v12);
    for (j = 0; j < v12; ++j)
    {
      a1[j] = *(v10 + j);
    }

    free(v10);
    a1[v12] = __s2;
    v4 = archive_utility_string_sort_helper(ptr, v11);
    for (k = 0; k < v11; ++k)
    {
      (&a1[v12 + 1])[k] = *(ptr + k);
    }

    free(ptr);
    if (v5 >= v4)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_set_format_option_0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = -20;
  v6 = 0;
  for (i = 0; i < 0x10; ++i)
  {
    v5 = a1 + 664 + 88 * i;
    if (*(v5 + 24) && *(v5 + 8))
    {
      if (a2)
      {
        if (strcmp(*(v5 + 8), a2))
        {
          continue;
        }

        ++v6;
      }

      *(a1 + 2072) = v5;
      v8 = (*(v5 + 24))(a1, a3, a4);
      *(a1 + 2072) = 0;
      if (v8 == -30)
      {
        return -30;
      }

      if (!v8)
      {
        v7 = 0;
      }
    }
  }

  if (!a2 || v6)
  {
    return v7;
  }

  else
  {
    return -21;
  }
}

uint64_t archive_set_filter_option_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return -21;
  }

  else
  {
    return -20;
  }
}

uint64_t __archive_get_date()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v21[2] = *MEMORY[0x1E69E9840];
  v18 = v0;
  v17 = v1;
  memset(__b, 0, sizeof(__b));
  v15 = 0;
  v14 = 0;
  memset(&__dst, 0, sizeof(__dst));
  v12 = 0;
  memset(&v11, 0, sizeof(v11));
  bzero(v20, 0x1000uLL);
  memset(__b, 0, sizeof(__b));
  v14 = __b;
  v12 = localtime_r(&v18, &__dst);
  if (v12)
  {
    __src = gmtime_r(&v18, &v11);
    if (__src)
    {
      v5 = difftm(&v11, &__dst);
    }

    else
    {
      v5 = 0;
    }

    if (__dst.tm_isdst)
    {
      v5 += 3600;
    }

    v15 = v20;
    while (1)
    {
      v2 = nexttoken(&v17, v15 + 1);
      *v15 = v2;
      if (!v2)
      {
        break;
      }

      v15 += 16;
      if (v15 > v21)
      {
        v19 = -1;
        goto LABEL_57;
      }
    }

    *v14 = v20;
    while (*v14 < v15)
    {
      if (!phrase(v14))
      {
        v19 = -1;
        goto LABEL_57;
      }
    }

    if (!*(v14 + 7))
    {
      *(v14 + 5) = v5;
      *(v14 + 24) = 2;
    }

    if (*(v14 + 7) && __src)
    {
      v18 -= *(v14 + 5);
      __srca = gmtime_r(&v18, &v11);
      if (__srca)
      {
        memcpy(&__dst, __srca, sizeof(__dst));
      }

      v18 += *(v14 + 5);
    }

    if (!*(v14 + 2))
    {
      *(v14 + 11) = __dst.tm_year + 1900;
    }

    if (!*(v14 + 3))
    {
      *(v14 + 9) = __dst.tm_mon + 1;
    }

    if (!*(v14 + 4))
    {
      *(v14 + 6) = __dst.tm_mday;
    }

    if (*(v14 + 6) <= 1 && *(v14 + 7) <= 1 && *(v14 + 5) <= 1 && *(v14 + 2) <= 1 && *(v14 + 3) <= 1 && *(v14 + 4) <= 1)
    {
      if (*(v14 + 2) || *(v14 + 3) || *(v14 + 4) || *(v14 + 6) || *(v14 + 5))
      {
        v6 = Convert(*(v14 + 9), *(v14 + 6), *(v14 + 11), *(v14 + 7), *(v14 + 8), *(v14 + 10), *(v14 + 5), *(v14 + 24));
        if (v6 < 0)
        {
          v19 = -1;
          goto LABEL_57;
        }
      }

      else
      {
        v6 = v18;
        if (!*(v14 + 8))
        {
          v6 = v18 - (3600 * __dst.tm_hour + 60 * __dst.tm_min + __dst.tm_sec);
        }
      }

      v7 = v6 + *(v14 + 16);
      v8 = v7 + RelativeMonth(v7, *(v14 + 5), *(v14 + 15));
      if (*(v14 + 5) && !*(v14 + 2) && !*(v14 + 3) && !*(v14 + 4))
      {
        v8 += RelativeDate(v8, *(v14 + 5), *(v14 + 24), *(v14 + 13), *(v14 + 14));
      }

      if (v8 == -1)
      {
        v4 = 0;
      }

      else
      {
        v4 = v8;
      }

      v19 = v4;
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = -1;
  }

LABEL_57:
  *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t difftm(_DWORD *a1, _DWORD *a2)
{
  v4 = a1[5] + 1899;
  v3 = a2[5] + 1899;
  return 86400 * (a1[7] - a2[7] + (v4 >> 2) - (v3 >> 2) - (v4 / 100 - v3 / 100) + ((v4 / 100) >> 2) - ((v3 / 100) >> 2) + 365 * (v4 - v3)) + 3600 * (a1[2] - a2[2]) + 60 * (a1[1] - a2[1]) + *a1 - *a2;
}

uint64_t nexttoken(char **a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
LABEL_2:
  while (isspace(**a1))
  {
    ++*a1;
  }

  if (**a1 == 40)
  {
    v15 = 0;
    while (1)
    {
      v2 = (*a1)++;
      v16 = *v2;
      if (!*v2)
      {
        break;
      }

      if (v16 == 40)
      {
        ++v15;
      }

      else if (v16 == 41)
      {
        --v15;
      }

      if (v15 <= 0)
      {
        goto LABEL_2;
      }
    }

    v20 = 0;
  }

  else
  {
    v14 = *a1;
    v12 = 0;
    while (1)
    {
      v10 = 0;
      if (*v14)
      {
        if (isalnum(*v14) || (v10 = 0, *v14 == 46))
        {
          v10 = v12 < 0x3FuLL;
        }
      }

      if (!v10)
      {
        break;
      }

      if (*v14 != 46)
      {
        if (isupper(*v14))
        {
          v3 = tolower(*v14);
          v4 = v12++;
          __s[v4] = v3;
        }

        else
        {
          v5 = v12++;
          __s[v5] = *v14;
        }
      }

      ++v14;
    }

    __s[v12] = 0;
    for (i = &TimeWords; *(i + 1); i += 32)
    {
      v11 = *i;
      if (!*i)
      {
        v11 = strlen(*(i + 1));
      }

      if (strlen(__s) >= v11)
      {
        v6 = strlen(__s);
        if (!strncmp(*(i + 1), __s, v6))
        {
          *a1 = v14;
          *a2 = *(i + 3);
          v20 = *(i + 4);
          goto LABEL_39;
        }
      }
    }

    if (isdigit(**a1))
    {
      for (*a2 = 0; ; *a2 = 10 * *a2 + v17 - 48)
      {
        v7 = (*a1)++;
        v17 = *v7;
        if (!isdigit(*v7))
        {
          break;
        }
      }

      --*a1;
      v20 = 267;
    }

    else
    {
      v8 = (*a1)++;
      v20 = *v8;
    }
  }

LABEL_39:
  *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t phrase(uint64_t a1)
{
  if (timephrase(a1))
  {
    return 1;
  }

  else if (zonephrase(a1))
  {
    return 1;
  }

  else if (datephrase(a1))
  {
    return 1;
  }

  else if (dayphrase(a1))
  {
    return 1;
  }

  else
  {
    if (!relunitphrase(a1))
    {
      if (**a1 == 267)
      {
        if (*(a1 + 24) && !*(a1 + 8) && !*(a1 + 32))
        {
          ++*(a1 + 8);
          *(a1 + 88) = *(*a1 + 8);
          *a1 += 16;
          return 1;
        }

        if (*(*a1 + 8) > 10000)
        {
          ++*(a1 + 8);
          ++*(a1 + 12);
          ++*(a1 + 16);
          *(a1 + 48) = *(*a1 + 8) % 100;
          *(a1 + 72) = *(*a1 + 8) / 100 % 100;
          *(a1 + 88) = *(*a1 + 8) / 10000;
          *a1 += 16;
          return 1;
        }

        if (*(*a1 + 8) < 24)
        {
          ++*(a1 + 24);
          *(a1 + 56) = *(*a1 + 8);
          *(a1 + 64) = 0;
          *(a1 + 80) = 0;
          *a1 += 16;
          return 1;
        }

        if (*(*a1 + 8) / 100 < 24 && *(*a1 + 8) % 100 < 60)
        {
          *(a1 + 56) = *(*a1 + 8) / 100;
          *(a1 + 64) = *(*a1 + 8) % 100;
          *(a1 + 80) = 0;
          *a1 += 16;
          return 1;
        }
      }

      return 0;
    }

    if (**a1 == 260)
    {
      *(a1 + 128) = -*(a1 + 128);
      *(a1 + 120) = -*(a1 + 120);
      *a1 += 16;
    }

    return 1;
  }
}

time_t Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v18 = a7;
  v17 = a8;
  v26 = 0x1F1F1E1F1E1F001FLL;
  v27 = 522067742;
  v16 = 0;
  i = 0;
  v14 = 0;
  memset(&__b, 0, sizeof(__b));
  if (v22 >= 69)
  {
    if (v22 < 100)
    {
      v22 += 1900;
    }
  }

  else
  {
    v22 += 2000;
  }

  v12 = 0;
  if (!(v22 % 4))
  {
    v11 = 1;
    if (!(v22 % 100))
    {
      v11 = v22 % 400 == 0;
    }

    v12 = v11;
  }

  if (v12)
  {
    v8 = 29;
  }

  else
  {
    v8 = 28;
  }

  BYTE1(v26) = v8;
  if (v22 < 1970 || v22 >= 2038 || v24 < 1 || v24 > 12 || v23 < 1 || (--v24, v23 > *(&v26 + v24)) || v21 < 0 || v21 > 23 || v20 < 0 || v20 > 59 || v19 < 0 || v19 > 59)
  {
    v25 = -1;
  }

  else
  {
    v16 = v23 - 1;
    for (i = 0; i < v24; ++i)
    {
      v16 += *(&v26 + i);
    }

    for (i = 1970; i < v22; ++i)
    {
      if (i % 4)
      {
        v9 = 365;
      }

      else
      {
        v9 = 366;
      }

      v16 += v9;
    }

    v16 *= 86400;
    v16 += v18;
    v16 += 3600 * v21 + 60 * v20 + v19;
    v14 = localtime_r(&v16, &__b);
    if (!v17 || v17 == 2 && v14->tm_isdst)
    {
      v16 -= 3600;
    }

    v25 = v16;
  }

  *MEMORY[0x1E69E9840];
  return v25;
}

time_t RelativeMonth(time_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  memset(&__b, 0, sizeof(__b));
  if (!v10)
  {
    return 0;
  }

  v9 = localtime_r(&v12, &__b);
  v8 = v10 + 12 * (v9->tm_year + 1900) + v9->tm_mon;
  v7 = v8 / 12;
  v8 = v8 % 12 + 1;
  v5 = v12;
  v3 = Convert(v8, v9->tm_mday, v7, v9->tm_hour, v9->tm_min, v9->tm_sec, v11, 2);
  return DSTcorrect(v5, v3);
}

time_t RelativeDate(time_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = 0;
  v8 = 0;
  memset(&__b, 0, sizeof(__b));
  v9 = v15 - v14;
  v10 = gmtime_r(&v9, &__b);
  v8 = v15;
  v8 = v15 + 86400 * ((v11 - v10->tm_wday + 7) % 7);
  if (v12 > 0)
  {
    v6 = v12 - 1;
  }

  else
  {
    v6 = v12;
  }

  v8 += 604800 * v6;
  if (v13 == 2)
  {
    return DSTcorrect(v15, v8);
  }

  else
  {
    return v8 - v15;
  }
}

uint64_t timephrase(uint64_t a1)
{
  if (**a1 == 267 && *(*a1 + 16) == 58 && *(*a1 + 32) == 267 && *(*a1 + 48) == 58 && *(*a1 + 64) == 267)
  {
    ++*(a1 + 24);
    *(a1 + 56) = *(*a1 + 8);
    *(a1 + 64) = *(*a1 + 40);
    *(a1 + 80) = *(*a1 + 72);
    *a1 += 80;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 58 && *(*a1 + 32) == 267)
  {
    ++*(a1 + 24);
    *(a1 + 56) = *(*a1 + 8);
    *(a1 + 64) = *(*a1 + 40);
    *(a1 + 80) = 0;
    *a1 += 48;
  }

  else
  {
    if (**a1 != 267 || *(*a1 + 16) != 263)
    {
      return 0;
    }

    ++*(a1 + 24);
    *(a1 + 56) = *(*a1 + 8);
    *(a1 + 80) = 0;
    *(a1 + 64) = 0;
    *a1 += 16;
  }

  if (**a1 == 263)
  {
    if (*(a1 + 56) == 12)
    {
      *(a1 + 56) = 0;
    }

    if (*(*a1 + 8) == 1)
    {
      *(a1 + 56) += 12;
    }

    *a1 += 16;
  }

  if (**a1 == 43 && *(*a1 + 16) == 267)
  {
    ++*(a1 + 28);
    *(a1 + 96) = 1;
    *(a1 + 40) = -(3600 * (*(*a1 + 24) / 100) + 60 * (*(*a1 + 24) % 100));
    *a1 += 32;
  }

  if (**a1 == 45 && *(*a1 + 16) == 267)
  {
    ++*(a1 + 28);
    *(a1 + 96) = 1;
    *(a1 + 40) = 3600 * (*(*a1 + 24) / 100) + 60 * (*(*a1 + 24) % 100);
    *a1 += 32;
  }

  return 1;
}

uint64_t zonephrase(uint64_t a1)
{
  if (**a1 != 268 || *(*a1 + 16) != 269)
  {
    if (**a1 == 268)
    {
      ++*(a1 + 28);
      *(a1 + 40) = *(*a1 + 8);
      *(a1 + 96) = 1;
      *a1 += 16;
      return 1;
    }

    if (**a1 != 262)
    {
      return 0;
    }
  }

  ++*(a1 + 28);
  *(a1 + 40) = *(*a1 + 8);
  *(a1 + 96) = 0;
  *a1 += 16;
  return 1;
}

uint64_t datephrase(uint64_t a1)
{
  if (**a1 == 267 && *(*a1 + 16) == 47 && *(*a1 + 32) == 267 && *(*a1 + 48) == 47 && *(*a1 + 64) == 267)
  {
    ++*(a1 + 8);
    ++*(a1 + 12);
    ++*(a1 + 16);
    if (*(*a1 + 8) < 13)
    {
      if (*(*a1 + 72) < 13 && *(*a1 + 40) < 13)
      {
        *(a1 + 72) = *(*a1 + 8);
        *(a1 + 48) = *(*a1 + 40);
        *(a1 + 88) = *(*a1 + 72);
      }

      else
      {
        *(a1 + 72) = *(*a1 + 8);
        *(a1 + 48) = *(*a1 + 40);
        *(a1 + 88) = *(*a1 + 72);
      }
    }

    else
    {
      *(a1 + 88) = *(*a1 + 8);
      *(a1 + 72) = *(*a1 + 40);
      *(a1 + 48) = *(*a1 + 72);
    }

    *a1 += 80;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 47 && *(*a1 + 32) == 267)
  {
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 72) = *(*a1 + 8);
    *(a1 + 48) = *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 45 && *(*a1 + 32) == 267 && *(*a1 + 48) == 45 && *(*a1 + 64) == 267)
  {
    ++*(a1 + 8);
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 88) = *(*a1 + 8);
    *(a1 + 72) = *(*a1 + 40);
    *(a1 + 48) = *(*a1 + 72);
    *a1 += 80;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 45 && *(*a1 + 32) == 264 && *(*a1 + 48) == 45 && *(*a1 + 64) == 267)
  {
    ++*(a1 + 8);
    ++*(a1 + 12);
    ++*(a1 + 16);
    if (*(*a1 + 8) <= 31)
    {
      *(a1 + 48) = *(*a1 + 8);
      *(a1 + 72) = *(*a1 + 40);
      *(a1 + 88) = *(*a1 + 72);
    }

    else
    {
      *(a1 + 88) = *(*a1 + 8);
      *(a1 + 72) = *(*a1 + 40);
      *(a1 + 48) = *(*a1 + 72);
    }

    *a1 += 80;
    return 1;
  }

  else if (**a1 == 264 && *(*a1 + 16) == 267 && *(*a1 + 32) == 44 && *(*a1 + 48) == 267)
  {
    ++*(a1 + 8);
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 72) = *(*a1 + 8);
    *(a1 + 48) = *(*a1 + 24);
    *(a1 + 88) = *(*a1 + 56);
    *a1 += 64;
    return 1;
  }

  else if (**a1 == 264 && *(*a1 + 16) == 267)
  {
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 72) = *(*a1 + 8);
    *(a1 + 48) = *(*a1 + 24);
    *a1 += 32;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 264 && *(*a1 + 32) == 267)
  {
    ++*(a1 + 8);
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 48) = *(*a1 + 8);
    *(a1 + 72) = *(*a1 + 24);
    *(a1 + 88) = *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 264)
  {
    ++*(a1 + 12);
    ++*(a1 + 16);
    *(a1 + 48) = *(*a1 + 8);
    *(a1 + 72) = *(*a1 + 24);
    *a1 += 32;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t dayphrase(uint64_t a1)
{
  if (**a1 == 261)
  {
    ++*(a1 + 20);
    *(a1 + 104) = 1;
    *(a1 + 112) = *(*a1 + 8);
    *a1 += 16;
    if (**a1 == 44)
    {
      *a1 += 16;
    }

    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 261)
  {
    ++*(a1 + 20);
    *(a1 + 104) = *(*a1 + 8);
    *(a1 + 112) = *(*a1 + 24);
    *a1 += 32;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t relunitphrase(uint64_t a1)
{
  if (**a1 == 45 && *(*a1 + 16) == 267 && *(*a1 + 32) == 266)
  {
    ++*(a1 + 32);
    *(a1 + 128) -= *(*a1 + 24) * *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 43 && *(*a1 + 16) == 267 && *(*a1 + 32) == 266)
  {
    ++*(a1 + 32);
    *(a1 + 128) += *(*a1 + 24) * *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 266)
  {
    ++*(a1 + 32);
    *(a1 + 128) += *(*a1 + 8) * *(*a1 + 24);
    *a1 += 32;
    return 1;
  }

  else if (**a1 == 45 && *(*a1 + 16) == 267 && *(*a1 + 32) == 265)
  {
    ++*(a1 + 32);
    *(a1 + 120) -= *(*a1 + 24) * *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 43 && *(*a1 + 16) == 267 && *(*a1 + 32) == 265)
  {
    ++*(a1 + 32);
    *(a1 + 120) += *(*a1 + 24) * *(*a1 + 40);
    *a1 += 48;
    return 1;
  }

  else if (**a1 == 267 && *(*a1 + 16) == 265)
  {
    ++*(a1 + 32);
    *(a1 + 120) += *(*a1 + 8) * *(*a1 + 24);
    *a1 += 32;
    return 1;
  }

  else if (**a1 == 266)
  {
    ++*(a1 + 32);
    *(a1 + 128) += *(*a1 + 8);
    *a1 += 16;
    return 1;
  }

  else if (**a1 == 265)
  {
    ++*(a1 + 32);
    *(a1 + 120) += *(*a1 + 8);
    *a1 += 16;
    return 1;
  }

  else
  {
    return 0;
  }
}

time_t DSTcorrect(time_t a1, time_t a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  memset(&__b, 0, sizeof(__b));
  v4 = localtime_r(&v8, &__b);
  v6 = (v4->tm_hour + 1) % 24;
  v4 = localtime_r(&v7, &__b);
  return v7 - v8 + 3600 * (v6 - (v4->tm_hour + 1) % 24);
}

void *archive_write_new()
{
  v2 = malloc_type_calloc(1uLL, 0x158uLL, 0x10F00405F4101F2uLL);
  if (!v2)
  {
    return 0;
  }

  *v2 = -1329217314;
  *(v2 + 1) = 1;
  *(v2 + 1) = archive_write_vtable;
  *(v2 + 56) = 10240;
  *(v2 + 57) = -1;
  *(v2 + 22) = 1024;
  v1 = malloc_type_calloc(*(v2 + 22), 1uLL, 0x100004077774924uLL);
  if (v1)
  {
    *(v2 + 21) = v1;
    return v2;
  }

  else
  {
    free(v2);
    return 0;
  }
}

uint64_t archive_write_set_bytes_per_block(int *a1, int a2)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_bytes_per_block") == -30)
  {
    return -30;
  }

  else
  {
    a1[56] = a2;
    return 0;
  }
}

uint64_t archive_write_get_bytes_per_block(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 0x7FFF, "archive_write_get_bytes_per_block") == -30)
  {
    return -30;
  }

  else
  {
    return *(a1 + 224);
  }
}

uint64_t archive_write_set_bytes_in_last_block(int *a1, int a2)
{
  if (__archive_check_magic(a1, -1329217314, 0x7FFF, "archive_write_set_bytes_in_last_block") == -30)
  {
    return -30;
  }

  else
  {
    a1[57] = a2;
    return 0;
  }
}

uint64_t archive_write_get_bytes_in_last_block(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 0x7FFF, "archive_write_get_bytes_in_last_block") == -30)
  {
    return -30;
  }

  else
  {
    return *(a1 + 228);
  }
}

uint64_t archive_write_set_skip_file(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, -1329217314, 0x7FFF, "archive_write_set_skip_file") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 144) = 1;
    *(a1 + 152) = a2;
    *(a1 + 160) = a3;
    return 0;
  }
}

void *__archive_write_allocate_filter(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x10F0040906ABE4DuLL);
  if (!v2)
  {
    return 0;
  }

  v2[1] = a1;
  *(v2 + 25) = 1;
  if (*(a1 + 232))
  {
    *(*(a1 + 240) + 16) = v2;
  }

  else
  {
    *(a1 + 232) = v2;
  }

  *(a1 + 240) = v2;
  return v2;
}

uint64_t __archive_write_filter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 100) == 2)
  {
    if (a3)
    {
      if (*(a1 + 40))
      {
        v3 = (*(a1 + 40))(a1, a2, a3);
        *a1 += a3;
        return v3;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t __archive_write_nulls(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  if (a2)
  {
    while (v5)
    {
      if (v5 >= *(a1 + 176))
      {
        v3 = *(a1 + 176);
      }

      else
      {
        v3 = v5;
      }

      v4 = __archive_write_output(a1, *(a1 + 168), v3);
      if ((v4 & 0x80000000) != 0)
      {
        return v4;
      }

      v5 -= v3;
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_open2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_open") == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(a1);
    *(a1 + 192) = a4;
    *(a1 + 184) = a3;
    *(a1 + 200) = a5;
    *(a1 + 208) = a6;
    *(a1 + 216) = a2;
    v10 = __archive_write_allocate_filter(a1);
    if (v10)
    {
      v10[4] = archive_write_client_open;
      v10[5] = archive_write_client_write;
      v10[7] = archive_write_client_close;
      v10[8] = archive_write_client_free;
      v9 = __archive_write_filters_open(a1);
      if (v9 >= -20)
      {
        *(a1 + 4) = 2;
        if (*(a1 + 264))
        {
          return (*(a1 + 264))(a1);
        }

        return v9;
      }

      else
      {
        v8 = __archive_write_filters_close(a1);
        __archive_write_filters_free(a1);
        if (v8 >= v9)
        {
          return v9;
        }

        else
        {
          return v8;
        }
      }
    }

    else
    {
      return -30;
    }
  }
}

uint64_t archive_write_client_open(uint64_t a1)
{
  v12 = *(a1 + 8);
  *(a1 + 92) = archive_write_get_bytes_per_block(v12);
  *(a1 + 96) = archive_write_get_bytes_in_last_block(*(a1 + 8));
  size = *(a1 + 92);
  v11 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040F32E1FD2uLL);
  v10 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (v11 && v10)
  {
    *v11 = size;
    *(v11 + 2) = v10;
    *(v11 + 3) = *(v11 + 2);
    *(v11 + 1) = *v11;
    *(a1 + 72) = v11;
    if (*(v12 + 184))
    {
      v8 = (*(v12 + 184))(*(a1 + 8), *(v12 + 216));
      if (v8)
      {
        free(*(v11 + 2));
        free(v11);
        *(a1 + 72) = 0;
      }

      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    free(v11);
    free(v10);
    archive_set_error(*(a1 + 8), 12, "Can't allocate data for output buffering", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t archive_write_client_write(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v21 = *(a1 + 8);
  v20 = *(a1 + 72);
  v18 = a3;
  if (*v20)
  {
    if (v20[1] >= *v20 || (a3 <= v20[1] ? (v12 = a3) : (v12 = v20[1]), v3 = v20[3], __memcpy_chk(), v20[3] += v12, v20[1] -= v12, a2 += v12, v18 -= v12, v20[1]))
    {
LABEL_20:
      while (v18 >= *v20)
      {
        v17 = (*(v21 + 192))(v21, *(v21 + 216), a2, *v20);
        if (v17 <= 0)
        {
          return -30;
        }

        a2 += v17;
        v18 -= v17;
      }

      if (v18 > 0)
      {
        v9 = v20[3];
        __memcpy_chk();
        v20[3] += v18;
        v20[1] -= v18;
      }

      return 0;
    }

    else
    {
      v14 = v20[2];
      for (i = *v20; ; i -= v16)
      {
        if (!i)
        {
          v20[3] = v20[2];
          v20[1] = *v20;
          goto LABEL_20;
        }

        v16 = (*(v21 + 192))(v21, *(v21 + 216), v14, i);
        if (v16 <= 0)
        {
          return -30;
        }

        if (v16 > i)
        {
          break;
        }

        v14 += v16;
      }

      archive_set_error(v21, -1, "write overrun", v4, v5, v6, v7, v8, v11);
      return -30;
    }
  }

  else
  {
    while (v18 > 0)
    {
      v15 = (*(v21 + 192))(v21, *(v21 + 216), a2, v18);
      if (v15 <= 0)
      {
        return -30;
      }

      v18 -= v15;
      a2 += v15;
    }

    return 0;
  }
}

uint64_t archive_write_client_close(uint64_t a1)
{
  v16 = *(a1 + 8);
  v15 = *(a1 + 72);
  v9 = 0;
  if (*(v15 + 3) != *(v15 + 2))
  {
    v14 = *v15 - *(v15 + 1);
    if (*(v16 + 228) > 0)
    {
      v13 = *(v16 + 228) * ((v14 + *(v16 + 228) - 1) / *(v16 + 228));
    }

    else
    {
      v13 = *(v16 + 224);
    }

    if (v13 > *(v16 + 224))
    {
      v13 = *(v16 + 224);
    }

    if (v14 < v13)
    {
      v1 = *(v15 + 3);
      __memset_chk();
      v14 = v13;
    }

    v10 = *(v15 + 2);
    for (i = v14; i; i -= v12)
    {
      v12 = (*(v16 + 192))(v16, *(v16 + 216), v10, i);
      if (v12 <= 0)
      {
        v9 = -30;
        break;
      }

      if (v12 > i)
      {
        archive_set_error(v16, -1, "write overrun", v2, v3, v4, v5, v6, v8);
        v9 = -30;
        break;
      }

      v10 += v12;
    }
  }

  if (*(v16 + 200))
  {
    (*(v16 + 200))(v16, *(v16 + 216));
  }

  free(*(v15 + 2));
  free(v15);
  *(a1 + 100) = 4;
  return v9;
}

uint64_t archive_write_client_free(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (*(v3 + 208))
  {
    (*(v3 + 208))(v3, *(v3 + 216));
  }

  *(v3 + 216) = 0;
  if (*(v3 + 320))
  {
    v2 = *(v3 + 320);
    strlen(v2);
    __memset_chk();
    free(*(v3 + 320));
    *(v3 + 320) = 0;
  }

  return 0;
}

uint64_t __archive_write_filters_close(uint64_t a1)
{
  v3 = 0;
  for (i = *(a1 + 232); i; i = *(i + 16))
  {
    if (*(i + 100) == 2)
    {
      if (*(i + 56))
      {
        v2 = (*(i + 56))(i);
        if (v2 < v3)
        {
          v3 = v2;
        }

        if (v2)
        {
          *(i + 100) = 0x8000;
        }

        else
        {
          *(i + 100) = 4;
        }
      }

      else
      {
        *(i + 100) = 4;
      }
    }
  }

  return v3;
}

void __archive_write_filters_free(uint64_t a1)
{
  v3 = 0;
  while (*(a1 + 232))
  {
    v1 = *(*(a1 + 232) + 16);
    if (*(*(a1 + 232) + 64))
    {
      v2 = (*(*(a1 + 232) + 64))(*(a1 + 232));
      if (v3 > v2)
      {
        v3 = v2;
      }
    }

    free(*(a1 + 232));
    *(a1 + 232) = v1;
  }

  *(a1 + 240) = 0;
}

uint64_t _archive_write_close(uint64_t a1)
{
  v4 = 0;
  if (__archive_check_magic(a1, -1329217314, 0xFFFF, "archive_write_close") == -30)
  {
    return -30;
  }

  else if (*(a1 + 4) == 1 || *(a1 + 4) == 32)
  {
    return 0;
  }

  else
  {
    archive_clear_error(a1);
    if (*(a1 + 4) == 4 && *(a1 + 280))
    {
      v4 = (*(a1 + 280))(a1);
    }

    if (*(a1 + 304))
    {
      v2 = (*(a1 + 304))(a1);
      if (v2 < v4)
      {
        v4 = v2;
      }
    }

    v3 = __archive_write_filters_close(a1);
    if (v3 < v4)
    {
      v4 = v3;
    }

    if (*(a1 + 4) != 0x8000)
    {
      *(a1 + 4) = 32;
    }

    return v4;
  }
}

uint64_t _archive_write_free(void *a1)
{
  v4 = 0;
  if (a1)
  {
    if (__archive_check_magic(a1, -1329217314, 0xFFFF, "archive_write_free") == -30)
    {
      return -30;
    }

    else
    {
      if (*(a1 + 1) != 0x8000)
      {
        v4 = archive_write_close(a1);
      }

      if (*(a1 + 39))
      {
        v3 = (*(a1 + 39))(a1);
        if (v3 < v4)
        {
          v4 = v3;
        }
      }

      __archive_write_filters_free(a1);
      free(*(a1 + 21));
      archive_string_free(a1 + 48);
      if (*(a1 + 40))
      {
        v2 = *(a1 + 40);
        strlen(v2);
        __memset_chk();
        free(*(a1 + 40));
      }

      *a1 = 0;
      __archive_clean(a1);
      free(a1);
      return v4;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t _archive_write_header(uint64_t a1, _DWORD *a2)
{
  HIDWORD(v13) = __archive_check_magic(a1, -1329217314, 6, "archive_write_header");
  if (HIDWORD(v13) == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(a1);
    if (*(a1 + 288))
    {
      v16 = archive_write_finish_entry(a1);
      if (v16 == -30)
      {
        *(a1 + 4) = 0x8000;
        return -30;
      }

      else if ((v16 & 0x80000000) == 0 || v16 == -20)
      {
        if (*(a1 + 144) && archive_entry_dev_is_set(a2) && archive_entry_ino_is_set(a2) && archive_entry_dev(a2) == *(a1 + 152) && archive_entry_ino64(a2) == *(a1 + 160))
        {
          archive_set_error(a1, 0, "Can't add archive to itself", v7, v8, v9, v10, v11, v13);
          return -25;
        }

        else
        {
          v14 = __archive_write_filters_flush(a1);
          if (v14 == -25)
          {
            return -25;
          }

          else if (v14 == -30)
          {
            *(a1 + 4) = 0x8000;
            return -30;
          }

          else
          {
            if (v14 < v16)
            {
              v16 = v14;
            }

            v15 = (*(a1 + 288))(a1, a2);
            if (v15 == -25)
            {
              return -25;
            }

            else if (v15 == -30)
            {
              *(a1 + 4) = 0x8000;
              return -30;
            }

            else
            {
              if (v15 < v16)
              {
                v16 = v15;
              }

              *(a1 + 4) = 4;
              return v16;
            }
          }
        }
      }

      else
      {
        return v16;
      }
    }

    else
    {
      archive_set_error(a1, -1, "Format must be set before you can write to an archive.", v2, v3, v4, v5, v6, v13);
      *(a1 + 4) = 0x8000;
      return -30;
    }
  }
}

uint64_t _archive_write_finish_entry(uint64_t a1)
{
  v2 = 0;
  if (__archive_check_magic(a1, -1329217314, 6, "archive_write_finish_entry") == -30)
  {
    return -30;
  }

  else
  {
    if ((*(a1 + 4) & 4) != 0 && *(a1 + 280))
    {
      v2 = (*(a1 + 280))(a1);
    }

    *(a1 + 4) = 2;
    return v2;
  }
}

uint64_t _archive_write_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (__archive_check_magic(a1, -1329217314, 4, "archive_write_data") == -30)
  {
    return -30;
  }

  if (a3 > 0x7FFFFFFF)
  {
    a3 = 0x7FFFFFFFLL;
  }

  archive_clear_error(a1);
  return (*(a1 + 296))(a1, a2, a3);
}

uint64_t _archive_write_filter_count(uint64_t a1)
{
  v3 = *(a1 + 232);
  v2 = 0;
  while (v3)
  {
    ++v2;
    v3 = *(v3 + 16);
  }

  return v2;
}

uint64_t _archive_filter_bytes_0(uint64_t a1, int a2)
{
  v4 = filter_lookup(a1, a2);
  if (v4)
  {
    return *v4;
  }

  else
  {
    return -1;
  }
}

uint64_t _archive_filter_code_0(uint64_t a1, int a2)
{
  v4 = filter_lookup(a1, a2);
  if (v4)
  {
    return *(v4 + 88);
  }

  else
  {
    return -1;
  }
}

uint64_t _archive_filter_name_0(uint64_t a1, int a2)
{
  v4 = filter_lookup(a1, a2);
  if (v4)
  {
    return *(v4 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t __archive_write_filters_flush(uint64_t a1)
{
  v3 = 0;
  for (i = *(a1 + 232); i; i = *(i + 16))
  {
    if (*(i + 48) && *i > 0)
    {
      v2 = (*(i + 48))(i);
      if (v2 < v3)
      {
        v3 = v2;
      }

      if (v2 < -20)
      {
        *(i + 100) = 0x8000;
      }
    }
  }

  return v3;
}

uint64_t filter_lookup(uint64_t a1, int a2)
{
  v5 = a2;
  v4 = *(a1 + 232);
  if (a2 == -1)
  {
    return *(a1 + 240);
  }

  if (a2 < 0)
  {
    return 0;
  }

  while (1)
  {
    v3 = 0;
    if (v5 > 0)
    {
      v3 = v4 != 0;
    }

    if (!v3)
    {
      break;
    }

    v4 = *(v4 + 16);
    --v5;
  }

  return v4;
}

uint64_t __archive_write_open_filter(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 16))
  {
    v2 = __archive_write_open_filter(*(a1 + 16));
  }

  if (v2)
  {
    return v2;
  }

  else if (*(a1 + 100) == 1)
  {
    if (*(a1 + 32))
    {
      v3 = (*(a1 + 32))(a1);
      if (v3)
      {
        *(a1 + 100) = 0x8000;
      }

      else
      {
        *(a1 + 100) = 2;
      }

      return v3;
    }

    else
    {
      *(a1 + 100) = 2;
      return 0;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t archive_write_add_filter_zstd(int *a1)
{
  v19 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_zstd") == -30)
  {
    return -30;
  }

  else
  {
    v18 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200406E52F545uLL);
    if (v18)
    {
      v19[9] = v18;
      v19[4] = archive_compressor_zstd_open;
      v19[3] = archive_compressor_zstd_options;
      v19[6] = archive_compressor_zstd_flush;
      v19[7] = archive_compressor_zstd_close;
      v19[8] = archive_compressor_zstd_free;
      *(v19 + 22) = 14;
      v19[10] = "zstd";
      *v18 = 3;
      *(v18 + 1) = 0;
      *(v18 + 2) = 0;
      v18[2] = __archive_write_program_allocate("zstd");
      if (v18[2])
      {
        archive_set_error(a1, -1, "Using external zstd program", v6, v7, v8, v9, v10, v17);
        return -20;
      }

      else
      {
        free(v18);
        archive_set_error(a1, 12, "Out of memory", v11, v12, v13, v14, v15, v17);
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Out of memory", v1, v2, v3, v4, v5, v17);
      return -30;
    }
  }
}

uint64_t archive_compressor_zstd_open(uint64_t a1)
{
  v17 = a1;
  v16 = *(a1 + 72);
  memset(v15, 0, sizeof(v15));
  archive_strncat(v15, "zstd --no-check", 0xFuLL);
  if ((*v16 & 0x80000000) != 0)
  {
    archive_string_sprintf(v15, " --fast=%d", v1, v2, v3, v4, v5, v6, -*v16);
  }

  else
  {
    archive_string_sprintf(v15, " -%d", v1, v2, v3, v4, v5, v6, *v16);
  }

  if (*v16 > 19)
  {
    archive_strcat(v15, " --ultra");
  }

  if (v16[1])
  {
    archive_string_sprintf(v15, " --threads=%d", v7, v8, v9, v10, v11, v12, v16[1]);
  }

  if (v16[2])
  {
    archive_string_sprintf(v15, " --long=%d", v7, v8, v9, v10, v11, v12, v16[2]);
  }

  *(v17 + 40) = archive_compressor_zstd_write;
  v14 = __archive_write_program_open(v17, *(v16 + 2), v15[0]);
  archive_string_free(v15);
  return v14;
}

uint64_t archive_compressor_zstd_options(uint64_t a1, const char *a2, char *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    v8 = 0;
    if (string_to_number(v10, &v8))
    {
      return -20;
    }

    else
    {
      v7 = -99;
      v6 = 22;
      if (v8 >= -99 && v8 <= v6)
      {
        *v9 = v8;
        return 0;
      }

      else
      {
        return -20;
      }
    }
  }

  else if (!strcmp(v11, "threads"))
  {
    v5 = 0;
    if (string_to_number(v10, &v5))
    {
      return -20;
    }

    else if (v5 < 0 || v5 > 0x7FFFFFFF)
    {
      return -20;
    }

    else
    {
      v9[1] = v5;
      return 0;
    }
  }

  else if (!strcmp(v11, "long"))
  {
    v4 = 0;
    if (string_to_number(v10, &v4))
    {
      return -20;
    }

    else if (v4 >= 10 && v4 <= 31)
    {
      v9[2] = v4;
      return 0;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t archive_compressor_zstd_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  __archive_write_program_free(v2[2]);
  free(v2);
  *(a1 + 72) = 0;
  return 0;
}

uint64_t string_to_number(char *a1, intmax_t *a2)
{
  __nptr = a1;
  v5 = a2;
  v4 = 0;
  if (a1 && *__nptr)
  {
    v2 = strtoimax(__nptr, &v4, 10);
    *v5 = v2;
    if (v4 == __nptr || *v4 || *__error() == 84)
    {
      *v5 = 0;
      return -20;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t __archive_rb_tree_find_node(uint64_t *a1, uint64_t a2)
{
  v5 = *(a1[1] + 8);
  for (i = *a1; i; i = *(i + 8 * (v3 > 0)))
  {
    v3 = v5(i, a2);
    if (!v3)
    {
      return i;
    }
  }

  return 0;
}

uint64_t __archive_rb_tree_find_node_geq(uint64_t *a1, uint64_t a2)
{
  v6 = *(a1[1] + 8);
  v5 = *a1;
  v4 = 0;
  while (v5)
  {
    v3 = v6(v5, a2);
    if (!v3)
    {
      return v5;
    }

    if (v3 < 0)
    {
      v4 = v5;
    }

    v5 = *(v5 + 8 * (v3 > 0));
  }

  return v4;
}

uint64_t __archive_rb_tree_find_node_leq(uint64_t *a1, uint64_t a2)
{
  v6 = *(a1[1] + 8);
  v5 = *a1;
  v4 = 0;
  while (v5)
  {
    v3 = v6(v5, a2);
    if (!v3)
    {
      return v5;
    }

    if (v3 > 0)
    {
      v4 = v5;
    }

    v5 = *(v5 + 8 * (v3 > 0));
  }

  return v4;
}

uint64_t __archive_rb_tree_insert_node(uint64_t *a1, void *a2)
{
  v9 = *a1[1];
  v7 = *a1;
  v8 = a1;
  v6 = 0;
  while (v7)
  {
    v4 = v9(v7, a2);
    if (!v4)
    {
      return 0;
    }

    v8 = v7;
    v6 = v4 > 0;
    v7 = v7[v4 > 0];
  }

  a2[2] = v8 | a2[2] & 3;
  if (v6)
  {
    a2[2] |= 2uLL;
  }

  else
  {
    a2[2] &= ~2uLL;
  }

  if (v8 == a1)
  {
    a2[2] &= ~1uLL;
    v5 = 0;
  }

  else
  {
    a2[2] |= 1uLL;
    v3 = 0;
    if (v8)
    {
      v3 = (v8[2] & 1) != 0;
    }

    v5 = v3;
  }

  *a2 = v8[v6];
  a2[1] = v8[v6];
  v8[v6] = a2;
  if (v5)
  {
    __archive_rb_tree_insert_rebalance(a1, a2);
  }

  return 1;
}

void *__archive_rb_tree_insert_rebalance(void *result, unint64_t a2)
{
  v7 = result;
  v6 = a2;
  v5 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v4 = *(v5 + 16) & 0xFFFFFFFFFFFFFFFCLL;
    v2 = v5 == *(v4 + 8);
    v3 = *(v4 + 8 * (v5 != *(v4 + 8)));
    if (!v3 || (*(v3 + 16) & 1) == 0)
    {
      break;
    }

    *(v3 + 16) &= ~1uLL;
    *(v5 + 16) &= ~1uLL;
    if (*result != v4)
    {
      *(v4 + 16) |= 1uLL;
      v6 = v4;
      v5 = *(v4 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      if (v5)
      {
        if (*(v5 + 16))
        {
          continue;
        }
      }
    }

    return result;
  }

  if (v6 == *(v5 + 8 * (v5 != *(v4 + 8))))
  {
    __archive_rb_tree_reparent_nodes(v5, v5 != *(v4 + 8));
  }

  result = __archive_rb_tree_reparent_nodes(v4, v2);
  *(*v7 + 16) &= ~1uLL;
  return result;
}

void *__archive_rb_tree_remove_node(uint64_t *a1, void *a2)
{
  if (a2 && (*a2 || a2[1]))
  {
    if (*a2 && a2[1])
    {
      v3 = __archive_rb_tree_iterate(a1, a2, (a2[2] & 2) == 0);
      return __archive_rb_tree_swap_prune_and_rebalance(a1, a2, v3);
    }

    else
    {
      return __archive_rb_tree_prune_blackred_branch(a2, *a2 == 0);
    }
  }

  else
  {
    if (!a2 || (v4 = 0, (a2[2] & 1) == 0))
    {
      v4 = *a1 != a2;
    }

    return __archive_rb_tree_prune_node(a1, a2, v4);
  }
}

void *__archive_rb_tree_prune_node(void *result, void *a2, int a3)
{
  v4 = a2[2] & 0xFFFFFFFFFFFFFFFCLL;
  v3 = (a2[2] & 2) != 0;
  *(v4 + 8 * ((a2[2] & 2) != 0)) = *a2;
  if (a3)
  {
    return __archive_rb_tree_removal_rebalance(result, v4, v3);
  }

  return result;
}

uint64_t __archive_rb_tree_prune_blackred_branch(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v2 = *(result + 8 * a2);
  *(v2 + 16) ^= (*(v2 + 16) ^ *(result + 16)) & 3;
  *(v3 + 8 * ((*(v2 + 16) & 2) != 0)) = v2;
  *(v2 + 16) = v3 | *(v2 + 16) & 3;
  return result;
}

unint64_t __archive_rb_tree_iterate(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  v6 = a2;
  v5 = a3 ^ 1;
  if (a2)
  {
    if (*(a2 + 8 * a3))
    {
        ;
      }

      return i;
    }

    else
    {
      while (1)
      {
        v4 = 0;
        if (*a1 != v6)
        {
          v4 = v6 != 0;
        }

        if (!v4)
        {
          break;
        }

        if (v5 == ((*(v6 + 16) & 2) != 0))
        {
          return *(v6 + 16) & 0xFFFFFFFFFFFFFFFCLL;
        }

        v6 = *(v6 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      }

      return 0;
    }
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      while (*(v7 + 8 * a3))
      {
        v7 = *(v7 + 8 * a3);
      }

      return v7;
    }

    else
    {
      return 0;
    }
  }
}

void *__archive_rb_tree_swap_prune_and_rebalance(void *result, uint64_t a2, unint64_t a3)
{
  v3 = (*(a3 + 16) & 2) != 0;
  v8 = (*(a3 + 16) & 2) == 0;
  v6 = *(a3 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = 1;
  if (a3)
  {
    v4 = (*(a3 + 16) & 1) == 0;
  }

  v5 = v4;
  if (v6 == a2)
  {
    v7 = *(a3 + 8 * ((*(a3 + 16) & 2) != 0));
  }

  else
  {
    v7 = *(a3 + 8 * ((*(a3 + 16) & 2) == 0));
  }

  if (v7)
  {
    if (*(v7 + 16))
    {
      *(v7 + 16) &= ~1uLL;
      v5 = 0;
      if (v6 != a2)
      {
        *(v7 + 16) = v6 | *(v7 + 16) & 3;
        if (v3)
        {
          *(v7 + 16) |= 2uLL;
        }

        else
        {
          *(v7 + 16) &= ~2uLL;
        }
      }
    }
  }

  if (v6 == a2)
  {
    v6 = a3;
  }

  else
  {
    *(v6 + 8 * v3) = v7;
    *(a3 + 8 * v8) = *(a2 + 8 * v8);
    *(*(a3 + 8 * v8) + 16) = a3 | *(*(a3 + 8 * v8) + 16) & 3;
    v8 = v3;
  }

  *(a3 + 8 * v8) = *(a2 + 8 * v8);
  *(*(a3 + 8 * v8) + 16) = a3 | *(*(a3 + 8 * v8) + 16) & 3;
  *(a3 + 16) ^= (*(a3 + 16) ^ *(a2 + 16)) & 3;
  *(a3 + 16) = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL | *(a3 + 16) & 3;
  *((*(a3 + 16) & 0xFFFFFFFFFFFFFFFCLL) + 8 * ((*(a3 + 16) & 2) != 0)) = a3;
  if (v5)
  {
    return __archive_rb_tree_removal_rebalance(result, v6, v3);
  }

  return result;
}

unint64_t __archive_rb_tree_reparent_nodes(unint64_t result, unsigned int a2)
{
  v5 = a2 ^ 1;
  v4 = *(result + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v3 = *(result + 8 * a2);
  if (v3)
  {
    *(v4 + 8 * ((*(result + 16) & 2) != 0)) = v3;
    *(result + 8 * a2) = *(v3 + 8 * v5);
    *(v3 + 8 * v5) = result;
    *(v3 + 16) = v4 | *(v3 + 16) & 3;
    *(result + 16) = v3 | *(result + 16) & 3;
    v2 = (*(v3 + 16) ^ *(result + 16)) & 3;
    *(v3 + 16) ^= v2;
    *(result + 16) ^= v2;
    if (v5)
    {
      *(result + 16) |= 2uLL;
    }

    else
    {
      *(result + 16) &= ~2uLL;
    }

    if (*(result + 8 * a2))
    {
      *(*(result + 8 * a2) + 16) = result | *(*(result + 8 * a2) + 16) & 3;
      if (a2)
      {
        *(*(result + 8 * a2) + 16) |= 2uLL;
      }

      else
      {
        *(*result + 16) &= ~2uLL;
      }
    }
  }

  return result;
}

void *__archive_rb_tree_removal_rebalance(void *result, unint64_t a2, unsigned int a3)
{
  while (1)
  {
    v4 = 1;
    if (*(a2 + 8 * a3))
    {
      v4 = (*(*(a2 + 8 * a3) + 16) & 1) == 0;
    }

    if (!v4)
    {
      return result;
    }

    v6 = a3 ^ 1;
    v5 = *(a2 + 8 * (a3 ^ 1));
    if (!v5)
    {
      return result;
    }

    if (a2 && (*(a2 + 16) & 1) != 0 || *v5 && (*(*v5 + 16) & 1) != 0 || v5[1] && (*(v5[1] + 16) & 1) != 0)
    {
      goto LABEL_16;
    }

    v3 = *(a2 + 8 * (a3 ^ 1));
    if (v5[2])
    {
      result = __archive_rb_tree_reparent_nodes(a2, v6);
      v5 = *(a2 + 8 * v6);
      if (!v5)
      {
        return result;
      }

LABEL_16:
      if (!a2 || (*(a2 + 16) & 1) == 0 || (v5[2] & 1) != 0 || *v5 && (*(*v5 + 16) & 1) != 0 || v5[1] && (*(v5[1] + 16) & 1) != 0)
      {
        if (!v5[v6] || (*(v5[v6] + 16) & 1) == 0)
        {
          result = __archive_rb_tree_reparent_nodes(v5, a3);
          v5 = *(a2 + 8 * v6);
        }

        if (v5[v6])
        {
          *(v5[v6] + 16) &= ~1uLL;
          return __archive_rb_tree_reparent_nodes(a2, v6);
        }
      }

      else
      {
        *(a2 + 16) &= ~1uLL;
        v5[2] |= 1uLL;
      }

      return result;
    }

    v5[2] |= 1uLL;
    if (*result == a2)
    {
      return result;
    }

    a3 = (*(a2 + 16) & 2) != 0;
    a2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  }
}

uint64_t lookup_gid(uint64_t a1, char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a1;
  __s1 = a2;
  gr_gid = a3;
  v11 = 0;
  v10 = 0;
  v9 = a1;
  if (a2 && *__s1)
  {
    v11 = hash(__s1);
    v10 = v9 + 16 * (v11 % 0x7FuLL);
    if (*v10 && *(v10 + 8) == v11 && !strcmp(__s1, *v10))
    {
      v15 = *(v10 + 12);
    }

    else
    {
      free(*v10);
      *v10 = strdup(__s1);
      *(v10 + 8) = v11;
      size = 128;
      v7 = &v16;
      v6 = 0;
      memset(&v5, 0, sizeof(v5));
      v4 = 0;
      while (1)
      {
        v4 = &v5;
        if (getgrnam_r(__s1, &v5, v7, size, &v4) != 34)
        {
          break;
        }

        size *= 2;
        free(v6);
        v6 = malloc_type_malloc(size, 0xB9E7F155uLL);
        if (!v6)
        {
          break;
        }

        v7 = v6;
      }

      if (v4)
      {
        gr_gid = v4->gr_gid;
      }

      free(v6);
      *(v10 + 12) = gr_gid;
      v15 = gr_gid;
    }
  }

  else
  {
    v15 = gr_gid;
  }

  *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t lookup_uid(uint64_t a1, char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a2;
  pw_uid = a3;
  v11 = 0;
  v10 = 0;
  v9 = a1;
  if (a2 && *v13)
  {
    v11 = hash(v13);
    v10 = v9 + 16 * (v11 % 0x7FuLL);
    if (*v10 && *(v10 + 8) == v11 && !strcmp(v13, *v10))
    {
      v15 = *(v10 + 12);
    }

    else
    {
      free(*v10);
      *v10 = strdup(v13);
      *(v10 + 8) = v11;
      size = 128;
      v7 = &v16;
      v6 = 0;
      memset(&__b, 0, sizeof(__b));
      p_b = 0;
      while (1)
      {
        p_b = &__b;
        if (getpwnam_r(v13, &__b, v7, size, &p_b) != 34)
        {
          break;
        }

        size *= 2;
        free(v6);
        v6 = malloc_type_malloc(size, 0xAD768C3AuLL);
        if (!v6)
        {
          break;
        }

        v7 = v6;
      }

      if (p_b)
      {
        pw_uid = p_b->pw_uid;
      }

      free(v6);
      *(v10 + 12) = pw_uid;
      v15 = pw_uid;
    }
  }

  else
  {
    v15 = pw_uid;
  }

  *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t hash(char *a1)
{
  v3 = 0;
  while (*a1)
  {
    v1 = a1++;
    v3 = *v1 + 16 * v3;
    if ((v3 & 0xF0000000) != 0)
    {
      v3 = (v3 ^ ((v3 & 0xF0000000) >> 24)) & 0xFFFFFFF;
    }
  }

  return v3;
}

uint64_t archive_write_add_filter_lz4(int *a1)
{
  v18 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_lz4") == -30)
  {
    return -30;
  }

  else
  {
    v17 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200402F088779uLL);
    if (v17)
    {
      *v17 = 1;
      *(v17 + 2) = *(v17 + 2) & 0xFFFD | 2;
      *(v17 + 2) = *(v17 + 2) & 0xFFFB | 4;
      *(v17 + 2) &= ~8u;
      *(v17 + 2) &= ~0x10u;
      *(v17 + 2) = *(v17 + 2) & 0xFFDF | 0x20;
      *(v17 + 2) &= ~0x40u;
      *(v17 + 2) = *(v17 + 2) & 0xFC7F | 0x380;
      v18[9] = v17;
      v18[3] = archive_filter_lz4_options;
      v18[7] = archive_filter_lz4_close;
      v18[8] = archive_filter_lz4_free;
      v18[4] = archive_filter_lz4_open;
      *(v18 + 22) = 13;
      v18[10] = "lz4";
      v17[1] = __archive_write_program_allocate("lz4");
      if (v17[1])
      {
        *v17 = 0;
        archive_set_error(a1, -1, "Using external lz4 program", v6, v7, v8, v9, v10, archive_filter_lz4_options);
        return -20;
      }

      else
      {
        free(v17);
        archive_set_error(a1, 12, "Out of memory", v11, v12, v13, v14, v15, archive_filter_lz4_options);
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Out of memory", v1, v2, v3, v4, v5, archive_filter_lz4_options);
      return -30;
    }
  }
}

uint64_t archive_filter_lz4_options(uint64_t a1, const char *a2, char *a3)
{
  v10 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    if (a3 && (HIDWORD(v9) = *a3 - 48, SHIDWORD(v9) >= 1) && SHIDWORD(v9) <= 9 && !a3[1])
    {
      if (SHIDWORD(v9) < 3)
      {
        *v10 = HIDWORD(v9);
        return 0;
      }

      else
      {
        archive_set_error(*(a1 + 8), 22, "High compression not included in this build", v3, v4, v5, v6, v7, v9);
        return -30;
      }
    }

    else
    {
      return -20;
    }
  }

  else if (!strcmp(a2, "stream-checksum"))
  {
    *(v10 + 4) = *(v10 + 4) & 0xFFDF | (32 * (a3 != 0));
    return 0;
  }

  else if (!strcmp(a2, "block-checksum"))
  {
    *(v10 + 4) = *(v10 + 4) & 0xFFF7 | (8 * (a3 != 0));
    return 0;
  }

  else if (!strcmp(a2, "block-size"))
  {
    if (a3 && *a3 >= 52 && *a3 <= 55 && !a3[1])
    {
      *(v10 + 4) = *(v10 + 4) & 0xFC7F | (((*a3 - 48) & 7) << 7);
      return 0;
    }

    else
    {
      return -20;
    }
  }

  else if (!strcmp(a2, "block-dependence"))
  {
    *(v10 + 4) = *(v10 + 4) & 0xFFFB | (4 * (a3 == 0));
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_filter_lz4_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  __archive_write_program_free(v2[1]);
  free(v2);
  return 0;
}

uint64_t archive_filter_lz4_open(uint64_t a1)
{
  v6 = a1;
  v5 = *(a1 + 72);
  memset(v4, 0, sizeof(v4));
  archive_strncat(v4, "lz4 -z -q -q", 0xCuLL);
  if (*v5 > 0)
  {
    archive_strcat(v4, " -");
    v1 = (*v5 + 48);
    archive_strappend_char(v4, *v5 + 48);
  }

  archive_strcat(v4, " -B");
  archive_strappend_char(v4, ((*(v5 + 4) >> 7) & 7) + 48);
  if ((*(v5 + 4) & 8) != 0)
  {
    archive_strcat(v4, " -BX");
  }

  if ((*(v5 + 4) & 0x20) == 0)
  {
    archive_strcat(v4, " --no-frame-crc");
  }

  if ((*(v5 + 4) & 4) == 0)
  {
    archive_strcat(v4, " -BD");
  }

  *(v6 + 40) = archive_filter_lz4_write;
  v3 = __archive_write_program_open(v6, *(v5 + 8), v4[0]);
  archive_string_free(v4);
  return v3;
}

uint64_t archive_write_open_fd(_DWORD *a1, int a2)
{
  v9 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (v9)
  {
    *v9 = a2;
    return archive_write_open2(a1, v9, file_open_0, file_write, 0, file_free_2);
  }

  else
  {
    archive_set_error(a1, 12, "No memory", v2, v3, v4, v5, v6, v8);
    return -30;
  }
}

uint64_t file_open_0(int *a1, int *a2)
{
  v13 = a1;
  v12 = a2;
  memset(&__b, 0, sizeof(__b));
  v11 = v12;
  if (fstat(*v12, &__b))
  {
    v9 = v13;
    v2 = __error();
    archive_set_error(v9, *v2, "Couldn't stat fd %d", v3, v4, v5, v6, v7, *v11);
    return -30;
  }

  else
  {
    if ((__b.st_mode & 0xF000) == 0x8000)
    {
      archive_write_set_skip_file(v13, __b.st_dev, __b.st_ino);
    }

    if ((archive_write_get_bytes_in_last_block(v13) & 0x80000000) != 0)
    {
      if ((__b.st_mode & 0xF000) == 0x2000 || (__b.st_mode & 0xF000) == 0x6000 || (__b.st_mode & 0xF000) == 0x1000 || *v11 == 1)
      {
        archive_write_set_bytes_in_last_block(v13, 0);
      }

      else
      {
        archive_write_set_bytes_in_last_block(v13, 1);
      }
    }

    return 0;
  }
}

uint64_t file_write(_DWORD *a1, int *a2, const void *a3, size_t a4)
{
  while (1)
  {
    v11 = write(*a2, a3, a4);
    if (v11 > 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v4 = __error();
      archive_set_error(a1, *v4, "Write error", v5, v6, v7, v8, v9, a1);
      return -1;
    }
  }

  return v11;
}

uint64_t file_free_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }

  return 0;
}

uint64_t archive_write_add_filter_bzip2(int *a1)
{
  v8 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_bzip2") == -30)
  {
    return -30;
  }

  else
  {
    v7 = malloc_type_calloc(1uLL, 0x70uLL, 0x109004012F2E243uLL);
    if (v7)
    {
      *v7 = 9;
      v8[9] = v7;
      v8[3] = archive_compressor_bzip2_options;
      v8[7] = archive_compressor_bzip2_close;
      v8[8] = archive_compressor_bzip2_free;
      v8[4] = archive_compressor_bzip2_open;
      *(v8 + 22) = 2;
      v8[10] = "bzip2";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Out of memory", v1, v2, v3, v4, v5, archive_compressor_bzip2_options);
      return -30;
    }
  }
}

uint64_t archive_compressor_bzip2_options(uint64_t a1, const char *a2, char *a3)
{
  v4 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 48 && *a3 <= 57 && !a3[1])
    {
      *v4 = *a3 - 48;
      if (*v4 < 1)
      {
        *v4 = 1;
      }

      return 0;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t archive_compressor_bzip2_close(uint64_t a1)
{
  v9 = *(a1 + 72);
  v8 = drive_compressor_0(a1, v9, 1);
  if (!v8)
  {
    v8 = __archive_write_filter(*(a1 + 16), *(v9 + 96), *(v9 + 104) - *(v9 + 40));
  }

  if (BZ2_bzCompressEnd((v9 + 8)))
  {
    archive_set_error(*(a1 + 8), 22, "Failed to clean up compressor", v1, v2, v3, v4, v5, v7);
    return -30;
  }

  return v8;
}

uint64_t archive_compressor_bzip2_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  free(v2[12]);
  free(v2);
  *(a1 + 72) = 0;
  return 0;
}

uint64_t archive_compressor_bzip2_open(uint64_t *a1)
{
  v22 = a1[9];
  if (*(v22 + 96))
  {
    goto LABEL_9;
  }

  v20 = 0x10000;
  if (*a1[1] == -1329217314)
  {
    v19 = archive_write_get_bytes_per_block(a1[1]);
    if (v19 <= 0x10000)
    {
      if (v19)
      {
        v20 = 0x10000 - 0x10000 % v19;
      }
    }

    else
    {
      v20 = v19;
    }
  }

  *(v22 + 104) = v20;
  *(v22 + 96) = malloc_type_malloc(*(v22 + 104), 0x100004077774924uLL);
  if (*(v22 + 96))
  {
LABEL_9:
    HIDWORD(v17) = 0;
    __memset_chk();
    *(v22 + 32) = *(v22 + 96);
    *(v22 + 40) = *(v22 + 104);
    a1[5] = archive_compressor_bzip2_write;
    v21 = BZ2_bzCompressInit((v22 + 8), *v22, 0, 30);
    if (v21)
    {
      archive_set_error(a1[1], -1, "Internal error initializing compression library", v6, v7, v8, v9, v10, v17);
      LODWORD(v18) = v21;
      switch(v21)
      {
        case -9:
          archive_set_error(a1[1], -1, "Internal error initializing compression library: mis-compiled library", v11, v12, v13, v14, v15, v18);
          break;
        case -3:
          archive_set_error(a1[1], 12, "Internal error initializing compression library: out of memory", v11, v12, v13, v14, v15, v18);
          break;
        case -2:
          archive_set_error(a1[1], -1, "Internal error initializing compression library: invalid setup parameter", v11, v12, v13, v14, v15, v18);
          break;
      }

      return -30;
    }

    else
    {
      a1[9] = v22;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1[1], 12, "Can't allocate data for compression buffer", v1, v2, v3, v4, v5, v17);
    return -30;
  }
}

uint64_t archive_compressor_bzip2_write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  *(v4 + 88) += a3;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  if (drive_compressor_0(a1, v4, 0))
  {
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t drive_compressor_0(uint64_t a1, uint64_t a2, int a3)
{
  do
  {
    while (1)
    {
      if (!*(a2 + 40))
      {
        if (__archive_write_filter(*(a1 + 16), *(a2 + 96), *(a2 + 104)))
        {
          return -30;
        }

        *(a2 + 32) = *(a2 + 96);
        *(a2 + 40) = *(a2 + 104);
      }

      if (!a3 && !*(a2 + 16))
      {
        return 0;
      }

      v3 = a3 ? 2 : 0;
      v10 = BZ2_bzCompress((a2 + 8), v3);
      if (v10 != 1)
      {
        break;
      }

      if (!a3 && !*(a2 + 16))
      {
        return 0;
      }
    }
  }

  while (v10 == 3);
  if (v10 == 4)
  {
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 8), 22, "Bzip2 compression failed; BZ2_bzCompress() returned %d", v4, v5, v6, v7, v8, v10);
    return -30;
  }
}

uint64_t archive_write_add_filter_gzip(int *a1)
{
  v8 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_gzip") == -30)
  {
    return -30;
  }

  else
  {
    v7 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B00405CE5B617uLL);
    if (v7)
    {
      v8[9] = v7;
      v8[4] = archive_compressor_gzip_open;
      v8[3] = archive_compressor_gzip_options;
      v8[7] = archive_compressor_gzip_close;
      v8[8] = archive_compressor_gzip_free;
      *(v8 + 22) = 1;
      v8[10] = "gzip";
      *v7 = -1;
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Out of memory", v1, v2, v3, v4, v5, archive_compressor_gzip_open);
      return -30;
    }
  }
}

uint64_t archive_compressor_gzip_open(uint64_t *a1)
{
  v24 = a1[9];
  if (*(v24 + 128))
  {
    goto LABEL_9;
  }

  v22 = 0x10000;
  if (*a1[1] == -1329217314)
  {
    v21 = archive_write_get_bytes_per_block(a1[1]);
    if (v21 <= 0x10000)
    {
      if (v21)
      {
        v22 = 0x10000 - 0x10000 % v21;
      }
    }

    else
    {
      v22 = v21;
    }
  }

  *(v24 + 136) = v22;
  *(v24 + 128) = malloc_type_malloc(*(v24 + 136), 0x100004077774924uLL);
  if (*(v24 + 128))
  {
LABEL_9:
    *(v24 + 144) = crc32(0, 0, 0);
    *(v24 + 32) = *(v24 + 128);
    *(v24 + 40) = *(v24 + 136);
    **(v24 + 128) = 31;
    *(*(v24 + 128) + 1) = -117;
    *(*(v24 + 128) + 2) = 8;
    *(*(v24 + 128) + 3) = 0;
    if ((*(v24 + 4) & 0x80000000) != 0)
    {
      v6 = *(v24 + 128);
      __memset_chk();
    }

    else
    {
      v20 = time(0);
      *(*(v24 + 128) + 4) = v20;
      *(*(v24 + 128) + 5) = v20 >> 8;
      *(*(v24 + 128) + 7) = HIBYTE(v20);
    }

    if (*v24 == 9)
    {
      *(*(v24 + 128) + 8) = 2;
    }

    else if (*v24 == 1)
    {
      *(*(v24 + 128) + 8) = 4;
    }

    else
    {
      *(*(v24 + 128) + 8) = 0;
    }

    *(*(v24 + 128) + 9) = 3;
    *(v24 + 32) += 10;
    *(v24 + 40) -= 10;
    a1[5] = archive_compressor_gzip_write;
    v23 = deflateInit2_((v24 + 8), *v24, 8, -15, 8, 0, "1.2.12", 112);
    if (v23)
    {
      archive_set_error(a1[1], -1, "Internal error initializing compression library", v7, v8, v9, v10, v11, v18);
      switch(v23)
      {
        case -6:
          archive_set_error(a1[1], -1, "Internal error initializing compression library: invalid library version", v12, v13, v14, v15, v16, v19);
          break;
        case -4:
          archive_set_error(a1[1], 12, "Internal error initializing compression library", v12, v13, v14, v15, v16, v19);
          break;
        case -2:
          archive_set_error(a1[1], -1, "Internal error initializing compression library: invalid setup parameter", v12, v13, v14, v15, v16, v19);
          break;
      }

      return -30;
    }

    else
    {
      a1[9] = v24;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1[1], 12, "Can't allocate data for compression buffer", v1, v2, v3, v4, v5, v18);
    return -30;
  }
}

uint64_t archive_compressor_gzip_options(uint64_t a1, const char *a2, char *a3)
{
  v5 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 48 && *a3 <= 57 && !a3[1])
    {
      *v5 = *a3 - 48;
      return 0;
    }

    else
    {
      return -20;
    }
  }

  else if (!strcmp(a2, "timestamp"))
  {
    if (a3)
    {
      v3 = 1;
    }

    else
    {
      v3 = -1;
    }

    v5[1] = v3;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_compressor_gzip_close(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 72);
  v8 = drive_compressor_1(a1, v9, 1);
  if (!v8)
  {
    v8 = __archive_write_filter(*(a1 + 16), *(v9 + 128), *(v9 + 136) - *(v9 + 40));
  }

  if (!v8)
  {
    v11[0] = *(v9 + 144);
    v11[1] = BYTE1(*(v9 + 144));
    v11[2] = BYTE2(*(v9 + 144));
    v11[3] = BYTE3(*(v9 + 144));
    v12 = *(v9 + 120);
    v13 = BYTE2(*(v9 + 120));
    v14 = BYTE3(*(v9 + 120));
    v8 = __archive_write_filter(*(a1 + 16), v11, 8);
  }

  if (deflateEnd((v9 + 8)))
  {
    archive_set_error(*(a1 + 8), -1, "Failed to clean up compressor", v1, v2, v3, v4, v5, v7);
    v8 = -30;
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t archive_compressor_gzip_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  free(v2[16]);
  free(v2);
  *(a1 + 72) = 0;
  return 0;
}

uint64_t archive_compressor_gzip_write(uint64_t a1, const Bytef *a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  *(v5 + 144) = crc32(*(v5 + 144), a2, a3);
  *(v5 + 120) += a3;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  v4 = drive_compressor_1(a1, v5, 0);
  if (v4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t drive_compressor_1(uint64_t a1, uint64_t a2, int a3)
{
  while (1)
  {
    if (!*(a2 + 40))
    {
      if (__archive_write_filter(*(a1 + 16), *(a2 + 128), *(a2 + 136)))
      {
        return -30;
      }

      *(a2 + 32) = *(a2 + 128);
      *(a2 + 40) = *(a2 + 136);
    }

    if (!a3 && !*(a2 + 16))
    {
      return 0;
    }

    v3 = a3 ? 4 : 0;
    v10 = deflate((a2 + 8), v3);
    if (v10)
    {
      break;
    }

    if (!a3 && !*(a2 + 16))
    {
      return 0;
    }
  }

  if (v10 == 1)
  {
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 8), -1, "GZip compression failed: deflate() call returned status %d", v4, v5, v6, v7, v8, v10);
    return -30;
  }
}

uint64_t archive_write_open_FILE(_DWORD *a1, uint64_t a2)
{
  v9 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (v9)
  {
    *v9 = a2;
    return archive_write_open2(a1, v9, file_open_1, file_write_0, 0, file_free_3);
  }

  else
  {
    archive_set_error(a1, 12, "No memory", v2, v3, v4, v5, v6, v8);
    return -30;
  }
}

uint64_t file_write_0(_DWORD *a1, FILE **a2, const void *a3, size_t a4)
{
  while (1)
  {
    v11 = fwrite(a3, 1uLL, a4, *a2);
    if (v11)
    {
      break;
    }

    if (*__error() != 4)
    {
      v4 = __error();
      archive_set_error(a1, *v4, "Write error", v5, v6, v7, v8, v9, a1);
      return -1;
    }
  }

  return v11;
}

uint64_t file_free_3(uint64_t a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }

  return 0;
}

uint64_t archive_write_open_filename(_DWORD *a1, const char *a2)
{
  if (a2 && *a2)
  {
    return open_filename(a1, 1, a2);
  }

  else
  {
    return archive_write_open_fd(a1, 1);
  }
}

uint64_t open_filename(_DWORD *a1, int a2, const char *a3)
{
  v11 = malloc_type_calloc(1uLL, 0x70uLL, 0x1010040D4C8CDB9uLL);
  if (!v11)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v10 = archive_mstring_copy_mbs((v11 + 2), a3);
  }

  else
  {
    v10 = archive_mstring_copy_wcs((v11 + 2), a3);
  }

  if ((v10 & 0x80000000) == 0)
  {
    *v11 = -1;
    return archive_write_open2(a1, v11, file_open_2, file_write_1, file_close_1, file_free_4);
  }

  if (*__error() == 12)
  {
LABEL_2:
    archive_set_error(a1, 12, "No memory", v3, v4, v5, v6, v7, v9);
    return -30;
  }

  else
  {
    if (a2)
    {
      archive_set_error(a1, -1, "Can't convert '%s' to WCS", v3, v4, v5, v6, v7, a3);
    }

    else
    {
      archive_set_error(a1, -1, "Can't convert '%S' to MBS", v3, v4, v5, v6, v7, a3);
    }

    return -25;
  }
}

uint64_t archive_write_open_filename_w(_DWORD *a1, const char *a2)
{
  if (a2 && *a2)
  {
    return open_filename(a1, 0, a2);
  }

  else
  {
    return archive_write_open_fd(a1, 1);
  }
}

uint64_t file_open_2(int *a1, int *a2)
{
  v53 = a1;
  v52 = a2;
  memset(&__b, 0, sizeof(__b));
  v50 = v52;
  v51 = 16778753;
  v47 = 0;
  v48 = 0;
  if (archive_mstring_get_mbs(v53, (v52 + 2), &v47))
  {
    if (*__error() == 12)
    {
      v46 = v53;
      v2 = __error();
      archive_set_error(v46, *v2, "No memory", v3, v4, v5, v6, v7, v40);
    }

    else
    {
      archive_mstring_get_wcs(v53, (v50 + 2), &v48);
      v45 = v53;
      v8 = __error();
      archive_set_error(v45, *v8, "Can't convert '%S' to MBS", v9, v10, v11, v12, v13, v48);
    }

    return -30;
  }

  else
  {
    v14 = open(v47, v51, 438);
    *v50 = v14;
    __archive_ensure_cloexec_flag(*v50);
    if (*v50 < 0)
    {
      if (v47)
      {
        v44 = v53;
        v15 = __error();
        archive_set_error(v44, *v15, "Failed to open '%s'", v16, v17, v18, v19, v20, v47);
      }

      else
      {
        v43 = v53;
        v21 = __error();
        archive_set_error(v43, *v21, "Failed to open '%S'", v22, v23, v24, v25, v26, v48);
      }

      return -30;
    }

    else if (fstat(*v50, &__b))
    {
      if (v47)
      {
        v42 = v53;
        v27 = __error();
        archive_set_error(v42, *v27, "Couldn't stat '%s'", v28, v29, v30, v31, v32, v47);
      }

      else
      {
        v41 = v53;
        v33 = __error();
        archive_set_error(v41, *v33, "Couldn't stat '%S'", v34, v35, v36, v37, v38, v48);
      }

      return -30;
    }

    else
    {
      if ((archive_write_get_bytes_in_last_block(v53) & 0x80000000) != 0)
      {
        if ((__b.st_mode & 0xF000) == 0x2000 || (__b.st_mode & 0xF000) == 0x6000 || (__b.st_mode & 0xF000) == 0x1000)
        {
          archive_write_set_bytes_in_last_block(v53, 0);
        }

        else
        {
          archive_write_set_bytes_in_last_block(v53, 1);
        }
      }

      if ((__b.st_mode & 0xF000) == 0x8000)
      {
        archive_write_set_skip_file(v53, __b.st_dev, __b.st_ino);
      }

      return 0;
    }
  }
}

uint64_t file_write_1(_DWORD *a1, int *a2, const void *a3, size_t a4)
{
  while (1)
  {
    v11 = write(*a2, a3, a4);
    if (v11 > 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v4 = __error();
      archive_set_error(a1, *v4, "Write error", v5, v6, v7, v8, v9, a1);
      return -1;
    }
  }

  return v11;
}

uint64_t file_close_1(uint64_t a1, int *a2)
{
  if (a2)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      close(*a2);
    }

    return 0;
  }

  else
  {
    return -30;
  }
}

uint64_t file_free_4(uint64_t a1, void *a2)
{
  if (a2)
  {
    archive_mstring_clean(a2 + 8);
    free(a2);
  }

  return 0;
}

uint64_t archive_write_open_memory(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040F32E1FD2uLL);
  if (v11)
  {
    v11[3] = a2;
    v11[1] = a3;
    v11[2] = a4;
    return archive_write_open2(a1, v11, memory_write_open, memory_write, 0, memory_write_free);
  }

  else
  {
    archive_set_error(a1, 12, "No memory", v4, v5, v6, v7, v8, v10);
    return -30;
  }
}

uint64_t memory_write_open(int *a1, uint64_t a2)
{
  *a2 = 0;
  if (*(a2 + 16))
  {
    **(a2 + 16) = *a2;
  }

  if (archive_write_get_bytes_in_last_block(a1) == -1)
  {
    archive_write_set_bytes_in_last_block(a1, 1);
  }

  return 0;
}

uint64_t memory_write(_DWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a2 + a4) > *(a2 + 8))
  {
    archive_set_error(a1, 12, "Buffer exhausted", a4, a5, a6, a7, a8, a2);
    return -30;
  }

  else
  {
    v8 = *(a2 + 24);
    v9 = *a2;
    __memcpy_chk();
    *a2 += a4;
    if (*(a2 + 16))
    {
      **(a2 + 16) = *a2;
    }

    return a4;
  }
}

uint64_t memory_write_free(uint64_t a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }

  return 0;
}

char *get_c_string(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  count = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (count == -1)
  {
    return 0;
  }

  buffer = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
  if (!buffer)
  {
    return 0;
  }

  if (CFStringGetCString(a1, buffer, count, 0x8000100u))
  {
    return buffer;
  }

  free(buffer);
  return 0;
}

uint64_t archive_write_set_format(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = 0; *(&codes + 4 * i); ++i)
  {
    if (a2 == *(&codes + 4 * i))
    {
      return (*(&codes + 2 * i + 1))(a1);
    }
  }

  archive_set_error(a1, 22, "No such format", a4, a5, a6, a7, a8, v9);
  return -30;
}

_DWORD *__archive_write_entry_filetype_unsupported(_DWORD *a1, _DWORD **a2)
{
  *&v15[8] = 0;
  *v15 = archive_entry_filetype(a2);
  switch(*v15)
  {
    case 0x1000:
      *&v15[4] = "named pipes";
      break;
    case 0x2000:
      *&v15[4] = "character devices";
      break;
    case 0x4000:
      *&v15[4] = "directories";
      break;
    case 0x6000:
      *&v15[4] = "block devices";
      break;
    case 0xA000:
      *&v15[4] = "symbolic links";
      break;
    case 0xC000:
      *&v15[4] = "sockets";
      break;
  }

  if (*&v15[4])
  {
    v2 = archive_entry_pathname(a2);
    return archive_set_error(a1, 79, "%s: %s format cannot archive %s", v3, v4, v5, v6, v7, v2);
  }

  else
  {
    v14 = archive_entry_pathname(a2);
    archive_entry_mode(a2);
    return archive_set_error(a1, 79, "%s: %s format cannot archive files with mode 0%lo", v9, v10, v11, v12, v13, v14);
  }
}

uint64_t archive_write_set_format_ar_bsd(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_ar_bsd") == -30)
  {
    return -30;
  }

  else
  {
    v2 = archive_write_set_format_ar(a1);
    if (!v2)
    {
      *(a1 + 16) = 458754;
      *(a1 + 24) = "ar (BSD)";
    }

    return v2;
  }
}

uint64_t archive_write_set_format_ar(uint64_t a1)
{
  if (*(a1 + 312))
  {
    (*(a1 + 312))(a1);
  }

  v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x10100407E53D9D1uLL);
  if (v7)
  {
    *(a1 + 248) = v7;
    *(a1 + 256) = "ar";
    *(a1 + 288) = archive_write_ar_header;
    *(a1 + 296) = archive_write_ar_data;
    *(a1 + 304) = archive_write_ar_close;
    *(a1 + 312) = archive_write_ar_free;
    *(a1 + 280) = archive_write_ar_finish_entry;
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate ar data", v1, v2, v3, v4, v5, archive_write_ar_header);
    return -30;
  }
}

uint64_t archive_write_set_format_ar_svr4(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_ar_svr4") == -30)
  {
    return -30;
  }

  else
  {
    v2 = archive_write_set_format_ar(a1);
    if (!v2)
    {
      *(a1 + 16) = 458753;
      *(a1 + 24) = "ar (GNU/SVR4)";
    }

    return v2;
  }
}

uint64_t archive_write_ar_header(uint64_t a1, _DWORD **a2)
{
  __b[8] = *MEMORY[0x1E69E9840];
  v82 = 0;
  v79 = *(a1 + 248);
  *(v79 + 16) = 0;
  __s = 0;
  v76 = archive_entry_size(a2);
  __s1 = archive_entry_pathname(a2);
  if (!__s1 || !*__s1)
  {
    archive_set_error(a1, 22, "Invalid filename", v2, v3, v4, v5, v6, v75);
    v87 = -20;
    goto LABEL_55;
  }

  if (!*(v79 + 24))
  {
    __archive_write_output(a1, "!<arch>\n", 8);
    *(v79 + 24) = 1;
  }

  memset(__b, 32, 0x3CuLL);
  if (!strcmp(__s1, "/"))
  {
    LOBYTE(__b[0]) = 47;
LABEL_35:
    v39 = archive_entry_mtime(a2);
    if (format_decimal(v39, &__b[2], 12))
    {
      archive_set_error(a1, 34, "File modification time too large", v40, v41, v42, v43, v44, v75);
      v87 = -20;
      goto LABEL_55;
    }

    v45 = archive_entry_uid(a2);
    if (format_decimal(v45, &__b[3] + 4, 6))
    {
      archive_set_error(a1, 34, "Numeric user ID too large", v46, v47, v48, v49, v50, v75);
      v87 = -20;
      goto LABEL_55;
    }

    v51 = archive_entry_gid(a2);
    if (format_decimal(v51, &__b[4] + 2, 6))
    {
      archive_set_error(a1, 34, "Numeric group ID too large", v52, v53, v54, v55, v56, v75);
      v87 = -20;
      goto LABEL_55;
    }

    v57 = archive_entry_mode(a2);
    if (format_octal_1(v57, &__b[5], 8))
    {
      archive_set_error(a1, 34, "Numeric mode too large", v58, v59, v60, v61, v62, v75);
      v87 = -20;
      goto LABEL_55;
    }

    if (__s && archive_entry_filetype(a2) != 0x8000)
    {
      archive_set_error(a1, 22, "Regular file required for non-pseudo member", v63, v64, v65, v66, v67, v75);
      v87 = -20;
      goto LABEL_55;
    }

    goto LABEL_46;
  }

  if (!strcmp(__s1, "/SYM64/"))
  {
    qmemcpy(__b, "/SYM64/", 7);
    goto LABEL_35;
  }

  if (!strcmp(__s1, "__.SYMDEF"))
  {
    qmemcpy(__b, "__.SYMDEF", 9);
    goto LABEL_35;
  }

  if (strcmp(__s1, "//"))
  {
    __s = ar_basename(__s1);
    if (!__s)
    {
      archive_set_error(a1, 22, "Invalid filename", v7, v8, v9, v10, v11, v75);
      v87 = -20;
      goto LABEL_55;
    }

    if (*(a1 + 16) == 458753)
    {
      if (strlen(__s) > 0xF)
      {
        if (*(v79 + 20) <= 0)
        {
          archive_set_error(a1, 22, "Can't find string table", v12, v13, v14, v15, v16, v75);
          v87 = -20;
          goto LABEL_55;
        }

        v17 = strlen(__s);
        __s2 = malloc_type_malloc(v17 + 3, 0x100004077774924uLL);
        if (!__s2)
        {
          archive_set_error(a1, 12, "Can't allocate filename buffer", v18, v19, v20, v21, v22, v75);
          v87 = -30;
          goto LABEL_55;
        }

        strlen(__s);
        __memcpy_chk();
        strlen(__s);
        __strcpy_chk();
        v81 = strstr(*(v79 + 32), __s2);
        free(__s2);
        if (!v81)
        {
          archive_set_error(a1, 22, "Invalid string table", v23, v24, v25, v26, v27, v75);
          v87 = -20;
          goto LABEL_55;
        }

        LOBYTE(__b[0]) = 47;
        if (format_decimal(&v81[-*(v79 + 32)], __b + 1, 15))
        {
          archive_set_error(a1, 34, "string table offset too large", v28, v29, v30, v31, v32, v75);
          v87 = -20;
          goto LABEL_55;
        }
      }

      else
      {
        strlen(__s);
        __memcpy_chk();
        *(__b + strlen(__s)) = 47;
      }
    }

    else if (*(a1 + 16) == 458754)
    {
      if (strlen(__s) > 0x10 || strchr(__s, 32))
      {
        qmemcpy(__b, "#1/", 3);
        v33 = strlen(__s);
        if (format_decimal(v33, __b + 3, 13))
        {
          archive_set_error(a1, 34, "File name too long", v34, v35, v36, v37, v38, v75);
          v87 = -20;
          goto LABEL_55;
        }

        v82 = 1;
        v76 += strlen(__s);
      }

      else
      {
        strlen(__s);
        __memcpy_chk();
        *(__b + strlen(__s)) = 32;
      }
    }

    goto LABEL_35;
  }

  *(v79 + 16) = 1;
  LOWORD(__b[0]) = 12079;
LABEL_46:
  if (format_decimal(v76, &__b[6], 10))
  {
    archive_set_error(a1, 34, "File size out of range", v68, v69, v70, v71, v72, v75);
    v87 = -20;
  }

  else
  {
    v83 = __archive_write_output(a1, __b, 60);
    if (!v83)
    {
      *v79 = v76;
      *(v79 + 8) = *v79 % 2uLL;
      if (v82 > 0)
      {
        v73 = strlen(__s);
        v84 = __archive_write_output(a1, __s, v73);
        if (v84)
        {
          v87 = v84;
          goto LABEL_55;
        }

        *v79 -= strlen(__s);
      }

      v87 = 0;
      goto LABEL_55;
    }

    v87 = v83;
  }

LABEL_55:
  *MEMORY[0x1E69E9840];
  return v87;
}

uint64_t archive_write_ar_data(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a3;
  HIDWORD(v15) = 0;
  v17 = *(a1 + 248);
  if (a3 > *v17)
  {
    v18 = *v17;
  }

  if (*(v17 + 16) > 0)
  {
    if (*(v17 + 20) > 0)
    {
      archive_set_error(a1, 22, "More than one string tables exist", a4, a5, a6, a7, a8, v15);
      return -20;
    }

    *(v17 + 32) = malloc_type_malloc(v18 + 1, 0x100004077774924uLL);
    if (!*(v17 + 32))
    {
      archive_set_error(a1, 12, "Can't allocate strtab buffer", v8, v9, v10, v11, v12, v15);
      return -30;
    }

    v13 = *(v17 + 32);
    __memcpy_chk();
    *(*(v17 + 32) + v18) = 0;
    *(v17 + 20) = 1;
  }

  v16 = __archive_write_output(a1, a2, v18);
  if (v16)
  {
    return v16;
  }

  *v17 -= v18;
  return v18;
}

uint64_t archive_write_ar_close(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (*(v2 + 24))
  {
    return 0;
  }

  else
  {
    *(v2 + 24) = 1;
    return __archive_write_output(a1, "!<arch>\n", 8);
  }
}

uint64_t archive_write_ar_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    if (*(v2 + 5) > 0)
    {
      free(v2[4]);
      v2[4] = 0;
    }

    free(v2);
    *(a1 + 248) = 0;
  }

  return 0;
}

uint64_t archive_write_ar_finish_entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 248);
  if (*v10)
  {
    archive_set_error(a1, -1, "Entry remaining bytes larger than 0", a4, a5, a6, a7, a8, v9);
    return -20;
  }

  else if (v10[1])
  {
    if (v10[1] == 1)
    {
      return __archive_write_output(a1, "\n", 1);
    }

    else
    {
      archive_set_error(a1, -1, "Padding wrong size: %ju should be 1 or 0", a4, a5, a6, a7, a8, v10[1]);
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

const char *ar_basename(const char *a1)
{
  v4 = &a1[strlen(a1) - 1];
  if (*v4 == 47)
  {
    return 0;
  }

  for (i = v4; ; --i)
  {
    v2 = 0;
    if (i > a1)
    {
      v2 = *(i - 1) != 47;
    }

    if (!v2)
    {
      break;
    }
  }

  return i;
}

uint64_t format_decimal(uint64_t a1, _BYTE *a2, int a3)
{
  v17 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a3;
  if (a1 < 0)
  {
    while (1)
    {
      v3 = v12--;
      if (v3 <= 0)
      {
        break;
      }

      v4 = v14++;
      *v4 = 48;
    }

    return -1;
  }

  else
  {
    v15 = &a2[a3];
    do
    {
      *--v15 = v17 % 10 + 48;
      v17 /= 10;
      --v13;
      v10 = 0;
      if (v13 > 0)
      {
        v10 = v17 > 0;
      }
    }

    while (v10);
    if (v17)
    {
      while (1)
      {
        v7 = v12--;
        if (v7 <= 0)
        {
          break;
        }

        v8 = v15++;
        *v8 = 57;
      }

      return -1;
    }

    else
    {
      __memmove_chk();
      for (i = &a2[v12 - v13]; ; ++i)
      {
        v5 = v13--;
        if (v5 <= 0)
        {
          break;
        }

        v6 = i;
        *v6 = 32;
      }

      return 0;
    }
  }
}

uint64_t format_octal_1(uint64_t a1, _BYTE *a2, int a3)
{
  v17 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a3;
  if (a1 < 0)
  {
    while (1)
    {
      v3 = v12--;
      if (v3 <= 0)
      {
        break;
      }

      v4 = v14++;
      *v4 = 48;
    }

    return -1;
  }

  else
  {
    v15 = &a2[a3];
    do
    {
      *--v15 = (v17 & 7) + 48;
      v17 >>= 3;
      --v13;
      v10 = 0;
      if (v13 > 0)
      {
        v10 = v17 > 0;
      }
    }

    while (v10);
    if (v17)
    {
      while (1)
      {
        v7 = v12--;
        if (v7 <= 0)
        {
          break;
        }

        v8 = v15++;
        *v8 = 55;
      }

      return -1;
    }

    else
    {
      __memmove_chk();
      for (i = &a2[v12 - v13]; ; ++i)
      {
        v5 = v13--;
        if (v5 <= 0)
        {
          break;
        }

        v6 = i;
        *v6 = 32;
      }

      return 0;
    }
  }
}

uint64_t archive_write_add_filter(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = 0; *(&codes_0 + 4 * i) != -1; ++i)
  {
    if (a2 == *(&codes_0 + 4 * i))
    {
      return (*(&codes_0 + 2 * i + 1))(a1);
    }
  }

  archive_set_error(a1, 22, "No such filter", a4, a5, a6, a7, a8, v9);
  return -30;
}

uint64_t archive_write_set_format_by_name(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = 0; (&names)[2 * i]; ++i)
  {
    if (!strcmp(a2, (&names)[2 * i]))
    {
      return ((&names)[2 * i + 1])(a1);
    }
  }

  archive_set_error(a1, 22, "No such format '%s'", a4, a5, a6, a7, a8, a2);
  a1[1] = 0x8000;
  return -30;
}

uint64_t archive_read_support_filter_uu(int *a1)
{
  if (archive_allow_entitlement_filter("uu"))
  {
    return __archive_read_register_bidder(a1, 0, "uu", uudecode_bidder_vtable);
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlement", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t uudecode_bidder_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a1;
  v22 = a2;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  line = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v21 = __archive_read_filter_ahead(a2, 1uLL, &v20, a4, a5, a6, a7, a8);
  if (v21)
  {
    v15 = 20;
    v19 = v20;
    v14 = v20;
    while (1)
    {
      line = bid_get_line(v22, &v21, &v20, &v19, &v17, &v14, v8, v9);
      if (line < 0 || !v17)
      {
        return 0;
      }

      if (line - v17 >= 11 && !memcmp(v21, "begin ", 6uLL))
      {
        v16 = 6;
      }

      else if (line - v17 >= 18 && !memcmp(v21, "begin-base64 ", 0xDuLL))
      {
        v16 = 13;
      }

      else
      {
        v16 = 0;
      }

      if (v16 > 0 && (v21[v16] < 0x30u || v21[v16] > 0x37u || v21[v16 + 1] < 0x30u || v21[v16 + 1] > 0x37u || v21[v16 + 2] < 0x30u || v21[v16 + 2] > 0x37u || v21[v16 + 3] != 32))
      {
        v16 = 0;
      }

      v21 += line;
      v20 -= line;
      if (v16)
      {
        break;
      }

      v15 = 0;
      if (v14 >= 0x20000)
      {
        return 0;
      }
    }

    if (v20)
    {
      line = bid_get_line(v22, &v21, &v20, &v19, &v17, &v14, v8, v9);
      if ((line & 0x8000000000000000) == 0 && v17)
      {
        v20 -= line;
        if (v16 == 6)
        {
          if (!uuchar[*v21])
          {
            return 0;
          }

          v10 = v21++;
          v16 = (*v10 - 32) & 0x3F;
          --line;
          if (v16 > 45)
          {
            return 0;
          }

          if (v16 > line - v17)
          {
            return 0;
          }

          while (v16)
          {
            v11 = v21++;
            if (!uuchar[*v11])
            {
              return 0;
            }

            --line;
            --v16;
          }

          if (line - v17 == 1 && (uuchar[*v21] || *v21 >= 0x61u && *v21 <= 0x7Au))
          {
            ++v21;
            --line;
          }

          v21 += v17;
          if (v20 && uuchar[*v21])
          {
            return (v15 + 30);
          }
        }

        else if (v16 == 13)
        {
          while (line - v17 > 0)
          {
            v12 = v21++;
            if (!base64_1[*v12])
            {
              return 0;
            }

            --line;
          }

          v21 += v17;
          if (v20 >= 5 && !memcmp(v21, "====\n", 5uLL))
          {
            return (v15 + 40);
          }

          if (v20 >= 6 && !memcmp(v21, "====\r\n", 6uLL))
          {
            return (v15 + 40);
          }

          if (v20 > 0 && base64_1[*v21])
          {
            return (v15 + 30);
          }
        }

        return 0;
      }

      return 0;
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

uint64_t uudecode_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 7;
  *(a1 + 48) = "uu";
  v10 = malloc_type_calloc(1uLL, 0x40uLL, 0x101004080717504uLL);
  v9 = malloc_type_malloc(0x10000uLL, 0x949ECCDAuLL);
  v8 = malloc_type_malloc(0x400uLL, 0xD08BF37CuLL);
  if (v10 && v9 && v8)
  {
    *(a1 + 40) = v10;
    v10[1] = v8;
    *(v10 + 4) = 0;
    v10[3] = 1024;
    v10[4] = v9;
    *(v10 + 10) = 0;
    *(v10 + 12) = 0;
    v10[7] = 0;
    *(a1 + 32) = uudecode_reader_vtable;
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for uudecode", v1, v2, v3, v4, v5, v7);
    free(v10);
    free(v9);
    free(v8);
    return -30;
  }
}

uint64_t bid_get_line(uint64_t a1, unsigned __int8 **a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  if (*a3)
  {
    line = get_line(*a2, *a3, a5);
  }

  else
  {
    *a5 = 0;
    line = 0;
  }

  while (1)
  {
    v14 = 0;
    if (!*a5)
    {
      v14 = 0;
      if (line == *a3)
      {
        v14 = 0;
        if (!v18)
        {
          v14 = *a6 < 0x20000;
        }
      }
    }

    if (!v14)
    {
      break;
    }

    v17 = *a4 - *a3;
    v16 = (*a4 + 1023) & 0xFFFFFC00;
    if (v16 < *a4 + 160)
    {
      v16 *= 2;
    }

    *a2 = __archive_read_filter_ahead(a1, v16, a3, a4, a5, a6, a7, a8);
    if (!*a2)
    {
      if (*a4 >= *a3)
      {
        return 0;
      }

      *a2 = __archive_read_filter_ahead(a1, *a3, a3, v8, v9, v10, v11, v12);
      v18 = 1;
    }

    *a6 = *a3;
    *a4 = *a3;
    *a2 += v17;
    *a3 -= v17;
    v15 = line;
    line = get_line(&(*a2)[line], *a3 - line, a5);
    if ((line & 0x8000000000000000) == 0)
    {
      line += v15;
    }
  }

  return line;
}

uint64_t get_line(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v5 = 0;
  while (v5 < a2)
  {
    v4 = ascii[*a1];
    if (!ascii[*a1])
    {
      if (a3)
      {
        *a3 = 0;
      }

      return -1;
    }

    switch(v4)
    {
      case 1:
        ++a1;
        ++v5;
        break;
      case 10:
        goto LABEL_16;
      case 13:
        if (a2 - v5 > 1 && a1[1] == 10)
        {
          if (a3)
          {
            *a3 = 2;
          }

          return v5 + 2;
        }

LABEL_16:
        if (a3)
        {
          *a3 = 1;
        }

        return v5 + 1;
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2;
}

uint64_t uudecode_filter_read(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a1;
  v64 = a2;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  line = 0;
  v54 = 0;
  v53 = 0;
  v63 = *(a1 + 40);
LABEL_2:
  v61 = __archive_read_filter_ahead(*(v65 + 16), 1uLL, &v59, a4, a5, a6, a7, a8);
  if (!v61 && v59 < 0)
  {
    return -30;
  }

  if (!v61)
  {
    v59 = 0;
  }

  v57 = 0;
  v56 = 0;
  v60 = *(v63 + 32);
  v58 = v59;
  if (*(v63 + 40) != 4)
  {
    if (!*(v63 + 16))
    {
      goto LABEL_13;
    }

    if (ensure_in_buff_size(v65, v63, v59 + *(v63 + 16)))
    {
      return -30;
    }

    v8 = *(v63 + 8);
    v9 = *(v63 + 16);
    __memcpy_chk();
    v61 = *(v63 + 8);
    v59 += *(v63 + 16);
    *(v63 + 16) = 0;
    while (1)
    {
LABEL_13:
      if (v57 >= v59)
      {
        goto LABEL_111;
      }

      v62 = v61;
      line = get_line(v61, v59 - v57, &v53);
      if ((line & 0x8000000000000000) != 0)
      {
        if (!*(v63 + 40) && (*v63 > 0 || v56 > 0))
        {
          *(v63 + 40) = 4;
          v57 = v59;
          goto LABEL_111;
        }

LABEL_109:
        archive_set_error(*(v65 + 24), -1, "Insufficient compressed data", v10, v11, v12, v13, v14, v40);
        return -30;
      }

      v54 = line;
      if (!v53 && *(v63 + 40) != 2)
      {
        if (!v56 && v58 <= 0)
        {
          archive_set_error(*(v65 + 24), 79, "Missing format data", v10, v11, v12, v13, v14, v40);
          return -30;
        }

        if (ensure_in_buff_size(v65, v63, line))
        {
          return -30;
        }

        if (*(v63 + 8) != v62)
        {
          v15 = *(v63 + 8);
          __memmove_chk();
        }

        *(v63 + 16) = line;
        if (!v56)
        {
          __archive_read_filter_consume(*(v65 + 16), v58);
          goto LABEL_2;
        }

        v57 += line;
        goto LABEL_111;
      }

      v41 = *(v63 + 40);
      if (!v41)
      {
        break;
      }

      switch(v41)
      {
        case 1:
          if ((v56 + 2 * line) > 0x10000)
          {
            goto LABEL_111;
          }

          v48 = line - v53;
          if (!uuchar[*v62])
          {
            goto LABEL_109;
          }

          if (v48 <= 0)
          {
            goto LABEL_109;
          }

          v23 = v62++;
          v50 = (*v23 - 32) & 0x3F;
          if (v50 > v48 - 1)
          {
            goto LABEL_109;
          }

          v24 = (*v23 - 32) & 0x3F;
          if (v50)
          {
            while (v50 > 0 && uuchar[*v62] && uuchar[v62[1]])
            {
              v25 = v62++;
              v45 = ((*v25 - 32) & 0x3F) << 18;
              v26 = v62++;
              v46 = v45 | (((*v26 - 32) & 0x3F) << 12);
              v27 = v60++;
              *v27 = BYTE2(v46);
              ++v56;
              if (--v50 > 0)
              {
                if (!uuchar[*v62])
                {
                  break;
                }

                v28 = v62++;
                LOWORD(v46) = v46 | (((*v28 - 32) & 0x3F) << 6);
                v29 = v60++;
                *v29 = BYTE1(v46);
                ++v56;
                --v50;
              }

              if (v50 > 0)
              {
                if (!uuchar[*v62])
                {
                  break;
                }

                v30 = v62++;
                v47 = v46 | (*v30 - 32) & 0x3F;
                v31 = v60++;
                *v31 = v47;
                ++v56;
                --v50;
              }
            }

            if (v50)
            {
              goto LABEL_109;
            }
          }

          else
          {
            *(v63 + 40) = 2;
          }

          break;
        case 2:
          if (line - v53 != 3 || memcmp(v62, "end ", 3uLL))
          {
            goto LABEL_109;
          }

          *(v63 + 40) = 0;
          break;
        case 3:
          if ((v56 + 2 * line) > 0x10000)
          {
            goto LABEL_111;
          }

          v51 = line - v53;
          if ((line - v53) >= 3 && *v62 == 61 && v62[1] == 61 && v62[2] == 61)
          {
            *(v63 + 40) = 0;
          }

          else
          {
            while (v51 > 0 && base64_1[*v62] && base64_1[v62[1]])
            {
              v32 = v62++;
              v42 = base64num[*v32] << 18;
              v33 = v62++;
              v43 = v42 | (base64num[*v33] << 12);
              v34 = v60++;
              *v34 = BYTE2(v43);
              ++v56;
              v51 -= 2;
              if (v51 > 0)
              {
                if (*v62 == 61 || !base64_1[*v62])
                {
                  break;
                }

                v35 = v62++;
                v43 |= base64num[*v35] << 6;
                v36 = v60++;
                *v36 = BYTE1(v43);
                ++v56;
                --v51;
              }

              if (v51 > 0)
              {
                if (*v62 == 61 || !base64_1[*v62])
                {
                  break;
                }

                v37 = v62++;
                v44 = v43 | base64num[*v37];
                v38 = v60++;
                *v38 = v44;
                ++v56;
                --v51;
              }
            }

            if (v51 && *v62 != 61)
            {
              goto LABEL_109;
            }
          }

          break;
        default:
          goto LABEL_36;
      }

LABEL_110:
      v61 += v54;
      v57 += v54;
    }

LABEL_36:
    if ((v56 + line) >= 0x20000)
    {
      archive_set_error(*(v65 + 24), 79, "Invalid format data", v10, v11, v12, v13, v14, v40);
      return -30;
    }

    if ((line - v53) >= 11 && !memcmp(v62, "begin ", 6uLL))
    {
      v49 = 6;
    }

    else if ((line - v53) >= 18 && !memcmp(v62, "begin-base64 ", 0xDuLL))
    {
      v49 = 13;
    }

    else
    {
      v49 = 0;
    }

    if (v49 && v62[v49] >= 0x30u && v62[v49] <= 0x37u && v62[v49 + 1] >= 0x30u && v62[v49 + 1] <= 0x37u && v62[v49 + 2] >= 0x30u && v62[v49 + 2] <= 0x37u && v62[v49 + 3] == 32)
    {
      *(v63 + 40) = v49 == 6 ? 1 : 3;
      *(v63 + 44) = 8 * (v62[v49 + 1] - 48) + ((v62[v49] - 48) << 6) + v62[v49 + 2] - 48;
      *(v63 + 48) = 1;
      v52 = line - v53 - 4 - v49;
      if (v52 > 1)
      {
        if (*(v63 + 56))
        {
          free(*(v63 + 56));
        }

        v16 = malloc_type_malloc(v52 + 1, 0x44A05BCEuLL);
        *(v63 + 56) = v16;
        if (!*(v63 + 56))
        {
          archive_set_error(*(v65 + 24), 12, "Can't allocate data for uudecode", v17, v18, v19, v20, v21, v40);
          return -30;
        }

        v22 = *(v63 + 56);
        __strncpy_chk();
        *(*(v63 + 56) + v52) = 0;
      }
    }

    goto LABEL_110;
  }

  v57 = v59;
LABEL_111:
  if (v58 < v59)
  {
    v57 -= v59 - v58;
  }

  __archive_read_filter_consume(*(v65 + 16), v57);
  *v64 = *(v63 + 32);
  *v63 += v56;
  return v56;
}