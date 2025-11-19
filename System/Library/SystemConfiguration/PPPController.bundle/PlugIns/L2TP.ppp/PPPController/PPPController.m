uint64_t l2tp_outgoing_call(int a1, const sockaddr *a2, uint64_t a3, uint64_t a4, int a5)
{
  *&v25[4] = sub_1E1C(1u, a3);
  result = sub_B1C(a1, *&v25[4], 0, a2, "SCCRQ");
  if (!result)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *&v25[8] = 0u;
    v26 = 0u;
    v25[8] = 0x80;
    result = l2tp_recv(a1, &control_buf, 1500, &v25[4], &v25[8], a5);
    if (result != -2)
    {
      if (result == -1 || !*&v25[4])
      {
        notice();
      }

      v17 = *&v25[4];
      l2tp_change_peeraddress(a1, &v25[8], v11, v12, v13, v14, v15, v16, v22, v24, *v25);
      if (sub_E20(v17, &v25[2], a4, 2u))
      {
        return 5;
      }

      if (!*a4)
      {
        goto LABEL_19;
      }

      l2tp_reset_timers(a1, 0);
      if (!*(a4 + 6))
      {
        *(a4 + 6) = 4;
      }

      l2tp_set_peerparams(a1, a4);
      qword_189EC = 0x300000000000880;
      result = sub_B1C(a1, 20, 0, 0, "SCCCN");
      if (!result)
      {
        qword_189EC = 0xA00000000000880;
        v18 = *(a3 + 8);
        dword_189F4 = 2176;
        word_189F8 = 3584;
        word_189FA = bswap32(v18) >> 16;
        v19 = *(a3 + 24);
        dword_189FC = 2688;
        word_18A00 = 3840;
        *&word_18A02 = bswap32(v19);
        *&v25[4] = 38;
        result = sub_B1C(a1, 38, 0, 0, "ICRQ");
        if (!result)
        {
          v25[8] = 0x80;
          result = l2tp_recv(a1, &control_buf, 1500, &v25[4], &v25[8], a5);
          if (!result)
          {
            if (sub_E20(*&v25[4], &v25[2], a4, 0xBu))
            {
              return 5;
            }

            if (bswap32(*(&dword_4 + control_hdr + 2)) >> 16 == *(a3 + 8))
            {
              if (*(a4 + 8))
              {
                qword_189EC = 0xC00000000000880;
                v20 = *(a3 + 16);
                dword_189F4 = 2688;
                word_189F8 = 6144;
                *&word_189FA = bswap32(v20);
                v21 = *(a3 + 12);
                *(&dword_189FC + 2) = 2688;
                word_18A02 = 4864;
                dword_18A04 = bswap32(v21);
                return sub_B1C(a1, 40, *(a4 + 8), 0, "ICCN");
              }
            }

            else
            {
              v23 = *(a3 + 8);
            }

LABEL_19:
            error();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_B1C(int a1, int a2, unsigned int a3, const sockaddr *a4, const char *a5)
{
  if (a2 <= 0)
  {
    error();
  }

  word_189E6 = __rev16(a3);
  memset(&v10[1], 0, 15);
  v10[0] = 16;
  v7 = a2;
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v10;
  }

  while (sendto(a1, &control_buf, v7, 0, v8, v8->sa_len) == -1)
  {
    if (&kill_link_ptr)
    {
      return 4294967294;
    }

    if (*__error() != 4)
    {
      error();
    }
  }

  result = strcmp(a5, "Hello");
  if (result)
  {
    dbglog();
  }

  return result;
}

uint64_t l2tp_recv(int a1, void *a2, int a3, _DWORD *a4, sockaddr *a5, int a6)
{
  v22[0] = a5->sa_len;
  v20 = 0;
  v21 = 0;
  memset(&v19, 0, sizeof(v19));
  if (a6)
  {
    v10 = 1 << a1;
    v11 = a1 >> 5;
    v12 = a6;
    if (a6 == -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = &v20;
    }

    while (1)
    {
      memset(&v19, 0, sizeof(v19));
      if (__darwin_check_fd_set_overflow(a1, &v19, 0))
      {
        v19.fds_bits[v11] |= v10;
      }

      v20 = v12;
      LODWORD(v21) = 0;
      v14 = select(a1 + 1, &v19, 0, 0, v13);
      if (!v14)
      {
        break;
      }

      if (&kill_link_ptr)
      {
        return 4294967294;
      }

      if (v14 > 0)
      {
        goto LABEL_12;
      }

      if (*__error() != 4)
      {
        goto LABEL_15;
      }
    }

    if (&debug_ptr >= 2)
    {
      dbglog();
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
LABEL_12:
    while (1)
    {
      v15 = recvfrom(a1, a2, a3, 128, a5, v22);
      if ((v15 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (&kill_link_ptr)
      {
        return 4294967294;
      }

      if (*__error() != 4)
      {
LABEL_15:
        error();
      }
    }

    v17 = v15;
    result = 0;
    *a4 = v17;
  }

  return result;
}

uint64_t sub_E20(uint64_t a1, _WORD *a2, uint64_t a3, unsigned int a4)
{
  v4 = a1 - 12;
  if (a1 == 12)
  {
LABEL_109:
    v34 = 0;
    goto LABEL_110;
  }

  v44 = 0;
  v45 = 0;
  v5 = 0;
  v6 = 0;
  v37 = a3 + 1092;
  v38 = (a3 + 827);
  __dst = (a3 + 568);
  v40 = (a3 + 116);
  v41 = a2;
  v39 = (a3 + 52);
  v7 = &qword_189EC;
  v8 = 1;
  do
  {
    v9 = v7[2];
    v10 = bswap32(*v7);
    v11 = HIWORD(v10) & 0x3FF;
    v12 = __rev16(v9);
    v13 = v11 - 6;
    if (v11 < 6 || v4 < v11)
    {
      goto LABEL_114;
    }

    v14 = v7[1];
    if (v6)
    {
      free(v6);
    }

    v15 = HIWORD(v10);
    __src = malloc_type_malloc(v11, 0x731FBE1DuLL);
    memcpy(__src, v7 + 3, v11);
    if ((v15 & 0x3C00) == 0 && v14 == 0)
    {
      if (v5)
      {
        v6 = __src;
        if ((v15 & 0x4000) != 0)
        {
          goto LABEL_114;
        }

        if (v12 <= 0x27)
        {
          v17 = (&avp_attr + 8 * v12);
          v18 = *v17;
          if (v18 != 255 && v18 != v13)
          {
            goto LABEL_114;
          }

          HIDWORD(v45) |= *(v17 + 1);
        }

        switch(v12)
        {
          case 1u:
            if (v13 <= 1)
            {
              goto LABEL_114;
            }

            *(a3 + 564) = bswap32(*__src) >> 16;
            if (v13 < 4)
            {
              break;
            }

            *(a3 + 566) = bswap32(__src[1]) >> 16;
            v19 = v11 - 10;
            if (v11 == 10)
            {
              v20 = 0;
              v22 = __dst;
              goto LABEL_73;
            }

            if (v19 >= 0xFF)
            {
              v20 = 255;
            }

            else
            {
              v20 = v19;
            }

            v21 = __src + 2;
            v22 = __dst;
            goto LABEL_43;
          case 2u:
            v28 = *__src;
            *(a3 + 2) = __rev16(v28);
            if (v28 != 1)
            {
              goto LABEL_114;
            }

            break;
          case 3u:
          case 4u:
          case 5u:
          case 0x12u:
          case 0x13u:
          case 0x15u:
          case 0x16u:
          case 0x17u:
          case 0x18u:
          case 0x19u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
          case 0x20u:
          case 0x21u:
          case 0x23u:
          case 0x25u:
          case 0x26u:
            break;
          case 6u:
            *(a3 + 4) = bswap32(*__src) >> 16;
            break;
          case 7u:
            if (v13 >= 0x3F)
            {
              v26 = 63;
            }

            else
            {
              v26 = v13;
            }

            v27 = v39;
            goto LABEL_55;
          case 8u:
            if (v13 >= 0x3F)
            {
              v26 = 63;
            }

            else
            {
              v26 = v13;
            }

            v27 = v40;
LABEL_55:
            memmove(v27, __src, v26);
            v6 = __src;
            *(v27 + v26) = 0;
            break;
          case 9u:
            v31 = *__src;
            *a3 = __rev16(v31);
            if (!v31)
            {
              goto LABEL_114;
            }

            break;
          case 0xAu:
            v29 = __rev16(*__src);
            if (*__src)
            {
              v30 = v29;
            }

            else
            {
              v30 = 4;
            }

            *(a3 + 6) = v30;
            break;
          case 0xBu:
          case 0xDu:
            error();
          case 0xCu:
            if (v13 <= 2)
            {
              goto LABEL_114;
            }

            *(a3 + 824) = bswap32(*__src) >> 16;
            *(a3 + 826) = *(__src + 2);
            v25 = v11 - 9;
            if (v11 == 9)
            {
              v20 = 0;
              v22 = v38;
            }

            else
            {
              if (v25 >= 0xFF)
              {
                v20 = 255;
              }

              else
              {
                v20 = v25;
              }

              v21 = __src + 3;
              v22 = v38;
LABEL_43:
              memmove(v22, v21, v20);
              v6 = __src;
            }

LABEL_73:
            *(v22 + v20) = 0;
            break;
          case 0xEu:
            v33 = *__src;
            *(a3 + 8) = __rev16(v33);
            if (!v33)
            {
              goto LABEL_114;
            }

            break;
          case 0xFu:
            *(a3 + 24) = bswap32(*__src);
            break;
          case 0x22u:
            if (v11 != 32)
            {
              goto LABEL_114;
            }

            v32 = *(__src + 9);
            *v37 = vrev32q_s8(*(__src + 1));
            *(v37 + 16) = vrev32_s8(v32);
            break;
          case 0x24u:
            if (v13 > 0x80)
            {
              goto LABEL_114;
            }

            __memmove_chk();
            v6 = __src;
            break;
          case 0x27u:
            *(a3 + 10) = 1;
            break;
          default:
            if ((v15 & 0x8000) != 0)
            {
              goto LABEL_114;
            }

            break;
        }
      }

      else
      {
        v6 = __src;
        if (v9 || (v15 & 0x4000) != 0 || v11 != 8)
        {
          goto LABEL_114;
        }

        v23 = bswap32(*__src) >> 16;
        v24 = v45;
        if ((v15 & 0x8000u) != 0)
        {
          v24 = 1;
        }

        v44 = v23;
        LODWORD(v45) = v24;
        HIDWORD(v45) |= dword_18004;
      }
    }

    else
    {
      v6 = __src;
      if ((((v15 & 0x8000u) == 0) & ~v8) == 0)
      {
        goto LABEL_114;
      }
    }

    v8 = 0;
    v7 = (v7 + v11);
    v5 = 1;
    v4 -= v11;
  }

  while (v4);
  if (v6)
  {
    free(v6);
  }

  if (v44 > 9u)
  {
    if (v44 > 0xDu)
    {
      a2 = v41;
      switch(v44)
      {
        case 0xEu:
          if ((~HIDWORD(v45) & 0x83) == 0)
          {
            v34 = 14;
            goto LABEL_110;
          }

          goto LABEL_114;
        case 0xFu:
          if ((~HIDWORD(v45) & 0x8001) == 0)
          {
            v34 = 15;
            goto LABEL_110;
          }

          goto LABEL_114;
        case 0x10u:
          if ((~HIDWORD(v45) & 0x10001) == 0)
          {
            v34 = 16;
            goto LABEL_110;
          }

          goto LABEL_114;
      }
    }

    else
    {
      a2 = v41;
      switch(v44)
      {
        case 0xAu:
          if ((~HIDWORD(v45) & 0x181) == 0)
          {
            v34 = 10;
            goto LABEL_110;
          }

          goto LABEL_114;
        case 0xBu:
          if ((~HIDWORD(v45) & 0x81) == 0)
          {
            v34 = 11;
            goto LABEL_110;
          }

          goto LABEL_114;
        case 0xCu:
          if ((~HIDWORD(v45) & 0x5001) == 0)
          {
            v34 = 12;
            goto LABEL_110;
          }

          goto LABEL_114;
      }
    }

    goto LABEL_108;
  }

  if (v44 <= 3u)
  {
    a2 = v41;
    switch(v44)
    {
      case 1u:
        if ((~HIDWORD(v45) & 0x3D) == 0)
        {
          v34 = 1;
          goto LABEL_110;
        }

        break;
      case 2u:
        if ((~HIDWORD(v45) & 0x3D) == 0)
        {
          v34 = 2;
          goto LABEL_110;
        }

        break;
      case 3u:
        if ((v45 & 0x100000000) == 0)
        {
          break;
        }

        v34 = 3;
LABEL_110:
        *a2 = v34;
        sub_1DAC(v34);
        dbglog();
      default:
        goto LABEL_108;
    }

LABEL_114:
    error();
  }

  a2 = v41;
  if (v44 - 7 < 3)
  {
    goto LABEL_114;
  }

  if (v44 == 4)
  {
    if ((~HIDWORD(v45) & 0x23) == 0)
    {
      v34 = 4;
      goto LABEL_110;
    }

    goto LABEL_114;
  }

  if (v44 != 6)
  {
LABEL_108:
    if (v45)
    {
      goto LABEL_114;
    }

    goto LABEL_109;
  }

  if ((v45 & 0x100000000) == 0)
  {
    goto LABEL_114;
  }

  *v41 = 6;
  result = 0;
  if (a4 && a4 != 6)
  {
    sub_1DAC(a4);
    sub_1DAC(6u);
    goto LABEL_114;
  }

  return result;
}

uint64_t l2tp_incoming_call(int a1, unsigned __int16 *a2, uint64_t a3, int a4)
{
  HIDWORD(v19) = 0;
  *&v20.sa_data[6] = 0;
  *&v20.sa_family = 0;
  v20.sa_len = 16;
  result = l2tp_recv(a1, &control_buf, 1500, &v19 + 3, &v20, 0);
  if (result)
  {
    return result;
  }

  l2tp_change_peeraddress(a1, &v20, v9, v10, v11, v12, v13, v14, v17, v19, *&v20);
  if (sub_E20(SHIDWORD(v19), &v19 + 5, a3, 1u))
  {
    return 5;
  }

  if (!*a3)
  {
    goto LABEL_19;
  }

  if (!*(a3 + 6))
  {
    *(a3 + 6) = 4;
  }

  l2tp_set_peerparams(a1, a3);
  HIDWORD(v19) = sub_1E1C(2u, a2);
  result = sub_B1C(a1, SHIDWORD(v19), 0, 0, "SCCRP");
  if (result)
  {
    return result;
  }

  v20.sa_len = 16;
  result = l2tp_recv(a1, &control_buf, 1500, &v19 + 3, &v20, a4);
  if (result)
  {
    return result;
  }

  if (sub_E20(SHIDWORD(v19), &v19 + 5, a3, 3u))
  {
    return 5;
  }

  v20.sa_len = 16;
  result = l2tp_recv(a1, &control_buf, 1500, &v19 + 3, &v20, a4);
  if (result)
  {
    return result;
  }

  if (sub_E20(SHIDWORD(v19), &v19 + 5, a3, 0xAu))
  {
    return 5;
  }

  if (!*(a3 + 8))
  {
LABEL_19:
    error();
  }

  qword_189EC = 0xB00000000000880;
  v15 = a2[4];
  dword_189F4 = 2176;
  word_189F8 = 3584;
  word_189FA = bswap32(v15) >> 16;
  HIDWORD(v19) = 28;
  result = sub_B1C(a1, 28, *(a3 + 8), 0, "ICRP");
  if (!result)
  {
    result = l2tp_recv(a1, &control_buf, 1500, &v19 + 3, &v20, a4);
    if (!result)
    {
      if (sub_E20(SHIDWORD(v19), &v19 + 5, a3, 0xCu))
      {
        return 5;
      }

      v16 = bswap32(*(&dword_4 + control_hdr + 2)) >> 16;
      if (v16 == a2[4])
      {
        return 0;
      }

      v18 = a2[4];
      *&v19 = v16;
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t l2tp_send_hello_trigger(int a1, const sockaddr *a2)
{
  v8 = 0;
  v7 = 4;
  if (sysctlbyname("net.key.blockacq_count", &v8, &v7, 0, 0))
  {
    v8 = 10;
    error();
  }

  qword_189EC = 0x600000000000880;
  if ((v8 & 0x80000000) == 0)
  {
    v4 = 0;
    do
    {
      if (sub_B1C(a1, 20, 0, a2, "Hello"))
      {
        error();
      }
    }

    while (v4++ < v8);
  }

  return 0;
}

uint64_t l2tp_send_SCCRQ(int a1, const sockaddr *a2, unsigned __int16 *a3)
{
  v5 = sub_1E1C(1u, a3);

  return sub_B1C(a1, v5, 0, a2, "SCCRQ");
}

uint64_t l2tp_send_CDN(int a1, uint64_t a2, uint64_t a3)
{
  qword_189EC = 0xE00000000000880;
  v6 = *(a2 + 8);
  dword_189F4 = 2176;
  word_189F8 = 3584;
  word_189FA = bswap32(v6) >> 16;
  v7 = *(a2 + 566);
  if (*(a2 + 566))
  {
    v8 = (strlen((a2 + 568)) + 10);
    if (v8 > 0x5BA)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v10 = v8 + 6;
  }

  else
  {
    v10 = 14;
  }

  LOWORD(dword_189FC) = bswap32(v10 | 0x8000) >> 16;
  *(&dword_189FC + 2) = 0x1000000;
  word_18A02 = *(a2 + 564);
  if (v7)
  {
    LOWORD(dword_18A04) = v7;
    __memcpy_chk();
  }

  v9 = v10 + 28;
LABEL_9:
  v11 = *(a3 + 8);

  return sub_B1C(a1, v9, v11, 0, "CDN");
}

uint64_t l2tp_send_StopCCN(int a1, const char *a2)
{
  qword_189EC = 0x400000000000880;
  v4 = *a2;
  dword_189F4 = 2176;
  word_189F8 = 2304;
  word_189FA = bswap32(v4) >> 16;
  v5 = *(a2 + 283);
  if (*(a2 + 283))
  {
    v6 = (strlen(a2 + 568) + 10);
    if (v6 > 0x5BA)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v8 = v6 + 6;
  }

  else
  {
    v8 = 14;
  }

  LOWORD(dword_189FC) = bswap32(v8 | 0x8000) >> 16;
  *(&dword_189FC + 2) = 0x1000000;
  word_18A02 = *(a2 + 282);
  if (v5)
  {
    LOWORD(dword_18A04) = v5;
    __memcpy_chk();
  }

  v7 = v8 + 28;
LABEL_9:

  return sub_B1C(a1, v7, 0, 0, "StopCCN");
}

uint64_t l2tp_data_in(int a1)
{
  v4 = 0;
  *&v6.sa_data[6] = 0;
  *&v6.sa_family = 0;
  bzero(v5, 0x45CuLL);
  v6.sa_len = 16;
  result = l2tp_recv(a1, &control_buf, 1500, &v4, &v6, 0);
  if (!result)
  {
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 0;
    if (sub_E20(v4, &v3, v5, 0))
    {
      return 5;
    }

    if (v3 > 0xEu)
    {
      return 0;
    }

    if (((1 << v3) & 0x1F8E) != 0)
    {
      error();
    }

    if (((1 << v3) & 0x4010) == 0)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

char *sub_1DAC(unsigned int a1)
{
  if (a1 < 0x11 && ((0x1DEDFu >> a1) & 1) != 0)
  {
    return (&off_14680)[a1];
  }

  v1 = byte_19878;
  snprintf(byte_19878, 0xFFuLL, "unknown message (type = 0x%x)", a1);
  return v1;
}

size_t sub_1E1C(unsigned int a1, unsigned __int16 *a2)
{
  LODWORD(qword_189EC) = 2176;
  WORD2(qword_189EC) = 0;
  HIWORD(qword_189EC) = __rev16(a1);
  v3 = a2[1];
  dword_189F4 = 2176;
  word_189F8 = 512;
  word_189FA = bswap32(v3) >> 16;
  v4 = *(a2 + 9);
  dword_189FC = 2688;
  word_18A00 = 768;
  *&word_18A02 = bswap32(v4);
  v5 = strlen(a2 + 52);
  if (v5 + 7 > 0x5B6)
  {
    return 0;
  }

  v6 = v5;
  v7 = v5 + 1;
  HIWORD(dword_18A04) = bswap32((v5 + 7) | 0x8000) >> 16;
  unk_18A08 = 117440512;
  __memmove_chk();
  if ((v6 & 0xFFFFFFFFFFFFFFF8) == 0x5A8)
  {
    return 0;
  }

  v8 = *a2;
  *(&control_buf + v7 + 44) = 2176;
  v9 = &control_buf + v7 + 44;
  *(v9 + 2) = 2304;
  *(v9 + 3) = bswap32(v8) >> 16;
  if ((v6 & 0xFFFFFFFFFFFFFFF8) == 0x5A0)
  {
    return 0;
  }

  v11 = a2[3];
  *(&control_buf + v7 + 52) = 2176;
  *(&control_buf + v7 + 56) = 2560;
  *(&control_buf + v7 + 58) = bswap32(v11) >> 16;
  return v6 + 61;
}

void start(const void *a1)
{
  qword_19B88 = a1;
  CFRetain(a1);
  the_channel_ptr = &l2tp_options;
  userOptions_ptr = l2tp_process_extra_options;
  kSCPropInterfaceName_ptr = l2tp_wait_input;
  wait_underlying_interface_up_ptr = l2tp_check_options;
  kSCPropNetIPv4Router_ptr = l2tp_pre_start_link_check;
  __ipsec_errcode_ptr = l2tp_connect;
  kCTDataConnectionServiceTypeInternet_ptr = l2tp_disconnect;
  kSCEntNetIPSec_ptr = l2tp_cleanup;
  kSCEntNetIPv4_ptr = l2tp_close_fds;
  kSCCompAnyRegex_ptr = l2tp_establish_ppp;
  kSCDynamicStoreDomainSetup_ptr = l2tp_disestablish_ppp;
  kSCDynamicStoreDomainState_ptr = &generic_send_config_ptr;
  kSCDynamicStorePropNetPrimaryInterface_ptr = &generic_recv_config_ptr;
  add_notifier();
}

uint64_t l2tp_process_extra_options()
{
  result = strcmp(off_18160, "answer");
  if (!result)
  {
    result = dup(0);
    dword_18848 = result;
  }

  return result;
}

void l2tp_wait_input()
{
  v0 = 0;
  if (dword_1884C != -1)
  {
    is_ready_fd();
  }

  if (dword_18848 != -1)
  {
    is_ready_fd();
  }

  ppp_process_nat_port_mapping_events();
}

uint64_t l2tp_check_options()
{
  v0 = off_18160;
  result = strcmp(off_18160, "connect");
  if (result)
  {
    result = strcmp(v0, "listen");
    if (result)
    {
      result = strcmp(v0, "answer");
      if (result)
      {
        error();
      }
    }
  }

  if ((dword_18168 - 9) <= 0xFFFFFFF7)
  {
    error();
  }

  if (dword_1816C <= 3)
  {
    error();
  }

  if (&extraconnecttime_ptr)
  {
    LODWORD(busycode_ptr) = 1;
    LODWORD(redialtimer_ptr) = 3;
    LODWORD(redialcount_ptr) = &extraconnecttime_ptr / 3;
    LOBYTE(hasbusystate_ptr) = 0;
  }

  return result;
}

uint64_t l2tp_pre_start_link_check()
{
  flags[0] = 0;
  v0 = nw_nat64_copy_prefixes();
  xmmword_19CE0 = 0uLL;
  if (v0 < 0)
  {
    error();
  }

  *&stru_19CF8.sa_len = 0;
  *&stru_19CF8.sa_data[6] = 0;
  dword_19D10 = 0;
  qword_19D08 = 0;
  v1 = SCNetworkReachabilityCreateWithName(0, &remoteaddress_ptr);
  if (v1)
  {
    v2 = v1;
    v3 = SCNetworkReachabilityGetFlags(v1, flags) && ((flags[0] & 2) != 0 && (flags[0] & 5) != 5 || (flags[0] & 0x10) == 0 && ((~flags[0] & 0xF) == 0 || (flags[0] & 0x40007) == 0x40007));
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  if (xmmword_19CE0)
  {
    v9 = 0;
    v8 = 0;
    flags[1] = -1526332912;
    if (inet_aton(&remoteaddress_ptr, &v8))
    {
      *&stru_19CF8.sa_len = -1526325732;
      if ((nw_nat64_synthesize_v6() & 1) == 0)
      {
        error();
      }

      v4 = SCNetworkReachabilityCreateWithAddress(0, &stru_19CF8);
      if (v4)
      {
        v5 = v4;
        if (SCNetworkReachabilityGetFlags(v4, flags) && ((flags[0] & 2) != 0 && (flags[0] & 5) != 5 || (flags[0] & 0x10) == 0 && ((~flags[0] & 0xF) == 0 || (flags[0] & 0x40007) == 0x40007)))
        {
          notice();
        }

        CFRelease(v5);
      }
    }
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void l2tp_cleanup()
{
  v0 = 0;
  l2tp_close_fds();
  if (!byte_19979)
  {
    if (qword_19D18)
    {
      IPSecRemoveConfiguration(qword_19D18, &v0);
      IPSecRemovePolicies(qword_19D18, -1, &v0);
      CFRelease(qword_19D18);
      qword_19D18 = 0;
    }

    if (strcmp(off_18160, "answer"))
    {
      IPSecRemoveSecurityAssociations(&unk_19B90, &xmmword_19C2C);
    }
  }

  if (DWORD1(xmmword_19C2C))
  {
    if (dword_19D40)
    {
      sub_5EE4(2, SDWORD1(xmmword_19C2C), 0, 0, dword_19D40 != 1);
      dword_19D40 = 0;
    }
  }
}

uint64_t l2tp_close_fds()
{
  if (byte_19D14 == 1)
  {
    untimeout();
  }

  if (dword_1884C != -1)
  {
    close(dword_1884C);
    dword_1884C = -1;
  }

  if (dword_189A8 != -1)
  {
    close(dword_189A8);
    dword_189A8 = -1;
  }

  if ((dword_18848 & 0x80000000) == 0)
  {
    close(dword_18848);
    dword_18848 = -1;
  }

  result = racoon_ctrlsockfd;
  if ((racoon_ctrlsockfd & 0x80000000) == 0)
  {
    result = close(racoon_ctrlsockfd);
    racoon_ctrlsockfd = -1;
  }

  return result;
}

void l2tp_establish_ppp(int a1)
{
  v1 = 0;
  if ((ioctl(a1, 0x8004743DuLL, &v1) & 0x80000000) == 0)
  {
    generic_establish_ppp();
  }

  error();
}

void sub_2C2C()
{
  if (dword_19D40 == 2)
  {
    sub_5EE4(2, SDWORD1(xmmword_19C2C), 0, 0, 0);
  }
}

uint64_t sub_2D50()
{
  if (!strcmp(off_18160, "connect"))
  {
    memset(v6, 0, 106);
    if (racoon_ctrlsockfd < 0)
    {
      v1 = socket(1, 1, 0);
      racoon_ctrlsockfd = v1;
      if (v1 < 0)
      {
        error();
      }

      strcpy(v6[0].sa_data, "/var/run/vpncontrol.sock");
      *&v6[0].sa_len = 256;
      memset(&v6[1].sa_data[9], 0, 79);
      if (connect(v1, v6, 0x6Au) < 0)
      {
        error();
      }
    }

    v3 = 0;
    v4 = 0;
    __buf = 5632;
    if (byte_19B91 == 2)
    {
      v4 = dword_19B94;
    }

    v5 = DWORD1(xmmword_19C2C);
    HIWORD(v3) = 2048;
    write(racoon_ctrlsockfd, &__buf, 0x18uLL);
  }

  else
  {
    IPSecRemoveSecurityAssociations(&unk_19B90, &xmmword_19C2C);
  }

  return sleep(3u);
}

void sub_2ED8()
{
  if (&wait_underlying_interface_up_ptr)
  {
    v0 = 1;
  }

  else
  {
    v0 = &lcp_echo_interval_ptr == 0;
  }

  if (!v0)
  {
    LODWORD(wait_underlying_interface_up_ptr) = 1;
  }

  ppp_block_public_nat_port_mapping_timer();
}

uint64_t l2tp_resolver_thread()
{
  __buf = -1;
  v16 = 0;
  v0 = pthread_self();
  if (!pthread_detach(v0))
  {
    v1 = gethostbyname(&remoteaddress_ptr);
    if (v1)
    {
      v2 = v1;
      h_addr_list = v1->h_addr_list;
      v4 = 1;
      do
      {
        v5 = *h_addr_list++;
        --v4;
      }

      while (v5);
      v16 = 0;
      v6 = open("/dev/random", 0);
      if (v6)
      {
        v7 = v6;
        read(v6, &v16, 1uLL);
        close(v7);
      }

      DWORD1(xmmword_19C2C) = 0;
      if (v4)
      {
        v8 = -v4;
        DWORD1(xmmword_19C2C) = *v2->h_addr_list[v16 % -v4];
        xmmword_19C3C = 0u;
        unk_19C4C = 0u;
        xmmword_19C5C = 0u;
        unk_19C6C = 0u;
        xmmword_19C7C = 0u;
        unk_19C8C = 0u;
        xmmword_19C9C = 0u;
        unk_19CAC = 0u;
        xmmword_19CBC = 0u;
        unk_19CCC = 0u;
        dword_19CDC = 0;
        if (v4 == -1)
        {
LABEL_17:
          __buf = 0;
          goto LABEL_18;
        }

        v9 = 0;
        if (v8 >= 11)
        {
          v10 = 11;
        }

        else
        {
          v10 = -v4;
        }

        v11 = v10 - 1;
        v12 = v16 + 1;
        v13 = &xmmword_19C3C + 2;
        do
        {
          *(v13 - 2) = -1526332912;
          v14 = v12 + v9++;
          *(v13 + 2) = *v2->h_addr_list[v14 % v8];
          v13 += 16;
        }

        while (v9 < v11);
      }

      else
      {
        LODWORD(v9) = 0;
        xmmword_19CBC = 0u;
        unk_19CCC = 0u;
        xmmword_19C9C = 0u;
        unk_19CAC = 0u;
        xmmword_19C7C = 0u;
        unk_19C8C = 0u;
        xmmword_19C5C = 0u;
        unk_19C6C = 0u;
        xmmword_19C3C = 0u;
        unk_19C4C = 0u;
      }

      dword_19CDC = v9;
      goto LABEL_17;
    }
  }

LABEL_18:
  write(dword_1899C, &__buf, 1uLL);
  return 0;
}

uint64_t l2tp_edge_thread()
{
  __buf = -1;
  v0 = pthread_self();
  if (!pthread_detach(v0))
  {
    v2 = _CTServerConnectionCreate();
    if (v2)
    {
      v3 = v2;
      _CTServerConnectionSetPacketContextActiveByServiceType();
      if (!(_CTServerConnectionGetPacketContextActive() >> 32))
      {
        v4 = -39;
        do
        {
          sleep(1u);
          if (_CTServerConnectionGetPacketContextActive() >> 32)
          {
            v5 = 1;
          }

          else
          {
            v5 = v4 == 0;
          }

          ++v4;
        }

        while (!v5);
      }

      CFRelease(v3);
    }
  }

  write(dword_189A4, &__buf, 1uLL);
  return 0;
}

const char *ipsec_error_to_str(int a1)
{
  v1 = a1 + 1;
  result = "Invalid payload type";
  switch(v1)
  {
    case 0:
      result = "Internal error";
      break;
    case 1:
      goto LABEL_5;
    case 2:
      return result;
    case 3:
      result = "DOI not supported";
      break;
    case 4:
      result = "Situation not supported";
      break;
    case 5:
      result = "Invalid cookie";
      break;
    case 6:
      result = "Invalid major version";
      break;
    case 7:
      result = "Invalid minor version";
      break;
    case 8:
      result = "Invalid exchange type";
      break;
    case 9:
      result = "Invalid flags";
      break;
    case 10:
      result = "Invalid message id";
      break;
    case 11:
      result = "Invalid protocol id";
      break;
    case 12:
      result = "Invalid SPI";
      break;
    case 13:
      result = "Invalid transform id";
      break;
    case 14:
      result = "Attributes not supported";
      break;
    case 15:
      result = "No proposal chosen";
      break;
    case 16:
      result = "Bad proposal syntax";
      break;
    case 17:
      result = "Payload malformed";
      break;
    case 18:
      result = "Invalid key information";
      break;
    case 19:
      result = "Invalid id information";
      break;
    case 20:
      result = "Invalid cert encoding";
      break;
    case 21:
      result = "Invalid certificate";
      break;
    case 22:
      result = "Bad cert request syntax";
      break;
    case 23:
      result = "Invalid cert authority";
      break;
    case 24:
      result = "Invalid hash information";
      break;
    case 25:
      result = "Authentication Failed";
      break;
    case 26:
      result = "Invalid signature";
      break;
    case 27:
      result = "Address notification";
      break;
    case 28:
      result = "Notify SA lifetime";
      break;
    case 29:
      result = "Certificate unavailable";
      break;
    case 30:
      result = "Unsupported exchange type";
      break;
    case 31:
      result = "Unequal payload lengths";
      break;
    default:
      if ("Invalid payload type" == 40501)
      {
        result = "Load balance";
      }

      else
      {
LABEL_5:
        result = "Unknown error";
      }

      break;
  }

  return result;
}

uint64_t l2tp_trigger_ipsec(int a1)
{
  memset(v17, 0, 106);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0;
  v10 = 0u;
  v7 = 0;
  v8 = 0;
  if (racoon_ctrlsockfd < 0)
  {
    v2 = socket(1, 1, 0);
    racoon_ctrlsockfd = v2;
    if (v2 < 0 || (strcpy(v17[0].sa_data, "/var/run/vpncontrol.sock"), *&v17[0].sa_len = 256, memset(&v17[1].sa_data[9], 0, 79), connect(v2, v17, 0x6Au) < 0))
    {
      error();
    }
  }

  if (!a1)
  {
    v5 = 0x800000000000000;
    __buf = 256;
    *&v6 = DWORD1(xmmword_19C2C);
    write(racoon_ctrlsockfd, &__buf, 0x18uLL);
    if (xmmword_19CE0)
    {
      v5 = 0x1000000000000000;
      __buf = 6144;
      v6 = xmmword_19CE0;
      notice();
    }

    notice();
  }

  close(racoon_ctrlsockfd);
  racoon_ctrlsockfd = -1;
  return 0;
}

uint64_t l2tp_change_peeraddress(int a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11)
{
  v11 = *a2;
  if (v11 != xmmword_19C2C)
  {
    goto LABEL_9;
  }

  if (!bcmp(&xmmword_19C2C, a2, v11))
  {
    return 0;
  }

  var48[0] = 0uLL;
  v27 = 0;
  if (!byte_19979 && !strcmp(off_18160, "connect"))
  {
    IPSecRemoveConfiguration(qword_19D18, &v27);
    if (a2[1] != DWORD1(xmmword_19C2C))
    {
      IPSecRemoveSecurityAssociations(&unk_19B90, &xmmword_19C2C);
    }

    IPSecRemovePolicies(qword_19D18, -1, &v27);
  }

  if (get_src_address(var48, a2, &ifscope_ptr, 0))
  {
    goto LABEL_9;
  }

  if (byte_19B91 == 2 && DWORD1(var48[0]) != dword_19B94)
  {
    xmmword_19BD0 = var48[4];
    unk_19BE0 = var48[5];
    xmmword_19BF0 = a10;
    unk_19C00 = a11;
    unk_19B90 = var48[0];
    unk_19BA0 = var48[1];
    xmmword_19BB0 = var48[2];
    unk_19BC0 = var48[3];
    if (!strcmp(off_18160, "connect"))
    {
      v15 = 0;
    }

    else
    {
      v15 = -23290;
    }

    word_19B92 = v15;
    l2tp_set_ouraddress(a1, &unk_19B90);
  }

  v16 = *a2;
  __memmove_chk();
  v14 = l2tp_set_peeraddress(a1, a2);
  v17 = off_18160;
  v18 = strlen(off_18160);
  if (!strncmp(off_18160, "answer", v18) || !strncmp(v17, "listen", v18))
  {
    v19.s_addr = DWORD1(xmmword_19C2C);
    remoteaddress_ptr = inet_ntoa(v19);
    notice();
  }

  if (!byte_19979 && !strcmp(off_18160, "connect"))
  {
    v21 = addr2ascii(2, &xmmword_19C2C + 4, 4, 0);
    v22 = CFStringCreateWithCString(0, v21, 0x600u);
    valuePtr = bswap32(WORD1(xmmword_19C2C)) >> 16;
    v23 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(qword_19D18, @"RemoteAddress", v22);
    Value = CFDictionaryGetValue(qword_19D18, @"Policies");
    if (CFArrayGetCount(Value) >= 2)
    {
      CFArrayRemoveValueAtIndex(Value, 1);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    CFDictionarySetValue(ValueAtIndex, @"RemotePort", v23);
    CFArraySetValueAtIndex(Value, 0, ValueAtIndex);
    CFDictionarySetValue(qword_19D18, @"Policies", Value);
    CFRelease(v22);
    CFRelease(v23);
    if (IPSecApplyConfiguration(qword_19D18, &v27) || IPSecInstallPolicies(qword_19D18, -1, &v27))
    {
LABEL_9:
      error();
    }
  }

  return v14;
}

uint64_t sub_3DC0(_DWORD *a1)
{
  *a1 = 0;
  if (&cfgCache_ptr && &serviceidRef_ptr)
  {
    snprintf(__str, 0x20uLL, "socket[%d:%d]", 34, 18);
    __strlcpy_chk();
    LODWORD(hungup_ptr) = 0;
    LODWORD(kill_link_ptr) = 0;
    byte_19D20 = 0;
    v1 = &unk_19000;
    byte_19C10 = 0;
    unk_19B90 = 528;
    unk_19B98 = 0;
    xmmword_19C2C = 0x210uLL;
    bzero(&our_params, 0x45CuLL);
    bzero(&peer_params, 0x45CuLL);
    word_18FC8 = getpid();
    word_18FC6 = dword_1817C;
    word_18FCA = 0;
    dword_18FD8 = 1;
    dword_18FE4 = 3;
    unk_18FCC = 0xF424000000003;
    if (gethostname(&byte_18FF4, 0x40uLL))
    {
      byte_18FF4 = 0;
    }

    word_18FC2 = 256;
    if (!&ifscope_ptr)
    {
      NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
      if (NetworkGlobalEntity)
      {
        v17 = NetworkGlobalEntity;
        v18 = SCDynamicStoreCopyValue(&cfgCache_ptr, NetworkGlobalEntity);
        CFRelease(v17);
        if (v18)
        {
          Value = CFDictionaryGetValue(v18, kSCPropNetIPv4Router);
          if (Value)
          {
            CFStringGetCString(Value, &byte_19D20, 16, 0x8000100u);
          }

          v20 = CFDictionaryGetValue(v18, kSCDynamicStorePropNetPrimaryInterface);
          if (v20)
          {
            CFStringGetCString(v20, &byte_19C10, 17, 0x8000100u);
          }

          CFRelease(v18);
        }
      }

      goto LABEL_45;
    }

    __strcpy_chk();
    if (!byte_19C10)
    {
      goto LABEL_48;
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
    v4 = NetworkServiceEntity;
    v5 = 0;
    if (Mutable)
    {
      v6 = 0;
      v7 = 0;
      if (!NetworkServiceEntity)
      {
        goto LABEL_32;
      }

      CFArrayAppendValue(Mutable, NetworkServiceEntity);
      v8 = SCDynamicStoreCopyMultiple(0, 0, Mutable);
      v5 = v8;
      if (v8)
      {
        v26 = v4;
        Count = CFDictionaryGetCount(v8);
        v7 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        v10 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        v6 = v10;
        if (v7)
        {
          if (v10)
          {
            CFDictionaryGetKeysAndValues(v5, v7, v10);
            if (Count >= 1)
            {
              v25 = Mutable;
              for (i = 0; i != Count; ++i)
              {
                v12 = v7[i];
                v13 = v6[i];
                if (v12)
                {
                  v14 = v13 == 0;
                }

                else
                {
                  v14 = 1;
                }

                if (!v14)
                {
                  v15 = CFDictionaryGetValue(v13, kSCPropInterfaceName);
                  if (v15)
                  {
                    buffer[0] = 0;
                    buffer[1] = 0;
                    CFStringGetCString(v15, buffer, 16, 0x600u);
                    if (!strcmp(buffer, &byte_19C10) && CFStringHasPrefix(v12, kSCDynamicStoreDomainState) && CFStringHasSuffix(v12, kSCEntNetIPv4))
                    {
                      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v12, @"/");
                      if (CFArrayGetCount(ArrayBySeparatingStrings) >= 4)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
                        if (ValueAtIndex)
                        {
                          CFRetain(ValueAtIndex);
                        }
                      }

                      CFRelease(ArrayBySeparatingStrings);
                      warning();
                    }
                  }
                }
              }

              v1 = &unk_19000;
              Mutable = v25;
              v4 = v26;
LABEL_32:
              if (!v4)
              {
                goto LABEL_37;
              }

              goto LABEL_36;
            }
          }
        }

        v4 = v26;
      }

      else
      {
        v7 = 0;
        v6 = 0;
      }

LABEL_36:
      CFRelease(v4);
LABEL_37:
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      if (v7)
      {
        free(v7);
      }

      if (v6)
      {
        free(v6);
      }

LABEL_45:
      if (v1[3088])
      {
        v21 = get_if_mtu() - 220;
        if (&phase_ptr > v21)
        {
          LODWORD(phase_ptr) = v21;
        }
      }

LABEL_48:
      byte_19C24 = 0;
      byte_19C28 = 0;
      LODWORD(wait_underlying_interface_up_ptr) = 0;
      ppp_session_clear();
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_32;
  }

  LODWORD(status_ptr) = 8;
  l2tp_close_fds();
  return 0xFFFFFFFFLL;
}

void sub_5658()
{
  if (l2tp_send_hello(dword_18848))
  {
    error();
  }

  timeout(sub_5658);
}

uint64_t l2tp_set_baudrate(int a1, int a2)
{
  v4 = a2;
  result = setsockopt(a1, 18, 15, &v4, 4u);
  if (result)
  {
    v3 = __error();
    strerror(*v3);
    error();
  }

  return result;
}

uint64_t l2tp_set_delegated_process(int a1, int a2)
{
  v4 = a2;
  result = setsockopt(a1, 18, 17, &v4, 4u);
  if (result)
  {
    v3 = __error();
    strerror(*v3);
    error();
  }

  return result;
}

uint64_t l2tp_set_ouraddress(int a1, unsigned __int8 *a2)
{
  if (setsockopt(a1, 18, 14, a2, *a2))
  {
    v4 = __error();
    strerror(*v4);
    error();
  }

  v6 = *a2;
  getsockopt(a1, 18, 14, a2, &v6);
  return 0;
}

uint64_t l2tp_set_peeraddress(int a1, unsigned __int8 *a2)
{
  result = setsockopt(a1, 18, 2, a2, *a2);
  if (result)
  {
    v3 = __error();
    strerror(*v3);
    error();
  }

  return result;
}

uint64_t l2tp_new_tunnelid(int a1, uint64_t a2)
{
  v4 = a2;
  v3 = 2;
  getsockopt(a1, 18, 4, &v4, &v3);
  return 0;
}

uint64_t l2tp_set_ourparams(int a1, char *a2)
{
  v4 = setsockopt(a1, 18, 3, a2, 2u);
  if (v4 || (v4 = setsockopt(a1, 18, 6, a2 + 8, 2u), v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = setsockopt(a1, 18, 8, a2 + 6, 2u);
    if (!v5)
    {
      return v5;
    }
  }

  v6 = __error();
  v7 = strerror(*v6);
  syslog(7, "l2tp_set_ourparams: failed to set L2TP socket options, err = %s", v7);
  return v5;
}

uint64_t l2tp_set_peerparams(int a1, char *a2)
{
  v4 = setsockopt(a1, 18, 5, a2, 2u);
  if (v4 || (v4 = setsockopt(a1, 18, 7, a2 + 8, 2u), v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = setsockopt(a1, 18, 9, a2 + 6, 2u);
    if (!v5)
    {
      return v5;
    }
  }

  v6 = __error();
  v7 = strerror(*v6);
  syslog(3, "l2tp_set_peerparams: failed to set L2TP socket options, err = %s", v7);
  return v5;
}

uint64_t l2tp_set_flag(int a1, int a2, int a3)
{
  v8 = 0;
  v9 = 4;
  result = getsockopt(a1, 18, 1, &v8, &v9);
  if (!result)
  {
    v7 = v8 & ~a3;
    if (a2)
    {
      v7 = v8 | a3;
    }

    v8 = v7;
    return setsockopt(a1, 18, 1, &v8, 4u);
  }

  return result;
}

void l2tp_reset_timers(int a1, int a2)
{
  v4 = a2 == 0;
  v5 = a2 == 0;
  if (v4)
  {
    v6 = &unk_18170;
  }

  else
  {
    v6 = &unk_18178;
  }

  l2tp_set_flag(a1, v5, 32);
  v7 = dword_18168;
  if (a2)
  {
    v7 = dword_18174;
  }

  v13 = v7;
  v8 = dword_1816C;
  if (a2)
  {
    v8 = dword_18174;
  }

  v12 = v8;
  v11 = *v6;
  if (setsockopt(a1, 18, 10, &v13, 2u) || setsockopt(a1, 18, 11, &v12, 2u) || setsockopt(a1, 18, 12, &v11, 2u))
  {
    v9 = __error();
    v10 = strerror(*v9);
    syslog(3, "l2tp_reset_timers: failed to set L2TP socket options, err = %s", v10);
  }
}

double l2tp_ip_probe_init(_OWORD *a1, uint64_t a2, int a3)
{
  if (a1 && a2 && a3 >= 3)
  {
    if_nametoindex(&byte_19C10);
    bzero(a1, 16 * a3);
    *a1 = 0x808080800000204;
    if (BYTE1(xmmword_19C2C) == 2 && DWORD1(xmmword_19C2C) != 0)
    {
      a1[1] = xmmword_19C2C;
      if (dword_19CDC)
      {
        a1[2] = xmmword_19C3C[arc4random() % dword_19CDC];
      }
    }

    result = NAN;
    *a2 = -1;
    *(a2 + 8) = -1;
  }

  return result;
}

void sub_5CEC()
{
  if (byte_19C28 == 1)
  {
    byte_19C28 = 0;
    log_vpn_interface_address_event();
  }
}

void sub_5D64()
{
  if (DWORD1(xmmword_19C2C))
  {
    *flags = 0;
    v0 = SCNetworkReachabilityCreateWithAddress(0, &xmmword_19C2C);
    if (SCNetworkReachabilityGetFlags(v0, &flags[1]))
    {
      v1 = (flags[1] & 0x20000) != 0;
    }

    else
    {
      v1 = 0;
    }

    CFRelease(v0);
    sub_5EE4(2, SDWORD1(xmmword_19C2C), 0, 0, 0);
    if (!v1 && byte_19D20 && inet_aton(&byte_19D20, flags) == 1)
    {
      v2 = 1;
      sub_5EE4(1, SDWORD1(xmmword_19C2C), flags[0], 0, 0);
    }

    else
    {
      if (!byte_19C10)
      {
        return;
      }

      flags[0] = 0;
      sub_5EE4(1, SDWORD1(xmmword_19C2C), 0, &byte_19C10, 1);
      v2 = 2;
    }

    dword_19D40 = v2;
  }
}

uint64_t sub_5E6C()
{
  v0 = getdtablesize();
  if (v0 >= 1)
  {
    v1 = v0 + 1;
    do
    {
      close(v1 - 2);
      --v1;
    }

    while (v1 > 1);
  }

  open("/dev/null", 2, 0);
  dup(0);

  return dup(0);
}

void sub_5EE4(char a1, int a2, uint64_t a3, const char *a4, int a5)
{
  v10 = socket(17, 3, 17);
  if (v10 < 0)
  {
    v16 = __error();
    v17 = strerror(*v16);
    syslog(6, "host_gateway: open routing socket failed, %s", v17);
  }

  else
  {
    v11 = v10;
    __buf = 0u;
    v21 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    BYTE3(__buf) = a1;
    if (a5)
    {
      v12 = 2305;
    }

    else
    {
      v12 = 2053;
    }

    if (a3)
    {
      v12 |= 2u;
    }

    BYTE2(__buf) = 5;
    DWORD1(v21) = 1;
    WORD6(v25) = 528;
    LODWORD(v26) = a2;
    *(&__buf + 1) = v12 | 0x700000000;
    WORD6(v26) = 528;
    LODWORD(v27) = a3;
    WORD6(v27) = 528;
    LODWORD(v28) = -1;
    if (a4)
    {
      WORD6(v28) = 4628;
      v13 = strlen(a4);
      if (v13 >= 0xC)
      {
        v14 = 12;
      }

      else
      {
        v14 = v13;
      }

      BYTE1(v29) = v14;
      HIDWORD(__buf) = 23;
      __memmove_chk();
      v15 = 160;
    }

    else
    {
      v15 = 140;
    }

    LOWORD(__buf) = v15;
    if (write(v11, &__buf, v15) < 0)
    {
      v18 = __error();
      v19 = strerror(*v18);
      syslog(7, "host_gateway: write routing socket failed, %s", v19);
    }

    close(v11);
  }
}

uint64_t ipsec_check_keylen(int a1, int a2, unsigned int a3)
{
  v5 = 2;
  if (a1 != 14)
  {
    if (a1 != 15)
    {
      goto LABEL_6;
    }

    v5 = 3;
  }

  v6 = sub_6184(v5, a2);
  if (v6)
  {
    v7 = v6;
    v8 = v6[1];
    v5 = 14;
    if (v8 <= a3)
    {
      v10 = v7[2];
      if (v10 >= a3)
      {
        v5 = 0;
      }

      else
      {
        v5 = 14;
      }

      if (v10 >= a3)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }

      goto LABEL_14;
    }

LABEL_6:
    v9 = 0xFFFFFFFFLL;
LABEL_14:
    __ipsec_errcode = v5;
    return v9;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ipsec_check_keylen2(int a1, int a2, unsigned int a3)
{
  v4 = sub_6184(a1, a2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 14;
  if (v4[1] <= a3)
  {
    v7 = v4[2];
    if (v7 >= a3)
    {
      v5 = 0;
    }

    else
    {
      v5 = 14;
    }

    if (v7 >= a3)
    {
      result = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  __ipsec_errcode = v5;
  return result;
}

unsigned __int16 *sub_6184(int a1, int a2)
{
  v2 = 0;
  while (dword_FF1C[v2] != a1)
  {
    if (++v2 == 3)
    {
      v3 = 2;
      goto LABEL_12;
    }
  }

  result = qword_19D48[v2];
  if (result)
  {
    for (i = *result; i >= 16; i -= 8)
    {
      v6 = *(result + 8);
      result += 4;
      if (v6 == a2)
      {
        return result;
      }
    }

    v3 = 1;
  }

  else
  {
    v3 = 22;
  }

LABEL_12:
  result = 0;
  __ipsec_errcode = v3;
  return result;
}

uint64_t ipsec_get_keylen(int a1, int a2, void *a3)
{
  if (a3)
  {
    v5 = 2;
    if (a1 != 14)
    {
      if (a1 != 15)
      {
        v8 = 0xFFFFFFFFLL;
        goto LABEL_9;
      }

      v5 = 3;
    }

    v6 = sub_6184(v5, a2);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6;
    v5 = 0;
    v8 = 0;
    *a3 = *v7;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
    v5 = 2;
  }

LABEL_9:
  __ipsec_errcode = v5;
  return v8;
}

uint64_t pfkey_set_softrate(uint64_t result, int a2)
{
  __ipsec_errcode = 0;
  if ((a2 - 101) >= 0xFFFFFF9C)
  {
    v2 = a2;
  }

  else
  {
    v2 = 100;
  }

  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        result = 0;
        dword_189BC = v2;
        return result;
      }

      goto LABEL_11;
    }

    result = 0;
    dword_189B8 = v2;
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        dword_189B4 = v2;
        return result;
      }

LABEL_11:
      __ipsec_errcode = 2;
      return 1;
    }

    dword_189B0 = v2;
  }

  return result;
}

uint64_t pfkey_get_softrate(int a1)
{
  result = 0xFFFFFFFFLL;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return dword_189B8;
    }

    else if (a1 == 3)
    {
      return dword_189BC;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return dword_189B4;
    }
  }

  else
  {
    return dword_189B0;
  }

  return result;
}

uint64_t pfkey_send_getspi(int a1, char a2, char a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  if (a4 && a5)
  {
    v11 = a4[1];
    if (v11 == a5[1])
    {
      if (a6 > a7 || a6 - 1 <= 0xFE)
      {
        SCLog();
        v19 = 18;
      }

      else
      {
        if (v11 == 2)
        {
          v18 = 32;
LABEL_13:
          v34 = v18;
          v20 = a6 < 0x100 || a7 == -1;
          v21 = v20;
          v33 = v21;
          if (v20)
          {
            v22 = 50;
          }

          else
          {
            v22 = 66;
          }

          v23 = ((*a4 - 1) | 7) + ((*a5 - 1) | 7) + v22;
          v24 = malloc_type_calloc(1uLL, v23, 0x1000040451B5BE8uLL);
          if (!v24)
          {
            v29 = __error();
            strerror(*v29);
            __ipsec_set_strerror();
LABEL_41:
            SCLog();
            return 0xFFFFFFFFLL;
          }

          v25 = v24;
          v26 = getpid();
          if (v23 > 15)
          {
            *v25 = 0;
            v25[1] = 0;
            *v25 = 258;
            *(v25 + 2) = 0;
            *(v25 + 3) = a2;
            *(v25 + 1) = (v23 >> 3);
            *(v25 + 2) = a9;
            *(v25 + 3) = v26;
            if (v23 > 0x1F)
            {
              v30 = v25 + v23;
              v25[2] = 0;
              v25[3] = 0;
              *(v25 + 4) = 1245186;
              *(v25 + 20) = a3;
              *(v25 + 7) = a8;
              v31 = sub_674C(v25 + 16, v25 + v23, 5, a4, v34, 255);
              if (v31)
              {
                v32 = sub_674C(v31, v25 + v23, 6, a5, v34, 255);
                if (v32)
                {
                  if ((v33 & 1) == 0)
                  {
                    if ((v32 + 16) > v30)
                    {
                      goto LABEL_40;
                    }

                    *v32 = 1048578;
                    *(v32 + 1) = a6;
                    *(v32 + 2) = a7;
                    *(v32 + 3) = 0;
                    v32 += 16;
                  }

                  if (v32 == v30)
                  {
                    v27 = pfkey_send(a1, v25, v23);
                    free(v25);
                    if ((v27 & 0x80000000) == 0)
                    {
                      __ipsec_errcode = 0;
                      return v27;
                    }

                    goto LABEL_41;
                  }
                }
              }
            }
          }

LABEL_40:
          free(v25);
          goto LABEL_41;
        }

        if (v11 == 30)
        {
          v18 = 0x80;
          goto LABEL_13;
        }

        SCLog();
        v19 = 15;
      }
    }

    else
    {
      SCLog();
      v19 = 24;
    }
  }

  else
  {
    SCLog();
    v19 = 2;
  }

  __ipsec_errcode = v19;
  return 0xFFFFFFFFLL;
}

char *sub_674C(_WORD *a1, unint64_t a2, __int16 a3, unsigned __int8 *a4, char a5, char a6)
{
  v6 = (*a4 - 1) | 7;
  v7 = (v6 + 9);
  v8 = a1 + v7;
  if (a1 + v7 > a2)
  {
    return 0;
  }

  bzero(a1, (v6 + 9));
  *a1 = v7 >> 3;
  a1[1] = a3;
  *(a1 + 4) = a6;
  *(a1 + 5) = a5;
  a1[3] = 0;
  memcpy(a1 + 4, a4, *a4);
  return v8;
}

ssize_t pfkey_send(int a1, const void *a2, int a3)
{
  result = send(a1, a2, a3, 0);
  if ((result & 0x80000000) != 0)
  {
    v4 = __error();
    strerror(*v4);
    __ipsec_set_strerror();
    return 0xFFFFFFFFLL;
  }

  else
  {
    __ipsec_errcode = 0;
  }

  return result;
}

uint64_t sub_6890(int a1, char a2, int a3, char a4, unsigned __int8 *a5, unsigned __int8 *a6, int a7, int a8, char a9, char *a10, int a11, unsigned int a12, int a13, unsigned int a14, int a15, int a16, unsigned int a17, unsigned int a18, unsigned int a19, int a20)
{
  if (!a5 || !a6)
  {
    SCLog();
    v30 = 2;
    goto LABEL_36;
  }

  v22 = a5[1];
  if (v22 != a6[1])
  {
    SCLog();
    v30 = 24;
    goto LABEL_36;
  }

  v26 = a3;
  if (v22 == 2)
  {
    v29 = 32;
  }

  else
  {
    if (v22 != 30)
    {
      SCLog();
      v30 = 15;
      goto LABEL_36;
    }

    v29 = 0x80;
  }

  switch(a3)
  {
    case 2:
      if (!a11)
      {
        if (!a13)
        {
LABEL_35:
          SCLog();
          v30 = 20;
          goto LABEL_36;
        }

LABEL_24:
        v46 = v29;
        v31 = ((a12 - 1) | 7) + 139;
        v32 = ((a14 - 1) | 7) + 9;
        if (!a13)
        {
          v32 = 0;
        }

        if (!a11)
        {
          v31 = 130;
        }

        v33 = v31 + v32 + ((*a5 - 1) | 7) + ((*a6 - 1) | 7);
        v34 = malloc_type_calloc(1uLL, v33, 0x1000040451B5BE8uLL);
        if (!v34)
        {
          v36 = __error();
          strerror(*v36);
          __ipsec_set_strerror();
LABEL_53:
          SCLog();
          return 0xFFFFFFFFLL;
        }

        v47 = v34;
        v35 = getpid();
        if (v33 > 15)
        {
          *v47 = 0;
          v47[1] = 0;
          *v47 = 2;
          *(v47 + 1) = a2;
          *(v47 + 2) = 0;
          *(v47 + 3) = v26;
          *(v47 + 1) = (v33 >> 3);
          *(v47 + 2) = a20;
          *(v47 + 3) = v35;
          if (v33 > 0x1F)
          {
            v47[2] = 0;
            v47[3] = 0;
            *(v47 + 4) = 65538;
            *(v47 + 5) = a7;
            *(v47 + 24) = a9;
            *(v47 + 25) = 0;
            *(v47 + 26) = a13;
            *(v47 + 27) = a11;
            *(v47 + 7) = a15;
            if (v33 > 0x2F)
            {
              v39 = v33;
              v40 = v47 + v33;
              v47[4] = 0;
              v47[5] = 0;
              *(v47 + 8) = 1245186;
              *(v47 + 36) = a4;
              *(v47 + 11) = a8;
              v41 = sub_674C(v47 + 24, v47 + v33, 5, a5, v46, 255);
              if (v41)
              {
                v42 = sub_674C(v41, v40, 6, a6, v46, 255);
                if (v42)
                {
                  if (a11)
                  {
                    v43 = a12;
                    v42 = sub_8474(v42, v40, 9, a10, a12);
                    if (!v42)
                    {
                      goto LABEL_52;
                    }
                  }

                  else
                  {
                    v43 = a12;
                  }

                  if ((!a13 || (v42 = sub_8474(v42, v40, 8, &a10[v43], a14)) != 0) && (v42 + 32) <= v40)
                  {
                    *v42 = 0u;
                    *(v42 + 1) = 0u;
                    *v42 = 196612;
                    *(v42 + 1) = a16;
                    *(v42 + 1) = a17;
                    *(v42 + 2) = a18;
                    *(v42 + 3) = a19;
                    if ((v42 + 64) <= v40)
                    {
                      *(v42 + 2) = 0uLL;
                      *(v42 + 3) = 0uLL;
                      v44 = dword_189B0 * a16 / 0x64u;
                      *(v42 + 8) = 262148;
                      *(v42 + 9) = v44;
                      v45 = dword_189B8 * a18;
                      *(v42 + 5) = dword_189B4 * a17 / 0x64uLL;
                      *(v42 + 6) = v45 / 0x64uLL;
                      *(v42 + 7) = dword_189BC * a19 / 0x64uLL;
                      if (v42 + 64 == v40)
                      {
                        v37 = pfkey_send(a1, v47, v39);
                        free(v47);
                        if ((v37 & 0x80000000) == 0)
                        {
                          __ipsec_errcode = 0;
                          return v37;
                        }

                        goto LABEL_53;
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_52:
        free(v47);
        goto LABEL_53;
      }

      goto LABEL_22;
    case 9:
      if (a11)
      {
        if (a13)
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }

LABEL_22:
      SCLog();
      v30 = 13;
      goto LABEL_36;
    case 3:
      if (!a11)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
  }

  SCLog();
  v30 = 10;
LABEL_36:
  __ipsec_errcode = v30;
  return 0xFFFFFFFFLL;
}

uint64_t sub_6F38(int a1, char a2, char a3, unsigned __int8 *a4, unsigned __int8 *a5, int a6)
{
  if (!a4 || !a5)
  {
    SCLog();
    v14 = 2;
LABEL_14:
    __ipsec_errcode = v14;
    return 0xFFFFFFFFLL;
  }

  v8 = a4[1];
  if (v8 != a5[1])
  {
    SCLog();
    v14 = 24;
    goto LABEL_14;
  }

  if (v8 == 2)
  {
    v13 = 32;
    goto LABEL_10;
  }

  if (v8 != 30)
  {
    SCLog();
    v14 = 15;
    goto LABEL_14;
  }

  v13 = 0x80;
LABEL_10:
  v15 = ((*a5 - 1) | 7) + ((*a4 - 1) | 7);
  v16 = v15 + 50;
  v17 = malloc_type_calloc(1uLL, v15 + 50, 0x1000040451B5BE8uLL);
  if (v17)
  {
    v18 = v17;
    v19 = getpid();
    if (v15 <= -35)
    {
      goto LABEL_24;
    }

    *v18 = 0;
    v18[1] = 0;
    *v18 = 2;
    *(v18 + 1) = a2;
    *(v18 + 2) = 0;
    *(v18 + 3) = a3;
    *(v18 + 1) = (v16 >> 3);
    *(v18 + 2) = 0;
    *(v18 + 3) = v19;
    if (v15 <= -19)
    {
      goto LABEL_24;
    }

    v18[2] = 0;
    v18[3] = 0;
    *(v18 + 4) = 65538;
    *(v18 + 5) = a6;
    v18[3] = 0;
    v23 = sub_674C(v18 + 16, v18 + v16, 5, a4, v13, 255);
    if (!v23)
    {
      goto LABEL_24;
    }

    v24 = sub_674C(v23, v18 + v16, 6, a5, v13, 255);
    if (v24 && v24 == v18 + v16)
    {
      v20 = pfkey_send(a1, v18, v16);
      free(v18);
      if ((v20 & 0x80000000) == 0)
      {
        __ipsec_errcode = 0;
        return v20;
      }
    }

    else
    {
LABEL_24:
      free(v18);
    }
  }

  else
  {
    v22 = __error();
    strerror(*v22);
    __ipsec_set_strerror();
  }

  SCLog();
  return 0xFFFFFFFFLL;
}

uint64_t pfkey_send_delete_all(int a1, char a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (!a4 || !a5)
  {
    SCLog();
    v11 = 2;
LABEL_14:
    __ipsec_errcode = v11;
    return 0xFFFFFFFFLL;
  }

  v7 = a4[1];
  if (v7 != a5[1])
  {
    SCLog();
    v11 = 24;
    goto LABEL_14;
  }

  if (v7 == 2)
  {
    v10 = 32;
    goto LABEL_10;
  }

  if (v7 != 30)
  {
    SCLog();
    v11 = 15;
    goto LABEL_14;
  }

  v10 = 0x80;
LABEL_10:
  v12 = ((*a5 - 1) | 7) + ((*a4 - 1) | 7);
  v13 = v12 + 34;
  v14 = malloc_type_calloc(1uLL, v12 + 34, 0x1000040451B5BE8uLL);
  if (v14)
  {
    v15 = v14;
    v16 = getpid();
    if (v12 <= -19)
    {
      goto LABEL_12;
    }

    *v15 = 0;
    v15[1] = 0;
    *v15 = 1026;
    *(v15 + 2) = 0;
    *(v15 + 3) = a2;
    *(v15 + 1) = (v13 >> 3);
    *(v15 + 2) = 0;
    *(v15 + 3) = v16;
    v20 = sub_674C(v15 + 8, v15 + v13, 5, a4, v10, 255);
    if (!v20)
    {
      goto LABEL_12;
    }

    v21 = sub_674C(v20, v15 + v13, 6, a5, v10, 255);
    if (v21 && v21 == v15 + v13)
    {
      v17 = pfkey_send(a1, v15, v13);
      free(v15);
      if ((v17 & 0x80000000) == 0)
      {
        __ipsec_errcode = 0;
        return v17;
      }
    }

    else
    {
LABEL_12:
      free(v15);
    }
  }

  else
  {
    v19 = __error();
    strerror(*v19);
    __ipsec_set_strerror();
  }

  SCLog();
  return 0xFFFFFFFFLL;
}

uint64_t pfkey_send_register(int a1, unsigned int a2)
{
  v4 = 0;
  if (a2)
  {
    while (dword_FF1C[v4] != a2)
    {
      if (++v4 == 3)
      {
        __ipsec_errcode = 2;
        return 0xFFFFFFFFLL;
      }
    }

    v7 = qword_19D48[v4];
    if (v7)
    {
      free(v7);
      qword_19D48[v4] = 0;
    }
  }

  else
  {
    do
    {
      v6 = *(qword_19D48 + v4);
      if (v6)
      {
        free(v6);
        *(qword_19D48 + v4) = 0;
      }

      v4 += 8;
    }

    while (v4 != 24);
  }

  return sub_75C8(a1, 7, a2);
}

uint64_t sub_75C8(int a1, int a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  if (a2 == 11)
  {
    if (a3 >= 2)
    {
LABEL_11:
      SCLog();
      __ipsec_errcode = 10;
      return 0xFFFFFFFFLL;
    }
  }

  else if (a3 > 9 || ((1 << a3) & 0x20D) == 0)
  {
    goto LABEL_11;
  }

  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v6)
  {
    v10 = __error();
    strerror(*v10);
    __ipsec_set_strerror();
    goto LABEL_10;
  }

  v7 = v6;
  v8 = getpid();
  *v7 = 2;
  v7[1] = v4;
  v7[2] = 0;
  v7[3] = v3;
  *(v7 + 4) = 2;
  *(v7 + 3) = v8;
  v9 = pfkey_send(a1, v7, 16);
  free(v7);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_10:
    SCLog();
    return 0xFFFFFFFFLL;
  }

  __ipsec_errcode = 0;
  return v9;
}

uint64_t pfkey_recv_register(int a1)
{
  v2 = getpid();
  v3 = pfkey_recv(a1);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  while (*(v4 + 1) != 7 || *(v4 + 3) != v2)
  {
    v4 = pfkey_recv(a1);
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v5 = 8 * v4[2];
  v4[2] = v5;
  v6 = pfkey_set_supported(v4, v5 & 0xFFF8);
  free(v4);
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  __ipsec_errcode = 0;
  return result;
}

unsigned __int16 *pfkey_recv(int a1)
{
  v11[0] = 0;
  v11[1] = 0;
  while (1)
  {
    v2 = recv(a1, v11, 0x10uLL, 2);
    if ((v2 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v3 = __error();
      strerror(*v3);
      __ipsec_set_strerror();
      return 0;
    }
  }

  if (v2 <= 0xF)
  {
    recv(a1, v11, 0x10uLL, 0);
    v4 = 0;
    __ipsec_errcode = 27;
    return v4;
  }

  v5 = WORD2(v11[0]);
  v6 = 8 * WORD2(v11[0]);
  v4 = malloc_type_calloc(1uLL, v6, 0x1000040451B5BE8uLL);
  if (!v4)
  {
    v9 = __error();
    strerror(*v9);
    __ipsec_set_strerror();
    return v4;
  }

  while (1)
  {
    v7 = recv(a1, v4, v6, 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v8 = __error();
      strerror(*v8);
      __ipsec_set_strerror();
      goto LABEL_16;
    }
  }

  if (v7 == v6 && v4[2] == v5)
  {
    __ipsec_errcode = 0;
    return v4;
  }

  __ipsec_errcode = 26;
LABEL_16:
  free(v4);
  return 0;
}

uint64_t pfkey_set_supported(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 4) == a2)
  {
    v2 = a1 + a2;
    v3 = (a1 + 16);
    if (a2 >= 0x18)
    {
      do
      {
        v5 = *v3;
        if (!*v3 || v2 < v3 + v5)
        {
          break;
        }

        v7 = v3[1];
        if ((v7 & 0xFFFE) != 0xE)
        {
          goto LABEL_4;
        }

        v8 = 8 * v5;
        *v3 = v8;
        v9 = v7 != 14;
        v10 = qword_19D48[v7 != 14];
        if (v10)
        {
          free(v10);
          v8 = *v3;
        }

        v11 = malloc_type_malloc(v8, 0x91CE4848uLL);
        qword_19D48[v9] = v11;
        if (!v11)
        {
          v12 = __error();
          strerror(*v12);
          __ipsec_set_strerror();
          return 0xFFFFFFFFLL;
        }

        memcpy(v11, v3, *v3);
        v3 = (v3 + *v3);
      }

      while (v3 < v2 && v2 >= (v3 + 4));
    }

    if (v3 == v2)
    {
      result = 0;
      __ipsec_errcode = 0;
    }

    else
    {
LABEL_4:
      __ipsec_errcode = 10;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    __ipsec_errcode = 2;
    return 0xFFFFFFFFLL;
  }

  return result;
}

ssize_t sub_7AF8(int a1, char a2, unsigned __int8 *a3, unsigned int a4, unsigned __int8 *a5, unsigned int a6, char a7, unsigned int a8, uint64_t a9, void *__src, int a11, int a12)
{
  if (!a3 || !a5)
  {
    SCLog();
    v22 = 2;
LABEL_17:
    __ipsec_errcode = v22;
    return 0xFFFFFFFFLL;
  }

  v14 = a3[1];
  if (v14 != a5[1])
  {
    SCLog();
    v22 = 24;
    goto LABEL_17;
  }

  v17 = a6;
  v18 = a4;
  if (v14 == 2)
  {
    v21 = 32;
  }

  else
  {
    if (v14 != 30)
    {
      SCLog();
      v22 = 15;
      goto LABEL_17;
    }

    v21 = 128;
  }

  if (v21 < a4 || v21 < a6)
  {
    SCLog();
    v22 = 16;
    goto LABEL_17;
  }

  v23 = a11 + ((2 * *a3 - 2) | 0xE) + 66;
  v24 = malloc_type_calloc(1uLL, v23, 0x1000040451B5BE8uLL);
  if (v24)
  {
    v25 = v24;
    v26 = getpid();
    if (v23 <= 15)
    {
      goto LABEL_25;
    }

    *v25 = 0;
    v25[1] = 0;
    *v25 = 2;
    *(v25 + 1) = a2;
    v30 = v25 + v23;
    *(v25 + 1) = 0;
    *(v25 + 1) = (v23 >> 3);
    *(v25 + 2) = a12;
    *(v25 + 3) = v26;
    v31 = sub_674C(v25 + 8, v25 + v23, 5, a3, v18, a7);
    if (!v31)
    {
      goto LABEL_25;
    }

    v32 = sub_674C(v31, v25 + v23, 6, a5, v17, a7);
    if (!v32)
    {
      goto LABEL_25;
    }

    v33 = v32;
    v34 = v32 + 32;
    if (v34 > v30)
    {
      goto LABEL_25;
    }

    *v33 = 0u;
    *(v33 + 1) = 0u;
    *v33 = 196612;
    *(v33 + 1) = 0;
    *(v33 + 2) = a8;
    *(v33 + 3) = a9;
    if (&v34[a11] == v30)
    {
      memcpy(v34, __src, a11);
      v27 = pfkey_send(a1, v25, v23);
      free(v25);
      if ((v27 & 0x80000000) == 0)
      {
        __ipsec_errcode = 0;
        return v27;
      }
    }

    else
    {
LABEL_25:
      free(v25);
    }
  }

  else
  {
    v29 = __error();
    strerror(*v29);
    __ipsec_set_strerror();
  }

  SCLog();
  return 0xFFFFFFFFLL;
}

ssize_t pfkey_send_spddelete(int a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, char a6, void *a7, int a8, int a9)
{
  if (a8 == 16)
  {
    return sub_7AF8(a1, 15, a2, a3, a4, a5, a6, 0, 0, a7, 16, a9);
  }

  __ipsec_errcode = 2;
  return 0xFFFFFFFFLL;
}

uint64_t sub_7FDC(int a1, char a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040451B5BE8uLL);
  if (!v6)
  {
    v10 = __error();
    strerror(*v10);
    __ipsec_set_strerror();
    goto LABEL_5;
  }

  v7 = v6;
  v8 = getpid();
  *v7 = 2;
  v7[1] = a2;
  *(v7 + 1) = 0;
  *(v7 + 4) = 4;
  *(v7 + 3) = v8;
  *(v7 + 2) = 1179776;
  *(v7 + 6) = a3;
  *(v7 + 7) = 0;
  v9 = pfkey_send(a1, v7, 32);
  free(v7);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_5:
    SCLog();
    return 0xFFFFFFFFLL;
  }

  __ipsec_errcode = 0;
  return v9;
}

ssize_t pfkey_send_spdsetidx(int a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, char a6, void *a7, int a8, int a9)
{
  if (a8 == 16)
  {
    return sub_7AF8(a1, 20, a2, a3, a4, a5, a6, 0, 0, a7, 16, a9);
  }

  __ipsec_errcode = 2;
  return 0xFFFFFFFFLL;
}

uint64_t pfkey_open()
{
  v4 = 0x20000;
  v0 = socket(29, 3, 2);
  if ((v0 & 0x80000000) != 0)
  {
    v2 = __error();
    strerror(*v2);
    __ipsec_set_strerror();
    return 0xFFFFFFFFLL;
  }

  else
  {
    v1 = v0;
    setsockopt(v0, 0xFFFF, 4097, &v4, 4u);
    setsockopt(v1, 0xFFFF, 4098, &v4, 4u);
    __ipsec_errcode = 0;
  }

  return v1;
}

uint64_t pfkey_close(int a1)
{
  result = close(a1);
  __ipsec_errcode = 0;
  return result;
}

uint64_t pfkey_align(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  v4 = 2;
  if (a1 && a2)
  {
    *(a2 + 232) = 0;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    v5 = *(a1 + 4);
    v6 = a1 + 8 * v5;
    *a2 = a1;
    v7 = (a1 + 16);
    if (v5 >= 3)
    {
      while (1)
      {
        v8 = &v7[4 * *v7];
        if (!*v7 || v6 < v8)
        {
          break;
        }

        v11 = v7[1];
        if (*(a2 + 8 * v11) || (v11 - 1) >= 0x10 && (v11 - 18) > 1)
        {
          result = 0xFFFFFFFFLL;
          v4 = 12;
          goto LABEL_11;
        }

        *(a2 + 8 * v11) = v7;
        v12 = v8 < v6 && v6 >= (v8 + 2);
        v7 = v8;
        if (!v12)
        {
          goto LABEL_5;
        }
      }
    }

    v8 = v7;
LABEL_5:
    v9 = v8 == v6;
    if (v8 == v6)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    if (v9)
    {
      result = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

LABEL_11:
  __ipsec_errcode = v4;
  return result;
}

uint64_t pfkey_check(uint64_t a1)
{
  if (!a1 || (v1 = *a1) == 0)
  {
    result = 0xFFFFFFFFLL;
    v4 = 2;
    goto LABEL_8;
  }

  if (*v1 != 2)
  {
    result = 0xFFFFFFFFLL;
    v4 = 4;
    goto LABEL_8;
  }

  v2 = v1[1];
  if (v2 > 0x1A)
  {
    result = 0xFFFFFFFFLL;
    v4 = 11;
    goto LABEL_8;
  }

  v5 = v1[3];
  if (v5 > 9)
  {
    goto LABEL_18;
  }

  v4 = 1;
  if (((1 << v5) & 0x1E0) != 0)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if (((1 << v5) & 0x20C) == 0)
  {
    if (v5 == 1)
    {
      if (v2 == 11)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_18:
    if (!v5)
    {
      v6 = v2 - 1;
      if ((v2 - 1) >= 8u)
      {
        goto LABEL_23;
      }

      v7 = 191;
      goto LABEL_21;
    }

LABEL_22:
    result = 0xFFFFFFFFLL;
    v4 = 10;
    goto LABEL_8;
  }

  v6 = v2 - 14;
  if (v2 - 14 >= 6)
  {
    goto LABEL_23;
  }

  v7 = 55;
LABEL_21:
  if ((v7 >> v6))
  {
    goto LABEL_22;
  }

LABEL_23:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      if (*(v8 + 4) != *(v9 + 4))
      {
        result = 0xFFFFFFFFLL;
        v4 = 23;
        goto LABEL_8;
      }

      v10 = *(v8 + 9);
      if (v10 != *(v9 + 9))
      {
        result = 0xFFFFFFFFLL;
        v4 = 24;
        goto LABEL_8;
      }

      if (v10 != 30 && v10 != 2)
      {
        result = 0xFFFFFFFFLL;
        v4 = 15;
        goto LABEL_8;
      }
    }
  }

  v4 = 0;
  result = 0;
LABEL_8:
  __ipsec_errcode = v4;
  return result;
}

char *sub_8474(_WORD *a1, unint64_t a2, __int16 a3, const void *a4, unsigned int a5)
{
  v5 = (a5 - 1) | 7;
  v6 = (v5 + 9);
  v7 = a1 + v6;
  if (a1 + v6 > a2)
  {
    return 0;
  }

  bzero(a1, (v5 + 9));
  *a1 = v6 >> 3;
  a1[1] = a3;
  a1[2] = 8 * a5;
  a1[3] = 0;
  memcpy(a1 + 4, a4, a5);
  return v7;
}

uint64_t makepath(const char *a1)
{
  v2 = umask(0);
  v3 = (strlen(a1) + 1);
  v4 = malloc_type_malloc(v3, 0xE0BD5170uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  memset(&v10, 0, sizeof(v10));
  strlcpy(v4, a1, v3);
  for (i = *v5 == 47; ; ++i)
  {
    if (v5[i])
    {
      if (v5[i] != 47)
      {
        continue;
      }

      v5[i] = 0;
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    if (mkdir(v5, 0x1EDu) && (*__error() != 17 && *__error() != 21 || stat(v5, &v10) < 0))
    {
      break;
    }

    v5[i] = 47;
    if (!v7)
    {
      v8 = 0;
      goto LABEL_16;
    }
  }

  v8 = 0xFFFFFFFFLL;
LABEL_16:
  free(v5);
  umask(v2);
  return v8;
}

FILE *racoon_pid()
{
  v3 = 0;
  result = fopen("/var/run/racoon.pid", "r");
  if (result)
  {
    v1 = result;
    fscanf(result, "%d", &v3);
    fclose(v1);
    *v6 = 0xE00000001;
    v7 = 1;
    v8 = v3;
    bzero(v4, 0x288uLL);
    v2 = 648;
    if (sysctl(v6, 4u, v4, &v2, 0, 0))
    {
      return 0;
    }

    else if (v5[0] ^ 0x6F636172 | *(v5 + 3) ^ 0x6E6F6F)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

void IPSecConfigureVerboseLogging(__CFDictionary *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, @"VerboseLogging", v3);
  CFRelease(v3);
}

uint64_t sub_87B4(const void *a1, const char **a2, int a3)
{
  __str[0].__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (!isDictionary(a1))
  {
    *a2 = "IPSec dictionary not present";
    return 0xFFFFFFFFLL;
  }

  memset(&v76, 0, sizeof(v76));
  v75 = 0;
  GetIntFromDict(a1, @"VerboseLogging", &v75, 0);
  if (!GetStrAddrFromDict(a1, @"LocalAddress", cStr, 256))
  {
    v13 = "incorrect local address found";
LABEL_19:
    *a2 = v13;
    goto LABEL_20;
  }

  if (!racoon_validate_cfg_str(cStr))
  {
    v13 = "invalid local address";
    goto LABEL_19;
  }

  if (!GetStrAddrFromDict(a1, @"RemoteAddress", v79, 256))
  {
    v13 = "incorrect remote address found";
    goto LABEL_19;
  }

  if (!racoon_validate_cfg_str(v79))
  {
    v13 = "invalid remote address";
    goto LABEL_19;
  }

  v7 = inet_addr(v79);
  v8 = v7;
  if (a3)
  {
    if (v7)
    {
      v9 = v79;
    }

    else
    {
      v9 = "anonymous";
    }

    v10 = __str;
    snprintf(__str, 0x100uLL, "/var/run/racoon/%s.conf", v9);
    remove(__str, v11);
    if (stat("/var/run/racoon", &v76))
    {
      if (*__error() == 2 && makepath("/var/run/racoon"))
      {
        v12 = *__error();
        snprintf(v81, 0x100uLL, "cannot create racoon configuration file path (error %d)");
LABEL_55:
        *a2 = v81;
        goto LABEL_20;
      }

      v10 = __str;
    }
  }

  else
  {
    v10 = "/dev/null";
  }

  v15 = umask(0x3Fu);
  v16 = fopen(v10, "w");
  umask(v15);
  if (!v16)
  {
    v30 = *__error();
    snprintf(v81, 0x100uLL, "cannot create racoon configuration file (error %d)");
    goto LABEL_55;
  }

  if (v75)
  {
    fprintf(v16, "%s%s", TAB_LEVEL, "log debug2;\n");
    fprintf(v16, "%s%s", TAB_LEVEL, "path logfile /var/log/racoon.log;\n\n");
  }

  v18 = CFDictionaryGetValue(a1, @"UseAnonymousPolicy") == 0 && v8 != 0;
  v17 = !v18;
  v66 = v18;
  v19 = v79;
  if (v17)
  {
    v19 = "anonymous";
  }

  snprintf(v81, 0x100uLL, "remote %s {\n", v19);
  fprintf(v16, "%s%s", TAB_LEVEL, v81);
  fprintf(v16, "%s%s", off_189C8, "doi ipsec_doi;\n");
  v72 = v16;
  fprintf(v16, "%s%s", off_189C8, "situation identity_only;\n");
  Value = CFDictionaryGetValue(a1, @"AuthenticationMethod");
  if (Value)
  {
    v21 = Value;
  }

  else
  {
    v21 = @"SharedSecret";
  }

  __strlcpy_chk();
  v22 = CFDictionaryGetValue(a1, @"ExchangeMode");
  cf1 = v21;
  if (!isArray(v22))
  {
    goto LABEL_48;
  }

  v68 = a2;
  Count = CFArrayGetCount(v22);
  v24 = Count - 1;
  if (Count >= 1)
  {
    v25 = 0;
    if (v24 >= 2)
    {
      v24 = 2;
    }

    v26 = v24 + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v22, v25);
      if (isString(ValueAtIndex))
      {
        if (v25)
        {
          __strlcat_chk();
        }

        if (!CFEqual(ValueAtIndex, @"Main") && !CFEqual(ValueAtIndex, @"Aggressive") && !CFEqual(ValueAtIndex, @"Base"))
        {
          v38 = "incorrect phase 1 exchange mode";
          goto LABEL_87;
        }

        __strlcat_chk();
      }
    }

    while (v26 != ++v25);
  }

  a2 = v68;
  if (!Count)
  {
LABEL_48:
    StrFromDict = GetStrFromDict(a1, @"LocalIdentifier", v85, 256, &unk_10CE9);
    IPSecIsAggressiveMode(v21, StrFromDict, 1);
    __strlcat_chk();
  }

  __strlcat_chk();
  v29 = v16;
  fprintf(v16, "%s%s", off_189C8, __ptr);
  if (!CFEqual(v21, @"SharedSecret") && !CFEqual(v21, @"Certificate") && !CFEqual(v21, @"Hybrid"))
  {
    v35 = "incorrect authentication method found";
    goto LABEL_232;
  }

  if (GetStrFromDict(a1, @"LocalIdentifierType", v84, 256, &unk_10CE9))
  {
    __strlcpy_chk();
    if (!racoon_validate_cfg_str(v84))
    {
      v35 = "invalid LocalIdentifierType";
      goto LABEL_232;
    }
  }

  if (GetStrFromDict(a1, @"LocalIdentifier", v85, 256, &unk_10CE9))
  {
    if (!racoon_validate_cfg_str(v85))
    {
      v35 = "invalid LocalIdentifier";
      goto LABEL_232;
    }

    v31 = v84;
    if (!v84[0])
    {
      v31 = "fqdn";
    }

    snprintf(__ptr, 0x400uLL, "my_identifier %s %s;\n", v31, v85);
    goto LABEL_62;
  }

  if (!CFEqual(v21, @"SharedSecret") && !CFEqual(v21, @"Hybrid") && CFEqual(v21, @"Certificate"))
  {
    strcpy(__ptr, "my_identifier asn1dn;\n");
LABEL_62:
    fprintf(v16, "%s%s", off_189C8, __ptr);
  }

  v32 = CFDictionaryGetValue(a1, @"IdentifierVerification");
  if (!isString(v32))
  {
    v32 = @"GenerateFromRemoteAddress";
  }

  if (!CFEqual(v32, @"None"))
  {
    if (CFEqual(v32, @"GenerateFromRemoteAddress"))
    {
      if (!GetStrAddrFromDict(a1, @"RemoteAddress", v85, 256))
      {
        v35 = "no remote address found";
        goto LABEL_150;
      }

      snprintf(__ptr, 0x400uLL, "peers_identifier address %s;\n", v85);
      v29 = v16;
      fprintf(v16, "%s%s", off_189C8, __ptr);
      v36 = CFEqual(v21, @"Certificate");
      v37 = "off";
      if (!v36)
      {
        v37 = "on";
      }

      v33 = 2 * (v36 != 0);
      goto LABEL_93;
    }

    if (CFEqual(v32, @"UseRemoteIdentifier"))
    {
      v29 = v16;
      if (!GetStrFromDict(a1, @"RemoteIdentifier", v85, 256, &unk_10CE9))
      {
        v35 = "no remote identifier found";
        goto LABEL_232;
      }

      if (!racoon_validate_cfg_str(v85))
      {
        v35 = "invalid RemoteIdentifier";
        goto LABEL_232;
      }

      snprintf(__ptr, 0x400uLL, "peers_identifier fqdn %s;\n", v85);
      fprintf(v16, "%s%s", off_189C8, __ptr);
      if (!CFEqual(v21, @"Certificate") && !CFEqual(v21, @"Hybrid"))
      {
        v33 = 0;
        v37 = "on";
        goto LABEL_93;
      }

      v33 = 2;
    }

    else
    {
      if (!CFEqual(v32, @"UseOpenDirectory"))
      {
        v35 = "incorrect verification method";
        goto LABEL_150;
      }

      v29 = v16;
      if (!CFEqual(v21, @"Certificate"))
      {
        v35 = "open directory can only be used with certificate authentication";
        goto LABEL_232;
      }

      v33 = 1;
    }

    v37 = "off";
LABEL_93:
    v34 = __ptr;
    snprintf(__ptr, 0x400uLL, "verify_identifier %s;\n", v37);
    goto LABEL_94;
  }

  v33 = 0;
  v34 = "verify_identifier off;\n";
  v29 = v72;
LABEL_94:
  fprintf(v29, "%s%s", off_189C8, v34);
  if (CFEqual(cf1, @"SharedSecret") || CFEqual(cf1, @"Hybrid"))
  {
    if (!GetStrFromDict(a1, @"SharedSecret", v85, 256, &unk_10CE9))
    {
      v35 = "no shared secret found";
      goto LABEL_232;
    }

    if (!racoon_validate_cfg_str(v85))
    {
      v35 = "invalid SharedSecret";
      goto LABEL_232;
    }

    __strlcpy_chk();
    v39 = CFDictionaryGetValue(a1, @"SharedSecretEncryption");
    if (!isString(v39))
    {
LABEL_108:
      snprintf(__ptr, 0x400uLL, "shared_secret %s %s;\n", v84, v85);
      v29 = v72;
      fprintf(v72, "%s%s", off_189C8, __ptr);
      if (CFEqual(cf1, @"Hybrid"))
      {
        strcpy(__ptr, "certificate_verification sec_framework use_peers_identifier;\n");
LABEL_117:
        fprintf(v29, "%s%s", off_189C8, __ptr);
        goto LABEL_118;
      }

      goto LABEL_118;
    }

    if (CFEqual(v39, @"Key") || CFEqual(v39, @"Keychain"))
    {
      __strlcpy_chk();
      goto LABEL_108;
    }

    v35 = "incorrect shared secret encryption found";
LABEL_150:
    v29 = v72;
    goto LABEL_232;
  }

  if (CFEqual(cf1, @"Certificate"))
  {
    v40 = CFDictionaryGetValue(a1, @"LocalCertificate");
    if (isData(v40))
    {
      fprintf(v72, "%s%s", off_189C8, "certificate_type x509 in_keychain ");
      v41 = v40;
      v29 = v72;
      v42 = sub_EC0C(v41, __ptr);
      fwrite(__ptr, 1uLL, v42, v72);
      fputs(";\n", v72);
    }

    else
    {
      v29 = v72;
      fprintf(v72, "%s%s", off_189C8, "certificate_type x509 in_keychain;\n");
    }

    fprintf(v29, "%s%s", off_189C8, "verify_cert on;\n");
    v43 = " use_peers_identifier";
    if (v33 != 2)
    {
      v43 = &unk_10CE9;
    }

    if (v33 == 1)
    {
      v43 = " use_open_dir";
    }

    snprintf(__ptr, 0x400uLL, "certificate_verification sec_framework%s;\n", v43);
    goto LABEL_117;
  }

LABEL_118:
  if (CFDictionaryContainsKey(a1, @"ForceLocalAddress") && CFDictionaryGetValue(a1, @"ForceLocalAddress") == kCFBooleanTrue)
  {
    GetStrAddrFromDict(a1, @"LocalAddress", v85, 256);
    if (racoon_validate_cfg_str(v85))
    {
      snprintf(__ptr, 0x400uLL, "local_address %s;\n", v85);
      fprintf(v29, "%s%s", off_189C8, __ptr);
      goto LABEL_122;
    }

    v35 = "invalid force local address";
LABEL_232:
    *a2 = v35;
    goto LABEL_233;
  }

LABEL_122:
  *v85 = 0;
  GetIntFromDict(a1, @"NonceSize", v85, 16);
  snprintf(__ptr, 0x400uLL, "nonce_size %d;\n", *v85);
  fprintf(v29, "%s%s", off_189C8, __ptr);
  *v85 = 0;
  if (GetIntFromDict(a1, @"NattMultipleUsersEnabled", v85, 0))
  {
    if (*v85)
    {
      v44 = "on";
    }

    else
    {
      v44 = "off";
    }

    snprintf(__ptr, 0x400uLL, "nat_traversal_multi_user %s;\n", v44);
    fprintf(v29, "%s%s", off_189C8, __ptr);
  }

  *v85 = 0;
  if (GetIntFromDict(a1, @"NattKeepAliveEnabled", v85, 1))
  {
    if (*v85)
    {
      v45 = "on";
    }

    else
    {
      v45 = "off";
    }

    snprintf(__ptr, 0x400uLL, "nat_traversal_keepalive %s;\n", v45);
    fprintf(v29, "%s%s", off_189C8, __ptr);
  }

  *v85 = 0;
  *v84 = 0;
  v78 = 0;
  v77 = 0;
  if (GetIntFromDict(a1, @"DeadPeerDetectionEnabled", v85, 0))
  {
    GetIntFromDict(a1, @"DeadPeerDetectionDelay", v84, 30);
    GetIntFromDict(a1, @"DeadPeerDetectionRetry", &v78 + 1, 5);
    GetIntFromDict(a1, @"DeadPeerDetectionMaxFail", &v78, 5);
    GetIntFromDict(a1, @"BlackHoleDetectionEnabled", &v77, 1);
    snprintf(__ptr, 0x400uLL, "dpd_delay %d;\n", *v84);
    fprintf(v29, "%s%s", off_189C8, __ptr);
    snprintf(__ptr, 0x400uLL, "dpd_retry %d;\n", HIDWORD(v78));
    fprintf(v29, "%s%s", off_189C8, __ptr);
    snprintf(__ptr, 0x400uLL, "dpd_maxfail %d;\n", v78);
    fprintf(v29, "%s%s", off_189C8, __ptr);
    if (v77)
    {
      v46 = "dpd_blackhole_detect";
    }

    else
    {
      v46 = "dpd_inbound_detect";
    }

    snprintf(__ptr, 0x400uLL, "dpd_algorithm %s;\n", v46);
    fprintf(v29, "%s%s", off_189C8, __ptr);
  }

  *v85 = 0;
  *v84 = 0;
  if (GetIntFromDict(a1, @"DisconnectOnIdle", v85, 0) && *v85)
  {
    GetIntFromDict(a1, @"DisconnectOnIdleTimer", v84, 120);
    snprintf(__ptr, 0x400uLL, "disconnect_on_idle idle_timeout %d idle_direction idle_outbound;\n", *v84);
    fprintf(v29, "%s%s", off_189C8, __ptr);
  }

  fprintf(v29, "%s%s", off_189C8, "initial_contact on;\n");
  fprintf(v29, "%s%s", off_189C8, "support_proxy on;\n");
  __strlcpy_chk();
  v47 = CFDictionaryGetValue(a1, @"ProposalsBehavior");
  if (isString(v47))
  {
    if (!CFEqual(v47, @"Claim") && !CFEqual(v47, @"Obey") && !CFEqual(v47, @"Strict") && !CFEqual(v47, @"Exact"))
    {
      *a2 = "incorrect proposal behavior";
      goto LABEL_88;
    }

    __strlcpy_chk();
  }

  snprintf(__ptr, 0x400uLL, "proposal_check %s;\n", v85);
  v29 = v72;
  fprintf(v72, "%s%s", off_189C8, __ptr);
  if (!GetStrFromDict(a1, @"XAuthName", v85, 256, &unk_10CE9))
  {
    goto LABEL_157;
  }

  if (!racoon_validate_cfg_str(v85))
  {
    v35 = "invalid XauthName";
    goto LABEL_232;
  }

  snprintf(__ptr, 0x400uLL, "xauth_login %s;\n", v85);
  fprintf(v72, "%s%s", off_189C8, __ptr);
LABEL_157:
  *v85 = 0;
  if (GetIntFromDict(a1, @"ModeConfigEnabled", v85, 0))
  {
    if (*v85)
    {
      v48 = "on";
    }

    else
    {
      v48 = "off";
    }

    snprintf(__ptr, 0x400uLL, "mode_cfg %s;\n", v48);
    fprintf(v72, "%s%s", off_189C8, __ptr);
  }

  v49 = CFDictionaryGetValue(a1, @"Proposals");
  v68 = a2;
  theArray = v49;
  v67 = a3;
  if (isArray(v49))
  {
    v50 = CFArrayGetCount(v49);
  }

  else
  {
    v50 = 0;
  }

  v51 = 0;
  v52 = 0;
  if (v50 <= 1)
  {
    v53 = 1;
  }

  else
  {
    v53 = v50;
  }

  cf1a = v53;
  do
  {
    if (v50)
    {
      v52 = CFArrayGetValueAtIndex(theArray, v51);
      if (!isDictionary(v52))
      {
        *v68 = "incorrect phase 1 proposal";
        goto LABEL_233;
      }
    }

    fprintf(v29, "%s%s", off_189C8, "\n");
    fprintf(v29, "%s%s", off_189C8, "proposal {\n");
    HIDWORD(v78) = 0;
    v54 = CFDictionaryGetValue(a1, @"AuthenticationMethod");
    GetIntFromDict(a1, @"XAuthEnabled", &v78 + 1, 0);
    __strlcpy_chk();
    if (isString(v54))
    {
      if (!CFEqual(v54, @"SharedSecret") && !CFEqual(v54, @"Certificate") && !CFEqual(v54, @"Hybrid"))
      {
        v38 = "incorrect authentication method";
        goto LABEL_87;
      }

      __strlcpy_chk();
    }

    snprintf(v85, 0x400uLL, "authentication_method %s;\n", v84);
    fprintf(v72, "%s%s", off_189D0, v85);
    __strlcpy_chk();
    if (!v52)
    {
      snprintf(v85, 0x400uLL, "hash_algorithm %s;\n", v84);
      fprintf(v72, "%s%s", off_189D0, v85);
LABEL_190:
      __strlcpy_chk();
      goto LABEL_191;
    }

    v55 = CFDictionaryGetValue(v52, @"HashAlgorithm");
    if (isString(v55))
    {
      if (!CFEqual(v55, @"MD5") && !CFEqual(v55, @"SHA1") && !CFEqual(v55, @"SHA256") && !CFEqual(v55, @"SHA512"))
      {
        v38 = "incorrect authentication algorithm";
        goto LABEL_87;
      }

      __strlcpy_chk();
    }

    snprintf(v85, 0x400uLL, "hash_algorithm %s;\n", v84);
    fprintf(v72, "%s%s", off_189D0, v85);
    __strlcpy_chk();
    v56 = CFDictionaryGetValue(v52, @"EncryptionAlgorithm");
    if (isString(v56))
    {
      if (!CFEqual(v56, @"DES") && !CFEqual(v56, @"3DES") && !CFEqual(v56, @"AES") && !CFEqual(v56, @"AES256"))
      {
        v38 = "incorrect encryption algorithm";
LABEL_87:
        *v68 = v38;
LABEL_88:
        v29 = v72;
        goto LABEL_233;
      }

      goto LABEL_190;
    }

LABEL_191:
    snprintf(v85, 0x400uLL, "encryption_algorithm %s;\n", v84);
    v29 = v72;
    fprintf(v72, "%s%s", off_189D0, v85);
    *v84 = 3600;
    if (v52)
    {
      GetIntFromDict(v52, @"Lifetime", v84, 3600);
      snprintf(v85, 0x400uLL, "lifetime time %d sec;\n", *v84);
      fprintf(v72, "%s%s", off_189D0, v85);
      *v84 = 14;
      GetIntFromDict(v52, @"DHGroup", v84, 14);
      v57 = *v84;
    }

    else
    {
      snprintf(v85, 0x400uLL, "lifetime time %d sec;\n", 3600);
      fprintf(v72, "%s%s", off_189D0, v85);
      v57 = 14;
      *v84 = 14;
    }

    snprintf(v85, 0x400uLL, "dh_group %d;\n", v57);
    fprintf(v72, "%s%s", off_189D0, v85);
    fprintf(v72, "%s%s", off_189C8, "}\n");
    ++v51;
  }

  while (cf1a != v51);
  fprintf(v72, "%s%s", TAB_LEVEL, "}\n\n");
  v58 = CFDictionaryGetValue(a1, @"Policies");
  if (!isArray(v58) || (v59 = CFArrayGetCount(v58)) == 0 || (!v66 ? (v60 = 1) : (v60 = v59), v60 < 1))
  {
LABEL_227:
    fclose(v29);
    if (v67)
    {
      sub_A4EC();
    }

    return 0;
  }

  v61 = 0;
  v62 = "incorrect policy found";
  while (2)
  {
    v78 = 0;
    v77 = 0;
    v73 = 0;
    v74 = 0;
    v63 = CFArrayGetValueAtIndex(v58, v61);
    if (isDictionary(v63))
    {
      v64 = CFDictionaryGetValue(v63, @"Level");
      if (!isString(v64) || CFEqual(v64, @"None") || CFEqual(v64, @"Discard"))
      {
        goto LABEL_223;
      }

      if (!CFEqual(v64, @"Require"))
      {
        v62 = "incorrect policy level found";
LABEL_246:
        v29 = v72;
        break;
      }

      if (v66)
      {
        v65 = CFDictionaryGetValue(v63, @"Mode");
        if (!isString(v65) || CFEqual(v65, @"Tunnel"))
        {
          if (!GetStrNetFromDict(v63, @"LocalAddress", __ptr, 256))
          {
            v62 = "incorrect policy local network";
            goto LABEL_246;
          }

          v29 = v72;
          if (!racoon_validate_cfg_str(__ptr))
          {
            v62 = "invalid local network";
            break;
          }

          if (!GetStrNetFromDict(v63, @"RemoteAddress", v84, 256))
          {
            v62 = "incorrect policy remote network";
            break;
          }

          if (!racoon_validate_cfg_str(v84))
          {
            v62 = "invalid remote network";
            break;
          }

          GetIntFromDict(v63, @"LocalPrefix", &v77, 24);
          if (!v77)
          {
            v62 = "incorrect policy local prefix";
            break;
          }

          GetIntFromDict(v63, @"RemotePrefix", &v74, 24);
          if (!v74)
          {
            v62 = "incorrect policy remote prefix";
            break;
          }

          snprintf(v81, 0x100uLL, "sainfo address %s/%d 0 address %s/%d 0 {\n", __ptr, v77, v84, v74);
          snprintf(v85, 0x100uLL, "sainfo address %s/%d 0 address %s/%d 0 {\n", v84, v74, __ptr, v77);
LABEL_219:
          fprintf(v29, "%s%s", TAB_LEVEL, v81);
          if (sub_E658(v29, v63, v68))
          {
            goto LABEL_233;
          }

          fprintf(v29, "%s%s", TAB_LEVEL, "}\n\n");
          if (v66)
          {
            v29 = v72;
            fprintf(v72, "%s%s", TAB_LEVEL, v85);
            if (sub_E658(v72, v63, v68))
            {
              goto LABEL_233;
            }

            fprintf(v72, "%s%s", TAB_LEVEL, "}\n\n");
          }

LABEL_223:
          ++v61;
          v29 = v72;
          if (v60 == v61)
          {
            goto LABEL_227;
          }

          continue;
        }

        if (!CFEqual(v65, @"Transport"))
        {
          v62 = "incorrect policy type found";
          goto LABEL_246;
        }

        GetIntFromDict(v63, @"LocalPort", &v78 + 1, 0);
        GetIntFromDict(v63, @"RemotePort", &v78, 0);
        GetIntFromDict(v63, @"Protocol", &v73, 0);
        GetIntFromDict(v63, @"LocalPrefix", &v77, 32);
        GetIntFromDict(v63, @"RemotePrefix", &v74, 32);
        snprintf(v81, 0x100uLL, "sainfo address %s/%d [%d] %d address %s/%d [%d] %d {\n", cStr, v77, HIDWORD(v78), v73, v79, v74, v78, v73);
        snprintf(v85, 0x100uLL, "sainfo address %s/%d [%d] %d address %s/%d [%d] %d {\n", v79, v74, v78, v73, cStr, v77, HIDWORD(v78), v73);
      }

      else
      {
        strcpy(v81, "sainfo anonymous {\n");
      }

      v29 = v72;
      goto LABEL_219;
    }

    break;
  }

  *v68 = v62;
LABEL_233:
  fclose(v29);
LABEL_20:
  if (__str[0].__pn_.__r_.__value_.__s.__data_[0])
  {
    remove(__str, v6);
  }

  return 0xFFFFFFFFLL;
}

uint64_t IPSecRemoveConfiguration(const void *a1, const char **a2)
{
  __str[0].__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (!isDictionary(a1))
  {
    v6 = "IPSec dictionary not present";
LABEL_7:
    *a2 = v6;
    return 0xFFFFFFFFLL;
  }

  if (!GetStrAddrFromDict(a1, @"RemoteAddress", v7, 32))
  {
    v6 = "incorrect remote address found";
    goto LABEL_7;
  }

  result = inet_addr(v7);
  if (result)
  {
    snprintf(__str, 0x100uLL, "/var/run/racoon/%s.conf", v7);
    remove(__str, v5);
    sub_A4EC();
    return 0;
  }

  return result;
}

FILE *sub_A4EC()
{
  result = racoon_pid();
  if (result)
  {

    return kill(result, 30);
  }

  return result;
}

uint64_t IPSecRemoveConfigurationFile(const void *a1, const char **a2)
{
  __str[0].__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (!isDictionary(a1))
  {
    v6 = "IPSec dictionary not present";
LABEL_7:
    *a2 = v6;
    return 0xFFFFFFFFLL;
  }

  if (!GetStrAddrFromDict(a1, @"RemoteAddress", v7, 32))
  {
    v6 = "incorrect remote address found";
    goto LABEL_7;
  }

  result = inet_addr(v7);
  if (result)
  {
    snprintf(__str, 0x100uLL, "/var/run/racoon/%s.conf", v7);
    remove(__str, v5);
    return 0;
  }

  return result;
}

const void *IPSecCountPolicies(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Policies");
  result = isArray(Value);
  if (result)
  {
    return CFArrayGetCount(Value);
  }

  return result;
}

BOOL get_address_from_string(const char *a1, void *a2, size_t a3)
{
  v3 = 0;
  if (a1)
  {
    if (a2)
    {
      v13 = 0;
      v6 = getaddrinfo(a1, 0, &stru_FF50, &v13);
      v3 = v6 == 0;
      if (!v6)
      {
        v7 = v13;
        if (v13)
        {
          v8 = v13;
          while (1)
          {
            ai_addr = v8->ai_addr;
            sa_family = ai_addr->sa_family;
            if (sa_family == 30 || sa_family == 2)
            {
              break;
            }

            v8 = v8->ai_next;
            if (!v8)
            {
              goto LABEL_14;
            }
          }

          if (ai_addr->sa_len <= a3)
          {
            bzero(a2, a3);
            memcpy(a2, v8->ai_addr, v8->ai_addr->sa_len);
          }
        }

LABEL_14:
        freeaddrinfo(v7);
      }
    }
  }

  return v3;
}

uint64_t IPSecInstallPolicies(const __CFDictionary *a1, CFIndex a2, const char **a3)
{
  v54 = 4;
  v55 = 0;
  v53 = 0;
  v52 = 255;
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  v6 = pfkey_open();
  if (v6 < 0)
  {
    v9 = "cannot open a pfkey socket";
    goto LABEL_77;
  }

  if (!GetStrAddrFromDict(a1, @"LocalAddress", v60, 256))
  {
    v9 = "incorrect local address";
    goto LABEL_77;
  }

  if (!GetStrAddrFromDict(a1, @"RemoteAddress", v59, 256))
  {
    v9 = "incorrect remote address";
    goto LABEL_77;
  }

  Value = CFDictionaryGetValue(a1, @"Policies");
  if (!isArray(Value))
  {
    v9 = "no policies found";
    goto LABEL_77;
  }

  Count = CFArrayGetCount(Value);
  v9 = "no policies found";
  if (!Count || Count < a2)
  {
LABEL_77:
    *a3 = v9;
LABEL_78:
    SCLog();
    goto LABEL_79;
  }

  v10 = a2 + 1;
  if (a2 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  if (a2 == -1)
  {
    v10 = Count;
  }

  v46 = v10;
  idx = v11;
  if (v11 >= v10)
  {
LABEL_82:
    SCLog();
    v39 = 0;
    goto LABEL_80;
  }

  v44 = a3;
  v45 = Value;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v49 = v12;
    ValueAtIndex = CFArrayGetValueAtIndex(Value, idx);
    if (!isDictionary(ValueAtIndex))
    {
      v41 = "incorrect policy found";
LABEL_85:
      *v44 = v41;
      goto LABEL_78;
    }

    v16 = CFDictionaryGetValue(ValueAtIndex, @"Mode");
    if (isString(v16) && !CFEqual(v16, @"Tunnel"))
    {
      if (!CFEqual(v16, @"Transport"))
      {
        v41 = "incorrect policy type found";
        goto LABEL_85;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = CFDictionaryGetValue(ValueAtIndex, @"Direction");
    if (!isString(v18))
    {
      goto LABEL_26;
    }

    if (CFEqual(v18, @"In"))
    {
      v47 = 0;
      v19 = 1;
    }

    else
    {
      if (!CFEqual(v18, @"Out"))
      {
        if (!CFEqual(v18, @"InOut"))
        {
          v41 = "incorrect policy direction found";
          goto LABEL_85;
        }

LABEL_26:
        v47 = 0;
        v19 = 0;
        goto LABEL_27;
      }

      v19 = 0;
      v47 = 1;
    }

LABEL_27:
    v20 = CFDictionaryGetValue(ValueAtIndex, @"Level");
    if (!isString(v20) || CFEqual(v20, @"None"))
    {
      v21 = v17;
      strcpy(__str, "out none");
      v22 = 0x656E6F6E206E69;
LABEL_30:
      *__s = v22;
      goto LABEL_31;
    }

    if (CFEqual(v20, @"Unique"))
    {
      v21 = v17;
      if (v17)
      {
        strcpy(__str, "out ipsec esp/transport//unique");
        strcpy(__s, "in ipsec esp/transport//unique");
      }

      else
      {
        snprintf(__str, 0x200uLL, "out ipsec esp/tunnel/%s-%s/unique", v60, v59);
        snprintf(__s, 0x200uLL, "in ipsec esp/tunnel/%s-%s/unique");
      }
    }

    else
    {
      if (!CFEqual(v20, @"Require"))
      {
        if (!CFEqual(v20, @"Discard"))
        {
          v41 = "incorrect policy level";
          goto LABEL_85;
        }

        v21 = v17;
        strcpy(__str, "out discard");
        strcpy(&__s[7], "ard");
        v22 = *"in discard";
        goto LABEL_30;
      }

      v21 = v17;
      if (v17)
      {
        strcpy(__str, "out ipsec esp/transport//require");
        strcpy(__s, "in ipsec esp/transport//require");
      }

      else
      {
        snprintf(__str, 0x200uLL, "out ipsec esp/tunnel/%s-%s/require", v60, v59);
        snprintf(__s, 0x200uLL, "in ipsec esp/tunnel/%s-%s/require");
      }
    }

LABEL_31:
    v23 = strlen(__s);
    v24 = ipsec_set_policy(__s, v23);
    if (!v24)
    {
      v41 = "cannot set policy in";
      goto LABEL_85;
    }

    v25 = v24;
    v26 = strlen(__str);
    v27 = ipsec_set_policy(__str, v26);
    v28 = v27;
    if (!v27)
    {
      v42 = "cannot set policy out";
LABEL_96:
      *v44 = v42;
      goto LABEL_97;
    }

    v48 = v14;
    v29 = *v25;
    v30 = *v27;
    if ((v21 & 1) == 0)
    {
      break;
    }

    v51 = 0;
    if (!get_address_from_string(v60, v57, 0x80uLL))
    {
      v43 = "incorrect local address";
      goto LABEL_94;
    }

    GetIntFromDict(ValueAtIndex, @"LocalPort", &v51, 0);
    HIWORD(v57[0]) = bswap32(v51) >> 16;
    if (BYTE1(v57[0]) == 2)
    {
      v31 = 32 * (v57[1] != 0);
    }

    else
    {
      v31 = 128;
    }

    HIDWORD(v53) = v31;
    if (!get_address_from_string(v59, v56, 0x80uLL))
    {
      v43 = "incorrect remote address";
      goto LABEL_94;
    }

    GetIntFromDict(ValueAtIndex, @"RemotePort", &v51, 0);
    WORD1(v56[0]) = bswap32(v51) >> 16;
    if (BYTE1(v56[0]) == 2)
    {
      v32 = 32 * (DWORD1(v56[0]) != 0);
    }

    else
    {
      v32 = 128;
    }

    LODWORD(v53) = v32;
    v33 = &v52;
    v34 = ValueAtIndex;
    v35 = @"Protocol";
    v36 = 0;
LABEL_48:
    GetIntFromDict(v34, v35, v33, v36);
    v12 = v49;
    if (v19)
    {
      v14 = v48;
      goto LABEL_52;
    }

    v37 = 8 * v30;
    v14 = (v48 + 1);
    if ((pfkey_send_spdadd(v6, v57, HIDWORD(v53), v56, v53, v52, v28, v37, v49) & 0x80000000) != 0)
    {
      v42 = "cannot add policy out";
      goto LABEL_96;
    }

    v12 = v49 + 1;
LABEL_52:
    if (v47)
    {
      goto LABEL_55;
    }

    v14 = (v14 + 1);
    if ((pfkey_send_spdadd(v6, v56, v53, v57, HIDWORD(v53), v52, v25, 8 * v29, v12) & 0x80000000) != 0)
    {
      v42 = "cannot add policy in";
      goto LABEL_96;
    }

    ++v12;
LABEL_55:
    if ((getsockopt(v6, 0xFFFF, 4128, &v55, &v54) & 0x80000000) == 0 && v55 >= 1)
    {
      do
      {
        v38 = pfkey_recv(v6);
        if (v38)
        {
          ++v13;
          free(v38);
        }
      }

      while ((getsockopt(v6, 0xFFFF, 4128, &v55, &v54) & 0x80000000) == 0 && v55 > 0);
    }

    free(v25);
    free(v28);
    Value = v45;
    if (++idx == v46)
    {
      goto LABEL_82;
    }
  }

  if (!GetStrNetFromDict(ValueAtIndex, @"LocalAddress", v58, 256))
  {
    v43 = "incorrect local network (0)";
    goto LABEL_94;
  }

  if (!get_address_from_string(v58, v57, 0x80uLL))
  {
    v43 = "incorrect local network (1)";
    goto LABEL_94;
  }

  GetIntFromDict(ValueAtIndex, @"LocalPrefix", &v53 + 1, 24);
  if (!GetStrNetFromDict(ValueAtIndex, @"RemoteAddress", v58, 256))
  {
    v43 = "incorrect remote network (0)";
    goto LABEL_94;
  }

  if (get_address_from_string(v58, v56, 0x80uLL))
  {
    v33 = &v53;
    v34 = ValueAtIndex;
    v35 = @"RemotePrefix";
    v36 = 24;
    goto LABEL_48;
  }

  v43 = "incorrect remote network (1)";
LABEL_94:
  *v44 = v43;
LABEL_97:
  SCLog();
  free(v25);
  if (v28)
  {
    free(v28);
  }

LABEL_79:
  v39 = 0xFFFFFFFFLL;
  if (v6 != -1)
  {
LABEL_80:
    pfkey_close(v6);
  }

  return v39;
}

uint64_t sub_AF8C(uint64_t a1, int a2, const __CFDictionary *a3, CFIndex a4, const char **a5, int a6)
{
  v36 = a6;
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (!Mutable)
  {
    *a5 = "cannot allocate CFString";
    return 0xFFFFFFFFLL;
  }

  v12 = Mutable;
  v35 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v47[0] = 0;
  v47[1] = 0;
  __buf = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v13 = socket(17, 3, 17);
  if (v13 < 0)
  {
    v32 = "cannot open a routing socket";
    goto LABEL_54;
  }

  if (!GetStrAddrFromDict(a3, @"LocalAddress", v51, 256))
  {
    v16 = "incorrect local address";
LABEL_59:
    *a5 = v16;
    CFRelease(v12);
    goto LABEL_60;
  }

  if (!GetStrAddrFromDict(a3, @"RemoteAddress", v50, 256))
  {
    v16 = "incorrect remote address";
    goto LABEL_59;
  }

  Value = CFDictionaryGetValue(a3, @"Policies");
  if (!isArray(Value))
  {
    v16 = "no policies found";
    goto LABEL_59;
  }

  Count = CFArrayGetCount(Value);
  v16 = "no policies found";
  if (!Count || Count < a4)
  {
    goto LABEL_59;
  }

  v17 = __CFADD__(a4, 1);
  v18 = a4 + 1;
  if (a4 == -1)
  {
    a4 = 0;
  }

  if (v17)
  {
    v18 = Count;
  }

  v34 = v18;
  if (a4 < v18)
  {
    v33 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, a4);
      if (!isDictionary(ValueAtIndex))
      {
        v32 = "incorrect policy found";
        goto LABEL_54;
      }

      v20 = CFDictionaryGetValue(ValueAtIndex, @"Mode");
      if (isString(v20) && !CFEqual(v20, @"Tunnel"))
      {
        if (!CFEqual(v20, @"Transport"))
        {
          v32 = "incorrect policy type found";
          goto LABEL_54;
        }
      }

      else
      {
        v21 = CFDictionaryGetValue(ValueAtIndex, @"Direction");
        if (isString(v21))
        {
          if (CFEqual(v21, @"In"))
          {
            goto LABEL_47;
          }

          if (!CFEqual(v21, @"Out") && !CFEqual(v21, @"InOut"))
          {
            v32 = "incorrect policy direction found";
            goto LABEL_54;
          }
        }

        v22 = CFDictionaryGetValue(ValueAtIndex, @"Level");
        if (isString(v22) && !CFEqual(v22, @"None"))
        {
          if (!CFEqual(v22, @"Require") && !CFEqual(v22, @"Discard") && !CFEqual(v22, @"Unique"))
          {
            v32 = "incorrect policy level";
LABEL_54:
            *a5 = v32;
            CFRelease(v12);
            if (v13 == -1)
            {
              return 0xFFFFFFFFLL;
            }

LABEL_60:
            close(v13);
            return 0xFFFFFFFFLL;
          }

          if (!GetStrNetFromDict(ValueAtIndex, @"LocalAddress", v49, 256) || (LODWORD(v48[0]) = 528, !inet_aton(v49, v48 + 1)))
          {
            v32 = "incorrect local network";
            goto LABEL_54;
          }

          if (!GetStrNetFromDict(ValueAtIndex, @"RemoteAddress", v49, 256))
          {
            v32 = "incorrect remote network0";
            goto LABEL_54;
          }

          LODWORD(v47[0]) = 528;
          if (!inet_aton(v49, v47 + 1))
          {
            v32 = "incorrect remote network1";
            goto LABEL_54;
          }

          if (a2 != 2)
          {
            goto LABEL_39;
          }

          v23 = *(a1 + 1048);
          if (!v23)
          {
            goto LABEL_35;
          }

          while (*(v23 + 2) != HIDWORD(v48[0]) || *(v23 + 4) != HIDWORD(v47[0]))
          {
            v23 = *v23;
            if (!v23)
            {
              goto LABEL_35;
            }
          }

          if (*(v23 + 8))
          {
LABEL_39:
            *&__buf = 327680;
            v40 = 0u;
            v45 = 0u;
            memset(v46, 0, sizeof(v46));
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            BYTE3(__buf) = a2;
            *(&__buf + 1) = 0x700000803;
            DWORD1(v40) = ++v33;
            WORD6(v44) = 528;
            LODWORD(v45) = HIDWORD(v47[0]);
            WORD6(v45) = 528;
            v46[0] = v36;
            LOWORD(v46[3]) = 528;
            GetIntFromDict(ValueAtIndex, @"RemotePrefix", &v35, 24);
            v24 = v35;
            if (v35)
            {
              v25 = 0;
              do
              {
                v25 = (v25 >> 1) | 0x80000000;
                --v24;
              }

              while (v24);
              v35 = 0;
            }

            else
            {
              v25 = 0;
            }

            v46[4] = bswap32(v25);
            LOWORD(__buf) = 140;
            if (write(v13, &__buf, 0x8CuLL) < 0)
            {
              v26 = __error();
              strerror(*v26);
              addr2ascii(2, v47 + 4, 4, v38);
              addr2ascii(2, &v36, 4, v37);
              syslog(3, "cannot write on routing socket: %s (address %s, gateway %s)\n");
            }

            else
            {
              update_service_route(a1, SHIDWORD(v48[0]), -1, SHIDWORD(v47[0]), bswap32(v46[4]), v36, 0, a2 == 1);
              sub_EDB0(HIDWORD(v47[0]), v46[4]);
              CFStringAppendFormat(v12, 0, @"%s, ", byte_19D60);
            }
          }

          else
          {
LABEL_35:
            addr2ascii(2, v47 + 4, 4, v38);
            addr2ascii(2, &v36, 4, v37);
            syslog(6, "ignoring uninstalled route: (address %s, gateway %s)\n");
          }
        }
      }

LABEL_47:
      ++a4;
    }

    while (a4 != v34);
  }

  Length = CFStringGetLength(v12);
  if (Length >= 1)
  {
    v28 = Length;
    v29 = malloc_type_calloc(1uLL, Length + 1, 0xB5627A4uLL);
    if (v29)
    {
      v30 = v29;
      CFStringGetCString(v12, v29, v28 + 1, 0x600u);
      addr2ascii(2, &v36, 4, v37);
      syslog(5, "installed routes: addresses %sgateway %s\n", v30, v37);
      free(v30);
    }
  }

  CFRelease(v12);
  close(v13);
  return 0;
}

uint64_t IPSecRemovePolicies(const __CFDictionary *a1, CFIndex a2, const char **a3)
{
  v42 = 0;
  v41 = 255;
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, sizeof(v45));
  v6 = pfkey_open();
  if ((v6 & 0x80000000) == 0)
  {
    if (GetStrAddrFromDict(a1, @"LocalAddress", v44, 256))
    {
      if (GetStrAddrFromDict(a1, @"RemoteAddress", v43, 256))
      {
        Value = CFDictionaryGetValue(a1, @"Policies");
        if (isArray(Value))
        {
          Count = CFArrayGetCount(Value);
          v9 = "no policies found";
          if (Count && Count >= a2)
          {
            v10 = __CFADD__(a2, 1);
            v11 = a2 + 1;
            if (a2 == -1)
            {
              a2 = 0;
            }

            if (v10)
            {
              v11 = Count;
            }

            v37 = v11;
            if (a2 < v11)
            {
              v12 = 0;
              v36 = Value;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(Value, a2);
                if (!isDictionary(ValueAtIndex))
                {
                  v32 = "incorrect policy found";
                  goto LABEL_52;
                }

                v14 = CFDictionaryGetValue(ValueAtIndex, @"Mode");
                if (isString(v14) && !CFEqual(v14, @"Tunnel"))
                {
                  if (!CFEqual(v14, @"Transport"))
                  {
                    v32 = "incorrect policy type found";
                    goto LABEL_52;
                  }

                  v15 = 1;
                }

                else
                {
                  v15 = 0;
                }

                v16 = CFDictionaryGetValue(ValueAtIndex, @"Direction");
                if (isString(v16))
                {
                  if (CFEqual(v16, @"In"))
                  {
                    v17 = 0;
                    v18 = 1;
                    goto LABEL_26;
                  }

                  if (CFEqual(v16, @"Out"))
                  {
                    v18 = 0;
                    v17 = 1;
                    goto LABEL_26;
                  }

                  if (!CFEqual(v16, @"InOut"))
                  {
                    v32 = "incorrect policy direction found";
                    goto LABEL_52;
                  }
                }

                v17 = 0;
                v18 = 0;
LABEL_26:
                strcpy(v48, "out");
                strcpy(__s, "in");
                v19 = strlen(__s);
                v20 = ipsec_set_policy(__s, v19);
                if (!v20)
                {
                  v32 = "cannot set policy in";
                  goto LABEL_52;
                }

                v21 = v20;
                v22 = strlen(v48);
                v23 = ipsec_set_policy(v48, v22);
                if (!v23)
                {
                  *a3 = "cannot set policy out";
                  v34 = v21;
LABEL_74:
                  free(v34);
                  goto LABEL_53;
                }

                v24 = v23;
                v38 = *v21;
                v39 = *v23;
                if (v15)
                {
                  v40 = 0;
                  if (!get_address_from_string(v44, v46, 0x80uLL))
                  {
                    v35 = "incorrect local address";
                    goto LABEL_73;
                  }

                  GetIntFromDict(ValueAtIndex, @"LocalPort", &v40, 0);
                  WORD1(v46[0]) = bswap32(v40) >> 16;
                  if (BYTE1(v46[0]) == 2)
                  {
                    v25 = 32 * (DWORD1(v46[0]) != 0);
                  }

                  else
                  {
                    v25 = 128;
                  }

                  HIDWORD(v42) = v25;
                  if (!get_address_from_string(v43, v45, 0x80uLL))
                  {
                    v35 = "incorrect remote address";
                    goto LABEL_73;
                  }

                  GetIntFromDict(ValueAtIndex, @"RemotePort", &v40, 0);
                  WORD1(v45[0]) = bswap32(v40) >> 16;
                  if (BYTE1(v45[0]) == 2)
                  {
                    v26 = 32 * (DWORD1(v45[0]) != 0);
                  }

                  else
                  {
                    v26 = 128;
                  }

                  LODWORD(v42) = v26;
                  v27 = &v41;
                  v28 = ValueAtIndex;
                  v29 = @"Protocol";
                  v30 = 0;
                }

                else
                {
                  if (!GetStrNetFromDict(ValueAtIndex, @"LocalAddress", v47, 32))
                  {
                    v35 = "incorrect local network (0)";
LABEL_73:
                    *a3 = v35;
                    free(v21);
                    v34 = v24;
                    goto LABEL_74;
                  }

                  if (!get_address_from_string(v47, v46, 0x80uLL))
                  {
                    v35 = "incorrect local network (1)";
                    goto LABEL_73;
                  }

                  GetIntFromDict(ValueAtIndex, @"LocalPrefix", &v42 + 1, 24);
                  if (!GetStrNetFromDict(ValueAtIndex, @"RemoteAddress", v47, 32))
                  {
                    v35 = "incorrect remote network (0)";
                    goto LABEL_73;
                  }

                  if (!get_address_from_string(v47, v45, 0x80uLL))
                  {
                    v35 = "incorrect remote network (1)";
                    goto LABEL_73;
                  }

                  v27 = &v42;
                  v28 = ValueAtIndex;
                  v29 = @"RemotePrefix";
                  v30 = 24;
                }

                GetIntFromDict(v28, v29, v27, v30);
                if ((v18 & 1) == 0)
                {
                  if ((pfkey_send_spddelete(v6, v46, HIDWORD(v42), v45, v42, v41, v24, 8 * v39, v12) & 0x80000000) != 0)
                  {
                    v35 = "cannot delete policy out";
                    goto LABEL_73;
                  }

                  ++v12;
                }

                if ((v17 & 1) == 0)
                {
                  if ((pfkey_send_spddelete(v6, v45, v42, v46, HIDWORD(v42), v41, v21, 8 * v38, v12) & 0x80000000) != 0)
                  {
                    v35 = "cannot delete policy in";
                    goto LABEL_73;
                  }

                  ++v12;
                }

                free(v21);
                free(v24);
                v31 = 0;
                ++a2;
                Value = v36;
                if (v37 == a2)
                {
                  goto LABEL_59;
                }
              }
            }

            v31 = 0;
            goto LABEL_59;
          }
        }

        else
        {
          v9 = "no policies found";
        }
      }

      else
      {
        v9 = "incorrect remote address";
      }
    }

    else
    {
      v9 = "incorrect local address";
    }

    *a3 = v9;
    v31 = 0xFFFFFFFFLL;
LABEL_59:
    pfkey_close(v6);
    return v31;
  }

  v32 = "cannot open a pfkey socket";
LABEL_52:
  *a3 = v32;
LABEL_53:
  v31 = 0xFFFFFFFFLL;
  if (v6 != -1)
  {
    goto LABEL_59;
  }

  return v31;
}

uint64_t IPSecRemoveSecurityAssociations(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = pfkey_open();
  if (v4 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = pfkey_send_delete_all(v4, 3, 0, a1, a2);
  if ((v6 & 0x80000000) == 0)
  {
    v6 = pfkey_send_delete_all(v5, 3, 0, a2, a1);
  }

  v7 = v6;
  pfkey_close(v5);
  return v7;
}

BOOL IPSecIsAggressiveMode(const void *a1, int a2, int a3)
{
  result = 0;
  if (a2 && a3)
  {
    return !isString(a1) || CFEqual(a1, @"Certificate") == 0;
  }

  return result;
}

uint64_t sockaddr_to_string(unsigned __int8 *a1, void *a2, unint64_t a3)
{
  bzero(a2, a3);
  v6 = a1[1];
  switch(v6)
  {
    case 30:
      result = inet_ntop(30, a1 + 8, a2, a3);
      if (*(a1 + 6))
      {
        result = strlen(a2);
        if (a3 >= ((result << 32) + 0x1100000000) >> 32)
        {
          v12 = result << 32;
          *(a2 + result) = 37;
          v13 = *(a1 + 6);

          return if_indextoname(v13, a2 + ((v12 + 0x100000000) >> 32));
        }
      }

      break;
    case 18:
      v10 = *a1;
      v9 = a1 + 8;
      v8 = v10;
      if (v10 >= a3)
      {
        v11 = a3 - 1;
      }

      else
      {
        v11 = v8;
      }

      return memmove(a2, v9, v11);
    case 2:

      return inet_ntop(2, a1 + 4, a2, a3);
    default:
      return snprintf(a2, a3, "unexpected address family %d", a1[1]);
  }

  return result;
}

uint64_t get_src_address(_BYTE *a1, unsigned __int8 *a2, const char *a3, char *a4)
{
  v8 = getpid();
  result = socket(17, 3, 17);
  if (result != -1)
  {
    v10 = result;
    bzero(v43, 0x258uLL);
    __buf = 285540444;
    v44 = 0x1100000807;
    v45 = v8;
    v46 = 1;
    if (a3)
    {
      LODWORD(a3) = if_nametoindex(a3);
      LODWORD(v44) = 16779271;
      v43[0] = a3;
    }

    v11 = v47;
    v12 = *a2;
    __memmove_chk();
    v13 = __buf + v47[0];
    *&v47[v47[0]] = 4628;
    LOWORD(__buf) = v13 + 20;
    while (write(v10, &__buf, __buf) == -1)
    {
      if (*__error() != 4)
      {
        goto LABEL_7;
      }
    }

    while (read(v10, &__buf, 0x25CuLL) == -1)
    {
      if (*__error() != 4)
      {
        goto LABEL_7;
      }
    }

    v14 = 0;
    *__src = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = HIDWORD(v44);
    do
    {
      if (((1 << v14) & v15) != 0)
      {
        *(&v38 + v14) = v11;
        v16 = *v11;
        if ((v16 & 3) != 0)
        {
          v17 = (v16 | 3) + 1;
        }

        else
        {
          v17 = *v11;
        }

        *v11;
        if (*v11)
        {
          v18 = v17;
        }

        else
        {
          v18 = 4;
        }

        v11 += v18;
        v15 ^= 1 << v14;
      }

      else
      {
        *(&v38 + v14) = 0;
      }

      ++v14;
    }

    while (v14 != 8);
    if (!a1 || (v19 = __src[1]) == 0 || (v20 = __src[0], a4) && !__src[0])
    {
LABEL_7:
      close(v10);
      return 0xFFFFFFFFLL;
    }

    if (*(__src[1] + 1) == 30 && *(__src[1] + 8) == 254 && (*(__src[1] + 9) & 0xC0) == 0x80)
    {
      v21 = *(__src[1] + 5);
      if (*(__src[1] + 5))
      {
        *(__src[1] + 5) = 0;
        if (!v19[6])
        {
          v19[6] = __rev16(v21);
        }
      }
    }

    memmove(a1, v19, *v19);
    if (a4)
    {
      strncpy(a4, v20 + 8, 0x10uLL);
    }

    close(v10);
    if (a1[1] != 30)
    {
      return 0;
    }

    LODWORD(v37) = 128;
    HIDWORD(v37) = a3;
    v22 = malloc_type_calloc(1uLL, 0x80uLL, 0x2FFDBC06uLL);
    if (v22)
    {
      v23 = v22;
      v24 = socket(a2[1], 2, 0);
      if (v24 < 0)
      {
        v31 = __error();
        v32 = strerror(*v31);
        syslog(3, "socket (%s)\n", v32);
      }

      else
      {
        v25 = v24;
        if (fcntl(v24, 4, 4, v37, v38, v39) == -1)
        {
          syslog(3, "failed to put localaddr socket in non-blocking mode\n");
        }

        if (a3)
        {
          v26 = a2[1] == 2 ? 0 : 41;
          v27 = a2[1] == 2 ? 25 : 125;
          if (setsockopt(v25, v26, v27, &v37 + 4, 4u))
          {
            v28 = __error();
            v29 = strerror(*v28);
            syslog(3, "failed to set IP family on localaddr socket: %s\n", v29);
          }
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0;
        v49 = 0u;
        v30 = *a2;
        __memcpy_chk();
        if (v48.sa_family == 30 || v48.sa_family == 2)
        {
          *v48.sa_data = -14161;
        }

        if (connect(v25, &v48, v48.sa_len) < 0)
        {
          v33 = __error();
          v34 = strerror(*v33);
          syslog(3, "connect (%s)\n", v34);
          close(v25);
        }

        else
        {
          if (getsockname(v25, v23, &v37) < 0)
          {
            v35 = __error();
            v36 = strerror(*v35);
            syslog(3, "getsockname (%s)\n", v36);
            close(v25);
            return 0;
          }

          close(v25);
          memcpy(a1, v23, v23->sa_len);
        }
      }

      free(v23);
    }

    else
    {
      syslog(3, "failed to get address buffer.\n");
    }

    return 0;
  }

  return result;
}

uint64_t get_if_mtu()
{
  v4 = 0u;
  v5 = 0u;
  v0 = 1500;
  LODWORD(v5) = 1500;
  v1 = socket(2, 2, 0);
  if ((v1 & 0x80000000) == 0)
  {
    v2 = v1;
    __strlcpy_chk();
    ioctl(v2, 0xC0206933uLL, &v4);
    close(v2);
    return v5;
  }

  return v0;
}

uint64_t get_if_media()
{
  memset(v3, 0, 44);
  v0 = socket(2, 2, 0);
  if (v0 < 0)
  {
    return 0;
  }

  v1 = v0;
  __strlcpy_chk();
  ioctl(v1, 0xC02C6938uLL, v3);
  close(v1);
  return LODWORD(v3[1]);
}

uint64_t get_if_baudrate(const char *a1)
{
  size = 0;
  v1 = if_nametoindex(a1);
  if (!v1)
  {
    return 0;
  }

  *v6 = xmmword_FF40;
  v7 = 3;
  v8 = v1;
  if (sysctl(v6, 6u, 0, &size, 0, 0) < 0)
  {
    return 0;
  }

  v2 = malloc_type_malloc(size, 0x1135C470uLL);
  if (sysctl(v6, 6u, v2, &size, 0, 0) < 0)
  {
    v3 = 0;
    if (!v2)
    {
      return v3;
    }
  }

  else if (v2[3] == 14)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  free(v2);
  return v3;
}

uint64_t IPSecSetSecurityAssociationsPreference(void *a1, unsigned int a2)
{
  v4 = a2;
  v3 = 4;
  if (a2 <= 1)
  {
    return sysctlbyname("net.key.prefered_oldsa", a1, &v3, &v4, 4uLL);
  }

  else
  {
    return 0;
  }
}

__CFDictionary *IPSecCreateL2TPDefaultConfiguration(const sockaddr *a1, const sockaddr *a2, const char *a3, const void *a4, int a5, int a6, int a7, const __CFString *a8, int a9)
{
  v68 = 1;
  v69 = 0;
  valuePtr = 0;
  v67 = 17;
  sa_family = a2->sa_family;
  if (a1->sa_family != sa_family)
  {
    syslog(3, "address families don't match (%u != %u)\n", a1->sa_family, sa_family);
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = 0;
  if (a3)
  {
    v19 = CFStringCreateWithCString(0, a3, 0x600u);
  }

  v60 = v19;
  if (a2->sa_family == 30)
  {
    getnameinfo(a1, a1->sa_len, cStr, 0x39u, 0, 0, 10);
    value = CFStringCreateWithCString(0, cStr, 0x600u);
    getnameinfo(a2, a2->sa_len, cStr, 0x39u, 0, 0, 10);
    v62 = CFStringCreateWithCString(0, cStr, 0x600u);
    valuePtr = bswap32(*a1->sa_data) >> 16;
    v58 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    valuePtr = bswap32(*a2->sa_data) >> 16;
    v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    valuePtr = 128;
    v56 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v55 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  }

  else
  {
    v22 = addr2ascii(2, &a1->sa_data[2], 4, 0);
    value = CFStringCreateWithCString(0, v22, 0x600u);
    v23 = addr2ascii(2, &a2->sa_data[2], 4, 0);
    v62 = CFStringCreateWithCString(0, v23, 0x600u);
    valuePtr = bswap32(*a1->sa_data) >> 16;
    v58 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    valuePtr = bswap32(*a2->sa_data) >> 16;
    v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v55 = 0;
    v56 = 0;
  }

  v54 = CFNumberCreate(0, kCFNumberIntType, &v69);
  v61 = CFNumberCreate(0, kCFNumberIntType, &v67);
  if (a6)
  {
    v53 = 0;
    v24 = @"Obey";
  }

  else
  {
    if (a7)
    {
      v25 = &v68;
    }

    else
    {
      v25 = &v69;
    }

    v53 = CFNumberCreate(0, kCFNumberIntType, v25);
    v24 = @"Claim";
  }

  CFDictionarySetValue(Mutable, @"AuthenticationMethod", a4);
  CFDictionarySetValue(Mutable, @"LocalAddress", value);
  CFDictionarySetValue(Mutable, @"RemoteAddress", v62);
  CFDictionarySetValue(Mutable, @"ProposalsBehavior", v24);
  if (a6 && CFEqual(a4, @"Certificate"))
  {
    if (a8)
    {
      v26 = a8;
    }

    else
    {
      v26 = @"GenerateFromRemoteAddress";
    }

    if (!a8 && a3)
    {
      CFDictionarySetValue(Mutable, @"RemoteIdentifier", v60);
      v26 = @"UseRemoteIdentifier";
    }

    CFDictionarySetValue(Mutable, @"IdentifierVerification", v26);
    IsAggressiveMode = IPSecIsAggressiveMode(a4, a5, a6);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"IdentifierVerification", @"None");
    IsAggressiveMode = IPSecIsAggressiveMode(a4, a5, a6);
    if (!a6)
    {
      CFDictionarySetValue(Mutable, @"NattMultipleUsersEnabled", v53);
    }
  }

  v57 = v20;
  v59 = a6;
  theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  valuePtr = 3600;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (a9)
  {
    v28 = 0;
  }

  else
  {
    valuePtr = 14;
    v37 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v39, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v39, @"HashAlgorithm", @"SHA256");
    CFDictionarySetValue(v39, @"DHGroup", v37);
    CFDictionarySetValue(v39, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 0, v39);
    CFRelease(v39);
    v40 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v40, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v40, @"HashAlgorithm", @"SHA1");
    CFDictionarySetValue(v40, @"DHGroup", v37);
    CFDictionarySetValue(v40, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 1, v40);
    CFRelease(v40);
    v41 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v41, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v41, @"HashAlgorithm", @"MD5");
    CFDictionarySetValue(v41, @"DHGroup", v37);
    CFDictionarySetValue(v41, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 2, v41);
    CFRelease(v41);
    v42 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v42, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v42, @"HashAlgorithm", @"SHA512");
    CFDictionarySetValue(v42, @"DHGroup", v37);
    CFDictionarySetValue(v42, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 3, v42);
    CFRelease(v42);
    if (IsAggressiveMode)
    {
      goto LABEL_29;
    }

    CFRelease(v37);
    valuePtr = 5;
    v49 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v50 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v50, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v50, @"HashAlgorithm", @"SHA256");
    CFDictionarySetValue(v50, @"DHGroup", v49);
    CFDictionarySetValue(v50, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 4, v50);
    CFRelease(v50);
    v51 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v51, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v51, @"HashAlgorithm", @"SHA1");
    CFDictionarySetValue(v51, @"DHGroup", v49);
    CFDictionarySetValue(v51, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 5, v51);
    CFRelease(v51);
    v52 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v52, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v52, @"HashAlgorithm", @"MD5");
    CFDictionarySetValue(v52, @"DHGroup", v49);
    CFDictionarySetValue(v52, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 6, v52);
    CFRelease(v52);
    CFRelease(v49);
    v28 = 7;
  }

  valuePtr = 2;
  v29 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v30 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v30, @"EncryptionAlgorithm", @"AES256");
  CFDictionarySetValue(v30, @"HashAlgorithm", @"SHA256");
  CFDictionarySetValue(v30, @"DHGroup", v29);
  CFDictionarySetValue(v30, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v28, v30);
  CFRelease(v30);
  v31 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v31, @"EncryptionAlgorithm", @"AES256");
  CFDictionarySetValue(v31, @"HashAlgorithm", @"SHA1");
  CFDictionarySetValue(v31, @"DHGroup", v29);
  CFDictionarySetValue(v31, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v28 + 1, v31);
  CFRelease(v31);
  v32 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v32, @"EncryptionAlgorithm", @"AES256");
  CFDictionarySetValue(v32, @"HashAlgorithm", @"MD5");
  CFDictionarySetValue(v32, @"DHGroup", v29);
  CFDictionarySetValue(v32, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v28 + 2, v32);
  CFRelease(v32);
  v33 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v33, @"EncryptionAlgorithm", @"AES");
  CFDictionarySetValue(v33, @"HashAlgorithm", @"SHA1");
  CFDictionarySetValue(v33, @"DHGroup", v29);
  CFDictionarySetValue(v33, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v28 + 3, v33);
  CFRelease(v33);
  v34 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v34, @"EncryptionAlgorithm", @"AES");
  CFDictionarySetValue(v34, @"HashAlgorithm", @"MD5");
  CFDictionarySetValue(v34, @"DHGroup", v29);
  CFDictionarySetValue(v34, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v28 + 4, v34);
  CFRelease(v34);
  v35 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v35, @"EncryptionAlgorithm", @"3DES");
  CFDictionarySetValue(v35, @"HashAlgorithm", @"SHA1");
  CFDictionarySetValue(v35, @"DHGroup", v29);
  CFDictionarySetValue(v35, @"Lifetime", cf);
  v36 = v28 + 6;
  CFArraySetValueAtIndex(theArray, v28 + 5, v35);
  CFRelease(v35);
  v37 = v29;
  v38 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v38, @"EncryptionAlgorithm", @"3DES");
  CFDictionarySetValue(v38, @"HashAlgorithm", @"MD5");
  CFDictionarySetValue(v38, @"DHGroup", v29);
  CFDictionarySetValue(v38, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v36, v38);
  CFRelease(v38);
LABEL_29:
  CFRelease(v37);
  CFRelease(cf);
  v21 = Mutable;
  CFDictionarySetValue(Mutable, @"Proposals", theArray);
  CFRelease(theArray);
  v43 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v43, @"LocalPort", v58);
  CFDictionarySetValue(v43, @"RemotePort", v57);
  if (v56)
  {
    CFDictionarySetValue(v43, @"LocalPrefix", v56);
  }

  if (v55)
  {
    CFDictionarySetValue(v43, @"RemotePrefix", v55);
  }

  CFDictionarySetValue(v43, @"Protocol", v61);
  CFDictionarySetValue(v43, @"Mode", @"Transport");
  CFDictionarySetValue(v43, @"Level", @"Require");
  v44 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFArraySetValueAtIndex(v44, 0, @"AES256");
  CFArraySetValueAtIndex(v44, 1, @"AES");
  CFArraySetValueAtIndex(v44, 2, @"3DES");
  CFDictionarySetValue(v43, @"EncryptionAlgorithm", v44);
  CFRelease(v44);
  v45 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFArraySetValueAtIndex(v45, 0, @"SHA256");
  CFArraySetValueAtIndex(v45, 1, @"SHA1");
  CFArraySetValueAtIndex(v45, 2, @"MD5");
  CFDictionarySetValue(v43, @"HashAlgorithm", v45);
  CFRelease(v45);
  if (v59)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v43);
    CFDictionarySetValue(MutableCopy, @"RemotePort", v54);
    CFDictionarySetValue(MutableCopy, @"Direction", @"In");
  }

  else
  {
    MutableCopy = 0;
  }

  v47 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFArraySetValueAtIndex(v47, 0, v43);
  if (v59)
  {
    CFArraySetValueAtIndex(v47, 1, MutableCopy);
    CFRelease(v43);
  }

  else
  {
    MutableCopy = v43;
  }

  CFRelease(MutableCopy);
  CFDictionarySetValue(Mutable, @"Policies", v47);
  CFRelease(v47);
  CFRelease(value);
  CFRelease(v62);
  CFRelease(v58);
  CFRelease(v57);
  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  CFRelease(v54);
  CFRelease(v61);
  if (!v59)
  {
    CFRelease(v53);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  return v21;
}

__CFDictionary *IPSecCreateCiscoDefaultConfiguration(const sockaddr *a1, uint64_t a2, const void *a3, const void *a4, int a5, int a6, int a7, const __CFString *a8, int a9)
{
  v64 = 0;
  v62 = -1;
  v63 = 1;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a1->sa_family == 30)
  {
    getnameinfo(a1, a1->sa_len, v65, 0x39u, 0, 0, 10);
    syslog(3, "IPv6 IPSec Address: %s\n", v65);
    v18 = v65;
    v19 = 134217984;
  }

  else
  {
    v18 = addr2ascii(2, &a1->sa_data[2], 4, 0);
    v19 = 1536;
  }

  value = CFStringCreateWithCString(0, v18, v19);
  v20 = addr2ascii(2, (a2 + 4), 4, 0);
  v54 = CFStringCreateWithCString(0, v20, 0x600u);
  valuePtr = bswap32(*a1->sa_data) >> 16;
  v51 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = bswap32(*(a2 + 2)) >> 16;
  v50 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v49 = CFNumberCreate(0, kCFNumberIntType, &v64);
  v48 = CFNumberCreate(0, kCFNumberIntType, &v62);
  if (a6)
  {
    v46 = 0;
    v21 = @"Obey";
  }

  else
  {
    if (a7)
    {
      v22 = &v63;
    }

    else
    {
      v22 = &v64;
    }

    v46 = CFNumberCreate(0, kCFNumberIntType, v22);
    v21 = @"Claim";
  }

  v47 = CFNumberCreate(0, kCFNumberIntType, &v64);
  v23 = CFNumberCreate(0, kCFNumberIntType, &v63);
  CFDictionarySetValue(Mutable, @"ModeConfigEnabled", v23);
  CFDictionarySetValue(Mutable, @"XAuthEnabled", v23);
  CFDictionarySetValue(Mutable, @"LocalAddress", value);
  CFDictionarySetValue(Mutable, @"RemoteAddress", v54);
  CFDictionarySetValue(Mutable, @"ProposalsBehavior", v21);
  if (a6 && CFEqual(a4, @"Certificate"))
  {
    if (!a8)
    {
      if (a3)
      {
        CFDictionarySetValue(Mutable, @"RemoteIdentifier", a3);
        a8 = @"UseRemoteIdentifier";
      }

      else
      {
        a8 = @"GenerateFromRemoteAddress";
      }
    }

    CFDictionarySetValue(Mutable, @"IdentifierVerification", a8);
    IsAggressiveMode = IPSecIsAggressiveMode(a4, a5, a6);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"IdentifierVerification", @"None");
    IsAggressiveMode = IPSecIsAggressiveMode(a4, a5, a6);
    if (!a6)
    {
      CFDictionarySetValue(Mutable, @"NattMultipleUsersEnabled", v46);
    }
  }

  CFDictionarySetValue(Mutable, @"DeadPeerDetectionEnabled", v23);
  CFDictionarySetValue(Mutable, @"BlackHoleDetectionEnabled", v23);
  valuePtr = 20;
  v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v25)
  {
    v26 = v25;
    CFDictionarySetValue(Mutable, @"DeadPeerDetectionDelay", v25);
    CFRelease(v26);
  }

  v27 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  valuePtr = 3600;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *v65 = xmmword_FF80;
  v28 = 14;
  v53 = a6;
  theDict = Mutable;
  if (IsAggressiveMode)
  {
    if (a9)
    {
      v28 = 2;
    }

    else
    {
      v28 = 14;
    }

    *v65 = v28;
    *&v65[4] = 0;
  }

  v60 = 0;
  valuePtr = v28;
  v29 = 4;
  theArray = v27;
  do
  {
    v58 = v29;
    v30 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (valuePtr >= 5)
    {
      v31 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v31, @"EncryptionAlgorithm", @"AES256");
      CFDictionarySetValue(v31, @"HashAlgorithm", @"SHA256");
      CFDictionarySetValue(v31, @"DHGroup", v30);
      CFDictionarySetValue(v31, @"Lifetime", cf);
      CFArraySetValueAtIndex(v27, v60, v31);
      CFRelease(v31);
      ++v60;
    }

    v32 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v32, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v32, @"HashAlgorithm", @"SHA1");
    CFDictionarySetValue(v32, @"DHGroup", v30);
    CFDictionarySetValue(v32, @"Lifetime", cf);
    v27 = theArray;
    CFArraySetValueAtIndex(theArray, v60, v32);
    CFRelease(v32);
    v33 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v33, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v33, @"HashAlgorithm", @"MD5");
    CFDictionarySetValue(v33, @"DHGroup", v30);
    CFDictionarySetValue(v33, @"Lifetime", cf);
    v34 = v60 + 2;
    CFArraySetValueAtIndex(theArray, v60 + 1, v33);
    CFRelease(v33);
    v35 = valuePtr;
    if (valuePtr < 14)
    {
      v60 += 2;
    }

    else
    {
      v36 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v36, @"EncryptionAlgorithm", @"AES256");
      CFDictionarySetValue(v36, @"HashAlgorithm", @"SHA512");
      CFDictionarySetValue(v36, @"DHGroup", v30);
      CFDictionarySetValue(v36, @"Lifetime", cf);
      v60 += 3;
      CFArraySetValueAtIndex(theArray, v34, v36);
      CFRelease(v36);
      v35 = valuePtr;
    }

    if (v35 > 2)
    {
      v44 = v58;
      v38 = v30;
    }

    else
    {
      v37 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v37, @"EncryptionAlgorithm", @"AES");
      CFDictionarySetValue(v37, @"HashAlgorithm", @"SHA1");
      v38 = v30;
      CFDictionarySetValue(v37, @"DHGroup", v30);
      CFDictionarySetValue(v37, @"Lifetime", cf);
      CFArraySetValueAtIndex(theArray, v60, v37);
      CFRelease(v37);
      v39 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v39, @"EncryptionAlgorithm", @"AES");
      CFDictionarySetValue(v39, @"HashAlgorithm", @"MD5");
      CFDictionarySetValue(v39, @"DHGroup", v30);
      CFDictionarySetValue(v39, @"Lifetime", cf);
      CFArraySetValueAtIndex(theArray, v60 + 1, v39);
      CFRelease(v39);
      v40 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v40, @"EncryptionAlgorithm", @"3DES");
      CFDictionarySetValue(v40, @"HashAlgorithm", @"SHA1");
      CFDictionarySetValue(v40, @"DHGroup", v30);
      CFDictionarySetValue(v40, @"Lifetime", cf);
      CFArraySetValueAtIndex(theArray, v60 + 2, v40);
      CFRelease(v40);
      v41 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v41, @"EncryptionAlgorithm", @"3DES");
      CFDictionarySetValue(v41, @"HashAlgorithm", @"MD5");
      CFDictionarySetValue(v41, @"DHGroup", v30);
      CFDictionarySetValue(v41, @"Lifetime", cf);
      CFArraySetValueAtIndex(theArray, v60 + 3, v41);
      CFRelease(v41);
      v42 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v42, @"EncryptionAlgorithm", @"DES");
      CFDictionarySetValue(v42, @"HashAlgorithm", @"SHA1");
      CFDictionarySetValue(v42, @"DHGroup", v30);
      CFDictionarySetValue(v42, @"Lifetime", cf);
      v57 = v60 + 5;
      CFArraySetValueAtIndex(theArray, v60 + 4, v42);
      CFRelease(v42);
      v43 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v43, @"EncryptionAlgorithm", @"DES");
      CFDictionarySetValue(v43, @"HashAlgorithm", @"MD5");
      CFDictionarySetValue(v43, @"DHGroup", v30);
      CFDictionarySetValue(v43, @"Lifetime", cf);
      v60 += 6;
      CFArraySetValueAtIndex(theArray, v57, v43);
      CFRelease(v43);
      v44 = v58;
    }

    CFRelease(v38);
    valuePtr = *&v65[v44];
    v29 = v44 + 4;
  }

  while (valuePtr);
  CFRelease(cf);
  CFDictionarySetValue(theDict, @"Proposals", theArray);
  CFRelease(theArray);
  CFRelease(value);
  CFRelease(v54);
  CFRelease(v51);
  CFRelease(v50);
  CFRelease(v49);
  CFRelease(v48);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (!v53)
  {
    CFRelease(v46);
  }

  return theDict;
}

