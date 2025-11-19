uint64_t lookup_token(_BYTE *a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      if (a1[1] != 101 || *a1 != 116)
      {
        goto LABEL_390;
      }

      result = 61;
      break;
    case 3:
      v21 = a1[2];
      if (v21 == 101)
      {
        if (*a1 != 26465)
        {
          goto LABEL_390;
        }

        result = 20;
      }

      else
      {
        if (v21 != 97 || *a1 != 26998)
        {
          goto LABEL_390;
        }

        result = 59;
      }

      break;
    case 4:
      v14 = a1[3];
      if (v14 > 0x6C)
      {
        switch(v14)
        {
          case 'm':
            if (*a1 != 29286 || a1[2] != 111)
            {
              goto LABEL_390;
            }

            result = 36;
            break;
          case 't':
            if (*a1 != 28520 || a1[2] != 115)
            {
              goto LABEL_390;
            }

            result = 37;
            break;
          case 'y':
            if (*a1 != 24950 || a1[2] != 114)
            {
              goto LABEL_390;
            }

            result = 58;
            break;
          default:
            goto LABEL_390;
        }
      }

      else
      {
        switch(v14)
        {
          case 'e':
            if (*a1 != 24932 || a1[2] != 116)
            {
              goto LABEL_390;
            }

            result = 32;
            break;
          case 'g':
            if (*a1 != 29797 || a1[2] != 97)
            {
              goto LABEL_390;
            }

            result = 33;
            break;
          case 'k':
            if (*a1 != 26988 || a1[2] != 110)
            {
              goto LABEL_390;
            }

            result = 44;
            break;
          default:
            goto LABEL_390;
        }
      }

      break;
    case 5:
      v29 = a1[4];
      if (v29 == 119)
      {
        if (*a1 != 1869376609)
        {
          goto LABEL_390;
        }

        result = 21;
      }

      else if (v29 == 104)
      {
        if (*a1 != 1952542778)
        {
          goto LABEL_390;
        }

        result = 3;
      }

      else
      {
        if (v29 != 101 || *a1 != 1735287154)
        {
          goto LABEL_390;
        }

        result = 49;
      }

      break;
    case 6:
      v30 = a1[5];
      switch(v30)
      {
        case 't':
          if (*a1 == 1701012321 && a1[4] == 112)
          {
            result = 18;
          }

          else
          {
            if (*a1 != 1701869669 || a1[4] != 99)
            {
              goto LABEL_390;
            }

            result = 34;
          }

          break;
        case 'r':
          if (*a1 != 1987208563 || a1[4] != 101)
          {
            goto LABEL_390;
          }

          result = 53;
          break;
        case 'e':
          if (*a1 != 1802465123 || a1[4] != 105)
          {
            goto LABEL_390;
          }

          result = 31;
          break;
        default:
          goto LABEL_390;
      }

      break;
    case 7:
      v16 = a1[6];
      if (v16 <= 0x67)
      {
        if (v16 == 100)
        {
          if (*a1 != 1952804154 || *(a1 + 2) != 28520)
          {
            goto LABEL_390;
          }

          result = 1;
        }

        else
        {
          if (v16 != 101)
          {
            goto LABEL_390;
          }

          if (*a1 == 1751348026 && *(a1 + 2) == 28005)
          {
            result = 5;
          }

          else
          {
            if (*a1 != 1919381621 || *(a1 + 2) != 25697)
            {
              goto LABEL_390;
            }

            result = 65;
          }
        }
      }

      else
      {
        switch(v16)
        {
          case 'h':
            if (*a1 != 1919313266 || *(a1 + 2) != 29541)
            {
              goto LABEL_390;
            }

            result = 51;
            break;
          case 'r':
            if (*a1 != 1701209458 || *(a1 + 2) != 25970)
            {
              goto LABEL_390;
            }

            result = 50;
            break;
          case 's':
            if (*a1 == 1635021626 && *(a1 + 2) == 30068)
            {
              result = 7;
            }

            else
            {
              if (*a1 != 1768978533 || *(a1 + 2) != 25970)
              {
                goto LABEL_390;
              }

              result = 35;
            }

            break;
          default:
            goto LABEL_390;
        }
      }

      break;
    case 8:
      v22 = a1[7];
      if (v22 > 0x6D)
      {
        if (v22 == 110)
        {
          if (*a1 != 1633906540 || *(a1 + 3) != 1869182049)
          {
            goto LABEL_390;
          }

          result = 45;
        }

        else
        {
          if (v22 != 121)
          {
            goto LABEL_390;
          }

          if (*a1 != 1869181552 || *(a1 + 3) != 1953067631)
          {
            goto LABEL_390;
          }

          result = 67;
        }
      }

      else if (v22 == 101)
      {
        if (*a1 != 1915577961 || *(a1 + 3) != 1735287154)
        {
          goto LABEL_390;
        }

        result = 41;
      }

      else
      {
        if (v22 != 104)
        {
          goto LABEL_390;
        }

        if (*a1 != 1831691881 || *(a1 + 3) != 1668571501)
        {
          goto LABEL_390;
        }

        result = 38;
      }

      break;
    case 9:
      if (a1[8] != 108 || *a1 != 0x6F636F746F72703ALL)
      {
        goto LABEL_390;
      }

      result = 66;
      break;
    case 10:
      v33 = a1[9];
      if (v33 > 0x73)
      {
        if (v33 == 116)
        {
          if (*a1 != 0x6567612D72657375 || a1[8] != 110)
          {
            goto LABEL_390;
          }

          result = 57;
        }

        else
        {
          if (v33 != 121)
          {
            goto LABEL_390;
          }

          if (*a1 != 0x69726F687475613ALL || a1[8] != 116)
          {
            goto LABEL_390;
          }

          result = 0;
        }
      }

      else if (v33 == 101)
      {
        if (*a1 == 0x696C612D7065656BLL && a1[8] == 118)
        {
          result = 63;
        }

        else
        {
          if (*a1 != 0x6B6F6F632D746573 || a1[8] != 105)
          {
            goto LABEL_390;
          }

          result = 54;
        }
      }

      else
      {
        if (v33 != 110)
        {
          goto LABEL_390;
        }

        if (*a1 != 0x697463656E6E6F63 || a1[8] != 111)
        {
          goto LABEL_390;
        }

        result = 62;
      }

      break;
    case 11:
      if (a1[10] != 114)
      {
        goto LABEL_390;
      }

      if (*a1 != 0x66612D7972746572 || *(a1 + 4) != 25972)
      {
        goto LABEL_390;
      }

      result = 52;
      break;
    case 12:
      v7 = a1[11];
      if (v7 == 115)
      {
        if (*a1 != 0x77726F662D78616DLL || *(a1 + 3) != 0x64726177726F662DLL)
        {
          goto LABEL_390;
        }

        result = 46;
      }

      else
      {
        if (v7 != 101)
        {
          goto LABEL_390;
        }

        if (*a1 != 0x2D746E65746E6F63 || *(a1 + 3) != 0x7079742D746E6574)
        {
          goto LABEL_390;
        }

        result = 30;
      }

      break;
    case 13:
      v19 = a1[12];
      if (v19 > 0x6B)
      {
        switch(v19)
        {
          case 'l':
            if (*a1 != 0x6F632D6568636163 || *(a1 + 2) != 1869771886)
            {
              goto LABEL_390;
            }

            result = 23;
            break;
          case 'n':
            if (*a1 != 0x7A69726F68747561 || *(a1 + 2) != 1869182049)
            {
              goto LABEL_390;
            }

            result = 22;
            break;
          case 's':
            if (*a1 != 0x722D747065636361 || *(a1 + 2) != 1701277281)
            {
              goto LABEL_390;
            }

            result = 17;
            break;
          default:
            goto LABEL_390;
        }
      }

      else
      {
        switch(v19)
        {
          case 'd':
            if (*a1 != 0x646F6D2D7473616CLL || *(a1 + 2) != 1701406313)
            {
              goto LABEL_390;
            }

            result = 43;
            break;
          case 'e':
            if (*a1 != 0x2D746E65746E6F63 || *(a1 + 2) != 1735287154)
            {
              goto LABEL_390;
            }

            result = 29;
            break;
          case 'h':
            if (*a1 != 0x2D656E6F6E2D6669 || *(a1 + 2) != 1668571501)
            {
              goto LABEL_390;
            }

            result = 40;
            break;
          default:
            goto LABEL_390;
        }
      }

      break;
    case 14:
      v9 = a1[13];
      if (v9 == 116)
      {
        if (*a1 != 0x632D747065636361 || *(a1 + 5) != 0x6573726168632D74)
        {
          goto LABEL_390;
        }

        result = 14;
      }

      else
      {
        if (v9 != 104)
        {
          goto LABEL_390;
        }

        if (*a1 != 0x2D746E65746E6F63 || *(a1 + 5) != 0x74676E656C2D746ELL)
        {
          goto LABEL_390;
        }

        result = 27;
      }

      break;
    case 15:
      v5 = a1[14];
      if (v5 == 103)
      {
        if (*a1 != 0x652D747065636361 || *(a1 + 6) != 0x6E69646F636E652DLL)
        {
          goto LABEL_390;
        }

        result = 15;
      }

      else
      {
        if (v5 != 101)
        {
          goto LABEL_390;
        }

        if (*a1 != 0x6C2D747065636361 || *(a1 + 6) != 0x676175676E616C2DLL)
        {
          goto LABEL_390;
        }

        result = 16;
      }

      break;
    case 16:
      v24 = a1[15];
      switch(v24)
      {
        case 'n':
          if (*a1 == 0x2D746E65746E6F63 && *(a1 + 7) == 0x6F697461636F6C2DLL)
          {
            result = 28;
          }

          else
          {
            if (*a1 != 0x6F632D79786F7270 || *(a1 + 7) != 0x6F697463656E6E6FLL)
            {
              goto LABEL_390;
            }

            result = 64;
          }

          break;
        case 'g':
          if (*a1 != 0x2D746E65746E6F63 || *(a1 + 7) != 0x6E69646F636E652DLL)
          {
            goto LABEL_390;
          }

          result = 25;
          break;
        case 'e':
          if (*a1 == 0x2D746E65746E6F63 && *(a1 + 7) == 0x676175676E616C2DLL)
          {
            result = 26;
          }

          else
          {
            if (*a1 != 0x687475612D777777 || *(a1 + 7) != 0x74616369746E6568)
            {
              goto LABEL_390;
            }

            result = 60;
          }

          break;
        default:
          goto LABEL_390;
      }

      break;
    case 17:
      v27 = a1[16];
      if (v27 == 103)
      {
        if (*a1 != 0x726566736E617274 || *(a1 + 1) != 0x6E69646F636E652DLL)
        {
          goto LABEL_390;
        }

        result = 56;
      }

      else
      {
        if (v27 != 101)
        {
          goto LABEL_390;
        }

        if (*a1 != 0x6669646F6D2D6669 || *(a1 + 1) != 0x636E69732D646569)
        {
          goto LABEL_390;
        }

        result = 39;
      }

      break;
    case 18:
      if (a1[17] != 101)
      {
        goto LABEL_390;
      }

      v38 = *a1 == 0x75612D79786F7270 && *(a1 + 1) == 0x616369746E656874;
      if (!v38 || a1[16] != 116)
      {
        goto LABEL_390;
      }

      result = 47;
      break;
    case 19:
      v35 = a1[18];
      if (v35 == 110)
      {
        if (*a1 == 0x2D746E65746E6F63 && *(a1 + 1) == 0x7469736F70736964 && *(a1 + 8) == 28521)
        {
          result = 24;
        }

        else
        {
          if (*a1 != 0x75612D79786F7270 || *(a1 + 1) != 0x74617A69726F6874 || *(a1 + 8) != 28521)
          {
            goto LABEL_390;
          }

          result = 48;
        }
      }

      else
      {
        if (v35 != 101)
        {
          goto LABEL_390;
        }

        v36 = *a1 == 0x646F6D6E752D6669 && *(a1 + 1) == 0x69732D6465696669;
        if (!v36 || *(a1 + 8) != 25454)
        {
          goto LABEL_390;
        }

        result = 42;
      }

      break;
    case 25:
      if (a1[24] != 121)
      {
        goto LABEL_390;
      }

      v3 = *a1 == 0x742D746369727473 && *(a1 + 1) == 0x74726F70736E6172;
      if (!v3 || *(a1 + 2) != 0x746972756365732DLL)
      {
        goto LABEL_390;
      }

      result = 55;
      break;
    case 27:
      if (a1[26] != 110)
      {
        goto LABEL_390;
      }

      v11 = *a1 == 0x632D737365636361 && *(a1 + 1) == 0x612D6C6F72746E6FLL;
      v12 = v11 && *(a1 + 2) == 0x69726F2D776F6C6CLL;
      if (!v12 || *(a1 + 12) != 26983)
      {
        goto LABEL_390;
      }

      result = 19;
      break;
    default:
LABEL_390:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

double hd_inflate_commit_newname(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 152;
  v5 = *(a1 + 152);
  v6 = *(a1 + 234) != 0;
  v10 = 0;
  BYTE4(v10) = v6;
  v7 = *(a1 + 160);
  *&v9 = v5;
  *(&v9 + 1) = v7;
  LODWORD(v10) = lookup_token(*(v5 + 16), *(v5 + 24));
  if (!*(v4 + 81) || !add_hd_table_incremental(a1, &v9, 0, 0))
  {
    result = *&v9;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a1 + 168) = v5;
    *(a1 + 176) = v7;
    *v4 = 0;
    *(v4 + 8) = 0;
  }

  return result;
}

uint64_t nghttp2_http_on_response_headers(uint64_t a1)
{
  v1 = *(a1 + 112);
  if ((v1 & 0x20) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 108);
  if ((v3 - 100) > 0x63u)
  {
    *(a1 + 112) = v1 & 0xFFFFBFFF;
    if ((v1 & 0x100) != 0 || (v3 - 100) < 0x64 || v3 == 304 || v3 == 204)
    {
      v2 = 0;
      *(a1 + 16) = 0;
    }

    else
    {
      v2 = 0;
      if ((v1 & 0x480) != 0)
      {
        *(a1 + 16) = -1;
      }
    }
  }

  else
  {
    v2 = 0;
    *(a1 + 112) = *(a1 + 112) & 0x780 | 0x4000;
    *(a1 + 16) = -1;
    *(a1 + 108) = -1;
  }

  return v2;
}

