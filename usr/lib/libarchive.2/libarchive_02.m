uint64_t read_stream(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = **(a1 + 2072);
  v26 = 0;
  if (*(v27 + 240))
  {
    return get_uncompressed_data(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!*(v27 + 280))
  {
    if (*(v27 + 264))
    {
      pack_stream = extract_pack_stream(a1, 0, a3, a4, a5, a6, a7, a8);
      if (pack_stream < 0)
      {
        return pack_stream;
      }
    }

    else
    {
      if (!*(v27 + 276))
      {
        if (*(v27 + 104))
        {
          archive_set_error(a1, -1, "Malformed 7-Zip archive", a4, a5, a6, a7, a8, v18);
          return -30;
        }

        if (!*(v27 + 256) && (*(*(v27 + 56) + 104 * *(*(v27 + 168) + 16) + 96) || *(v27 + 256) != *(*(v27 + 168) + 16)))
        {
          *(v27 + 256) = *(*(v27 + 168) + 16);
          v26 = *(*(v27 + 56) + 104 * *(v27 + 256) + 96);
        }

        if (*(v27 + 256) >= *(v27 + 48))
        {
          *a2 = 0;
          return 0;
        }

        if (setup_decode_folder(a1, (*(v27 + 56) + 104 * *(v27 + 256)), 0))
        {
          return -30;
        }

        ++*(v27 + 256);
      }

      v22 = seek_pack(a1, a2, a3, a4, a5, a6, a7, a8);
      if (v22 < 0)
      {
        return v22;
      }

      v23 = extract_pack_stream(a1, 0, v9, v10, v11, v12, v13, v14);
      if (v23 < 0)
      {
        return v23;
      }

      while (v26)
      {
        if (!*(v27 + 240))
        {
          if (*(v27 + 280))
          {
            v24 = extract_pack_stream(a1, 0, v15, v16, a5, a6, a7, a8);
            if (v24 < 0)
            {
              return v24;
            }
          }

          else
          {
            if (!*(v27 + 264))
            {
              archive_set_error(a1, 79, "Truncated 7-Zip file body", v16, a5, a6, a7, a8, v18);
              return -30;
            }

            v25 = extract_pack_stream(a1, 0, v15, v16, a5, a6, a7, a8);
            if (v25 < 0)
            {
              return v25;
            }
          }
        }

        uncompressed_data = get_uncompressed_data(a1, a2, v26, 0, a5, a6, a7, a8);
        if (uncompressed_data < 0)
        {
          return uncompressed_data;
        }

        v26 -= uncompressed_data;
        if (*(v27 + 288))
        {
          read_consume(a1);
        }
      }
    }

    return get_uncompressed_data(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v20 = extract_pack_stream(a1, 0, a3, a4, a5, a6, a7, a8);
  if ((v20 & 0x8000000000000000) == 0)
  {
    return get_uncompressed_data(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return v20;
}

uint64_t extract_pack_stream(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a1;
  v37 = a2;
  v36 = **(a1 + 2072);
  v35 = 0;
  v34 = 0;
  if (!*(v36 + 296) && *(v36 + 304) == -1)
  {
    if (!v37)
    {
      v37 = 1;
    }

    if (__archive_read_ahead(v38, v37, &v35, a4, a5, a6, a7, a8) && v35 > 0)
    {
      if (v35 > *(v36 + 280))
      {
        v35 = *(v36 + 280);
      }

      *(v36 + 280) -= v35;
      if (v35 > *(v36 + 264))
      {
        v35 = *(v36 + 264);
      }

      *(v36 + 264) -= v35;
      *(v36 + 240) = v35;
      return 0;
    }

    else
    {
      archive_set_error(v38, 79, "Truncated 7-Zip file body", v8, v9, v10, v11, v12, v26);
      return -30;
    }
  }

  if (*(v36 + 216))
  {
    if (*(v36 + 232) >= v37 && *(v36 + 240) >= v37)
    {
      *(v36 + 240) = 0;
    }

    else
    {
      v33 = 0;
      if (*(v36 + 224))
      {
        v33 = *(v36 + 224) - *(v36 + 216);
      }

      else
      {
        v33 = 0;
      }

      if (*(v36 + 232) < v37)
      {
        v32 = 0;
        size = (v37 + 1023) & 0xFFFFFFFFFFFFFC00;
        v32 = malloc_type_realloc(*(v36 + 216), size, 0xEFBAF570uLL);
        if (!v32)
        {
LABEL_17:
          archive_set_error(v38, 12, "No memory for 7-Zip decompression", a4, a5, a6, a7, a8, v26);
          return -30;
        }

        *(v36 + 216) = v32;
        *(v36 + 232) = size;
      }

      if (v33)
      {
        v13 = *(v36 + 216);
        v14 = *(v36 + 240);
        __memmove_chk();
      }
    }
  }

  else
  {
    *(v36 + 232) = 0x10000;
    if (*(v36 + 232) < v37)
    {
      *(v36 + 232) = v37 + 1023;
      *(v36 + 232) &= 0xFFFFFFFFFFFFFC00;
    }

    *(v36 + 216) = malloc_type_malloc(*(v36 + 232), 0xDCB16D4DuLL);
    if (!*(v36 + 216))
    {
      goto LABEL_17;
    }

    *(v36 + 240) = 0;
  }

  *(v36 + 224) = 0;
  while (1)
  {
    v30 = 0;
    v29 = 0;
    HIDWORD(v26) = 0;
    v28 = __archive_read_ahead(v38, 1uLL, &v35, a4, a5, a6, a7, a8);
    if (v35 <= 0)
    {
      archive_set_error(v38, 79, "Truncated 7-Zip file body", v15, v16, v17, v18, v19, v26);
      return -30;
    }

    v27 = *(v36 + 216) + *(v36 + 240);
    v29 = *(v36 + 232) - *(v36 + 240);
    v30 = v35;
    if (v35 > *(v36 + 280))
    {
      v30 = *(v36 + 280);
    }

    v34 = decompress(v38, v36, v27, &v29, v28, &v30, v18, v19);
    if (v34)
    {
      if (v34 != 1)
      {
        return -30;
      }

      v26 = 0x100000001;
    }

    else
    {
      v26 = 0;
    }

    *(v36 + 280) -= v30;
    if (v29 > *(v36 + 264))
    {
      v29 = *(v36 + 264);
    }

    *(v36 + 264) -= v29;
    *(v36 + 240) += v29;
    *(v36 + 288) = v30;
    if (*(v36 + 240) == *(v36 + 232) || *(v36 + 304) == 50528515 && *(v36 + 19984) && (*(v36 + 240) + 5) > *(v36 + 232))
    {
      break;
    }

    if (!*(v36 + 280) && !*(v36 + 264))
    {
      break;
    }

    if (HIDWORD(v26) || !v30 && !v29)
    {
      goto LABEL_55;
    }

    read_consume(v38);
  }

  if (*(v36 + 240) < v37)
  {
LABEL_55:
    archive_set_error(v38, -1, "Damaged 7-Zip archive", v20, v21, v22, v23, v24, v26);
    return -30;
  }

  *(v36 + 224) = *(v36 + 216);
  return 0;
}

uint64_t get_uncompressed_data(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = **(a1 + 2072);
  v16 = 0;
  if (v17[37] || v17[38] != -1)
  {
    if (!v17[28])
    {
      archive_set_error(v21, -1, "Damaged 7-Zip archive", a4, a5, a6, a7, a8, v15);
      return -30;
    }

    if (v18 > v17[30] && extract_pack_stream(v21, v18, a3, a4, a5, a6, a7, a8) < 0)
    {
      return -30;
    }

    if (v19 <= v17[30])
    {
      v16 = v19;
    }

    else
    {
      v16 = v17[30];
    }

    *v20 = v17[28];
    v17[28] += v16;
LABEL_19:
    v17[30] -= v16;
    return v16;
  }

  v8 = __archive_read_ahead(v21, v18, &v16, a4, a5, a6, a7, a8);
  *v20 = v8;
  if (v16 > 0)
  {
    if (v16 > v17[30])
    {
      v16 = v17[30];
    }

    if (v16 > v19)
    {
      v16 = v19;
    }

    v17[36] = v16;
    goto LABEL_19;
  }

  archive_set_error(v21, 79, "Truncated 7-Zip file data", v9, v10, v11, v12, v13, v15);
  return -30;
}

uint64_t decompress(_DWORD *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v56 = 0;
  v67 = *a6;
  v64 = *a6;
  v66 = *a4;
  v61 = *a4;
  v68 = a3;
  if (*(a2 + 296) != 33 && *(a2 + 304) == 50528515)
  {
    if (v67 && v61 < 5 && *(a2 + 19984))
    {
      *a6 = 0;
      *a4 = 0;
      return 0;
    }

    for (i = 0; ; ++i)
    {
      v48 = 0;
      if (*(a2 + 19984))
      {
        v48 = v61 != 0;
      }

      if (!v48)
      {
        break;
      }

      v8 = v68++;
      *v8 = *(a2 + 19992 + i);
      --v61;
      --*(a2 + 19984);
    }

    if (!v67 || !v61)
    {
      *a6 = v67 - v64;
      *a4 = v66 - v61;
      if (!v67)
      {
        return 1;
      }

      return v56;
    }
  }

  v60 = v68;
  v59 = v61;
  if (*(a2 + 304) != 50528539)
  {
LABEL_29:
    v47 = *(a2 + 296);
    if (v47)
    {
      switch(v47)
      {
        case 33:
        case 196865:
          *(a2 + 312) = a5;
          *(a2 + 320) = v64;
          *(a2 + 336) = v68;
          *(a2 + 344) = v61;
          v57 = lzma_code();
          if (v57)
          {
            if (v57 != 1)
            {
              archive_set_error(a1, -1, "Decompression failed(%d)", v9, v10, v11, v12, v13, v57);
              return -25;
            }

            lzma_end();
            *(a2 + 448) = 0;
            v56 = 1;
          }

          v65 = *(a2 + 320);
          v63 = *(a2 + 344);
          break;
        case 197633:
          if (!*(a2 + 19976) || (*(a2 + 660) & 0x80000000) != 0 || !v61)
          {
            goto LABEL_35;
          }

          *(a2 + 19912) = a5;
          *(a2 + 19920) = v64;
          *(a2 + 19936) = 0;
          *(a2 + 19944) = v68;
          *(a2 + 19952) = v61;
          if (!*(a2 + 660))
          {
            *(a2 + 19896) = a1;
            *(a2 + 19904) = ppmd_read;
            *(a2 + 19888) = a2 + 19896;
            if (!off_1F3DE4D90(a2 + 19848))
            {
              *(a2 + 660) = -1;
              archive_set_error(a1, -1, "Failed to initialize PPMd range decoder", v29, v30, v31, v32, v33, v42);
              return -25;
            }

            if (*(a2 + 19968))
            {
              *(a2 + 660) = -1;
              return -25;
            }

            *(a2 + 660) = 1;
          }

          if (v64)
          {
            v52 = 0;
          }

          else
          {
            v52 = *(a2 + 264);
          }

          do
          {
            v51 = off_1F3DE4DA0(a2 + 664, a2 + 19848);
            if (v51 < 0)
            {
              *(a2 + 660) = -1;
              archive_set_error(a1, 79, "Failed to decode PPMd", v34, v35, v36, v37, v38, v42);
              return -25;
            }

            if (*(a2 + 19968))
            {
              *(a2 + 660) = -1;
              return -25;
            }

            v39 = *(a2 + 19944);
            *(a2 + 19944) = v39 + 1;
            *v39 = v51;
            --*(a2 + 19952);
            ++*(a2 + 19960);
            if (v52)
            {
              --v52;
            }

            v44 = 0;
            if (*(a2 + 19952))
            {
              v43 = 1;
              if (!*(a2 + 19920))
              {
                v43 = v52 != 0;
              }

              v44 = v43;
            }
          }

          while (v44);
          v65 = *(a2 + 19920);
          v63 = *(a2 + 19952);
          break;
        case 262408:
          *(a2 + 544) = a5;
          *(a2 + 552) = v64;
          *(a2 + 568) = v68;
          *(a2 + 576) = v61;
          v58 = inflate((a2 + 544), 0);
          if (v58)
          {
            if (v58 != 1)
            {
              archive_set_error(a1, -1, "File decompression failed (%d)", v24, v25, v26, v27, v28, v58);
              return -25;
            }

            v56 = 1;
          }

          v65 = *(a2 + 552);
          v63 = *(a2 + 576);
          break;
        case 262658:
          *(a2 + 456) = a5;
          *(a2 + 464) = v64;
          *(a2 + 480) = v68;
          *(a2 + 488) = v61;
          v45 = BZ2_bzDecompress((a2 + 456));
          if (v45)
          {
            if (v45 != 4)
            {
              archive_set_error(a1, -1, "bzip decompression failed", v14, v15, v16, v17, v18, v42);
              return -25;
            }

            if (BZ2_bzDecompressEnd((a2 + 456)))
            {
              archive_set_error(a1, -1, "Failed to clean up decompressor", v19, v20, v21, v22, v23, v42);
              return -25;
            }

            *(a2 + 536) = 0;
            v56 = 1;
          }

          v65 = *(a2 + 464);
          v63 = *(a2 + 488);
          break;
        default:
LABEL_35:
          archive_set_error(a1, -1, "Decompression internal error", a4, a5, a6, a7, a8, v42);
          return -25;
      }
    }

    else
    {
      if (v64 > v61)
      {
        v46 = v61;
      }

      else
      {
        v46 = v64;
      }

      __memcpy_chk();
      v65 = v64 - v46;
      v63 = v61 - v46;
      if (!v67)
      {
        v56 = 1;
      }
    }

    *a6 = v67 - v65;
    *a4 = v66 - v63;
    if (*(a2 + 296) != 33)
    {
      switch(*(a2 + 304))
      {
        case 0x3030103:
          v50 = x86_Convert(a2, a3, *a4);
          *(a2 + 19984) = *a4 - v50;
          if (*(a2 + 19984) && *(a2 + 19984) <= 4uLL && v67 && v56 != 1)
          {
            v40 = *(a2 + 19984);
            __memcpy_chk();
            *a4 = v50;
          }

          else
          {
            *(a2 + 19984) = 0;
          }

          break;
        case 0x3030501:
          *a4 = arm_Convert(a2, a3, *a4);
          break;
        case 0xALL:
          *a4 = arm64_Convert(a2, a3, *a4);
          break;
      }
    }

    if (*(a2 + 304) == 50528539)
    {
      *(a2 + 20112) = *(a2 + 20104) - v63;
      if (*(a2 + 20112) > *(a2 + 20016))
      {
        *(a2 + 20112) = *(a2 + 20016);
      }

      *(a2 + 20120) = *(a2 + 20112);
      v49 = Bcj2_Decode(a2, v60, v59);
      if (v49 < 0)
      {
        goto LABEL_20;
      }

      *(a2 + 20016) -= *(a2 + 20112) - *(a2 + 20120);
      *a4 = v66 - (v59 - v49);
    }

    return v56;
  }

  if (!*(a2 + 20120))
  {
LABEL_28:
    v68 = *(a2 + 20096);
    v61 = *(a2 + 20104);
    goto LABEL_29;
  }

  v53 = *(a2 + 20120);
  v54 = Bcj2_Decode(a2, v68, v61);
  if (v54 < 0)
  {
LABEL_20:
    archive_set_error(a1, -1, "BCJ2 conversion Failed", a4, a5, a6, a7, a8, v42);
    return -25;
  }

  *(a2 + 20016) -= v53 - *(a2 + 20120);
  v62 = v61 - v54;
  if (v67 && v62)
  {
    v60 = v68 + v54;
    v59 = v62;
    goto LABEL_28;
  }

  *a6 = 0;
  *a4 = v66 - v62;
  if (!v67 && *(a2 + 20120))
  {
    return 1;
  }

  return v56;
}

uint64_t Bcj2_Decode(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  i = 0;
  v31 = 0;
  v38 = *(a1 + 20120);
  v42 = *(v47 + 20096) + *(v47 + 20112) - v38;
  v37 = *(a1 + 20072);
  v41 = (*(v47 + 20024) + *(v47 + 20048) - v37);
  v36 = *(a1 + 20080);
  v40 = (*(v47 + 20032) + *(v47 + 20056) - v36);
  v35 = *(a1 + 20088);
  v39 = (*(a1 + 20040) + *(a1 + 20064) - v35);
  v34 = v39;
  v33 = &v39[v35];
  if (!*(a1 + 19980))
  {
    *(v47 + 20644) = 0;
    for (i = 0; i < 0x102uLL; ++i)
    {
      *(v47 + 20128 + 2 * i) = 1024;
    }

    *(v47 + 20652) = 0;
    *(v47 + 20648) = -1;
    for (j = 0; j < 5; ++j)
    {
      if (v34 == v33)
      {
        return -25;
      }

      v3 = *(v47 + 20652);
      v4 = v34++;
      *(v47 + 20652) = *v4 | (v3 << 8);
    }

    *(v47 + 19980) = 1;
  }

  for (i = 0; ; ++i)
  {
    v18 = 0;
    if (*(v47 + 19984))
    {
      v18 = v43 < v45;
    }

    if (!v18)
    {
      break;
    }

    v5 = *(v47 + 19992 + i);
    v6 = v43++;
    *(v46 + v6) = v5;
    --*(v47 + 19984);
  }

  if (v45)
  {
    while (1)
    {
      v29 = 0;
      v28 = 0;
      v27 = 0;
      v26 = 0;
      v25 = v38 - v44;
      if (v45 - v43 < v38 - v44)
      {
        v25 = v45 - v43;
      }

      if (*(v47 + 19980) == 1)
      {
        while (v25)
        {
          v24 = *(v42 + v44);
          v7 = v43++;
          *(v46 + v7) = v24;
          if ((v24 & 0xFE) == 0xE8 || *(v47 + 20644) == 15 && (v24 & 0xF0) == 0x80)
          {
            *(v47 + 19980) = 2;
            break;
          }

          ++v44;
          *(v47 + 20644) = v24;
          --v25;
        }
      }

      if (!v25 || v43 == v45)
      {
        break;
      }

      *(v47 + 19980) = 1;
      v8 = v44++;
      v29 = *(v42 + v8);
      if (v29 == 232)
      {
        v28 = (v47 + 20128 + 2 * *(v47 + 20644));
      }

      else if (v29 == 233)
      {
        v28 = (v47 + 20640);
      }

      else
      {
        v28 = (v47 + 20642);
      }

      v26 = *v28;
      v27 = (*(v47 + 20648) >> 11) * v26;
      if (*(v47 + 20652) >= v27)
      {
        v23 = 0;
        v22 = 0;
        *(v47 + 20648) -= v27;
        *(v47 + 20652) -= v27;
        *v28 = v26 - (v26 >> 5);
        if (*(v47 + 20648) < 0x1000000u)
        {
          if (v34 == v33)
          {
            return -25;
          }

          *(v47 + 20648) <<= 8;
          v11 = *(v47 + 20652);
          v12 = v34++;
          *(v47 + 20652) = *v12 | (v11 << 8);
        }

        if (v29 == 232)
        {
          v22 = v41;
          if (v37 < 4)
          {
            return -25;
          }

          ++v41;
          v37 -= 4;
        }

        else
        {
          v22 = v40;
          if (v36 < 4)
          {
            return -25;
          }

          ++v40;
          v36 -= 4;
        }

        v23 = _byteswap_ulong(*v22) - (*(v47 + 20656) + v43 + 4);
        v19 = v23;
        v20 = BYTE2(v23);
        v13 = HIBYTE(v23);
        *(v47 + 20644) = HIBYTE(v23);
        v21 = v13;
        for (i = 0; ; ++i)
        {
          v17 = 0;
          if (i < 4)
          {
            v17 = v43 < v45;
          }

          if (!v17)
          {
            break;
          }

          v14 = *(&v19 + i);
          v15 = v43++;
          *(v46 + v15) = v14;
        }

        if (i < 4)
        {
          *(v47 + 19984) = 4 - i;
          while (i < 4)
          {
            v31 = i - 4 + *(v47 + 19984);
            *(v47 + 19992 + v31) = *(&v19 + i++);
          }

          break;
        }
      }

      else
      {
        *(v47 + 20648) = v27;
        *v28 = v26 + ((2048 - v26) >> 5);
        if (*(v47 + 20648) < 0x1000000u)
        {
          if (v34 == v33)
          {
            return -25;
          }

          *(v47 + 20648) <<= 8;
          v9 = *(v47 + 20652);
          v10 = v34++;
          *(v47 + 20652) = *v10 | (v9 << 8);
        }

        *(v47 + 20644) = v29;
      }
    }

    *(v47 + 20120) -= v44;
    *(v47 + 20072) = v37;
    *(v47 + 20080) = v36;
    *(v47 + 20088) = v33 - v34;
    *(v47 + 20656) += v43;
    return v43;
  }

  else
  {
    *(v47 + 20656) += v43;
    return v43;
  }
}

uint64_t ppmd_read(_DWORD **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = *a1;
  v19 = **(v20 + 259);
  v18 = 0;
  if (*(v19 + 19920) > 0)
  {
    v13 = *(v19 + 19912);
    *(v19 + 19912) = v13 + 1;
    v18 = *v13;
    goto LABEL_6;
  }

  v17 = 0;
  v16 = __archive_read_ahead(v20, *(v19 + 19936) + 1, &v17, a4, a5, a6, a7, a8);
  if (v17 >= *(v19 + 19936) + 1)
  {
    ++*(v19 + 19912);
    v18 = *(v16 + *(v19 + 19936));
LABEL_6:
    --*(v19 + 19920);
    ++*(v19 + 19928);
    ++*(v19 + 19936);
    return v18;
  }

  archive_set_error(v20, 79, "Truncated 7z file data", v8, v9, v10, v11, v12, v15);
  *(v19 + 19968) = 1;
  return 0;
}

_BYTE *x86_Convert(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 5)
  {
    v15 = 0;
    v13 = *(a1 + 20000);
    v11 = *(a1 + 20008);
    v12 = *(a1 + 20012);
    while (1)
    {
      v10 = &v15[a2];
      v9 = a2 + a3 - 4;
      while (v10 < v9 && (*v10 & 0xFE) != 0xE8)
      {
        ++v10;
      }

      v16 = &v10[-a2];
      if (v10 >= v9)
      {
        *(a1 + 20000) = v13;
        *(a1 + 20008) = v11;
        *(a1 + 20012) += v16;
        return &v10[-a2];
      }

      v14 = v16 - v13;
      if (v14 <= 3)
      {
        v11 = (v11 << (v14 - 1)) & 7;
        if (!v11)
        {
          goto LABEL_17;
        }

        v8 = v10[4 - x86_Convert_kMaskToBitNumber[v11]];
        if (x86_Convert_kMaskToAllowedStatus[v11])
        {
          if (v8 && v8 != 255)
          {
            goto LABEL_17;
          }
        }

        v13 = &v10[-a2];
        v11 = (2 * v11) & 6 | 1;
        v15 = v16 + 1;
      }

      else
      {
        v11 = 0;
LABEL_17:
        v13 = &v10[-a2];
        if (v10[4] && v10[4] != 255)
        {
          v11 = (2 * v11) & 6 | 1;
          v15 = v16 + 1;
        }

        else
        {
          for (i = (v10[3] << 16) | (v10[4] << 24) | (v10[2] << 8) | v10[1]; ; i = v6 ^ ((1 << (32 - v4)) - 1))
          {
            v6 = i - (v12 + v16);
            if (!v11)
            {
              break;
            }

            v4 = 8 * x86_Convert_kMaskToBitNumber[v11];
            v5 = v6 >> (24 - v4);
            if (v5)
            {
              if (v5 != 255)
              {
                break;
              }
            }
          }

          v10[4] = ~((HIBYTE(v6) & 1) - 1);
          *(v10 + 1) = *(&v6 + 1);
          v10[1] = v6;
          v15 = v16 + 5;
        }
      }
    }
  }

  return 0;
}

uint64_t arm_Convert(uint64_t a1, uint64_t a2, unint64_t a3)
{
  for (i = 0; i + 4 <= a3; i += 4)
  {
    if (*(a2 + i + 3) == 235)
    {
      v4 = (4 * (*(a2 + i) | (*(a2 + i + 1) << 8) | (*(a2 + i + 2) << 16)) - (*(a1 + 20012) + i)) >> 2;
      *(a2 + i) = v4;
      *(a2 + i + 2) = BYTE2(v4);
    }
  }

  *(a1 + 20012) += i;
  return i;
}

uint64_t arm64_Convert(uint64_t a1, uint64_t a2, unint64_t a3)
{
  for (i = 0; i + 4 <= a3; i += 4)
  {
    v7 = *(a2 + i) | (*(a2 + i + 1) << 8) | (*(a2 + i + 2) << 16) | (*(a2 + i + 3) << 24);
    if (v7 >> 26 == 37)
    {
      v4 = v7 - ((*(a1 + 20012) + i) >> 2);
      v8 = v4 & 0x3FFFFFF | 0x94000000;
      *(a2 + i) = v4;
      *(a2 + i + 1) = BYTE1(v8);
      *(a2 + i + 2) = BYTE2(v8);
      *(a2 + i + 3) = HIBYTE(v8);
    }

    else if ((v7 & 0x9F000000) == 0x90000000)
    {
      v5 = (v7 >> 29) & 3 | (v7 >> 3) & 0x1FFFFC;
      if (((v5 + 0x20000) & 0x1C0000) == 0)
      {
        v6 = v5 - ((*(a1 + 20012) + i) >> 12);
        v9 = v7 & 0x9000001F | ((v6 & 3) << 29) | (8 * (v6 & 0x3FFFC)) | -(v6 & 0x20000) & 0xE00000;
        *(a2 + i) = v9;
        *(a2 + i + 2) = BYTE2(v9);
        *(a2 + i + 3) = HIBYTE(v9);
      }
    }
  }

  *(a1 + 20012) += i;
  return i;
}

uint64_t read_StreamsInfo(uint64_t a1, unint64_t *a2)
{
  v33 = **(a1 + 2072);
  __memset_chk();
  v32 = header_bytes(a1, 1uLL, v2, v3, v4, v5, v6, v7);
  if (v32)
  {
    if (*v32 == 6)
    {
      if ((read_PackInfo(a1, a2) & 0x80000000) != 0)
      {
        return -1;
      }

      if (!a2[5] || !a2[2])
      {
        return -1;
      }

      v29 = *a2;
      for (i = 0; i < a2[1]; ++i)
      {
        *(a2[5] + 8 * i) = v29;
        v29 += *(a2[2] + 8 * i);
        if (v29 > *(v33 + 128))
        {
          return -1;
        }
      }

      v32 = header_bytes(a1, 1uLL, v8, v9, v10, v11, v12, v13);
      if (!v32)
      {
        return -1;
      }
    }

    if (*v32 == 7)
    {
      if ((read_CodersInfo(a1, a2 + 6) & 0x80000000) != 0)
      {
        return -1;
      }

      v28 = 0;
      v27 = a2[7];
      for (j = 0; j < a2[6]; ++j)
      {
        *(v27 + 104 * j + 88) = v28;
        v28 += *(v27 + 104 * j + 32);
        if (v28 > a2[1])
        {
          return -1;
        }
      }

      v32 = header_bytes(a1, 1uLL, v14, v15, v16, v17, v18, v19);
      if (!v32)
      {
        return -1;
      }
    }

    if (*v32 == 8)
    {
      if ((read_SubStreamsInfo(a1, a2 + 9, a2[7], a2[6]) & 0x80000000) != 0)
      {
        return -1;
      }

      v32 = header_bytes(a1, 1uLL, v20, v21, v22, v23, v24, v25);
      if (!v32)
      {
        return -1;
      }
    }

    if (*v32)
    {
      return -1;
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

uint64_t read_PackInfo(uint64_t a1, void *a2)
{
  __memset_chk();
  if ((parse_7zip_uint64(a1, a2, v2, v3, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    return -1;
  }

  else if ((parse_7zip_uint64(a1, a2 + 1, v8, v9, v10, v11, v12, v13) & 0x80000000) != 0)
  {
    return -1;
  }

  else if (a2[1])
  {
    if (a2[1] <= 0x5F5E100uLL)
    {
      v34 = header_bytes(a1, 1uLL, v14, v15, v16, v17, v18, v19);
      if (v34)
      {
        if (*v34)
        {
          if (*v34 == 9)
          {
            a2[2] = malloc_type_calloc(a2[1], 8uLL, 0x100004000313F17uLL);
            a2[5] = malloc_type_calloc(a2[1], 8uLL, 0x100004000313F17uLL);
            if (a2[2] && a2[5])
            {
              for (i = 0; i < a2[1]; ++i)
              {
                if ((parse_7zip_uint64(a1, (a2[2] + 8 * i), v20, v21, v22, v23, v24, v25) & 0x80000000) != 0)
                {
                  return -1;
                }
              }

              v35 = header_bytes(a1, 1uLL, v20, v21, v22, v23, v24, v25);
              if (v35)
              {
                if (*v35)
                {
                  if (*v35 == 10)
                  {
                    if ((read_Digests(a1, a2 + 3, a2[1]) & 0x80000000) != 0)
                    {
                      return -1;
                    }

                    else
                    {
                      v36 = header_bytes(a1, 1uLL, v26, v27, v28, v29, v30, v31);
                      if (v36)
                      {
                        if (*v36)
                        {
                          return -1;
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
                  }

                  else
                  {
                    return -1;
                  }
                }

                else
                {
                  a2[3] = malloc_type_calloc(a2[1], 1uLL, 0x100004077774924uLL);
                  a2[4] = malloc_type_calloc(a2[1], 4uLL, 0x100004052888210uLL);
                  if (a2[3] && a2[4])
                  {
                    return 0;
                  }

                  else
                  {
                    return -1;
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

  else
  {
    return -1;
  }
}

uint64_t read_CodersInfo(_DWORD *a1, size_t *a2)
{
  v50 = a1;
  v49 = a2;
  __memset_chk();
  v46 = 0;
  v47 = 0;
  v48 = header_bytes(v50, 1uLL, v2, v3, v4, v5, v6, v7);
  if (!v48 || *v48 != 11 || (parse_7zip_uint64(v50, v49, v8, v9, v10, v11, v12, v13) & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

  if (*v49 <= 0x5F5E100)
  {
    v48 = header_bytes(v50, 1uLL, v14, v15, v16, v17, v18, v19);
    if (v48)
    {
      if (*v48)
      {
        if (*v48 != 1)
        {
          goto LABEL_22;
        }

        if ((parse_7zip_uint64(v50, v49 + 2, v20, v21, v22, v23, v24, v25) & 0x80000000) != 0)
        {
          return -1;
        }

        if (v49[2] > 0x5F5E100)
        {
          return -1;
        }

        if (*v49)
        {
LABEL_22:
          archive_set_error(v50, -1, "Malformed 7-Zip archive", v21, v22, v23, v24, v25, v40);
          goto LABEL_44;
        }
      }

      else
      {
        v49[1] = malloc_type_calloc(*v49, 0x68uLL, 0x103004078E7D124uLL);
        if (!v49[1])
        {
          return -1;
        }

        for (i = 0; i < *v49; ++i)
        {
          if ((read_Folder(v50, (v49[1] + 104 * i)) & 0x80000000) != 0)
          {
            goto LABEL_44;
          }
        }
      }

      v48 = header_bytes(v50, 1uLL, v26, v21, v22, v23, v24, v25);
      if (v48 && *v48 == 12)
      {
        for (j = 0; j < *v49; ++j)
        {
          v42 = v49[1] + 104 * j;
          *(v42 + 64) = malloc_type_calloc(*(v42 + 56), 8uLL, 0x100004000313F17uLL);
          if (!*(v42 + 64))
          {
            goto LABEL_44;
          }

          for (k = 0; k < *(v42 + 56); ++k)
          {
            if ((parse_7zip_uint64(v50, (*(v42 + 64) + 8 * k), v27, v28, v29, v30, v31, v32) & 0x80000000) != 0)
            {
              goto LABEL_44;
            }
          }
        }

        v48 = header_bytes(v50, 1uLL, v27, v28, v29, v30, v31, v32);
        if (v48)
        {
          if (!*v48)
          {
            return 0;
          }

          if (*v48 == 10 && (read_Digests(v50, &v46, *v49) & 0x80000000) == 0)
          {
            for (m = 0; m < *v49; ++m)
            {
              *(v49[1] + 104 * m + 72) = v46[m];
              *(v49[1] + 104 * m + 76) = *(v47 + 4 * m);
            }

            v48 = header_bytes(v50, 1uLL, v33, v34, v35, v36, v37, v38);
            if (v48)
            {
              if (!*v48)
              {
                free_Digest(&v46);
                return 0;
              }
            }
          }
        }
      }
    }

LABEL_44:
    free_Digest(&v46);
    return -1;
  }

  return -1;
}

uint64_t read_SubStreamsInfo(uint64_t a1, size_t *a2, uint64_t a3, size_t a4)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = a4;
  v43 = 0;
  v42 = 0;
  count = 0;
  v40 = 0;
  v38 = 0;
  __memset_chk();
  for (i = 0; i < v44; ++i)
  {
    *(v45 + 104 * i + 80) = 1;
  }

  v43 = header_bytes(v47, 1uLL, v4, v5, v6, v7, v8, v9);
  if (v43)
  {
    v40 = *v43;
    if (v40 == 13)
    {
      count = 0;
      for (i = 0; i < v44; ++i)
      {
        if ((parse_7zip_uint64(v47, (v45 + 104 * i + 80), v10, v11, v12, v13, v14, v15) & 0x80000000) != 0)
        {
          return -1;
        }

        if (*(v45 + 104 * i + 80) > 0x5F5E100uLL)
        {
          return -1;
        }

        if (count > 0xFFFFFFFFFA0A1EFFLL)
        {
          return -1;
        }

        count += *(v45 + 104 * i + 80);
      }

      v43 = header_bytes(v47, 1uLL, v10, v11, v12, v13, v14, v15);
      if (!v43)
      {
        return -1;
      }

      v40 = *v43;
    }

    else
    {
      count = v44;
    }

    *v46 = count;
    if (!count || (v46[1] = malloc_type_calloc(count, 8uLL, 0x100004000313F17uLL), v46[2] = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL), v46[3] = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL), v46[1]) && v46[2] && v46[3])
    {
      v42 = v46[1];
      for (i = 0; i < v44; ++i)
      {
        j = 0;
        v36 = 0;
        if (*(v45 + 104 * i + 80))
        {
          v36 = 0;
          if (v40 == 9)
          {
            for (j = 1; j < *(v45 + 104 * i + 80); ++j)
            {
              if ((parse_7zip_uint64(v47, v42, v10, v11, v12, v13, v14, v15) & 0x80000000) != 0)
              {
                return -1;
              }

              v16 = v42++;
              v36 += *v16;
            }
          }

          v17 = folder_uncompressed_size((v45 + 104 * i));
          v18 = v42++;
          *v18 = v17 - v36;
        }
      }

      if (v40 == 9)
      {
        v43 = header_bytes(v47, 1uLL, v10, v11, v12, v13, v14, v15);
        if (!v43)
        {
          return -1;
        }

        v40 = *v43;
      }

      for (i = 0; i < count; ++i)
      {
        *(v46[2] + i) = 0;
        *(v46[3] + 4 * i) = 0;
      }

      v38 = 0;
      for (i = 0; i < v44; ++i)
      {
        if (*(v45 + 104 * i + 80) != 1 || !*(v45 + 104 * i + 72))
        {
          v38 += *(v45 + 104 * i + 80);
        }
      }

      if (v40 == 10)
      {
        v34 = 0;
        v35 = 0;
        v33 = v46[2];
        v32 = v46[3];
        v31 = 0;
        v34 = 0;
        v35 = 0;
        if ((read_Digests(v47, &v34, v38) & 0x80000000) != 0)
        {
          free_Digest(&v34);
          return -1;
        }

        for (i = 0; i < v44; ++i)
        {
          if (*(v45 + 104 * i + 80) == 1 && *(v45 + 104 * i + 72))
          {
            v19 = v33++;
            *v19 = 1;
            v20 = v32++;
            *v20 = *(v45 + 104 * i + 76);
          }

          else
          {
            for (k = 0; k < *(v45 + 104 * i + 80); ++k)
            {
              v21 = v33++;
              *v21 = v34[v31];
              v22 = v32++;
              *v22 = *(v35 + 4 * v31++);
            }
          }
        }

        free_Digest(&v34);
        v43 = header_bytes(v47, 1uLL, v23, v24, v25, v26, v27, v28);
        if (!v43)
        {
          return -1;
        }

        v40 = *v43;
      }

      if (v40)
      {
        return -1;
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

uint64_t parse_7zip_uint64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = header_bytes(a1, 1uLL, a3, a4, a5, a6, a7, a8);
  if (v18)
  {
    v17 = *v18;
    v16 = 0x80;
    *a2 = 0;
    for (i = 0; i < 8; ++i)
    {
      if ((v17 & v16) == 0)
      {
        *a2 += (v17 & (v16 - 1)) << (8 * i);
        break;
      }

      v19 = header_bytes(a1, 1uLL, v8, v9, v10, v11, v12, v13);
      if (!v19)
      {
        return -1;
      }

      *a2 |= *v19 << (8 * i);
      v16 = v16 >> 1;
    }

    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t read_Digests(uint64_t a1, uint64_t *a2, size_t a3)
{
  if (a3)
  {
    __memset_chk();
    *a2 = malloc_type_malloc(a3, 0x1612F874uLL);
    if (*a2)
    {
      v23 = header_bytes(a1, 1uLL, v3, v4, v5, v6, v7, v8);
      if (v23)
      {
        if (*v23)
        {
          v14 = *a2;
          __memset_chk();
        }

        else if ((read_Bools(a1, *a2, a3, v9, v10, v11, v12, v13) & 0x80000000) != 0)
        {
          return -1;
        }

        a2[1] = malloc_type_calloc(a3, 4uLL, 0x100004052888210uLL);
        if (a2[1])
        {
          for (i = 0; i < a3; ++i)
          {
            if (*(*a2 + i))
            {
              v24 = header_bytes(a1, 4uLL, v15, v16, v17, v18, v19, v20);
              if (!v24)
              {
                return -1;
              }

              *(a2[1] + 4 * i) = archive_le32dec_0(v24);
            }
          }

          return 0;
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

  else
  {
    return -1;
  }
}

uint64_t read_Bools(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v9 = 0;
  for (i = 0; i < a3; ++i)
  {
    if (!v10)
    {
      v12 = header_bytes(a1, 1uLL, a3, a4, a5, a6, a7, a8);
      if (!v12)
      {
        return -1;
      }

      v9 = *v12;
      v10 = 128;
    }

    *(a2 + i) = (v9 & v10) != 0;
    v10 >>= 1;
  }

  return 0;
}

uint64_t read_Folder(uint64_t a1, size_t *a2)
{
  v60 = **(a1 + 2072);
  v57 = 0;
  v56 = 0;
  __memset_chk();
  if ((parse_7zip_uint64(a1, a2, v2, v3, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    return -1;
  }

  else if (*a2 > 4)
  {
    return -1;
  }

  else
  {
    v8 = malloc_type_calloc(*a2, 0x28uLL, 0x10100403A7DB3B5uLL);
    a2[1] = v8;
    if (a2[1])
    {
      for (i = 0; i < *a2; ++i)
      {
        v58 = header_bytes(a1, 1uLL, v9, v10, v11, v12, v13, v14);
        if (!v58)
        {
          return -1;
        }

        v51 = *v58 & 0xF;
        v50 = (*v58 & 0x10) == 0;
        v49 = *v58 & 0x20;
        if ((*v58 & 0x80) != 0)
        {
          return -1;
        }

        v59 = header_bytes(a1, v51, v15, v16, v17, v18, v19, v20);
        if (!v59)
        {
          return -1;
        }

        *(a2[1] + 40 * i) = decode_codec_id(v59, v51);
        if (v50)
        {
          *(a2[1] + 40 * i + 8) = 1;
          *(a2[1] + 40 * i + 16) = 1;
        }

        else
        {
          if ((parse_7zip_uint64(a1, (a2[1] + 40 * i + 8), v9, v10, v11, v12, v13, v14) & 0x80000000) != 0)
          {
            return -1;
          }

          if (*(a2[1] + 40 * i + 8) > 0x5F5E100uLL)
          {
            return -1;
          }

          if ((parse_7zip_uint64(a1, (a2[1] + 40 * i + 16), v21, v22, v23, v24, v25, v26) & 0x80000000) != 0)
          {
            return -1;
          }

          if (*(a2[1] + 40 * i + 16) > 0x5F5E100uLL)
          {
            return -1;
          }
        }

        if (v49)
        {
          if ((parse_7zip_uint64(a1, (a2[1] + 40 * i + 24), v9, v10, v11, v12, v13, v14) & 0x80000000) != 0)
          {
            return -1;
          }

          if (*(a2[1] + 40 * i + 24) > 0x5F5E100uLL)
          {
            return -1;
          }

          if (!header_bytes(a1, *(a2[1] + 40 * i + 24), v27, v28, v29, v30, v31, v32))
          {
            return -1;
          }

          *(a2[1] + 40 * i + 32) = malloc_type_malloc(*(a2[1] + 40 * i + 24), 0x21BCE65uLL);
          if (!*(a2[1] + 40 * i + 32))
          {
            return -1;
          }

          v33 = *(a2[1] + 40 * i + 32);
          v34 = *(a2[1] + 40 * i + 24);
          __memcpy_chk();
        }

        v57 += *(a2[1] + 40 * i + 8);
        v56 += *(a2[1] + 40 * i + 16);
      }

      if (v56 && v57 >= v56 - 1)
      {
        a2[2] = v56 - 1;
        if (*(v60 + 112) >= a2[2])
        {
          if (a2[2])
          {
            a2[3] = malloc_type_calloc(a2[2], 0x10uLL, 0x1000040451B5BE8uLL);
            if (!a2[3])
            {
              return -1;
            }
          }

          else
          {
            a2[3] = 0;
          }

          for (j = 0; j < a2[2]; ++j)
          {
            if ((parse_7zip_uint64(a1, (a2[3] + 16 * j), v9, v10, v11, v12, v13, v14) & 0x80000000) != 0)
            {
              return -1;
            }

            if (*(a2[3] + 16 * j) > 0x5F5E100uLL)
            {
              return -1;
            }

            if ((parse_7zip_uint64(a1, (a2[3] + 16 * j + 8), v35, v36, v37, v38, v39, v40) & 0x80000000) != 0)
            {
              return -1;
            }

            if (*(a2[3] + 16 * j + 8) > 0x5F5E100uLL)
            {
              return -1;
            }
          }

          a2[4] = v57 - a2[2];
          a2[5] = malloc_type_calloc(a2[4], 8uLL, 0x100004000313F17uLL);
          if (a2[5])
          {
            if (a2[4] == 1)
            {
              for (k = 0; k < v57; ++k)
              {
                  ;
                }

                if (m == a2[2])
                {
                  break;
                }
              }

              if (k == v57)
              {
                return -1;
              }

              *a2[5] = k;
            }

            else
            {
              for (n = 0; n < a2[4]; ++n)
              {
                if ((parse_7zip_uint64(a1, (a2[5] + 8 * n), v41, v42, v43, v44, v45, v46) & 0x80000000) != 0)
                {
                  return -1;
                }

                if (*(a2[5] + 8 * n) > 0x5F5E100uLL)
                {
                  return -1;
                }
              }
            }

            a2[6] = v57;
            a2[7] = v56;
            return 0;
          }

          return -1;
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
}

uint64_t decode_codec_id(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  for (i = 0; i < a2; ++i)
  {
    v3 = (v3 << 8) + *(a1 + i);
  }

  return v3;
}

uint64_t folder_uncompressed_size(void *a1)
{
  v4 = a1[7];
  v3 = a1[2];
  while ((--v4 & 0x80000000) == 0)
  {
      ;
    }

    if (i >= v3)
    {
      return *(a1[8] + 8 * v4);
    }
  }

  return 0;
}

uint64_t init_decompression(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = *MEMORY[0x1E69E9840];
  v54 = a1;
  v53 = a2;
  v52 = a3;
  v51 = a4;
  v50 = 0;
  *(a2 + 296) = *a3;
  *(v53 + 304) = -1;
  v41 = *(v53 + 296);
  if ((!v41 || v41 == 197633 || v41 == 262408 || v41 == 262658 || v41 == 83300609) && v51)
  {
    if (*v51 != 50528515 && *v51 != 50528539 && *v51 != 50529537 && *v51 != 10)
    {
      v38 = *v52;
      archive_set_error(v54, -1, "Unsupported filter %lx for %lx", a4, a5, a6, a7, a8, *v51);
      v55 = -25;
      goto LABEL_110;
    }

    *(v53 + 304) = *v51;
    *(v53 + 19980) = 0;
    if (*v51 == 50528515)
    {
      x86_Init(v53);
    }

    else if (*v51 == 50529537)
    {
      arm_Init(v53);
    }
  }

  v40 = *(v53 + 296);
  switch(v40)
  {
    case 0:
LABEL_109:
      v55 = 0;
      goto LABEL_110;
    case 3:
    case 10:
      goto LABEL_105;
    case 33:
    case 196865:
      memset(__b, 0, 0x28uLL);
      v46 = 0;
      if (*(v53 + 448))
      {
        lzma_end();
        *(v53 + 448) = 0;
      }

      if (v51)
      {
        *(v53 + 304) = *v51;
        v57 = 0;
        v39 = *(v53 + 304);
        switch(v39)
        {
          case 3:
            if (*(v51 + 24) != 1)
            {
              archive_set_error(v54, -1, "Invalid Delta parameter", v8, v9, v10, v11, v12, v37);
              v55 = -25;
              goto LABEL_110;
            }

            v56 = 3;
            memset(__b, 0, 0x28uLL);
            __b[0] = 0;
            __b[1] = **(v51 + 32) + 1;
            v57 = __b;
            v46 = 1;
            break;
          case 10:
            v56 = 10;
            v46 = 1;
            break;
          case 50528515:
            if (*(v53 + 296) == 33)
            {
              v56 = 4;
              v46 = 1;
            }

            else
            {
              x86_Init(v53);
            }

            break;
          case 50528539:
            *(v53 + 19980) = 0;
            break;
          case 50528773:
            v56 = 5;
            v46 = 1;
            break;
          case 50529281:
            v56 = 6;
            v46 = 1;
            break;
          case 50529537:
            v56 = 7;
            v46 = 1;
            break;
          case 50530049:
            v56 = 8;
            v46 = 1;
            break;
          case 50530309:
            v56 = 9;
            v46 = 1;
            break;
          default:
            archive_set_error(v54, -1, "Unexpected codec ID: %lX", v8, v9, v10, v11, v12, *(v53 + 304));
            v55 = -25;
            goto LABEL_110;
        }
      }

      if (*(v53 + 296) == 33)
      {
        *(&v56 + 2 * v46) = 33;
      }

      else
      {
        *(&v56 + 2 * v46) = 0x4000000000000001;
      }

      *(&v56 + 2 * v46 + 1) = 0;
      v48 = &v56 + 2 * v46;
      v13 = v52[4];
      v14 = v52[3];
      v50 = lzma_properties_decode();
      if (v50 || (v47 = v46 + 1, *(&v56 + 2 * v47) = -1, *(&v56 + 2 * v47 + 1) = 0, v50 = lzma_raw_decoder(), free(v48[1]), v50))
      {
        set_error(v54, v50, v15, v16, v17, v18, v19, v20);
        v55 = -25;
        goto LABEL_110;
      }

      *(v53 + 448) = 1;
      *(v53 + 328) = 0;
      *(v53 + 352) = 0;
      goto LABEL_109;
    case 197633:
      if (*(v53 + 19976))
      {
        off_1F3DE4D70(v53 + 664);
        *(v53 + 19976) = 0;
      }

      if (v52[3] < 5 || (v43 = *v52[4], v42 = archive_le32dec_0((v52[4] + 1)), v43 < 2) || v43 > 0x40 || v42 < 0x800 || v42 > 0xFFFFFFDB)
      {
        archive_set_error(v54, -1, "Malformed PPMd parameter", a4, a5, a6, a7, a8, v37);
        v55 = -25;
        goto LABEL_110;
      }

      __archive_ppmd7_functions(v53 + 664);
      v50 = (off_1F3DE4D68[0])(v53 + 664, v42);
      if (!v50)
      {
        archive_set_error(v54, 12, "Coludn't allocate memory for PPMd", v31, v32, v33, v34, v35, v37);
        v55 = -30;
        goto LABEL_110;
      }

      off_1F3DE4D78(v53 + 664, v43);
      (off_1F3DE4D80[0])((v53 + 19848));
      *(v53 + 19976) = 1;
      *(v53 + 660) = 0;
      *(v53 + 19968) = 0;
      *(v53 + 19928) = 0;
      *(v53 + 19960) = 0;
      goto LABEL_109;
    case 262408:
      if (*(v53 + 656))
      {
        v50 = inflateReset((v53 + 544));
      }

      else
      {
        v50 = inflateInit2_((v53 + 544), -15, "1.2.12", 112);
      }

      if (v50)
      {
        archive_set_error(v54, -1, "Couldn't initialize zlib stream.", v26, v27, v28, v29, v30, v37);
        v55 = -25;
        goto LABEL_110;
      }

      *(v53 + 656) = 1;
      *(v53 + 560) = 0;
      *(v53 + 584) = 0;
      goto LABEL_109;
  }

  if (v40 != 262658)
  {
    if (v40 != 50528515 && v40 != 50528539 && v40 != 50528773 && v40 != 50529281 && v40 != 50529537 && v40 != 50530049 && v40 != 50530309)
    {
      if (v40 == 83300609)
      {
        archive_set_error(v54, -1, "ZSTD codec is unsupported", a4, a5, a6, a7, a8, v37);
        v55 = -25;
      }

      else if (v40 == 116457729 || v40 == 116458243 || v40 == 116459265)
      {
        if (*(v54 + 18))
        {
          archive_entry_set_is_metadata_encrypted(*(v54 + 18), 1);
          archive_entry_set_is_data_encrypted(*(v54 + 18), 1);
          *(v53 + 20736) = 1;
        }

        archive_set_error(v54, -1, "Crypto codec not supported yet (ID: 0x%lX)", a4, a5, a6, a7, a8, *(v53 + 296));
        v55 = -25;
      }

      else
      {
        archive_set_error(v54, -1, "Unknown codec ID: %lX", a4, a5, a6, a7, a8, *(v53 + 296));
        v55 = -25;
      }

      goto LABEL_110;
    }

LABEL_105:
    archive_set_error(v54, -1, "Unexpected codec ID: %lX", a4, a5, a6, a7, a8, *(v53 + 296));
    v55 = -25;
    goto LABEL_110;
  }

  if (*(v53 + 536))
  {
    BZ2_bzDecompressEnd((v53 + 456));
    *(v53 + 536) = 0;
  }

  v50 = BZ2_bzDecompressInit((v53 + 456), 0, 0);
  if (v50 == -3)
  {
    v50 = BZ2_bzDecompressInit((v53 + 456), 0, 1);
  }

  if (!v50)
  {
    *(v53 + 536) = 1;
    *(v53 + 468) = 0;
    *(v53 + 472) = 0;
    *(v53 + 492) = 0;
    *(v53 + 496) = 0;
    goto LABEL_109;
  }

  v45 = -1;
  v44 = 0;
  switch(v50)
  {
    case 0xFFFFFFF7:
      v44 = "mis-compiled library";
      break;
    case 0xFFFFFFFD:
      v45 = 12;
      v44 = "out of memory";
      break;
    case 0xFFFFFFFE:
      v44 = "invalid setup parameter";
      break;
  }

  if (v44)
  {
    archive_set_error(v54, v45, "Internal error initializing decompressor: %s", v21, v22, v23, v24, v25, v44);
  }

  else
  {
    archive_set_error(v54, v45, "Internal error initializing decompressor: %s", v21, v22, v23, v24, v25, "??");
  }

  *(v53 + 536) = 0;
  v55 = -25;
LABEL_110:
  *MEMORY[0x1E69E9840];
  return v55;
}

uint64_t x86_Init(uint64_t result)
{
  *(result + 19980) = 0;
  *(result + 20000) = -1;
  *(result + 20008) = 0;
  *(result + 20012) = 5;
  return result;
}

_DWORD *set_error(_DWORD *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v8) = a2;
  LODWORD(v8) = a2;
  if (a2 > 1)
  {
    switch(a2)
    {
      case 5u:
        return archive_set_error(result, 12, "Lzma library error: Cannot allocate memory", a4, a5, a6, a7, a8, v8);
      case 6u:
        return archive_set_error(result, 12, "Lzma library error: Out of memory", a4, a5, a6, a7, a8, v8);
      case 7u:
        return archive_set_error(result, -1, "Lzma library error: format not recognized", a4, a5, a6, a7, a8, v8);
      case 8u:
        return archive_set_error(result, -1, "Lzma library error: Invalid options", a4, a5, a6, a7, a8, v8);
      case 9u:
        return archive_set_error(result, -1, "Lzma library error: Corrupted input data", a4, a5, a6, a7, a8, v8);
      case 0xAu:
        return archive_set_error(result, -1, "Lzma library error:  No progress is possible", a4, a5, a6, a7, a8, v8);
      default:
        return archive_set_error(result, -1, "Lzma decompression failed:  Unknown error", a4, a5, a6, a7, a8, v8);
    }
  }

  return result;
}

void free_Folder(uint64_t a1)
{
  if (*(a1 + 8))
  {
    for (i = 0; i < *a1; ++i)
    {
      free(*(*(a1 + 8) + 40 * i + 32));
    }

    free(*(a1 + 8));
  }

  free(*(a1 + 24));
  free(*(a1 + 40));
  free(*(a1 + 64));
}

uint64_t read_Times(uint64_t a1, void *a2, int a3)
{
  v37 = **(a1 + 2072);
  v33 = *(v37 + 160);
  v32 = malloc_type_calloc(*(v37 + 152), 1uLL, 0x100004077774924uLL);
  if (!v32)
  {
    return -1;
  }

  v34 = header_bytes(a1, 1uLL, v3, v4, v5, v6, v7, v8);
  if (!v34)
  {
    goto LABEL_24;
  }

  if (!*v34)
  {
    if ((read_Bools(a1, v32, *(v37 + 152), v9, v10, v11, v12, v13) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_24:
    free(v32);
    return -1;
  }

  v14 = *(v37 + 152);
  __memset_chk();
LABEL_7:
  v35 = header_bytes(a1, 1uLL, v15, v16, v17, v18, v19, v20);
  if (!v35 || *v35 && ((parse_7zip_uint64(a1, a2, v21, v22, v23, v24, v25, v26) & 0x80000000) != 0 || *a2 > 0x5F5E100uLL))
  {
    goto LABEL_24;
  }

  for (i = 0; i < *(v37 + 152); ++i)
  {
    if (*(v32 + i))
    {
      v36 = header_bytes(a1, 8uLL, v21, v22, v23, v24, v25, v26);
      if (!v36)
      {
        goto LABEL_24;
      }

      switch(a3)
      {
        case 18:
          v27 = archive_le64dec(v36);
          fileTimeToUtc(v27, (v33 + 88 * i + 48), (v33 + 88 * i + 72));
          *(v33 + 88 * i + 24) |= 4u;
          break;
        case 19:
          v28 = archive_le64dec(v36);
          fileTimeToUtc(v28, (v33 + 88 * i + 40), (v33 + 88 * i + 64));
          *(v33 + 88 * i + 24) |= 2u;
          break;
        case 20:
          v29 = archive_le64dec(v36);
          fileTimeToUtc(v29, (v33 + 88 * i + 32), (v33 + 88 * i + 56));
          *(v33 + 88 * i + 24) |= 1u;
          break;
      }
    }
  }

  free(v32);
  return 0;
}

unint64_t fileTimeToUtc(unint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0x19DB1DED53E8000)
  {
    *a2 = 0;
    *a3 = 0;
  }

  else
  {
    *a2 = (result - 116444736000000000) / 0x989680;
    *a3 = 100 * ((result - 116444736000000000) % 0x989680);
  }

  return result;
}

uint64_t skip_stream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1;
  v16 = a2;
  v15 = **(a1 + 2072);
  v14 = 0;
  v12 = a2;
  if (*(v15 + 256))
  {
    while (v12)
    {
      v13 = read_stream(v17, &v14, v12, 0, a5, a6, a7, a8);
      if (v13 < 0)
      {
        return v13;
      }

      if (!v13)
      {
        archive_set_error(v17, 79, "Truncated 7-Zip file body", v9, a5, a6, a7, a8, v11);
        return -30;
      }

      v12 -= v13;
      if (*(v15 + 288))
      {
        read_consume(v17);
      }
    }

    return v16;
  }

  else
  {
    v8 = *(v15 + 56) + 104 * *(*(v15 + 168) + 16);
    *(v8 + 96) += v16;
    return v16;
  }
}

uint64_t archive_read_disk_gname(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_gname"))
  {
    return 0;
  }

  if (*(a1 + 200))
  {
    return (*(a1 + 200))(*(a1 + 216), a2);
  }

  return 0;
}

uint64_t archive_read_disk_uname(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_uname"))
  {
    return 0;
  }

  if (*(a1 + 224))
  {
    return (*(a1 + 224))(*(a1 + 240), a2);
  }

  return 0;
}

uint64_t archive_read_disk_set_gname_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_gname_lookup") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 208) && *(a1 + 216))
    {
      (*(a1 + 208))(*(a1 + 216));
    }

    *(a1 + 200) = a3;
    *(a1 + 208) = a4;
    *(a1 + 216) = a2;
    return 0;
  }
}

uint64_t archive_read_disk_set_uname_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_uname_lookup") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 232) && *(a1 + 240))
    {
      (*(a1 + 232))(*(a1 + 240));
    }

    *(a1 + 224) = a3;
    *(a1 + 232) = a4;
    *(a1 + 240) = a2;
    return 0;
  }
}

_DWORD *archive_read_disk_new()
{
  v1 = malloc_type_calloc(1uLL, 0x120uLL, 0x10F00405526A199uLL);
  if (!v1)
  {
    return 0;
  }

  *v1 = 195932357;
  v1[1] = 1;
  *(v1 + 1) = archive_read_disk_vtable;
  *(v1 + 18) = archive_entry_new2(v1);
  *(v1 + 28) = trivial_lookup_uname;
  *(v1 + 25) = trivial_lookup_gname;
  v1[48] = 4;
  *(v1 + 21) = open_on_current_dir;
  *(v1 + 22) = tree_current_dir_fd;
  *(v1 + 23) = tree_enter_working_dir;
  return v1;
}

uint64_t tree_enter_working_dir(_DWORD *a1)
{
  v2 = 0;
  if (a1[22] > 0 && (a1[8] & 0x40) == 0)
  {
    v2 = fchdir(a1[26]);
    if (!v2)
    {
      a1[8] &= ~0x100u;
      a1[8] |= 0x40u;
    }
  }

  return v2;
}

uint64_t archive_read_disk_set_symlink_logical(int *a1)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_symlink_logical") == -30)
  {
    return -30;
  }

  else
  {
    setup_symlink_mode(a1, 76, 1);
    return 0;
  }
}

uint64_t setup_symlink_mode(uint64_t result, char a2, char a3)
{
  *(result + 152) = a2;
  *(result + 153) = a3;
  if (*(result + 160))
  {
    *(*(result + 160) + 480) = *(result + 152);
    *(*(result + 160) + 481) = *(result + 152);
  }

  return result;
}

uint64_t archive_read_disk_set_symlink_physical(int *a1)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_symlink_physical") == -30)
  {
    return -30;
  }

  else
  {
    setup_symlink_mode(a1, 80, 0);
    return 0;
  }
}

uint64_t archive_read_disk_set_symlink_hybrid(int *a1)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_symlink_hybrid") == -30)
  {
    return -30;
  }

  else
  {
    setup_symlink_mode(a1, 72, 1);
    return 0;
  }
}

uint64_t archive_read_disk_set_atime_restored(uint64_t a1)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_restore_atime") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 192) |= 1u;
    if (*(a1 + 160))
    {
      *(*(a1 + 160) + 32) |= 0x80u;
    }

    return 0;
  }
}

uint64_t archive_read_disk_set_behavior(uint64_t a1, int a2)
{
  v3 = 0;
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_honor_nodump") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 192) = a2;
    if (a2)
    {
      return archive_read_disk_set_atime_restored(a1);
    }

    if (*(a1 + 160))
    {
      *(*(a1 + 160) + 32) &= ~0x80u;
    }

    return v3;
  }
}

uint64_t archive_read_disk_set_matching(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_matching") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 264) = a2;
    *(a1 + 272) = a3;
    *(a1 + 280) = a4;
    return 0;
  }
}

uint64_t archive_read_disk_set_metadata_filter_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, 195932357, 0x7FFF, "archive_read_disk_set_metadata_filter_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 248) = a2;
    *(a1 + 256) = a3;
    return 0;
  }
}

uint64_t archive_read_disk_can_descend(uint64_t a1)
{
  v3 = *(a1 + 160);
  if (__archive_check_magic(a1, 195932357, 6, "archive_read_disk_can_descend") == -30)
  {
    return -30;
  }

  else
  {
    v2 = 0;
    if (*(v3 + 36) == 1)
    {
      return *(v3 + 400) != 0;
    }

    return v2;
  }
}

uint64_t archive_read_disk_descend(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (__archive_check_magic(a1, 195932357, 6, "archive_read_disk_descend") == -30)
  {
    return -30;
  }

  else if (archive_read_disk_can_descend(a1))
  {
    if (tree_current_is_physical_dir(v2))
    {
      tree_push(v2, *(v2 + 72), *(v2 + 508), *(v2 + 112), *(v2 + 120), v2 + 408);
      if (*(*(*v2 + 16) + 16))
      {
        *(*v2 + 72) |= 1u;
      }

      else
      {
        *(*v2 + 72) |= 2u;
      }
    }

    else if (tree_current_is_dir(v2))
    {
      tree_push(v2, *(v2 + 72), *(v2 + 508), *(v2 + 256), *(v2 + 264), v2 + 408);
      *(*v2 + 72) |= 2u;
    }

    *(v2 + 400) = 0;
    return 0;
  }

  else
  {
    return 0;
  }
}

BOOL tree_current_is_physical_dir(uint64_t a1)
{
  if ((*(a1 + 32) & 0x10) != 0)
  {
    v2 = tree_current_stat(a1);
    if (!v2)
    {
      return 0;
    }

    if ((*(v2 + 4) & 0xF000) != 0x4000)
    {
      return 0;
    }
  }

  v3 = tree_current_lstat(a1);
  return v3 && (*(v3 + 4) & 0xF000) == 0x4000;
}

uint64_t *tree_push(void *a1, const char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = malloc_type_calloc(1uLL, 0x88uLL, 0x10700402F4187EFuLL);
  if (!v9)
  {
    __archive_errx(1, "Out of memory");
  }

  v9[1] = *a1;
  v9[2] = a1[1];
  if (v9[2])
  {
    *v9 = *v9[2] + 1;
  }

  *a1 = v9;
  v9[3] = 0;
  v9[4] = 0;
  v9[5] = 0;
  *(v9 + 20) = -1;
  v9[4] = 0;
  v8 = v9 + 3;
  if (a2)
  {
    v7 = strlen(a2);
    result = archive_strncat(v8, a2, v7);
  }

  else
  {
    result = archive_strncat(v8, 0, 0);
  }

  *(v9 + 18) = 56;
  *(v9 + 19) = a3;
  v9[7] = a4;
  v9[8] = a5;
  v9[6] = a1[10];
  v9[11] = v9[3];
  if (a6)
  {
    v9[12] = *(a6 + 8);
    v9[13] = *(a6 + 16);
    v9[14] = *(a6 + 24);
    v9[15] = *(a6 + 32);
    *(v9 + 64) = *(a6 + 40);
    *(v9 + 33) = *(a6 + 44);
  }

  return result;
}

BOOL tree_current_is_dir(uint64_t a1)
{
  if ((*(a1 + 32) & 0x20) != 0)
  {
    v2 = tree_current_lstat(a1);
    if (!v2)
    {
      return 0;
    }

    if ((*(v2 + 4) & 0xF000) == 0x4000)
    {
      return 1;
    }

    if ((*(v2 + 4) & 0xF000) != 0xA000)
    {
      return 0;
    }
  }

  v3 = tree_current_stat(a1);
  return v3 && (*(v3 + 4) & 0xF000) == 0x4000;
}

uint64_t archive_read_disk_open(int *a1, const char *a2)
{
  if (__archive_check_magic(a1, 195932357, 33, "archive_read_disk_open") == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(a1);
    return _archive_read_disk_open(a1, a2);
  }
}

uint64_t _archive_read_disk_open(unint64_t a1, const char *a2)
{
  if (*(a1 + 160))
  {
    v2 = tree_reopen(*(a1 + 160), a2, *(a1 + 192) & 1);
  }

  else
  {
    v2 = tree_open(a2, *(a1 + 152), *(a1 + 192) & 1);
  }

  *(a1 + 160) = v2;
  if (*(a1 + 160))
  {
    *(a1 + 4) = 2;
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate tar data", v3, v4, v5, v6, v7, a1);
    *(v10 + 4) = 0x8000;
    return -30;
  }
}

uint64_t archive_read_disk_open_w(_DWORD *a1, __int32 *a2)
{
  v16 = a1;
  v15 = a2;
  v14 = a1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (__archive_check_magic(a1, 195932357, 33, "archive_read_disk_open_w") == -30)
  {
    return -30;
  }

  else
  {
    archive_clear_error(v14);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v2 = wcslen(v15);
    if (archive_string_append_from_wcs(&v11, v15, v2))
    {
      if (*__error() == 12)
      {
        archive_set_error(v14, 12, "Can't allocate memory", v3, v4, v5, v6, v7, v9);
      }

      else
      {
        archive_set_error(v14, -1, "Can't convert a path to a char string", v3, v4, v5, v6, v7, v9);
      }

      v14[1] = 0x8000;
      disk_open = -30;
    }

    else
    {
      disk_open = _archive_read_disk_open(v16, v11);
    }

    archive_string_free(&v11);
    return disk_open;
  }
}

uint64_t archive_read_disk_current_filesystem(uint64_t a1)
{
  if (__archive_check_magic(a1, 195932357, 4, "archive_read_disk_current_filesystem") == -30)
  {
    return -30;
  }

  else
  {
    return *(*(a1 + 160) + 508);
  }
}

uint64_t archive_read_disk_current_filesystem_is_synthetic(uint64_t a1)
{
  if (__archive_check_magic(a1, 195932357, 4, "archive_read_disk_current_filesystem") == -30)
  {
    return -30;
  }

  else
  {
    return *(*(*(a1 + 160) + 488) + 8);
  }
}

uint64_t archive_read_disk_current_filesystem_is_remote(uint64_t a1)
{
  if (__archive_check_magic(a1, 195932357, 4, "archive_read_disk_current_filesystem") == -30)
  {
    return -30;
  }

  else
  {
    return *(*(*(a1 + 160) + 488) + 12);
  }
}

void tree_close(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 520) & 0x80000000) == 0)
    {
      close_and_restore_time(*(a1 + 520), a1, a1 + 408);
      *(a1 + 520) = -1;
    }

    if (*(a1 + 16))
    {
      closedir(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    while (*a1)
    {
      if ((*(*a1 + 72) & 2) != 0)
      {
        close(*(*a1 + 80));
      }

      tree_pop(a1);
    }

    if ((*(a1 + 104) & 0x80000000) == 0)
    {
      close(*(a1 + 104));
      *(a1 + 104) = -1;
    }

    if ((*(a1 + 100) & 0x80000000) == 0)
    {
      close(*(a1 + 100));
      *(a1 + 100) = -1;
    }
  }
}

uint64_t close_and_restore_time(int a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 32) & 0x80) != 0 && !*(a3 + 44))
  {
    v8 = *(a3 + 8);
    v9 = *(a3 + 16) / 1000;
    v7.tv_sec = *(a3 + 24);
    v7.tv_usec = *(a3 + 32) / 1000;
    if (futimes(a1, &v7))
    {
      close(a1);
      if (lutimes(*a3, &v7))
      {
        v6 = -1;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = close(a1);
    }
  }

  else if (a1 < 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = close(a1);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

void tree_pop(void *a1)
{
  *(a1[6] + a1[10]) = 0;
  a1[7] = a1[10];
  if (*a1 == a1[1] && a1[1])
  {
    a1[1] = *(a1[1] + 16);
  }

  v1 = *a1;
  *a1 = *(*a1 + 8);
  a1[10] = v1[6];
    ;
  }

  archive_string_free((v1 + 3));
  free(v1);
}

void tree_free(uint64_t a1)
{
  if (a1)
  {
    archive_string_free(a1 + 48);
    free(*(a1 + 456));
    for (i = 0; i < *(a1 + 512); ++i)
    {
      free(*(*(a1 + 496) + 80 * i + 56));
    }

    free(*(a1 + 496));
    free(a1);
  }
}

uint64_t next_entry_0(int *a1, uint64_t a2, _DWORD *a3)
{
  v107 = a1;
  v106 = a2;
  v105 = a3;
  disk_uname = 0;
  is_physical_dir = 0;
  matched = 0;
  v101 = 0;
  v100 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v104 = 0;
  v103 = 0;
  *(a2 + 400) = 0;
  do
  {
    v92 = tree_next(v106);
    switch(v92)
    {
      case -2:
        v91 = v107;
        v90 = *(v106 + 40);
        v3 = tree_current_path(v106);
        archive_set_error(v91, v90, "%s: Unable to continue traversing directory tree", v4, v5, v6, v7, v8, v3);
        *(v107 + 1) = 0x8000;
        tree_enter_initial_dir(v106);
        return -30;
      case -1:
        v89 = v107;
        v88 = *(v106 + 40);
        v9 = tree_current_path(v106);
        archive_set_error(v89, v88, "%s: Couldn't visit directory", v10, v11, v12, v13, v14, v9);
        tree_enter_initial_dir(v106);
        return -25;
      case 0:
        tree_enter_initial_dir(v106);
        return 1;
      case 1:
        v103 = tree_current_lstat(v106);
        if (!v103)
        {
          if (*__error() != 2 || *(v106 + 88) <= 0)
          {
            v87 = v107;
            v86 = *__error();
            v29 = tree_current_path(v106);
            archive_set_error(v87, v86, "%s: Cannot stat", v30, v31, v32, v33, v34, v29);
            tree_enter_initial_dir(v106);
            return -25;
          }

          v101 = -20;
          v100 = *__error();
          if (v96)
          {
            v22 = tree_current_path(v106);
            archive_string_sprintf(&v95, " %s", v23, v24, v25, v26, v27, v28, v22);
          }

          else
          {
            v15 = tree_current_path(v106);
            archive_string_sprintf(&v95, "%s", v16, v17, v18, v19, v20, v21, v15);
          }
        }

        break;
    }
  }

  while (!v103);
  if ((v107[24] & 4) != 0)
  {
    v35 = tree_current_path(v106);
    v93 = strrchr(v35, 47);
    v94 = v93 ? v93 + 1 : tree_current_path(v106);
    if (*v94 == 46 && v94[1] == 95)
    {
      return -10;
    }
  }

  v85 = v105;
  v36 = tree_current_path(v106);
  archive_entry_copy_pathname(v85, v36);
  if (v107[33])
  {
    matched = archive_match_path_excluded(v107[33], v105);
    if ((matched & 0x80000000) != 0)
    {
      v84 = v107;
      v83 = *__error();
      v37 = archive_error_string(v107[33]);
      archive_set_error(v84, v83, "Failed : %s", v38, v39, v40, v41, v42, v37);
      return matched;
    }

    if (matched)
    {
      if (v107[34])
      {
        (v107[34])(v107, v107[35], v105);
      }

      return -10;
    }
  }

  v82 = *(v106 + 481);
  if (v82 == 72)
  {
    *(v106 + 481) = 80;
  }

  else if (v82 != 76)
  {
LABEL_38:
    is_physical_dir = tree_current_is_physical_dir(v106);
    *(v107 + 152) = 80;
    *(v107 + 153) = 0;
    v104 = v103;
    goto LABEL_39;
  }

  is_physical_dir = tree_current_is_dir(v106);
  *(v107 + 152) = 76;
  *(v107 + 153) = 1;
  v104 = tree_current_stat(v106);
  if (!v104 || tree_target_is_same_as_parent(v106, v104))
  {
    goto LABEL_38;
  }

LABEL_39:
  if (update_current_filesystem(v107, *v104))
  {
    *(v107 + 1) = 0x8000;
    tree_enter_initial_dir(v106);
    return -30;
  }

  else
  {
    if (*(v106 + 504) == -1)
    {
      *(v106 + 504) = *(v106 + 508);
    }

    if ((v107[24] & 8) != 0 && *(v106 + 504) != *(v106 + 508))
    {
      is_physical_dir = 0;
    }

    *(v106 + 400) = is_physical_dir;
    if (v107[24] & 2) != 0 && (v104[29])
    {
      return -10;
    }

    else
    {
      archive_entry_copy_stat(v105, v104);
      v43 = archive_entry_mtime(v105);
      *(v106 + 416) = v43;
      v44 = archive_entry_mtime_nsec(v105);
      *(v106 + 424) = v44;
      v45 = archive_entry_atime(v105);
      *(v106 + 432) = v45;
      v46 = archive_entry_atime_nsec(v105);
      *(v106 + 440) = v46;
      v47 = archive_entry_filetype(v105);
      *(v106 + 448) = v47;
      *(v106 + 452) = *(*(v106 + 488) + 16);
      if (!v107[33])
      {
        goto LABEL_56;
      }

      matched = archive_match_time_excluded(v107[33], v105);
      if ((matched & 0x80000000) != 0)
      {
        v81 = v107;
        v80 = *__error();
        v48 = archive_error_string(v107[33]);
        archive_set_error(v81, v80, "Failed : %s", v49, v50, v51, v52, v53, v48);
        return matched;
      }

      if (matched)
      {
        if (v107[34])
        {
          (v107[34])(v107, v107[35], v105);
        }

        return -10;
      }

      else
      {
LABEL_56:
        v79 = v107;
        v54 = archive_entry_uid(v105);
        disk_uname = archive_read_disk_uname(v79, v54);
        if (disk_uname)
        {
          archive_entry_copy_uname(v105, disk_uname);
        }

        v78 = v107;
        v55 = archive_entry_gid(v105);
        disk_uname = archive_read_disk_gname(v78, v55);
        if (disk_uname)
        {
          archive_entry_copy_gname(v105, disk_uname);
        }

        if (!v107[33])
        {
          goto LABEL_77;
        }

        matched = archive_match_owner_excluded(v107[33], v105);
        if ((matched & 0x80000000) != 0)
        {
          v77 = v107;
          v76 = *__error();
          v56 = archive_error_string(v107[33]);
          archive_set_error(v77, v76, "Failed : %s", v57, v58, v59, v60, v61, v56);
          return matched;
        }

        if (matched)
        {
          if (v107[34])
          {
            (v107[34])(v107, v107[35], v105);
          }

          return -10;
        }

        else
        {
LABEL_77:
          if (!v107[31] || (v107[31])(v107, v107[32], v105))
          {
            v75 = v105;
            v62 = tree_current_access_path(v106);
            archive_entry_copy_sourcepath(v75, v62);
            matched = archive_read_disk_entry_from_file(v107, v105, *(v106 + 520), v104);
            if (!matched)
            {
              matched = v101;
              if (v101)
              {
                archive_string_sprintf(&v95, ": %s", v63, v64, v65, v66, v67, v68, "File removed before we read it");
                archive_set_error(v107, v100, "%s", v69, v70, v71, v72, v73, v95);
              }
            }

            archive_string_free(&v95);
            return matched;
          }

          else
          {
            return -10;
          }
        }
      }
    }
  }
}

uint64_t tree_enter_initial_dir(uint64_t a1)
{
  v2 = 0;
  if ((*(a1 + 32) & 0x100) == 0)
  {
    v2 = fchdir(*(a1 + 100));
    if (!v2)
    {
      *(a1 + 32) &= ~0x40u;
      *(a1 + 32) |= 0x100u;
    }
  }

  return v2;
}

uint64_t setup_sparse(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = *(a1 + 160);
  v13 = 0;
  v12 = 0;
  *(v14 + 472) = archive_entry_sparse_reset(a2);
  if (*(v14 + 472) + 1 <= *(v14 + 476) || (free(*(v14 + 456)), *(v14 + 476) = *(v14 + 472) + 1, (*(v14 + 456) = malloc_type_malloc(16 * *(v14 + 476), 0x1000040451B5BE8uLL)) != 0))
  {
    for (i = 0; i < *(v14 + 472); ++i)
    {
      archive_entry_sparse_next(v15, &v12, &v13);
      *(*(v14 + 456) + 16 * i + 8) = v12;
      *(*(v14 + 456) + 16 * i) = v13;
    }

    if (i)
    {
      v8 = archive_entry_size(v15);
      *(*(v14 + 456) + 16 * i + 8) = v8;
      *(*(v14 + 456) + 16 * i) = 0;
    }

    else
    {
      *(*(v14 + 456) + 8) = 0;
      v7 = archive_entry_size(v15);
      **(v14 + 456) = v7;
    }

    *(v14 + 464) = *(v14 + 456);
    return 0;
  }

  else
  {
    *(v14 + 476) = 0;
    archive_set_error(v16, 12, "Can't allocate data", v2, v3, v4, v5, v6, v10);
    v16[1] = 0x8000;
    return -30;
  }
}

uint64_t tree_next(uint64_t a1)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!*a1)
        {
          *(a1 + 36) = 0;
          return 0;
        }

        if (!*(a1 + 16))
        {
          break;
        }

        posix = tree_dir_next_posix(a1);
        if (posix)
        {
          return posix;
        }
      }

      if ((*(*a1 + 72) & 4) != 0)
      {
        *(a1 + 8) = *a1;
        tree_append(a1, *(*a1 + 24), *(*a1 + 32));
        *(*a1 + 72) &= ~4u;
        *(a1 + 36) = 1;
        return 1;
      }

      if ((*(*a1 + 72) & 8) != 0)
      {
        *(a1 + 8) = *a1;
        tree_append(a1, *(*a1 + 24), *(*a1 + 32));
        *(*a1 + 72) &= ~8u;
        v4 = tree_descent(a1);
        if (v4)
        {
          tree_pop(a1);
          *(a1 + 36) = v4;
        }

        else
        {
          *(a1 + 36) = 2;
        }

        return *(a1 + 36);
      }

      if ((*(*a1 + 72) & 0x10) == 0)
      {
        break;
      }

      *(*a1 + 72) &= ~0x10u;
      v5 = tree_dir_next_posix(a1);
      if (v5)
      {
        return v5;
      }
    }

    if ((*(*a1 + 72) & 0x20) != 0)
    {
      break;
    }

    tree_pop(a1);
    *(a1 + 32) &= ~0x20u;
    *(a1 + 32) &= ~0x10u;
  }

  v6 = tree_ascend(a1);
  tree_pop(a1);
  if (v6)
  {
    v2 = v6;
  }

  else
  {
    v2 = 3;
  }

  *(a1 + 36) = v2;
  return *(a1 + 36);
}

uint64_t tree_current_lstat(uint64_t a1)
{
  if ((*(a1 + 32) & 0x20) != 0)
  {
    return a1 + 112;
  }

  v3 = tree_current_dir_fd(a1);
  v1 = tree_current_access_path(a1);
  if (!fstatat(v3, v1, (a1 + 112), 32))
  {
    *(a1 + 32) |= 0x20u;
    return a1 + 112;
  }

  return 0;
}

uint64_t tree_current_stat(uint64_t a1)
{
  if ((*(a1 + 32) & 0x10) != 0)
  {
    return a1 + 256;
  }

  v3 = tree_current_dir_fd(a1);
  v1 = tree_current_access_path(a1);
  if (!fstatat(v3, v1, (a1 + 256), 0))
  {
    *(a1 + 32) |= 0x10u;
    return a1 + 256;
  }

  return 0;
}

uint64_t tree_target_is_same_as_parent(uint64_t a1, uint64_t a2)
{
  for (i = *(*(a1 + 8) + 16); i; i = i[2])
  {
    if (i[7] == *a2 && i[8] == *(a2 + 8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t update_current_filesystem(uint64_t a1, uint64_t a2)
{
  v14 = *(a1 + 160);
  if (!*(v14 + 488) || **(v14 + 488) != a2)
  {
    for (i = 0; i < *(v14 + 512); ++i)
    {
      if (*(*(v14 + 496) + 80 * i) == a2)
      {
        *(v14 + 508) = i;
        *(v14 + 488) = *(v14 + 496) + 80 * i;
        return 0;
      }
    }

    v2 = *(v14 + 512);
    *(v14 + 512) = v2 + 1;
    v12 = v2;
    if (*(v14 + 512) > *(v14 + 516))
    {
      v11 = 2 * *(v14 + 512);
      v10 = malloc_type_realloc(*(v14 + 496), 80 * v11, 0x10100409FF3D57FuLL);
      if (!v10)
      {
        archive_set_error(a1, 12, "Can't allocate tar data", v3, v4, v5, v6, v7, v9);
        return -30;
      }

      *(v14 + 496) = v10;
      *(v14 + 516) = v11;
    }

    *(v14 + 508) = v12;
    *(v14 + 488) = *(v14 + 496) + 80 * v12;
    **(v14 + 488) = a2;
    *(*(v14 + 488) + 56) = 0;
    *(*(v14 + 488) + 64) = 0;
    return setup_current_filesystem(a1);
  }

  return 0;
}

uint64_t tree_dir_next_posix(uint64_t a1)
{
  if (*(a1 + 16) || (v1 = tree_dup(*(a1 + 104)), (*(a1 + 16) = fdopendir(v1)) != 0))
  {
    while (1)
    {
      *__error() = 0;
      *(a1 + 24) = readdir(*(a1 + 16));
      if (!*(a1 + 24))
      {
        break;
      }

      v5 = *(a1 + 24) + 21;
      v4 = strlen(v5);
      *(a1 + 32) &= ~0x20u;
      *(a1 + 32) &= ~0x10u;
      if ((*v5 != 46 || *(v5 + 1)) && (*v5 != 46 || *(v5 + 1) != 46 || *(v5 + 2)))
      {
        tree_append(a1, v5, v4);
        *(a1 + 36) = 1;
        return 1;
      }
    }

    v7 = *__error();
    closedir(*(a1 + 16));
    *(a1 + 16) = 0;
    if (v7)
    {
      *(a1 + 40) = v7;
      *(a1 + 36) = -1;
      return *(a1 + 36);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = tree_ascend(a1);
    tree_pop(a1);
    *(a1 + 40) = *__error();
    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = -1;
    }

    *(a1 + 36) = v3;
    return *(a1 + 36);
  }
}

uint64_t *tree_append(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *(a1[6] + a1[10]) = 0;
  a1[7] = a1[10];
  while (1)
  {
    v4 = 0;
    if (a3 > 1)
    {
      v4 = *(a2 + a3 - 1) == 47;
    }

    if (!v4)
    {
      break;
    }

    --a3;
  }

  archive_string_ensure((a1 + 6), a3 + a1[10] + 2);
  if (a1[10] && *(a1[6] + a1[7] - 1) != 47)
  {
    archive_strappend_char(a1 + 6, 47);
  }

  a1[9] = a1[6] + a1[7];
  result = archive_strncat(a1 + 6, a2, a3);
  a1[51] = a1[9];
  return result;
}

uint64_t tree_descent(uint64_t a1)
{
  v2 = 0;
  *(a1 + 80) = *(a1 + 56);
  v3 = open_on_current_dir(a1, *(*a1 + 24), 17825792);
  __archive_ensure_cloexec_flag(v3);
  if ((v3 & 0x80000000) != 0)
  {
    *(a1 + 40) = *__error();
    return -1;
  }

  else
  {
    ++*(a1 + 88);
    if ((*(*a1 + 72) & 2) != 0)
    {
      *(*a1 + 80) = *(a1 + 104);
      if (++*(a1 + 92) > *(a1 + 96))
      {
        *(a1 + 96) = *(a1 + 92);
      }
    }

    else
    {
      close(*(a1 + 104));
    }

    *(a1 + 104) = v3;
    *(a1 + 32) &= ~0x40u;
  }

  return v2;
}

uint64_t tree_ascend(_DWORD *a1)
{
  v3 = 0;
  v5 = *a1;
  v2 = a1[26];
  if ((*(*a1 + 72) & 2) != 0)
  {
    v4 = *(v5 + 80);
  }

  else
  {
    v4 = open_on_current_dir(a1, "..", 0x1000000);
    __archive_ensure_cloexec_flag(v4);
  }

  if ((v4 & 0x80000000) != 0)
  {
    a1[10] = *__error();
    return -2;
  }

  else
  {
    a1[26] = v4;
    a1[8] &= ~0x40u;
    close_and_restore_time(v2, a1, v5 + 88);
    if ((*(v5 + 72) & 2) != 0)
    {
      --a1[23];
      *(v5 + 80) = -1;
    }

    --a1[22];
  }

  return v3;
}

uint64_t tree_dup(int a1)
{
  v3 = a1;
  v2 = 0;
  if (!tree_dup_can_dupfd_cloexec)
  {
    goto LABEL_5;
  }

  v2 = fcntl(v3, 67, 0);
  if (v2 == -1)
  {
    tree_dup_can_dupfd_cloexec = 0;
LABEL_5:
    v2 = dup(v3);
    __archive_ensure_cloexec_flag(v2);
    return v2;
  }

  return v2;
}

uint64_t setup_current_filesystem(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = *(a1 + 160);
  bzero(&v25, 0x200uLL);
  xfer_size = 0;
  *(*(v22 + 488) + 8) = -1;
  *(*(v22 + 488) + 12) = -1;
  if (tree_current_is_symblic_link_target(v22))
  {
    v18 = tree_current_dir_fd(v22);
    v1 = tree_current_access_path(v22);
    v19 = openat(v18, v1, 0x1000000);
    __archive_ensure_cloexec_flag(v19);
    if ((v19 & 0x80000000) != 0)
    {
      v2 = __error();
      archive_set_error(a1, *v2, "openat failed", v3, v4, v5, v6, v7, v17);
      v24 = -25;
      goto LABEL_21;
    }

    v21 = fstatfs(v19, &v25);
    if (!v21)
    {
      xfer_size = get_xfer_size(v22, v19, 0);
    }

    close(v19);
  }

  else
  {
    v8 = tree_current_dir_fd(v22);
    v21 = fstatfs(v8, &v25);
    if (!v21)
    {
      v9 = tree_current_dir_fd(v22);
      xfer_size = get_xfer_size(v22, v9, 0);
    }
  }

  if (v21 == -1 || xfer_size == -1)
  {
    v10 = __error();
    archive_set_error(a1, *v10, "statfs failed", v11, v12, v13, v14, v15, v17);
    v24 = -25;
  }

  else
  {
    if (xfer_size == 1)
    {
      set_statfs_transfer_size(*(v22 + 488), &v25.f_bsize);
    }

    *(*(v22 + 488) + 12) = (v25.f_flags & 0x1000) == 0;
    *(*(v22 + 488) + 16) = (v25.f_flags & 0x10000000) != 0;
    v24 = 0;
  }

LABEL_21:
  *MEMORY[0x1E69E9840];
  return v24;
}

BOOL tree_current_is_symblic_link_target(uint64_t a1)
{
  tree_current_is_symblic_link_target_lst = tree_current_lstat(a1);
  tree_current_is_symblic_link_target_st = tree_current_stat(a1);
  v2 = 0;
  if (tree_current_is_symblic_link_target_st)
  {
    v2 = 0;
    if (tree_current_is_symblic_link_target_lst)
    {
      v2 = 0;
      if (*tree_current_is_symblic_link_target_st == **(a1 + 488))
      {
        return *tree_current_is_symblic_link_target_st != *tree_current_is_symblic_link_target_lst;
      }
    }
  }

  return v2;
}

uint64_t get_xfer_size(uint64_t a1, int a2, const char *a3)
{
  *(*(a1 + 488) + 48) = -1;
  *__error() = 0;
  if (a2 < 0)
  {
    if (a3)
    {
      *(*(a1 + 488) + 24) = pathconf(a3, 20);
      *(*(a1 + 488) + 32) = pathconf(a3, 21);
      *(*(a1 + 488) + 40) = pathconf(a3, 22);
      *(*(a1 + 488) + 48) = pathconf(a3, 23);
    }
  }

  else
  {
    *(*(a1 + 488) + 24) = fpathconf(a2, 20);
    *(*(a1 + 488) + 32) = fpathconf(a2, 21);
    *(*(a1 + 488) + 40) = fpathconf(a2, 22);
    *(*(a1 + 488) + 48) = fpathconf(a2, 23);
  }

  if (*(*(a1 + 488) + 48) == -1)
  {
    if (*__error() == 22)
    {
      return 1;
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

void *set_statfs_transfer_size(void *result, unsigned int *a2)
{
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = -1;
  }

  result[6] = v4;
  result[4] = -1;
  if (a2[1] <= 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2[1];
  }

  result[5] = v3;
  if (a2[1] <= 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = a2[1];
  }

  result[3] = v2;
  return result;
}

uint64_t setup_suitable_read_buffer(uint64_t a1)
{
  v15 = *(*(a1 + 160) + 488);
  if (v15[7])
  {
    return 0;
  }

  if (v15[6] == -1)
  {
    v10 = 4096;
  }

  else
  {
    v10 = v15[6];
  }

  if (v15[4] == -1)
  {
    v11 = v15[3];
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = v15[5];
    }

    if ((v15[5] & 0x8000000000000000) != 0)
    {
      v11 = v10;
      sizea = v10;
    }

    else
    {
      sizea = v15[5];
    }

    while (sizea < 0x10000)
    {
      sizea += v11;
    }

    size = sizea + v10;
    v1 = malloc_type_malloc(size, 0xDC51AB65uLL);
  }

  else
  {
    size = v15[4] + v10;
    v1 = malloc_type_malloc(size, 0xDC51AB65uLL);
  }

  v15[7] = v1;
  if (v15[7])
  {
    v12 = v15[7] % v10;
    if (v12)
    {
      v7 = v15[7] % v10;
      v12 = v10 - v12;
    }

    v15[8] = v15[7] + v12;
    v15[9] = size - v10;
    return 0;
  }

  archive_set_error(a1, 12, "Couldn't allocate memory", v2, v3, v4, v5, v6, v9);
  *(a1 + 4) = 0x8000;
  return -30;
}

uint64_t tree_reopen(uint64_t a1, const char *a2, int a3)
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 32) = v3;
  *(a1 + 32) |= 0x100u;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 400) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 481) = *(a1 + 480);
  *(a1 + 56) = 0;
  *(a1 + 520) = -1;
  *(a1 + 524) = 0;
  *(a1 + 528) = 0;
  *(a1 + 504) = -1;
  tree_push(a1, a2, 0, 0, 0, 0);
  *(*a1 + 72) = 4;
  *(a1 + 92) = 1;
  *(a1 + 96) = 1;
  *(a1 + 100) = open(".", 0x1000000);
  if ((*(a1 + 100) & 0x80000000) != 0)
  {
    *(a1 + 100) = open(".", 1091567616);
  }

  __archive_ensure_cloexec_flag(*(a1 + 100));
  *(a1 + 104) = tree_dup(*(a1 + 100));
  return a1;
}

uint64_t tree_open(const char *a1, char a2, int a3)
{
  v4 = malloc_type_calloc(1uLL, 0x230uLL, 0x1070040F276FBAEuLL);
  if (!v4)
  {
    return 0;
  }

  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  archive_string_ensure((v4 + 6), 0x1FuLL);
  *(v4 + 480) = a2;
  return tree_reopen(v4, a1, a3);
}

uint64_t archive_read_extract_set_skip_file(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __archive_check_magic(a1, 14594245, 0x7FFF, "archive_read_extract_set_skip_file");
  if (!result)
  {
    *(a1 + 152) = 1;
    *(a1 + 160) = a2;
    *(a1 + 168) = a3;
  }

  return result;
}

uint64_t archive_read_open2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  archive_read_set_callback_data(a1, a2);
  archive_read_set_open_callback(a1, a3);
  archive_read_set_read_callback(a1, a4);
  archive_read_set_skip_callback(a1, a5);
  archive_read_set_close_callback(a1, a6);
  return archive_read_open1(a1);
}

uint64_t archive_read_set_switch_callback(uint64_t a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_switch_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 216) = a2;
    return 0;
  }
}

uint64_t archive_read_add_callback_data(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_add_callback_data") == -30)
  {
    return -30;
  }

  else if (a3 > *(a1 + 224))
  {
    archive_set_error(a1, 22, "Invalid index specified.", v3, v4, v5, v6, v7, v17);
    return -30;
  }

  else
  {
    v8 = *(a1 + 240);
    v9 = *(a1 + 224) + 1;
    *(a1 + 224) = v9;
    v10 = malloc_type_realloc(v8, 24 * v9, 0x108004098BBCF0FuLL);
    if (v10)
    {
      *(a1 + 240) = v10;
      for (i = *(a1 + 224) - 1; i > a3; --i)
      {
        *(*(a1 + 240) + 24 * i + 16) = *(*(a1 + 240) + 24 * (i - 1) + 16);
        *(*(a1 + 240) + 24 * i) = -1;
        *(*(a1 + 240) + 24 * i + 8) = -1;
      }

      *(*(a1 + 240) + 24 * a3 + 16) = a2;
      *(*(a1 + 240) + 24 * a3) = -1;
      *(*(a1 + 240) + 24 * a3 + 8) = -1;
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "No memory.", v11, v12, v13, v14, v15, v17);
      return -30;
    }
  }
}

uint64_t __archive_read_header(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 632) + 32) + 16))
  {
    return (*(*(*(a1 + 632) + 32) + 16))(*(a1 + 632), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_header_position(uint64_t a1)
{
  if (__archive_check_magic(a1, 14594245, 0x7FFF, "archive_read_header_position") == -30)
  {
    return -30;
  }

  else
  {
    return *(a1 + 648);
  }
}

uint64_t archive_read_has_encrypted_entries(uint64_t a1)
{
  v2 = archive_read_format_capabilities(a1) & 3;
  if (a1 && v2)
  {
    if (*(a1 + 2072) && *(*(a1 + 2072) + 80))
    {
      return (*(*(a1 + 2072) + 80))(a1);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -2;
  }
}

uint64_t archive_read_format_capabilities(uint64_t a1)
{
  if (a1 && *(a1 + 2072) && *(*(a1 + 2072) + 72))
  {
    return (*(*(a1 + 2072) + 72))(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_data(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a1;
  v14 = 0;
  HIDWORD(v10) = 0;
  v13 = 0;
  v15 = a2;
  while (v17)
  {
    if (*(v16 + 13) == *(v16 + 14) && !*(v16 + 15))
    {
      v14 = *(v16 + 12);
      *(v16 + 128) = 1;
      *(v16 + 17) = v17;
      HIDWORD(v10) = archive_read_data_block(v16, &v14, (v16 + 30), (v16 + 26));
      *(v16 + 12) = v14;
      if (HIDWORD(v10) == 1)
      {
        return v13;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        return SHIDWORD(v10);
      }
    }

    if (*(v16 + 13) < *(v16 + 14))
    {
      archive_set_error(v16, 79, "Encountered out-of-order sparse blocks", a4, a5, a6, a7, a8, v10);
      return -10;
    }

    if ((*(v16 + 14) + v17) >= *(v16 + 13))
    {
      if (*(v16 + 14) < *(v16 + 13))
      {
        v11 = *(v16 + 13) - *(v16 + 14);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = v17;
    }

    __memset_chk();
    v17 -= v11;
    *(v16 + 14) += v11;
    v15 += v11;
    v13 += v11;
    if (v17)
    {
      v12 = *(v16 + 15);
      if (v12 > v17)
      {
        v12 = v17;
      }

      if (v12)
      {
        v8 = *(v16 + 12);
        __memcpy_chk();
        v17 -= v12;
        *(v16 + 12) += v12;
        *(v16 + 15) -= v12;
        *(v16 + 14) += v12;
        *(v16 + 13) += v12;
        v15 += v12;
        v13 += v12;
      }
    }
  }

  *(v16 + 128) = 0;
  *(v16 + 17) = 0;
  return v13;
}

uint64_t archive_seek_data(uint64_t a1, uint64_t a2, unsigned int a3)
{
  HIDWORD(v9) = __archive_check_magic(a1, 14594245, 4, "archive_seek_data_block");
  if (HIDWORD(v9) == -30)
  {
    return -30;
  }

  if (*(*(a1 + 2072) + 56))
  {
    return (*(*(a1 + 2072) + 56))(a1, a2, a3);
  }

  archive_set_error(a1, 22, "Internal error: No format_seek_data_block function registered", v3, v4, v5, v6, v7, v9);
  return -30;
}

uint64_t __archive_read_register_bidder(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__archive_check_magic(a1, 14594245, 1, "__archive_read_register_bidder") == -30)
  {
    return -30;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      if (i >= 16)
      {
        archive_set_error(a1, 12, "Not enough slots for filter registration", v4, v5, v6, v7, v8, v15);
        return -30;
      }

      if (!*&a1[6 * i + 66])
      {
        break;
      }
    }

    __memset_chk();
    v17 = &a1[6 * i + 62];
    *v17 = a2;
    *(v17 + 1) = a3;
    *(v17 + 2) = a4;
    if (**(v17 + 2) && *(*(v17 + 2) + 8))
    {
      return 0;
    }

    else
    {
      archive_set_error(a1, 22, "Internal error: no bid/init for filter bidder", v9, v10, v11, v12, v13, v15);
      return -30;
    }
  }
}

uint64_t __archive_read_filter_seek(uint64_t a1, uint64_t a2, int a3)
{
  v37 = a2;
  if (*(a1 + 137) || *(a1 + 138))
  {
    return -30;
  }

  if (!*(a1 + 64))
  {
    return -25;
  }

  v36 = *(a1 + 24) + 176;
  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return -30;
      }

      for (i = 0; (*(*(v36 + 64) + 24 * i) & 0x8000000000000000) == 0 && (*(*(v36 + 64) + 24 * i + 8) & 0x8000000000000000) == 0 && i + 1 < *(v36 + 48); *(*(v36 + 64) + 24 * i) = v16)
      {
        v16 = *(*(v36 + 64) + 24 * i) + *(*(v36 + 64) + 24 * i + 8);
        ++i;
      }

      while (1)
      {
        v17 = client_switch_proxy(a1, i);
        if (v17)
        {
          return v17;
        }

        v33 = client_seek_proxy(a1, 0, 2u, v18, v19, v20, v21, v22);
        if (v33 < 0)
        {
          return v33;
        }

        *(*(v36 + 64) + 24 * i + 8) = v33;
        v34 = *(*(v36 + 64) + 24 * i) + *(*(v36 + 64) + 24 * i + 8);
        if (i + 1 >= *(v36 + 48))
        {
          break;
        }

        *(*(v36 + 64) + 24 * ++i) = v34;
      }

      while (v34 + v37 < *(*(v36 + 64) + 24 * i))
      {
        v37 += *(*(v36 + 64) + 24 * i + 8);
        if (!i)
        {
          break;
        }

        --i;
        v34 = *(*(v36 + 64) + 24 * i) + *(*(v36 + 64) + 24 * i + 8);
      }

      v39 = v34 + v37 - *(*(v36 + 64) + 24 * i);
      v23 = client_switch_proxy(a1, i);
      if (v23)
      {
        return v23;
      }

      v32 = client_seek_proxy(a1, v39, 0, v24, v25, v26, v27, v28);
      if (v32 < 0)
      {
        return v32;
      }

      goto LABEL_50;
    }

    v37 = a2 + *a1;
  }

  for (i = 0; (*(*(v36 + 64) + 24 * i) & 0x8000000000000000) == 0 && (*(*(v36 + 64) + 24 * i + 8) & 0x8000000000000000) == 0 && *(*(v36 + 64) + 24 * i) + *(*(v36 + 64) + 24 * i + 8) - 1 <= v37 && i + 1 < *(v36 + 48); *(*(v36 + 64) + 24 * i) = v3)
  {
    v3 = *(*(v36 + 64) + 24 * i) + *(*(v36 + 64) + 24 * i + 8);
    ++i;
  }

  while (1)
  {
    v4 = client_switch_proxy(a1, i);
    if (v4)
    {
      return v4;
    }

    v31 = client_seek_proxy(a1, 0, 2u, v5, v6, v7, v8, v9);
    if (v31 < 0)
    {
      return v31;
    }

    *(*(v36 + 64) + 24 * i + 8) = v31;
    if (*(*(v36 + 64) + 24 * i) + *(*(v36 + 64) + 24 * i + 8) - 1 > v37 || i + 1 >= *(v36 + 48))
    {
      break;
    }

    v15 = *(*(v36 + 64) + 24 * i) + *(*(v36 + 64) + 24 * i + 8);
    *(*(v36 + 64) + 24 * ++i) = v15;
  }

  v38 = v37 - *(*(v36 + 64) + 24 * i);
  if (v38 < 0 || v38 > *(*(v36 + 64) + 24 * i + 8))
  {
    return -30;
  }

  v32 = client_seek_proxy(a1, v38, 0, v10, v11, v12, v13, v14);
  if (v32 < 0)
  {
    return v32;
  }

LABEL_50:
  v35 = v32 + *(*(v36 + 64) + 24 * i);
  if ((v35 & 0x8000000000000000) == 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 96) = 0;
    *(a1 + 88) = *(a1 + 72);
    *a1 = v35;
    *(a1 + 136) = 0;
  }

  return v35;
}

uint64_t client_seek_proxy(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v9) = a3;
  if (*(*(a1 + 24) + 200))
  {
    return (*(*(a1 + 24) + 200))(*(a1 + 24), *(a1 + 40), a2, a3);
  }

  archive_set_error(*(a1 + 24), -1, "Current client reader does not support seeking a device", a4, a5, a6, a7, a8, v9);
  return -25;
}

uint64_t _archive_filter_count(uint64_t a1)
{
  v3 = *(a1 + 632);
  v2 = 0;
  while (v3)
  {
    ++v2;
    v3 = *(v3 + 16);
  }

  return v2;
}

uint64_t _archive_filter_bytes(uint64_t a1, int a2)
{
  filter = get_filter(a1, a2);
  if (filter)
  {
    return *filter;
  }

  else
  {
    return -1;
  }
}

uint64_t _archive_filter_code(uint64_t a1, int a2)
{
  filter = get_filter(a1, a2);
  if (filter)
  {
    return *(filter + 56);
  }

  else
  {
    return -1;
  }
}

uint64_t _archive_filter_name(uint64_t a1, int a2)
{
  filter = get_filter(a1, a2);
  if (filter)
  {
    return *(filter + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t get_filter(uint64_t a1, int a2)
{
  v8 = a2;
  v6 = *(a1 + 632);
  if (a2 == -1 && (v2 = *(a1 + 632), v6))
  {
    v5 = *(a1 + 632);
    for (i = *(v6 + 16); i; i = *(i + 16))
    {
      v5 = i;
    }

    return v5;
  }

  else if (a2 < 0)
  {
    return 0;
  }

  else
  {
    while (1)
    {
      v4 = 0;
      if (v8 > 0)
      {
        v4 = v6 != 0;
      }

      if (!v4)
      {
        break;
      }

      v6 = *(v6 + 16);
      --v8;
    }

    return v6;
  }
}

uint64_t client_open_proxy(uint64_t a1)
{
  v2 = 0;
  if (*(*(a1 + 24) + 176))
  {
    return (*(*(a1 + 24) + 176))(*(a1 + 24), *(a1 + 40));
  }

  return v2;
}

uint64_t client_skip_proxy(uint64_t *a1, uint64_t a2)
{
  v7 = a2;
  if (a2 < 0)
  {
    __archive_errx(1, "Negative skip requested.");
  }

  if (!a2)
  {
    return 0;
  }

  if (*(a1[3] + 192))
  {
    v6 = 0;
    while (1)
    {
      v5 = (*(a1[3] + 192))(a1[3], a1[5], v7);
      v6 += v5;
      if (!v5 || v5 == v7)
      {
        return v6;
      }

      if (v5 > v7)
      {
        break;
      }

      v7 -= v5;
    }

    return -30;
  }

  else if (*(a1[3] + 200) && a2 > 0x10000)
  {
    v4 = *a1;
    v3 = (*(a1[3] + 200))(a1[3], a1[5], a2, 1);
    if (v3 == v4 + v7)
    {
      return v3 - v4;
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

uint64_t archive_read_support_filter_grzip(int *a1)
{
  if (archive_allow_entitlement_filter("grzip"))
  {
    if (__archive_read_register_bidder(a1, 0, 0, grzip_bidder_vtable))
    {
      return -30;
    }

    else
    {
      archive_set_error(a1, -1, "Using external grzip program for grzip decompression", v6, v7, v8, v9, v10, v12);
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlements", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

uint64_t grzip_bidder_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1;
  v11 = a2;
  __s1 = 0;
  v9 = 0;
  __s1 = __archive_read_filter_ahead(a2, 0xCuLL, &v9, a4, a5, a6, a7, a8);
  if (__s1 && v9)
  {
    if (!memcmp(__s1, "GRZipII", 0xCuLL))
    {
      return 96;
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

uint64_t grzip_bidder_init(uint64_t a1)
{
  LODWORD(result) = __archive_read_program(a1, "grzip -d");
  *(a1 + 56) = 12;
  *(a1 + 48) = "grzip";
  return result;
}

uint64_t archive_read_data_into_fd(int *a1, int a2)
{
  v25 = a1;
  v24 = a2;
  memset(&__b, 0, sizeof(__b));
  data_block = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  __nbyte = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v13 = 0;
  if (__archive_check_magic(v25, 14594245, 4, "archive_read_data_into_fd") == -30)
  {
    return -30;
  }

  else
  {
    v11 = 0;
    if (!fstat(v24, &__b))
    {
      v11 = (__b.st_mode & 0xF000) == 0x8000;
    }

    v14 = v11;
    if (v11 || (v13 = malloc_type_calloc(1uLL, 0x4000uLL, 0x6DC32B50uLL)) != 0)
    {
      while (1)
      {
        data_block = archive_read_data_block(v25, &v20, &v19, &v16);
        if (data_block)
        {
          break;
        }

        __buf = v20;
        if (v16 <= v15)
        {
          goto LABEL_12;
        }

        data_block = pad_to(v25, v24, v14, 0x4000uLL, v13, v16, v15);
        if (data_block)
        {
          break;
        }

        v15 = v16;
LABEL_12:
        while (v19)
        {
          __nbyte = v19;
          if (v19 > 0x100000)
          {
            __nbyte = 0x100000;
          }

          v17 = write(v24, __buf, __nbyte);
          if (v17 < 0)
          {
            v10 = v25;
            v2 = __error();
            archive_set_error(v10, *v2, "Write error", v3, v4, v5, v6, v7, v9);
            data_block = -30;
            goto LABEL_23;
          }

          v15 += v17;
          __buf += v17;
          v19 -= v17;
        }
      }

      if (data_block == 1 && v16 > v15)
      {
        v21 = pad_to(v25, v24, v14, 0x4000uLL, v13, v16, v15);
        if (v21)
        {
          data_block = v21;
        }
      }
    }

    else
    {
      data_block = -30;
    }

LABEL_23:
    free(v13);
    if (data_block == 1)
    {
      return 0;
    }

    else
    {
      return data_block;
    }
  }
}

uint64_t pad_to(_DWORD *a1, int a2, int a3, size_t a4, const void *a5, int64_t a6, uint64_t a7)
{
  v23 = a7;
  if (a3)
  {
    if (lseek(a2, a6 - a7, 1) == a6)
    {
      return 0;
    }

    else
    {
      v7 = __error();
      archive_set_error(a1, *v7, "Seek error", v8, v9, v10, v11, v12, v20);
      return -30;
    }
  }

  else
  {
    while (a6 > v23)
    {
      __nbyte = a4;
      if (a6 < (v23 + a4))
      {
        __nbyte = a6 - v23;
      }

      v21 = write(a2, a5, __nbyte);
      if (v21 < 0)
      {
        v13 = __error();
        archive_set_error(a1, *v13, "Write error", v14, v15, v16, v17, v18, v20);
        return -30;
      }

      v23 += v21;
    }

    return 0;
  }
}

uint64_t archive_write_set_format_xar(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_xar") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v13 = malloc_type_calloc(1uLL, 0x10318uLL, 0x10F00406A1018FBuLL);
    if (v13)
    {
      *v13 = -1;
      file_init_register(v13);
      file_init_hardlinks(v13);
      v13[10] = 0;
      v13[11] = 0;
      v13[12] = 0;
      v13[13] = 0;
      v13[14] = 0;
      v13[15] = 0;
      v13[3] = file_create_virtual_dir(a1, v13, &unk_1BF3442C6);
      if (v13[3])
      {
        *(v13[3] + 88) = v13[3];
        file_register(v13, v13[3]);
        v13[4] = v13[3];
        v13[5] = 0;
        v13[6] = 0;
        v13[7] = 0;
        archive_string_ensure((v13 + 5), 1uLL);
        *v13[5] = 0;
        *(v13 + 32) = 1;
        *(v13 + 33) = 1;
        *(v13 + 34) = 1;
        *(v13 + 35) = 6;
        *(v13 + 36) = 1;
        *(a1 + 248) = v13;
        *(a1 + 256) = "xar";
        *(a1 + 272) = xar_options;
        *(a1 + 288) = xar_write_header;
        *(a1 + 296) = xar_write_data;
        *(a1 + 280) = xar_finish_entry;
        *(a1 + 304) = xar_close;
        *(a1 + 312) = xar_free;
        *(a1 + 16) = 655360;
        *(a1 + 24) = "xar";
        return 0;
      }

      else
      {
        free(v13);
        archive_set_error(a1, 12, "Can't allocate xar data", v6, v7, v8, v9, v10, v12);
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate xar data", v1, v2, v3, v4, v5, v12);
      return -30;
    }
  }
}

uint64_t file_init_register(uint64_t result)
{
  *(result + 66296) = 0;
  *(result + 66304) = result + 66296;
  return result;
}

void *file_create_virtual_dir(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = file_new(a1, 0);
  if (!v4)
  {
    return 0;
  }

  archive_entry_set_pathname(v4[4], a3);
  archive_entry_set_mode(v4[4], 16749);
  *(v4 + 360) = v4[45] & 0xFD | 2;
  *(v4 + 360) = v4[45] & 0xFE | 1;
  return v4;
}

uint64_t file_register(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *(result + 16) = v2 + 1;
  *(a2 + 24) = v2;
  *(a2 + 56) = 0;
  **(result + 66304) = a2;
  *(result + 66304) = a2 + 56;
  return result;
}

uint64_t xar_options(uint64_t a1, const char *a2, char *a3)
{
  v30 = a1;
  v29 = a2;
  __s1 = a3;
  v27 = 0;
  v27 = *(a1 + 248);
  if (!strcmp(a2, "checksum"))
  {
    if (!__s1)
    {
      v27[33] = 0;
      return 0;
    }

    if (!strcmp(__s1, "none"))
    {
      v27[33] = 0;
      return 0;
    }

    if (!strcmp(__s1, "sha1"))
    {
      v27[33] = 1;
      return 0;
    }

    if (!strcmp(__s1, "md5"))
    {
      v27[33] = 2;
      return 0;
    }

    goto LABEL_10;
  }

  if (!strcmp(v29, "compression"))
  {
    v26 = 0;
    if (__s1)
    {
      if (!strcmp(__s1, "none"))
      {
        v27[34] = 0;
      }

      else if (!strcmp(__s1, "gzip"))
      {
        v27[34] = 1;
      }

      else if (!strcmp(__s1, "bzip2"))
      {
        v27[34] = 2;
      }

      else if (!strcmp(__s1, "lzma"))
      {
        v27[34] = 3;
      }

      else
      {
        if (strcmp(__s1, "xz"))
        {
          return -25;
        }

        v27[34] = 4;
      }
    }

    else
    {
      v27[34] = 0;
    }

    if (v26)
    {
      return -25;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (strcmp(v29, "compression-level"))
    {
      if (strcmp(v29, "toc-checksum"))
      {
        if (!strcmp(v29, "threads"))
        {
          __endptr = 0;
          if (!__s1)
          {
            return -25;
          }

          *__error() = 0;
          v18 = strtoul(__s1, &__endptr, 10);
          v27[36] = v18;
          if (*__error() || *__endptr)
          {
            v27[36] = 1;
            return -25;
          }

          if (!v27[36])
          {
            v27[36] = 1;
          }
        }

        return -20;
      }

      if (__s1)
      {
        if (!strcmp(__s1, "none"))
        {
          v27[32] = 0;
        }

        else if (!strcmp(__s1, "sha1"))
        {
          v27[32] = 1;
        }

        else
        {
          if (strcmp(__s1, "md5"))
          {
LABEL_10:
            return -25;
          }

          v27[32] = 2;
        }
      }

      else
      {
        v27[32] = 0;
      }

      return 0;
    }

    if (__s1 && *__s1 >= 48 && *__s1 <= 57 && !__s1[1])
    {
      v27[35] = *__s1 - 48;
      return 0;
    }

    else
    {
      return -25;
    }
  }
}

uint64_t xar_write_header(uint64_t a1, uint64_t *a2)
{
  v34 = a1;
  v33 = a2;
  v32 = 0;
  v31 = 0;
  v32 = *(a1 + 248);
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  if (*(v32 + 616) || (*(v32 + 616) = archive_string_conversion_to_charset(v34, "UTF-8", 1)) != 0)
  {
    v31 = file_new(v34, v33);
    if (v31)
    {
      v26 = file_gen_utility_names(v34, v31);
      if (v26 >= -20)
      {
        if (v31[15] || v31[18])
        {
          v30 = v31[4];
          v27 = file_tree(v34, &v31);
          if (v27)
          {
            return v27;
          }

          else if (v31[4] == v30)
          {
            if (!*(v31 + 6))
            {
              file_register(v32, v31);
            }

            if (v31[45])
            {
              return v26;
            }

            else
            {
              if (*v32 == -1)
              {
                *(v32 + 8) = 0;
                *v32 = __archive_mktemp(0);
                if ((*v32 & 0x80000000) != 0)
                {
                  v24 = v34;
                  v7 = __error();
                  archive_set_error(v24, *v7, "Couldn't create temporary file", v8, v9, v10, v11, v12, v22);
                  return -30;
                }

                v25 = getalgsize(*(v32 + 128));
                if (v25 > 0)
                {
                  if (lseek(*v32, v25, 0) < 0)
                  {
                    v23 = v34;
                    v13 = __error();
                    archive_set_error(v23, *v13, "lseek failed", v14, v15, v16, v17, v18, v23);
                    return -30;
                  }

                  *(v32 + 8) = v25;
                }
              }

              if (archive_entry_hardlink(v31[4]) || !save_xattrs(v34, v31))
              {
                if (archive_entry_filetype(v31[4]) == 0x8000)
                {
                  *(v32 + 64) = v31;
                  if (archive_entry_nlink(v31[4]) > 1)
                  {
                    v28 = file_register_hardlink(v34, v31);
                    if (v28)
                    {
                      return v28;
                    }

                    if (archive_entry_hardlink(v31[4]))
                    {
                      archive_entry_unset_size(v31[4]);
                      return v26;
                    }
                  }

                  v31[28] = *(v32 + 8);
                  v19 = archive_entry_size(v31[4]);
                  v31[30] = v19;
                  *(v31 + 62) = *(v32 + 136);
                  v20 = archive_entry_size(v31[4]);
                  *(v32 + 72) = v20;
                  checksum_init(v32 + 148, *(v32 + 132));
                  checksum_init(v32 + 340, *(v32 + 132));
                  inited = xar_compression_init_encoder(v34);
                  if (inited)
                  {
                    return inited;
                  }

                  else
                  {
                    return v26;
                  }
                }

                else
                {
                  return v26;
                }
              }

              else
              {
                return -30;
              }
            }
          }

          else
          {
            return v26;
          }
        }

        else
        {
          file_free(v31);
          return v26;
        }
      }

      else
      {
        return v26;
      }
    }

    else
    {
      archive_set_error(v34, 12, "Can't allocate data", v2, v3, v4, v5, v6, v22);
      return -30;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t xar_write_data(unint64_t a1, _BYTE *a2, unint64_t a3)
{
  v15 = a3;
  v12 = 0;
  v14 = *(a1 + 248);
  if (a3 > v14[9])
  {
    v15 = v14[9];
  }

  if (v15 && v14[8])
  {
    if (*(v14[8] + 248))
    {
      v14[67] = a2;
      v14[68] = v15;
      if (v14[9] > v15)
      {
        v13 = 1;
        v3 = compression_code(a1, (v14 + 67), 1u);
      }

      else
      {
        v13 = 0;
        v3 = compression_code(a1, (v14 + 67), 0);
      }

      while (1)
      {
        v10 = v3;
        if (v3 >= 2)
        {
          return -30;
        }

        if (v14[71] && v13)
        {
          break;
        }

        v12 = 0x10000 - v14[71];
        checksum_update(v14 + 148, v14 + 78, 0x10000 - *(v14 + 142));
        *(v14[8] + 232) += v12;
        if (write_to_temp(a1, v14 + 624, v12))
        {
          return -30;
        }

        if (v10)
        {
          break;
        }

        v14[70] = v14 + 78;
        v14[71] = 0x10000;
        v3 = compression_code(a1, (v14 + 67), v13);
      }

      v11 = v15 - v14[68];
      checksum_update(v14 + 340, a2, v15 - *(v14 + 136));
    }

    else
    {
      checksum_update(v14 + 340, a2, v15);
      checksum_update(v14 + 148, a2, v15);
      v11 = v15;
      v12 = v15;
    }

    v6 = v14[9];
    if (v6 == archive_entry_size(*(v14[8] + 32)))
    {
      *(v14[8] + 344) = 0;
      if (v11 > 2 && *a2 == 35 && a2[1] == 33)
      {
        v7 = 2;
        if (a2[2] == 32)
        {
          v7 = 3;
        }

        if (v11 - v7 <= 0x400)
        {
          v8 = v11;
        }

        else
        {
          v8 = v7 + 1024;
        }

        for (i = v7; ; ++i)
        {
          v5 = 0;
          if (i < v8)
          {
            v5 = 0;
            if (a2[i])
            {
              v5 = 0;
              if (a2[i] != 10)
              {
                v5 = 0;
                if (a2[i] != 13)
                {
                  v5 = 0;
                  if (a2[i] != 32)
                  {
                    v5 = a2[i] != 9;
                  }
                }
              }
            }
          }

          if (!v5)
          {
            break;
          }
        }

        *(v14[8] + 344) = 0;
        archive_strncat((v14[8] + 336), &a2[v7], i - v7);
      }
    }

    if (!*(v14[8] + 248))
    {
      if (write_to_temp(a1, a2, v12))
      {
        return -30;
      }

      *(v14[8] + 232) += v12;
    }

    v14[9] -= v11;
    return v11;
  }

  return 0;
}

uint64_t xar_finish_entry(unint64_t a1)
{
  v5 = *(a1 + 248);
  if (*(v5 + 64))
  {
    while (*(v5 + 72))
    {
      v3 = *(v5 + 72);
      if (v3 > *(a1 + 176))
      {
        v3 = *(a1 + 176);
      }

      v2 = xar_write_data(a1, *(a1 + 168), v3);
      if (v2 <= 0)
      {
        return v2;
      }

      *(v5 + 72) -= v2;
    }

    v4 = *(v5 + 64);
    checksum_final(v5 + 340, v4 + 296);
    checksum_final(v5 + 148, v4 + 256);
    *(v5 + 64) = 0;
    return 0;
  }

  else
  {
    return 0;
  }
}

int xar_close(xar_t x)
{
  v9 = *(x + 31);
  if (!*(*(v9 + 24) + 96))
  {
    return 0;
  }

  v7 = *(v9 + 8);
  file_connect_hardlink_files(v9);
  toc = make_toc(x);
  if (toc)
  {
    return toc;
  }

  *(v9 + 66160) = 0x10000;
  archive_be32enc((v9 + 624), 2019652129);
  archive_be16enc((v9 + 628), 28);
  archive_be16enc((v9 + 630), 1);
  archive_be64enc((v9 + 632), *(v9 + 66192));
  archive_be64enc((v9 + 640), *(v9 + 66200));
  archive_be32enc((v9 + 648), *(v9 + 66216));
  *(v9 + 66160) -= 28;
  v4 = copy_out(x, *(v9 + 66184), *(v9 + 66192));
  if (v4)
  {
    return v4;
  }

  if (*(v9 + 66224))
  {
    if (*(v9 + 66160) < *(v9 + 66224))
    {
      v5 = flush_wbuff(x);
      if (v5)
      {
        return v5;
      }
    }

    v8 = v9 + 624 + 0x10000 - *(v9 + 66160);
    v1 = *(v9 + 66224);
    __memcpy_chk();
    *(v9 + 66160) -= *(v9 + 66224);
  }

  v6 = copy_out(x, *(v9 + 66224), v7);
  if (v6)
  {
    return v6;
  }

  else
  {
    return flush_wbuff(x);
  }
}

uint64_t xar_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if ((*v2 & 0x80000000) == 0)
  {
    close(*v2);
  }

  archive_string_free((v2 + 10));
  archive_string_free((v2 + 20));
  archive_string_free((v2 + 26));
  file_free_hardlinks(v2);
  file_free_register(v2);
  compression_end(a1, (v2 + 134));
  free(v2);
  return 0;
}

void *file_new(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x170uLL, 0x10F0040A750FA63uLL);
  if (!v4)
  {
    return 0;
  }

  if (a2)
  {
    v2 = archive_entry_clone(a2);
  }

  else
  {
    v2 = archive_entry_new2(a1);
  }

  v4[4] = v2;
  if (v4[4])
  {
    __archive_rb_tree_init(v4 + 5, file_new_rb_ops);
    v4[12] = 0;
    v4[13] = v4 + 12;
    v4[24] = 0;
    v4[25] = v4 + 24;
    v4[14] = 0;
    v4[15] = 0;
    v4[16] = 0;
    v4[17] = 0;
    v4[18] = 0;
    v4[19] = 0;
    v4[20] = 0;
    v4[21] = 0;
    v4[22] = 0;
    v4[42] = 0;
    v4[43] = 0;
    v4[44] = 0;
    if (a2 && archive_entry_filetype(a2) == 0x4000)
    {
      *(v4 + 360) = v4[45] & 0xFD | 2;
    }

    return v4;
  }

  else
  {
    free(v4);
    return 0;
  }
}

uint64_t file_gen_utility_names(uint64_t a1, uint64_t *a2)
{
  v42 = a1;
  v41 = a2;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v40 = *(a1 + 248);
  a2[15] = 0;
  v41[18] = 0;
  v41[21] = 0;
  if (v41[11] == v41)
  {
    return 0;
  }

  else
  {
    if (_archive_entry_pathname_l(v41[4], &v39, &v35, *(v40 + 616)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v42, 12, "Can't allocate memory for Pathname", v2, v3, v4, v5, v6, v25);
        return -30;
      }

      v30 = v42;
      v7 = archive_entry_pathname(v41[4]);
      archive_set_error(v30, 79, "Can't translate pathname '%s' to UTF-8", v8, v9, v10, v11, v12, v7);
      v34 = -20;
    }

    v41[15] = 0;
    archive_strncat(v41 + 14, v39, v35);
    v35 = v41[15];
    v37 = v41[14];
    v38 = v37;
    while (*v38)
    {
      if (*v38 == 47)
      {
        ++v38;
        --v35;
      }

      else
      {
        if (*v38 != 46)
        {
          break;
        }

        if (v38[1] == 46 && v38[2] == 47)
        {
          v38 += 3;
          v35 -= 3;
        }

        else if (v38[1] == 47 || v38[1] == 46 && !v38[2])
        {
          v38 += 2;
          v35 -= 2;
        }

        else
        {
          if (v38[1])
          {
            break;
          }

          ++v38;
          --v35;
        }
      }
    }

    if (v38 != v37)
    {
      __memmove_chk();
      v38 = v37;
    }

    do
    {
      if (!v35)
      {
        break;
      }

      v33 = v35;
      if (v38[v35 - 1] == 47)
      {
        v38[--v35] = 0;
      }

      if (v35 > 1 && v38[v35 - 2] == 47 && v38[v35 - 1] == 46)
      {
        v38[v35 - 2] = 0;
        v35 -= 2;
      }

      if (v35 > 2 && v38[v35 - 3] == 47 && v38[v35 - 2] == 46 && v38[v35 - 1] == 46)
      {
        v38[v35 - 3] = 0;
        v35 -= 3;
      }
    }

    while (v33 != v35);
    while (*v38)
    {
      if (*v38 == 47)
      {
        if (v38[1] == 47)
        {
          strlen(v38 + 1);
          __memmove_chk();
        }

        else if (v38[1] == 46 && v38[2] == 47)
        {
          strlen(v38 + 2);
          __memmove_chk();
        }

        else if (v38[1] == 46 && v38[2] == 46 && v38[3] == 47)
        {
            ;
          }

          if (i <= v37)
          {
            __strcpy_chk();
            v38 = v37;
          }

          else
          {
            __strcpy_chk();
            v38 = i;
          }
        }

        else
        {
          ++v38;
        }
      }

      else
      {
        ++v38;
      }
    }

    v38 = v37;
    v35 = strlen(v37);
    if (archive_entry_filetype(v41[4]) == 40960)
    {
      v31 = 0;
      if (_archive_entry_symlink_l(v41[4], &v39, &v31, *(v40 + 616)))
      {
        if (*__error() == 12)
        {
          archive_set_error(v42, 12, "Can't allocate memory for Linkname", v13, v14, v15, v16, v17, v25);
          return -30;
        }

        v29 = v42;
        v18 = archive_entry_symlink(v41[4]);
        archive_set_error(v29, 79, "Can't translate symlink '%s' to UTF-8", v19, v20, v21, v22, v23, v18);
        v34 = -20;
      }

      v41[21] = 0;
      archive_strncat(v41 + 20, v39, v31);
    }

    v36 = 0;
    while (*v38)
    {
      if (*v38 == 47)
      {
        v36 = v38;
      }

      ++v38;
    }

    if (v36)
    {
      *v36 = 0;
      v41[15] = v36 - v37;
      v41[18] = 0;
      v27 = v41 + 17;
      v28 = (v36 + 1);
      if (v36 == -1)
      {
        archive_strncat(v27, v28, 0);
      }

      else
      {
        v26 = strlen(v36 + 1);
        archive_strncat(v27, v28, v26);
      }

      return v34;
    }

    else
    {
      v41[15] = v35;
      v41[18] = 0;
      archive_string_concat(v41 + 17, v41 + 14);
      v41[15] = 0;
      *v41[14] = 0;
      return v34;
    }
  }
}

void file_free(uint64_t a1)
{
  for (i = *(a1 + 192); i; i = v1)
  {
    v1 = i[1];
    free(i);
  }

  archive_string_free(a1 + 112);
  archive_string_free(a1 + 136);
  archive_string_free(a1 + 160);
  archive_string_free(a1 + 336);
  archive_entry_free(*(a1 + 32));
  free(a1);
}

uint64_t file_tree(uint64_t a1, uint64_t **a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v46 = a1;
  v45 = a2;
  v44 = *(a1 + 248);
  v43 = 0;
  v42 = 0;
  node = 0;
  v40 = 0;
  __s2 = 0;
  v38 = 0;
  path_component = 0;
  v42 = *a2;
  v43 = v44[3];
  if (v42[15])
  {
    v38 = v42[14];
    __s2 = v38;
  }

  else
  {
    v38 = &unk_1BF3442C6;
    __s2 = &unk_1BF3442C6;
  }

  if (v44[6] == v42[15] && !strcmp(v44[5], __s2))
  {
    if (file_add_child_tail(v44[4], v42))
    {
      v47 = 0;
      goto LABEL_45;
    }

    node = __archive_rb_tree_find_node((v44[4] + 40), v42[17]);
  }

  else
  {
    while (1)
    {
      path_component = get_path_component(v48, 256, __s2);
      if (!path_component)
      {
        break;
      }

      if (path_component < 0)
      {
        archive_set_error(v46, -1, "A name buffer is too small", v2, v3, v4, v5, v6, v29);
        file_free(v42);
        *v45 = 0;
        v47 = -30;
        goto LABEL_45;
      }

      node = file_find_child(v43, v48);
      if (!node || !*__s2)
      {
        goto LABEL_21;
      }

      if ((node[45] & 2) == 0)
      {
        v32 = archive_entry_pathname(node[4]);
        archive_entry_pathname(v42[4]);
        file_free(v42);
        *v45 = 0;
        v47 = -25;
        goto LABEL_45;
      }

      __s2 += path_component;
      if (*__s2 == 47)
      {
        ++__s2;
      }

      v43 = node;
    }

    node = 0;
LABEL_21:
    if (!node)
    {
      while (*__s2)
      {
        virtual_dir = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        archive_strncat(&v33, v38, __s2 - v38 + path_component);
        if (v33[v34 - 1] == 47)
        {
          v33[--v34] = 0;
        }

        virtual_dir = file_create_virtual_dir(v46, v44, v33);
        if (!virtual_dir)
        {
          archive_string_free(&v33);
          archive_set_error(v46, 12, "Can't allocate memory", v12, v13, v14, v15, v16, v29);
          file_free(v42);
          *v45 = 0;
          v47 = -30;
          goto LABEL_45;
        }

        archive_string_free(&v33);
        if (file_gen_utility_names(v46, virtual_dir) <= -25)
        {
          v47 = -30;
          goto LABEL_45;
        }

        file_add_child_tail(v43, virtual_dir);
        file_register(v44, virtual_dir);
        node = virtual_dir;
        __s2 += path_component;
        if (*__s2 == 47)
        {
          ++__s2;
        }

        path_component = get_path_component(v48, 256, __s2);
        if (path_component < 0)
        {
          archive_string_free(&v33);
          archive_set_error(v46, -1, "A name buffer is too small", v17, v18, v19, v20, v21, v29);
          file_free(v42);
          *v45 = 0;
          v47 = -30;
          goto LABEL_45;
        }

        v43 = node;
      }

      v44[4] = v43;
      v44[6] = 0;
      archive_string_ensure((v44 + 5), v43[15] + v43[18] + 2);
      if (v43[15] + v43[18])
      {
        if (v43[15])
        {
          v44[6] = 0;
          archive_string_concat(v44 + 5, v43 + 14);
          archive_strappend_char(v44 + 5, 47);
        }

        archive_string_concat(v44 + 5, v43 + 17);
      }

      else
      {
        *v44[5] = 0;
      }

      if (file_add_child_tail(v43, v42))
      {
        v47 = 0;
        goto LABEL_45;
      }

      node = __archive_rb_tree_find_node(v43 + 5, v42[17]);
    }
  }

  v31 = archive_entry_filetype(node[4]);
  if (v31 == archive_entry_filetype(v42[4]))
  {
    v40 = node[4];
    node[4] = v42[4];
    v42[4] = v40;
    *(node + 360) &= ~1u;
    file_free(v42);
    *v45 = node;
    v47 = 0;
  }

  else
  {
    v30 = v46;
    v22 = archive_entry_pathname(node[4]);
    file_free(v42);
    *v45 = 0;
    v47 = -25;
  }

LABEL_45:
  *MEMORY[0x1E69E9840];
  return v47;
}

uint64_t getalgsize(int a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 20;
    }

    if (a1 == 2)
    {
      return 16;
    }
  }

  return 0;
}

uint64_t save_xattrs(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v18 = *(a1 + 248);
  v13 = archive_entry_xattr_reset(*(a2 + 32));
  if (v13)
  {
LABEL_3:
    while (v13--)
    {
      archive_entry_xattr_next(*(v19 + 32), &v17, &v16, &v14);
      checksum_init(v18 + 148, *(v18 + 132));
      checksum_init(v18 + 340, *(v18 + 132));
      v15 = malloc_type_calloc(1uLL, 0x80uLL, 0x1020040EB626CC2uLL);
      if (!v15)
      {
        archive_set_error(v20, 12, "Can't allocate memory for xattr", v3, v4, v5, v6, v7, v11);
        return -30;
      }

      v8 = *(v19 + 184);
      *(v19 + 184) = v8 + 1;
      *v15 = v8;
      *(v15 + 2) = *(v18 + 8);
      *(v15 + 4) = v14;
      *(v15 + 10) = *(v18 + 136);
      checksum_update(v18 + 340, v16, v14);
      checksum_final(v18 + 340, v15 + 88);
      if (*(v15 + 10))
      {
        if (!xar_compression_init_encoder(v20))
        {
          *(v18 + 536) = v16;
          *(v18 + 544) = v14;
          while (1)
          {
            v12 = compression_code(v20, v18 + 536, 0);
            if (v12 >= 2)
            {
              break;
            }

            v9 = *(v18 + 568);
            v14 = 0x10000 - v9;
            checksum_update(v18 + 148, (v18 + 624), 0x10000 - v9);
            if (write_to_temp(v20, (v18 + 624), v14))
            {
              break;
            }

            if (v12)
            {
              checksum_final(v18 + 148, v15 + 48);
              *(v15 + 3) = *(v18 + 576);
              *(v15 + 1) = 0;
              **(v19 + 200) = v15;
              *(v19 + 200) = v15 + 8;
              if (!compression_end(v20, v18 + 536))
              {
                goto LABEL_3;
              }

              return -30;
            }

            *(v18 + 560) = v18 + 624;
            *(v18 + 568) = 0x10000;
          }
        }

LABEL_14:
        free(v15);
        return -30;
      }

      checksum_update(v18 + 148, v16, v14);
      checksum_final(v18 + 148, v15 + 48);
      if (write_to_temp(v20, v16, v14))
      {
        goto LABEL_14;
      }

      *(v15 + 3) = v14;
      *(v15 + 1) = 0;
      **(v19 + 200) = v15;
      *(v19 + 200) = v15 + 8;
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t file_register_hardlink(uint64_t a1, uint64_t a2)
{
  v11 = *(a1 + 248);
  archive_entry_set_nlink(*(a2 + 32), 1);
  v8 = archive_entry_hardlink(*(a2 + 32));
  if (v8)
  {
    node = __archive_rb_tree_find_node((v11 + 66312), v8);
    if (node)
    {
      *(a2 + 72) = 0;
      **(node + 40) = a2;
      *(node + 40) = a2 + 72;
      ++*(node + 24);
    }

    archive_entry_unset_size(*(a2 + 32));
    return 0;
  }

  v9 = malloc_type_malloc(0x30uLL, 0x10A004051F4DB44uLL);
  if (v9)
  {
    v9[6] = 1;
    *(a2 + 72) = 0;
    *(v9 + 4) = a2;
    *(v9 + 5) = a2 + 72;
    __archive_rb_tree_insert_node((v11 + 66312), v9);
    return 0;
  }

  archive_set_error(a1, 12, "Can't allocate memory", v2, v3, v4, v5, v6, 0);
  return -30;
}

uint64_t checksum_init(uint64_t result, int a2)
{
  *result = a2;
  if (a2)
  {
    if (a2 == 1)
    {
      return off_1F3DE4E10((result + 96));
    }

    else if (a2 == 2)
    {
      return __archive_digest((result + 4));
    }
  }

  return result;
}

uint64_t xar_compression_init_encoder(uint64_t a1)
{
  v4 = *(a1 + 248);
  v2 = *(v4 + 136);
  switch(v2)
  {
    case 1:
      inited = compression_init_encoder_gzip(a1, v4 + 536, *(v4 + 140), 1);
      break;
    case 2:
      inited = compression_init_encoder_bzip2(a1, v4 + 536, *(v4 + 140));
      break;
    case 3:
      inited = compression_init_encoder_lzma(a1, v4 + 536, *(v4 + 140));
      break;
    case 4:
      inited = compression_init_encoder_xz(a1, v4 + 536, *(v4 + 140), *(v4 + 144));
      break;
    default:
      inited = 0;
      break;
  }

  if (!inited)
  {
    *(v4 + 552) = 0;
    *(v4 + 560) = v4 + 624;
    *(v4 + 568) = 0x10000;
    *(v4 + 576) = 0;
  }

  return inited;
}

uint64_t file_add_child_tail(uint64_t a1, void *a2)
{
  if (__archive_rb_tree_insert_node((a1 + 40), a2))
  {
    a2[8] = 0;
    **(a1 + 104) = a2;
    *(a1 + 104) = a2 + 8;
    a2[11] = a1;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_path_component(uint64_t a1, int a2, char *a3)
{
  *&v4[4] = strchr(a3, 47);
  if (*&v4[4])
  {
    *v4 = *&v4[4] - a3;
  }

  else
  {
    *v4 = strlen(a3);
    if (!*v4)
    {
      return 0;
    }
  }

  if (*v4 <= a2 - 1)
  {
    __memcpy_chk();
    *(a1 + *v4) = 0;
    return *v4;
  }

  else
  {
    return -1;
  }
}

uint64_t checksum_update(uint64_t result, const void *a2, CC_LONG a3)
{
  v3 = *result;
  if (*result)
  {
    if (v3 == 1)
    {
      return off_1F3DE4E18((result + 96), a2, a3);
    }

    else if (v3 == 2)
    {
      return off_1F3DE4DE8((result + 4), a2, a3);
    }
  }

  return result;
}

uint64_t checksum_final(uint64_t result, uint64_t a2)
{
  v4 = result;
  v2 = *result;
  if (*result)
  {
    if (v2 == 1)
    {
      result = off_1F3DE4E20((result + 96), (a2 + 16));
      *(a2 + 8) = 20;
    }

    else if (v2 == 2)
    {
      result = off_1F3DE4DF0((result + 4), (a2 + 16));
      *(a2 + 8) = 16;
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }

  *a2 = *v4;
  return result;
}

uint64_t write_to_temp(unint64_t a1, char *a2, size_t a3)
{
  v12 = *(a1 + 248);
  while (a3)
  {
    v10 = write(*v12, a2, a3);
    if (v10 < 0)
    {
      v3 = __error();
      archive_set_error(a1, *v3, "fwrite function failed", v4, v5, v6, v7, v8, a1);
      return -30;
    }

    a3 -= v10;
    a2 += v10;
    *(v12 + 8) += v10;
  }

  return 0;
}

uint64_t compression_code(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 48))
  {
    return (*(a2 + 64))(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t compression_end(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    return (*(a2 + 72))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t compression_init_encoder_gzip(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  if (*(a2 + 48))
  {
    compression_end(a1, a2);
  }

  strm = malloc_type_calloc(1uLL, 0x70uLL, 0x10B0040E8CA615DuLL);
  if (strm)
  {
    strm->next_in = *a2;
    strm->avail_in = *(a2 + 8);
    strm->total_in = *(a2 + 16);
    strm->next_out = *(a2 + 24);
    strm->avail_out = *(a2 + 32);
    strm->total_out = *(a2 + 40);
    if (a4)
    {
      v9 = 15;
    }

    else
    {
      v9 = -15;
    }

    if (deflateInit2_(strm, a3, 8, v9, 8, 0, "1.2.12", 112))
    {
      free(strm);
      *(a2 + 56) = 0;
      archive_set_error(a1, -1, "Internal error initializing compression library", v10, v11, v12, v13, v14, v16);
      return -30;
    }

    else
    {
      *(a2 + 56) = strm;
      *(a2 + 48) = 1;
      *(a2 + 64) = compression_code_gzip;
      *(a2 + 72) = compression_end_gzip;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for gzip stream", v4, v5, v6, v7, v8, v16);
    return -30;
  }
}

uint64_t compression_init_encoder_bzip2(_DWORD *a1, uint64_t a2, int a3)
{
  if (*(a2 + 48))
  {
    compression_end(a1, a2);
  }

  strm = malloc_type_calloc(1uLL, 0x50uLL, 0x10900403A81BCDDuLL);
  if (strm)
  {
    strm->next_in = *a2;
    strm->avail_in = *(a2 + 8);
    *&strm->total_in_lo32 = *(a2 + 16);
    strm->next_out = *(a2 + 24);
    strm->avail_out = *(a2 + 32);
    *&strm->total_out_lo32 = *(a2 + 40);
    if (BZ2_bzCompressInit(strm, a3, 0, 30))
    {
      free(strm);
      *(a2 + 56) = 0;
      archive_set_error(a1, -1, "Internal error initializing compression library", v8, v9, v10, v11, v12, v14);
      return -30;
    }

    else
    {
      *(a2 + 56) = strm;
      *(a2 + 48) = 1;
      *(a2 + 64) = compression_code_bzip2;
      *(a2 + 72) = compression_end_bzip2;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for bzip2 stream", v3, v4, v5, v6, v7, v14);
    return -30;
  }
}

uint64_t compression_init_encoder_lzma(_DWORD *a1, uint64_t a2, int a3)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = 0;
  memset(__b, 0, sizeof(__b));
  if (*(v24 + 48))
  {
    compression_end(v25, v24);
  }

  if (lzma_lzma_preset())
  {
    *(v24 + 56) = 0;
    archive_set_error(v25, 12, "Internal error initializing compression library", v3, v4, v5, v6, v7, v19);
    return -30;
  }

  else
  {
    v22 = malloc_type_calloc(1uLL, 0x88uLL, 0x10F00405178BF3FuLL);
    if (v22)
    {
      memcpy(v22, &compression_init_encoder_lzma_lzma_init_data, 0x88uLL);
      HIDWORD(v19) = lzma_alone_encoder();
      if (HIDWORD(v19))
      {
        free(v22);
        *(v24 + 56) = 0;
        if (HIDWORD(v19) == 5)
        {
          archive_set_error(v25, 12, "Internal error initializing compression library: Cannot allocate memory", v13, v14, v15, v16, v17, v19);
        }

        else
        {
          archive_set_error(v25, -1, "Internal error initializing compression library: It's a bug in liblzma", v13, v14, v15, v16, v17, v19);
        }

        return -30;
      }

      else
      {
        *(v24 + 56) = v22;
        *(v24 + 48) = 1;
        *(v24 + 64) = compression_code_lzma;
        *(v24 + 72) = compression_end_lzma;
        return 0;
      }
    }

    else
    {
      archive_set_error(v25, 12, "Can't allocate memory for lzma stream", v8, v9, v10, v11, v12, v19);
      return -30;
    }
  }
}

uint64_t compression_init_encoder_xz(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = 0;
  v24 = 0;
  memset(__b, 0, sizeof(__b));
  if (*(v28 + 48))
  {
    compression_end(v29, v28);
  }

  v25 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10F00405178BF3FuLL);
  if (v25)
  {
    v24 = v25 + 136;
    if (v27 > 9)
    {
      v27 = 9;
    }

    if (lzma_lzma_preset())
    {
      free(v25);
      *(v28 + 56) = 0;
      archive_set_error(v29, 12, "Internal error initializing compression library", v9, v10, v11, v12, v13, v20);
      return -30;
    }

    else
    {
      *v24 = 33;
      v24[1] = __b;
      v24[2] = -1;
      memcpy(v25, &compression_init_encoder_xz_lzma_init_data, 0x88uLL);
      v21 = lzma_stream_encoder();
      if (v21)
      {
        free(v25);
        *(v28 + 56) = 0;
        if (v21 == 5)
        {
          archive_set_error(v29, 12, "Internal error initializing compression library: Cannot allocate memory", v14, v15, v16, v17, v18, v20);
        }

        else
        {
          archive_set_error(v29, -1, "Internal error initializing compression library: It's a bug in liblzma", v14, v15, v16, v17, v18, v20);
        }

        return -30;
      }

      else
      {
        *(v28 + 56) = v25;
        *(v28 + 48) = 1;
        *(v28 + 64) = compression_code_lzma;
        *(v28 + 72) = compression_end_lzma;
        return 0;
      }
    }
  }

  else
  {
    archive_set_error(v29, 12, "Can't allocate memory for xz stream", v4, v5, v6, v7, v8, v20);
    return -30;
  }
}

uint64_t compression_code_gzip(_DWORD *a1, Bytef **a2, int a3)
{
  strm = a2[7];
  strm->next_in = *a2;
  strm->avail_in = a2[1];
  strm->total_in = a2[2];
  strm->next_out = a2[3];
  strm->avail_out = a2[4];
  strm->total_out = a2[5];
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  v10 = deflate(strm, v3);
  *a2 = strm->next_in;
  a2[1] = strm->avail_in;
  a2[2] = strm->total_in;
  a2[3] = strm->next_out;
  a2[4] = strm->avail_out;
  a2[5] = strm->total_out;
  if (v10)
  {
    if (v10 == 1)
    {
      return 1;
    }

    else
    {
      archive_set_error(a1, -1, "GZip compression failed: deflate() call returned status %d", v4, v5, v6, v7, v8, v10);
      return -30;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t compression_end_gzip(_DWORD *a1, uint64_t a2)
{
  strm = *(a2 + 56);
  v9 = deflateEnd(strm);
  free(strm);
  *(a2 + 56) = 0;
  *(a2 + 48) = 0;
  if (v9)
  {
    archive_set_error(a1, -1, "Failed to clean up compressor", v2, v3, v4, v5, v6, v8);
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t compression_code_bzip2(_DWORD *a1, char **a2, int a3)
{
  strm = a2[7];
  strm->next_in = *a2;
  strm->avail_in = a2[1];
  *&strm->total_in_lo32 = a2[2];
  strm->next_out = a2[3];
  strm->avail_out = a2[4];
  *&strm->total_out_lo32 = a2[5];
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v10 = BZ2_bzCompress(strm, v3);
  *a2 = strm->next_in;
  a2[1] = strm->avail_in;
  a2[2] = (strm->total_in_lo32 + (strm->total_in_hi32 << 32));
  a2[3] = strm->next_out;
  a2[4] = strm->avail_out;
  a2[5] = (strm->total_out_lo32 + (strm->total_out_hi32 << 32));
  if (v10 == 1 || v10 == 3)
  {
    return 0;
  }

  else if (v10 == 4)
  {
    return 1;
  }

  else
  {
    archive_set_error(a1, -1, "Bzip2 compression failed: BZ2_bzCompress() call returned status %d", v4, v5, v6, v7, v8, v10);
    return -30;
  }
}

uint64_t compression_end_bzip2(_DWORD *a1, uint64_t a2)
{
  strm = *(a2 + 56);
  v9 = BZ2_bzCompressEnd(strm);
  free(strm);
  *(a2 + 56) = 0;
  *(a2 + 48) = 0;
  if (v9)
  {
    archive_set_error(a1, -1, "Failed to clean up compressor", v2, v3, v4, v5, v6, v8);
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t compression_code_lzma(_DWORD *a1, void *a2)
{
  v15 = a2[7];
  *v15 = *a2;
  v15[1] = a2[1];
  v15[2] = a2[2];
  v15[3] = a2[3];
  v15[4] = a2[4];
  v15[5] = a2[5];
  v14 = lzma_code();
  *a2 = *v15;
  a2[1] = v15[1];
  a2[2] = v15[2];
  a2[3] = v15[3];
  a2[4] = v15[4];
  a2[5] = v15[5];
  if (v14)
  {
    if (v14 == 1)
    {
      return 1;
    }

    else
    {
      if (v14 == 6)
      {
        v7 = lzma_memusage();
        archive_set_error(a1, 12, "lzma compression error: %ju MiB would have been needed", v8, v9, v10, v11, v12, (v7 + 0xFFFFF) / 0x100000uLL);
      }

      else
      {
        archive_set_error(a1, -1, "lzma compression failed: lzma_code() call returned status %d", v2, v3, v4, v5, v6, v14);
      }

      return -30;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t compression_end_lzma(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  lzma_end();
  free(v3);
  result = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

unint64_t file_connect_hardlink_files(uint64_t a1)
{
  result = __archive_rb_tree_iterate((a1 + 66312), 0, 0);
  for (i = result; i; i = result)
  {
    v3 = *(i + 32);
    archive_entry_set_nlink(v3[4], *(i + 24));
    if (*(i + 24) > 1)
    {
      v3[10] = v3;
    }

    for (j = v3[9]; j; j = j[9])
    {
      j[10] = v3;
      archive_entry_set_nlink(j[4], *(i + 24));
    }

    result = __archive_rb_tree_iterate((a1 + 66312), i, 1u);
  }

  return result;
}

uint64_t make_toc(unint64_t a1)
{
  v64 = *(a1 + 248);
  v52 = -30;
  v61 = 0;
  v62 = xmlBufferCreate();
  if (!v62)
  {
    archive_set_error(a1, 12, "xmlBufferCreate() couldn't create xml buffer", v1, v2, v3, v4, v5, v50);
    goto LABEL_49;
  }

  v61 = xmlNewTextWriterMemory(v62, 0);
  if (!v61)
  {
    archive_set_error(a1, -1, "xmlNewTextWriterMemory() couldn't create xml writer", v6, v7, v8, v9, v10, v50);
    goto LABEL_49;
  }

  started = xmlTextWriterStartDocument(v61, "1.0", "UTF-8", 0);
  if ((started & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  v54 = xmlTextWriterSetIndent(v61, 4);
  if ((v54 & 0x80000000) != 0)
  {
    archive_set_error(a1, -1, "xmlTextWriterSetIndent() failed: %d", v16, v17, v18, v19, v20, v54);
    goto LABEL_49;
  }

  v55 = xmlTextWriterStartElement(v61, "xar");
  if ((v55 & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  started = xmlTextWriterStartElement(v61, "toc");
  if ((started & 0x80000000) != 0)
  {
LABEL_6:
    archive_set_error(a1, -1, "xmlTextWriterStartDocument() failed: %d", v11, v12, v13, v14, v15, started);
    goto LABEL_49;
  }

  v26 = time(0);
  if ((xmlwrite_time(a1, v61, "creation-time", v26, 0) & 0x80000000) == 0)
  {
    v60 = getalgsize(*(v64 + 128));
    if (!v60)
    {
LABEL_21:
      v63 = *(v64 + 24);
      while (v63 == *(v63 + 88) || !make_file_entry(a1, v61, v63))
      {
        if ((*(v63 + 360) & 2) != 0 && *(v63 + 96))
        {
          v63 = *(v63 + 96);
          v55 = xmlTextWriterStartElement(v61, "file");
          if ((v55 & 0x80000000) != 0)
          {
            goto LABEL_34;
          }

          v56 = xmlTextWriterWriteFormatAttribute(v61, "id", "%d", *(v63 + 24));
          if ((v56 & 0x80000000) != 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          while (v63 != *(v63 + 88))
          {
            v57 = xmlTextWriterEndElement(v61);
            if ((v57 & 0x80000000) != 0)
            {
              goto LABEL_20;
            }

            if (*(v63 + 64))
            {
              v63 = *(v63 + 64);
              v55 = xmlTextWriterStartElement(v61, "file");
              if ((v55 & 0x80000000) != 0)
              {
                goto LABEL_34;
              }

              v56 = xmlTextWriterWriteFormatAttribute(v61, "id", "%d", *(v63 + 24));
              if ((v56 & 0x80000000) == 0)
              {
                break;
              }

              goto LABEL_36;
            }

            v63 = *(v63 + 88);
          }
        }

        if (v63 == *(v63 + 88))
        {
          v58 = xmlTextWriterEndDocument(v61);
          if ((v58 & 0x80000000) != 0)
          {
            archive_set_error(a1, -1, "xmlTextWriterEndDocument() failed: %d", v42, v43, v44, v45, v46, v58);
          }

          else
          {
            *(v64 + 66184) = *(v64 + 8);
            *(v64 + 66200) = v62->use;
            checksum_init(v64 + 148, *(v64 + 128));
            if (!compression_init_encoder_gzip(a1, v64 + 536, 6, 1))
            {
              *(v64 + 536) = v62->content;
              *(v64 + 544) = v62->use;
              *(v64 + 552) = 0;
              *(v64 + 560) = v64 + 624;
              *(v64 + 568) = 0x10000;
              *(v64 + 576) = 0;
              while (1)
              {
                v59 = compression_code(a1, v64 + 536, 0);
                if (v59 >= 2)
                {
                  break;
                }

                v47 = *(v64 + 568);
                v51 = 0x10000 - v47;
                checksum_update(v64 + 148, (v64 + 624), 0x10000 - v47);
                if (write_to_temp(a1, (v64 + 624), v51))
                {
                  break;
                }

                if (v59 == 1)
                {
                  if (!compression_end(a1, v64 + 536))
                  {
                    *(v64 + 66192) = *(v64 + 576);
                    *(v64 + 66208) = 1;
                    checksum_final(v64 + 148, v64 + 66216);
                    v52 = 0;
                  }

                  goto LABEL_49;
                }

                *(v64 + 560) = v64 + 624;
                *(v64 + 568) = 0x10000;
              }
            }
          }

          goto LABEL_49;
        }
      }

      goto LABEL_49;
    }

    v55 = xmlTextWriterStartElement(v61, "checksum");
    if ((v55 & 0x80000000) != 0)
    {
LABEL_34:
      archive_set_error(a1, -1, "xmlTextWriterStartElement() failed: %d", v21, v22, v23, v24, v25, v55);
      goto LABEL_49;
    }

    v27 = getalgname(*(v64 + 128));
    v56 = xmlTextWriterWriteAttribute(v61, "style", v27);
    if ((v56 & 0x80000000) != 0)
    {
LABEL_36:
      archive_set_error(a1, -1, "xmlTextWriterWriteAttribute() failed: %d", v28, v29, v30, v31, v32, v56);
      goto LABEL_49;
    }

    if ((xmlwrite_string(a1, v61, "offset", "0") & 0x80000000) == 0 && (xmlwrite_fstring(a1, v61, "size", "%d", v33, v34, v35, v36, v60) & 0x80000000) == 0)
    {
      v57 = xmlTextWriterEndElement(v61);
      if ((v57 & 0x80000000) != 0)
      {
LABEL_20:
        archive_set_error(a1, -1, "xmlTextWriterEndElement() failed: %d", v37, v38, v39, v40, v41, v57);
        goto LABEL_49;
      }

      goto LABEL_21;
    }
  }

LABEL_49:
  if (v61)
  {
    xmlFreeTextWriter(v61);
  }

  if (v62)
  {
    xmlBufferFree(v62);
  }

  return v52;
}

_BYTE *archive_be32enc(_BYTE *result, int a2)
{
  *result = HIBYTE(a2);
  result[1] = BYTE2(a2);
  result[2] = BYTE1(a2);
  result[3] = a2;
  return result;
}

_BYTE *archive_be16enc(_BYTE *result, __int16 a2)
{
  *result = HIBYTE(a2);
  result[1] = a2;
  return result;
}

_BYTE *archive_be64enc(_BYTE *a1, uint64_t a2)
{
  v4 = a2;
  archive_be32enc(a1, SHIDWORD(a2));
  return archive_be32enc(a1 + 4, v4);
}

uint64_t copy_out(uint64_t a1, off_t a2, size_t a3)
{
  v25 = *(a1 + 248);
  if (lseek(*v25, a2, 0) < 0)
  {
    v3 = __error();
    archive_set_error(a1, *v3, "lseek failed", v4, v5, v6, v7, v8, v22);
    return -30;
  }

  else
  {
    while (a3)
    {
      if (a3 > *(v25 + 66160))
      {
        v9 = read(*v25, (v25 + 624 + 0x10000 - *(v25 + 66160)), *(v25 + 66160));
      }

      else
      {
        v9 = read(*v25, (v25 + 624 + 0x10000 - *(v25 + 66160)), a3);
      }

      v23 = v9;
      if (v9 < 0)
      {
        v15 = __error();
        archive_set_error(a1, *v15, "Can't read temporary file(%jd)", v16, v17, v18, v19, v20, v23);
        return -30;
      }

      if (!v9)
      {
        archive_set_error(a1, 0, "Truncated xar archive", v10, v11, v12, v13, v14, v22);
        return -30;
      }

      *(v25 + 66160) -= v9;
      a3 -= v9;
      if (!*(v25 + 66160))
      {
        v24 = flush_wbuff(a1);
        if (v24)
        {
          return v24;
        }
      }
    }

    return 0;
  }
}

uint64_t flush_wbuff(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = __archive_write_output(a1, v3 + 624, 0x10000 - *(v3 + 66160));
  if (v2)
  {
    return v2;
  }

  else
  {
    *(v3 + 66160) = 0x10000;
    return 0;
  }
}

uint64_t xmlwrite_time(_DWORD *a1, xmlTextWriter *a2, const xmlChar *a3, time_t a4, int a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  memset(&__b, 0, sizeof(__b));
  gmtime_r(&v9, &__b);
  memset(v13, 0, sizeof(v13));
  strftime(v13, 0x64uLL, "%Y-%m-%dT%H:%M:%S", &__b);
  if (v8)
  {
    __strcat_chk();
  }

  v6 = xmlwrite_string(v12, v11, v10, v13);
  *MEMORY[0x1E69E9840];
  return v6;
}

const char *getalgname(int a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return "sha1";
    }

    if (a1 == 2)
    {
      return "md5";
    }
  }

  return 0;
}

uint64_t xmlwrite_string(_DWORD *a1, xmlTextWriter *a2, const xmlChar *a3, const xmlChar *a4)
{
  if (a4)
  {
    started = xmlTextWriterStartElement(a2, a3);
    if ((started & 0x80000000) != 0)
    {
      archive_set_error(a1, -1, "xmlTextWriterStartElement() failed: %d", v4, v5, v6, v7, v8, started);
      return -30;
    }

    else if (a4 && (v21 = xmlTextWriterWriteString(a2, a4), (v21 & 0x80000000) != 0))
    {
      archive_set_error(a1, -1, "xmlTextWriterWriteString() failed: %d", v9, v10, v11, v12, v13, v21);
      return -30;
    }

    else
    {
      v22 = xmlTextWriterEndElement(a2);
      if ((v22 & 0x80000000) != 0)
      {
        archive_set_error(a1, -1, "xmlTextWriterEndElement() failed: %d", v14, v15, v16, v17, v18, v22);
        return -30;
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

uint64_t xmlwrite_fstring(uint64_t a1, xmlTextWriter *a2, const xmlChar *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v10 = *(a1 + 248);
  *(v10 + 112) = 0;
  archive_string_vsprintf((v10 + 104), a4, &a9);
  return xmlwrite_string(a1, a2, a3, *(v10 + 104));
}

uint64_t make_file_entry(uint64_t a1, xmlTextWriter *a2, uint64_t a3)
{
  v154 = a1;
  v153 = a2;
  v152 = a3;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  i = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  started = 0;
  v139 = 0;
  outlen = 0;
  inlen = 0;
  v151 = *(a1 + 248);
  v139 = 0;
  v3 = *(a3 + 144);
  inlen = v3;
  outlen = v3;
  v143 = malloc_type_malloc(v3, 0x3E03C5E9uLL);
  if (v143)
  {
    started = UTF8Toisolat1(v143, &outlen, *(v152 + 136), &inlen);
    free(v143);
    if ((started & 0x80000000) != 0)
    {
      started = xmlTextWriterStartElement(v153, "name");
      if ((started & 0x80000000) != 0)
      {
LABEL_5:
        archive_set_error(v154, -1, "xmlTextWriterStartElement() failed: %d", v9, v10, v11, v12, v13, started);
        return -30;
      }

      started = xmlTextWriterWriteAttribute(v153, "enctype", "base64");
      if ((started & 0x80000000) != 0)
      {
        archive_set_error(v154, -1, "xmlTextWriterWriteAttribute() failed: %d", v14, v15, v16, v17, v18, started);
        return -30;
      }

      started = xmlTextWriterWriteBase64(v153, *(v152 + 136), 0, *(v152 + 144));
      if ((started & 0x80000000) != 0)
      {
        archive_set_error(v154, -1, "xmlTextWriterWriteBase64() failed: %d", v19, v20, v21, v22, v23, started);
        return -30;
      }

      started = xmlTextWriterEndElement(v153);
      if ((started & 0x80000000) != 0)
      {
LABEL_11:
        archive_set_error(v154, -1, "xmlTextWriterEndElement() failed: %d", v24, v25, v26, v27, v28, started);
        return -30;
      }
    }

    else
    {
      started = xmlwrite_string(v154, v153, "name", *(v152 + 136));
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    v149 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v133 = archive_entry_filetype(*(v152 + 32));
    switch(v133)
    {
      case 4096:
        v150 = "fifo";
        break;
      case 8192:
        v150 = "character special";
        break;
      case 16384:
        v150 = "directory";
        break;
      case 24576:
        v150 = "block special";
        break;
      case 32768:
        goto LABEL_120;
      case 40960:
        v150 = "symlink";
        break;
      case 49152:
        v150 = "socket";
        break;
      default:
LABEL_120:
        if (*(v152 + 80))
        {
          v150 = "hardlink";
          v149 = "link";
          if (*(v152 + 80) == v152)
          {
            v146 = 0;
            archive_strncat(&v145, "original", 8uLL);
          }

          else
          {
            archive_string_sprintf(&v145, "%d", v29, v30, v31, v32, v33, v34, *(*(v152 + 80) + 24));
          }
        }

        else
        {
          v150 = "file";
        }

        break;
    }

    started = xmlwrite_string_attr(v154, v153, "type", v150, v149, v145);
    archive_string_free(&v145);
    if ((started & 0x80000000) != 0)
    {
      return -30;
    }

    if (*(v152 + 360))
    {
      return 0;
    }

    v132 = archive_entry_filetype(*(v152 + 32));
    if (v132 == 0x2000 || v132 == 24576)
    {
      started = xmlTextWriterStartElement(v153, "device");
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_5;
      }

      v131 = v154;
      v130 = v153;
      v35 = archive_entry_rdevmajor(*(v152 + 32));
      started = xmlwrite_fstring(v131, v130, "major", "%d", v36, v37, v38, v39, v35);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      v129 = v154;
      v128 = v153;
      v40 = archive_entry_rdevminor(*(v152 + 32));
      started = xmlwrite_fstring(v129, v128, "minor", "%d", v41, v42, v43, v44, v40);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlTextWriterEndElement(v153);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_11;
      }
    }

    else if (v132 == 40960)
    {
      started = xmlwrite_string_attr(v154, v153, "link", *(v152 + 160), "type", "broken");
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    v127 = v154;
    v126 = v153;
    v45 = archive_entry_ino64(*(v152 + 32));
    started = xmlwrite_fstring(v127, v126, "inode", "%jd", v46, v47, v48, v49, v45);
    if ((started & 0x80000000) != 0)
    {
      return -30;
    }

    if (archive_entry_dev(*(v152 + 32)))
    {
      v125 = v154;
      v124 = v153;
      v50 = archive_entry_dev(*(v152 + 32));
      started = xmlwrite_fstring(v125, v124, "deviceno", "%d", v51, v52, v53, v54, v50);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    v123 = v154;
    v122 = v153;
    v55 = archive_entry_mode(*(v152 + 32));
    started = xmlwrite_mode(v123, v122, "mode", v55);
    if ((started & 0x80000000) != 0)
    {
      return -30;
    }

    v121 = v154;
    v120 = v153;
    v56 = archive_entry_uid(*(v152 + 32));
    started = xmlwrite_fstring(v121, v120, "uid", "%d", v57, v58, v59, v60, v56);
    if ((started & 0x80000000) != 0)
    {
      return -30;
    }

    started = _archive_entry_uname_l(*(v152 + 32), &v142, &v141, *(v151 + 616));
    if (started)
    {
      if (*__error() == 12)
      {
        archive_set_error(v154, 12, "Can't allocate memory for Uname", v61, v62, v63, v64, v65, v108);
        return -30;
      }

      v119 = v154;
      v66 = archive_entry_uname(*(v152 + 32));
      archive_set_error(v119, 79, "Can't translate uname '%s' to UTF-8", v67, v68, v69, v70, v71, v66);
      v139 = -20;
    }

    if (v141)
    {
      started = xmlwrite_string(v154, v153, "user", v142);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    v118 = v154;
    v117 = v153;
    v72 = archive_entry_gid(*(v152 + 32));
    started = xmlwrite_fstring(v118, v117, "gid", "%d", v73, v74, v75, v76, v72);
    if ((started & 0x80000000) != 0)
    {
      return -30;
    }

    started = _archive_entry_gname_l(*(v152 + 32), &v142, &v141, *(v151 + 616));
    if (started)
    {
      if (*__error() == 12)
      {
        archive_set_error(v154, 12, "Can't allocate memory for Gname", v77, v78, v79, v80, v81, v109);
        return -30;
      }

      v116 = v154;
      v82 = archive_entry_gname(*(v152 + 32));
      archive_set_error(v116, 79, "Can't translate gname '%s' to UTF-8", v83, v84, v85, v86, v87, v82);
      v139 = -20;
    }

    if (v141)
    {
      started = xmlwrite_string(v154, v153, "group", v142);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    if (archive_entry_ctime_is_set(*(v152 + 32)))
    {
      v115 = v154;
      v114 = v153;
      v88 = archive_entry_ctime(*(v152 + 32));
      started = xmlwrite_time(v115, v114, "ctime", v88, 1);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    if (archive_entry_mtime_is_set(*(v152 + 32)))
    {
      v113 = v154;
      v112 = v153;
      v89 = archive_entry_mtime(*(v152 + 32));
      started = xmlwrite_time(v113, v112, "mtime", v89, 1);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    if (archive_entry_atime_is_set(*(v152 + 32)))
    {
      v111 = v154;
      v110 = v153;
      v90 = archive_entry_atime(*(v152 + 32));
      started = xmlwrite_time(v111, v110, "atime", v90, 1);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }
    }

    v148 = archive_entry_fflags_text(*(v152 + 32));
    if (v148)
    {
      started = make_fflags_entry(v154, v153, "flags", v148);
      if ((started & 0x80000000) != 0)
      {
        return started;
      }

      started = make_fflags_entry(v154, v153, "ext2", v148);
      if ((started & 0x80000000) != 0)
      {
        return started;
      }
    }

    archive_entry_xattr_reset(*(v152 + 32));
    for (i = *(v152 + 192); i; i = *(i + 8))
    {
      v136 = 0;
      v135 = 0;
      v134 = 0;
      archive_entry_xattr_next(*(v152 + 32), &v136, &v135, &v134);
      started = xmlTextWriterStartElement(v153, "ea");
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      started = xmlTextWriterWriteFormatAttribute(v153, "id", "%d", *i);
      if ((started & 0x80000000) != 0)
      {
        archive_set_error(v154, -1, "xmlTextWriterWriteAttribute() failed: %d", v96, v97, v98, v99, v100, started);
        return -30;
      }

      started = xmlwrite_heap(v154, v153, i, v96, v97, v98, v99, v100);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlwrite_string(v154, v153, "name", v136);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlTextWriterEndElement(v153);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_115;
      }
    }

    if (*(v152 + 232))
    {
      started = xmlTextWriterStartElement(v153, "data");
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      started = xmlwrite_heap(v154, v153, v152 + 208, v91, v92, v93, v94, v95);
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlTextWriterEndElement(v153);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_115;
      }
    }

    if (*(v152 + 344))
    {
      started = xmlTextWriterStartElement(v153, "content");
      if ((started & 0x80000000) != 0)
      {
LABEL_109:
        archive_set_error(v154, -1, "xmlTextWriterStartElement() failed: %d", v91, v92, v93, v94, v95, started);
        return -30;
      }

      started = xmlwrite_string(v154, v153, "interpreter", *(v152 + 336));
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlwrite_string(v154, v153, "type", "script");
      if ((started & 0x80000000) != 0)
      {
        return -30;
      }

      started = xmlTextWriterEndElement(v153);
      if ((started & 0x80000000) != 0)
      {
LABEL_115:
        archive_set_error(v154, -1, "xmlTextWriterEndElement() failed: %d", v101, v102, v103, v104, v105, started);
        return -30;
      }
    }

    return v139;
  }

  archive_set_error(v154, 12, "Can't allocate memory", v4, v5, v6, v7, v8, v107);
  return -30;
}

uint64_t xmlwrite_string_attr(_DWORD *a1, xmlTextWriter *a2, const xmlChar *a3, const xmlChar *a4, const xmlChar *a5, const xmlChar *a6)
{
  started = xmlTextWriterStartElement(a2, a3);
  if ((started & 0x80000000) != 0)
  {
    archive_set_error(a1, -1, "xmlTextWriterStartElement() failed: %d", v6, v7, v8, v9, v10, started);
    return -30;
  }

  else if (a5 && a6 && (v28 = xmlTextWriterWriteAttribute(a2, a5, a6), (v28 & 0x80000000) != 0))
  {
    archive_set_error(a1, -1, "xmlTextWriterWriteAttribute() failed: %d", v11, v12, v13, v14, v15, v28);
    return -30;
  }

  else if (a4 && (v29 = xmlTextWriterWriteString(a2, a4), (v29 & 0x80000000) != 0))
  {
    archive_set_error(a1, -1, "xmlTextWriterWriteString() failed: %d", v16, v17, v18, v19, v20, v29);
    return -30;
  }

  else
  {
    v30 = xmlTextWriterEndElement(a2);
    if ((v30 & 0x80000000) != 0)
    {
      archive_set_error(a1, -1, "xmlTextWriterEndElement() failed: %d", v21, v22, v23, v24, v25, v30);
      return -30;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t xmlwrite_mode(_DWORD *a1, xmlTextWriter *a2, const xmlChar *a3, unsigned __int16 a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5[0] = 48;
  v5[1] = ((a4 >> 6) & 7) + 48;
  v5[2] = ((a4 >> 3) & 7) + 48;
  v5[3] = (a4 & 7) + 48;
  v5[4] = 0;
  return xmlwrite_string(a1, a2, a3, v5);
}

uint64_t make_fflags_entry(_DWORD *a1, xmlTextWriter *a2, const char *a3, char *a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v30[0] = 0;
  v30[1] = 0;
  if (!strcmp(a3, "ext2"))
  {
    v23 = make_fflags_entry_flagext2;
  }

  else
  {
    v23 = make_fflags_entry_flagbsd;
  }

  v20 = 0;
  __s = a4;
  do
  {
    v16 = strchr(__s, 44);
    if (!v16)
    {
      v16 = &__s[strlen(__s)];
    }

    for (i = v23; *i; i += 2)
    {
      if (!(*i)[v16 - __s] && *__s == **i && !strncmp(__s, *i, v16 - __s))
      {
        v4 = v20++;
        v30[v4] = i;
        break;
      }
    }

    if (*v16 == 44)
    {
      __s = v16 + 1;
    }

    else
    {
      __s = 0;
    }
  }

  while (__s);
  if (v20 <= 0)
  {
    goto LABEL_29;
  }

  started = xmlTextWriterStartElement(a2, a3);
  if ((started & 0x80000000) == 0)
  {
    for (j = 0; j < v20; ++j)
    {
      v18 = xmlwrite_string(a1, a2, *(v30[j] + 8), 0);
      if (v18)
      {
        v29 = v18;
        goto LABEL_30;
      }
    }

    v19 = xmlTextWriterEndElement(a2);
    if ((v19 & 0x80000000) != 0)
    {
      archive_set_error(a1, -1, "xmlTextWriterEndElement() failed: %d", v10, v11, v12, v13, v14, v19);
      v29 = -30;
      goto LABEL_30;
    }

LABEL_29:
    v29 = 0;
    goto LABEL_30;
  }

  archive_set_error(a1, -1, "xmlTextWriterStartElement() failed: %d", v5, v6, v7, v8, v9, started);
  v29 = -30;
LABEL_30:
  *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t xmlwrite_heap(_DWORD *a1, xmlTextWriter *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((xmlwrite_fstring(a1, a2, "length", "%ju", a5, a6, a7, a8, *(a3 + 24)) & 0x80000000) != 0)
  {
    return -30;
  }

  else if ((xmlwrite_fstring(a1, a2, "offset", "%ju", v8, v9, v10, v11, *(a3 + 16)) & 0x80000000) != 0)
  {
    return -30;
  }

  else if ((xmlwrite_fstring(a1, a2, "size", "%ju", v12, v13, v14, v15, *(a3 + 32)) & 0x80000000) != 0)
  {
    return -30;
  }

  else
  {
    v18 = *(a3 + 40);
    switch(v18)
    {
      case 1:
        v16 = xmlwrite_string_attr(a1, a2, "encoding", 0, "style", "application/x-gzip");
        break;
      case 2:
        v16 = xmlwrite_string_attr(a1, a2, "encoding", 0, "style", "application/x-bzip2");
        break;
      case 3:
        v16 = xmlwrite_string_attr(a1, a2, "encoding", 0, "style", "application/x-lzma");
        break;
      case 4:
        v16 = xmlwrite_string_attr(a1, a2, "encoding", 0, "style", "application/x-xz");
        break;
      default:
        v16 = xmlwrite_string_attr(a1, a2, "encoding", 0, "style", "application/octet-stream");
        break;
    }

    if (v16 < 0)
    {
      return -30;
    }

    else if ((xmlwrite_sum(a1, a2, "archived-checksum", a3 + 48) & 0x80000000) != 0)
    {
      return -30;
    }

    else if ((xmlwrite_sum(a1, a2, "extracted-checksum", a3 + 88) & 0x80000000) != 0)
    {
      return -30;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t xmlwrite_sum(_DWORD *a1, xmlTextWriter *a2, const xmlChar *a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(a4 + 8))
  {
    goto LABEL_8;
  }

  v10 = getalgname(*a4);
  v9 = getalgsize(*a4);
  if (!v10)
  {
    goto LABEL_8;
  }

  v8 = v16;
  v7 = (a4 + 16);
  for (i = 0; i < v9; ++i)
  {
    *v8 = a0123456789abcd[*v7 >> 4];
    v4 = v8 + 1;
    v8 += 2;
    *v4 = a0123456789abcd[*v7++ & 0xF];
  }

  *v8 = 0;
  if ((xmlwrite_string_attr(a1, a2, a3, v16, "style", v10) & 0x80000000) != 0)
  {
    v15 = -30;
  }

  else
  {
LABEL_8:
    v15 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v15;
}

void file_free_hardlinks(uint64_t a1)
{
  v2 = 0;
  for (i = __archive_rb_tree_iterate((a1 + 66312), 0, 0); ; i = v2)
  {
    v1 = 0;
    if (i)
    {
      v2 = __archive_rb_tree_iterate((a1 + 66312), i, 1u);
      v1 = 1;
    }

    if ((v1 & 1) == 0)
    {
      break;
    }

    __archive_rb_tree_remove_node((a1 + 66312), i);
    free(i);
  }
}

void file_free_register(uint64_t a1)
{
  for (i = *(a1 + 66296); i; i = v1)
  {
    v1 = *(i + 56);
    file_free(i);
  }
}

uint64_t file_hd_cmp_node(uint64_t a1, uint64_t a2)
{
  __s1 = archive_entry_pathname(*(*(a1 + 32) + 32));
  v2 = archive_entry_pathname(*(*(a2 + 32) + 32));
  return strcmp(__s1, v2);
}

uint64_t archive_read_support_filter_xz(int *a1)
{
  if (archive_allow_entitlement_filter("xz"))
  {
    if (__archive_read_register_bidder(a1, 0, "xz", xz_bidder_vtable))
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
    archive_set_error(a1, -1, "Filter not allow-listed in entitlement", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t archive_read_support_filter_lzma(int *a1)
{
  if (archive_allow_entitlement_filter("lzma"))
  {
    if (__archive_read_register_bidder(a1, 0, "lzma", lzma_bidder_vtable))
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
    archive_set_error(a1, -1, "Filter not allow-listed in entitlement", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t archive_read_support_filter_lzip(int *a1)
{
  if (archive_allow_entitlement_filter("lzip"))
  {
    if (__archive_read_register_bidder(a1, 0, "lzip", lzip_bidder_vtable))
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
    archive_set_error(a1, -1, "Format not allow-listed in entitlement", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t xz_bidder_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1;
  v11 = a2;
  __s1 = 0;
  v9 = 0;
  __s1 = __archive_read_filter_ahead(a2, 6uLL, &v9, a4, a5, a6, a7, a8);
  if (__s1)
  {
    if (!memcmp(__s1, &unk_1BF33B230, 6uLL))
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
    return 0;
  }
}

uint64_t xz_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 6;
  *(a1 + 48) = "xz";
  return xz_lzma_bidder_init(a1);
}

uint64_t xz_lzma_bidder_init(uint64_t a1)
{
  v15 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10F0040777D52FDuLL);
  v16 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  if (v15 && v16)
  {
    *(a1 + 40) = v15;
    *(v15 + 18) = 0x10000;
    *(v15 + 17) = v16;
    *(a1 + 32) = xz_lzma_reader_vtable;
    *(v15 + 1) = 0;
    *(v15 + 3) = *(v15 + 17);
    *(v15 + 4) = *(v15 + 18);
    *(v15 + 41) = 0;
    if (*(a1 + 56) == 9)
    {
      *(v15 + 161) = 0;
      return 0;
    }

    else
    {
      *(v15 + 161) = 1;
      if (*(a1 + 56) == 6)
      {
        v14 = lzma_stream_decoder();
      }

      else
      {
        v14 = lzma_alone_decoder();
      }

      if (v14)
      {
        set_error_0(a1, v14, v6, v7, v8, v9, v10, v11);
        free(*(v15 + 17));
        free(v15);
        *(a1 + 40) = 0;
        return -30;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for xz decompression", v1, v2, v3, v4, v5, v13);
    free(v16);
    free(v15);
    return -30;
  }
}

_DWORD *set_error_0(_DWORD *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v8) = a2;
  LODWORD(v8) = a2;
  if (a2 > 1)
  {
    switch(a2)
    {
      case 5u:
        return archive_set_error(*(result + 3), 12, "Lzma library error: Cannot allocate memory", a4, a5, a6, a7, a8, v8);
      case 6u:
        return archive_set_error(*(result + 3), 12, "Lzma library error: Out of memory", a4, a5, a6, a7, a8, v8);
      case 7u:
        return archive_set_error(*(result + 3), -1, "Lzma library error: format not recognized", a4, a5, a6, a7, a8, v8);
      case 8u:
        return archive_set_error(*(result + 3), -1, "Lzma library error: Invalid options", a4, a5, a6, a7, a8, v8);
      case 9u:
        return archive_set_error(*(result + 3), -1, "Lzma library error: Corrupted input data", a4, a5, a6, a7, a8, v8);
      case 0xAu:
        return archive_set_error(*(result + 3), -1, "Lzma library error:  No progress is possible", a4, a5, a6, a7, a8, v8);
      default:
        return archive_set_error(*(result + 3), -1, "Lzma decompression failed:  Unknown error", a4, a5, a6, a7, a8, v8);
    }
  }

  return result;
}

uint64_t xz_filter_read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a1;
  v40 = a2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v39 = *(a1 + 40);
  while (1)
  {
    *(v39 + 24) = *(v39 + 136);
    *(v39 + 32) = *(v39 + 144);
    v36 = *(v39 + 168);
    while (1)
    {
      v31 = 0;
      if (*(v39 + 32))
      {
        v31 = *(v39 + 160) == 0;
      }

      if (!v31)
      {
        break;
      }

      if (!*(v39 + 161))
      {
        v32 = lzip_init(v41, a2, a3, a4, a5, a6, a7, a8);
        if (v32)
        {
          return v32;
        }

        *(v39 + 161) = 1;
      }

      v8 = __archive_read_filter_ahead(*(v41 + 2), 1uLL, &v37, a4, a5, a6, a7, a8);
      *v39 = v8;
      if (!*v39 && v37 < 0)
      {
        archive_set_error(*(v41 + 3), -1, "truncated input", v9, v10, v11, v12, v13, v30);
        return -30;
      }

      *(v39 + 8) = v37;
      *(v39 + 8);
      v33 = lzma_code();
      if (v33)
      {
        if (v33 != 1)
        {
          set_error_0(v41, v33, v14, v15, v16, v17, v18, v19);
          return -30;
        }

        *(v39 + 160) = 1;
      }

      __archive_read_filter_consume(*(v41 + 2), v37 - *(v39 + 8));
      *(v39 + 168) += v37 - *(v39 + 8);
    }

    v38 = *(v39 + 24) - *(v39 + 136);
    *(v39 + 152) += v38;
    *(v39 + 176) += v38;
    if (v38)
    {
      break;
    }

    if (v36 != *(v39 + 168) && v41[14] == 9 && *(v39 + 160))
    {
      v34 = lzip_tail(v41, a2, a3, a4, a5, a6, a7, a8);
      if (v34)
      {
        return v34;
      }

      if (!*(v39 + 160))
      {
        continue;
      }
    }

    *v40 = 0;
    return v38;
  }

  *v40 = *(v39 + 136);
  if (v41[14] == 9)
  {
    v20 = *(v39 + 136);
    v21 = *(v39 + 164);
    *(v39 + 164) = lzma_crc32();
    if (*(v39 + 160))
    {
      v35 = lzip_tail(v41, v22, v23, v24, v25, v26, v27, v28);
      if (v35)
      {
        return v35;
      }
    }
  }

  return v38;
}

uint64_t xz_filter_close(uint64_t a1)
{
  v2 = *(a1 + 40);
  lzma_end();
  free(v2[17]);
  free(v2);
  return 0;
}

uint64_t lzip_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v21 = 0;
  v20 = 0;
  v17 = 0;
  v21 = *(a1 + 40);
  v20 = __archive_read_filter_ahead(*(a1 + 16), 6uLL, &v17, a4, a5, a6, a7, a8);
  if (v20)
  {
    *(v21 + 162) = *(v20 + 4);
    v18 = 93;
    if ((*(v20 + 5) & 0x1Fu) >= 0xC && (*(v20 + 5) & 0x1Fu) <= 0x1D)
    {
      v16 = 1 << (*(v20 + 5) & 0x1F);
      if ((*(v20 + 5) & 0x1Fu) > 0xC)
      {
        v16 -= v16 / 0x10 * (*(v20 + 5) >> 5);
      }

      archive_le32enc_1(&v19, v16);
      __archive_read_filter_consume(*(v22 + 2), 6uLL);
      *(v21 + 168) = 6;
      v24 = 0x4000000000000001;
      v25 = 0;
      v26 = -1;
      v27 = 0;
      v15 = lzma_properties_decode();
      if (v15 || (v15 = lzma_raw_decoder(), free(v25), v15))
      {
        set_error_0(v22, v15, v8, v9, v10, v11, v12, v13);
        v23 = -30;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = -30;
    }
  }

  else
  {
    v23 = -30;
  }

  *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t lzip_tail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a1;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v43 = *(a1 + 40);
  if (*(v43 + 162))
  {
    v40 = 20;
  }

  else
  {
    v40 = 12;
  }

  v42 = __archive_read_filter_ahead(*(v44 + 16), v40, &v41, a4, a5, a6, a7, a8);
  if (v42 || (v41 & 0x8000000000000000) == 0)
  {
    if (v42 && v41 >= v40)
    {
      v39 = *(v43 + 164);
      if (v39 == archive_le32dec_1(v42))
      {
        v38 = *(v43 + 176);
        if (v38 == archive_le64dec_0(v42 + 4))
        {
          if (*(v43 + 162) != 1 || (v37 = *(v43 + 168) + v40, v37 == archive_le64dec_0(v42 + 12)))
          {
            __archive_read_filter_consume(*(v44 + 16), v40);
            if (lzip_has_member(*(v44 + 16), v28, v29, v30, v31, v32, v33, v34))
            {
              *(v43 + 161) = 0;
              *(v43 + 164) = 0;
              *(v43 + 176) = 0;
              *(v43 + 168) = 0;
              *(v43 + 160) = 0;
            }

            return 0;
          }

          else
          {
            archive_set_error(*(v44 + 24), -1, "Lzip: Member size error", v23, v24, v25, v26, v27, v37);
            return -25;
          }
        }

        else
        {
          archive_set_error(*(v44 + 24), -1, "Lzip: Uncompressed size error", v18, v19, v20, v21, v22, v36);
          return -25;
        }
      }

      else
      {
        archive_set_error(*(v44 + 24), -1, "Lzip: CRC32 error", v13, v14, v15, v16, v17, v36);
        return -25;
      }
    }

    else
    {
      archive_set_error(*(v44 + 24), -1, "Lzip: Remaining data is less bytes", v8, v9, v10, v11, v12, v36);
      return -25;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t archive_le32enc_1(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t lzip_has_member(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1;
  __s1 = 0;
  v9 = 0;
  __s1 = __archive_read_filter_ahead(a1, 6uLL, &v9, a4, a5, a6, a7, a8);
  if (__s1)
  {
    if (!memcmp(__s1, "LZIP", 4uLL))
    {
      if (!*(__s1 + 4) || *(__s1 + 4) == 1)
      {
        if ((*(__s1 + 5) & 0x1Fu) >= 0xC && (*(__s1 + 5) & 0x1Fu) <= 0x1D)
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

uint64_t lzma_bidder_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  v13 = __archive_read_filter_ahead(a2, 0xEuLL, &v12, a4, a5, a6, a7, a8);
  if (v13)
  {
    v9 = 0;
    if (*v13 <= 0xE0u)
    {
      if (*v13 == 93 || *v13 == 94)
      {
        v9 = 8;
      }

      if (archive_le64dec_0(v13 + 5) == -1)
      {
        v9 += 64;
      }

      v11 = archive_le32dec_1(v13 + 1);
      if (v11 == 4096 || v11 == 0x2000 || v11 == 0x4000 || v11 == 0x8000 || v11 == 0x10000 || v11 == 0x20000 || v11 == 0x40000 || v11 == 0x80000 || v11 == 0x100000 || v11 == 0x200000 || v11 == 0x400000 || v11 == 0x800000 || v11 == 0x1000000 || v11 == 0x2000000 || v11 == 0x4000000 || v11 == 0x8000000)
      {
        return (v9 + 32);
      }

      else
      {
        if (v11 > 0x3F00000 || v11 < 0x300000 || (v11 & 0xFFFFF) != 0 || v9 != 72)
        {
          return 0;
        }

        return 104;
      }
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t lzma_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 5;
  *(a1 + 48) = "lzma";
  return xz_lzma_bidder_init(a1);
}

uint64_t lzip_bidder_init(uint64_t a1)
{
  *(a1 + 56) = 9;
  *(a1 + 48) = "lzip";
  return xz_lzma_bidder_init(a1);
}

uint64_t archive_write_disk_set_skip_file(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, -1073631035, 0x7FFF, "archive_write_disk_set_skip_file") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 176) = 1;
    *(a1 + 184) = a2;
    *(a1 + 192) = a3;
    return 0;
  }
}

uint64_t archive_write_disk_gid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, -1073631035, 0x7FFF, "archive_write_disk_gid") == -30)
  {
    return -30;
  }

  if (*(a1 + 208))
  {
    return (*(a1 + 208))(*(a1 + 224), a2, a3);
  }

  return a3;
}

uint64_t archive_write_disk_uid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, -1073631035, 0x7FFF, "archive_write_disk_uid") == -30)
  {
    return -30;
  }

  if (*(a1 + 232))
  {
    return (*(a1 + 232))(*(a1 + 248), a2, a3);
  }

  return a3;
}

uint64_t _archive_write_disk_data(int *a1, _BYTE *a2, unint64_t a3)
{
  if (__archive_check_magic(a1, -1073631035, 4, "archive_write_data") == -30)
  {
    return -30;
  }

  if ((a1[126] & 0x8000) != 0)
  {
    return hfs_write_data_block(a1, a2, a3, v3, v4, v5, v6, v7);
  }

  return write_data_block(a1, a2, a3, v3, v4, v5, v6, v7);
}

uint64_t _archive_write_disk_filter_bytes(uint64_t a1, int a2)
{
  if (a2 != -1 && a2)
  {
    return -1;
  }

  else
  {
    return *(a1 + 536);
  }
}

BOOL la_verify_filetype(__int16 a1, unsigned __int16 a2)
{
  v3 = 0;
  switch(a2)
  {
    case 0x1000u:
      v3 = (a1 & 0xF000) == 4096;
      break;
    case 0x2000u:
      v3 = (a1 & 0xF000) == 0x2000;
      break;
    case 0x4000u:
      v3 = (a1 & 0xF000) == 0x4000;
      break;
    case 0x6000u:
      v3 = (a1 & 0xF000) == 24576;
      break;
    case 0x8000u:
      v3 = (a1 & 0xF000) == 0x8000;
      break;
    case 0xA000u:
      v3 = (a1 & 0xF000) == 40960;
      break;
    case 0xC000u:
      v3 = (a1 & 0xF000) == 49152;
      break;
  }

  return v3;
}

uint64_t set_times(_DWORD *a1, int a2, unsigned int a3, const char *a4, __darwin_time_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = 0;
  if (a7 < a9 || a7 == a9 && a8 < a10)
  {
    v18 = set_time(a2, a3, a4, a5, a6, a7, a8);
  }

  v17 = set_time(a2, a3, a4, a5, a6, a9, a10);
  if (v18 || v17)
  {
    v10 = __error();
    archive_set_error(a1, *v10, "Can't restore time", v11, v12, v13, v14, v15, a1);
    return -20;
  }

  else
  {
    return 0;
  }
}

uint64_t set_fflags_platform(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a5;
  v15 = a6;
  if (a5 || a6)
  {
    v14 = lazy_stat(a1);
    if (v14)
    {
      return v14;
    }

    else
    {
      *(a1 + 396) &= ~v15;
      *(a1 + 396) |= v16;
      if (*(a1 + 168))
      {
        *(a1 + 396) &= 0xFFE8FFFF;
      }

      if ((*(a1 + 396) & 0x20) != 0 && hfs_set_compressed_fflag(a1) == -20)
      {
        *(a1 + 396) &= ~0x20u;
      }

      if (a2 < 0 || fchflags(a2, *(a1 + 396)))
      {
        if (lchflags(a3, *(a1 + 396)))
        {
          v6 = __error();
          archive_set_error(a1, *v6, "Failed to set file flags", v7, v8, v9, v10, v11, v13);
          return -20;
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

uint64_t set_mac_metadata(_DWORD *a1, const char *a2, const void *a3, size_t a4)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  memset(v26, 0, sizeof(v26));
  if (a2)
  {
    v21 = strlen(v29);
  }

  else
  {
    v21 = 0;
  }

  archive_strncat(v26, a2, v21);
  archive_strcat(v26, ".XXXXXX");
  __fd = mkstemp(v26[0]);
  if (__fd < 0)
  {
    v20 = v30;
    v4 = __error();
    archive_set_error(v20, *v4, "Failed to restore metadata", v5, v6, v7, v8, v9, v18);
    archive_string_free(v26);
    return -20;
  }

  else
  {
    v25 = write(__fd, v28, v27);
    close(__fd);
    if (v25 == v27)
    {
      if ((v30[126] & 0x8000) == 0 || lazy_stat(v30))
      {
        v16 = copy_metadata(v30, v26[0], v29, 0);
      }

      else
      {
        v16 = copy_metadata(v30, v26[0], v29, v30[99] & 0x20);
      }

      v23 = v16;
    }

    else
    {
      v19 = v30;
      v10 = __error();
      archive_set_error(v19, *v10, "Failed to restore metadata", v11, v12, v13, v14, v15, v18);
      v23 = -20;
    }

    unlink(v26[0]);
    archive_string_free(v26);
    return v23;
  }
}

uint64_t set_time(int a1, uint64_t a2, const char *a3, __darwin_time_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *MEMORY[0x1E69E9840];
  v9.tv_sec = a4;
  v9.tv_usec = a5 / 1000;
  v10 = a6;
  v11 = a7 / 1000;
  if (a1 < 0)
  {
    v8 = lutimes(a3, &v9);
  }

  else
  {
    v8 = futimes(a1, &v9);
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t lazy_stat(uint64_t a1)
{
  if (*(a1 + 424))
  {
    return 0;
  }

  else if ((*(a1 + 516) & 0x80000000) != 0 || fstat(*(a1 + 516), (a1 + 280)))
  {
    if (lstat(*(a1 + 440), (a1 + 280)))
    {
      v1 = __error();
      archive_set_error(a1, *v1, "Couldn't stat file", v2, v3, v4, v5, v6, v8);
      return -20;
    }

    else
    {
      *(a1 + 424) = a1 + 280;
      return 0;
    }
  }

  else
  {
    *(a1 + 424) = a1 + 280;
    return 0;
  }
}

uint64_t hfs_set_compressed_fflag(uint64_t a1)
{
  v22 = a1;
  v21 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  for (i = 0; i < 4; ++i)
  {
    v20 = lazy_stat(v22);
    if (v20)
    {
      return v20;
    }

    LODWORD(v17) = v22[99];
    HIDWORD(v17) = 32;
    v18 = -1;
    *__error() = 0;
    v20 = ffsctl(v22[129], 0xC00C4114uLL, &v17, 0);
    if (!v20 && v17 == v18)
    {
      v21 = 1;
      break;
    }

    if ((v20 & 0x80000000) != 0 && *__error() != 35)
    {
      break;
    }
  }

  if (!getenv("FORCE_UF_COMPRESS_FFSCTL") || (v21 & 1) != 0)
  {
    if ((v21 & 1) == 0)
    {
      v20 = lazy_stat(v22);
      if (v20)
      {
        return v20;
      }

      v22[99] |= 0x20u;
      if (fchflags(v22[129], v22[99]) && *__error() != 45)
      {
        v15 = v22;
        v7 = __error();
        archive_set_error(v15, *v7, "Failed to set UF_COMPRESSED file flag", v8, v9, v10, v11, v12, v15);
        return -20;
      }
    }

    return 0;
  }

  v16 = v22;
  v1 = __error();
  archive_set_error(v16, *v1, "Failed to set UF_COMPRESSED file flag", v2, v3, v4, v5, v6, v14);
  return -20;
}

uint64_t copy_metadata(_DWORD *a1, const char *a2, const char *a3, int a4)
{
  v20 = 0;
  if (!a4)
  {
    if (copyfile(a2, a3, 0, 0x8C0005u) < 0)
    {
      v10 = __error();
      archive_set_error(a1, *v10, "Failed to restore metadata", v11, v12, v13, v14, v15, a1);
      return -20;
    }

    return v20;
  }

  tempdatafork = create_tempdatafork(a1, a2);
  if (tempdatafork != -1)
  {
    v19 = open(a3, 0);
    if (v19 == -1)
    {
      v4 = __error();
      archive_set_error(a1, *v4, "Failed to open the data fork for metadata", v5, v6, v7, v8, v9, v17);
      close(tempdatafork);
      return -20;
    }

    v20 = copy_xattrs(a1, tempdatafork, v19);
    if (!v20)
    {
      v20 = copy_acls(a1, tempdatafork, v19);
    }

    close(tempdatafork);
    close(v19);
    return v20;
  }

  return -20;
}

uint64_t create_tempdatafork(_DWORD *a1, const char *a2)
{
  v21 = a1;
  v20 = a2;
  memset(to, 0, sizeof(to));
  archive_strncat(to, "tar.md.XXXXXX", 0xDuLL);
  v18 = mkstemp(to[0]);
  if ((v18 & 0x80000000) != 0)
  {
    v17 = v21;
    v2 = __error();
    archive_set_error(v17, *v2, "Failed to mkstemp", v3, v4, v5, v6, v7, v15);
    archive_string_free(to);
    return -1;
  }

  else
  {
    if (copyfile(v20, to[0], 0, 0x8C0005u) < 0)
    {
      v16 = v21;
      v8 = __error();
      archive_set_error(v16, *v8, "Failed to restore metadata", v9, v10, v11, v12, v13, v15);
      close(v18);
      v18 = -1;
    }

    unlink(to[0]);
    archive_string_free(to);
    return v18;
  }
}

uint64_t copy_xattrs(_DWORD *a1, int a2, int a3)
{
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v40 = flistxattr(a2, 0, 0, 0);
  if (v40 == -1)
  {
    goto LABEL_2;
  }

  v39 = malloc_type_malloc(v40, 0x96359A49uLL);
  if (!v39)
  {
    archive_set_error(a1, 12, "Can't allocate memory for metadata(xattr)", v9, v10, v11, v12, v13, v32);
    v37 = -30;
    goto LABEL_16;
  }

  v41 = flistxattr(a2, v39, v40, 0);
  if (v41 == -1)
  {
LABEL_2:
    v3 = __error();
    archive_set_error(a1, *v3, "Failed to read metadata(xattr)", v4, v5, v6, v7, v8, v32);
    v37 = -20;
  }

  else
  {
    for (i = 0; i < v41; i += strlen(&v39[i]) + 1)
    {
      size = fgetxattr(a2, &v39[i], 0, 0, 0, 0);
      if (size == -1)
      {
        goto LABEL_9;
      }

      v35 = v38;
      v38 = malloc_type_realloc(v38, size, 0x346D8499uLL);
      if (!v38)
      {
        archive_set_error(a1, 12, "Failed to get metadata(xattr)", v20, v21, v22, v23, v24, v32);
        v37 = -20;
        free(v35);
        break;
      }

      sizea = fgetxattr(a2, &v39[i], v38, size, 0, 0);
      if (sizea == -1)
      {
LABEL_9:
        v14 = __error();
        archive_set_error(a1, *v14, "Failed to get metadata(xattr)", v15, v16, v17, v18, v19, v32);
        v37 = -20;
        break;
      }

      if (fsetxattr(a3, &v39[i], v38, sizea, 0, 0) == -1)
      {
        v25 = __error();
        archive_set_error(a1, *v25, "Failed to get metadata(xattr)", v26, v27, v28, v29, v30, a1);
        v37 = -20;
        break;
      }
    }
  }

LABEL_16:
  free(v39);
  free(v38);
  return v37;
}

uint64_t copy_acls(_DWORD *a1, int a2, int a3)
{
  v19 = 0;
  v18 = 0;
  acl = acl_get_fd(a2);
  if (acl)
  {
    v19 = acl_dup(acl);
    if (acl_set_fd_np(a3, v19, v9) == -1)
    {
      v10 = __error();
      archive_set_error(a1, *v10, "Failed to get metadata(acl)", v11, v12, v13, v14, v15, a1);
      v18 = -20;
    }
  }

  else
  {
    if (*__error() == 2)
    {
      return 0;
    }

    v3 = __error();
    archive_set_error(a1, *v3, "Failed to get metadata(acl)", v4, v5, v6, v7, v8, v17);
    v18 = -20;
  }

  if (acl)
  {
    acl_free(acl);
  }

  if (v19)
  {
    acl_free(v19);
  }

  return v18;
}

uint64_t current_fixup(uint64_t a1, const char *a2)
{
  if (!*(a1 + 160))
  {
    *(a1 + 160) = new_fixup(a1, a2);
  }

  return *(a1 + 160);
}

_DWORD *fsobj_error(_DWORD *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    *result = a3;
  }

  if (a2)
  {
    return archive_string_sprintf(a2, "%s%s", a3, a4, a5, a6, a7, a8, a4);
  }

  return result;
}

uint64_t create_dir(_DWORD *a1, char *a2)
{
  v38 = a1;
  v37 = a2;
  memset(&__b, 0, sizeof(__b));
  v34 = strrchr(v37, 47);
  if (v34)
  {
    v33 = v34 + 1;
  }

  else
  {
    v33 = v37;
  }

  if (*v33 && (*v33 != 46 || v33[1]) && (*v33 != 46 || v33[1] != 46 || v33[2]))
  {
    if (stat(v37, &__b))
    {
      if (*__error() != 2 && *__error() != 20)
      {
        v28 = v38;
        v14 = __error();
        archive_set_error(v28, *v14, "Can't test directory '%s'", v15, v16, v17, v18, v19, v37);
        return -25;
      }

      if (v34)
      {
        *v34 = 0;
        dir = create_dir(v38, v37);
        *v34 = 47;
        if (dir)
        {
          return dir;
        }
      }
    }

    else
    {
      if ((__b.st_mode & 0xF000) == 0x4000)
      {
        return 0;
      }

      if ((v38[128] & 8) != 0)
      {
        archive_set_error(v38, 17, "Can't create directory '%s'", v3, v4, v5, v6, v7, v37);
        return -25;
      }

      if (unlink(v37))
      {
        v29 = v38;
        v8 = __error();
        archive_set_error(v29, *v8, "Can't create directory '%s': Conflicting file cannot be removed", v9, v10, v11, v12, v13, v37);
        return -25;
      }
    }

    v32 = ~*(v38 + 72) & 0x1FF;
    v31 = ~*(v38 + 72) & 0x3D | 0x1C0;
    if (!mkdir(v37, v31))
    {
      if (v31 != v32)
      {
        v35 = new_fixup(v38, v37);
        if (!v35)
        {
          return -30;
        }

        v35[40] |= 0x20000000u;
        *(v35 + 32) = v32;
      }

      return 0;
    }

    if (stat(v37, &__b) || (__b.st_mode & 0xF000) != 0x4000)
    {
      v27 = v38;
      v20 = __error();
      archive_set_error(v27, *v20, "Failed to create dir '%s'", v21, v22, v23, v24, v25, v37);
      return -25;
    }

    else
    {
      return 0;
    }
  }

  else if (v34)
  {
    *v34 = 0;
    v2 = create_dir(v38, v37);
    *v34 = 47;
    return v2;
  }

  else
  {
    return 0;
  }
}

_DWORD *new_fixup(uint64_t a1, const char *a2)
{
  v8 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10B004017AD3FEEuLL);
  if (v8)
  {
    *v8 = *(a1 + 152);
    *(a1 + 152) = v8;
    v8[40] = 0;
    *(v8 + 33) = 0;
    *(v8 + 21) = strdup(a2);
    return v8;
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for a fixup", v2, v3, v4, v5, v6, 0);
    return 0;
  }
}

uint64_t create_parent_dir(_DWORD *a1, char *a2)
{
  v4 = strrchr(a2, 47);
  if (v4)
  {
    *v4 = 0;
    dir = create_dir(a1, a2);
    *v4 = 47;
    return dir;
  }

  else
  {
    return 0;
  }
}

BOOL older(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 0x8000000000000000) != 0)
  {
    v11 = *(a1 + 48);
  }

  else
  {
    if (*(a1 + 48) > 0x7FFFFFFFFFFFFFFFuLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = *(a1 + 48);
    }

    v11 = v10;
  }

  if (archive_entry_mtime(a2) < 0)
  {
    v9 = archive_entry_mtime(a2);
  }

  else
  {
    if (archive_entry_mtime(a2) <= 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = archive_entry_mtime(a2);
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = v8;
  }

  if (v11 >= v9)
  {
    if ((*(a1 + 48) & 0x8000000000000000) != 0)
    {
      v7 = *(a1 + 48);
    }

    else
    {
      if (*(a1 + 48) > 0x7FFFFFFFFFFFFFFFuLL)
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = *(a1 + 48);
      }

      v7 = v6;
    }

    if (archive_entry_mtime(a2) < 0)
    {
      v5 = archive_entry_mtime(a2);
    }

    else
    {
      if (archive_entry_mtime(a2) <= 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = archive_entry_mtime(a2);
      }

      else
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v5 = v4;
    }

    if (v7 <= v5)
    {
      v3 = *(a1 + 56);
      return v3 < archive_entry_mtime_nsec(a2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t la_mktemp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 488) = 0;
  archive_string_sprintf((a1 + 480), "%s.XXXXXX", a3, a4, a5, a6, a7, a8, *(a1 + 440));
  *(a1 + 472) = *(a1 + 480);
  v9 = __archive_mkstemp(*(a1 + 472));
  if (v9 == -1)
  {
    return -1;
  }

  else if (fchmod(v9, *(a1 + 558) & 0x1FF & ~*(a1 + 144)) == -1)
  {
    v10 = *__error();
    close(v9);
    *__error() = v10;
    return -1;
  }

  else
  {
    return v9;
  }
}

uint64_t create_filesystem_object_at(int a1, const char *a2, _DWORD *a3)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  memset(&__b, 0, sizeof(__b));
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v34 = archive_entry_hardlink(*(v35 + 54));
  if (v34)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v30 = strdup(v34);
    if (v30)
    {
      v31 = cleanup_pathname_fsobj(v30, &v25, &v26, v35[128], v3, v4, v5, v6);
      if (v31 || (v31 = check_symlinks_fsobj(v30, &v25, &v26, v35[128], 1)) != 0)
      {
        archive_set_error(v35, v25, "%s", v7, v8, v9, v10, v11, v26);
        free(v30);
        archive_string_free(&v26);
        return 1;
      }

      else
      {
        free(v30);
        archive_string_free(&v26);
        if ((v35[128] & 0x40000) != 0)
        {
          unlinkat(v37, v36, 0);
        }

        if (linkat(-2, v34, v37, v36, 0))
        {
          v24 = *__error();
        }

        else
        {
          v24 = 0;
        }

        v31 = v24;
        if (v24 || *(v35 + 68) > 0)
        {
          if (!v31 && *(v35 + 68) > 0)
          {
            v31 = fstatat(v37, v36, &__b, 32);
            if (v31)
            {
              return *__error();
            }

            if ((__b.st_mode & 0xF000) == 0x8000)
            {
              v35[129] = openat(v37, v36, 16778497);
              __archive_ensure_cloexec_flag(v35[129]);
              if ((v35[129] & 0x80000000) != 0)
              {
                return *__error();
              }
            }
          }
        }

        else
        {
          v35[126] = 0;
          v35[127] = 0;
        }

        return v31;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v34 = archive_entry_symlink(*(v35 + 54));
    if (v34)
    {
      if ((v35[128] & 0x40000) != 0)
      {
        unlinkat(v37, v36, 0);
      }

      if (symlinkat(v34, v37, v36))
      {
        return *__error();
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v33 = *(v35 + 279) & 0xFFF;
      v32 = v33 & 0x1FF & ~*(v35 + 72);
      if (*(v35 + 21) && (v35[126] & 0x8080) != 0)
      {
        v32 |= 0x80u;
      }

      v22 = *(v35 + 279) & 0xF000;
      switch(v22)
      {
        case 4096:
          v31 = mkfifoat(v37, v36, v32);
          break;
        case 8192:
          v21 = v37;
          v19 = v36;
          v20 = v32 | 0x2000;
          v13 = archive_entry_rdev(*(v35 + 54));
          v31 = mknodat(v21, v19, v20, v13);
          break;
        case 16384:
          v32 = v32 & 0x3D | 0x1C0;
          v31 = mkdirat(v37, v36, v32);
          if (!v31)
          {
            v35[127] |= v35[126] & 4;
            v35[126] &= ~4u;
            if (v32 != v33 || (v35[128] & 2) != 0)
            {
              v35[127] |= v35[126] & 0x34000000;
            }

            v35[126] &= 0xCBFFFFFF;
          }

          break;
        case 24576:
          v18 = v37;
          v16 = v36;
          v17 = v32 | 0x6000;
          v14 = archive_entry_rdev(*(v35 + 54));
          v31 = mknodat(v18, v16, v17, v14);
          break;
        default:
          *(v35 + 59) = 0;
          if ((v35[128] & 0x100) != 0)
          {
            v12 = openat(v37, v36, 16780033, v32);
          }

          else
          {
            v12 = openat(v37, v36, 16779777, v32);
          }

          v35[129] = v12;
          __archive_ensure_cloexec_flag(v35[129]);
          v31 = v35[129] < 0;
          break;
      }

      if (v31)
      {
        return *__error();
      }

      else
      {
        if (v32 == v33)
        {
          v35[126] &= 0xCBFFFFFF;
        }

        return 0;
      }
    }
  }
}

uint64_t hfs_write_data_block(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v19 = a3;
  if (a3)
  {
    if (*(a1 + 544) && (*(a1 + 516) & 0x80000000) == 0)
    {
      if ((*(a1 + 544) & 0x8000000000000000) == 0 && (*(a1 + 520) + a3) > *(a1 + 544))
      {
        v20 = *(a1 + 544) - *(a1 + 520);
        v19 = v20;
      }

      while (v20)
      {
        if (*(a1 + 520) < *(a1 + 528))
        {
          archive_set_error(a1, -1, "Seek failed", a4, a5, a6, a7, a8, v15);
          v23 = -30;
          goto LABEL_26;
        }

        if (*(a1 + 520) > *(a1 + 528))
        {
          v16 = *(a1 + 520) - *(a1 + 528);
          bzero(v24, 0x400uLL);
          while (v16)
          {
            if (v16 <= 0x400)
            {
              v17 = hfs_write_decmpfs_block(a1, v24, v16);
            }

            else
            {
              v17 = hfs_write_decmpfs_block(a1, v24, 0x400uLL);
            }

            if (v17 < 0)
            {
              v8 = __error();
              archive_set_error(a1, *v8, "Write failed", v9, v10, v11, v12, v13, v15);
              v23 = -20;
              goto LABEL_26;
            }

            v16 -= v17;
          }

          *(a1 + 528) = *(a1 + 520);
        }

        v18 = hfs_write_decmpfs_block(a1, a2, v20);
        if (v18 < 0)
        {
          v23 = v18;
          goto LABEL_26;
        }

        a2 += v18;
        v20 -= v18;
        *(a1 + 536) += v18;
        *(a1 + 520) += v18;
        *(a1 + 528) = *(a1 + 520);
      }

      v23 = v19;
    }

    else
    {
      archive_set_error(a1, 0, "Attempt to write to an empty file", a4, a5, a6, a7, a8, v15);
      v23 = -20;
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_26:
  *MEMORY[0x1E69E9840];
  return v23;
}