uint64_t IPSecSelfRepair()
{
  v0 = racoon_pid();
  if (v0)
  {
    kill(v0, 15);
  }

  return 0;
}

uint64_t IPSecFlushAll()
{
  v0 = pfkey_open();
  if ((v0 & 0x80000000) == 0)
  {
    v1 = v0;
    pfkey_send_spdflush(v0);
    pfkey_send_flush(v1, 0);
    pfkey_close(v1);
  }

  return 0;
}

void IPSecLogVPNInterfaceAddressEvent(uint64_t a1, uint64_t a2, int a3, char *a4, void *a5)
{
  if (!a2)
  {
    addr2ascii(2, a5, 4, v31);
    syslog(5, "%s: %d secs TIMEOUT waiting for interface to be reconfigured. previous setting (name: %s, address: %s).");
    return;
  }

  v27 = bswap32(*(a2 + 64));
  v8 = *(a2 + 20);
  v9 = addr2ascii(2, a5, 4, v31);
  v10 = *(a2 + 28);
  v11 = sub_E27C(*(a2 + 24));
  v12 = addr2ascii(2, (a2 + 48), 4, v30);
  v13 = v12;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v21 = addr2ascii(2, &v27, 4, v29);
      v22 = addr2ascii(2, (a2 + 72), 4, v28);
      v19 = v11;
      v20 = v13;
      v17 = (a2 + 32);
      v18 = v10;
      v16 = v9;
      v14 = "%s: Address deleted. previous interface setting (name: %s, address: %s), deleted interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
      goto LABEL_13;
    }

    if (v8 == 7)
    {
      v25 = *(a2 + 54);
      v26 = *(a2 + 53);
      v23 = *(a2 + 56);
      v24 = *(a2 + 55);
      v21 = *(a2 + 58);
      v22 = *(a2 + 57);
      v19 = v11;
      v20 = v12;
      v17 = (a2 + 32);
      v18 = v10;
      v16 = v9;
      v14 = "%s: ARP collided. previous interface setting (name: %s, address: %s), conflicting interface setting (name: %s%d, family: %s, address: %s, mac: %x:%x:%x:%x:%x:%x).";
      goto LABEL_13;
    }
  }

  else
  {
    if (v8 == 1)
    {
      v21 = addr2ascii(2, &v27, 4, v29);
      v22 = addr2ascii(2, (a2 + 72), 4, v28);
      v19 = v11;
      v20 = v13;
      v17 = (a2 + 32);
      v18 = v10;
      v16 = v9;
      v14 = "%s: Address added. previous interface setting (name: %s, address: %s), current interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
      goto LABEL_13;
    }

    if (v8 == 2)
    {
      v21 = addr2ascii(2, &v27, 4, v29);
      v22 = addr2ascii(2, (a2 + 72), 4, v28);
      v19 = v11;
      v20 = v13;
      v17 = (a2 + 32);
      v18 = v10;
      v16 = v9;
      v14 = "%s: Address changed. previous interface setting (name: %s, address: %s), current interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
LABEL_13:
      v15 = a4;
      goto LABEL_14;
    }
  }

  v22 = addr2ascii(2, &v27, 4, v29);
  v23 = addr2ascii(2, (a2 + 72), 4, v28);
  v20 = v11;
  v21 = v13;
  v18 = (a2 + 32);
  v19 = v10;
  v16 = a4;
  v17 = v9;
  v14 = "%s: Unknown Address event (%d). previous interface setting (name: %s, address: %s), other interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
  v15 = v8;