uint64_t nghttp2_session_close_stream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = nghttp2_map_find(a1, a2);
  if (!v6)
  {
    return 4294966795;
  }

  v7 = v6;
  if ((*(v6 + 116) & 2) != 0 || *v6 == 5)
  {
    return 4294966795;
  }

  v9 = *(a1 + 2208);
  if (v9 && v9(a1, a2, a3, *(a1 + 2400)))
  {
    return 4294966394;
  }

  v10 = *(v7 + 64);
  if (v10)
  {
    *(v7 + 64) = 0;
    *(v7 + 116) &= 0xF3u;
    if (*(v7 + 118))
    {
      session_ob_data_remove(a1, v7);
    }

    if (!*(v10 + 152) && v10 != *(a1 + 432))
    {
      nghttp2_outbound_item_free(v10, (a1 + 2360));
      (*(a1 + 2376))(v10, *(a1 + 2360));
    }
  }

  if (!a2)
  {
    v11 = *(v7 + 116);
    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v11 = *(v7 + 116);
  v12 = (*(a1 + 2723) == 0) ^ a2;
  if ((v11 & 1) == 0)
  {
    if ((((*(a1 + 2723) == 0) ^ a2) & 1) == 0)
    {
      v13 = 2488;
LABEL_22:
      --*(a1 + v13);
      goto LABEL_23;
    }

LABEL_19:
    v13 = 2496;
    goto LABEL_22;
  }

  if (((*(a1 + 2723) == 0) ^ a2))
  {
LABEL_21:
    v13 = 2504;
    goto LABEL_22;
  }

LABEL_23:
  *(v7 + 116) = v11 | 2;
  if (*(v7 + 118))
  {
    session_ob_data_remove(a1, v7);
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = *(v7 + 80);
    v16 = *(a1 + 32);
    LODWORD(v17) = (-297201227 * (*(a1 + 16) + v15)) >> -v16;
    v18 = *a1;
    v19 = (*a1 + 16 * v17);
    if (*(v19 + 1))
    {
      v20 = ~(-1 << v16);
      v21 = -1;
      do
      {
        if (++v21 > *v19)
        {
          break;
        }

        if (v19[1] == v15)
        {
          v22 = (v17 + 1) & v20;
          v23 = v18 + 16 * v22;
          if (*(v23 + 8))
          {
            while (*v23)
            {
              v24 = v23;
              --*v23;
              *v19 = *v23;
              v22 = (v22 + 1) & v20;
              v23 = *a1 + 16 * v22;
              v19 = v24;
              if (!*(v23 + 8))
              {
                goto LABEL_37;
              }
            }

            v24 = v19;
LABEL_37:
            v14 = *(a1 + 24);
            v19 = v24;
          }

          *(v19 + 1) = 0;
          *(a1 + 24) = v14 - 1;
          break;
        }

        v17 = (v17 + 1) & v20;
        v19 = (v18 + 16 * v17);
      }

      while (*(v19 + 1));
    }
  }

  (*(a1 + 2376))(v7, *(a1 + 2360));
  return 0;
}

uint64_t nghttp2_session_add_goaway(uint64_t a1, int a2, int a3, const void *a4, size_t a5, char a6)
{
  if (a2 && (*(a1 + 2723) == 0) == (a2 & 1))
  {
    return 4294966795;
  }

  if (a5)
  {
    if (a5 - 16377 < 0xFFFFFFFFFFFFBFFFLL)
    {
      return 4294966795;
    }

    v14 = (*(a1 + 2368))(a5, *(a1 + 2360));
    if (!v14)
    {
      return 4294966395;
    }

    v13 = v14;
    memcpy(v14, a4, a5);
  }

  else
  {
    v13 = 0;
  }

  v15 = (*(a1 + 2368))(160, *(a1 + 2360));
  if (!v15)
  {
    (*(a1 + 2376))(v13, *(a1 + 2360));
    return 4294966395;
  }

  v16 = v15;
  *(v15 + 137) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 128) = 0u;
  *(v15 + 96) = 0u;
  v17 = *(a1 + 2612);
  if (a2 < v17)
  {
    v17 = a2;
  }

  *v15 = a5 + 8;
  *(v15 + 12) = 7;
  *(v15 + 8) = 0;
  *(v15 + 14) = 0;
  *(v15 + 16) = v17;
  *(v15 + 20) = a3;
  *(v15 + 24) = v13;
  *(v15 + 32) = a5;
  *(v15 + 40) = 0;
  *(v15 + 96) = a6;
  v12 = nghttp2_session_add_item(a1, v15);
  if (v12)
  {
    (*(a1 + 2376))(*(v16 + 24), *(a1 + 2360));
    (*(a1 + 2376))(v16, *(a1 + 2360));
  }

  else
  {
    *(a1 + 2724) |= 0x10u;
  }

  return v12;
}

uint64_t session_close_stream_on_goaway(uint64_t a1, int a2, int a3)
{
  v11 = a1;
  v12 = 0;
  v13 = a2;
  v14 = a3;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = (1 << *(a1 + 32));
    v6 = 8;
    do
    {
      v7 = *(*a1 + v6);
      if (v7 && find_stream_on_goaway_func(v7, &v11))
      {
        __assert_rtn("session_close_stream_on_goaway", "nghttp2_session.c", 2447, "rv == 0");
      }

      v6 += 16;
      --v5;
    }

    while (v5);
    v4 = v12;
  }

  do
  {
    if (!v4)
    {
      return 0;
    }

    v8 = *(v4 + 48);
    *(v4 + 48) = 0;
    result = nghttp2_session_close_stream(a1, *(v4 + 80), 7);
    v4 = v8;
  }

  while (result > -901);
  if (v8)
  {
    do
    {
      v10 = *(v8 + 48);
      *(v8 + 48) = 0;
      v8 = v10;
    }

    while (v10);
  }

  return result;
}

uint64_t nghttp2_frame_pack_headers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    __assert_rtn("nghttp2_frame_pack_headers", "nghttp2_frame.c", 367, "bufs->head == bufs->cur");
  }

  if ((*(a2 + 13) & 0x20) != 0)
  {
    v6 = -5;
  }

  else
  {
    v6 = 0;
  }

  v7 = 5;
  if ((*(a2 + 13) & 0x20) == 0)
  {
    v7 = 0;
  }

  v8 = *(v3 + 24) + v7;
  *(v3 + 24) = v8;
  *(v3 + 32) = v8;
  v9 = nghttp2_hd_deflate_hd_bufs(a3, a1, *(a2 + 40), *(a2 + 48));
  if (v9 == -502)
  {
    v10 = 4294966773;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v3 + 24) + v6;
  *(v3 + 24) = v11;
  if (!v10)
  {
    if ((*(a2 + 13) & 0x20) != 0)
    {
      v12 = bswap32(*(a2 + 24));
      *v11 = v12;
      if (*(a2 + 32))
      {
        *v11 = v12 | 0x80;
      }

      *(v11 + 4) = *(a2 + 28) - 1;
    }

    *(a2 + 16) = 0;
    v13 = *a1;
    if (*a1)
    {
      v14 = 0;
      do
      {
        v14 = v14 + v13[4] - v13[3];
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    *a2 = v14;
    frame_pack_headers_shared(a1, a2);
  }

  return v10;
}

uint64_t emit_indname_block(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v22[15] = *MEMORY[0x29EDCA608];
  v6 = a2 + 1;
  if (a4)
  {
    v7 = -16;
  }

  else
  {
    v7 = -64;
  }

  v8 = ~v7;
  v9 = v6 - v8;
  if (v6 >= v8)
  {
    if (v9 < 0x80)
    {
      __src = (0x100040u >> (8 * a4)) & v7 | ~v7;
      v15 = v22;
      v10 = 2;
    }

    else
    {
      v11 = 0;
      v12 = v9;
      do
      {
        v13 = v12 >> 14;
        v12 >>= 7;
        ++v11;
      }

      while (v13);
      if (v11 > 0xE)
      {
        result = 4294966773;
LABEL_17:
        v17 = *MEMORY[0x29EDCA608];
        return result;
      }

      __src = (0x100040u >> (8 * a4)) & v7 | ~v7;
      v15 = v22;
      do
      {
        *v15++ = v9 | 0x80;
        v16 = v9 >> 14;
        v9 >>= 7;
      }

      while (v16);
      v10 = v11 + 2;
    }

    *v15 = v9;
  }

  else
  {
    __src = (0x100040u >> (8 * a4)) & v7 | v6;
    v10 = 1;
  }

  result = nghttp2_bufs_add(a1, &__src, v10);
  if (result)
  {
    goto LABEL_17;
  }

  v18 = *(a3 + 8);
  v19 = *(a3 + 24);
  v20 = *MEMORY[0x29EDCA608];

  return emit_string(a1, v18, v19);
}

uint64_t emit_string(uint64_t a1, char *a2, size_t a3)
{
  v4 = a2;
  *&v31[15] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v6 = 0;
    v7 = a2;
    v8 = a3;
    do
    {
      v9 = *v7++;
      v6 += huff_sym_table[2 * v9];
      --v8;
    }

    while (v8);
    v10 = (v6 + 7) >> 3;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v10;
  }

  if (v11 > 0x7E)
  {
    v13 = v11 - 127;
    if (v13 < 0x80)
    {
      if (v10 < a3)
      {
        v18 = -1;
      }

      else
      {
        v18 = 127;
      }

      __src = v18;
      v19 = v31;
      v12 = 2;
    }

    else
    {
      v14 = 0;
      v15 = v13;
      do
      {
        v16 = v15 >> 14;
        v15 >>= 7;
        ++v14;
      }

      while (v16);
      if (v14 > 0xE)
      {
        result = 4294966773;
        goto LABEL_28;
      }

      if (v10 < a3)
      {
        v20 = -1;
      }

      else
      {
        v20 = 127;
      }

      __src = v20;
      v19 = v31;
      do
      {
        *v19++ = v13 | 0x80;
        v21 = v13 >> 14;
        v13 >>= 7;
      }

      while (v21);
      v12 = v14 + 2;
    }

    *v19 = v13;
  }

  else
  {
    __src = v11 | ((v10 < a3) << 7);
    v12 = 1;
  }

  result = nghttp2_bufs_add(a1, &__src, v12);
  if (result)
  {
LABEL_28:
    v22 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (v10 < a3)
    {
      v23 = 0;
      v24 = 0;
      v25 = &v4[a3];
      v26 = *(a1 + 8);
      v27 = *(v26 + 16) - *(v26 + 32);
      while (1)
      {
        v28 = *v4++;
        v24 |= huff_sym_table[2 * v28 + 1] << (32 - v23);
        v23 += huff_sym_table[2 * v28];
        if (v23 >= 0x20)
        {
          if (v27 <= 3)
          {
            while (1)
            {
              result = nghttp2_bufs_addb(a1, SHIBYTE(v24));
              if (result)
              {
                goto LABEL_28;
              }

              v24 <<= 8;
              v23 -= 8;
              if (v23 <= 7)
              {
                v26 = *(a1 + 8);
                v27 = *(v26 + 16) - *(v26 + 32);
                goto LABEL_37;
              }
            }
          }

          **(v26 + 32) = bswap32(HIDWORD(v24));
          v26 = *(a1 + 8);
          *(v26 + 32) += 4;
          v27 -= 4;
          v24 <<= 32;
          v23 -= 32;
        }

LABEL_37:
        if (v4 == v25)
        {
          if (v23 < 8)
          {
LABEL_41:
            if (!v23 || (result = nghttp2_bufs_addb(a1, HIBYTE(v24) | ~(-1 << (8 - v23))), !result))
            {
              result = 0;
            }
          }

          else
          {
            while (1)
            {
              result = nghttp2_bufs_addb(a1, SHIBYTE(v24));
              if (result)
              {
                break;
              }

              v24 <<= 8;
              v23 -= 8;
              if (v23 <= 7)
              {
                goto LABEL_41;
              }
            }
          }

          goto LABEL_28;
        }
      }
    }

    v29 = *MEMORY[0x29EDCA608];

    return nghttp2_bufs_add(a1, v4, a3);
  }

  return result;
}

uint64_t nghttp2_bufs_addb(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 32);
  if (*(v3 + 16) != v4)
  {
    goto LABEL_2;
  }

  result = bufs_alloc_chain(a1);
  if (!result)
  {
    v3 = *(a1 + 8);
    v4 = *(v3 + 32);
LABEL_2:
    result = 0;
    *(v3 + 32) = v4 + 1;
    *v4 = a2;
  }

  return result;
}

uint64_t hd_ringbuf_get(void *a1, unint64_t a2)
{
  if (a1[3] <= a2)
  {
    __assert_rtn("hd_ringbuf_get", "nghttp2_hd.c", 622, "idx < ringbuf->len");
  }

  return *(*a1 + 8 * ((a1[2] + a2) & a1[1]));
}

uint64_t session_headers_add_pad(void *a1, uint64_t *a2)
{
  if ((*a2 + 256) >= 0x4000)
  {
    v4 = 0x4000;
  }

  else
  {
    v4 = *a2 + 256;
  }

  result = session_call_select_padding(a1, a2, v4);
  if (result >= -900)
  {
    v6 = result - *a2;
    nghttp2_frame_add_pad(a1 + 55, a2, v6, 0);
    result = 0;
    a2[2] = v6;
  }

  return result;
}

uint64_t ***frame_pack_headers_shared(uint64_t ***result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 12);
  v4 = *(a2 + 13);
  v5 = (*result)[3];
  v6 = *(*result + 8) - v5;
  if (*result != result[1])
  {
    v4 &= ~4u;
  }

  (*result)[3] = (v5 - 9);
  *(v5 - 9) = bswap32(v6) >> 8;
  *(v5 - 6) = v3;
  *(v5 - 5) = v4;
  v7 = bswap32(v2);
  *(v5 - 1) = v7;
  v8 = result[1];
  if (*result != v8)
  {
    for (i = **result; i != v8; i = *i)
    {
      v10 = i[3];
      v11 = *(i + 8) - v10;
      i[3] = v10 - 9;
      *(v10 - 9) = bswap32(v11) >> 8;
      *(v10 - 6) = 9;
      *(v10 - 4) = v7;
    }

    v12 = i[3];
    v13 = *(i + 8) - v12;
    i[3] = v12 - 9;
    *(v12 - 9) = bswap32(v13) >> 8;
    *(v12 - 6) = 9;
    *(v12 - 5) = 4;
    *(v12 - 4) = v7;
  }

  return result;
}

uint64_t bubble_down(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  for (i = a2; ; v2 = i)
  {
    v5 = 1;
    v6 = (2 * v2) | 1;
    do
    {
      v7 = v5;
      if (v6 >= *(v3 + 16))
      {
        break;
      }

      result = (*(v3 + 32))(*(*v3 + 8 * v6), *(*v3 + 8 * i));
      v5 = 0;
      if (result)
      {
        i = v6;
      }

      ++v6;
    }

    while ((v7 & 1) != 0);
    if (i == v2)
    {
      break;
    }

    v8 = *(*v3 + 8 * v2);
    v9 = *(*v3 + 8 * i);
    *(*v3 + 8 * v2) = v9;
    *v9 = v2;
    *(*v3 + 8 * i) = v8;
    *v8 = i;
  }

  return result;
}

uint64_t session_terminate_session(uint64_t a1, int a2, int a3, char *__s)
{
  if (*(a1 + 2724))
  {
    return 0;
  }

  v5 = a3;
  v6 = a2;
  v7 = a1;
  *(a1 + 736) = 15;
  if (__s)
  {
    v8 = strlen(__s);
    a1 = v7;
    a2 = v6;
    a3 = v5;
    v9 = __s;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  result = nghttp2_session_add_goaway(a1, a2, a3, v9, v8, 1);
  if (!result)
  {
    *(v7 + 2724) |= 1u;
  }

  return result;
}

uint64_t session_resume_deferred_stream_item(uint64_t a1, uint64_t a2, char a3)
{
  if (!*(a2 + 64))
  {
    __assert_rtn("nghttp2_stream_resume_deferred_item", "nghttp2_stream.c", 102, "stream->item");
  }

  v4 = *(a2 + 116) & ~a3;
  *(a2 + 116) = v4;
  if ((v4 & 0xC) != 0)
  {
    return 0;
  }

  return session_ob_data_push(a1, a2);
}

uint64_t nghttp2_session_resume_data(uint64_t *a1, int a2)
{
  v3 = nghttp2_map_find(a1, a2);
  if (!v3)
  {
    return 4294966795;
  }

  v4 = v3;
  v5 = *(v3 + 116);
  if ((v5 & 2) != 0 || *v3 == 5)
  {
    return 4294966795;
  }

  v7 = *(v3 + 64);
  result = 4294966795;
  if (v7 && (v5 & 0xC) != 0)
  {
    LODWORD(result) = session_resume_deferred_stream_item(a1, v4, 8);
    if (result <= -901)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t map_resize(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 8) + 24))((1 << a2), 16, **(a1 + 8));
  v5 = *(a1 + 8);
  v13[0] = v4;
  v13[1] = v5;
  v6 = *(a1 + 16);
  v13[3] = 0;
  v13[2] = v6;
  v13[4] = a2;
  if (!v4)
  {
    return 4294966395;
  }

  if (*(a1 + 24))
  {
    v7 = 0;
    v8 = (1 << *(a1 + 32));
    do
    {
      v9 = *a1 + v7;
      v10 = *(v9 + 8);
      if (v10)
      {
        if (map_insert(v13, *(v9 + 4), v10))
        {
          __assert_rtn("map_resize", "nghttp2_map.c", 187, "0 == rv");
        }
      }

      v7 += 16;
      --v8;
    }

    while (v8);
    v5 = *(a1 + 8);
    v11 = v13[0];
  }

  else
  {
    v11 = v4;
  }

  (*(v5 + 16))(*a1, *v5);
  result = 0;
  *a1 = v11;
  *(a1 + 32) = a2;
  return result;
}

uint64_t nghttp2_session_del(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 2408);
    if (v2)
    {
      do
      {
        v3 = *v2;
        (*(v1 + 2376))(v2[1], *(v1 + 2360));
        (*(v1 + 2376))(v2, *(v1 + 2360));
        v2 = v3;
      }

      while (v3);
    }

    for (i = 0; i != 320; i += 40)
    {
      (*(*(v1 + i + 120) + 16))(*(v1 + i + 112), **(v1 + i + 120));
      *(v1 + i + 112) = 0;
    }

    if (*(v1 + 24))
    {
      v5 = 0;
      v6 = (1 << *(v1 + 32));
      do
      {
        while (1)
        {
          v7 = *(*v1 + 16 * v5 + 8);
          if (v7)
          {
            break;
          }

          if (++v5 == v6)
          {
            goto LABEL_16;
          }
        }

        ++v5;
        if (free_streams(v7, v1))
        {
          v8 = 1;
        }

        else
        {
          v8 = v5 == v6;
        }
      }

      while (!v8);
    }

LABEL_16:
    (*(*(v1 + 8) + 16))(*v1, **(v1 + 8));
    ob_q_free(*(v1 + 40), (v1 + 2360));
    ob_q_free(*(v1 + 64), (v1 + 2360));
    ob_q_free(*(v1 + 88), (v1 + 2360));
    active_outbound_item_reset((v1 + 432), (v1 + 2360));
    session_inbound_frame_reset(v1);
    hd_context_free((v1 + 776));
    nghttp2_hd_inflate_free((v1 + 1888));
    nghttp2_bufs_free((v1 + 440));
    v9 = *(v1 + 2376);
    v10 = *(v1 + 2360);

    return v9(v1, v10);
  }

  return result;
}

uint64_t ob_q_free(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 144);
      nghttp2_outbound_item_free(v3, a2);
      result = (a2[2])(v3, *a2);
      v3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t hd_context_free(uint64_t *a1)
{
  v2 = a1[4];
  if (a1[3])
  {
    v3 = 0;
    do
    {
      v4 = hd_ringbuf_get(a1, v3);
      nghttp2_rcbuf_decref(v4[1]);
      nghttp2_rcbuf_decref(*v4);
      (v2[2])(v4, *v2);
      ++v3;
    }

    while (v3 < a1[3]);
  }

  v5 = *a1;
  v6 = v2[2];
  v7 = *v2;

  return v6(v5, v7);
}

uint64_t nghttp2_hd_inflate_free(uint64_t *a1)
{
  nghttp2_rcbuf_decref(a1[22]);
  nghttp2_rcbuf_decref(a1[21]);
  a1[21] = 0;
  a1[22] = 0;
  nghttp2_rcbuf_decref(a1[20]);
  nghttp2_rcbuf_decref(a1[19]);

  return hd_context_free(a1);
}

void **nghttp2_bufs_free(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      do
      {
        v3 = v1[2];
        v4 = *v2;
        (v3[2])(v2[1], *v3);
        v2[1] = 0;
        result = (v3[2])(v2, *v3);
        v2 = v4;
      }

      while (v4);
    }

    *v1 = 0;
  }

  return result;
}

uint64_t session_defer_stream_item(uint64_t result, uint64_t a2, char a3)
{
  if (!*(a2 + 64))
  {
    __assert_rtn("nghttp2_stream_defer_item", "nghttp2_stream.c", 92, "stream->item");
  }

  *(a2 + 116) |= a3;
  if (*(a2 + 118))
  {

    return session_ob_data_remove(result, a2);
  }

  return result;
}

uint64_t nghttp2_session_on_settings_received(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  v4 = a1;
  if (*(a2 + 8))
  {
    v5 = "SETTINGS: stream_id != 0";
LABEL_3:
    a1 = v4;
    a2 = v3;
    v6 = 4294966791;
    goto LABEL_4;
  }

  if (*(a2 + 13))
  {
    if (*(a2 + 16))
    {
      v5 = "SETTINGS: ACK and payload != 0";
      v6 = 4294966774;
      goto LABEL_4;
    }

    v28 = *(a1 + 2408);
    if (!v28)
    {
      v5 = "SETTINGS: unexpected ACK";
      goto LABEL_3;
    }

    v29 = v28[2];
    if (!v29)
    {
LABEL_113:
      v27 = 0;
      goto LABEL_114;
    }

    v30 = 0;
    v31 = 0;
    v32 = v28[1];
    v33 = -1;
    v34 = 1;
    v35 = -1;
LABEL_71:
    v36 = (v32 + 8 * v31);
    while (1)
    {
      if (*v36 == 4)
      {
        v35 = v36[1];
      }

      else if (*v36 == 1)
      {
        v34 = 0;
        v30 = v36[1];
        if (v33 >= v30)
        {
          v33 = v36[1];
        }

        if (++v31 == v29)
        {
LABEL_85:
          if (v33 >= v30 || (updated = nghttp2_hd_inflate_change_table_size(a1 + 1888, v33), !updated))
          {
            updated = nghttp2_hd_inflate_change_table_size(v4 + 1888, v30);
            if (!updated)
            {
              goto LABEL_90;
            }
          }

LABEL_88:
          v27 = updated;
LABEL_114:
          *(v4 + 2408) = *v28;
          (*(v4 + 2376))(v28[1], *(v4 + 2360));
          (*(v4 + 2376))(v28, *(v4 + 2360));
          if (v27)
          {
            if (v27 < -900)
            {
              return v27;
            }

            a1 = v4;
            a2 = v3;
            v6 = v27;
LABEL_117:
            v5 = 0;
LABEL_4:

            return session_handle_invalid_connection(a1, a2, v6, v5);
          }

LABEL_118:
          v45 = *(v4 + 2160);
          if (v45 && v45(v4, v3, *(v4 + 2400)))
          {
            return 4294966394;
          }

          else
          {
            return 0;
          }
        }

        goto LABEL_71;
      }

      ++v31;
      v36 += 2;
      if (v29 == v31)
      {
        if ((v34 & 1) == 0)
        {
          goto LABEL_85;
        }

LABEL_90:
        if (v35 != -1)
        {
          v38 = *(v4 + 2688);
          v46 = v4;
          v47 = v35;
          v48 = v38;
          if (*(v4 + 24))
          {
            v39 = (1 << *(v4 + 32));
            v40 = 8;
            do
            {
              v41 = *(*v4 + v40);
              if (v41)
              {
                updated = update_local_initial_window_size_func(v41, &v46);
                if (updated)
                {
                  goto LABEL_88;
                }
              }

              v40 += 16;
            }

            while (--v39);
          }
        }

        v42 = (v32 + 4);
        while (2)
        {
          v43 = *(v42 - 1);
          if (v43 > 4)
          {
            if (v43 > 7)
            {
              v44 = (v4 + 2700);
              if (v43 != 8)
              {
                if (v43 != 9)
                {
                  goto LABEL_112;
                }

                v44 = (v4 + 2704);
              }
            }

            else
            {
              v44 = (v4 + 2692);
              if (v43 != 5)
              {
                v44 = (v4 + 2696);
                if (v43 != 6)
                {
LABEL_112:
                  v42 += 2;
                  if (!--v29)
                  {
                    goto LABEL_113;
                  }

                  continue;
                }
              }
            }
          }

          else if (v43 > 2)
          {
            v44 = (v4 + 2684);
            if (v43 != 3)
            {
              v44 = (v4 + 2688);
            }
          }

          else
          {
            v44 = (v4 + 2676);
            if (v43 != 1)
            {
              v44 = (v4 + 2680);
              if (v43 != 2)
              {
                goto LABEL_112;
              }
            }
          }

          break;
        }

        *v44 = *v42;
        goto LABEL_112;
      }
    }
  }

  if (!*(a1 + 2640))
  {
    *(a1 + 2652) = -1;
    *(a1 + 2640) = 1;
  }

  if (!*(a2 + 16))
  {
LABEL_59:
    if (*(v4 + 2672) == -1)
    {
      *(v4 + 2672) = 0;
    }

    if (!a3 && !session_is_closing(v4))
    {
      v26 = nghttp2_session_add_settings(v4, 1, 0, 0);
      if (v26)
      {
        v27 = v26;
        if (v26 < -900)
        {
          return v27;
        }

        a1 = v4;
        a2 = v3;
        v6 = 4294966762;
        goto LABEL_117;
      }
    }

    goto LABEL_118;
  }

  v9 = 0;
  while (1)
  {
    v10 = (*(v3 + 24) + 8 * v9);
    v11 = *v10;
    if (*v10 > 4)
    {
      if (v11 > 7)
      {
        if (v11 == 8)
        {
          v24 = v10[1];
          if (v24 >= 2)
          {
            v5 = "SETTINGS: invalid SETTINGS_ENABLE_CONNECT_PROTOCOL";
            goto LABEL_3;
          }

          if (!*(v4 + 2723) && !v24 && *(v4 + 2668) != 0)
          {
            v5 = "SETTINGS: server attempted to disable SETTINGS_ENABLE_CONNECT_PROTOCOL";
            goto LABEL_3;
          }

          *(v4 + 2668) = v24;
        }

        else if (v11 == 9)
        {
          v20 = v10[1];
          if (v20 >= 2)
          {
            v5 = "SETTINGS: invalid SETTINGS_NO_RFC7540_PRIORITIES";
            goto LABEL_3;
          }

          v21 = *(v4 + 2672);
          if (v21 != -1 && v21 != v20)
          {
            v5 = "SETTINGS: SETTINGS_NO_RFC7540_PRIORITIES cannot be changed";
            goto LABEL_3;
          }

          *(v4 + 2672) = v20;
        }
      }

      else if (v11 == 5)
      {
        v23 = v10[1];
        if ((v23 - 0x1000000) <= 0xFF003FFF)
        {
          v5 = "SETTINGS: invalid SETTINGS_MAX_FRAME_SIZE";
          goto LABEL_3;
        }

        *(v4 + 2660) = v23;
      }

      else if (v11 == 6)
      {
        *(v4 + 2664) = v10[1];
      }

      goto LABEL_58;
    }

    if (v11 <= 2)
    {
      if (v11 == 1)
      {
        v22 = v10[1];
        if (v22 >= *(v4 + 1864))
        {
          v22 = *(v4 + 1864);
        }

        *(v4 + 824) = v22;
        if (*(v4 + 1872) < v22)
        {
          v22 = *(v4 + 1872);
        }

        *(v4 + 1872) = v22;
        *(v4 + 1880) = 1;
        hd_context_shrink_table_size((v4 + 776), v4 + 840);
        *(v4 + 2644) = v10[1];
      }

      else if (v11 == 2)
      {
        v12 = v10[1];
        if (v12 >= 2)
        {
          v5 = "SETTINGS: invalid SETTINGS_ENBLE_PUSH";
          goto LABEL_3;
        }

        if (v12)
        {
          v13 = *(v4 + 2723) == 0;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v5 = "SETTINGS: server attempted to enable push";
          goto LABEL_3;
        }

        *(v4 + 2648) = v12;
      }

      goto LABEL_58;
    }

    if (v11 == 3)
    {
      *(v4 + 2652) = v10[1];
      goto LABEL_58;
    }

    if (v11 == 4)
    {
      break;
    }

LABEL_58:
    if (++v9 >= *(v3 + 16))
    {
      goto LABEL_59;
    }
  }

  v14 = v10[1];
  if (v14 < 0)
  {
    v5 = "SETTINGS: too large SETTINGS_INITIAL_WINDOW_SIZE";
    a1 = v4;
    a2 = v3;
    v6 = 4294966772;
    goto LABEL_4;
  }

  v46 = v4;
  v15 = *(v4 + 2656);
  v47 = v14;
  v48 = v15;
  if (!*(v4 + 24))
  {
LABEL_35:
    *(v4 + 2656) = v14;
    goto LABEL_58;
  }

  v16 = (1 << *(v4 + 32));
  v17 = 8;
  while (1)
  {
    v18 = *(*v4 + v17);
    if (v18)
    {
      v19 = update_remote_initial_window_size_func(v18, &v46);
      if (v19)
      {
        break;
      }
    }

    v17 += 16;
    if (!--v16)
    {
      v14 = v10[1];
      goto LABEL_35;
    }
  }

  v27 = v19;
  if (v19 >= -900)
  {
    a1 = v4;
    a2 = v3;
    v6 = 4294966772;
    goto LABEL_117;
  }

  return v27;
}

uint64_t update_local_initial_window_size_func(uint64_t a1, int *a2)
{
  v2 = *(a1 + 100);
  v3 = a2[2] - a2[3];
  v4 = v3 + v2;
  if (v3 + v2 != v3 + v2)
  {
    return 4294966772;
  }

  *(a1 + 100) = v4;
  if (*(a1 + 119))
  {
    return 0;
  }

  v7 = *a2;
  if (*(*a2 + 2708))
  {
    v10 = *(a1 + 80);

    return session_update_consumed_size(v7, (a1 + 92), (a1 + 88), 0, v10, 0, v4);
  }

  else
  {
    v8 = *(a1 + 88);
    if (v8 < 1 || v4 / 2 > v8)
    {
      return 0;
    }

    result = nghttp2_session_add_window_update(v7, *(a1 + 80), v8);
    if (!result)
    {
      *(a1 + 88) = 0;
    }
  }

  return result;
}

uint64_t update_remote_initial_window_size_func(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) - *(a2 + 12) + *(a1 + 84);
  if (v2 != v2)
  {
    return 4294966772;
  }

  *(a1 + 84) = v2;
  if (v2 >= 1 && *(a1 + 64) && (*(a1 + 116) & 4) != 0 && session_resume_deferred_stream_item(*a2, a1, 4) < -900)
  {
    return 4294966395;
  }

  else
  {
    return 0;
  }
}