LABEL_14:
  syslog(5, v14, a1, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
}

char *sub_E27C(int a1)
{
  if ((a1 - 1) < 0xE)
  {
    return (&off_14708)[a1 - 1];
  }

  v1 = byte_19E60;
  snprintf(byte_19E60, 0x10uLL, "%d", a1);
  return v1;
}

void update_service_route(uint64_t a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8)
{
  v16 = *(a1 + 1048);
  if (v16)
  {
    while (v16[2] != a2 || v16[3] != a3 || v16[4] != a4 || v16[5] != a5)
    {
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_9;
  }

LABEL_7:
  v16 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200400D048FD2uLL);
  if (v16)
  {
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a4;
    v16[5] = a5;
    *v16 = *(a1 + 1048);
    *(a1 + 1048) = v16;
LABEL_9:
    v16[6] = a6;
    *(v16 + 14) = a7;
    v16[8] = a8;
    return;
  }

  syslog(3, "%s: no memory\n", "update_service_route");
}

void *free_service_routes(uint64_t a1)
{
  result = *(a1 + 1048);
  if (result)
  {
    do
    {
      v3 = *result;
      free(result);
      result = v3;
    }

    while (v3);
  }

  *(a1 + 1048) = 0;
  return result;
}

uint64_t find_injection(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  if (!CFStringFind(a1, @"", 0).length)
  {
    v6 = CFStringFind(a1, @";", 0);
    if (!v6.length || (v10.location = v6.location + v6.length, v10.length = a3 - (v6.location + v6.length), !CFStringFindWithOptions(a1, a2, v10, 0, 0)))
    {
      v7 = CFStringFind(a1, a2, 0);
      if (!v7.length)
      {
        return 0;
      }

      v11.location = v7.location + v7.length;
      v11.length = a3 - (v7.location + v7.length);
      if (!CFStringFindWithOptions(a1, @";", v11, 0, 0))
      {
        return 0;
      }
    }
  }

  v8 = 1;
  SCLog();
  return v8;
}