uint64_t parse_uint(unsigned __int8 *a1, uint64_t a2)
{
  if (a2)
  {
    result = 0;
    while (1)
    {
      v5 = *a1++;
      v4 = v5;
      if ((v5 - 58) < 0xFFFFFFF6 || result > 0xCCCCCCCCCCCCCCCLL)
      {
        break;
      }

      v7 = v4 & 0xF;
      if (10 * result > (v7 ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        break;
      }

      result = 10 * result + v7;
      if (!--a2)
      {
        return result;
      }
    }
  }

  return -1;
}

BOOL stream_less(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24) - *(a1 + 24);
  if (v2)
  {
    return v2 >> 24 == 0;
  }

  else
  {
    return *(a1 + 32) < *(a2 + 32);
  }
}

void *hd_context_shrink_table_size(void *result, uint64_t a2)
{
  if (result[5] > result[6])
  {
    v3 = result;
    v4 = result[4];
    do
    {
      v5 = v3[3];
      if (!v5)
      {
        break;
      }

      v6 = hd_ringbuf_get(v3, v5 - 1);
      v7 = v6[1];
      v3[5] = v3[5] - (*(*v6 + 24) + *(v7 + 24)) - 32;
      v8 = v3[3];
      if (!v8)
      {
        __assert_rtn("hd_ringbuf_pop_back", "nghttp2_hd.c", 682, "ringbuf->len > 0");
      }

      v3[3] = v8 - 1;
      if (a2)
      {
        v9 = (a2 + 8 * (*(v6 + 19) & 0x7F));
        v10 = *v9;
        if (*v9)
        {
          if (v10 == v6)
          {
LABEL_11:
            *v9 = v6[8];
            v6[8] = 0;
            v7 = v6[1];
          }

          else
          {
            while (1)
            {
              v11 = v10;
              v10 = v10[8];
              if (!v10)
              {
                break;
              }

              if (v10 == v6)
              {
                v9 = (v11 + 8);
                goto LABEL_11;
              }
            }
          }
        }
      }

      nghttp2_rcbuf_decref(v7);
      nghttp2_rcbuf_decref(*v6);
      result = (*(v4 + 16))(v6, *v4);
    }

    while (v3[5] > v3[6]);
  }

  return result;
}

uint64_t nghttp2_submit_rst_stream(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    return nghttp2_session_add_rst_stream_continue(a1, a3, a4, 0);
  }

  else
  {
    return 4294966795;
  }
}

BOOL nghttp2_session_want_write(uint64_t a1)
{
  if ((*(a1 + 2724) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 432) || *(a1 + 40) || *(a1 + 64))
  {
    return 1;
  }

  v2 = 128;
  while (!*(a1 + v2))
  {
    v2 += 40;
    if (v2 == 448)
    {
      return *(a1 + 88) && *(a1 + 2488) < *(a1 + 2652);
    }
  }

  if (*(a1 + 2620) > 0)
  {
    return 1;
  }

  return *(a1 + 88) && *(a1 + 2488) < *(a1 + 2652);
}

uint64_t nghttp2_session_set_local_window_size(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 < 0)
  {
    return 4294966795;
  }

  if (a3)
  {
    result = nghttp2_map_find(a1, a3);
    if (!result)
    {
      return result;
    }

    v8 = result;
    if ((*(result + 116) & 2) == 0 && *result != 5)
    {
      v9 = (result + 100);
      v10 = a4 - *(v8 + 100);
      v17 = v10;
      if (v10)
      {
        v11 = (v8 + 88);
        if ((v10 & 0x80000000) == 0)
        {
          result = nghttp2_increase_local_window_size(v9, v11, (v8 + 96), &v17);
          if (result)
          {
            return result;
          }

          v12 = v17;
          v13 = a1;
          if (v17 >= 1)
          {
            v14 = a3;
LABEL_19:

            return nghttp2_session_add_window_update(v13, v14, v12);
          }

          return nghttp2_session_update_recv_stream_window_size(a1, v8, 0, 1);
        }

        v16 = (v8 + 96);
        return nghttp2_adjust_local_window_size(v9, v11, v16, &v17);
      }
    }

    return 0;
  }

  v15 = a4 - *(a1 + 2636);
  v17 = v15;
  if (!v15)
  {
    return 0;
  }

  v9 = (a1 + 2636);
  v11 = (a1 + 2624);
  if (v15 < 0)
  {
    v16 = (a1 + 2632);
    return nghttp2_adjust_local_window_size(v9, v11, v16, &v17);
  }

  result = nghttp2_increase_local_window_size(v9, v11, (a1 + 2632), &v17);
  if (result)
  {
    return result;
  }

  v12 = v17;
  v13 = a1;
  if (v17 >= 1)
  {
    v14 = 0;
    goto LABEL_19;
  }

  return nghttp2_session_update_recv_connection_window_size(a1, 0);
}

uint64_t nghttp2_increase_local_window_size(int *a1, _DWORD *a2, int *a3, int *a4)
{
  v4 = *a4;
  if (*a4 < 0)
  {
    __assert_rtn("nghttp2_increase_local_window_size", "nghttp2_helper.c", 225, "delta >= 0");
  }

  v6 = *a1;
  if (*a1 > (v4 ^ 0x7FFFFFFF))
  {
    return 4294966772;
  }

  result = 0;
  *a1 = v6 + v4;
  if (*a3 < v4)
  {
    v4 = *a3;
  }

  *a3 -= v4;
  *a2 += v4;
  *a4 -= v4;
  return result;
}

uint64_t nghttp2_session_callbacks_new(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xE8uLL, 0x80040FC003580uLL);
  *a1 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 4294966395;
  }
}

uint64_t nghttp2_option_new(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x98uLL, 0x10000401CC6BE04uLL);
  *a1 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 4294966395;
  }
}

uint64_t nghttp2_option_set_no_auto_window_update(uint64_t result, int a2)
{
  *(result + 72) |= 1u;
  *(result + 88) = a2;
  return result;
}

uint64_t nghttp2_option_set_peer_max_concurrent_streams(uint64_t result, int a2)
{
  *(result + 72) |= 2u;
  *(result + 76) = a2;
  return result;
}

uint64_t nghttp2_option_set_no_recv_client_magic(uint64_t result, int a2)
{
  *(result + 72) |= 4u;
  *(result + 92) = a2;
  return result;
}

uint64_t nghttp2_option_set_no_http_messaging(uint64_t result, int a2)
{
  *(result + 72) |= 8u;
  *(result + 96) = a2;
  return result;
}

uint64_t nghttp2_option_set_max_reserved_remote_streams(uint64_t result, int a2)
{
  *(result + 72) |= 0x10u;
  *(result + 80) = a2;
  return result;
}

uint64_t nghttp2_option_set_user_recv_extension_type(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *(result + 72) |= 0x20u;
    *(result + (a2 >> 3) + 120) |= 1 << (a2 & 7);
  }

  return result;
}

uint64_t nghttp2_option_set_builtin_recv_extension_type(uint64_t result, int a2)
{
  switch(a2)
  {
    case 10:
      v2 = 1;
      break;
    case 16:
      v2 = 4;
      break;
    case 12:
      v2 = 2;
      break;
    default:
      return result;
  }

  *(result + 72) |= 0x80u;
  *(result + 84) |= v2;
  return result;
}

uint64_t nghttp2_option_set_no_auto_ping_ack(uint64_t result, int a2)
{
  *(result + 72) |= 0x40u;
  *(result + 100) = a2;
  return result;
}

uint64_t nghttp2_option_set_max_send_header_block_length(uint64_t result, uint64_t a2)
{
  *(result + 72) |= 0x100u;
  *(result + 32) = a2;
  return result;
}

uint64_t nghttp2_option_set_max_deflate_dynamic_table_size(uint64_t result, uint64_t a2)
{
  *(result + 72) |= 0x200u;
  *(result + 40) = a2;
  return result;
}

uint64_t nghttp2_option_set_no_closed_streams(uint64_t result, int a2)
{
  *(result + 72) |= 0x400u;
  *(result + 104) = a2;
  return result;
}

uint64_t nghttp2_option_set_max_outbound_ack(uint64_t result, uint64_t a2)
{
  *(result + 72) |= 0x800u;
  *(result + 48) = a2;
  return result;
}

uint64_t nghttp2_option_set_max_settings(uint64_t result, uint64_t a2)
{
  *(result + 72) |= 0x1000u;
  *(result + 56) = a2;
  return result;
}

uint64_t nghttp2_option_set_server_fallback_rfc7540_priorities(uint64_t result, int a2)
{
  *(result + 72) |= 0x2000u;
  *(result + 112) = a2;
  return result;
}

uint64_t nghttp2_option_set_no_rfc9113_leading_and_trailing_ws_validation(uint64_t result, int a2)
{
  *(result + 72) |= 0x4000u;
  *(result + 116) = a2;
  return result;
}

uint64_t nghttp2_option_set_stream_reset_rate_limit(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 72) |= 0x8000u;
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t nghttp2_option_set_max_continuations(uint64_t result, uint64_t a2)
{
  *(result + 72) |= 0x10000u;
  *(result + 64) = a2;
  return result;
}

uint64_t nghttp2_option_set_glitch_rate_limit(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 72) |= 0x20000u;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t nghttp2_option_set_no_http_semantics(uint64_t result, int a2)
{
  *(result + 72) |= 0x80000000;
  *(result + 108) = a2;
  return result;
}

uint64_t map_insert(uint64_t *a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  LODWORD(v4) = (-297201227 * (*(a1 + 4) + a2)) >> -v3;
  v5 = *a1;
  v6 = *a1 + 16 * v4;
  v8 = (v6 + 8);
  v7 = *(v6 + 8);
  if (v7)
  {
    v9 = 0;
    v10 = ~(-1 << v3);
    v11 = a2;
    while (1)
    {
      v13 = *v6;
      v12 = *(v6 + 4);
      if (v9 <= *v6)
      {
        if (v12 == a2)
        {
          return 4294966795;
        }
      }

      else
      {
        *v6 = v9;
        *(v6 + 4) = v11;
        *v8 = a3;
        v5 = *a1;
        v9 = v13;
        v11 = v12;
        a3 = v7;
      }

      ++v9;
      v4 = (v4 + 1) & v10;
      v6 = v5 + 16 * v4;
      v8 = (v6 + 8);
      v7 = *(v6 + 8);
      if (!v7)
      {
        goto LABEL_9;
      }
    }
  }

  v9 = 0;
  v11 = a2;
LABEL_9:
  v14 = 0;
  *v6 = v9;
  *(v6 + 4) = v11;
  *(v6 + 8) = a3;
  ++a1[3];
  return v14;
}

uint64_t nghttp2_stream_get_state(uint64_t a1)
{
  if (a1 == &nghttp2_stream_root)
  {
    return 1;
  }

  if ((*(a1 + 116) & 2) != 0)
  {
    return 7;
  }

  v1 = *(a1 + 117);
  if (*(a1 + 116))
  {
    if (*(a1 + 117))
    {
      return 3;
    }

    if ((*(a1 + 117) & 2) != 0)
    {
      return 4;
    }
  }

  else if (*(a1 + 117))
  {
    return 6;
  }

  if ((*(a1 + 117) & 2) != 0)
  {
    return 5;
  }

  if (*a1 == 5)
  {
    return 1;
  }

  return 2;
}

uint64_t nghttp2_frame_pack_push_promise(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    __assert_rtn("nghttp2_frame_pack_push_promise", "nghttp2_frame.c", 561, "bufs->head == bufs->cur");
  }

  v6 = *(v3 + 24) + 4;
  *(v3 + 24) = v6;
  *(v3 + 32) = v6;
  v7 = nghttp2_hd_deflate_hd_bufs(a3, a1, *(a2 + 24), *(a2 + 32));
  if (v7 == -502)
  {
    v8 = 4294966773;
  }

  else
  {
    v8 = v7;
  }

  v9 = (*(v3 + 24) - 4);
  *(v3 + 24) = v9;
  if (!v8)
  {
    *v9 = bswap32(*(a2 + 40));
    *(a2 + 16) = 0;
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      do
      {
        v11 = v11 + v10[4] - v10[3];
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    *a2 = v11;
    frame_pack_headers_shared(a1, a2);
  }

  return v8;
}

uint64_t nghttp2_nv_compare_name(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 16);
  if (v5 == v7)
  {

    return memcmp(v4, v6, v5);
  }

  else if (v5 >= v7)
  {
    LODWORD(result) = memcmp(v4, v6, v7);
    if (result <= 1)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  else
  {
    LODWORD(result) = memcmp(v4, v6, v5);
    if (result)
    {
      return result;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t nghttp2_hd_deflate_change_table_size(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 1088);
  if (a2 < v2)
  {
    v2 = a2;
  }

  *(a1 + 48) = v2;
  if (*(a1 + 1096) < v2)
  {
    v2 = *(a1 + 1096);
  }

  *(a1 + 1096) = v2;
  *(a1 + 1104) = 1;
  hd_context_shrink_table_size(a1, a1 + 64);
  return 0;
}

uint64_t nghttp2_hd_inflate_change_table_size(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 228) > 1u)
  {
    return 4294966777;
  }

  *(a1 + 200) = a2;
  if (*(a1 + 48) > a2)
  {
    *(a1 + 228) = 0;
    *(a1 + 208) = a2;
    *(a1 + 48) = a2;
    hd_context_shrink_table_size(a1, 0);
  }

  return 0;
}

uint64_t emit_table_size(uint64_t a1, unint64_t a2)
{
  *&v12[15] = *MEMORY[0x29EDCA608];
  if (a2 <= 0x1E)
  {
    __src = a2 | 0x20;
    v2 = 1;
LABEL_13:
    result = nghttp2_bufs_add(a1, &__src, v2);
    goto LABEL_14;
  }

  v3 = a2 - 31;
  if (a2 - 31 < 0x80)
  {
    __src = 63;
    v8 = v12;
    v2 = 2;
LABEL_12:
    *v8 = v3;
    goto LABEL_13;
  }

  v4 = 0;
  v5 = a2 - 31;
  do
  {
    v6 = v5 >> 14;
    v5 >>= 7;
    ++v4;
  }

  while (v6);
  if (v4 <= 0xE)
  {
    __src = 63;
    v8 = v12;
    do
    {
      *v8++ = v3 | 0x80;
      v9 = v3 >> 14;
      v3 >>= 7;
    }

    while (v9);
    v2 = v4 + 2;
    goto LABEL_12;
  }

  result = 4294966773;
LABEL_14:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nghttp2_hd_deflate_hd2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v11 = (v10[1])(48, *v10);
  if (!v11)
  {
    return -901;
  }

  v11[4] = a2;
  v11[5] = a2;
  v11[2] = a2;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = a2;
  if (a3)
  {
    v11[2] = a2 + a3;
  }

  v18[0] = v11;
  v18[1] = v11;
  v19 = v10;
  v20 = a3;
  v21 = vdupq_n_s64(1uLL);
  v22 = xmmword_298402630;
  v12 = nghttp2_hd_deflate_hd_bufs(a1, v18, a4, a5);
  if (v18[0])
  {
    v13 = 0;
    v14 = v18[0];
    do
    {
      v13 = v13 + v14[4] - v14[3];
      v14 = *v14;
    }

    while (v14);
    v15 = *v19;
    (v19[2])();
  }

  else
  {
    v13 = 0;
  }

  v17 = v12;
  if (!v12)
  {
    v17 = v13;
  }

  if (v12 == -502)
  {
    return -525;
  }

  else
  {
    return v17;
  }
}