uint64_t racoon_validate_cfg_str(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v2 = v1;
  if (!v1 || (Length = CFStringGetLength(v1), find_injection(v2, @"include ", Length)) || find_injection(v2, @"privsep ", Length) || find_injection(v2, @"path ", Length) || find_injection(v2, @"timer ", Length) || find_injection(v2, @"listen ", Length) || find_injection(v2, @"remote ", Length) || find_injection(v2, @"sainfo ", Length) || find_injection(v2, @"banner ", Length) || find_injection(v2, @"my_identifier ", Length) || find_injection(v2, @"peers_identifier ", Length))
  {
    CFRelease(v2);
    return 0;
  }

  else
  {
    CFRelease(v2);
    return 1;
  }
}

uint64_t sub_E658(FILE *a1, const __CFDictionary *a2, const char **a3)
{
  __strlcpy_chk();
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"EncryptionAlgorithm");
    if (isArray(Value))
    {
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
          if (isString(ValueAtIndex))
          {
            if (v8)
            {
              __strlcat_chk();
            }

            if (!CFEqual(ValueAtIndex, @"DES") && !CFEqual(ValueAtIndex, @"3DES") && !CFEqual(ValueAtIndex, @"AES") && !CFEqual(ValueAtIndex, @"AES256"))
            {
              v26 = "incorrect encryption algorithm";
LABEL_56:
              *a3 = v26;
              return 0xFFFFFFFFLL;
            }

            __strlcat_chk();
            v8 = 1;
          }
        }

        if (v8)
        {
          goto LABEL_16;
        }
      }
    }
  }

  __strlcat_chk();
LABEL_16:
  __strlcat_chk();
  fprintf(a1, "%s%s", off_189C8, __str);
  __strlcpy_chk();
  if (a2)
  {
    v11 = CFDictionaryGetValue(a2, @"HashAlgorithm");
    if (isArray(v11))
    {
      v12 = CFArrayGetCount(v11);
      if (v12 >= 1)
      {
        v13 = v12;
        v14 = 0;
        for (j = 0; j != v13; ++j)
        {
          v16 = CFArrayGetValueAtIndex(v11, j);
          if (isString(v16))
          {
            if (v14)
            {
              __strlcat_chk();
            }

            if (!CFEqual(v16, @"SHA512") && !CFEqual(v16, @"SHA256") && !CFEqual(v16, @"SHA1") && !CFEqual(v16, @"MD5"))
            {
              v26 = "incorrect authentication algorithm";
              goto LABEL_56;
            }

            __strlcat_chk();
            v14 = 1;
          }
        }

        if (v14)
        {
          goto LABEL_31;
        }
      }
    }
  }

  __strlcat_chk();
LABEL_31:
  __strlcat_chk();
  fprintf(a1, "%s%s", off_189C8, __str);
  __strlcpy_chk();
  if (a2)
  {
    v17 = CFDictionaryGetValue(a2, @"CompressionAlgorithm");
    if (isArray(v17))
    {
      v18 = CFArrayGetCount(v17);
      v19 = v18 - 1;
      if (v18 >= 1)
      {
        v20 = v18;
        v21 = 0;
        v22 = 1;
        do
        {
          while (1)
          {
            v23 = CFArrayGetValueAtIndex(v17, v21);
            if (!isString(v23))
            {
              break;
            }

            if ((v22 & 1) == 0)
            {
              __strlcat_chk();
            }

            if (!CFEqual(v23, @"Deflate"))
            {
              v26 = "incorrect compression algorithm";
              goto LABEL_56;
            }

            __strlcat_chk();
            v22 = 0;
            if (v19 == v21++)
            {
              goto LABEL_46;
            }
          }

          ++v21;
        }

        while (v20 != v21);
        if ((v22 & 1) == 0)
        {
          goto LABEL_46;
        }
      }
    }
  }

  __strlcat_chk();