uint64_t nghttp2_hd_deflate_hd_vec2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = *(a1 + 32);
  if (a3)
  {
    v31 = (v8[1])(48 * a3, *v8);
    if (v31)
    {
      v11 = 0;
      v12 = 0;
      v13 = (a2 + 8);
      v14 = &v31;
      v15 = a3;
      do
      {
        v16 = v31;
        v17 = (v31 + v11);
        v18 = *(v13 - 1);
        v19 = *v13;
        v17[4] = v18;
        v17[5] = v18;
        v17[2] = v18;
        v17[3] = v18;
        *v17 = 0;
        v17[1] = v18;
        if (v19)
        {
          v17[2] = v18 + v19;
        }

        *v14 = v17;
        v14 = (v16 + 48 * v12);
        v13 += 2;
        ++v12;
        v11 += 48;
        --v15;
      }

      while (v15);
      *&v27 = v31;
      *(&v27 + 1) = v31;
      v28 = v8;
      v29.i64[0] = a3;
      v29.i64[1] = a3;
      v30 = a3;
      goto LABEL_10;
    }

    return -901;
  }

  v20 = (v8[1])(48, *v8);
  if (!v20)
  {
    return -901;
  }

  v20[1] = 0u;
  v20[2] = 0u;
  *v20 = 0u;
  *&v27 = v20;
  *(&v27 + 1) = v20;
  v28 = v8;
  v29 = vdupq_n_s64(1uLL);
  v30 = xmmword_298402630;
LABEL_10:
  v21 = nghttp2_hd_deflate_hd_bufs(a1, &v27, a4, a5);
  if (v27)
  {
    v22 = 0;
    v23 = v27;
    do
    {
      v22 = v22 + v23[4] - v23[3];
      v23 = *v23;
    }

    while (v23);
    v24 = *v28;
    (*(v28 + 16))();
  }

  else
  {
    v22 = 0;
  }

  v26 = v21;
  if (!v21)
  {
    v26 = v22;
  }

  if (v21 == -502)
  {
    return -525;
  }

  else
  {
    return v26;
  }
}

uint64_t nghttp2_hd_deflate_bound(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 12 * a3 + 12;
  if (a3)
  {
    v4 = (a2 + 24);
    do
    {
      result += *(v4 - 1) + *v4;
      v4 += 5;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t nghttp2_hd_deflate_new2(uint64_t *a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &mem_default;
  }

  v6 = (v5[1])(1112, *v5);
  if (!v6)
  {
    return 4294966395;
  }

  v7 = v6;
  *(v6 + 32) = v5;
  *(v6 + 60) = 0;
  *(v6 + 48) = 4096;
  v8 = (v5[1])(1024, *v5);
  *v7 = v8;
  if (!v8)
  {
    (v5[2])(v7, *v5);
    return 4294966395;
  }

  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 127;
  *(v7 + 40) = 0;
  *(v7 + 56) = 0;
  bzero((v7 + 64), 0x400uLL);
  v9 = 0;
  if (a2 <= 0xFFF)
  {
    *(v7 + 48) = a2;
    v9 = 1;
  }

  result = 0;
  *(v7 + 1104) = v9;
  *(v7 + 1088) = a2;
  *(v7 + 1096) = 0xFFFFFFFFLL;
  *a1 = v7;
  return result;
}

uint64_t nghttp2_hd_deflate_del(uint64_t *a1)
{
  v2 = a1[4];
  hd_context_free(a1);
  v3 = v2[2];
  v4 = *v2;

  return v3(a1, v4);
}

uint64_t nghttp2_hd_inflate_hd3(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  result = nghttp2_hd_inflate_hd_nv(a1, &v12, a3, a4, a5, a6);
  if ((result & 0x8000000000000000) == 0 && (*a3 & 2) != 0)
  {
    v9 = *(v12 + 24);
    v11 = *(v13 + 16);
    v10 = *(v13 + 24);
    *a2 = *(v12 + 16);
    *(a2 + 8) = v11;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = BYTE4(v14);
  }

  return result;
}

uint64_t nghttp2_hd_inflate_end_headers(uint64_t a1)
{
  nghttp2_rcbuf_decref(*(a1 + 176));
  nghttp2_rcbuf_decref(*(a1 + 168));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 228) = 1;
  return 0;
}

uint64_t nghttp2_hd_inflate_new2(uint64_t *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = &mem_default;
  }

  v4 = (v3[1])(240, *v3);
  if (!v4)
  {
    return 4294966395;
  }

  v5 = v4;
  v6 = nghttp2_hd_inflate_init(v4, v3);
  if (v6)
  {
    (v3[2])(v5, *v3);
  }

  else
  {
    *a1 = v5;
  }

  return v6;
}

uint64_t nghttp2_hd_inflate_del(uint64_t *a1)
{
  v2 = a1[4];
  nghttp2_hd_inflate_free(a1);
  v3 = v2[2];
  v4 = *v2;

  return v3(a1, v4);
}

_DWORD *hd_get_table_entry(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 - 1;
  if (a2 - 1 >= (a1[3] + 61))
  {
    return 0;
  }

  if (v2 < 0x3D)
  {
    return &static_table[32 * v2 + 20];
  }

  return (hd_ringbuf_get(a1, a2 - 62) + 24);
}