LABEL_46:
  __strlcat_chk();
  fprintf(a1, "%s%s", off_189C8, __str);
  v28 = 3600;
  if (a2)
  {
    GetIntFromDict(a2, @"Lifetime", &v28, 3600);
    snprintf(__str, 0x400uLL, "lifetime time %d sec;\n", v28);
    fprintf(a1, "%s%s", off_189C8, __str);
    v28 = 0;
    if (GetIntFromDict(a2, @"PFSGroup", &v28, 0))
    {
      if (v28)
      {
        snprintf(__str, 0x400uLL, "pfs_group %d;\n", v28);
        fprintf(a1, "%s%s", off_189C8, __str);
      }
    }
  }

  else
  {
    snprintf(__str, 0x400uLL, "lifetime time %d sec;\n", 3600);
    fprintf(a1, "%s%s", off_189C8, __str);
  }

  return 0;
}

uint64_t sub_EC0C(const __CFData *a1, uint64_t a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length / 3 + Length + Length % 3 > 1023)
  {
    return 0;
  }

  v7 = Length;
  if (Length < 1)
  {
    result = 0;
  }

  else
  {
    result = 0;
    v8 = 0;
    v9 = v7;
    do
    {
      if (v8 % 3 == 2)
      {
        v11 = (a2 + result);
        *v11 = aAbcdefghijklmn[((*BytePtr | (*(BytePtr - 1) << 8)) >> 6) & 0x3F];
        result += 2;
        v11[1] = aAbcdefghijklmn[*BytePtr & 0x3F];
      }

      else
      {
        if (v8 % 3 == 1)
        {
          v10 = ((*BytePtr | (*(BytePtr - 1) << 8)) >> 4) & 0x3F;
        }

        else
        {
          v10 = *BytePtr >> 2;
        }

        *(a2 + result++) = aAbcdefghijklmn[v10];
      }

      ++v8;
      ++BytePtr;
      --v9;
    }

    while (v9);
    v12 = v7 % 3;
    if (v12 == 2)
    {
      *(a2 + result) = aAbcdefghijklmn[4 * (*(BytePtr - 1) & 0xF)];
      v14 = (a2 + result + 1);
      result += 2;
      goto LABEL_17;
    }

    if (v12 == 1)
    {
      v13 = (a2 + result);
      *v13 = aAbcdefghijklmn[16 * (*(BytePtr - 1) & 3)];
      v13[1] = 61;
      result += 3;
      v14 = v13 + 2;
LABEL_17:
      *v14 = 61;
    }
  }

  *(a2 + result) = 0;
  return result;
}

size_t sub_EDB0(unsigned int a1, unsigned int a2)
{
  v3 = bswap32(a1);
  if ((v3 & 0xFFFFFF) != 0)
  {
    if (v3)
    {
      if (v3)
      {
        snprintf(byte_19D60, 0x100uLL, "%u.%u.%u.%u");
      }

      else
      {
        snprintf(byte_19D60, 0x100uLL, "%u.%u.%u");
      }
    }

    else
    {
      snprintf(byte_19D60, 0x100uLL, "%u.%u");
    }
  }

  else
  {
    snprintf(byte_19D60, 0x100uLL, "%u");
  }

  result = strlen(byte_19D60);
  if (a2)
  {
    v5 = bswap32(a2);
    v6 = -32;
    while (((v5 >> v6) & 1) == 0)
    {
      if (__CFADD__(v6++, 1))
      {
        return snprintf(&byte_19D60[result], 8uLL, "/%d");
      }
    }

    v8 = v6 + 32;
    while (v8 != 31)
    {
      v9 = v5 >> v8++;
      if ((v9 & 2) == 0)
      {
        return snprintf(&byte_19D60[result], 8uLL, "&0x%x");
      }
    }

    return snprintf(&byte_19D60[result], 8uLL, "/%d");
  }

  else
  {
    byte_19D60[result] = 0;
  }

  return result;
}