uint64_t nghttp2_select_next_protocol(void *a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  if (!select_alpn(a1, a2, a3, a4, "\x02h2", 3uLL))
  {
    return 1;
  }

  if (select_alpn(a1, a2, a3, a4, "\bhttp/1.1", 9uLL))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t select_alpn(void *a1, _BYTE *a2, uint64_t a3, unsigned int a4, void *__s2, size_t __n)
{
  if (__n > a4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = __n;
  v13 = 0;
  v14 = __n;
  while (1)
  {
    v15 = (a3 + v13);
    result = memcmp(v15, __s2, v14);
    if (!result)
    {
      break;
    }

    v13 += *v15 + 1;
    if (v13 + v7 > a4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  *a1 = a3 + v13 + 1;
  *a2 = *v15;
  return result;
}

uint64_t nghttp2_select_alpn(void *a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  if (!select_alpn(a1, a2, a3, a4, "\x02h2", 3uLL))
  {
    return 1;
  }

  if (select_alpn(a1, a2, a3, a4, "\bhttp/1.1", 9uLL))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t nghttp2_priority_spec_init(uint64_t result, int a2, int a3, int a4)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4 != 0;
  return result;
}

double nghttp2_priority_spec_default_init(uint64_t a1)
{
  *&result = 0x1000000000;
  *a1 = 0x1000000000;
  *(a1 + 8) = 0;
  return result;
}

uint64_t parser_skip_inner_list(uint64_t a1)
{
  do
  {
    v2 = *(a1 + 16) & 3;
    if (v2 > 1)
    {
      if (v2 != 3)
      {
        __assert_rtn("sfparse_parser_inner_list", "sfparse.c", 1329, "0");
      }

LABEL_10:
      v3 = *a1;
      v5 = *(a1 + 8);
      if (*a1 == v5)
      {
        return 0xFFFFFFFFLL;
      }

      v6 = *v3;
      if (v6 != 41)
      {
        if (v6 == 32)
        {
          v7 = v3 + 1;
          while (1)
          {
            *a1 = v7;
            if (v7 == v5)
            {
              break;
            }

            v9 = *v7++;
            v8 = v9;
            if (v9 != 32)
            {
              v3 = v7 - 1;
              goto LABEL_19;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }

LABEL_20:
      *a1 = v3 + 1;
      result = 4294967294;
      v11 = -8;
LABEL_21:
      *(a1 + 16) = *(a1 + 16) & v11 | 1;
      continue;
    }

    if (v2)
    {
      if (parser_skip_params(a1))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_10;
    }

    v3 = *a1;
    v4 = *(a1 + 8);
    while (v3 != v4 && *v3 == 32)
    {
      *a1 = ++v3;
    }

    if (v3 == v4)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = *v3;
LABEL_19:
    if (v8 == 41)
    {
      goto LABEL_20;
    }

    result = parser_bare_item(a1, 0);
    if (!result)
    {
      v11 = -4;
      goto LABEL_21;
    }
  }

  while (!result);
  if (result == -2)
  {
    return 0;
  }

  if (result != -1)
  {
    __assert_rtn("parser_skip_inner_list", "sfparse.c", 1365, "0");
  }

  return result;
}

uint64_t parser_key(unsigned __int8 **a1, void *a2)
{
  v2 = *a1;
  v3 = **a1;
  if ((v3 - 97) >= 0x1A && v3 != 42)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1[1];
  v5 = (v2 + 1);
  *a1 = (v2 + 1);
  if ((v2 + 1) == v4)
  {
LABEL_9:
    v5 = v4;
  }

  else
  {
    while (1)
    {
      v6 = *v5;
      if ((v6 - 97) >= 0x1A)
      {
        v7 = v6 - 42;
        v8 = v7 > 0x35;
        v9 = (1 << v7) & 0x2000000000FFD9;
        if (v8 || v9 == 0)
        {
          break;
        }
      }

      *a1 = ++v5;
      if (v5 == v4)
      {
        goto LABEL_9;
      }
    }
  }

  result = 0;
  if (a2)
  {
    *a2 = v2;
    a2[1] = &v5[-v2];
  }

  return result;
}

uint64_t parser_bare_item(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = 0xFFFFFFFFLL;
  if (v3 <= 0x39)
  {
    if (**a1 > 0x2Cu)
    {
      if (v3 - 48 < 0xA || v3 == 45)
      {
        return parser_number(a1, a2);
      }

      return v4;
    }

    switch(v3)
    {
      case '""':
        return parser_string(a1, a2);
      case '%':
        return parser_dispstring(a1, a2);
      case '*':
        goto LABEL_4;
      default:
        return v4;
    }
  }

  else
  {
    v5 = v3 - 63;
    if (v5 > 0x3B)
    {
      goto LABEL_28;
    }

    if (((1 << (v3 - 63)) & 0xFFFFFFC0FFFFFFCLL) != 0)
    {
LABEL_4:
      v6 = a1[1];
      v7 = (v2 + 1);
      for (*a1 = v2 + 1; v7 != v6; *a1 = v7)
      {
        v8 = *v7;
        if ((v8 - 33) > 0x39 || ((1 << (v8 - 33)) & 0x3FFFFFF03FFF67DLL) == 0)
        {
          v10 = v8 - 94;
          v11 = v10 > 0x20;
          v12 = (1 << v10) & 0x15FFFFFFFLL;
          if (v11 || v12 == 0)
          {
            break;
          }
        }

        ++v7;
      }

      v4 = 0;
      if (a2)
      {
        *a2 = 4;
        a2[1] = v2;
        a2[2] = *a1 - v2;
      }

      return v4;
    }

    if (v3 != 63)
    {
      if (v5 == 1)
      {
        return parser_date(a1, a2);
      }

LABEL_28:
      if (v3 == 58)
      {
        return parser_byteseq(a1, a2);
      }

      return v4;
    }

    return parser_BOOLean(a1, a2);
  }
}

uint64_t parser_string(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 != 34)
  {
    __assert_rtn("parser_string", "sfparse.c", 685, "'' == *sfp->pos");
  }

  v3 = v2 + 1;
  v4 = a1[1];
  *a1 = v2 + 1;
  if (v2 + 1 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = v2 + 1;
  v7 = 1;
  while (1)
  {
    v8 = v2[v7];
    v9 = (v8 - 32);
    if (v9 > 0x3C)
    {
      if ((v8 - 93) >= 0x22)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_12;
    }

    if (((1 << (v8 - 32)) & 0xFFFFFFFFFFFFFFBLL) == 0)
    {
      break;
    }

LABEL_12:
    v6 = &v2[++v7];
    *a1 = &v2[v7];
    if (&v2[v7] == v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v9 == 60)
  {
    *a1 = &v2[++v7];
    if (&v2[v7] == v4)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = v2[v7];
    v5 = 1;
    if (v10 != 92 && v10 != 34)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    *a2 = 3;
    *(a2 + 4) = v5;
    if (v7 == 1)
    {
      v3 = 0;
    }

    *(a2 + 8) = v3;
    *(a2 + 16) = v7 - 1;
    v6 = *a1;
  }

  v11 = 0;
  *a1 = v6 + 1;
  return v11;
}

uint64_t parser_number(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (**a1 != 45)
  {
    v3 = a1[1];
    v4 = 1;
    goto LABEL_5;
  }

  *a1 = ++v2;
  v3 = a1[1];
  if (v2 != v3)
  {
    v4 = -1;
LABEL_5:
    if (v2 == v3)
    {
      __assert_rtn("parser_number", "sfparse.c", 533, "!parser_eof(sfp)");
    }

    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = (v2 + v5);
      v8 = *(v2 + v5);
      if ((v8 - 48) > 9)
      {
        break;
      }

      if (v5 == 15)
      {
        return 0xFFFFFFFFLL;
      }

      v9 = (v2 + v5++);
      v6 = v8 + 10 * v6 - 48;
      *a1 = (v9 + 1);
      if ((v2 + v5) == v3)
      {
        goto LABEL_20;
      }
    }

    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    if (v8 == 46)
    {
      if (v5 > 0xC)
      {
        return 0xFFFFFFFFLL;
      }

      *a1 = (v7 + 1);
      if (v7 + 1 == v3)
      {
        v11 = v5;
      }

      else
      {
        v10 = 0;
        v11 = &v3[~v2];
        while (1)
        {
          v12 = *(v2 + v10 + v5 + 1);
          if ((v12 - 48) > 9)
          {
            break;
          }

          if (v5 + v10 == 15)
          {
            return 0xFFFFFFFFLL;
          }

          v6 = v12 + 10 * v6 - 48;
          v13 = v2 + v5 + v10 + 2;
          *a1 = v13;
          ++v10;
          if (v13 == v3)
          {
            goto LABEL_25;
          }
        }

        v11 = v5 + v10;
      }

LABEL_25:
      v17 = v11 - v5;
      if (v11 == v5 || v17 > 3)
      {
        return 0xFFFFFFFFLL;
      }

      if (a2)
      {
        *a2 = 2;
        a2[1] = v6 * v4;
        if (v17 - 1 <= 2)
        {
          v14 = qword_2984070C8[v17 - 1];
          v15 = 2;
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_20:
      if (a2)
      {
        *a2 = 1;
        v14 = v6 * v4;
        v15 = 1;
LABEL_22:
        result = 0;
        a2[v15] = v14;
        return result;
      }
    }

    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t parser_date(uint64_t *a1, uint64_t a2)
{
  v6 = 0uLL;
  v7 = 0;
  if (**a1 != 64)
  {
    __assert_rtn("parser_date", "sfparse.c", 624, "'@' == *sfp->pos");
  }

  v2 = *a1 + 1;
  *a1 = v2;
  if (v2 == a1[1])
  {
    return 0xFFFFFFFFLL;
  }

  v4 = parser_number(a1, &v6);
  result = 0xFFFFFFFFLL;
  if (!v4 && v6 == 1)
  {
    result = 0;
    if (a2)
    {
      *a2 = v6;
      *(a2 + 16) = v7;
      *a2 = 7;
    }
  }

  return result;
}

uint64_t parser_byteseq(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 != 58)
  {
    __assert_rtn("parser_byteseq", "sfparse.c", 911, "':' == *sfp->pos");
  }

  v3 = v2 + 1;
  v4 = a1[1];
  *a1 = v2 + 1;
  if (v2 + 1 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 1;
  while (1)
  {
    v6 = v2[v5];
    v7 = (v6 - 43);
    if (v7 > 0x2F)
    {
      goto LABEL_8;
    }

    if (((1 << (v6 - 43)) & 0xFFFFFFC07FF1) == 0)
    {
      break;
    }

LABEL_9:
    *a1 = &v2[++v5];
    if (v4 - v2 == v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v7 == 15)
  {
    v12 = v5;
    if (((v5 - 1) & 3) == 1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_23;
  }

  if (v7 != 18)
  {
LABEL_8:
    if ((v6 - 97) >= 0x1A)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_9;
  }

  v10 = (v5 - 1) & 3;
  if (v10 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v10 == 3)
  {
    v11 = 1;
    goto LABEL_20;
  }

  v12 = v5 + 1;
  v13 = &v2[v5 + 1];
  *a1 = v13;
  if (v13 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v13 == 61)
  {
    v11 = 2;
LABEL_20:
    v12 = v5 + v11;
    *a1 = &v2[v12];
  }

  if (&v2[v12] == v4 || v2[v12] != 58)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_23:
  if (a2)
  {
    *a2 = 5;
    if (v12 == 1)
    {
      v3 = 0;
    }

    a2[1] = v3;
    a2[2] = v12 - 1;
    v14 = *a1;
  }

  else
  {
    v14 = &v2[v12];
  }

  v8 = 0;
  *a1 = v14 + 1;
  return v8;
}

uint64_t parser_BOOLean(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 != 63)
  {
    __assert_rtn("parser_BOOLean", "sfparse.c", 987, "'?' == *sfp->pos");
  }

  *a1 = v2 + 1;
  if (v2 + 1 == a1[1])
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2[1];
  if (v3 != 48)
  {
    if (v3 == 49)
    {
      v4 = 1;
      goto LABEL_8;
    }

    return 0xFFFFFFFFLL;
  }

  v4 = 0;
LABEL_8:
  *a1 = v2 + 2;
  result = 0;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = v4;
  }

  return result;
}

uint64_t parser_dispstring(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 != 37)
  {
    __assert_rtn("parser_dispstring", "sfparse.c", 1123, "'%' == *sfp->pos");
  }

  *a1 = v2 + 1;
  v3 = a1[1];
  if (v2 + 1 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2[1] != 34)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = v2 + 2;
  if (v2 + 2 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 2;
  v6 = v2 + 2;
  while (1)
  {
    v7 = &v2[v5];
    v8 = v2[v5];
    v9 = 0xFFFFFFFFLL;
    if (v8 > 0x7E)
    {
      if (v8 - 127 < 0x81)
      {
        return v9;
      }

      goto LABEL_15;
    }

    if (v8 < 0x20)
    {
      return v9;
    }

    if (v8 != 37)
    {
      break;
    }

    *a1 = v7 + 1;
    if ((v7 + 3) > v3)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = v7[1];
    if ((v10 - 48) >= 0xA)
    {
      if ((v10 - 97) >= 6)
      {
        return 0xFFFFFFFFLL;
      }

      v11 = 16 * v10 - 112;
    }

    else
    {
      v11 = 16 * v10;
    }

    *a1 = v7 + 2;
    v12 = v7[2];
    if ((v12 - 48) >= 0xA)
    {
      if ((v12 - 97) > 5)
      {
        return 0xFFFFFFFFLL;
      }

      v13 = -87;
    }

    else
    {
      v13 = -48;
    }

    v14 = (v13 + v12) | v11;
    v5 += 3;
    v6 = &v2[v5];
    *a1 = &v2[v5];
    v4 = utf8d[(v4 + 256) + utf8d[v14]];
    if (v4 == 12)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_24:
    v9 = 0xFFFFFFFFLL;
    if (&v2[v5] == v3)
    {
      return v9;
    }
  }

  if (v8 != 34)
  {
LABEL_15:
    if (v4)
    {
      return v9;
    }

    v6 = &v2[++v5];
    *a1 = &v2[v5];
    goto LABEL_24;
  }

  if (!v4)
  {
    if (a2)
    {
      *a2 = 8;
      if (v5 == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = v2 + 2;
      }

      a2[1] = v16;
      a2[2] = v5 - 2;
      v6 = *a1;
    }

    v9 = 0;
    *a1 = v6 + 1;
  }

  return v9;
}

uint64_t parser_skip_params(uint64_t a1)
{
LABEL_1:
  v2 = *(a1 + 16);
  if ((v2 & 3) > 1)
  {
    if ((v2 & 3) != 2)
    {
      __assert_rtn("sfparse_parser_param", "sfparse.c", 1226, "0");
    }
  }

  else
  {
    if ((v2 & 3) == 0)
    {
      if (parser_skip_inner_list(a1))
      {
        return 0xFFFFFFFFLL;
      }

      v2 = *(a1 + 16);
    }

    v2 = v2 & 0xFFFFFFFC | 2;
    *(a1 + 16) = v2;
  }

  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3 || *v4 != 59)
  {
    result = 0;
    *(a1 + 16) = v2 | 3;
    return result;
  }

  for (i = v4 + 1; ; ++i)
  {
    *a1 = i;
    if (i == v3)
    {
      break;
    }

    if (*i != 32)
    {
      if (i == v3 || parser_key(a1, 0))
      {
        return 0xFFFFFFFFLL;
      }

      v7 = *a1;
      v6 = *(a1 + 8);
      if (*a1 != v6 && *v7 == 61)
      {
        v8 = v7 + 1;
        *a1 = v8;
        if (v8 == v6)
        {
          return 0xFFFFFFFFLL;
        }

        result = parser_bare_item(a1, 0);
        if (result)
        {
          if (result == -2)
          {
            return 0;
          }

          if (result != -1)
          {
            __assert_rtn("parser_skip_params", "sfparse.c", 1280, "0");
          }

          return result;
        }
      }

      goto LABEL_1;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t bufs_alloc_chain(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    result = 0;
    *(a1 + 8) = v2;
  }

  else if (*(a1 + 32) == *(a1 + 40))
  {
    return 4294966794;
  }

  else
  {
    v8 = 0;
    result = buf_chain_new(&v8, *(a1 + 24), *(a1 + 16));
    if (!result)
    {
      ++*(a1 + 40);
      v4 = v8;
      **(a1 + 8) = v8;
      *(a1 + 8) = v4;
      v5 = *(a1 + 56);
      v6 = *(v4 + 24) + v5;
      v7 = *(v4 + 32) + v5;
      *(v4 + 24) = v6;
      *(v4 + 32) = v7;
    }
  }

  return result;
}

uint64_t nghttp2_http_parse_priority(int *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v22 = 0;
  v23 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = &a2[a3];
  if (a3)
  {
    v7 = a2;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v25 = v6;
  v26 = 0;
  v24 = v7;
LABEL_5:
  if (v26 > 10)
  {
    if (parser_skip_inner_list(&v24))
    {
      return 4294966795;
    }
  }

  else if (!v26)
  {
    for (i = v24; i != v25; ++i)
    {
      if (*i != 32)
      {
        v24 = i;
        if (i == v25)
        {
          goto LABEL_51;
        }

LABEL_33:
        if (parser_key(&v24, &v22))
        {
          return 4294966795;
        }

        v14 = v24;
        if (v24 == v25 || *v24 != 61)
        {
          v19 = 0;
          v15 = 9;
          LODWORD(v20) = 1;
        }

        else
        {
          ++v24;
          if (v14 + 1 == v25)
          {
            return 4294966795;
          }

          if (v14[1] == 40)
          {
            v19 = 6;
            v24 = v14 + 2;
            v15 = 12;
          }

          else
          {
            v17 = parser_bare_item(&v24, &v19);
            if (v17)
            {
              if (v17 != -2)
              {
                return 4294966795;
              }

              goto LABEL_51;
            }

            v15 = 9;
          }
        }

        LODWORD(v26) = v15;
        if (v23 != 1)
        {
          goto LABEL_5;
        }

        v16 = *v22;
        if (v16 != 117)
        {
          if (v16 != 105)
          {
            goto LABEL_5;
          }

          if (!v19)
          {
            v4 = v20;
            goto LABEL_5;
          }

          return 4294966795;
        }

        result = 4294966795;
        if (v19 == 1)
        {
          v5 = v20;
          if (v20 <= 7)
          {
            goto LABEL_5;
          }
        }

        return result;
      }
    }

    goto LABEL_51;
  }

  if (!parser_skip_params(&v24))
  {
    v8 = v24;
    if (v24 != v25)
    {
      while (1)
      {
        v9 = *v8;
        if (v9 != 32 && v9 != 9)
        {
          break;
        }

        if (++v8 == v25)
        {
          v8 = v25;
          break;
        }
      }

      v24 = v8;
    }

    if (v8 != v25)
    {
      if (*v8 == 44)
      {
        while (1)
        {
          v24 = ++v8;
          if (v8 == v25)
          {
            break;
          }

          v11 = *v8;
          if (v11 != 32 && v11 != 9)
          {
            if (v8 != v25)
            {
              goto LABEL_33;
            }

            return 4294966795;
          }
        }
      }

      return 4294966795;
    }

LABEL_51:
    result = 0;
    *a1 = v5;
    a1[1] = v4;
    return result;
  }

  return 4294966795;
}

uint64_t nghttp2_http_on_request_headers(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if ((v2 & 0x8080) != 0x80)
  {
    v4 = (~v2 & 0xE) != 0 || (v2 & 0x11) == 0;
    if (!v4 && ((v2 & 0x8000) == 0 || (v2 & 0x81) == 0x81) && ((v2 & 0x2800) != 0x2000 || (v2 & 0x1200) == 0x1200))
    {
      goto LABEL_4;
    }

    return 0xFFFFFFFFLL;
  }

  if ((v2 & 0xB) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = -1;
LABEL_4:
  v3 = 0;
  if (*(a2 + 12) == 5)
  {
    *(a1 + 112) = v2 & 0x780;
    *(a1 + 16) = -1;
  }

  return v3;
}

uint64_t nghttp2_rcbuf_incref(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != -1)
  {
    *(result + 32) = v1 + 1;
  }

  return result;
}

unint64_t *nghttp2_ratelim_update(unint64_t *result, unint64_t a2)
{
  v2 = result[3];
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4)
  {
    if (v4 == 0 || !v3)
    {
      v4 = 1;
    }

    result[3] = a2;
    v5 = result[1];
    if (!is_mul_ok(v4, v5) || (v6 = v5 * v4, v7 = result[2], __CFADD__(v6, v7)))
    {
      v8 = *result;
    }

    else
    {
      v8 = v7 + v6;
      if (v8 >= *result)
      {
        v8 = *result;
      }
    }

    result[2] = v8;
  }

  return result;
}

void *nghttp2_version(int a1)
{
  if (a1 <= 82689)
  {
    return &version;
  }

  else
  {
    return 0;
  }
}

uint64_t nghttp2_submit_trailer(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 1)
  {
    return 4294966795;
  }

  else
  {
    return submit_headers_shared_nva(a1, 1, a2, a3, a4, 0, 0);
  }
}

uint64_t nghttp2_submit_headers(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != -1)
  {
    if (a3 < 1)
    {
      return 4294966795;
    }

    return submit_headers_shared_nva(a1, a2 & 1, a3, a5, a6, 0, a7);
  }

  if (!*(a1 + 2723) || (~*(a1 + 2708) & 0x84) == 0)
  {
    return submit_headers_shared_nva(a1, a2 & 1, a3, a5, a6, 0, a7);
  }

  return 4294966791;
}

uint64_t nghttp2_submit_goaway(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5, size_t a6)
{
  if (*(a1 + 2724))
  {
    return 0;
  }

  else
  {
    return nghttp2_session_add_goaway(a1, a3, a4, a5, a6, 0);
  }
}

uint64_t nghttp2_submit_shutdown_notice(uint64_t a1)
{
  if (!*(a1 + 2723))
  {
    return 4294966777;
  }

  if (*(a1 + 2724))
  {
    return 0;
  }

  return nghttp2_session_add_goaway(a1, 0x7FFFFFFF, 0, 0, 0, 2);
}

uint64_t nghttp2_submit_push_promise(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 4294966795;
  if (a3 >= 1)
  {
    v6 = (((*(a1 + 2723) == 0) ^ a3) & 1) != 0 ? 4294966791 : 4294966795;
    if (*(a1 + 2723) && (a3 & 1) != 0)
    {
      if ((*(a1 + 2592) & 0x80000000) != 0)
      {
        return 4294966787;
      }

      else
      {
        v12 = (*(a1 + 2368))(160, *(a1 + 2360));
        if (v12)
        {
          v13 = v12;
          v19 = 0;
          *(v12 + 96) = 0u;
          *(v12 + 112) = 0u;
          *(v12 + 128) = 0u;
          *(v12 + 137) = 0u;
          *(v12 + 120) = a6;
          v14 = nghttp2_nv_array_copy(&v19, a4, a5, a1 + 2360);
          if ((v14 & 0x80000000) != 0)
          {
            v6 = v14;
            goto LABEL_15;
          }

          v6 = *(a1 + 2592);
          *(a1 + 2592) = v6 + 2;
          v15 = v19;
          *v13 = 0;
          *(v13 + 12) = 1029;
          *(v13 + 8) = a3;
          *(v13 + 14) = 0;
          *(v13 + 16) = 0;
          *(v13 + 24) = v15;
          *(v13 + 32) = a5;
          *(v13 + 40) = v6;
          *(v13 + 44) = 0;
          v16 = nghttp2_session_add_item(a1, v13);
          if (v16)
          {
            v17 = v16;
            (*(a1 + 2376))(*(v13 + 24), *(a1 + 2360));
            v6 = v17;
LABEL_15:
            (*(a1 + 2376))(v13, *(a1 + 2360));
          }
        }

        else
        {
          return 4294966395;
        }
      }
    }
  }

  return v6;
}

uint64_t nghttp2_submit_altsvc(uint64_t a1, uint64_t a2, int a3, const void *a4, size_t a5, const void *a6, size_t a7)
{
  if (!*(a1 + 2723))
  {
    return 4294966777;
  }

  v9 = a5 + a7 + 2;
  if (v9 > 0x4000)
  {
    return 4294966795;
  }

  if (!a3)
  {
    if (a5)
    {
      v17 = (*(a1 + 2368))(a5 + a7 + 2, *(a1 + 2360));
      if (!v17)
      {
        return 4294966395;
      }

      v13 = v17;
      memcpy(v17, a4, a5);
      v14 = (v13 + a5);
      goto LABEL_11;
    }

    return 4294966795;
  }

  if (a5)
  {
    return 4294966795;
  }

  v13 = (*(a1 + 2368))(a7 + 2, *(a1 + 2360));
  v14 = v13;
  if (!v13)
  {
    return 4294966395;
  }

LABEL_11:
  *v14 = 0;
  v18 = v14 + 1;
  v19 = v18;
  if (a7)
  {
    memcpy(v18, a6, a7);
    v19 = &v18[a7];
  }

  *v19 = 0;
  v20 = (*(a1 + 2368))(160, *(a1 + 2360));
  if (!v20)
  {
    v15 = 4294966395;
LABEL_22:
    (*(a1 + 2376))(v13, *(a1 + 2360));
    return v15;
  }

  v21 = v20;
  *(v20 + 145) = 0;
  *(v20 + 129) = 0u;
  *(v20 + 113) = 0u;
  *(v20 + 97) = 0u;
  *(v20 + 96) = 1;
  *(v20 + 64) = v13;
  *(v20 + 16) = v20 + 64;
  *v20 = v9;
  *(v20 + 12) = 10;
  *(v20 + 8) = a3;
  *(v20 + 14) = 0;
  *(v20 + 72) = a5;
  *(v20 + 80) = v18;
  *(v20 + 88) = a7;
  v15 = nghttp2_session_add_item(a1, v20);
  if (v15)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      (*(a1 + 2376))(*v22, *(a1 + 2360));
    }

    v13 = v21;
    goto LABEL_22;
  }

  return v15;
}

uint64_t nghttp2_submit_origin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 2723))
  {
    return 4294966777;
  }

  if (a4)
  {
    v7 = 0;
    v8 = (a3 + 8);
    v9 = a4;
    do
    {
      v10 = *v8;
      v8 += 2;
      v7 += v10;
      --v9;
    }

    while (v9);
    if ((v7 + 2 * a4) > 0x4000)
    {
      return 4294966795;
    }

    v13 = (17 * a4 + v7);
    v14 = (*(a1 + 2368))(v13, *(a1 + 2360));
    if (!v14)
    {
      return 4294966395;
    }

    v12 = v14;
    v15 = (a3 + 8);
    v16 = (v14 + 8);
    v17 = a4;
    v18 = (v14 + 16 * a4);
    do
    {
      v19 = *v15;
      *(v16 - 1) = v18;
      *v16 = v19;
      if (v19)
      {
        memcpy(v18, *(v15 - 1), v19);
        v18 += v19;
      }

      *v18++ = 0;
      v15 += 2;
      v16 += 2;
      --v17;
    }

    while (v17);
    if (&v18[-v12] != v13)
    {
      __assert_rtn("nghttp2_submit_origin", "nghttp2_submit.c", 542, "(size_t)(p - (uint8_t *)ov_copy) == nov * sizeof(nghttp2_origin_entry) + len + nov");
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = (*(a1 + 2368))(160, *(a1 + 2360));
  if (!v20)
  {
    (*(a1 + 2376))(v12, *(a1 + 2360));
    return 4294966395;
  }

  v21 = v20;
  *(v20 + 145) = 0;
  *(v20 + 129) = 0u;
  *(v20 + 113) = 0u;
  *(v20 + 97) = 0u;
  *(v20 + 96) = 1;
  *(v20 + 16) = v20 + 64;
  v22 = 0;
  if (a4)
  {
    v23 = (v12 + 8);
    v24 = a4;
    do
    {
      v25 = *v23;
      v23 += 2;
      v22 += v25 + 2;
      --v24;
    }

    while (v24);
  }

  *v20 = v22;
  *(v20 + 12) = 12;
  *(v20 + 8) = 0;
  *(v20 + 14) = 0;
  *(v20 + 64) = a4;
  *(v20 + 72) = v12;
  v11 = nghttp2_session_add_item(a1, v20);
  if (v11)
  {
    v26 = *(v21 + 16);
    if (v26)
    {
      (*(a1 + 2376))(*(v26 + 8), *(a1 + 2360));
    }

    (*(a1 + 2376))(v21, *(a1 + 2360));
  }

  return v11;
}

uint64_t nghttp2_submit_priority_update(uint64_t a1, uint64_t a2, int a3, const void *a4, size_t a5)
{
  if (*(a1 + 2723))
  {
    return 4294966777;
  }

  if (!*(a1 + 2672))
  {
    return 0;
  }

  v5 = 4294966795;
  if (a3 && a5 - 16381 >= 0xFFFFFFFFFFFFBFFFLL)
  {
    if (a5)
    {
      v11 = (*(a1 + 2368))(a5 + 1, *(a1 + 2360));
      if (!v11)
      {
        return 4294966395;
      }

      v12 = v11;
      memcpy(v11, a4, a5);
      v12[a5] = 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = (*(a1 + 2368))(160, *(a1 + 2360));
    if (v13)
    {
      v14 = v13;
      *(v13 + 145) = 0;
      *(v13 + 129) = 0u;
      *(v13 + 113) = 0u;
      *(v13 + 97) = 0u;
      *(v13 + 96) = 1;
      *(v13 + 64) = a3;
      *(v13 + 16) = v13 + 64;
      *v13 = a5 + 4;
      *(v13 + 12) = 16;
      *(v13 + 8) = 0;
      *(v13 + 14) = 0;
      *(v13 + 72) = v12;
      *(v13 + 80) = a5;
      v5 = nghttp2_session_add_item(a1, v13);
      if (v5)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          (*(a1 + 2376))(*(v15 + 8), *(a1 + 2360));
        }

        (*(a1 + 2376))(v14, *(a1 + 2360));
      }

      return v5;
    }

    (*(a1 + 2376))(v12, *(a1 + 2360));
    return 4294966395;
  }

  return v5;
}

uint64_t nghttp2_submit_request2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v9 = 0;
  v10 = 0uLL;
  if (a5)
  {
    LODWORD(v9) = 2;
    v10 = *a5;
    v7 = &v9;
  }

  else
  {
    v7 = 0;
  }

  return submit_request_shared(a1, a3, a4, v7, a6);
}

uint64_t nghttp2_submit_response(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = 0;
  v7 = 0uLL;
  if (a5)
  {
    LODWORD(v6) = 1;
    v7 = *a5;
    a5 = &v6;
  }

  return submit_response_shared(a1, a2, a3, a4, a5);
}

uint64_t submit_response_shared(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 1)
  {
    return 4294966795;
  }

  if (!*(a1 + 2723))
  {
    return 4294966791;
  }

  v9 = !a5 || !*(a5 + 16);
  return submit_headers_shared_nva(a1, v9, a2, a3, a4, a5, 0);
}

uint64_t nghttp2_submit_response2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = 0;
  v7 = 0uLL;
  if (a5)
  {
    LODWORD(v6) = 2;
    v7 = *a5;
    a5 = &v6;
  }

  return submit_response_shared(a1, a2, a3, a4, a5);
}

uint64_t nghttp2_submit_data2(uint64_t a1, char a2, int a3, __int128 *a4)
{
  if (!a4)
  {
    __assert_rtn("nghttp2_submit_data2", "nghttp2_submit.c", 804, "data_prd");
  }

  v5 = 2;
  v6 = *a4;
  return nghttp2_submit_data_shared(a1, a2, a3, &v5);
}

uint64_t nghttp2_pack_settings_payload2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!nghttp2_iv_check(a3, a4))
  {
    return -501;
  }

  result = 6 * v4;
  if (6 * v4 > a2)
  {
    return -525;
  }

  if (v4)
  {
    v9 = (a3 + 4);
    do
    {
      *a1 = bswap32(*(v9 - 2)) >> 16;
      v10 = *v9;
      v9 += 2;
      *(a1 + 2) = bswap32(v10);
      a1 += 6;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t nghttp2_submit_extension(uint64_t a1, unsigned int a2, char a3, int a4, uint64_t a5)
{
  if (a2 < 0xA)
  {
    return 4294966795;
  }

  v9 = a2;
  if (!*(a1 + 2312) && !*(a1 + 2304))
  {
    return 4294966777;
  }

  v11 = (*(a1 + 2368))(160, *(a1 + 2360));
  if (!v11)
  {
    return 4294966395;
  }

  v12 = v11;
  *v11 = 0;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 137) = 0u;
  *(v11 + 12) = v9;
  *(v11 + 13) = a3;
  *(v11 + 8) = a4;
  *(v11 + 14) = 0;
  *(v11 + 16) = a5;
  v5 = nghttp2_session_add_item(a1, v11);
  if (v5)
  {
    (*(a1 + 2376))(v12, *(a1 + 2360));
  }

  return v5;
}

uint64_t nghttp2_session_get_stream(uint64_t *a1, int a2)
{
  result = nghttp2_map_find(a1, a2);
  if (result)
  {
    if ((*(result + 116) & 2) != 0)
    {
      return 0;
    }

    else if (*result == 5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t nghttp2_session_client_new(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v6 = 0;
  result = session_new(&v6, a2, a3, 0, 0, 0);
  if (!result)
  {
    v5 = v6;
    *(v6 + 2592) = 1;
    *a1 = v5;
  }

  return result;
}

uint64_t nghttp2_session_client_new3(uint64_t *a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t (**a5)(uint64_t, uint64_t, void))
{
  v8 = 0;
  result = session_new(&v8, a2, a3, 0, a4, a5);
  if (!result)
  {
    v7 = v8;
    *(v8 + 2592) = 1;
    *a1 = v7;
  }

  return result;
}

uint64_t nghttp2_session_server_new(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v6 = 0;
  result = session_new(&v6, a2, a3, 1, 0, 0);
  if (!result)
  {
    v5 = v6;
    *(v6 + 2592) = 2;
    *a1 = v5;
  }

  return result;
}

uint64_t nghttp2_session_server_new3(uint64_t *a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t (**a5)(uint64_t, uint64_t, void))
{
  v8 = 0;
  result = session_new(&v8, a2, a3, 1, a4, a5);
  if (!result)
  {
    v7 = v8;
    *(v8 + 2592) = 2;
    *a1 = v7;
  }

  return result;
}

uint64_t nghttp2_session_server_new2(uint64_t *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v7 = 0;
  result = session_new(&v7, a2, a3, 1, a4, 0);
  if (!result)
  {
    v6 = v7;
    *(v7 + 2592) = 2;
    *a1 = v6;
  }

  return result;
}

uint64_t free_streams(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (v4 && !*(v4 + 152) && v4 != *(a2 + 432))
  {
    nghttp2_outbound_item_free(*(a1 + 64), (a2 + 2360));
    (*(a2 + 2376))(v4, *(a2 + 2360));
  }

  (*(a2 + 2376))(a1, *(a2 + 2360));
  return 0;
}

uint64_t nghttp2_session_add_rst_stream_continue(uint64_t a1, int a2, int a3, int a4)
{
  v8 = nghttp2_map_find(a1, a2);
  if (!v8 || (*(v8 + 116) & 2) != 0)
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*v8 == 3)
  {
    return 0;
  }

  v9 = *v8 != 5;
  if (a2)
  {
LABEL_7:
    v10 = *(a1 + 2723);
    if (((*(a1 + 2723) == 0) ^ a2))
    {
      goto LABEL_8;
    }

    if (*(a1 + 2592) > a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

LABEL_8:
  if (*(a1 + 2600) < a2)
  {
    return 0;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  v10 = *(a1 + 2723);
LABEL_12:
  if (!v10 && (a2 & 1) != 0)
  {
    v11 = *(a1 + 88);
    if (v11)
    {
      if (*(v11 + 12) != 1)
      {
        __assert_rtn("nghttp2_session_add_rst_stream_continue", "nghttp2_session.c", 1172, "headers_frame->hd.type == NGHTTP2_HEADERS");
      }

      if (*(v11 + 8) <= a2)
      {
        while (1)
        {
          v12 = *(v11 + 8);
          if (v12 >= a2)
          {
            break;
          }

          v11 = *(v11 + 144);
          if (!v11)
          {
            goto LABEL_22;
          }
        }

        if (v12 <= a2 && !*(v11 + 132))
        {
          v16 = 0;
          *(v11 + 128) = a3;
          *(v11 + 132) = 1;
          return v16;
        }
      }
    }
  }

LABEL_22:
  v13 = !v9;
  if (a4)
  {
    v13 = 0;
  }

  if (v13)
  {
    return 0;
  }

  v14 = (*(a1 + 2368))(160, *(a1 + 2360));
  if (!v14)
  {
    return 4294966395;
  }

  v15 = v14;
  *(v14 + 137) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 96) = 0u;
  *v14 = 4;
  *(v14 + 12) = 3;
  *(v14 + 8) = a2;
  *(v14 + 14) = 0;
  *(v14 + 16) = a3;
  v16 = nghttp2_session_add_item(a1, v14);
  if (v16)
  {
    (*(a1 + 2376))(v15, *(a1 + 2360));
  }

  return v16;
}

BOOL nghttp2_session_want_read(uint64_t a1)
{
  if ((*(a1 + 2724) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a1 + 2528) + *(a1 + 2520))
  {
    return (*(a1 + 2724) & 0xC) == 0;
  }

  return 1;
}

uint64_t find_stream_on_goaway_func(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  if (v2 && (((*(*a2 + 2723) == 0) ^ v2) & 1) == 0)
  {
    if (*(a2 + 20))
    {
      return 0;
    }
  }

  else if (!*(a2 + 20))
  {
    return 0;
  }

  if (*a1 != 5 && (*(a1 + 116) & 2) == 0 && v2 > *(a2 + 16))
  {
    if (*(a1 + 48))
    {
      __assert_rtn("find_stream_on_goaway_func", "nghttp2_session.c", 2422, "stream->closed_next == NULL");
    }

    v3 = *(a2 + 8);
    if (v3)
    {
      *(a1 + 48) = v3;
    }

    *(a2 + 8) = a1;
  }

  return 0;
}

uint64_t session_handle_invalid_connection(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = a3;
  v7 = *(a1 + 2168);
  if (v7 && v7(a1, a2, a3, *(a1 + 2400)))
  {
    return 4294966394;
  }

  error_code_from_lib_error_code = get_error_code_from_lib_error_code(v5);
  v10 = *(a1 + 2604);

  return session_terminate_session(a1, v10, error_code_from_lib_error_code, a4);
}

uint64_t session_handle_invalid_stream2(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  error_code_from_lib_error_code = get_error_code_from_lib_error_code(a4);
  result = nghttp2_session_add_rst_stream_continue(a1, a2, error_code_from_lib_error_code, 1);
  if (!result)
  {
    if (a3 && (v10 = *(a1 + 2168)) != 0 && v10(a1, a3, a4, *(a1 + 2400)))
    {
      return 4294966394;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_error_code_from_lib_error_code(int a1)
{
  if (a1 <= -524)
  {
    if (a1 <= -533)
    {
      if (a1 == -533)
      {
        return 7;
      }

      return 2;
    }

    if ((a1 + 532) >= 2)
    {
      if (a1 == -524)
      {
        return 3;
      }

      return 2;
    }

    return 1;
  }

  if (a1 <= -511)
  {
    if (a1 != -523)
    {
      if (a1 == -522)
      {
        return 6;
      }

      return 2;
    }

    return 9;
  }

  else
  {
    if (a1 != -510)
    {
      if (a1 != -505)
      {
        if (a1 == -107)
        {
          return 8;
        }

        return 2;
      }

      return 1;
    }

    return 5;
  }
}

uint64_t nghttp2_session_add_ping(uint64_t a1, char a2, uint64_t *a3)
{
  if ((a2 & 1) != 0 && *(a1 + 2544) >= *(a1 + 2552))
  {
    return 4294966392;
  }

  v6 = (*(a1 + 2368))(160, *(a1 + 2360));
  if (!v6)
  {
    return 4294966395;
  }

  v7 = v6;
  *(v6 + 137) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 96) = 0u;
  *v6 = 8;
  *(v6 + 12) = 6;
  *(v6 + 13) = a2;
  *(v6 + 8) = 0;
  *(v6 + 14) = 0;
  if (a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  *(v6 + 16) = v8;
  v10 = nghttp2_session_add_item(a1, v6);
  if (v10)
  {
    v9 = v10;
    (*(a1 + 2376))(v7, *(a1 + 2360));
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      ++*(a1 + 2544);
    }
  }

  return v9;
}

uint64_t session_update_stream_priority(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 120) == a3)
  {
    return 0;
  }

  v3 = a3;
  if (!*(a2 + 118))
  {
    *(a2 + 120) = a3;
    return 0;
  }

  session_ob_data_remove(a1, a2);
  *(a2 + 120) = v3;

  return session_ob_data_push(a1, a2);
}

uint64_t session_call_error_callback(uint64_t a1, uint64_t a2, char *__format, ...)
{
  va_start(va, __format);
  if (*(a1 + 2336) == 0)
  {
    return 0;
  }

  v6 = vsnprintf(0, 0, __format, va);
  if (v6 < 0)
  {
    return 4294966395;
  }

  v7 = (v6 + 1);
  v8 = (*(a1 + 2368))(v7, *(a1 + 2360));
  if (!v8)
  {
    return 4294966395;
  }

  v9 = v8;
  v10 = vsnprintf(v8, v7, __format, va);
  if ((v10 & 0x80000000) != 0)
  {
    (*(a1 + 2376))(v9, *(a1 + 2360));
    return 0;
  }

  v11 = *(a1 + 2344);
  if (v11)
  {
    v12 = v11(a1, a2, v9, v10, *(a1 + 2400));
  }

  else
  {
    v12 = (*(a1 + 2336))(a1, v9, v10, *(a1 + 2400));
  }

  v14 = v12;
  (*(a1 + 2376))(v9, *(a1 + 2360));
  if (v14)
  {
    return 4294966394;
  }

  else
  {
    return 0;
  }
}

uint64_t session_update_glitch_ratelim(uint64_t a1)
{
  if (*(a1 + 2724))
  {
    return 0;
  }

  v2 = nghttp2_time_now_sec();
  nghttp2_ratelim_update((a1 + 2448), v2);
  v3 = *(a1 + 2464);
  if (v3)
  {
    *(a1 + 2464) = v3 - 1;
    return 0;
  }

  v5 = *(a1 + 2604);

  return session_terminate_session(a1, v5, 11, 0);
}

uint64_t nghttp2_session_consume(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return 4294966795;
  }

  if ((*(a1 + 2708) & 1) == 0)
  {
    return 4294966777;
  }

  result = session_update_consumed_size(a1, (a1 + 2628), (a1 + 2624), *(a1 + 2725), 0, a3, *(a1 + 2636));
  if (result >= -900)
  {
    result = nghttp2_map_find(a1, a2);
    if (result)
    {
      if ((*(result + 116) & 2) != 0 || *result == 5)
      {
        return 0;
      }

      else
      {
        LODWORD(result) = session_update_consumed_size(a1, (result + 92), (result + 88), *(result + 119), *(result + 80), a3, *(result + 100));
        if (result <= -901)
        {
          return result;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

size_t nghttp2_session_recv()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v8 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v1 = v0[269];
    if (!v1)
    {
      v1 = v0[268];
    }

    v2 = v1(v0, __src, 0x4000, 0, v0[300]);
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    if (v2 > 0x4000)
    {
      goto LABEL_16;
    }

    result = nghttp2_session_mem_recv2(v0, __src, v2);
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (result != v3)
    {
      __assert_rtn("nghttp2_session_recv", "nghttp2_session.c", 6940, "proclen == readlen");
    }
  }

  if (v2 != -507)
  {
    if (v2 == -504 || v2 == 0)
    {
      result = 0;
      goto LABEL_17;
    }

LABEL_16:
    result = 4294966394;
    goto LABEL_17;
  }

  result = 4294966789;
LABEL_17:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nghttp2_session_get_stream_effective_recv_data_length(uint64_t *a1, int a2)
{
  v2 = nghttp2_map_find(a1, a2);
  if (!v2 || (*(v2 + 116) & 2) != 0 || *v2 == 5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v2 + 88) & ~(*(v2 + 88) >> 31);
  }
}

uint64_t nghttp2_session_get_stream_effective_local_window_size(uint64_t *a1, int a2)
{
  v2 = nghttp2_map_find(a1, a2);
  if (!v2 || (*(v2 + 116) & 2) != 0 || *v2 == 5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v2 + 100);
  }
}

uint64_t nghttp2_session_get_stream_local_window_size(uint64_t *a1, int a2)
{
  v2 = nghttp2_map_find(a1, a2);
  if (!v2 || (*(v2 + 116) & 2) != 0 || *v2 == 5)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v2 + 100) - *(v2 + 88);
  return v4 & ~(v4 >> 31);
}

uint64_t nghttp2_session_get_remote_settings(uint64_t a1, int a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) >= 9 || ((0x1BFu >> v2) & 1) == 0)
  {
    __assert_rtn("nghttp2_session_get_remote_settings", "nghttp2_session.c", 7601, "0");
  }

  return *(a1 + qword_2984071E0[v2]);
}

uint64_t nghttp2_session_get_local_settings(uint64_t a1, int a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) >= 9 || ((0x1BFu >> v2) & 1) == 0)
  {
    __assert_rtn("nghttp2_session_get_local_settings", "nghttp2_session.c", 7626, "0");
  }

  return *(a1 + qword_298407228[v2]);
}

uint64_t nghttp2_session_upgrade(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = nghttp2_session_upgrade_internal(a1, a2, a3, a4);
  if (!v5)
  {
    v6 = nghttp2_map_find(a1, 1);
    if (!v6 || (*(v6 + 116) & 2) != 0 || *v6 == 5)
    {
      __assert_rtn("nghttp2_session_upgrade", "nghttp2_session.c", 7708, "stream");
    }

    *(v6 + 112) |= 0x400u;
  }

  return v5;
}

uint64_t nghttp2_session_upgrade_internal(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (*(a1 + 2723))
  {
    if (*(a1 + 2600) > 0)
    {
      return 4294966791;
    }
  }

  else if (*(a1 + 2592) != 1)
  {
    return 4294966791;
  }

  v9 = a3 / 6;
  if (a3 % 6)
  {
    return 4294966795;
  }

  if (v9 > *(a1 + 2568))
  {
    return 4294966759;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (a3 >= 6)
  {
    v11 = (*(a1 + 2368))(8 * v9, *(a1 + 2360));
    if (!v11)
    {
      return 4294966395;
    }

    v10 = v11;
    v12 = (v11 + 4);
    v13 = (a2 + 2);
    v14 = a3 / 6;
    do
    {
      *(v12 - 1) = bswap32(*(v13 - 1)) >> 16;
      v15 = *v13;
      v13 = (v13 + 6);
      *v12 = bswap32(v15);
      v12 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 2723))
  {
    *&v21 = a3;
    WORD6(v21) = 4;
    DWORD2(v21) = 0;
    BYTE14(v21) = 0;
    *&v22 = a3 / 6;
    *(&v22 + 1) = v10;
    v16 = nghttp2_session_on_settings_received(a1, &v21, 1);
  }

  else
  {
    v16 = nghttp2_session_add_settings(a1, 0, v10, a3 / 6);
  }

  v8 = v16;
  (*(a1 + 2376))(v10, *(a1 + 2360));
  if (!v8)
  {
    if (*(a1 + 2723))
    {
      v17 = 0;
    }

    else
    {
      v17 = a4;
    }

    v18 = nghttp2_session_open_stream(a1, 1, 1, v17);
    if (v18)
    {
      v19 = *(v18 + 117);
      v8 = 0;
      if (*(a1 + 2723))
      {
        *(v18 + 117) = v19 | 1;
        *(a1 + 2600) = 0x100000001;
      }

      else
      {
        *(v18 + 117) = v19 | 2;
        *(a1 + 2596) = 1;
        *(a1 + 2592) += 2;
      }

      return v8;
    }

    return 4294966395;
  }

  return v8;
}

uint64_t nghttp2_session_upgrade2(uint64_t *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v7 = nghttp2_session_upgrade_internal(a1, a2, a3, a5);
  if (!v7)
  {
    v8 = nghttp2_map_find(a1, 1);
    if (!v8 || (*(v8 + 116) & 2) != 0 || *v8 == 5)
    {
      __assert_rtn("nghttp2_session_upgrade2", "nghttp2_session.c", 7737, "stream");
    }

    if (a4)
    {
      *(v8 + 112) |= 0x100u;
    }
  }

  return v7;
}

uint64_t nghttp2_session_get_stream_local_close(uint64_t *a1, int a2)
{
  v2 = nghttp2_map_find(a1, a2);
  if (!v2 || (*(v2 + 116) & 2) != 0 || *v2 == 5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (*(v2 + 117) >> 1) & 1;
  }
}

uint64_t nghttp2_session_get_stream_remote_close(uint64_t *a1, int a2)
{
  v2 = nghttp2_map_find(a1, a2);
  if (!v2 || (*(v2 + 116) & 2) != 0 || *v2 == 5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v2 + 117) & 1;
  }
}

uint64_t nghttp2_session_set_next_stream_id(uint64_t a1, int a2)
{
  if (a2 >= 1 && *(a1 + 2592) <= a2)
  {
    if (*(a1 + 2723))
    {
      if ((a2 & 1) == 0)
      {
LABEL_5:
        result = 0;
        *(a1 + 2592) = a2;
        return result;
      }
    }

    else if (a2)
    {
      goto LABEL_5;
    }
  }

  return 4294966795;
}

void *nghttp2_session_find_stream(uint64_t *a1, int a2)
{
  if (a2)
  {
    return nghttp2_map_find(a1, a2);
  }

  else
  {
    return &nghttp2_stream_root;
  }
}

uint64_t nghttp2_session_change_extpri_stream_priority(uint64_t a1, int a2, unint64_t *a3, int a4)
{
  if (!*(a1 + 2723))
  {
    return 4294966777;
  }

  if (*(a1 + 2722) != 1)
  {
    return 0;
  }

  if (!a2)
  {
    return 4294966795;
  }

  v6 = *a3;
  v7 = nghttp2_map_find(a1, a2);
  if (!v7)
  {
    return 4294966795;
  }

  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 7;
  }

  else
  {
    v8 = v6;
  }

  if (a4)
  {
    *(v7 + 116) |= 0x20u;
  }

  return session_update_stream_priority(a1, v7, (v6 >> 25) & 0x80 | v8);
}

uint64_t nghttp2_session_get_extpri_stream_priority(uint64_t a1, _DWORD *a2, int a3)
{
  if (!*(a1 + 2723))
  {
    return 4294966777;
  }

  if (*(a1 + 2722) != 1)
  {
    return 0;
  }

  if (!a3)
  {
    return 4294966795;
  }

  v4 = nghttp2_map_find(a1, a3);
  if (!v4)
  {
    return 4294966795;
  }

  v5 = v4;
  result = 0;
  LODWORD(v5) = *(v5 + 120);
  *a2 = v5 & 0x7F;
  a2[1] = v5 >> 7;
  return result;
}

time_t nghttp2_time_now_sec()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  if (clock_gettime(_CLOCK_MONOTONIC, &v1) != -1)
  {
    return v1.tv_sec;
  }

  result = time(0);
  if (result == -1)
  {
    return 0;
  }

  return result;
}

const char *nghttp2_strerror(int a1)
{
  if (a1 <= -902)
  {
    if (a1 > -904)
    {
      if (a1 == -903)
      {
        return "Received bad client magic byte string";
      }

      else
      {
        return "The user callback function failed";
      }
    }

    else if (a1 == -905)
    {
      return "Too many CONTINUATION frames following a HEADER frame";
    }

    else if (a1 == -904)
    {
      return "Flooding was detected in this HTTP/2 session, and it must be closed";
    }

    else
    {
      return "Unknown error code";
    }
  }

  else
  {
    switch(a1)
    {
      case -537:
        return "SETTINGS frame contained more than the maximum allowed entries";
      case -536:
        return "When a local endpoint expects to receive SETTINGS frame, it receives an other type of frame";
      case -535:
        return "Cancel";
      case -534:
        return "Internal error";
      case -533:
        return "Stream was refused";
      case -532:
        return "Violation in HTTP messaging rule";
      case -531:
        return "Invalid HTTP header field was received";
      case -530:
        return "The current session is closing";
      case -529:
        return "DATA or HEADERS frame has already been submitted for the stream";
      case -528:
        return "Server push is disabled by peer";
      case -527:
        return "Too many inflight SETTINGS";
      case -526:
        return "Callback was paused by the application";
      case -525:
        return "Insufficient buffer size given to function";
      case -524:
        return "Flow control error";
      case -523:
        return "Header compression/decompression error";
      case -522:
        return "The length of the frame is invalid";
      case -521:
        return "The user callback function failed due to the temporal error";
      case -520:
        return "Unknown error code";
      case -519:
        return "Invalid state";
      case -518:
        return "Invalid header block";
      case -517:
        return "GOAWAY has already been sent";
      case -516:
        return "request HEADERS is not allowed";
      case -515:
        return "Another DATA frame has already been deferred";
      case -514:
        return "Invalid stream state";
      case -513:
        return "Stream ID is invalid";
      case -512:
        return "The transmission is not allowed for this stream";
      case -511:
        return "Stream is closing";
      case -510:
        return "Stream was already closed or invalid";
      case -509:
        return "No more Stream ID available";
      case -508:
        return "Data transfer deferred";
      case -507:
        return "EOF";
      case -506:
        return "Invalid frame octets";
      case -505:
        return "Protocol error";
      case -504:
        return "Operation would block";
      case -503:
        return "Unsupported SPDY version";
      case -502:
        return "Out of buffer space";
      case -501:
        return "Invalid argument";
      default:
        if (a1 == -901)
        {
          result = "Out of memory";
        }

        else
        {
          if (a1)
          {
            return "Unknown error code";
          }

          result = "Success";
        }

        break;
    }
  }

  return result;
}

uint64_t nghttp2_check_header_name(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 != 58)
    {
      goto LABEL_6;
    }

    if (--a2)
    {
      ++a1;
LABEL_6:
      while (VALID_HD_NAME_CHARS[*a1])
      {
        ++a1;
        if (!--a2)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t nghttp2_check_header_value(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  while (VALID_HD_VALUE_CHARS[*a1])
  {
    ++a1;
    if (!--a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t nghttp2_check_header_value_rfc9113(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = 0;
  v3 = *a1;
  if (v3 != 9 && v3 != 32)
  {
    v2 = 0;
    v4 = a1[a2 - 1];
    if (v4 != 9 && v4 != 32)
    {
      while (VALID_HD_VALUE_CHARS[*a1])
      {
        ++a1;
        if (!--a2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t nghttp2_check_method(unsigned __int8 *a1, uint64_t a2)
{
  if (a2)
  {
    while (VALID_METHOD_CHARS[*a1])
    {
      ++a1;
      if (!--a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t nghttp2_check_path(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  while (VALID_PATH_CHARS[*a1])
  {
    ++a1;
    if (!--a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t nghttp2_check_authority(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  while (VALID_AUTHORITY_CHARS_383[*a1])
  {
    ++a1;
    if (!--a2)
    {
      return 1;
    }
  }

  return 0;
}

const char *nghttp2_http2_strerror(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "unknown";
  }

  else
  {
    return (&off_29EE98F30)[a1];
  }
}