const void *isDictionary(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFDictionaryGetTypeID());
  }

  return result;
}

const void *isArray(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFArrayGetTypeID());
  }

  return result;
}

const void *isString(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFStringGetTypeID());
  }

  return result;
}

const void *isNumber(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFNumberGetTypeID());
  }

  return result;
}

const void *isData(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFDataGetTypeID());
  }

  return result;
}

BOOL get_array_option(const __CFDictionary *a1, const void *a2, const void *a3, CFIndex a4, char *a5, unsigned int a6, _DWORD *a7, const char *a8)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (isDictionary(Value) && (v15 = CFDictionaryGetValue(Value, a3), isArray(v15)) && (Count = CFArrayGetCount(v15), Count > a4))
  {
    v17 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(v15, a4);
    if (isString(ValueAtIndex))
    {
      *a5 = 0;
      CFStringGetCString(ValueAtIndex, a5, a6, 0);
      *a7 = strlen(a5);
    }

    return v17 > a4 + 1;
  }

  else
  {
    strlcpy(a5, a8, a6);
    v20 = strlen(a5);
    result = 0;
    *a7 = v20;
  }

  return result;
}

size_t get_str_option(const __CFDictionary *a1, const void *a2, const void *a3, char *a4, unsigned int a5, _DWORD *a6, const char *a7)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (isDictionary(Value) && (*a4 = 0, v13 = CFDictionaryGetValue(Value, a3), isString(v13)))
  {
    CFStringGetCString(v13, a4, a5, 0x8000100u);
  }

  else
  {
    strlcpy(a4, a7, a5);
  }

  result = strlen(a4);
  *a6 = result;
  return result;
}

const void *get_cfstr_option(const __CFDictionary *a1, const void *a2, const void *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!isDictionary(Value))
  {
    return 0;
  }

  v5 = CFDictionaryGetValue(Value, a3);
  if (!isString(v5))
  {
    return 0;
  }

  return v5;
}

const void *get_int_option(const __CFDictionary *a1, const void *a2, const void *a3, _DWORD *a4, int a5)
{
  Value = CFDictionaryGetValue(a1, a2);
  result = isDictionary(Value);
  if (result && (v10 = CFDictionaryGetValue(Value, a3), result = isNumber(v10), result))
  {

    return CFNumberGetValue(v10, kCFNumberSInt32Type, a4);
  }

  else
  {
    *a4 = a5;
  }

  return result;
}

uint64_t GetIntFromDict(const __CFDictionary *a1, const void *a2, _DWORD *a3, int a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (isNumber(Value) && CFNumberGetValue(Value, kCFNumberSInt32Type, a3))
  {
    return 1;
  }

  result = 0;
  *a3 = a4;
  return result;
}

size_t GetStrFromDict(const __CFDictionary *a1, const void *a2, char *a3, int a4, const char *a5)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!isString(Value) || !CFStringGetCString(Value, a3, a4, 0x8000100u))
  {
    strncpy(a3, a5, a4);
  }

  return strlen(a3);
}

const void *GetStrNetFromDict(const __CFDictionary *a1, const void *a2, char *a3, int a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  result = isString(Value);
  if (result)
  {
    result = CFStringGetCString(Value, a3, a4, 0x8000100u);
    if (result)
    {
      return (inet_network(a3) - 1 < 0xFFFFFFFE);
    }
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

void add_fd()
{
    ;
  }
}

void add_notifier()
{
    ;
  }
}

void check_vpn_interface_address_change()
{
    ;
  }
}

void check_vpn_interface_alternate()
{
    ;
  }
}

void check_vpn_interface_or_service_unrecoverable()
{
    ;
  }
}

void dbglog()
{
    ;
  }
}

void error()
{
    ;
  }
}

void generic_disestablish_ppp()
{
    ;
  }
}

void generic_establish_ppp()
{
    ;
  }
}

void is_ready_fd()
{
    ;
  }
}

void l2tp_clear_nat_port_mapping()
{
    ;
  }
}

void l2tp_set_nat_port_mapping()
{
    ;
  }
}

void lcp_lowerdown()
{
    ;
  }
}

void link_terminated()
{
    ;
  }
}

void log_vpn_interface_address_event()
{
    ;
  }
}

void new_phase()
{
    ;
  }
}

void notice()
{
    ;
  }
}

void ppp_auxiliary_probe_stop()
{
    ;
  }
}

void ppp_block_public_nat_port_mapping_timer()
{
    ;
  }
}

void ppp_process_auxiliary_probe_input()
{
    ;
  }
}

void ppp_process_nat_port_mapping_events()
{
    ;
  }
}

void ppp_session_clear()
{
    ;
  }
}

void ppp_unblock_public_nat_port_mapping_timer()
{
    ;
  }
}

void ppp_variable_echo_start()
{
    ;
  }
}

void remove_fd()
{
    ;
  }
}

void set_network_signature()
{
    ;
  }
}

void set_server_peer()
{
    ;
  }
}

void timeout(int a1)
{
    ;
  }
}

void untimeout()
{
    ;
  }
}

void warning()
{
    ;
  }
}