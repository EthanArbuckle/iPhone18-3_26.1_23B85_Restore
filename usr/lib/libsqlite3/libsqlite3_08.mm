uint64_t sub_1818E6124(int *a1)
{
  v2 = a1[4];
  v3 = *a1 + v2;
  if ((v3 < 0) ^ __OFADD__(*a1, v2) | (v3 == 0))
  {
    if ((a1[5] & 0x10) == 0)
    {
      return 0;
    }

    v3 = 1;
  }

  if (sub_1818BB128(a1, v3, 1))
  {
    return 7;
  }

  bzero((*(a1 + 1) + a1[4]), *a1);
  result = 0;
  a1[4] += *a1;
  *(a1 + 10) &= 0xF9FFu;
  return result;
}

uint64_t sub_1818E61B4(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    v6 = *(result + 72);
    v5 = *(result + 80);
    v7 = *(a2 + 80);
    v8 = *(result + 9);
    if (*(a2 + 4) == 1)
    {
      v9 = 100;
    }

    else
    {
      v9 = 0;
    }

    v10 = (v5 + v8);
    v11 = __rev16(*(v5 + v8 + 5));
    v12 = result;
    memcpy((v7 + v11), (v5 + v11), (*(v6 + 56) - v11));
    memcpy((v7 + v9), v10, *(v12 + 18) + 2 * *(v12 + 24));
    *a2 = 0;
    result = sub_1818C6DCC(a2);
    if (!result)
    {
      result = sub_1819454C4(a2);
      if (!result)
      {
        if (!*(v6 + 33))
        {
          return result;
        }

        result = sub_181939484(a2);
      }
    }

    *a3 = result;
  }

  return result;
}

uint64_t sub_1818E6288(uint64_t a1, int a2, _BYTE *a3, int a4, unsigned __int8 *a5)
{
  v5 = (a2 - a4);
  if (a2 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2;
  }

  if (v6 < 0)
  {
    sub_1819012D0(37608);
    return v5;
  }

  if (!a3)
  {
    if (a5)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }

    if (result)
    {
      return result;
    }

    return v5;
  }

  if (!a5)
  {
    return 1;
  }

  if (!v6)
  {
    return v5;
  }

  v7 = v6 + 1;
  while (1)
  {
    v8 = *a3;
    if (!*a3)
    {
      break;
    }

    LODWORD(v8) = byte_181A20298[v8];
    v9 = byte_181A20298[*a5];
    if (v8 != v9)
    {
      goto LABEL_21;
    }

    ++a3;
    ++a5;
    if (--v7 <= 1)
    {
      return v5;
    }
  }

  v9 = byte_181A20298[*a5];
LABEL_21:
  result = (v8 - v9);
  if (!result)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1818E6334(unsigned __int8 *a1, double *a2, int a3, int a4)
{
  *a2 = 0.0;
  if (!a3)
  {
    return 0;
  }

  if (a4 == 1)
  {
    v5 = 1;
    v6 = a1;
    result = 1;
  }

  else
  {
    LODWORD(v8) = 3 - a4;
    if (3 - a4 >= (a3 & 0xFFFFFFFE))
    {
      result = 1;
    }

    else
    {
      v8 = v8;
      while (!a1[v8])
      {
        v8 += 2;
        if (v8 >= (a3 & 0xFFFFFFFE))
        {
          result = 1;
          goto LABEL_11;
        }
      }

      result = 4294967196;
    }

LABEL_11:
    a3 = v8 ^ 1;
    v6 = &a1[a4 & 1];
    v5 = 2;
  }

  v9 = &a1[a3];
  if (v6 >= v9)
  {
    return 0;
  }

  while (1)
  {
    v10 = *v6;
    if ((byte_181A204C8[*v6] & 1) == 0)
    {
      break;
    }

    v6 += v5;
    if (v6 >= v9)
    {
      return 0;
    }
  }

  if (v10 == 43 || v10 == 45)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = &v6[v12];
  if (v13 >= v9)
  {
    v14 = 0;
    v19 = 1;
    goto LABEL_66;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v13;
    if ((v17 - 58) < 0xFFFFFFFFFFFFFFF6)
    {
      break;
    }

    v16 = v17 + 10 * v16 - 48;
    v13 += v5;
    v18 = v16 <= 0x1999999999999997 || v13 >= v9;
    if (!v18)
    {
      do
      {
        if (*v13 - 58 < 0xFFFFFFFFFFFFFFF6)
        {
          break;
        }

        v13 += v5;
        ++v15;
      }

      while (v13 < v9);
    }

    ++v14;
    if (v13 >= v9)
    {
      goto LABEL_53;
    }
  }

  if (v17 == 46)
  {
    result = (result + 1);
    for (v13 += v5; v13 < v9; v13 += v5)
    {
      v20 = *v13;
      if ((v20 - 58) < 0xFFFFFFFFFFFFFFF6)
      {
        break;
      }

      if (v16 < 0x1999999999999998)
      {
        v16 = v20 + 10 * v16 - 48;
        --v15;
        ++v14;
      }
    }
  }

  if (v13 >= v9)
  {
LABEL_53:
    v25 = 0;
    v23 = 1;
    v19 = 1;
    goto LABEL_54;
  }

  if ((*v13 | 0x20) != 0x65)
  {
    v25 = 0;
    v23 = 1;
LABEL_120:
    v19 = 1;
    goto LABEL_123;
  }

  v13 += v5;
  result = (result + 1);
  if (v13 >= v9)
  {
    v25 = 0;
    v19 = 0;
    v23 = 1;
    goto LABEL_54;
  }

  v21 = *v13;
  v22 = &v13[v5];
  if (v21 == 45)
  {
    v13 += v5;
    v23 = -1;
  }

  else
  {
    v23 = 1;
  }

  if (v21 == 43)
  {
    v13 = v22;
    v23 = 1;
  }

  if (v13 < v9)
  {
    v24 = *v13;
    if ((v24 - 58) >= 0xFFFFFFFFFFFFFFF6)
    {
      v25 = v24 - 48;
      for (v13 += v5; v13 < v9; v13 += v5)
      {
        v53 = *v13;
        if ((v53 - 58) < 0xFFFFFFFFFFFFFFF6)
        {
          break;
        }

        v54 = v53 + 10 * v25 - 48;
        v25 = v25 >= 10000 ? 10000 : v54;
      }

      goto LABEL_120;
    }
  }

  v25 = 0;
  v19 = 0;
LABEL_123:
  while (v13 < v9 && (byte_181A204C8[*v13] & 1) != 0)
  {
    v13 += v5;
  }

LABEL_54:
  if (!v16)
  {
LABEL_66:
    v30 = -0.0;
    if (v10 != 45)
    {
      v30 = 0.0;
    }

    goto LABEL_68;
  }

  v26 = v15 + v25 * v23;
  if (v26 < 1 || v16 >= 0x19999999999998CCLL)
  {
    if ((v26 & 0x80000000) == 0 || v16 % 0xA)
    {
      v29 = v16;
    }

    else
    {
      v28 = -v26;
      v29 = v16;
      do
      {
        v29 /= 0xAuLL;
        --v28;
      }

      while (v28 && v29 == 10 * ((v29 * 0x199999999999999AuLL) >> 64));
      v26 = -v28;
    }
  }

  else
  {
    do
    {
      v34 = v26;
      v29 = 10 * v16;
      --v26;
      if (v34 < 2)
      {
        break;
      }

      v18 = v16 >= 0x28F5C28F5C28F48;
      v16 *= 10;
    }

    while (!v18);
  }

  v35 = v29;
  v56 = v29;
  v36 = 0.0;
  if (v29 <= 1.84467441e19)
  {
    if (v29 >= v35)
    {
      v36 = (v29 - v35);
    }

    else
    {
      v36 = -(v35 - v29);
    }
  }

  v55 = v36;
  if (v26 <= 0)
  {
    if (v26 > -100)
    {
      v44 = v26;
    }

    else
    {
      do
      {
        v44 = v26 + 100;
        *&v45 = *&v35 & 0xFFFFFFFFFC000000;
        v66 = (v56 - v45) * 9.99999999e-101 + v45 * 1.18108707e-109;
        v60 = v45 * 9.99999999e-101 - (v45 * 9.99999999e-101 + v66) + v66 + (v56 - v45) * 1.18108707e-109 + v55 * 1.0e-100 + v56 * -1.99918998e-117;
        v56 = v45 * 9.99999999e-101 + v66 + v60;
        v46 = v45 * 9.99999999e-101 + v66;
        v35 = v56;
        v36 = v60 + v46 - v56;
        v55 = v36;
        v18 = __CFADD__(v26, 199);
        v26 += 100;
      }

      while (!v18);
    }

    if (v44 > -10)
    {
      v47 = v44;
    }

    else
    {
      do
      {
        v47 = v44 + 10;
        *&v48 = *&v35 & 0xFFFFFFFFFC000000;
        v67 = (v56 - v48) * 9.99999996e-11 + v48 * 3.99580284e-19;
        v61 = v48 * 9.99999996e-11 - (v48 * 9.99999996e-11 + v67) + v67 + (v56 - v48) * 3.99580284e-19 + v55 * 1.0e-10 + v56 * -3.64321973e-27;
        v56 = v48 * 9.99999996e-11 + v67 + v61;
        v49 = v48 * 9.99999996e-11 + v67;
        v35 = v56;
        v36 = v61 + v49 - v56;
        v55 = v36;
        v18 = __CFADD__(v44, 19);
        v44 += 10;
      }

      while (!v18);
    }

    if (v47 < 0)
    {
      do
      {
        *&v50 = *&v35 & 0xFFFFFFFFFC000000;
        v68 = (v56 - v50) * 0.0999999996 + v50 * 3.72529035e-10;
        v62 = v50 * 0.0999999996 - (v50 * 0.0999999996 + v68) + v68 + (v56 - v50) * 3.72529035e-10 + v55 * 0.1 + v56 * -5.55111512e-18;
        v56 = v50 * 0.0999999996 + v68 + v62;
        v51 = v50 * 0.0999999996 + v68;
        v35 = v56;
        v36 = v62 + v51 - v56;
        v55 = v36;
        v18 = __CFADD__(v47++, 1);
      }

      while (!v18);
    }
  }

  else
  {
    if (v26 >= 0x64)
    {
      do
      {
        v26 -= 100;
        *&v37 = *&v35 & 0xFFFFFFFFFC000000;
        v63 = (v56 - v37) * 9.99999995e99 + v37 * 5.15323793e91;
        v57 = v37 * 9.99999995e99 - (v37 * 9.99999995e99 + v63) + v63 + (v56 - v37) * 5.15323793e91 + v55 * 1.0e100 + v56 * -1.59028911e83;
        v56 = v37 * 9.99999995e99 + v63 + v57;
        v38 = v37 * 9.99999995e99 + v63;
        v35 = v56;
        v36 = v57 + v38 - v56;
        v55 = v36;
      }

      while (v26 > 0x63);
    }

    if (v26 >= 0xA)
    {
      do
      {
        v26 -= 10;
        *&v39 = *&v35 & 0xFFFFFFFFFC000000;
        v64 = (v56 - v39) * 1.0e10 + v39 * 0.0;
        v58 = v39 * 1.0e10 - (v39 * 1.0e10 + v64) + v64 + (v56 - v39) * 0.0 + v55 * 1.0e10 + v56 * 0.0;
        v56 = v39 * 1.0e10 + v64 + v58;
        v40 = v39 * 1.0e10 + v64;
        v35 = v56;
        v36 = v58 + v40 - v56;
        v55 = v36;
      }

      while (v26 > 9);
    }

    if (v26)
    {
      v41 = v26 + 1;
      do
      {
        *&v42 = *&v35 & 0xFFFFFFFFFC000000;
        v65 = (v56 - v42) * 10.0 + v42 * 0.0;
        v59 = v42 * 10.0 - (v42 * 10.0 + v65) + v65 + (v56 - v42) * 0.0 + v55 * 10.0 + v56 * 0.0;
        v56 = v42 * 10.0 + v65 + v59;
        v43 = v42 * 10.0 + v65;
        v35 = v56;
        v36 = v59 + v43 - v56;
        v55 = v36;
        --v41;
      }

      while (v41 > 1);
    }
  }

  v52 = v35 + v36;
  *a2 = v52;
  if (v10 == 45)
  {
    v30 = -v52;
LABEL_68:
    *a2 = v30;
  }

  if (!v19 || (v13 == v9 ? (v31 = v14 < 1) : (v31 = 1), !v31 ? (v32 = result <= 0) : (v32 = 1), v32))
  {
    if (result > 1)
    {
      v33 = result != 3 && v19 == 0;
      if (!v33 && v14 > 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1818E6D94(uint64_t a1)
{
  v2 = *(a1 + 328);
  v3 = *(a1 + 200);
  v4 = *(a1 + 184);
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a1 + 128);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 120) + 8);
    do
    {
      if (!*v7)
      {
        *v7 = *(a1 + 96);
      }

      v7 += 7;
      --v6;
    }

    while (v6);
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = v4 + v4 * ((v8 - 1) / v4);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 96) = v9;
  *(a1 + 104) = v9;
  if (*(a1 + 11) || *(a1 + 9) == 4 || (v10 = *(a1 + 72), *v10) && ((*(*v10 + 96))(v10) & 0x200) != 0)
  {
    *v2 = 0xD763A120F905D5D9;
    *(v2 + 8) = -1;
  }

  else
  {
    *(v2 + 8) = 0;
    *v2 = 0;
  }

  if (*(a1 + 9) != 4)
  {
    sqlite3_initialize();
    arc4random_buf((a1 + 56), 4uLL);
  }

  *(v2 + 12) = bswap32(*(a1 + 56));
  *(v2 + 16) = bswap32(*(a1 + 36));
  *(v2 + 20) = bswap32(*(a1 + 184));
  *(v2 + 24) = bswap32(*(a1 + 200));
  bzero((v2 + 28), v5 - 28);
  v11 = -v5;
  while (1)
  {
    v11 += v5;
    if (v11 >= *(a1 + 184))
    {
      break;
    }

    result = (*(**(a1 + 80) + 24))(*(a1 + 80), v2, v5, *(a1 + 96));
    *(a1 + 96) += v5;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void sqlite3_randomness(int N, void *P)
{
  sqlite3_initialize();
  if (N >= 1 && P)
  {

    arc4random_buf(P, N);
  }
}

uint64_t sub_1818E6F74(int a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  bzero(a3, a2);
  dword_1ED456C50 = getpid();
  v6 = sub_18192ACE0("/dev/urandom", 0, 0, 0);
  if ((v6 & 0x80000000) != 0)
  {
    *__strerrbuf = 0;
    time(__strerrbuf);
    *a3 = *__strerrbuf;
    *(a3 + 2) = dword_1ED456C50;
    return 12;
  }

  else
  {
    v7 = v6;
      ;
    }

    if (off_1EE341AE0(v7))
    {
      v8 = *__error();
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v8, __strerrbuf, 0x4FuLL);
      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 51667, v8, "close", &byte_181A2878D, __strerrbuf);
    }
  }

  return v4;
}

uint64_t sub_1818E70E0(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2 - 1;
  if (*a1 < 0xF81u)
  {
LABEL_9:
    v6 = 0;
    *(a1 + (v2 >> 3) + 16) |= 1 << (v2 & 7);
  }

  else
  {
    while (1)
    {
      v3 = *(a1 + 8);
      v4 = (a1 + 16);
      if (!v3)
      {
        break;
      }

      v5 = v2 / v3;
      a1 = *(v4 + v2 / v3);
      if (!a1)
      {
        a1 = sub_181902484(512, 0x102204086A6B74CLL);
        if (!a1)
        {
          *(v4 + v5) = 0;
          return 7;
        }

        *(a1 + 480) = 0u;
        *(a1 + 496) = 0u;
        *(a1 + 448) = 0u;
        *(a1 + 464) = 0u;
        *(a1 + 416) = 0u;
        *(a1 + 432) = 0u;
        *(a1 + 384) = 0u;
        *(a1 + 400) = 0u;
        *(a1 + 352) = 0u;
        *(a1 + 368) = 0u;
        *(a1 + 320) = 0u;
        *(a1 + 336) = 0u;
        *(a1 + 288) = 0u;
        *(a1 + 304) = 0u;
        *(a1 + 256) = 0u;
        *(a1 + 272) = 0u;
        *(a1 + 224) = 0u;
        *(a1 + 240) = 0u;
        *(a1 + 192) = 0u;
        *(a1 + 208) = 0u;
        *(a1 + 160) = 0u;
        *(a1 + 176) = 0u;
        *(a1 + 128) = 0u;
        *(a1 + 144) = 0u;
        *(a1 + 96) = 0u;
        *(a1 + 112) = 0u;
        *(a1 + 64) = 0u;
        *(a1 + 80) = 0u;
        *(a1 + 32) = 0u;
        *(a1 + 48) = 0u;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *a1 = v3;
        *(v4 + v5) = a1;
      }

      v2 %= v3;
      if (*a1 <= 0xF80u)
      {
        goto LABEL_9;
      }
    }

    v7 = v2 + 1;
    v8 = v2 % 0x7C;
    v9 = *(v4 + v8);
    if (v9)
    {
      while (v9 != v7)
      {
        if ((v8 + 1) <= 0x7B)
        {
          v8 = (v8 + 1);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(v4 + v8);
        if (!v9)
        {
          v10 = *(a1 + 4);
          if (v10 >= 0x3E)
          {
            goto LABEL_21;
          }

          goto LABEL_17;
        }
      }

      return 0;
    }

    v10 = *(a1 + 4);
    if (v10 < 0x7B)
    {
LABEL_17:
      v6 = 0;
      *(a1 + 4) = v10 + 1;
      *(v4 + v8) = v7;
      return v6;
    }

LABEL_21:
    v12 = a1;
    v13 = sub_181902484(496, 0x100004051E21E55);
    if (!v13)
    {
      return 7;
    }

    v14 = v13;
    memcpy(v13, v4, 0x1F0uLL);
    *v4 = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[9] = 0u;
    v4[10] = 0u;
    v4[11] = 0u;
    v4[12] = 0u;
    v4[13] = 0u;
    v4[14] = 0u;
    v4[15] = 0u;
    v4[16] = 0u;
    v4[17] = 0u;
    v4[18] = 0u;
    v4[19] = 0u;
    v4[20] = 0u;
    v4[21] = 0u;
    v4[22] = 0u;
    v4[23] = 0u;
    v4[24] = 0u;
    v4[25] = 0u;
    v4[26] = 0u;
    v4[27] = 0u;
    v4[28] = 0u;
    v4[29] = 0u;
    v4[30] = 0u;
    if (*v12 % 0x3Eu)
    {
      v15 = *v12 / 0x3Eu + 1;
    }

    else
    {
      v15 = *v12 / 0x3Eu;
    }

    if (v15 <= 0xF80)
    {
      v15 = 3968;
    }

    v12[2] = v15;
    v6 = sub_1818E70E0(v12, v7);
    for (i = 0; i != 496; i += 4)
    {
      v17 = *&v14[i];
      if (v17)
      {
        v6 = sub_1818E70E0(v12, v17) | v6;
      }
    }

    v18 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_37:
      (*v18)(v14);
      return v6;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v14);
    --qword_1ED456A90;
    off_1ED452EB0(v14);
    v14 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v18 = &xmmword_1ED452F28;
      goto LABEL_37;
    }
  }

  return v6;
}

uint64_t sub_1818E73DC(uint64_t a1, int a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  result = *(a1 + 48);
  if (result)
  {
    return result;
  }

  if (!*(a1 + 344))
  {
    while (1)
    {
      v5 = *(a1 + 22);
      if (v5 >= 4 && v5 != 5)
      {
        break;
      }

      if (*(a1 + 17))
      {
        goto LABEL_13;
      }

      result = (*(**(a1 + 72) + 56))(*(a1 + 72), 4);
      if (result != 5)
      {
        if (result)
        {
          return result;
        }

LABEL_13:
        *(a1 + 22) = 4;
        break;
      }

      if (!(*(a1 + 232))(*(a1 + 240)))
      {
        return 5;
      }
    }
  }

  if (*(a1 + 11))
  {
    goto LABEL_18;
  }

  if (**(a1 + 80) && *(a1 + 9) != 4)
  {
    v9 = *(a1 + 72);
    if (*v9)
    {
      v10 = (*(*v9 + 96))(v9);
      if ((v10 & 0x200) != 0)
      {
        v11 = 1;
LABEL_43:
        if ((v10 & 0x400) == 0)
        {
          if (*(a1 + 14) | (16 * (*(a1 + 14) == 3)))
          {
            result = (*(**(a1 + 80) + 40))(*(a1 + 80));
            if (result)
            {
              return result;
            }
          }
        }

        *(a1 + 104) = *(a1 + 96);
        v15 = a2 ? v11 : 1;
        if ((v15 & 1) == 0)
        {
          *(a1 + 52) = 0;
          result = sub_1818E6D94(a1);
          if (result)
          {
            return result;
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      v10 = 0;
    }

    v16 = 0xD763A120F905D5D9;
    v17 = bswap32(*(a1 + 52));
    v12 = *(a1 + 96);
    if (v12)
    {
      v13 = *(a1 + 184) + *(a1 + 184) * ((v12 - 1) / *(a1 + 184));
    }

    else
    {
      v13 = 0;
    }

    result = (*(**(a1 + 80) + 16))(*(a1 + 80), v18, 8, v13);
    if (!result)
    {
      if (v18[0] != 0xD763A120F905D5D9)
      {
LABEL_37:
        if ((v10 & 0x400) == 0)
        {
          if (*(a1 + 12))
          {
            if (*(a1 + 14))
            {
              result = (*(**(a1 + 80) + 40))(*(a1 + 80));
              if (result)
              {
                return result;
              }
            }
          }
        }

        result = (*(**(a1 + 80) + 24))(*(a1 + 80), &v16, 12, *(a1 + 104));
        if (result)
        {
          return result;
        }

        v11 = 0;
        goto LABEL_43;
      }

      result = (*(**(a1 + 80) + 24))(*(a1 + 80), &unk_181A20D39, 1, v13);
    }

    if (result != 522 && result != 0)
    {
      return result;
    }

    goto LABEL_37;
  }

  *(a1 + 104) = *(a1 + 96);
LABEL_18:
  v7 = *(a1 + 336);
  for (i = *v7; i; i = *(i + 64))
  {
    *(i + 52) &= ~8u;
  }

  result = 0;
  v7[2] = v7[1];
  *(a1 + 21) = 4;
  return result;
}

uint64_t sub_1818E7670(void *a1, uint64_t a2)
{
  if (*a1[9] || (v14 = (*(*a1 + 40))(*a1, 0), !v14))
  {
    v4 = *(a1 + 11);
    v5 = *(a1 + 8);
    if (v4 < v5 && (*(a2 + 32) || *(a2 + 48) > v4))
    {
      v15 = a1[25] * v5;
      v6 = a1[9];
      if (*v6)
      {
        (*(*v6 + 80))(v6, 5, &v15);
        LODWORD(v5) = *(a1 + 8);
      }

      *(a1 + 11) = v5;
    }

    if (!a2)
    {
      return 0;
    }

    while (1)
    {
      v7 = *(a2 + 48);
      if (v7 > *(a1 + 8) || (*(a2 + 52) & 0x10) != 0)
      {
        v14 = 0;
      }

      else
      {
        v8 = a1[25];
        if (v7 == 1)
        {
          v9 = bswap32(bswap32(*(*(a2 + 40) + 136)) + 1);
          *(*(a2 + 8) + 24) = v9;
          *(*(a2 + 8) + 92) = v9;
          *(*(a2 + 8) + 96) = -124965376;
        }

        v10 = a1[37];
        if (v10)
        {
          v11 = v10(a1[40], *(a2 + 8), v7, 6);
          if (!v11)
          {
            return 7;
          }
        }

        else
        {
          v11 = *(a2 + 8);
        }

        v14 = (*(*a1[9] + 24))(a1[9], v11, *(a1 + 50), v8 * (v7 - 1));
        if (v7 == 1)
        {
          *(a1 + 17) = *(v11 + 24);
        }

        if (v7 > *(a1 + 10))
        {
          *(a1 + 10) = v7;
        }

        ++*(a1 + 64);
        ++*(a1 + 68);
        v12 = a1[14];
        if (v12)
        {
          sub_181934FA4(v12, v7, *(a2 + 8));
        }
      }

      if (!v14)
      {
        a2 = *(a2 + 32);
        if (a2)
        {
          continue;
        }
      }

      return v14;
    }
  }

  return v14;
}

uint64_t sub_1818E7864(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v2);
    }
  }

  if (qword_1ED456B10)
  {
    xmmword_1ED452F18(qword_1ED456B10);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (*(v3 + 28))
    {
      v4 = *(a1 + 48);
      *(v4 + 8) = *(v3 + 40);
      *(v3 + 40) = v4;
      *(a1 + 24) = -1;
      *(a1 + 48) = 0;
    }

    sub_18192A87C(a1);
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v5);
    }
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    off_1EE341CF0(v6, *(a1 + 88));
    *(a1 + 104) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v7 = *(a1 + 24);
  if ((v7 & 0x80000000) == 0)
  {
    if (off_1EE341AE0(v7))
    {
      v8 = *(a1 + 56);
      v9 = *__error();
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v9, __strerrbuf, 0x4FuLL);
      v10 = &byte_181A2878D;
      if (v8)
      {
        v10 = v8;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 44393, v9, "close", v10, __strerrbuf);
    }

    *(a1 + 24) = -1;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_27:
      (*v12)(v11);
      goto LABEL_28;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v11);
    --qword_1ED456A90;
    off_1ED452EB0(v11);
    v11 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v12 = &xmmword_1ED452F28;
      goto LABEL_27;
    }
  }

LABEL_28:
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (qword_1ED456B10)
  {
    xmmword_1ED452F28(qword_1ED456B10);
  }

  return 0;
}

int sqlite3_column_bytes(sqlite3_stmt *a1, int iCol)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = *(*a1 + 24);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  v5 = *(a1 + 20);
  if (!v5 || *(a1 + 130) <= iCol)
  {
    v8 = *a1;
    *(v8 + 80) = 25;
    sub_181932D5C(v8, 25);
LABEL_9:
    v6 = &qword_181A20ED0;
    v7 = 1;
    goto LABEL_13;
  }

  v6 = (v5 + (iCol << 6));
  v7 = *(v6 + 10);
  if ((v7 & 2) != 0 && *(v6 + 22) == 1)
  {
    v9 = *(v6 + 4);
    if (!a1)
    {
      return v9;
    }

    goto LABEL_20;
  }

LABEL_13:
  if ((v7 & 0x10) == 0)
  {
    if (v7)
    {
      v9 = 0;
      if (!a1)
      {
        return v9;
      }
    }

    else
    {
      v9 = sub_18193CB44(v6, 1);
      if (!a1)
      {
        return v9;
      }
    }

    goto LABEL_20;
  }

  v9 = *(v6 + 4);
  if ((v7 & 0x400) != 0)
  {
    v9 += *v6;
  }

  if (a1)
  {
LABEL_20:
    v10 = *a1;
    v11 = *(a1 + 13);
    if (v11 || (v12 = *(v10 + 103), *(v10 + 103)))
    {
      v12 = sub_18193C988(v10, v11);
      v10 = *a1;
    }

    *(a1 + 13) = v12;
    v13 = *(v10 + 24);
    if (v13)
    {
      xmmword_1ED452F28(v13);
    }
  }

  return v9;
}

uint64_t sub_1818E7BDC(uint64_t a1, const char *a2, char a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (off_1EE341C48(a2) == -1)
  {
    if (*__error() == 2)
    {
      return 5898;
    }

    else
    {
      v11 = *__error();
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v11, __strerrbuf, 0x4FuLL);
      v12 = &byte_181A2878D;
      if (a2)
      {
        v12 = a2;
      }

      sqlite3_log(2570, "os_unix.c:%d: (%d) %s(%s) - %s", 51355, v11, "unlink", v12, __strerrbuf);
      return 2570;
    }
  }

  else if (a3)
  {
    v13 = 0;
    v6 = off_1EE341C60(a2, &v13);
    result = 0;
    if (!v6)
    {
      result = fsync(v13);
      if (result)
      {
        v7 = *__error();
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        *__strerrbuf = 0u;
        strerror_r(v7, __strerrbuf, 0x4FuLL);
        if (a2)
        {
          v8 = a2;
        }

        else
        {
          v8 = &byte_181A2878D;
        }

        sqlite3_log(1290, "os_unix.c:%d: (%d) %s(%s) - %s", 51365, v7, "fsync", v8, __strerrbuf);
        result = 1290;
      }

      if ((v13 & 0x80000000) == 0)
      {
        v9 = result;
        if (off_1EE341AE0(v13))
        {
          v10 = *__error();
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          *__strerrbuf = 0u;
          strerror_r(v10, __strerrbuf, 0x4FuLL);
          sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 51372, v10, "close", &byte_181A2878D, __strerrbuf);
        }

        return v9;
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1818E7DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16))
  {
    return *(a1 + 16);
  }

  v9 = *a1;
  if (!*(a1 + 152) && (*(v9 + 96) & 8) == 0)
  {
    *(a1 + 43) |= 4u;
  }

  if (*(v9 + 436) > 0x197u)
  {
    v10 = *(v9 + 472);
    if (v10)
    {
      v11 = (v9 + 472);
    }

    else
    {
      v10 = *(v9 + 464);
      if (!v10)
      {
        ++*(v9 + 456);
LABEL_17:
        v12 = a1;
        v10 = sub_18192A080(v9, 408, 0x10B004000C32FD6);
        a1 = v12;
        if (!v10)
        {
          return v10;
        }

LABEL_18:
        *(v10 + 248) = 0u;
        *(v10 + 232) = 0u;
        *(v10 + 216) = 0u;
        *(v10 + 200) = 0u;
        *(v10 + 184) = 0u;
        *(v10 + 168) = 0u;
        *(v10 + 152) = 0u;
        *(v10 + 136) = 0u;
        *(v10 + 376) = 0u;
        *(v10 + 392) = 0u;
        *(v10 + 344) = 0u;
        *(v10 + 360) = 0u;
        *(v10 + 312) = 0u;
        *(v10 + 328) = 0u;
        *(v10 + 280) = 0u;
        *(v10 + 296) = 0u;
        *(v10 + 264) = 0u;
        *v10 = v9;
        v15 = *(v9 + 8);
        v14 = (v9 + 8);
        v13 = v15;
        if (v15)
        {
          *(v13 + 8) = v10 + 16;
        }

        *(v10 + 8) = v14;
        *(v10 + 16) = v13;
        *v14 = v10;
        *(v10 + 24) = a1;
        *(a1 + 16) = v10;
        v16 = *(v10 + 144);
        if (*(v10 + 148) <= v16)
        {
          v18 = v10;
          sub_18194C8AC(v10, 8, 0, 1, 0, a6, a7, a8);
          return v18;
        }

        else
        {
          *(v10 + 144) = v16 + 1;
          v17 = *(v10 + 136) + 40 * v16;
          *v17 = 8;
          *(v17 + 4) = 0x100000000;
          *(v17 + 12) = 0;
          *(v17 + 28) = 0;
          *(v17 + 20) = 0;
          *(v17 + 36) = 0;
        }

        return v10;
      }

      v11 = (v9 + 464);
    }

    *v11 = *v10;
    ++*(v9 + 448);
    goto LABEL_18;
  }

  if (!*(v9 + 432))
  {
    ++*(v9 + 452);
    goto LABEL_17;
  }

  if (!*(v9 + 103))
  {
    goto LABEL_17;
  }

  return 0;
}

void *sub_1818E7FBC(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v376 = a7;
  v8 = a6;
  memset(v379, 0, 56);
  v378 = 0;
  v12 = *a1;
  if (*(a1 + 52))
  {
    goto LABEL_2;
  }

  v15 = (a2 + 72);
  if (*(a2 + 35))
  {
    v17 = *v15;
    v18 = *(v12 + 32);
    if (v17)
    {
      v19 = (v18 + 24);
      v20 = 0xFFFFFFFF00000000;
      do
      {
        v21 = *v19;
        v19 += 4;
        v20 += 0x100000000;
      }

      while (v21 != v17);
      v16 = a5;
      v22 = v20 >> 32;
    }

    else
    {
      v16 = a5;
      v22 = -32768;
    }

    v15 = (v18 + 32 * v22);
  }

  else
  {
    v16 = a5;
  }

  v29 = sub_1818CA520(a1, 0, *(a2 + 8), *v15, a5, a6, a7, a8);
  v30 = *(a2 + 24);
  if (v30)
  {
    v31 = *a1;
    if (*(*a1 + 824) || (v32 = *(v30 + 44) - 1, (*(v30 + 44) = v32) == 0))
    {
      sub_18194E094(v31, v30);
    }
  }

  *(a2 + 24) = v29;
  *(a2 + 33) |= 0x400u;
  if (!v29)
  {
    goto LABEL_2;
  }

  ++*(v29 + 44);
  if ((*(a2 + 33) & 2) != 0)
  {
    v33 = *(v29 + 16);
    if (!v33)
    {
LABEL_33:
      sub_181910730(a1, "no such index: %s", v23, v24, v25, v26, v27, v28, *(a2 + 48));
      *(a1 + 43) |= 8u;
      goto LABEL_2;
    }

LABEL_26:
    v34 = *v33;
    for (i = *(a2 + 48); ; ++i)
    {
      if (*v34 == *i)
      {
        if (!*v34)
        {
          *(a2 + 56) = v33;
          break;
        }
      }

      else if (byte_181A20298[*v34] != byte_181A20298[*i])
      {
        v33 = *(v33 + 40);
        if (!v33)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }

      ++v34;
    }
  }

  v36 = *a1;
  v37 = *(v29 + 96);
  if (v37)
  {
    v38 = (*(v36 + 32) + 24);
    v39 = -1;
    do
    {
      v40 = *v38;
      v38 += 4;
      ++v39;
    }

    while (v40 != v37);
    if (*(v29 + 88))
    {
      goto LABEL_42;
    }
  }

  else
  {
    v39 = -32768;
    if (*(v29 + 88))
    {
      goto LABEL_42;
    }
  }

  v41 = *(*(v36 + 32) + 56);
  if (!v41 || !*(v41 + 64))
  {
    goto LABEL_43;
  }

LABEL_42:
  if (*(a1 + 42))
  {
LABEL_43:
    v373 = 0;
    HIDWORD(v378) = 0;
    goto LABEL_45;
  }

  v373 = sub_181980B5C(a1, v29, 130, a3, &v378 + 1, v26, v27, v28);
LABEL_45:
  v42 = *(v29 + 63);
  if (*a2 < 2)
  {
    v43 = 0;
  }

  else
  {
    v43 = *a3;
  }

  v372 = v43;
  v368 = *(v29 + 63);
  if (v42 == 2 || v43)
  {
    if (v42 == 1)
    {
      goto LABEL_54;
    }

LABEL_53:
    if (*(v29 + 54) > 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  a4 = sub_18197FEFC(a1, a2, a4, v8, v376, "UPDATE", v27, v28);
  v376 = 0;
  v8 = 0;
  if (*(v29 + 63) != 1)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (sub_181960D84(a1, v29, v23, v24, v25, v26, v27, v28))
  {
    goto LABEL_2;
  }

LABEL_55:
  if (sub_181980528(a1, v29, v373, v24, v25, v26, v27, v28))
  {
    goto LABEL_2;
  }

  v44 = *(a1 + 56);
  v45 = v44 + 1;
  *(a1 + 56) = v44 + 1;
  v46 = *(v29 + 16);
  v371 = a3;
  v358 = a4;
  if ((*(v29 + 48) & 0x80) != 0)
  {
    v48 = a8;
    if (!v46)
    {
      v47 = 0;
      goto LABEL_69;
    }

    v47 = *(v29 + 16);
    do
    {
      if ((*(v47 + 99) & 3) == 2)
      {
        break;
      }

      v47 = *(v47 + 40);
    }

    while (v47);
  }

  else
  {
    v47 = 0;
    v48 = a8;
  }

  if (!v46)
  {
LABEL_69:
    v49 = 0;
    v51 = v44;
    goto LABEL_70;
  }

  v49 = 0;
  v50 = v44 + 1;
  v51 = v44;
  do
  {
    if (v47 == v46)
    {
      v51 = v50;
    }

    ++v50;
    ++v49;
    v46 = *(v46 + 40);
  }

  while (v46);
  *(a1 + 56) = v50;
LABEL_70:
  v374 = v47;
  v355 = v16;
  v356 = v8;
  if (v48)
  {
    v51 = *(v48 + 76);
    v45 = *(v48 + 80);
    *(a1 + 56) = v44;
  }

  v351 = v44;
  v353 = v45;
  v361 = v51;
  *(a2 + 36) = v51;
  v52 = v49 + 1;
  v53 = sub_181929E8C(v12, v49 + 4 * (v52 + *(v29 + 54)) + 2, 0x100004052888210);
  if (!v53)
  {
    a4 = v358;
    a3 = v371;
    goto LABEL_2;
  }

  v54 = v53;
  v359 = (v53 + 4 * *(v29 + 54));
  v342 = &v359[v49];
  memset(v342 + 1, 1, v49 + 1);
  __b = v342 + 1;
  *(v342 + v52 + 4) = 0;
  v62 = *(v29 + 54);
  if (v62 >= 1)
  {
    memset(v54, 255, 4 * v62);
  }

  *(&v379[2] + 8) = 0u;
  *(&v379[1] + 8) = 0u;
  *&v379[0] = a1;
  *(&v379[0] + 1) = a2;
  *&v379[1] = a8;
  DWORD2(v379[2]) = 512;
  v63 = sub_1818E7DFC(a1, v55, v56, v57, v58, v59, v60, v61);
  if (!v63)
  {
    goto LABEL_303;
  }

  v367 = v63;
  v357 = v12;
  if (*v371 < 1)
  {
    v354 = 0;
    LOBYTE(v67) = 0;
    v365 = 0;
    v363 = -1;
LABEL_140:
    v344 = v67 + v354;
    v360 = v67;
    if ((*(v29 + 48) & 0x60) != 0)
    {
      LOWORD(v106) = *(v29 + 54);
      do
      {
        if (v106 < 1)
        {
          break;
        }

        v107 = 0;
        v108 = 0;
        v109 = 0;
        do
        {
          if ((*(v54 + v108) & 0x80000000) != 0)
          {
            v110 = *(v29 + 8) + v107;
            if ((*(v110 + 14) & 0x60) != 0)
            {
              v111 = *(v110 + 12);
              if (v111 && !*(v29 + 63) && (v113 = *(v29 + 80)) != 0 && *v113 >= v111 && (v114 = *&v113[6 * (v111 - 1) + 2], v383 = 0, v384 = v54, v380 = 0, v382 = 0u, v381 = sub_181987278, v114))
              {
                sub_181959BA0(&v380, v114);
                LOBYTE(v67) = v360;
                v112 = WORD2(v383);
              }

              else
              {
                v112 = 0;
              }

              if (!v67)
              {
                v112 &= ~2u;
              }

              if (v112)
              {
                *(v54 + v108) = 99999;
                v109 = 1;
              }
            }
          }

          ++v108;
          v106 = *(v29 + 54);
          v107 += 16;
        }

        while (v108 < v106);
      }

      while (v109);
    }

    if (*(v29 + 63) == 1)
    {
      v115 = -1;
    }

    else
    {
      v115 = 0;
    }

    *(a2 + 40) = v115;
    v116 = sub_1818D6F14(a1, v29, v54, v344);
    v347 = v116;
    v348 = v355 == 5;
    v117 = *(v29 + 16);
    if (v117)
    {
      v118 = 0;
      if (v344)
      {
        v119 = 0;
      }

      else
      {
        v119 = v116 <= 1;
      }

      v120 = !v119;
      v369 = v120;
      v12 = v357;
      v121 = v359;
      v122 = v374;
      while (1)
      {
        v133 = v117 == v122;
        v124 = v369;
        if (v133)
        {
          v124 = 1;
        }

        if ((v124 & 1) != 0 || (v125 = *(v117 + 72)) != 0 && (v383 = 0, v384 = v54, v380 = 0, v382 = 0u, v381 = sub_181987278, sub_181959BA0(&v380, v125), (v383 & 0xFFFD00000000) != 0))
        {
          v123 = *(a1 + 60) + 1;
          *(a1 + 60) = v123 + *(v117 + 96);
          if (!v123)
          {
            goto LABEL_171;
          }

          goto LABEL_172;
        }

        if (!*(v117 + 94))
        {
          goto LABEL_171;
        }

        v126 = 0;
        v127 = 8;
        while (1)
        {
          v128 = *(*(v117 + 8) + 2 * v126);
          if (v128 < 0)
          {
            break;
          }

          if ((*(v54 + v128) & 0x80000000) == 0)
          {
            goto LABEL_188;
          }

LABEL_184:
          ++v126;
          v127 += 24;
          if (v126 >= *(v117 + 94))
          {
            v12 = v357;
            v121 = v359;
            goto LABEL_171;
          }
        }

        v129 = *(*(v117 + 80) + v127);
        v383 = 0;
        v384 = v54;
        v380 = 0;
        v382 = 0u;
        v381 = sub_181987278;
        if (!v129)
        {
          goto LABEL_184;
        }

        sub_181959BA0(&v380, v129);
        if ((v383 & 0xFFFD00000000) == 0)
        {
          goto LABEL_184;
        }

LABEL_188:
        v123 = *(a1 + 60) + 1;
        *(a1 + 60) = v123 + *(v117 + 96);
        if (v355 == 11)
        {
          v130 = v348;
          if (*(v117 + 98) == 5)
          {
            v130 = 1;
          }

          v348 = v130;
        }

        v12 = v357;
        v121 = v359;
        if (!v123)
        {
LABEL_171:
          v123 = 0;
          *(v342 + v118 + 5) = 0;
        }

LABEL_172:
        v121[v118++] = v123;
        v117 = *(v117 + 40);
        v122 = v374;
        if (!v117)
        {
          v131 = v118;
          goto LABEL_196;
        }
      }
    }

    v131 = 0;
    v12 = v357;
LABEL_196:
    LODWORD(v378) = v348;
    v132 = *(a1 + 60) + 1;
    *(a1 + 60) = v132;
    v338 = v131;
    v359[v131] = v132;
    if (v348)
    {
      memset(__b, 1, v49 + 1);
    }

    if (!*(a1 + 30))
    {
      *(v367 + 268) |= 0x10u;
    }

    if (v373)
    {
      v133 = 0;
    }

    else
    {
      v133 = v347 == 0;
    }

    v134 = !v133;
    sub_18195D3A8(a1, v134, v39);
    v142 = *(v29 + 63);
    if (v142 == 1)
    {
      v143 = 0;
      v366 = 0;
      v343 = 0;
      v144 = 0;
      v333 = 0;
      v145 = a8;
      v146 = v374;
      v147 = v372;
    }

    else
    {
      v333 = v359[v338];
      v148 = *(a1 + 60);
      v143 = (v148 + 1);
      v145 = a8;
      if (v373 || v354 || v347)
      {
        v144 = v148 + 2;
        v149 = v143 + *(v29 + 54);
      }

      else
      {
        v144 = 0;
        v149 = v148 + 1;
      }

      v147 = v372;
      v146 = v374;
      if (v344)
      {
        v150 = 0;
      }

      else
      {
        v150 = v373 == 0;
      }

      v151 = v150 && v347 == 0;
      if (v151)
      {
        v152 = v149;
      }

      else
      {
        v152 = v149 + 1;
      }

      if (v151)
      {
        v153 = v143;
      }

      else
      {
        v153 = v149 + 1;
      }

      v366 = v153;
      v343 = v152 + 1;
      *(a1 + 60) = v152 + *(v29 + 54);
    }

    if (v368 == 2)
    {
      __len = *(a1 + 368);
      *(a1 + 368) = *v29;
      if (v147)
      {
        v370 = a1;
        goto LABEL_235;
      }

      sub_18198069C(a1, v29, v358, v356, v376, v361);
      v356 = 0;
      v376 = 0;
      v370 = a1;
    }

    else
    {
      __len = 0;
      v370 = 0;
      if (v147)
      {
        goto LABEL_235;
      }
    }

    if (sub_18195ECC4(v379, v358, v136, v137, v138, v139, v140, v141))
    {
LABEL_233:
      a4 = v358;
      a3 = v371;
      goto LABEL_486;
    }

    v142 = *(v29 + 63);
    v145 = a8;
    v146 = v374;
    v147 = v372;
LABEL_235:
    if (v142 == 1)
    {
      a3 = v371;
      a4 = v358;
      sub_181985AD8(a1, a2, v29, v371, v365, v54, v358, v355);
LABEL_486:
      if (v370)
      {
        *(v370 + 368) = __len;
      }

      goto LABEL_488;
    }

    v336 = *(a1 + 72) - 1;
    *(a1 + 72) = v336;
    if ((*(v12 + 52) & 1) == 0 || *(a1 + 160) || *(a1 + 30))
    {
      v334 = 0;
    }

    else
    {
      v334 = 0;
      if (!v145 && !*(a1 + 40))
      {
        v208 = *(a1 + 60);
        v209 = (v208 + 1);
        *(a1 + 60) = v209;
        v334 = v208 + 1;
        sub_1818A2964(v367, 71, 0, v209, 0, v139, v140, v141);
        v147 = v372;
        v146 = v374;
        v145 = a8;
      }
    }

    v337 = v143;
    if (!v147 && (*(v29 + 48) & 0x80) == 0)
    {
      sub_1818A2964(v367, 75, 0, v333, v143, v139, v140, v141);
      v154 = *(a1 + 56);
      *(a1 + 56) = v154 + 1;
      v335 = v154;
      v159 = sub_1818A2964(v367, 117, v154, 0, v333, v155, v156, v157);
      v324 = 0;
      v332 = 0;
      v330 = 0;
      if (!a8)
      {
        goto LABEL_283;
      }

LABEL_256:
      sub_1818DD640(a1, v358, v336, 16, v158, v139, v140, v141);
      v168 = 0;
      v331 = 0;
      v169 = 1;
      LODWORD(v321) = v170;
      LODWORD(v322) = v170;
      goto LABEL_257;
    }

    if (v146)
    {
      v160 = *(v146 + 94);
    }

    else
    {
      v160 = 0;
    }

    v161 = v361;
    v162 = v360;
    v163 = *(a1 + 60);
    v164 = (v163 + 1);
    v332 = v160;
    v165 = v160;
    v158 = (v163 + v165);
    v330 = v147 + v158 + 1;
    *(a1 + 60) = v330;
    v329 = v165;
    if (v145)
    {
      v335 = 0;
      if (!v147)
      {
        v159 = 0;
        v324 = v163 + 1;
        goto LABEL_256;
      }

      v166 = v351;
    }

    else
    {
      v327 = v144;
      if (v368 == 2)
      {
        v167 = *(v29 + 54);
      }

      else
      {
        v167 = 0;
      }

      v349 = v147 + v165 + v167;
      v176 = *(a1 + 56);
      *(a1 + 56) = v176 + 1;
      v335 = v176;
      v324 = v164;
      if (v146)
      {
        sub_1818A2964(v367, 75, 0, v164, v158, v139, v140, v141);
        v320 = sub_1818A2964(v367, 117, v176, v349, 0, v177, v178, v179);
        v180 = sub_1819572CC(a1, v146);
        if (v180)
        {
          *(v180 + 8) = v349;
          sub_181957564(v367, v180, -8);
        }

        v143 = v143;
        v144 = v327;
        v159 = v320;
      }

      else
      {
        v159 = sub_1818A2964(v367, 117, v176, v349, 0, v139, v140, v141);
        v143 = v143;
        v144 = v327;
      }

      if (!v372)
      {
        v348 = v378;
LABEL_283:
        v182 = 4;
        if (!v373 && !*(a1 + 30) && !v347 && !v344 && !v348 && (!v358 || (v358[6] & 0x40) == 0))
        {
          v182 = 12;
        }

        v168 = sub_1818B507C(a1, a2, v358, 0, 0, 0, v182, v353);
        if (!v168)
        {
          goto LABEL_233;
        }

        v322 = *(v168 + 40);
        v321 = HIDWORD(v322);
        v183 = *(v168 + 66);
        v331 = *(v168 + 68) & 1;
        v169 = 1;
        if (v183 != 1)
        {
          v184 = *(a1 + 152);
          if (!v184)
          {
            v184 = a1;
          }

          *(v184 + 32) = 1;
          v171 = v332;
          if (v183 == 2)
          {
            v169 = 2;
            if ((v322 & 0x8000000000000000) == 0 && v361 != HIDWORD(v322))
            {
              v169 = 2 * (__b[HIDWORD(v322) - v351] == 0);
            }
          }

          else
          {
            v169 = v183;
          }

          goto LABEL_258;
        }

LABEL_257:
        v171 = v332;
LABEL_258:
        v339 = v169;
        v323 = v168;
        v332 = v171;
        if ((*(v29 + 48) & 0x80) != 0)
        {
          v319 = v159;
          v329 = v171;
          v173 = v374;
          if (v329 >= 1)
          {
            v174 = 0;
            v175 = v324;
            do
            {
              sub_181959FA4(v367, v29, v361, *(*(v173 + 8) + v174), v175, v139, v140, v141);
              v173 = v374;
              v175 = (v175 + 1);
              v174 += 2;
            }

            while (2 * v329 != v174);
          }

          v172 = v339;
          if (v339)
          {
            v135 = v319;
            if (v319)
            {
              sub_1818B6C00(v367, v319);
              v172 = v339;
            }

            v159 = 0;
            v164 = v324;
            v330 = v324;
          }

          else
          {
            v188 = *(v173 + 32);
            if (!v188)
            {
              v188 = sub_181978718(v12, v374);
            }

            v189 = sub_1818A2964(v367, 97, v324, v329, v330, v139, v140, v141);
            sub_1818B49F8(v367, v189, v188, v329);
            sub_181910A18(v367, 138, v335, v330, v324, v329, v190, v191);
            v164 = v324;
            v159 = 0;
            v172 = 0;
            v329 = 0;
          }

          v145 = a8;
          v161 = v361;
          v162 = v360;
          v147 = v372;
          LODWORD(v143) = v337;
          v166 = v351;
        }

        else
        {
          sub_1818A2964(v367, 135, v361, v143, 0, v139, v140, v141);
          v172 = v339;
          if (v339)
          {
            if (v159)
            {
              sub_1818B6C00(v367, v159);
              v172 = v339;
              v159 = 0;
            }
          }

          else
          {
            v187 = *(a1 + 60) + 1;
            *(a1 + 60) = v187;
            v359[v338] = v187;
            sub_1818A2964(v367, 128, v335, v333, v143, v139, v140, v141);
            v159 = 0;
            v172 = 0;
          }

          v329 = 0;
          v145 = a8;
          v161 = v361;
          v162 = v360;
          v147 = v372;
          v166 = v351;
          v164 = v324;
        }

        goto LABEL_310;
      }

      sub_18198678C(a1, v335, v374, v371, a2, v358, v356, v376, v318);
      v147 = v372;
      v161 = v361;
      if (v368 == 2)
      {
        v161 = v335;
      }

      v145 = a8;
      v162 = v360;
      v166 = v351;
      v164 = v324;
    }

    v172 = 0;
    v181 = *(a1 + 152);
    if (!v181)
    {
      v181 = a1;
    }

    v159 = 1;
    *(v181 + 32) = 1;
    LODWORD(v321) = v181;
    LODWORD(v322) = v181;
    v323 = 0;
    v330 = v164;
    v331 = 1;
LABEL_310:
    v362 = v161;
    v340 = v172;
    v350 = v159;
    if (v145)
    {
      __ba = 0;
      v352 = v336;
      v192 = v371;
      v193 = v366;
      goto LABEL_356;
    }

    if (!v147 && v172 != 2)
    {
      v194 = v164;
      sub_1818B9E4C(v323, v135, v136, v164, v166, v139, v140, v141);
      LODWORD(v164) = v194;
      v172 = v340;
      v166 = v351;
      v161 = v362;
    }

    v195 = v374;
    if (v368 != 2)
    {
      if (!v172)
      {
        goto LABEL_326;
      }

      if ((v322 & 0x80000000) == 0)
      {
        __b[v322 - v166] = 0;
      }

      if ((v321 & 0x80000000) == 0)
      {
        __b[v321 - v166] = 0;
      }

      if (v172 == 2 && (v49 + (~v321 >> 31)) > 0)
      {
        v325 = v164;
        v196 = v166;
        v197 = sub_1818A2964(v367, 15, 0, 0, 0, v139, v140, v141);
        v198 = v196;
        v159 = v350;
        sub_1818D348C(a1, v29, 113, 0, v198, __b, &v380, &v377);
        LODWORD(v164) = v325;
        v195 = v374;
        v161 = v362;
        if (v197)
        {
          v199 = *(v367 + 144);
          if (v199 - 1 == v197)
          {
            *(v367 + 144) = v197;
          }

          else
          {
            if (*(*v367 + 103))
            {
              v314 = &byte_1EA831A58;
            }

            else
            {
              v314 = (*(v367 + 136) + 40 * v197);
            }

            *(v314 + 2) = v199;
            v161 = v362;
            v195 = v374;
            v159 = v350;
            LODWORD(v164) = v325;
          }
        }
      }

      else
      {
LABEL_326:
        v200 = v164;
        sub_1818D348C(a1, v29, 113, 0, v166, __b, &v380, &v377);
        LODWORD(v164) = v200;
        v195 = v374;
        v161 = v362;
      }

      LODWORD(v143) = v337;
      v172 = v340;
    }

    if (v172)
    {
      v192 = v371;
      v193 = v366;
      if (v322 != v161 && v321 != v161)
      {
        sub_181910A18(v367, 28, v362, v336, v330, v329, v140, v141);
        v172 = v340;
        v195 = v374;
      }

      v201 = v336;
      if (v172 != 1)
      {
        v201 = *(a1 + 72) - 1;
        *(a1 + 72) = v201;
      }

      v352 = v201;
      if (v195)
      {
        v202 = v330;
      }

      else
      {
        v202 = v143;
      }

      sub_1818A2964(v367, 51, v202, v336, 0, v139, v140, v141);
      __ba = 0;
      v162 = v360;
      v147 = v372;
LABEL_356:
      if (v162)
      {
        if (v147)
        {
          v219 = v367;
          sub_1818A2964(v367, 94, v335, v363, v193, v139, v140, v141);
        }

        else
        {
          sub_181956EF4(a1, v365, v193);
          v219 = v367;
        }

        sub_1818A2964(v219, 13, v193, 0, 0, v220, v221, v222);
      }

      if (v373 || v354 || v347)
      {
        if (v347)
        {
          v223 = sub_181980FF0(a1, v29, v136, v164, v166, v139, v140, v141);
        }

        else
        {
          v223 = 0;
        }

        v224 = sub_181980E20(a1, v373, v192, 0, 3u, v29, v355);
        v228 = v374;
        v229 = v360;
        if (*(v29 + 54) >= 1)
        {
          v230 = 0;
          v231 = 0;
          v232 = v224 | v223;
          v233.i64[0] = 0x1000100010001;
          v233.i64[1] = 0x1000100010001;
          while (1)
          {
            v234 = *(v29 + 8);
            v235 = v231;
            if ((v231 & 0x8000) == 0 && (*(v29 + 48) & 0x20) != 0)
            {
              break;
            }

LABEL_395:
            if (v232 != -1)
            {
              v256 = *(v234 + 16 * v231 + 14);
              if (v231 > 0x1F)
              {
                if ((v256 & 1) == 0)
                {
LABEL_400:
                  sub_1818A2964(v367, 75, 0, (v144 + v235), 0, v225, v226, v227);
                  goto LABEL_370;
                }
              }

              else if (!((1 << v231) & v232 | v256 & 1))
              {
                goto LABEL_400;
              }
            }

            sub_181959FA4(v367, v29, v362, v231, (v144 + v235), v225, v226, v227);
LABEL_370:
            ++v231;
            --v230;
            v228 = v374;
            v229 = v360;
            v233.i64[0] = 0x1000100010001;
            v233.i64[1] = 0x1000100010001;
            if (v231 >= *(v29 + 54))
            {
              goto LABEL_401;
            }
          }

          if (!v231)
          {
            v237 = 0;
LABEL_392:
            if ((*(v234 + 16 * ((v231 << 16) >> 16) + 14) & 0x20) != 0)
            {
              v235 = v231 - v237 + *(v29 + 56);
            }

            else
            {
              v235 = v237;
            }

            goto LABEL_395;
          }

          if (v231 >= 5)
          {
            if (v231 >= 0x11)
            {
              v238 = 16;
              if ((v231 & 0xF) != 0)
              {
                v238 = v231 & 0xF;
              }

              v236 = v231 - v238;
              v239 = (v234 + 142);
              v240 = 0uLL;
              v241 = v231;
              v242 = 0uLL;
              do
              {
                v225 = (v239 + 24);
                v226 = (v239 + 32);
                v227 = (v239 + 40);
                v243.i16[0] = *(v239 - 64);
                v243.i16[1] = *(v239 - 56);
                v243.i16[2] = *(v239 - 48);
                v243.i16[3] = *(v239 - 40);
                v243.i16[4] = *(v239 - 32);
                v243.i16[5] = *(v239 - 24);
                v243.i16[6] = *(v239 - 16);
                v243.i16[7] = *(v239 - 8);
                v244.i16[0] = *v239;
                v244.i16[1] = v239[8];
                v244.i16[2] = v239[16];
                v244.i16[3] = v239[24];
                v244.i16[4] = v239[32];
                v244.i16[5] = v239[40];
                v244.i16[6] = v239[48];
                v244.i16[7] = v239[56];
                v240 = vaddq_s16(vbicq_s8(v233, vshrq_n_u16(v243, 5uLL)), v240);
                v242 = vaddq_s16(vbicq_s8(v233, vshrq_n_u16(v244, 5uLL)), v242);
                v241 -= 16;
                v239 += 128;
              }

              while (v238 != v241);
              v237 = vaddvq_s16(vaddq_s16(v242, v240));
              if (v238 < 5)
              {
                goto LABEL_389;
              }
            }

            else
            {
              v237 = 0;
              v236 = 0;
            }

            v245 = 4;
            if ((v231 & 3) != 0)
            {
              v245 = v231 & 3;
            }

            v246 = v234 + 16 * v236;
            v247 = v236 + v230;
            v236 = v231 - v245;
            v248 = v237;
            v249 = (v246 + 46);
            v250 = v245 + v247;
            do
            {
              v251.i16[0] = *(v249 - 16);
              v251.i16[1] = *(v249 - 8);
              v251.i16[2] = *v249;
              v251.i16[3] = v249[8];
              v248 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v251, 5uLL)), v248);
              v249 += 32;
              v250 += 4;
            }

            while (v250);
            v237 = vaddv_s16(v248);
          }

          else
          {
            v236 = 0;
            v237 = 0;
          }

LABEL_389:
          v252 = v236 + v230;
          v253 = (v234 + 16 * v236 + 14);
          do
          {
            v254 = *v253;
            v253 += 8;
            v237 += ((v254 >> 5) & 1) == 0;
          }

          while (!__CFADD__(v252++, 1));
          goto LABEL_392;
        }

LABEL_401:
        v192 = v371;
        if (!v228 && !v229)
        {
          sub_1818A2964(v367, 80, v337, v366, 0, v225, v226, v227);
        }
      }

      v364 = sub_181980E20(a1, v373, v192, 1u, 1u, v29, v355);
      LODWORD(v262) = *(v29 + 54);
      if (v262 >= 1)
      {
        v263 = 0;
        v264 = 14;
        v265 = v343;
        do
        {
          if (v263 == *(v29 + 52))
          {
            v266 = *(v367 + 144);
            if (*(v367 + 148) <= v266)
            {
              sub_18194C8AC(v367, 75, 0, v265, 0, v259, v260, v261);
            }

            else
            {
              *(v367 + 144) = v266 + 1;
              v267 = *(v367 + 136) + 40 * v266;
              *v267 = 75;
              *(v267 + 8) = v265;
              *(v267 + 12) = 0;
              *(v267 + 28) = 0;
              *(v267 + 20) = 0;
              *(v267 + 36) = 0;
            }

            goto LABEL_407;
          }

          v268 = *(*(v29 + 8) + v264);
          if ((v268 & 0x60) != 0)
          {
            LODWORD(v265) = v265 + (v268 << 26 >> 31);
          }

          else
          {
            v269 = *(v54 + v263);
            if (v269 < 0)
            {
              if (v263 > 0x1F || (v378 & 0x100000000) == 0 || ((v364 >> v263) & 1) != 0)
              {
                sub_181959FA4(v367, v29, v362, v263, v265, v259, v260, v261);
                v331 = 0;
                goto LABEL_407;
              }

              v271 = v367;
              v272 = 75;
              v273 = 0;
              v270 = v265;
              v274 = 0;
            }

            else
            {
              if (!v350)
              {
                sub_181956EF4(a1, *&v192[6 * v269 + 2], v265);
                goto LABEL_407;
              }

              if (v368 != 2)
              {
                LODWORD(v262) = v332;
              }

              v270 = (v269 + v262);
              v271 = v367;
              v272 = 94;
              v273 = v335;
              v274 = v265;
            }

            sub_1818A2964(v271, v272, v273, v270, v274, v259, v260, v261);
          }

LABEL_407:
          ++v263;
          v265 = (v265 + 1);
          v262 = *(v29 + 54);
          v264 += 16;
        }

        while (v263 < v262);
      }

      v275 = v337;
      if ((*(v29 + 48) & 0x60) != 0)
      {
        sub_181986E24(a1, v343, v29, v257, v258, v259, v260, v261);
      }

      v12 = v357;
      a4 = v358;
      a3 = v371;
      v276 = v367;
      if ((v378 & 0x100000000) != 0)
      {
        sub_18195E17C(v367, v29, v343, v257, v258, v259, v260, v261);
        sub_1819813E4(a1, v373, 130, v371, 1, v29, v337, v355, v352);
        if (v368 == 2)
        {
LABEL_472:
          if (v334)
          {
            sub_1818A2964(v276, 86, v334, 1, 0, v259, v260, v261);
          }

          if (v373)
          {
            sub_1819813E4(a1, v373, 130, a3, 2, v29, v275, v355, v352);
          }

          if (v340 != 1)
          {
            sub_181958CD8(v276, v352);
            if (v340 == 2)
            {
              sub_1818B9E4C(v323, v300, v301, v302, v303, v304, v305, v306);
            }

            else
            {
              sub_1818A2964(v276, 39, v335, __ba, 0, v304, v305, v306);
            }
          }

          sub_181958CD8(v276, v336);
          if (!*(a1 + 30) && !(a8 | *(a1 + 160)) && *(a1 + 144))
          {
            sub_18198590C(a1, v307, v308, v309, v310, v311, v312, v313);
          }

          if (v334)
          {
            sub_181980A28(v276, v334, "rows updated", v309, v310, v311, v312, v313);
          }

          goto LABEL_486;
        }

        if (v374)
        {
          sub_181910A18(v367, 28, v362, v352, v330, v329, v260, v261);
        }

        else
        {
          sub_1818A2964(v367, 31, v362, v352, v337, v259, v260, v261);
        }

        v279 = *(v29 + 54);
        if (v279 >= 1)
        {
          v280 = 0;
          v281 = 14;
          v282 = v343;
          do
          {
            v283 = *(*(v29 + 8) + v281);
            if ((v283 & 0x60) != 0)
            {
              LODWORD(v282) = v282 + (v283 << 26 >> 31);
            }

            else if ((*(v54 + v280) & 0x80000000) != 0 && v280 != *(v29 + 52))
            {
              sub_181959FA4(v367, v29, v362, v280, v282, v259, v260, v261);
              LOWORD(v279) = *(v29 + 54);
            }

            ++v280;
            v282 = (v282 + 1);
            v281 += 16;
          }

          while (v280 < v279);
        }

        a3 = v371;
        v276 = v367;
        v275 = v337;
        if ((*(v29 + 48) & 0x60) != 0)
        {
          sub_181986E24(a1, v343, v29, v277, v278, v259, v260, v261);
        }
      }

      if (v368 != 2)
      {
        HIDWORD(v318) = v352;
        LOBYTE(v318) = v355;
        sub_1818D3738(a1, v29, v359, v362, v353, v366, v275, v344, v318, &v378, v54, 0);
        if (v378 || v344)
        {
          if (v374)
          {
            sub_181910A18(v276, 28, v362, v352, v330, v329, v285, v286);
          }

          else
          {
            sub_1818A2964(v276, 31, v362, v352, v275, v284, v285, v286);
          }
        }

        if (v347)
        {
          sub_1818D7680(a1, v29, v275, 0, v54, v344, v285, v286);
        }

        sub_1819816BC(a1, v29, v362, v353, v359, -1);
        if (v331)
        {
          sub_1818A2964(v276, 143, v362, 0, 0, v287, v288, v289);
        }

        if (v344)
        {
          v290 = 0;
        }

        else
        {
          v290 = v347 <= 1;
        }

        if (v290)
        {
          v291 = 68;
        }

        else
        {
          v291 = 4;
        }

        sub_1818A2964(v276, 130, v362, v291, v366, v287, v288, v289);
        v294 = v340;
        if (v340 == 2)
        {
          v295 = *(v276 + 144);
          if (v295 >= 1)
          {
            *(*(v276 + 136) + 40 * v295 - 38) = 2;
          }
        }

        if (!*(a1 + 30))
        {
          sub_181957564(v276, v29, -5);
          v294 = v340;
        }

        if (v347)
        {
          sub_1818D7680(a1, v29, 0, v366, v54, v344, v292, v293);
          if (v340 == 2)
          {
            v296 = 6;
          }

          else
          {
            v296 = 4;
          }

          sub_1818D80A8(a1, v29, v362, v353, v366, v359, v296, 0, 0);
          v275 = v337;
          sub_18198187C(a1, v29, a3, v337, v54, v344, v297, v298);
        }

        else
        {
          if (v294 == 2)
          {
            v299 = 6;
          }

          else
          {
            v299 = 4;
          }

          sub_1818D80A8(a1, v29, v362, v353, v366, v359, v299, 0, 0);
          v275 = v337;
        }
      }

      goto LABEL_472;
    }

    v328 = v144;
    v203 = v159 ^ 1;
    if (v195)
    {
      v203 = 0;
    }

    v204 = v159;
    v192 = v371;
    if ((v203 & 1) == 0)
    {
      v326 = v164;
      v205 = (*(a1 + 72) - 1);
      *(a1 + 72) = v205;
      sub_1818A2964(v367, 36, v335, v336, 0, v139, v140, v141);
      v193 = v366;
      v352 = v205;
      __ba = *(v367 + 144);
      if (v204)
      {
        if (v368 != 2)
        {
          if (v374)
          {
            v206 = v332;
            if (v206 >= 1)
            {
              v207 = 0;
              do
              {
                sub_1818A2964(v367, 94, v335, v207, v326 + v207, v139, v140, v141);
                v207 = (v207 + 1);
              }

              while (v206 != v207);
            }

            sub_181910A18(v367, 28, v362, v352, v326, v206, v140, v141);
            v192 = v371;
          }

          else
          {
            sub_1818A2964(v367, 135, v335, v337, 0, v139, v140, v141);
            sub_1818A2964(v367, 31, v362, v205, v337, v315, v316, v317);
            v192 = v371;
          }

          goto LABEL_352;
        }
      }

      else
      {
        sub_1818A2964(v367, 134, v335, v330, 0, v139, v140, v141);
        sub_181910A18(v367, 28, v362, v205, v330, 0, v217, v218);
      }

      v162 = v360;
      v147 = v372;
      goto LABEL_355;
    }

    sub_1818A2964(v367, 36, v335, v336, 0, v139, v140, v141);
    v210 = (*(a1 + 72) - 1);
    *(a1 + 72) = v210;
    __ba = sub_1818A2964(v367, 135, v335, v337, 0, v211, v212, v213);
    v352 = v210;
    sub_1818A2964(v367, 31, v362, v210, v337, v214, v215, v216);
LABEL_352:
    v162 = v360;
    v147 = v372;
    v193 = v366;
LABEL_355:
    v144 = v328;
    goto LABEL_356;
  }

  v66 = 0;
  v67 = 0;
  v354 = 0;
  v68 = (v371 + 2);
  v69 = v29 + 104;
  v363 = -1;
  v70 = v374;
  v71 = v372;
  v365 = 0;
  while (2)
  {
    if (!v71)
    {
      v72 = v67;
      v73 = sub_18195ECC4(v379, *(v68 + 24 * v66), v64, v65, v67, v68, v69, 24);
      v69 = v29 + 104;
      v68 = (v371 + 2);
      v71 = v372;
      v67 = v72;
      v70 = v374;
      if (v73)
      {
        goto LABEL_302;
      }
    }

    v74 = v68 + 24 * v66;
    v75 = *(v74 + 8);
    if (v75 && (v76 = *v75, *v75))
    {
      v77 = 0;
      v78 = v75 + 1;
      do
      {
        v77 += byte_181A20298[v76];
        v79 = *v78++;
        v76 = v79;
      }

      while (v79);
    }

    else
    {
      v77 = 0;
    }

    v80 = *(v29 + 8);
    v81 = *(v29 + 54);
    v82 = *(v69 + (v77 & 0xF));
    v83 = v80 + 16 * v82;
    if (*(v83 + 11) == v77)
    {
      v84 = *v83;
      for (j = *(v74 + 8); ; ++j)
      {
        if (*v84 == *j)
        {
          if (!*v84)
          {
LABEL_105:
            if (v82 == *(v29 + 52))
            {
              v365 = *v74;
              v90 = v82;
              v67 = 1;
              v363 = v66;
            }

            else
            {
              v90 = v82;
              v91 = *(v80 + 16 * v82 + 14);
              if (v70 && (v91 & 1) != 0)
              {
                v354 = 1;
              }

              else if ((v91 & 0x60) != 0)
              {
                sub_181910730(a1, "cannot UPDATE generated column %s", v64, v65, v67, v68, v69, 24, *(v80 + 16 * v82));
                goto LABEL_302;
              }
            }

            *(v54 + v90) = v66;
            v64 = *v29;
            if ((v82 & 0x80000000) != 0)
            {
              goto LABEL_130;
            }

            v65 = *(v80 + 16 * v90);
            goto LABEL_131;
          }
        }

        else if (byte_181A20298[*v84] != byte_181A20298[*j])
        {
          break;
        }

        ++v84;
      }
    }

    v82 = 0;
    if (v81 <= 1)
    {
      v86 = 1;
    }

    else
    {
      v86 = v81;
    }

    do
    {
      v87 = v80 + 16 * v82;
      if (*(v87 + 11) == v77)
      {
        v88 = *v87;
        for (k = *(v74 + 8); ; ++k)
        {
          if (*v88 == *k)
          {
            if (!*v88)
            {
              goto LABEL_105;
            }
          }

          else if (byte_181A20298[*v88] != byte_181A20298[*k])
          {
            break;
          }

          ++v88;
        }
      }

      ++v82;
    }

    while (v82 != v86);
    if (v70)
    {
LABEL_247:
      sub_181910730(a1, "no such column: %s", v64, v65, v67, v68, v69, 24, *(v74 + 8));
      *(a1 + 43) |= 8u;
      goto LABEL_302;
    }

    v92 = *(v74 + 8);
    for (m = "_ROWID_"; *v92 != *m; ++m)
    {
      if (byte_181A20298[*v92] != byte_181A20298[*m])
      {
        v94 = *(v74 + 8);
        for (n = "ROWID"; ; ++n)
        {
          if (*v94 == *n)
          {
            if (!*v94)
            {
              goto LABEL_129;
            }
          }

          else if (byte_181A20298[*v94] != byte_181A20298[*n])
          {
            v96 = *(v74 + 8);
            for (ii = "OID"; ; ++ii)
            {
              if (*v96 == *ii)
              {
                if (!*v96)
                {
                  goto LABEL_129;
                }
              }

              else if (byte_181A20298[*v96] != byte_181A20298[*ii])
              {
                goto LABEL_247;
              }

              ++v96;
            }
          }

          ++v94;
        }
      }

LABEL_116:
      ++v92;
    }

    if (*v92)
    {
      goto LABEL_116;
    }

LABEL_129:
    v365 = *v74;
    v64 = *v29;
    v67 = 1;
    LODWORD(v82) = -1;
    v363 = v66;
LABEL_130:
    v65 = "ROWID";
LABEL_131:
    v98 = *a1;
    v99 = *(*a1 + 528);
    if (!v99 || *(v98 + 197) || *(a1 + 302))
    {
LABEL_79:
      if (++v66 >= *v371)
      {
        goto LABEL_140;
      }

      continue;
    }

    break;
  }

  v100 = v67;
  v101 = v99(*(v98 + 536), 23, v64, v65, *(*(v357 + 32) + 32 * v39), *(a1 + 368));
  if (v101 == 1)
  {
    v185 = "not authorized";
    v186 = 23;
  }

  else
  {
    if ((v101 & 0xFFFFFFFD) == 0)
    {
      if (v101 == 2)
      {
        *(v54 + v82) = -1;
      }

      v70 = v374;
      v67 = v100;
      v71 = v372;
      v68 = (v371 + 2);
      v69 = v29 + 104;
      goto LABEL_79;
    }

    v186 = 1;
    v185 = "authorizer malfunction";
  }

  sub_181910730(a1, v185, v64, v65, v102, v103, v104, v105, v318);
  *(a1 + 24) = v186;
LABEL_302:
  v12 = v357;
LABEL_303:
  a4 = v358;
  a3 = v371;
LABEL_488:
  sub_181929C84(v12, v54);
  v8 = v356;
LABEL_2:
  result = sub_1818BB5B0(v12, a2);
  if (a3)
  {
    result = sub_18194E5B8(v12, a3);
  }

  if (a4)
  {
    result = sub_1819439E0(v12, a4);
  }

  if (v8)
  {
    result = sub_18194E5B8(v12, v8);
  }

  if (v376)
  {
    return sub_1819439E0(v12, v376);
  }

  return result;
}

void *sub_1818EA08C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  *v220 = 0;
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v216 = 0u;
  v12 = *a1;
  if (*(a1 + 52))
  {
    goto LABEL_2;
  }

  v16 = (a2 + 72);
  if (*(a2 + 35))
  {
    v17 = *v16;
    v18 = *(v12 + 32);
    if (v17)
    {
      v19 = (v18 + 24);
      v20 = 0xFFFFFFFF00000000;
      do
      {
        v21 = *v19;
        v19 += 4;
        v20 += 0x100000000;
      }

      while (v21 != v17);
      v22 = v20 >> 32;
    }

    else
    {
      v22 = -32768;
    }

    v16 = (v18 + 32 * v22);
  }

  v29 = sub_1818CA520(a1, 0, *(a2 + 8), *v16, a5, a6, a7, a8);
  v30 = *(a2 + 24);
  if (v30)
  {
    v31 = *a1;
    if (*(*a1 + 824) || (v32 = *(v30 + 44) - 1, (*(v30 + 44) = v32) == 0))
    {
      sub_18194E094(v31, v30);
    }
  }

  *(a2 + 24) = v29;
  *(a2 + 33) |= 0x400u;
  if (!v29)
  {
    goto LABEL_2;
  }

  ++*(v29 + 11);
  if ((*(a2 + 33) & 2) != 0)
  {
    v33 = v29[2];
    if (!v33)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v34 = *v33;
      for (i = *(a2 + 48); *v34 == *i; ++i)
      {
        if (!*v34)
        {
          *(a2 + 56) = v33;
          goto LABEL_34;
        }

LABEL_28:
        ++v34;
      }

      if (byte_181A20298[*v34] == byte_181A20298[*i])
      {
        goto LABEL_28;
      }

      v33 = *(v33 + 40);
      if (!v33)
      {
LABEL_33:
        sub_181910730(a1, "no such index: %s", v23, v24, v25, v26, v27, v28, *(a2 + 48));
        v13 = 0;
        *(a1 + 43) |= 8u;
        goto LABEL_3;
      }
    }
  }

LABEL_34:
  if ((v29[11] || (v46 = *(*(*a1 + 32) + 56)) != 0 && *(v46 + 64)) && !*(a1 + 42))
  {
    v42 = sub_181980B5C(a1, v29, 129, 0, 0, v26, v27, v28);
    v44 = v29 + 63;
    v43 = *(v29 + 63);
    if (v42)
    {
      v45 = 1;
      goto LABEL_42;
    }

    v47 = sub_1818D6F14(a1, v29, 0, 0);
  }

  else
  {
    v44 = v29 + 63;
    v43 = *(v29 + 63);
    v47 = sub_1818D6F14(a1, v29, 0, 0);
    v42 = 0;
  }

  v45 = v47 != 0;
LABEL_42:
  v215 = v45;
  if (v43 == 2)
  {
    v48 = 1;
    goto LABEL_45;
  }

  a3 = sub_18197FEFC(a1, a2, a3, a4, v8, "DELETE", v40, v41);
  a4 = 0;
  v8 = 0;
  v48 = 0;
  if (*v44 != 1)
  {
LABEL_45:
    if (*(v29 + 27) > 0)
    {
      goto LABEL_47;
    }
  }

  if (sub_181960D84(a1, v29, v36, v37, v38, v39, v40, v41))
  {
LABEL_2:
    v13 = 0;
    goto LABEL_3;
  }

LABEL_47:
  if (sub_181980528(a1, v29, v42, v37, v38, v39, v40, v41))
  {
    goto LABEL_2;
  }

  v199 = v42;
  v56 = v29[12];
  v57 = *(v12 + 32);
  if (v56)
  {
    v58 = (v57 + 24);
    LODWORD(v59) = -1;
    do
    {
      v60 = *v58;
      v58 += 4;
      v59 = (v59 + 1);
    }

    while (v60 != v56);
  }

  else
  {
    v59 = 4294934528;
  }

  v61 = *a1;
  v62 = *(*a1 + 528);
  if (v62 && !*(v61 + 197) && !*(a1 + 302))
  {
    v102 = v62(*(v61 + 536), 9, *v29, 0, *(v57 + 32 * v59), *(a1 + 368));
    if (v102 == 1)
    {
      v103 = 23;
      v104 = "not authorized";
    }

    else
    {
      if ((v102 & 0xFFFFFFFD) == 0)
      {
        v208 = v102;
        goto LABEL_58;
      }

      v103 = 1;
      v104 = "authorizer malfunction";
    }

    sub_181910730(a1, v104, v50, v51, v52, v53, v54, v55, v187);
    v13 = 0;
    *(a1 + 24) = v103;
    goto LABEL_3;
  }

  v208 = 0;
LABEL_58:
  v213 = v48;
  v63 = *(a1 + 56);
  v64 = v63 + 1;
  *(a1 + 56) = v63 + 1;
  v207 = v63;
  *(a2 + 36) = v63;
  v65 = v29[2];
  if (v65)
  {
    v66 = 0;
    v67 = v64;
    do
    {
      ++v67;
      ++v66;
      v65 = *(v65 + 40);
    }

    while (v65);
    *(a1 + 56) = v67;
  }

  else
  {
    v66 = 0;
  }

  v200 = v64;
  if (v213)
  {
    v206 = *(a1 + 368);
    *(a1 + 368) = *v29;
    v211 = a1;
  }

  else
  {
    v206 = 0;
    v211 = 0;
  }

  v212 = sub_1818E7DFC(a1, v49, v50, v51, v52, v53, v54, v55);
  if (!v212)
  {
    goto LABEL_79;
  }

  v202 = v44;
  v203 = v8;
  if (!*(a1 + 30))
  {
    *(v212 + 268) |= 0x10u;
  }

  if (*(a1 + 152))
  {
    v74 = *(a1 + 152);
  }

  else
  {
    v74 = a1;
  }

  v75 = *(v74 + 116);
  v76 = 1 << v59;
  if ((v75 & (1 << v59)) == 0)
  {
    *(v74 + 116) = v75 | v76;
    if (v59 == 1)
    {
      sub_1819108F4(v74);
    }
  }

  *(v74 + 112) |= v76;
  *(v74 + 32) |= v215;
  if (v213)
  {
    sub_18198069C(a1, v29, a3, a4, v203, v207);
    v8 = 0;
    a4 = 0;
    v220[0] = v207;
    v220[1] = v207;
  }

  else
  {
    v8 = v203;
  }

  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  *&v216 = a1;
  *(&v216 + 1) = a2;
  if (sub_18195ECC4(&v216, a3, v68, v69, v70, v71, v72, v73))
  {
    goto LABEL_79;
  }

  if ((*(v12 + 52) & 1) == 0 || *(a1 + 30) || *(a1 + 160) || *(a1 + 40))
  {
    v198 = 0;
  }

  else
  {
    v164 = *(a1 + 60);
    v165 = (v164 + 1);
    *(a1 + 60) = v165;
    v198 = v164 + 1;
    sub_1818A2964(v212, 71, 0, v165, 0, v77, v78, v79);
  }

  if (v208)
  {
    v81 = 0;
  }

  else
  {
    v81 = a3 == 0;
  }

  v82 = !v81;
  if (((v82 | v215) & 1) == 0 && *v202 != 1 && !*(v12 + 360))
  {
    sub_181957014(a1, v59, *(v29 + 10), 1, *v29);
    if ((v29[6] & 0x80) == 0)
    {
      if (v198)
      {
        v144 = v198;
      }

      else
      {
        v144 = 0xFFFFFFFFLL;
      }

      v145 = v8;
      v146 = *v29;
      v147 = sub_1818A2964(v212, 145, *(v29 + 10), v59, v144, v141, v142, v143);
      v148 = v146;
      v8 = v145;
      sub_1818B49F8(v212, v147, v148, 0xFFFFFFFF);
    }

    v149 = v29[2];
    if (v149)
    {
      v205 = v8;
      if (v198)
      {
        v150 = v198;
      }

      else
      {
        v150 = 0xFFFFFFFFLL;
      }

      do
      {
        if ((*(v149 + 99) & 3) != 2 || (v151 = v150, (v29[6] & 0x80) == 0))
        {
          v151 = 0;
        }

        sub_1818A2964(v212, 145, *(v149 + 88), v59, v151, v141, v142, v143);
        v149 = *(v149 + 40);
      }

      while (v149);
      v13 = 0;
      v8 = v205;
    }

    else
    {
      v13 = 0;
    }

    v80 = v211;
    v121 = v198;
    goto LABEL_203;
  }

  if (BYTE8(v218) & 0x40 | v215)
  {
    v83 = 20;
  }

  else
  {
    v83 = 28;
  }

  v209 = v83;
  if ((v29[6] & 0x80) != 0)
  {
    v87 = v29[2];
    for (j = v198; v87; v87 = *(v87 + 40))
    {
      if ((*(v87 + 99) & 3) == 2)
      {
        break;
      }
    }

    v88 = *(v87 + 94);
    v89 = *(a1 + 56);
    v90 = *(a1 + 60);
    LODWORD(v195) = v89;
    HIDWORD(v195) = v90 + 1;
    v197 = *(v87 + 94);
    *(a1 + 56) = v89 + 1;
    *(a1 + 60) = v90 + v88;
    v193 = sub_1818A2964(v212, 117, v89, v88, 0, v77, v78, v79);
    *&v214[4] = v87;
    sub_181957040(a1, v87);
    v192 = 0;
  }

  else
  {
    v84 = *(a1 + 60);
    v85 = (v84 + 1);
    *(a1 + 60) = v85;
    v192 = v84 + 1;
    sub_1818A2964(v212, 75, 0, v85, 0, v77, v78, v79);
    *&v214[4] = 0;
    v195 = 0;
    v193 = 0;
    v197 = 1;
    j = v198;
  }

  v91 = sub_1818B507C(a1, a2, a3, 0, 0, 0, v209, v200);
  if (v91)
  {
    v95 = *(v91 + 40);
    v201 = *(v91 + 66);
    if (v201 != 1)
    {
      v96 = *(a1 + 152);
      if (!v96)
      {
        v96 = a1;
      }

      *(v96 + 32) = 1;
    }

    v194 = v91;
    if (*(v91 + 68))
    {
      v198 = j;
      v97 = v95;
      sub_1818A2964(v212, 143, v207, 0, 0, v92, v93, v94);
      v95 = v97;
      j = j;
    }

    v190 = v95;
    v191 = HIDWORD(v95);
    if (j)
    {
      sub_1818A2964(v212, 86, j, 1, 0, v92, v93, v94);
    }

    v98 = *&v214[4];
    v204 = v8;
    if (*&v214[4])
    {
      v189 = v197;
      if (v189 >= 1)
      {
        v99 = 0;
        v100 = HIDWORD(v195);
        do
        {
          sub_181959FA4(v212, v29, v207, *(*(v98 + 8) + v99), v100, v92, v93, v94);
          v98 = *&v214[4];
          v100 = (v100 + 1);
          v99 += 2;
        }

        while (2 * v189 != v99);
      }

      if (v201)
      {
        v101 = HIDWORD(v195);
LABEL_125:
        v109 = sub_181929E8C(v12, v66 + 2, 1865547279);
        v13 = v109;
        if (!v109)
        {
          sub_1818B9E4C(v194, v110, v111, v112, v113, v114, v115, v116);
          v8 = v204;
          goto LABEL_80;
        }

        v210 = v101;
        memset(v109, 1, v66 + 1);
        v13[v66 + 1] = 0;
        v120 = v207;
        if ((v190 & 0x80000000) == 0)
        {
          v13[(v190 - v207)] = 0;
        }

        v121 = v198;
        if ((v190 & 0x8000000000000000) == 0)
        {
          v13[(v191 - v207)] = 0;
        }

        if (v193)
        {
          sub_1818B6C00(v212, v193);
        }

        v196 = *(a1 + 72) - 1;
        *(a1 + 72) = v196;
        if ((v213 & 1) == 0)
        {
          if (v201 == 2)
          {
            v122 = sub_1818A2964(v212, 15, 0, 0, 0, v117, v118, v119);
            sub_1818D348C(a1, v29, 113, 8, v207, v13, &v220[1], v220);
            v123 = *(v212 + 144);
            if (v123 - 1 == v122)
            {
              *(v212 + 144) = v122;
              v120 = v207;
            }

            else
            {
              if (*(*v212 + 103))
              {
                v163 = &byte_1EA831A58;
              }

              else
              {
                v163 = (*(v212 + 136) + 40 * v122);
              }

              v120 = v207;
              *(v163 + 2) = v123;
            }
          }

          else
          {
            sub_1818D348C(a1, v29, 113, 8, v207, v13, &v220[1], v220);
          }
        }

        if (*v202 == 1)
        {
          *v214 = 0;
          v162 = 0;
          goto LABEL_182;
        }

        if (v13[v220[1] - v120])
        {
          sub_181910A18(v212, 28, v220[1], v196, v210, v197, v118, v119);
        }

        v162 = 0;
        *v214 = 0;
        v8 = v204;
LABEL_181:
        if (*v202 != 1)
        {
          HIBYTE(v188) = v201;
          LOBYTE(v188) = 11;
          sub_1818D61BC(a1, v29, v199, v220[1], v220[0], v210, v197, *(a1 + 30) == 0, v188);
          if (v162)
          {
            goto LABEL_193;
          }

          goto LABEL_197;
        }

LABEL_182:
        for (k = v29[10]; k; k = k[5])
        {
          if (*k == v12)
          {
            break;
          }
        }

        sub_181980924(a1, v29);
        v170 = *(a1 + 152);
        if (!v170)
        {
          v170 = a1;
        }

        *(v170 + 33) = 1;
        if (v201 == 1)
        {
          sub_1818A2964(v212, 122, v207, 0, 0, v167, v168, v169);
          if (!*(a1 + 152))
          {
            *(a1 + 32) = 0;
          }
        }

        v171 = sub_1818A2964(v212, 7, 0, 1, v210, v167, v168, v169);
        sub_1818B49F8(v212, v171, k, 0xFFFFFFF5);
        v175 = *(v212 + 144);
        if (v175 >= 1)
        {
          *(*(v212 + 136) + 40 * v175 - 38) = 2;
        }

        v8 = v204;
        if (v162)
        {
LABEL_193:
          if (*&v214[4])
          {
            v176 = *v214;
            sub_1818A2964(v212, 39, v195, (*v214 + 1), 0, v172, v173, v174);
            v177 = *(v212 + 144);
            if (!*(*v212 + 103))
            {
              v178 = *(v212 + 136);
LABEL_201:
              v186 = (v178 + 40 * v176);
              goto LABEL_202;
            }
          }

          else
          {
            v176 = *v214;
            sub_1818A2964(v212, 9, 0, *v214, 0, v172, v173, v174);
            v177 = *(v212 + 144);
            if (!*(*v212 + 103))
            {
              v178 = *(v212 + 136);
              goto LABEL_201;
            }
          }

          v186 = &byte_1EA831A58;
LABEL_202:
          v80 = v211;
          *(v186 + 2) = v177;
LABEL_203:
          if (!*(a1 + 30) && !*(a1 + 160) && *(a1 + 144))
          {
            sub_18198590C(a1, v137, v138, v139, v140, v141, v142, v143);
          }

          if (v121)
          {
            sub_181980A28(v212, v121, "rows deleted", v139, v140, v141, v142, v143);
          }

          goto LABEL_81;
        }

LABEL_197:
        sub_181958CD8(v212, v196);
        sub_1818B9E4C(v194, v179, v180, v181, v182, v183, v184, v185);
        v80 = v211;
        goto LABEL_203;
      }

      v124 = (*(a1 + 60) + 1);
      *(a1 + 60) = v124;
      v125 = *(v98 + 32);
      if (!v125)
      {
        v125 = sub_181978718(*a1, *&v214[4]);
      }

      v126 = sub_1818A2964(v212, 97, HIDWORD(v195), v189, v124, v92, v93, v94);
      sub_1818B49F8(v212, v126, v125, v189);
      v210 = v124;
      sub_181910A18(v212, 138, v195, v124, HIDWORD(v195), v189, v127, v128);
      v197 = 0;
      v136 = v202;
      v8 = v204;
      v121 = v198;
    }

    else
    {
      v105 = (*(a1 + 60) + 1);
      *(a1 + 60) = v105;
      sub_1818A2964(v212, 135, v207, v105, 0, v92, v93, v94);
      if (v201)
      {
        v101 = v105;
        goto LABEL_125;
      }

      v210 = v105;
      sub_1818A2964(v212, 156, v192, v105, 0, v106, v107, v108);
      v197 = 1;
      v121 = v198;
      v136 = v202;
    }

    sub_1818B9E4C(v194, v129, v130, v131, v132, v133, v134, v135);
    if ((v213 & 1) == 0)
    {
      sub_1818D348C(a1, v29, 113, 8, v207, 0, &v220[1], v220);
    }

    if (*&v214[4])
    {
      *v214 = sub_1818A2964(v212, 36, v195, 0, 0, v152, v153, v154);
      if (*v136 == 1)
      {
        v158 = 94;
        v159 = v195;
        v160 = 0;
        v161 = v210;
      }

      else
      {
        v158 = -122;
        v159 = v195;
        v160 = v210;
        v161 = 0;
      }

      sub_1818A2964(v212, v158, v159, v160, v161, v155, v156, v157);
      v13 = 0;
      v196 = 0;
      v162 = 1;
      v121 = v121;
    }

    else
    {
      *v214 = sub_1818A2964(v212, 46, v192, 0, v210, v152, v153, v154);
      v13 = 0;
      v196 = 0;
      v162 = 1;
    }

    goto LABEL_181;
  }

LABEL_79:
  v13 = 0;
LABEL_80:
  v80 = v211;
LABEL_81:
  if (v80)
  {
    *(v80 + 368) = v206;
  }

LABEL_3:
  result = sub_1818BB5B0(v12, a2);
  if (a3)
  {
    result = sub_1819439E0(v12, a3);
  }

  if (a4)
  {
    result = sub_18194E5B8(v12, a4);
  }

  if (v8)
  {
    result = sub_1819439E0(v12, v8);
  }

  if (v13)
  {
    return sub_181939EC8(v12, v13);
  }

  return result;
}

uint64_t sub_1818EAE9C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 40);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *a2;
  if (v13 > 0xA9)
  {
    if (v13 != 170 && v13 != 179)
    {
      goto LABEL_21;
    }

LABEL_15:
    if (v11)
    {
      v17 = *v11;
      if (*v11 >= 1)
      {
        v18 = v11 + 9;
        while (1)
        {
          v19 = *v18;
          v18 += 18;
          if (*(a2 + 11) == v19)
          {
            break;
          }

          if (!--v17)
          {
            return 0;
          }
        }

        sub_18197F9E0(v10, v12, a2, a4, a5, a6, a7, a8);
      }
    }

    return 0;
  }

  if (v13 == 168)
  {
    goto LABEL_15;
  }

  if (v13 != 169)
  {
LABEL_21:
    if ((*(v9 + 42) & 2) != 0)
    {
      v20 = *(v10 + 96);
      if (v20)
      {
        while (1)
        {
          v21 = *(v20 + 8);
          if ((v21 & 0x80000000) == 0 && !sub_181959260(0, a2, *v20, v21))
          {
            break;
          }

          v20 = *(v20 + 24);
          if (!v20)
          {
            return 0;
          }
        }

        if ((a2[7] & 3) == 0 && *v11 >= 1 && v11[9] == *(v20 + 8) && !*(a2 + 8))
        {
          if (*(v10 + 52))
          {
            return 2;
          }

          *&v40[16] = 0u;
          v41 = 0u;
          *v40 = 0u;
          memset(v39, 0, sizeof(v39));
          LOBYTE(v39[0]) = -86;
          *&v40[12] = *(v20 + 12);
          sub_18197F9E0(v10, v12, v39, v22, v23, v24, v25, v26);
          if (*(v10 + 52))
          {
            return 2;
          }

          v38 = *&v40[20];
          *(*(v12 + 32) + 32 * *&v40[20] + 8) = a2;
          *(a2 + 8) = v12;
          *(a2 + 26) = v38;
          return 1;
        }
      }
    }

    return 0;
  }

  if ((*(v9 + 42) & 2) != 0 || *(a1 + 32) != a2[2] || *(a2 + 8))
  {
    return 0;
  }

  v14 = *(*v10 + 144);
  if (*(v12 + 56) < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = *(v12 + 48);
    do
    {
      if (*v16 == a2)
      {
        break;
      }

      if (!sub_181959260(0, *v16, a2, 0xFFFFFFFFLL))
      {
        break;
      }

      ++v15;
      v16 += 4;
    }

    while (v15 < *(v12 + 56));
  }

  if (v15 <= v14)
  {
    if (v15 >= *(v12 + 56))
    {
      v28 = *(*v10 + 100);
      v29 = sub_18197FC38(*v10, v12);
      LOWORD(v15) = v29;
      if ((v29 & 0x80000000) == 0)
      {
        v30 = *(v12 + 48) + 32 * v29;
        *v30 = a2;
        v31 = *(a2 + 4);
        if (v31)
        {
          v32 = *v31;
        }

        else
        {
          v32 = 0;
        }

        v33 = sub_181893B48(*v10, *(a2 + 1), v32, v28, 0);
        *(v30 + 8) = v33;
        v34 = *(a2 + 2);
        if (!v34 || (*(v33 + 4) & 0x20) != 0)
        {
          *(v30 + 24) = -1;
        }

        else
        {
          v35 = *(v10 + 56);
          *(v10 + 56) = v35 + 1;
          *(v30 + 24) = v35;
          if (v32 == 1 && (v36 = *(v34 + 32), *v36 == 1) && !sub_181959260(0, *(v36 + 8), *(*(a2 + 4) + 8), 0))
          {
            *(v30 + 28) = 0;
            *(v30 + 29) = (a2[4] & 4) != 0;
          }

          else
          {
            *(v30 + 28) = 1;
          }

          *(v30 + 30) = (*(*(v30 + 8) + 4) & 0x100000) != 0;
        }

        if ((a2[4] & 4) != 0 && !*(v30 + 29))
        {
          v37 = *(v10 + 56);
          *(v10 + 56) = v37 + 1;
        }

        else
        {
          v37 = -1;
        }

        *(v30 + 16) = v37;
      }
    }
  }

  else
  {
    sub_181910730(v10, "more than %d aggregate terms", a3, a4, a5, a6, a7, a8, v14);
    LOWORD(v15) = v14;
  }

  *(a2 + 26) = v15;
  *(a2 + 8) = v12;
  return 1;
}

void sub_1818EB1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 40) + *(a2 + 56);
  if (v8 && !*(a1 + 52))
  {
    v11 = *(a1 + 16);
    v12 = *(a2 + 16);
    v13 = (v8 + v12 - 1);
    v14 = *(v11 + 144);
    if (*(v11 + 148) <= v14)
    {
      sub_18194C8AC(*(a1 + 16), 75, 0, v12, v13, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = v14 + 1;
      v15 = *(v11 + 136) + 40 * v14;
      *v15 = 75;
      *(v15 + 8) = v12;
      *(v15 + 12) = v13;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      *(v15 + 16) = 0;
    }

    if (*(a2 + 56) >= 1)
    {
      v16 = 0;
      v17 = (*(a2 + 48) + 16);
      do
      {
        if ((*v17 & 0x80000000) == 0)
        {
          v18 = *(*(v17 - 2) + 32);
          if (v18 && *v18 == 1)
          {
            v22 = sub_181965648(a1, v18, 0, 0);
            v23 = *v17;
            v24 = *(v11 + 144);
            if (*(v11 + 148) <= v24)
            {
              v24 = sub_18194C8AC(v11, 117, v23, 0, 0, v19, v20, v21);
            }

            else
            {
              *(v11 + 144) = v24 + 1;
              v25 = *(v11 + 136) + 40 * v24;
              *v25 = 117;
              *(v25 + 4) = v23;
              *(v25 + 8) = 0u;
              *(v25 + 24) = 0u;
            }

            if (*(*v11 + 103))
            {
              if (v22)
              {
                v40 = *(*v11 + 824) == 0;
              }

              else
              {
                v40 = 0;
              }

              if (v40)
              {
                v38 = (*v22)-- == 1;
                if (v38)
                {
                  sub_181939EC8(*(v22 + 16), v22);
                }
              }
            }

            else
            {
              v41 = v24;
              if (v24 < 0)
              {
                v41 = *(v11 + 144) - 1;
              }

              v42 = *(v11 + 136) + 40 * v41;
              if (*(v42 + 1))
              {
                sub_18194CB90(v11, v42, v22, 0xFFFFFFF8);
              }

              else if (v22)
              {
                *(v42 + 16) = v22;
                *(v42 + 1) = -8;
              }
            }

            v17[1] = v24;
            sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR %s(DISTINCT)", *(*(v17 - 1) + 56));
            if ((v17[2] & 0x80000000) != 0)
            {
              goto LABEL_11;
            }

LABEL_19:
            v26 = *(v17 - 2);
            v27 = *(v17 + 13) == 0;
            if (*(v17 + 12))
            {
              v27 += **(v26 + 32);
            }

            if (*(v17 + 14))
            {
              v27 += **(v26 + 32);
            }

            v28 = *(*(v26 + 16) + 32);
            v29 = sub_181965648(a1, v28, 0, v27);
            v33 = v29;
            if (!*(v17 + 13) && !*(a1 + 52))
            {
              ++*(v29 + 6);
            }

            v34 = v17[2];
            v35 = (*v28 + v27);
            v36 = *(v11 + 144);
            if (*(v11 + 148) <= v36)
            {
              v36 = sub_18194C8AC(v11, 117, v34, v35, 0, v30, v31, v32);
            }

            else
            {
              *(v11 + 144) = v36 + 1;
              v37 = *(v11 + 136) + 40 * v36;
              *v37 = 117;
              *(v37 + 4) = v34;
              *(v37 + 8) = v35;
              *(v37 + 12) = 0;
              *(v37 + 28) = 0;
              *(v37 + 20) = 0;
              *(v37 + 36) = 0;
            }

            if (*(*v11 + 103))
            {
              if (v33)
              {
                v38 = *(*v11 + 824) == 0;
              }

              else
              {
                v38 = 0;
              }

              if (v38)
              {
                v38 = (*v33)-- == 1;
                if (v38)
                {
                  sub_181939EC8(*(v33 + 16), v33);
                }
              }
            }

            else
            {
              if (v36 < 0)
              {
                v36 = *(v11 + 144) - 1;
              }

              v39 = *(v11 + 136) + 40 * v36;
              if (*(v39 + 1))
              {
                sub_18194CB90(v11, v39, v33, 0xFFFFFFF8);
              }

              else if (v33)
              {
                *(v39 + 16) = v33;
                *(v39 + 1) = -8;
              }
            }

            sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR %s(ORDER BY)", *(*(v17 - 1) + 56));
            goto LABEL_11;
          }

          sub_181910730(a1, "DISTINCT aggregates must have exactly one argument", a3, v12, v13, a6, a7, a8, v43);
          *v17 = -1;
        }

        if ((v17[2] & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

LABEL_11:
        ++v16;
        v17 += 8;
      }

      while (v16 < *(a2 + 56));
    }
  }
}

uint64_t sub_1818EB5A0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v87 = a4;
  if (*(result + 52))
  {
    return result;
  }

  v8 = a3;
  v9 = a2;
  v10 = result;
  v11 = *(result + 16);
  *a3 = 1;
  if (*(a3 + 56) < 1)
  {
LABEL_126:
    v72 = 0;
    if (v9)
    {
      v89 = v9;
      if (*(v8 + 44))
      {
        goto LABEL_128;
      }
    }

    goto LABEL_131;
  }

  v12 = 0;
  v89 = 0;
  v13 = *(a3 + 48);
  v85 = result + 184;
  v86 = a2;
  do
  {
    v93 = v12;
    v14 = *(*v13 + 32);
    if (*(*v13 + 7))
    {
      v19 = *(*(*v13 + 72) + 72);
      if (*(v8 + 44) && v9 && (*(*(v13 + 8) + 4) & 0x20) != 0)
      {
        if (!v89)
        {
          v89 = *(v10 + 60) + 1;
          *(v10 + 60) = v89;
        }

        v20 = *(v11 + 144);
        if (*(v11 + 148) <= v20)
        {
          v28 = v19;
          sub_18194C8AC(v11, 80, v9, v89, 0, a6, a7, a8);
          v19 = v28;
        }

        else
        {
          *(v11 + 144) = v20 + 1;
          v21 = *(v11 + 136) + 40 * v20;
          *v21 = 80;
          *(v21 + 4) = v9;
          *(v21 + 8) = v89;
          *(v21 + 12) = 0;
          *(v21 + 28) = 0;
          *(v21 + 20) = 0;
          *(v21 + 36) = 0;
        }
      }

      v15 = (*(v10 + 72) - 1);
      *(v10 + 72) = v15;
      sub_1818DD640(v10, v19);
      if ((*(v13 + 24) & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

LABEL_25:
      v16 = *v14;
      v29 = *(*(*v13 + 16) + 32);
      v30 = *v29;
      if (!*(v13 + 29))
      {
        ++v30;
      }

      if (*(v13 + 28))
      {
        v31 = *v14;
      }

      else
      {
        v31 = 0;
      }

      if (*(v13 + 30))
      {
        v32 = *v14;
      }

      else
      {
        v32 = 0;
      }

      v33 = v30 + v31 + v32;
      v90 = v15;
      v92 = v33 + 1;
      if (v33)
      {
        v34 = *(v10 + 44);
        if (v34 <= v33)
        {
          v36 = *(v10 + 60);
          v18 = (v36 + 1);
          *(v10 + 60) = v36 + v92;
        }

        else
        {
          v18 = *(v10 + 48);
          *(v10 + 44) = v34 - v92;
          *(v10 + 48) = v18 + v92;
        }
      }

      else if (*(v10 + 31))
      {
        v35 = *(v10 + 31) - 1;
        *(v10 + 31) = v35;
        v18 = *(v85 + 4 * v35);
      }

      else
      {
        v18 = (*(v10 + 60) + 1);
        *(v10 + 60) = v18;
      }

      result = sub_1819588AC(v10, v29, v18, 0, 1, a6, a7, a8);
      v37 = *v29;
      if (*(v13 + 29))
      {
        if (*(v13 + 28))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v39 = *(v13 + 24);
        a4 = (v37 + v18);
        v40 = *(v11 + 144);
        if (*(v11 + 148) <= v40)
        {
          result = sub_18194C8AC(v11, 126, v39, a4, 0, a6, a7, a8);
        }

        else
        {
          *(v11 + 144) = v40 + 1;
          v41 = *(v11 + 136) + 40 * v40;
          *v41 = 126;
          *(v41 + 4) = v39;
          *(v41 + 8) = a4;
          *(v41 + 12) = 0;
          *(v41 + 28) = 0;
          *(v41 + 20) = 0;
          *(v41 + 36) = 0;
        }

        ++v37;
        if (*(v13 + 28))
        {
LABEL_42:
          v38 = (v37 + v18);
          result = sub_1819588AC(v10, v14, v37 + v18, 0, 1, a6, a7, a8);
          v37 += v16;
          if (!*(v13 + 30))
          {
            goto LABEL_59;
          }

          goto LABEL_49;
        }
      }

      v38 = v18;
      if (!*(v13 + 30))
      {
        goto LABEL_59;
      }

LABEL_49:
      if (*(v13 + 28))
      {
        v42 = v38;
      }

      else
      {
        v42 = v18;
      }

      if (v16 >= 1)
      {
        v43 = (v18 + v37);
        v44 = v16;
        do
        {
          v46 = *(v11 + 144);
          if (*(v11 + 148) > v46)
          {
            *(v11 + 144) = v46 + 1;
            v45 = *(v11 + 136) + 40 * v46;
            *v45 = 181;
            *(v45 + 4) = v42;
            *(v45 + 8) = v43;
            *(v45 + 12) = 0;
            *(v45 + 28) = 0;
            *(v45 + 20) = 0;
            *(v45 + 36) = 0;
          }

          else
          {
            result = sub_18194C8AC(v11, 181, v42, v43, 0, a6, a7, a8);
          }

          v42 = (v42 + 1);
          v43 = (v43 + 1);
          --v44;
        }

        while (v44);
        v9 = v86;
      }

LABEL_59:
      v15 = v90;
      v47 = *(v13 + 16);
      if ((v47 & 0x80000000) != 0)
      {
        goto LABEL_67;
      }

LABEL_63:
      if (v14)
      {
        if (!v15)
        {
          v15 = (*(v10 + 72) - 1);
          *(v10 + 72) = v15;
        }

        result = sub_18197EE48(v10, v87, v47, v15, v14, v38, a7, a8);
        *(v13 + 16) = result;
      }

      goto LABEL_67;
    }

    v15 = 0;
    if ((*(v13 + 24) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_7:
    if (!v14)
    {
      v18 = 0;
      v22 = (v13 + 8);
      v16 = 0;
      v23 = v93;
      if ((*(*(v13 + 8) + 4) & 0x20) == 0)
      {
        v16 = 0;
        goto LABEL_105;
      }

      goto LABEL_90;
    }

    v16 = *v14;
    if (*v14 == 1)
    {
      if (*(v10 + 31))
      {
        v17 = *(v10 + 31) - 1;
        *(v10 + 31) = v17;
        v18 = *(v85 + 4 * v17);
      }

      else
      {
        v18 = (*(v10 + 60) + 1);
        *(v10 + 60) = v18;
      }
    }

    else
    {
      v24 = *(v10 + 44);
      v25 = __OFSUB__(v24, v16);
      v26 = v24 - v16;
      if (v26 < 0 != v25)
      {
        v27 = *(v10 + 60);
        v18 = (v27 + 1);
        *(v10 + 60) = v27 + v16;
      }

      else
      {
        v18 = *(v10 + 48);
        *(v10 + 44) = v26;
        *(v10 + 48) = v18 + v16;
      }
    }

    result = sub_1819588AC(v10, v14, v18, 0, 1, a6, a7, a8);
    v92 = 0;
    v38 = v18;
    v47 = *(v13 + 16);
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_67:
    v8 = a3;
    if ((*(v13 + 24) & 0x80000000) == 0)
    {
      v16 = v92;
      v48 = (v92 - 1);
      v49 = v48 + v18;
      v50 = *(v11 + 144);
      if (*(v11 + 148) <= v50)
      {
        result = sub_18194C8AC(v11, 97, v18, (v92 - 1), (v48 + v18), a6, a7, a8);
      }

      else
      {
        *(v11 + 144) = v50 + 1;
        v51 = *(v11 + 136) + 40 * v50;
        *v51 = 97;
        *(v51 + 4) = v18;
        *(v51 + 8) = v48;
        *(v51 + 12) = v49;
        *(v51 + 24) = 0;
        *(v51 + 32) = 0;
        *(v51 + 16) = 0;
      }

      v52 = *(v13 + 24);
      v53 = *(v11 + 144);
      if (*(v11 + 148) <= v53)
      {
        result = sub_18194CAFC(v11, 138, v52, (v48 + v18), v18, v48, a7, a8);
      }

      else
      {
        *(v11 + 144) = v53 + 1;
        v54 = *(v11 + 136) + 40 * v53;
        *v54 = 64906;
        *(v54 + 4) = v52;
        *(v54 + 8) = v49;
        *(v54 + 12) = v18;
        *(v54 + 16) = v48;
        *(v54 + 24) = 0;
        *(v54 + 32) = 0;
      }

      v23 = v93;
      if (v92 == 1)
      {
        goto LABEL_77;
      }

      goto LABEL_115;
    }

    v22 = (v13 + 8);
    if ((*(*(v13 + 8) + 4) & 0x20) == 0)
    {
      v23 = v93;
      goto LABEL_105;
    }

    if (v16 < 1)
    {
      v23 = v93;
    }

    else
    {
      v91 = v15;
      v56 = (v14 + 2);
      v57 = 1;
      do
      {
        v58 = *v56;
        v56 += 3;
        v59 = sub_1818B4720(v10, v58, v47, a4, a5, a6, a7, a8);
        if (v59)
        {
          v60 = 0;
        }

        else
        {
          v60 = v57 < v16;
        }

        ++v57;
      }

      while (v60);
      v23 = v93;
      LODWORD(v15) = v91;
      if (v59)
      {
        if (v89)
        {
          goto LABEL_94;
        }

        goto LABEL_91;
      }
    }

LABEL_90:
    v59 = *(*v10 + 16);
    if (v89)
    {
      goto LABEL_94;
    }

LABEL_91:
    if (*(v8 + 44))
    {
      v89 = *(v10 + 60) + 1;
      *(v10 + 60) = v89;
    }

    else
    {
      v89 = 0;
    }

LABEL_94:
    v61 = v15;
    v62 = *(v11 + 144);
    v63 = v59;
    if (*(v11 + 148) <= v62)
    {
      v62 = sub_18194C8AC(v11, 85, v89, 0, 0, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = v62 + 1;
      v64 = *(v11 + 136) + 40 * v62;
      *v64 = 85;
      *(v64 + 4) = v89;
      *(v64 + 8) = 0u;
      *(v64 + 24) = 0u;
    }

    if (!*(*v11 + 103))
    {
      if (v62 < 0)
      {
        v62 = *(v11 + 144) - 1;
      }

      v65 = *(v11 + 136) + 40 * v62;
      if (*(v65 + 1))
      {
        sub_18194CB90(v11, v65, v63, 0xFFFFFFFE);
      }

      else if (v63)
      {
        *(v65 + 16) = v63;
        *(v65 + 1) = -2;
      }
    }

    LODWORD(v15) = v61;
    v9 = v86;
LABEL_105:
    a5 = (*(v8 + 16) + v23 + *(v8 + 40));
    v66 = *(v11 + 144);
    if (*(v11 + 148) <= v66)
    {
      sub_18194C8AC(v11, 162, 0, v18, a5, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = v66 + 1;
      v67 = *(v11 + 136) + 40 * v66;
      *v67 = 162;
      *(v67 + 8) = v18;
      *(v67 + 12) = a5;
      *(v67 + 24) = 0;
      *(v67 + 32) = 0;
      *(v67 + 16) = 0;
    }

    v68 = *v22;
    result = *v11;
    if (*(*v11 + 103))
    {
      if ((*(v68 + 4) & 0x10) != 0)
      {
        result = sub_181939EC8(result, v68);
      }
    }

    else
    {
      v69 = *(v11 + 136) + 40 * *(v11 + 144);
      *(v69 - 39) = -7;
      *(v69 - 24) = v68;
    }

    v70 = *(v11 + 144);
    if (v70 >= 1)
    {
      *(*(v11 + 136) + 40 * v70 - 38) = v16;
    }

    if (v16 == 1)
    {
LABEL_77:
      if (v18)
      {
        v55 = *(v10 + 31);
        if (v55 <= 7)
        {
          *(v10 + 31) = v55 + 1;
          *(v85 + 4 * v55) = v18;
        }
      }

      goto LABEL_117;
    }

LABEL_115:
    if (*(v10 + 44) < v16)
    {
      *(v10 + 44) = v16;
      *(v10 + 48) = v18;
    }

LABEL_117:
    if (!v15)
    {
      goto LABEL_120;
    }

    result = *(v11 + 24);
    v71 = ~v15;
    if (*(result + 72) + *(result + 76) >= 0)
    {
      *(*(result + 80) + 4 * v71) = *(v11 + 144);
LABEL_120:
      if (*(v10 + 52))
      {
        return result;
      }

      goto LABEL_121;
    }

    result = sub_18195CB84(result, v11, v71);
    if (*(v10 + 52))
    {
      return result;
    }

LABEL_121:
    v12 = v23 + 1;
    v13 += 32;
  }

  while (v12 < *(v8 + 56));
  if (!v89)
  {
    goto LABEL_126;
  }

LABEL_128:
  v72 = *(v11 + 144);
  if (*(v11 + 148) <= v72)
  {
    result = sub_18194C8AC(v11, 16, v89, 0, 0, a6, a7, a8);
    v72 = result;
  }

  else
  {
    *(v11 + 144) = v72 + 1;
    v73 = *(v11 + 136) + 40 * v72;
    *v73 = 16;
    *(v73 + 4) = v89;
    *(v73 + 8) = 0u;
    *(v73 + 24) = 0u;
  }

LABEL_131:
  if (*(v8 + 44) < 1)
  {
LABEL_152:
    *v8 = 0;
    if (v72)
    {
      v83 = *(v11 + 144);
      if (v83 - 1 == v72)
      {
        *(v11 + 144) = v72;
      }

      else
      {
        if (*(*v11 + 103))
        {
          v84 = &byte_1EA831A58;
        }

        else
        {
          v84 = (*(v11 + 136) + 40 * v72);
        }

        *(v84 + 2) = v83;
      }
    }
  }

  else
  {
    v74 = 0;
    v75 = *(v8 + 32);
    while (1)
    {
      if (*(v10 + 16))
      {
        v76 = *(v75 + 8);
        v77 = (*(v8 + 16) + v74);
        result = sub_1818B8080(v10, v76, v77, a4, a5, a6, a7, a8);
        if (result != v77)
        {
          v78 = result;
          if (!v76)
          {
            goto LABEL_146;
          }

          while (1)
          {
            v79 = *(v76 + 1);
            if ((v79 & 0x82000) == 0)
            {
              break;
            }

            if ((v79 & 0x80000) != 0)
            {
              v76 = *(*(v76 + 4) + 8);
              if (!v76)
              {
                goto LABEL_146;
              }
            }

            else
            {
              if (*v76 != 114)
              {
                break;
              }

              v76 = *(v76 + 2);
              if (!v76)
              {
                goto LABEL_146;
              }
            }
          }

          if ((v79 & 0x400000) != 0 || *v76 == 176)
          {
            v80 = 80;
          }

          else
          {
LABEL_146:
            v80 = 81;
          }

          result = *(v10 + 16);
          v81 = *(result + 144);
          if (*(result + 148) <= v81)
          {
            result = sub_18194C8AC(result, v80, v78, v77, 0, a6, a7, a8);
          }

          else
          {
            *(result + 144) = v81 + 1;
            v82 = *(result + 136) + 40 * v81;
            *v82 = v80;
            *(v82 + 2) = 0;
            *(v82 + 4) = v78;
            *(v82 + 8) = v77;
            *(v82 + 1) = 0;
            *(v82 + 12) = 0;
            *(v82 + 28) = 0;
            *(v82 + 20) = 0;
            *(v82 + 36) = 0;
          }
        }
      }

      if (*(v10 + 52))
      {
        break;
      }

      ++v74;
      v75 += 32;
      if (v74 >= *(v8 + 44))
      {
        goto LABEL_152;
      }
    }
  }

  return result;
}

uint64_t sub_1818EBF64(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  WORD2(v7) = 1;
  *(&v7 + 1) = *(a1 + 24);
  v10[2] = a1;
  v10[3] = 0;
  v10[0] = &v6;
  v10[1] = a2;
  LOBYTE(v12) = *(*(&v7 + 1) + 100);
  (*(a2 + 32))(v10);
  if (*(a1 + 32) >= 1)
  {
    sub_181929C84(*(a1 + 24), *(a1 + 40));
  }

  v3 = v7;
  *a1 = v6;
  *(a1 + 16) = v3;
  v4 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v4;
  return HIDWORD(v11);
}

void sub_1818EBFF8(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2 && *(v2 + 32))
    {
      v3 = a1[2];
      if ((*(v3 + 20) & 0x80000000) == 0)
      {
        v4 = sub_18190C2E0(a1, 0);
        if (!v4)
        {
          goto LABEL_8;
        }

LABEL_13:
        v5 = *v4;
LABEL_14:
        v6 = *a1;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v6, v5);
        }

        else
        {
          *v6 = v5;
          *(v6 + 20) = 4;
        }

        return;
      }

      v4 = *(v3 + 8);
      if (v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1819012D0(100772);
    }

LABEL_8:
    v5 = 0;
    goto LABEL_14;
  }

  sub_1819012D0(100772);
}

void *__cdecl sqlite3_aggregate_context(sqlite3_context *a1, int nBytes)
{
  if (a1 && (v3 = *(a1 + 1)) != 0 && *(v3 + 32))
  {
    v4 = *(a1 + 2);
    if (*(v4 + 20) < 0)
    {
      return *(v4 + 8);
    }

    else
    {

      return sub_18190C2E0(a1, nBytes);
    }
  }

  else
  {
    sub_1819012D0(100772);
    return 0;
  }
}

uint64_t sub_1818EC12C(uint64_t result, int a2, uint64_t *a3)
{
  if (!result || (v5 = *(result + 8)) == 0 || !*(v5 + 32))
  {
    result = sub_1819012D0(100772);
    if (!a2)
    {
      return result;
    }

    v7 = 0;
    v8 = *a3;
    if (*a3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v6 = *(result + 16);
  if ((*(v6 + 20) & 0x80000000) == 0)
  {
    result = sub_18190C2E0(result, 8);
    v7 = result;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_18:
    if (!v7)
    {
      return result;
    }

    goto LABEL_15;
  }

  v7 = *(v6 + 8);
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *a3;
  if (*a3)
  {
LABEL_7:
    v9 = (0x5555555555555555uLL >> *(v8 + 20)) & 1;
    goto LABEL_11;
  }

LABEL_10:
  result = sub_1819012D0(99877);
  LODWORD(v9) = 1;
LABEL_11:
  if (v9)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
LABEL_15:
    ++*v7;
  }

  return result;
}

uint64_t sub_1818EC1FC(uint64_t result, int *a2)
{
  if (a2 && *a2 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 9;
    do
    {
      if ((*v5 & 0x80000000) != 0)
      {
        v6 = *(v3 + 56);
        *(v3 + 56) = v6 + 1;
        *v5 = v6;
        if ((*(v5 - 3) & 4) != 0)
        {
          result = sub_1818EC1FC(v3, *(**(v5 + 9) + 40));
        }
      }

      ++v4;
      v5 += 18;
    }

    while (v4 < *a2);
  }

  return result;
}

uint64_t *sub_1818EC294(uint64_t *result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (*(a4 + 64))
  {
    return result;
  }

  v5 = *(a2 + 24 * a3 + 8);
  v6 = *result;
  if (v5)
  {
    v7 = a5;
    v8 = a4;
    v9 = result;
    result = sub_1818C7FEC(*result, v5, 0, 0);
    v10 = result;
    if (*(v6 + 103))
    {
      if (result)
      {

        return sub_1819439E0(v6, result);
      }

      return result;
    }

    result = v9;
    a4 = v8;
    a5 = v7;
  }

  else
  {
    if (*(v6 + 103))
    {
      return result;
    }

    v10 = 0;
  }

  if (a5 >= 1)
  {
    v30 = 0uLL;
    v31 = 0uLL;
    v29[0] = 0;
    v29[1] = sub_18195F9E0;
    DWORD2(v31) = a5;
    if (v10)
    {
      v11 = result;
      v12 = a4;
      sub_181959BA0(v29, v10);
      a4 = v12;
      result = v11;
    }
  }

  if (*a4 == 114)
  {
    v13 = *(a4 + 8);
    if (v13)
    {
      v14 = a4;
      v15 = result;
      v16 = strlen(*(a4 + 8)) & 0x3FFFFFFF;
      if (v16)
      {
        v17 = sub_181929E8C(*v15, v16 + 81, 0x1032040B79D87BDLL);
        if (v17)
        {
          *(v17 + 48) = 0u;
          *(v17 + 64) = 0u;
          *(v17 + 16) = 0u;
          *(v17 + 32) = 0u;
          *v17 = 0u;
          *v17 = 114;
          *(v17 + 52) = -1;
          v18 = v17 + 80;
          *(v17 + 8) = v17 + 80;
          v19 = v17;
          memcpy((v17 + 80), v13, v16);
          *(v18 + v16) = 0;
          *(v19 + 40) = 1;
          *(v19 + 16) = v10;
          *(v19 + 4) |= 0x2200u;
          v10 = v19;
        }
      }

      result = v15;
      a4 = v14;
    }
  }

  v24 = *v10;
  v27 = *(v10 + 3);
  v28 = *(v10 + 4);
  v25 = *(v10 + 1);
  v26 = *(v10 + 2);
  v20 = *(a4 + 64);
  v22 = *(a4 + 16);
  v21 = *(a4 + 32);
  *(v10 + 3) = *(a4 + 48);
  *(v10 + 4) = v20;
  *(v10 + 1) = v22;
  *(v10 + 2) = v21;
  *v10 = *a4;
  *a4 = v24;
  *(a4 + 16) = v25;
  *(a4 + 32) = v26;
  *(a4 + 48) = v27;
  *(a4 + 64) = v28;
  if (*(a4 + 7))
  {
    v23 = *(a4 + 72);
    if (v23)
    {
      *(v23 + 112) = a4;
    }
  }

  return sub_18195B158(result, sub_18195B270, v10);
}

unsigned __int8 *sub_1818EC4E8(void **a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (!a2)
  {
    return v8;
  }

  v10 = *(a2 + 1);
  if ((v10 & 3) != 0 && *(a2 + 14) == *(a1 + 2))
  {
    *(a2 + 14) = *(a1 + 3);
  }

  v11 = *a2;
  if (v11 == 179)
  {
    if (*(a2 + 11) == *(a1 + 2))
    {
      *(a2 + 11) = *(a1 + 3);
    }

    goto LABEL_21;
  }

  if (v11 != 168 || (v10 & 0x20) != 0 || *(a2 + 11) != *(a1 + 2))
  {
LABEL_21:
    *(a2 + 2) = sub_1818EC4E8(a1, *(a2 + 2));
    *(v8 + 3) = sub_1818EC4E8(a1, *(v8 + 3));
    v19 = *(v8 + 4);
    if ((v8[5] & 0x10) != 0)
    {
      sub_181969010(a1, *(v8 + 4), 1);
    }

    else if (v19 && *v19 >= 1)
    {
      v20 = 0;
      v21 = 2;
      do
      {
        *&v19[v21] = sub_1818EC4E8(a1, *&v19[v21]);
        ++v20;
        v21 += 6;
      }

      while (v20 < *v19);
    }

    if (v8[7])
    {
      v22 = *(v8 + 9);
      v22[9] = sub_1818EC4E8(a1, v22[9]);
      v23 = v22[2];
      if (v23 && *v23 >= 1)
      {
        v24 = 0;
        v25 = 2;
        do
        {
          *&v23[v25] = sub_1818EC4E8(a1, *&v23[v25]);
          ++v24;
          v25 += 6;
        }

        while (v24 < *v23);
      }

      v26 = v22[3];
      if (v26 && *v26 >= 1)
      {
        v27 = 0;
        v28 = 2;
        do
        {
          *&v26[v28] = sub_1818EC4E8(a1, *&v26[v28]);
          ++v27;
          v28 += 6;
        }

        while (v27 < *v26);
      }
    }

    return v8;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v12 = *(a2 + 12);
  v13 = a1[3][3 * v12 + 1];
  v14 = *v13;
  v15 = v14;
  if (v14 == 176)
  {
    v15 = v13[2];
  }

  v16 = a1[3][3 * v12 + 1];
  if (v15 != 177)
  {
    if (v15 != 139)
    {
      goto LABEL_15;
    }

    v16 = *(v13 + 4);
  }

  if (**(v16 + 32) < 2)
  {
LABEL_15:
    v17 = **a1;
    if (!*(a1 + 4))
    {
      goto LABEL_42;
    }

    if (v14 == 168)
    {
      v18 = *(a1 + 3);
      if (*(v13 + 11) == v18)
      {
LABEL_42:
        v31 = sub_1818C7FEC(v17, v13, 0, 0);
        v38 = v31;
        if (*(v17 + 103))
        {
          if (v31)
          {
            sub_1819439E0(v17, v31);
          }
        }

        else
        {
          if (*(a1 + 4))
          {
            *(v31 + 1) |= 0x200000u;
          }

          if (*v31 == 171)
          {
            v39 = *(v31 + 1);
            v40 = v31;
            if ((v39 & 0x82000) != 0)
            {
              v41 = *(v31 + 1);
              v40 = v31;
              do
              {
                if ((v41 & 0x80000) != 0)
                {
                  v42 = (*(v40 + 4) + 8);
                }

                else
                {
                  if (*v40 != 114)
                  {
                    break;
                  }

                  v42 = (v40 + 16);
                }

                v40 = *v42;
                v41 = *(v40 + 1);
              }

              while ((v41 & 0x82000) != 0);
            }

            v43 = *(*(v40 + 1) + 4) == 0;
            *v31 = -100;
            *(v31 + 1) = v39 | 0x800;
            *(v31 + 2) = v43;
          }

          v44 = sub_1818B4720(*a1, v31, v32, v33, v34, v35, v36, v37);
          v51 = sub_1818B4720(*a1, a1[4][3 * v12 + 1], v45, v46, v47, v48, v49, v50);
          if (v44 != v51 || (v53 = *v38, v53 != 114) && v53 != 168)
          {
            if (v51)
            {
              v52 = *v51;
            }

            else
            {
              v52 = "BINARY";
            }

            v38 = sub_18195F910(*a1, v38, v52);
          }

          *(v38 + 1) &= ~0x200u;
          v54 = *(v8 + 1);
          if ((v54 & 3) != 0)
          {
            sub_181961AFC(v38, *(v8 + 14), v54 & 3);
          }

          sub_1819439E0(v17, v8);
          return v38;
        }

        return v8;
      }
    }

    else
    {
      v18 = *(a1 + 3);
    }

    LOBYTE(v57) = -77;
    *&v58 = v13;
    HIDWORD(v59) = v18;
    LODWORD(v60) = -99;
    v13 = &v57;
    DWORD1(v57) = 0x40000;
    goto LABEL_42;
  }

  v29 = *a1;
  if ((v13[5] & 0x10) != 0)
  {
    if (*(v29 + 13))
    {
      return v8;
    }

    v56 = **(*(v13 + 4) + 32);
    v30 = "sub-select returns %d columns - expected %d";
  }

  else
  {
    v30 = "row value misused";
  }

  sub_181910730(v29, v30, a3, a4, a5, a6, a7, a8, v56);
  return v8;
}

__int128 *sub_1818EC90C(uint64_t a1, __int128 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v28 = 0;
  v29 = 0;
  if (!a4)
  {
    return a2;
  }

  if (*a4 != 168)
  {
    return a2;
  }

  v4 = *(a4 + 9);
  if (!v4)
  {
    return a2;
  }

  if (*(v4 + 63) != 1)
  {
    return a2;
  }

  v5 = (v4 + 80);
  do
  {
    v6 = *v5;
    v7 = *v5;
    v8 = *v7;
    v5 = (v7 + 5);
  }

  while (v8 != a1);
  v9 = v6[2];
  v10 = *(*v9 + 144);
  if (!v10)
  {
    return a2;
  }

  if (!v10(v9, a3, *(a2 + 7), &v29, &v28))
  {
    return a2;
  }

  v13 = *(a2 + 7);
  if (v13)
  {
    v14 = (strlen(v13) & 0x3FFFFFFF) + 73;
  }

  else
  {
    v14 = 73;
  }

  if (!a1)
  {
    v16 = sub_181902484(v14, 0x10F00408277036CLL);
    if (v16)
    {
      goto LABEL_16;
    }

    return a2;
  }

  v16 = sub_181929E8C(a1, v14, 0x10F00408277036CLL);
  if (!v16)
  {
    return a2;
  }

LABEL_16:
  v17 = v16;
  bzero(v16, v14);
  v18 = a2;
  v19 = a2[1];
  v20 = a2[2];
  v21 = *(a2 + 8);
  v17[3] = a2[3];
  v22 = *a2;
  v17[1] = v19;
  v17[2] = v20;
  *v17 = v22;
  v23 = v17 + 72;
  *(v17 + 7) = v17 + 72;
  *(v17 + 8) = v21;
  v24 = v17;
  v25 = *(v18 + 7);
  if (v25)
  {
    v26 = (strlen(*(v18 + 7)) & 0x3FFFFFFF) + 1;
  }

  else
  {
    v26 = 1;
  }

  memcpy(v23, v25, v26);
  v27 = v28;
  result = v24;
  *(v24 + 3) = v29;
  *(v24 + 1) = v27;
  *(v24 + 1) |= 0x10u;
  return result;
}

uint64_t sub_1818ECA90(uint64_t result, unsigned __int8 *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 16);
  v57 = 0;
  if (!a2 || !v8)
  {
    return result;
  }

  v9 = result;
  v10 = *a2;
  if (*a2 > 0x32u)
  {
    if ((v10 - 53) < 6)
    {
LABEL_25:
      v27 = *(a2 + 2);
      v28 = *v27;
      if (v28 == 176)
      {
        v28 = v27[2];
      }

      v29 = *(a2 + 2);
      if (v28 != 177)
      {
        if (v28 != 139)
        {
LABEL_31:
          v32 = a4;
          v33 = sub_181957E00(result, *(a2 + 2), &v57 + 1);
          v34 = sub_181957E00(v9, *(a2 + 3), &v57);
          result = sub_1818DDB44(v9, *(a2 + 2), *(a2 + 3), v10, v33, v34, a3, v32, (*(a2 + 1) >> 10) & 1);
          goto LABEL_71;
        }

        v29 = *(v27 + 4);
      }

      if (**(v29 + 32) <= 1)
      {
        goto LABEL_31;
      }

LABEL_42:
      v38 = *(a2 + 1);
      if ((v38 & 0x10000001) != 0x10000000)
      {
        if ((v38 & 0x20000001) == 0x20000000)
        {
          goto LABEL_71;
        }

        v42 = a4;
        result = sub_181957E00(result, a2, &v57 + 1);
        v20 = result;
        v43 = v42 != 0;
        v44 = *(v8 + 144);
        if (*(v8 + 148) > v44)
        {
          *(v8 + 144) = v44 + 1;
          v45 = *(v8 + 136) + 40 * v44;
          *v45 = 16;
          *(v45 + 4) = result;
          *(v45 + 8) = a3;
          *(v45 + 12) = v43;
          *(v45 + 24) = 0;
          *(v45 + 32) = 0;
          *(v45 + 16) = 0;
          goto LABEL_71;
        }

        v47 = v8;
        v48 = 16;
        v49 = a3;
        goto LABEL_70;
      }

      v39 = *(v8 + 144);
      if (*(v8 + 148) > v39)
      {
        *(v8 + 144) = v39 + 1;
        v40 = *(v8 + 136) + 40 * v39;
        *v40 = 9;
        *(v40 + 8) = a3;
LABEL_67:
        *(v40 + 12) = 0;
        *(v40 + 28) = 0;
        *(v40 + 20) = 0;
        *(v40 + 36) = 0;
        goto LABEL_71;
      }

      v47 = v8;
      v48 = 9;
      v49 = a3;
      v20 = 0;
LABEL_69:
      v43 = 0;
LABEL_70:
      result = sub_18194C8AC(v47, v48, v20, v49, v43, a6, a7, a8);
      goto LABEL_71;
    }

    if ((v10 - 51) < 2)
    {
      result = sub_181957E00(result, *(a2 + 2), &v57 + 1);
      v20 = result;
      if (HIDWORD(v57))
      {
        v21 = *(*v8 + 103) ? &byte_1EA831A58 : (*(v8 + 136) + 40 * *(v8 + 144) - 40);
        if (*(v21 + 3) == result && *v21 == 94)
        {
          *(v21 + 1) |= 0x80u;
        }
      }

      v52 = *(v8 + 144);
      if (*(v8 + 148) > v52)
      {
        *(v8 + 144) = v52 + 1;
        v40 = *(v8 + 136) + 40 * v52;
        *v40 = v10;
        *(v40 + 2) = 0;
        *(v40 + 4) = result;
        *(v40 + 8) = a3;
        *(v40 + 1) = 0;
        goto LABEL_67;
      }

      v47 = v8;
      v48 = v10;
      v49 = a3;
      goto LABEL_69;
    }

    if (v10 != 175)
    {
      goto LABEL_42;
    }

    v36 = *(a2 + 3);
    while (1)
    {
      v37 = *(v36 + 4);
      if ((v37 & 0x82000) == 0)
      {
        break;
      }

      if ((v37 & 0x80000) != 0)
      {
        v36 = *(*(v36 + 32) + 8);
      }

      else
      {
        if (*v36 != 114)
        {
          break;
        }

        v36 = *(v36 + 16);
      }
    }

    v50 = a2[2] == 46;
    v35 = *(a2 + 2);
    if (((v50 ^ (*(*(v36 + 8) + 4) != 0)) & 1) == 0)
    {
      result = sub_1818ECA90(result, v35, a3, (16 * v50));
      goto LABEL_71;
    }

LABEL_52:
    result = sub_1818DD640(result, v35);
    goto LABEL_71;
  }

  if (*a2 > 0x2Cu)
  {
    if ((v10 - 45) >= 2)
    {
      if (v10 == 49)
      {
        result = sub_181958D08(result, a2, a3, sub_1818ECA90, a4, a6, a7, a8);
        goto LABEL_71;
      }

      if (v10 == 50)
      {
        v11 = *(result + 72);
        *(result + 72) = v11 - 1;
        if (a4)
        {
          v13 = a3;
        }

        else
        {
          v13 = (v11 - 1);
        }

        sub_1818DFA70(result, a2, (v11 - 1), v13, a5, a6, a7, a8);
        v17 = *(v8 + 144);
        if (*(v8 + 148) <= v17)
        {
          sub_18194C8AC(v8, 9, 0, a3, 0, v14, v15, v16);
        }

        else
        {
          *(v8 + 144) = v17 + 1;
          v18 = *(v8 + 136) + 40 * v17;
          *v18 = 9;
          *(v18 + 8) = a3;
          *(v18 + 12) = 0;
          *(v18 + 28) = 0;
          *(v18 + 20) = 0;
          *(v18 + 36) = 0;
        }

        result = *(v8 + 24);
        v51 = -v11;
        if (*(result + 72) + *(result + 76) < 0)
        {
          result = sub_18195CB84(result, v8, v51);
        }

        else
        {
          *(*(result + 80) + 4 * v51) = *(v8 + 144);
        }

        goto LABEL_71;
      }

      goto LABEL_42;
    }

    if (v10 == 45)
    {
      v10 = 54;
    }

    else
    {
      v10 = 53;
    }

    a4 = 128;
    goto LABEL_25;
  }

  if ((v10 - 43) >= 2)
  {
    if (v10 != 19)
    {
      goto LABEL_42;
    }

    v35 = *(a2 + 2);
    goto LABEL_52;
  }

  v22 = a4;
  v25 = sub_18195CE30(a2);
  if (v25 == a2)
  {
    if (v10 == 44)
    {
      v46 = *(v9 + 72) - 1;
      *(v9 + 72) = v46;
      sub_1818DD640(v9, *(a2 + 2));
      sub_1818ECA90(v9, *(a2 + 3), a3, v22);
      result = sub_181958CD8(v8, v46);
      goto LABEL_71;
    }

    sub_1818ECA90(v9, *(a2 + 2), a3, v22);
    v26 = *(a2 + 3);
  }

  else
  {
    v26 = v25;
  }

  result = sub_1818ECA90(v9, v26, a3, v22);
LABEL_71:
  v53 = HIDWORD(v57);
  if (HIDWORD(v57))
  {
    v54 = *(v9 + 31);
    if (v54 <= 7)
    {
      *(v9 + 31) = v54 + 1;
      *(v9 + 4 * v54 + 184) = v53;
    }
  }

  v55 = v57;
  if (v57)
  {
    v56 = *(v9 + 31);
    if (v56 <= 7)
    {
      *(v9 + 31) = v56 + 1;
      *(v9 + 4 * v56 + 184) = v55;
    }
  }

  return result;
}

int sqlite3_bind_parameter_index(sqlite3_stmt *a1, const char *zName)
{
  if (!zName)
  {
    return 0;
  }

  v4 = strlen(zName);
  if (!a1)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(*a1 + 24);
  if (v6)
  {
    xmmword_1ED452F18(v6);
  }

  v7 = *(a1 + 22);
  if (v7)
  {
    v8 = v5 & 0x3FFFFFFF;
    v9 = *(v7 + 4);
    v10 = 2;
    while (1)
    {
      v11 = v7 + 4 * v10;
      if (!strncmp((v11 + 8), zName, v8) && !*(v11 + 8 + v8))
      {
        break;
      }

      v10 += *(v11 + 4);
      if (v10 >= v9)
      {
        goto LABEL_12;
      }
    }

    result = *v11;
  }

  else
  {
LABEL_12:
    result = 0;
  }

  v13 = *(*a1 + 24);
  if (v13)
  {
    v14 = result;
    xmmword_1ED452F28(v13);
    return v14;
  }

  return result;
}

int sqlite3_bind_double(sqlite3_stmt *a1, int a2, double a3)
{
  if (a2 <= 0)
  {
    if (a1)
    {
      v8 = *a1;
      if (*a1)
      {
        *(v8 + 80) = 25;
        sub_181932D5C(v8, 25);
      }

      else
      {
        sqlite3_log(21, "API called with finalized prepared statement", a3);
      }
    }

    else
    {
      sqlite3_log(21, "API called with NULL prepared statement", a3);
    }

    LODWORD(v6) = 25;
  }

  else
  {
    v5 = (a2 - 1);
    LODWORD(v6) = sub_1818DF6EC(a1, a2 - 1);
    if (!v6)
    {
      v7 = *(a1 + 16) + (v5 << 6);
      if ((*(v7 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v7);
      }

      else
      {
        *(v7 + 20) = 1;
      }

      *v7 = a3;
      *(v7 + 20) = 8;
      v6 = *(*a1 + 24);
      if (v6)
      {
        xmmword_1ED452F28(v6);
        LODWORD(v6) = 0;
      }
    }
  }

  return v6;
}

void sub_1818ED1CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1818D0D40(*a3, a3[1], *(*(*(a1 + 24) + 136) + 40 * *(a1 + 32) - 24)))
  {
    v5 = *a3;

    sqlite3_result_value(a1, v5);
  }
}

int sqlite3_value_int(sqlite3_value *a1)
{
  if (!a1)
  {
    sub_1819012D0(92237);
LABEL_5:
    LODWORD(v2) = 0;
    return v2;
  }

  v1 = *(a1 + 10);
  if ((v1 & 0x24) != 0)
  {
    return *a1;
  }

  if ((v1 & 8) == 0)
  {
    if ((v1 & 0x12) != 0 && *(a1 + 1))
    {
      LODWORD(v2) = sub_18193CFCC(a1);
      return v2;
    }

    goto LABEL_5;
  }

  v3 = *a1;
  if (*a1 >= -9.22337204e18)
  {
    if (v3 <= 9.22337204e18)
    {
      return v3;
    }

    else
    {
      LODWORD(v2) = -1;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  return v2;
}

void sqlite3_result_int(sqlite3_context *a1, int a2)
{
  if (a1)
  {
    v2 = *a1;
    if ((*(v2 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v2, a2);
    }

    else
    {
      *v2 = a2;
      *(v2 + 20) = 4;
    }
  }
}

uint64_t sub_1818ED318(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 152))
  {
    v7 = *(a1 + 152);
  }

  else
  {
    v7 = a1;
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = sub_181929E8C(*a1, 0x28uLL, 0x1020040BF36A85DLL);
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    v9 = sub_181902484(40, 0x1020040BF36A85DLL);
    if (!v9)
    {
      return v9;
    }
  }

  v95 = 0u;
  memset(v96, 0, sizeof(v96));
  v93 = 0u;
  v94 = 0u;
  v92 = 0u;
  memset(v91, 0, sizeof(v91));
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 8) = *(v7 + 168);
  *(v7 + 168) = v9;
  if (v8)
  {
    v17 = sub_181929E8C(v8, 0x30uLL, 0x10B004030A81E6FLL);
    if (v17)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = sub_181902484(48, 0x10B004030A81E6FLL);
    if (v17)
    {
LABEL_10:
      v18 = 0uLL;
      *(v17 + 16) = 0u;
      *(v17 + 32) = 0u;
      *v17 = 0u;
      *(v9 + 16) = v17;
      v19 = *(v7 + 16);
      *(v17 + 40) = *(v19 + 376);
      *(v19 + 376) = v17;
      *v9 = a2;
      *(v9 + 24) = a4;
      *(v9 + 28) = -1;
      memset(v91 + 8, 0, 176);
      memset(v96 + 8, 0, 136);
      *(&v92 + 1) = *(v8 + 344);
      *(v8 + 344) = v91;
      *&v91[0] = v8;
      if (*(v8 + 103))
      {
        sub_181910730(v91, "out of memory", v11, v12, v13, v14, v15, v16, v82);
        v18 = 0uLL;
      }

      v100 = v18;
      v99 = v18;
      v98 = v18;
      v97 = v91;
      *(&v91[9] + 1) = v7;
      *&v91[10] = a3;
      *&v96[6] = *a2;
      BYTE7(v91[2]) = *(a2 + 16);
      WORD6(v91[1]) = *(a1 + 28);
      BYTE4(v91[2]) = *(a1 + 36);
      *&v94 = 0;
      v20 = sub_1818E7DFC(v91, v10, v11, v12, v13, v14, v15, v16);
      if (!v20)
      {
        if (*(a1 + 52))
        {
          if (*(&v91[0] + 1))
          {
            sub_181929C84(*&v91[0], *(&v91[0] + 1));
          }
        }

        else
        {
          *(a1 + 8) = *(&v91[0] + 1);
          v29 = DWORD2(v91[1]);
          *(a1 + 52) = DWORD1(v91[3]);
          *(a1 + 24) = v29;
        }

        goto LABEL_95;
      }

      v27 = v20;
      if (*a2)
      {
        v21 = sub_1818A8BAC(v8, "-- TRIGGER %s", v21, v22, v23, v24, v25, v26, *a2);
        if (*(*v27 + 103))
        {
          if (v21)
          {
            sub_181939EC8(*v27, v21);
          }
        }

        else
        {
          v28 = v27[17] + 40 * *(v27 + 36);
          if (*(v28 - 39))
          {
            sub_18194CB90(v27, v28 - 40, v21, 0xFFFFFFFA);
          }

          else if (v21)
          {
            *(v28 - 24) = v21;
            *(v28 - 39) = -6;
          }
        }
      }

      v30 = *(a2 + 24);
      v89 = v9;
      v86 = v7;
      v87 = a1;
      v84 = v27;
      v85 = v17;
      if (v30)
      {
        v31 = sub_1818C7FEC(v8, v30, 0, 0);
        if (*(v8 + 103) || sub_18195ECC4(&v97, v31, v21, v22, v23, v24, v25, v26))
        {
          v83 = 0;
          if (!v31)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        v81 = (DWORD2(v91[4]) - 1);
        DWORD2(v91[4]) = v81;
        v83 = v81;
        sub_1818DD640(v91, v31, v81, 16, v23, v24, v25, v26);
        if (v31)
        {
LABEL_31:
          sub_1819439E0(v8, v31);
        }
      }

      else
      {
        v83 = 0;
      }

LABEL_33:
      v88 = a2;
      v32 = *(a2 + 56);
      v33 = a4;
      if (v32)
      {
        v34 = *&v91[1];
        v35 = *&v91[0];
        while (1)
        {
          v36 = v33;
          if (v33 == 11)
          {
            v36 = v32[1];
          }

          BYTE9(v91[2]) = v36;
          if (*(v32 + 9))
          {
            v40 = sub_1818A8BAC(v35, "-- %s", v21, v22, v23, v24, v25, v26, *(v32 + 9));
            v41 = *(v34 + 144);
            if (*(v34 + 148) <= v41)
            {
              v41 = sub_18194C8AC(v34, 184, 0x7FFFFFFFuLL, 1, 0, v37, v38, v39);
            }

            else
            {
              *(v34 + 144) = v41 + 1;
              v42 = *(v34 + 136) + 40 * v41;
              *v42 = 184;
              *(v42 + 4) = 0x17FFFFFFFLL;
              *(v42 + 12) = 0;
              *(v42 + 28) = 0;
              *(v42 + 20) = 0;
              *(v42 + 36) = 0;
            }

            if (*(*v34 + 103))
            {
              if (v40)
              {
                sub_181939EC8(*v34, v40);
              }
            }

            else
            {
              if (v41 < 0)
              {
                v41 = *(v34 + 144) - 1;
              }

              v43 = *(v34 + 136) + 40 * v41;
              if (*(v43 + 1))
              {
                sub_18194CB90(v34, v43, v40, 0xFFFFFFFA);
              }

              else if (v40)
              {
                *(v43 + 16) = v40;
                *(v43 + 1) = -6;
              }
            }
          }

          v44 = *v32;
          if (v44 == 128)
          {
            break;
          }

          if (v44 == 129)
          {
            v52 = sub_181981C18(v91, v32);
            v53 = *(v32 + 5);
            if (v53)
            {
              v54 = sub_1818C7FEC(v35, v53, 0, 0);
            }

            else
            {
              v54 = 0;
            }

            sub_1818EA08C(v91, v52, v54, 0, 0, v49, v50, v51);
          }

          else
          {
            if (v44 != 130)
            {
              v102 = 0;
              memset(v101, 0, sizeof(v101));
              v65 = sub_1818CB220(v35, *(v32 + 2), 0);
              LOBYTE(v101[0]) = 4;
              *(&v101[1] + 1) = 0;
              *(v101 + 4) = 0uLL;
              sub_1818A9A10(v91, v65, v101, v66, v67, v68, v69, v70);
              if (v65)
              {
                sub_1818BB408(v35, v65, 1);
              }

              goto LABEL_36;
            }

            v45 = sub_181981C18(v91, v32);
            v46 = sub_1818C83A0(v35, *(v32 + 6), 0);
            v47 = *(v32 + 5);
            if (v47)
            {
              v48 = sub_1818C7FEC(v35, v47, 0, 0);
            }

            else
            {
              v48 = 0;
            }

            sub_1818E7FBC(v91, v45, v46, v48, BYTE9(v91[2]), 0, 0, 0);
          }

          v71 = *(v34 + 144);
          if (*(v34 + 148) > v71)
          {
LABEL_80:
            *(v34 + 144) = v71 + 1;
            v72 = *(v34 + 136) + 40 * v71;
            *v72 = -125;
            *(v72 + 1) = 0u;
            *(v72 + 17) = 0u;
            *(v72 + 32) = 0;
            goto LABEL_36;
          }

LABEL_35:
          sub_18194C8AC(v34, 131, 0, 0, 0, v24, v25, v26);
LABEL_36:
          v32 = *(v32 + 10);
          if (!v32)
          {
            goto LABEL_83;
          }
        }

        sub_181981C18(v91, v32);
        sub_1818CB220(v35, *(v32 + 2), 0);
        v55 = *(v32 + 7);
        if (!v55 || (v56 = sub_181929E8C(v35, 8 * *v55 + 8, 0x10040436913F5), (v57 = v56) == 0) || (v58 = *v55, *v56 = *v55, v58 < 1))
        {
LABEL_81:
          sub_181981E48(v35, *(v32 + 8));
          sub_1818D195C(v91);
          v71 = *(v34 + 144);
          if (*(v34 + 148) > v71)
          {
            goto LABEL_80;
          }

          goto LABEL_35;
        }

        v59 = 1;
        while (1)
        {
          v62 = *&v55[2 * v59];
          if (v62)
          {
            v63 = strlen(*&v55[2 * v59]);
            v64 = v63;
            if (v35)
            {
              v60 = sub_181929E8C(v35, v63 + 1, 354097263);
              if (!v60)
              {
                goto LABEL_64;
              }

LABEL_71:
              memcpy(v60, v62, v64 + 1);
              goto LABEL_64;
            }

            v60 = sub_181902484(v63 + 1, 354097263);
            if (v60)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v60 = 0;
          }

LABEL_64:
          *&v57[2 * v59] = v60;
          if (v59++ >= *v55)
          {
            v33 = a4;
            goto LABEL_81;
          }
        }
      }

LABEL_83:
      v9 = v89;
      if (v83)
      {
        v73 = *(v84 + 24);
        v74 = ~v83;
        if (*(v73 + 72) + *(v73 + 76) < 0)
        {
          sub_18195CB84(v73, v84, v74);
        }

        else
        {
          *(*(v73 + 80) + 4 * v74) = *(v84 + 144);
        }
      }

      v75 = *(v84 + 144);
      if (*(v84 + 148) <= v75)
      {
        sub_18194C8AC(v84, 70, 0, 0, 0, v24, v25, v26);
      }

      else
      {
        *(v84 + 144) = v75 + 1;
        v76 = *(v84 + 136) + 40 * v75;
        *v76 = 70;
        *(v76 + 1) = 0u;
        *(v76 + 17) = 0u;
        *(v76 + 32) = 0;
      }

      if (*(v87 + 52))
      {
        if (!*(&v91[0] + 1))
        {
          goto LABEL_94;
        }

        sub_181929C84(*&v91[0], *(&v91[0] + 1));
        if (*(v87 + 52))
        {
          goto LABEL_94;
        }
      }

      else
      {
        *(v87 + 8) = *(&v91[0] + 1);
        v79 = DWORD1(v91[3]);
        v80 = DWORD2(v91[1]);
        *(v87 + 52) = DWORD1(v91[3]);
        *(v87 + 24) = v80;
        if (v79)
        {
          goto LABEL_94;
        }
      }

      v77 = *(v84 + 136);
      sub_18194CD5C(v84, (v86 + 120));
      *(v85 + 8) = *(v84 + 144);
      *(v84 + 136) = 0;
      *v85 = v77;
LABEL_94:
      *(v85 + 12) = vrev64_s32(*(&v91[3] + 8));
      *(v85 + 32) = v88;
      *(v89 + 28) = v94;
      sub_181901AB4(v84);
LABEL_95:
      sub_181910CA0(v91);
      return v9;
    }
  }

  *(v9 + 16) = 0;
  return 0;
}

int sqlite3_bind_null(sqlite3_stmt *a1, int a2)
{
  if (a2 <= 0)
  {
    if (a1)
    {
      v4 = *a1;
      if (*a1)
      {
        *(v4 + 80) = 25;
        sub_181932D5C(v4, 25);
      }

      else
      {
        sqlite3_log(21, "API called with finalized prepared statement");
      }
    }

    else
    {
      sqlite3_log(21, "API called with NULL prepared statement");
    }

    LODWORD(v3) = 25;
  }

  else
  {
    LODWORD(v3) = sub_1818DF6EC(a1, a2 - 1);
    if (!v3)
    {
      v3 = *(*a1 + 24);
      if (v3)
      {
        xmmword_1ED452F28(v3);
        LODWORD(v3) = 0;
      }
    }
  }

  return v3;
}

void sub_1818EDC84(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1)
  {
    v6 = *(*a1 + 24);
    v7 = *(*(a1 + 8) + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v40 = 0;
  v8 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v9 = *(v8 + 20);
  if ((v9 & 2) != 0 && *(v8 + 22) == 1)
  {
    v10 = *(v8 + 16);
    goto LABEL_13;
  }

  if ((v9 & 0x10) == 0)
  {
    if ((v9 & 1) == 0)
    {
      v10 = sub_18193CB44(v8, 1);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = *(v8 + 16);
  if ((*(v8 + 20) & 0x400) != 0)
  {
    v10 += *v8;
  }

LABEL_13:
  if (v10 > *(v6 + 168))
  {
    if (!a1)
    {
      return;
    }

    *(a1 + 36) = 1;
    v11 = "LIKE or GLOB pattern too complex";
LABEL_16:
    v12 = *a1;

    sub_1818900D0(v12, v11, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    return;
  }

  if (a2 == 3)
  {
    v13 = a3[2];
    if (!v13)
    {
      return;
    }

    v14 = *(v13 + 20);
    if ((~v14 & 0x202) != 0 || *(v13 + 22) != 1)
    {
      if (v14)
      {
        return;
      }

      v15 = sub_18193CB70(v13, 1);
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v15 = *(v13 + 8);
      if (!v15)
      {
        return;
      }
    }

    if (v15 == -1)
    {
      goto LABEL_61;
    }

    v16 = *v15;
    if (!*v15)
    {
      goto LABEL_61;
    }

    v26 = 0;
    v27 = *v15;
    v28 = v15;
    do
    {
      v31 = v26;
      if (v27 < 0xC0)
      {
        v29 = *++v28;
        v27 = v29;
      }

      else
      {
        do
        {
          v32 = *++v28;
          v27 = v32;
        }

        while ((v32 & 0xC0) == 0x80);
      }

      ++v26;
      if (v27)
      {
        v30 = v28 + 1 == 0;
      }

      else
      {
        v30 = 1;
      }
    }

    while (!v30);
    if (v31)
    {
LABEL_61:
      if (!a1)
      {
        return;
      }

      *(a1 + 36) = 1;
      v11 = "ESCAPE expression must be a single character";
      goto LABEL_16;
    }

    if (v16 >= 0xC0)
    {
      v33 = byte_181A20D3A[v16 - 192];
      v34 = v15[1];
      if ((v34 & 0xC0) == 0x80)
      {
        v35 = v15 + 2;
        do
        {
          v33 = v34 & 0x3F | (v33 << 6);
          v36 = *v35++;
          v34 = v36;
        }

        while ((v36 & 0xC0) == 0x80);
      }

      if (v33 < 0x80 || v33 >> 1 == 0x7FFF || v33 >> 11 == 27)
      {
        v16 = 65533;
      }

      else
      {
        v16 = v33;
      }
    }

    if (v16 == *v7 || v16 == v7[1])
    {
      v39 = *v7;
      v40 = v39;
      if (v16 == v39)
      {
        LOBYTE(v40) = 0;
      }

      if (v16 == BYTE1(v39))
      {
        BYTE1(v40) = 0;
      }

      v7 = &v40;
    }
  }

  else
  {
    v16 = v7[2];
  }

  v17 = *a3;
  if (!*a3)
  {
    goto LABEL_36;
  }

  v18 = *(v17 + 20);
  if ((~v18 & 0x202) != 0 || *(v17 + 22) != 1)
  {
    if ((v18 & 1) == 0)
    {
      v19 = sub_18193CB70(v17, 1);
      v20 = a3[1];
      if (!v20)
      {
        return;
      }

      goto LABEL_37;
    }

LABEL_36:
    v19 = 0;
    v20 = a3[1];
    if (!v20)
    {
      return;
    }

    goto LABEL_37;
  }

  v19 = *(v17 + 8);
  v20 = a3[1];
  if (!v20)
  {
    return;
  }

LABEL_37:
  v21 = *(v20 + 20);
  if ((~v21 & 0x202) != 0 || *(v20 + 22) != 1)
  {
    if (v21)
    {
      return;
    }

    v22 = sub_18193CB70(v20, 1);
  }

  else
  {
    v22 = *(v20 + 8);
  }

  if (v22)
  {
    if (v19)
    {
      v23 = sub_1818EDFDC(v19, v22, v7, v16);
      if (a1)
      {
        v24 = v23 == 0;
        v25 = *a1;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v25, v24);
        }

        else
        {
          *v25 = v24;
          *(v25 + 20) = 4;
        }
      }
    }
  }
}

uint64_t sub_1818EDFDC(unsigned __int8 *a1, const char *a2, unsigned __int8 *a3, int a4)
{
  v101 = a1;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a3[1];
    v6 = *a3;
    v7 = a3[3];
    while (1)
    {
      v10 = *a1;
      v8 = a1 + 1;
      v9 = v10;
      v11 = v8;
      v101 = v8;
      if ((v10 & 0x80) == 0)
      {
        break;
      }

      if (v9 < 0xC0)
      {
        goto LABEL_15;
      }

      v9 = byte_181A20D3A[v9 - 192];
      v12 = *v8;
      if ((*v8 & 0xC0) == 0x80)
      {
        do
        {
          v13 = *++v11;
          v9 = v12 & 0x3F | (v9 << 6);
          v12 = v13;
        }

        while ((v13 & 0xC0) == 0x80);
        v101 = v11;
      }

      v14 = 65533;
      if (v9 >> 1 != 0x7FFF && v9 >= 0x80 && (v9 & 0xFFFFF800) != 0xD800)
      {
        break;
      }

LABEL_17:
      if (v14 != a4)
      {
        a1 = v11;
        goto LABEL_120;
      }

      if (a3[2])
      {
        v16 = *a2++;
        v15 = v16;
        v17 = v16 - 192;
        if (v16 < 0xC0)
        {
          goto LABEL_213;
        }

        v15 = byte_181A20D3A[v17];
        v18 = *a2;
        if ((*a2 & 0xC0) == 0x80)
        {
          do
          {
            v19 = *++a2;
            v15 = v18 & 0x3F | (v15 << 6);
            v18 = v19;
          }

          while ((v19 & 0xC0) == 0x80);
        }

        v20 = 65533;
        if (v15 >> 1 != 0x7FFF && v15 >= 0x80 && (v15 & 0xFFFFF800) != 0xD800)
        {
LABEL_213:
          v20 = v15;
          if (!v15)
          {
            return 1;
          }
        }

        a1 = v11 + 1;
        v101 = v11 + 1;
        v21 = *v11;
        if (v21 < 0xC0)
        {
          goto LABEL_33;
        }

        v21 = byte_181A20D3A[v21 - 192];
        v22 = *a1;
        if ((*a1 & 0xC0) == 0x80)
        {
          do
          {
            v23 = *++a1;
            v21 = v22 & 0x3F | (v21 << 6);
            v22 = v23;
          }

          while ((v23 & 0xC0) == 0x80);
          v101 = a1;
        }

        v24 = 0;
        v25 = 65533;
        if (v21 >> 1 == 0x7FFF || v21 < 0x80)
        {
          v26 = 0;
          goto LABEL_61;
        }

        v26 = 0;
        if ((v21 & 0xFFFFF800) != 0xD800)
        {
LABEL_33:
          if (v21 == 94)
          {
            v27 = a1 + 1;
            v101 = a1 + 1;
            v21 = *a1;
            if (v21 < 0xC0)
            {
              v24 = 1;
              ++a1;
              if (v21 == 93)
              {
LABEL_42:
                v26 = v20 == 93;
                v30 = a1 + 1;
                v101 = a1 + 1;
                v25 = *a1;
                if (v25 >= 0xC0)
                {
                  v31 = byte_181A20D3A[v25 - 192];
                  v32 = *v30;
                  if ((*v30 & 0xC0) == 0x80)
                  {
                    do
                    {
                      v33 = *++v30;
                      v31 = v32 & 0x3F | (v31 << 6);
                      v32 = v33;
                    }

                    while ((v33 & 0xC0) == 0x80);
                    v101 = v30;
                  }

                  if (v31 < 0x80 || v31 >> 1 == 0x7FFF || v31 >> 11 == 27)
                  {
                    v25 = 65533;
                  }

                  else
                  {
                    v25 = v31;
                  }
                }

                a1 = v30;
                goto LABEL_61;
              }
            }

            else
            {
              v21 = byte_181A20D3A[v21 - 192];
              v28 = *v27;
              if ((*v27 & 0xC0) == 0x80)
              {
                do
                {
                  v29 = *++v27;
                  v21 = v28 & 0x3F | (v21 << 6);
                  v28 = v29;
                }

                while ((v29 & 0xC0) == 0x80);
                v101 = v27;
              }

              a1 = v27;
              v26 = 0;
              v25 = 65533;
              v24 = 1;
              if (v21 >> 1 == 0x7FFF || v21 < 0x80 || (v21 & 0xFFFFF800) == 0xD800)
              {
                goto LABEL_61;
              }
            }
          }

          else
          {
            v24 = 0;
            if (v21 == 93)
            {
              goto LABEL_42;
            }
          }

          v26 = 0;
          v25 = v21;
        }

LABEL_61:
        v36 = 0;
        while (v25 == 45)
        {
          v39 = *a1;
          if (v39 == 93 || v36 == 0 || v39 == 0)
          {
            goto LABEL_82;
          }

          ++a1;
          if (v39 >= 0xC0)
          {
            v46 = byte_181A20D3A[v39 - 192];
            v47 = *a1;
            if ((*a1 & 0xC0) == 0x80)
            {
              do
              {
                v48 = *++a1;
                v46 = v47 & 0x3F | (v46 << 6);
                v47 = v48;
              }

              while ((v48 & 0xC0) == 0x80);
            }

            if (v46 < 0x80 || v46 >> 1 == 0x7FFF || v46 >> 11 == 27)
            {
              v39 = 65533;
            }

            else
            {
              v39 = v46;
            }
          }

          v51 = v20 <= v39 && v20 >= v36;
          v36 = 0;
          if (v51)
          {
            v26 = 1;
          }

LABEL_85:
          v42 = *a1++;
          v25 = v42;
          v43 = v42 - 192;
          if (v42 >= 0xC0)
          {
            v25 = byte_181A20D3A[v43];
            v44 = *a1;
            if ((*a1 & 0xC0) == 0x80)
            {
              do
              {
                v45 = *++a1;
                v25 = v44 & 0x3F | (v25 << 6);
                v44 = v45;
              }

              while ((v45 & 0xC0) == 0x80);
            }

            if (v25 < 0x80 || v25 >> 1 == 0x7FFF || v25 >> 11 == 27)
            {
              v25 = 65533;
            }
          }
        }

        if (!v25)
        {
          return 1;
        }

        if (v25 != 93)
        {
LABEL_82:
          if (v20 == v25)
          {
            v26 = 1;
          }

          v36 = v25;
          goto LABEL_85;
        }

        v101 = a1;
        v84 = 1;
        if (v26 == v24)
        {
          return v84;
        }
      }

      else
      {
        a1 = v11 + 1;
        v101 = v11 + 1;
        v52 = *v11;
        if (v52 >= 0xC0)
        {
          v52 = byte_181A20D3A[v52 - 192];
          v53 = *a1;
          if ((*a1 & 0xC0) == 0x80)
          {
            do
            {
              v54 = *++a1;
              v52 = v53 & 0x3F | (v52 << 6);
              v53 = v54;
            }

            while ((v54 & 0xC0) == 0x80);
            v101 = a1;
          }

          v14 = 65533;
          if (v52 >> 1 == 0x7FFF || v52 < 0x80)
          {
            v4 = a1;
            goto LABEL_120;
          }

          v4 = a1;
          if ((v52 & 0xFFFFF800) == 0xD800)
          {
            goto LABEL_120;
          }
        }

        v14 = v52;
        v4 = a1;
        if (!v52)
        {
          return 1;
        }

LABEL_120:
        v56 = *a2++;
        v55 = v56;
        v57 = v56 - 192;
        if (v56 >= 0xC0)
        {
          v55 = byte_181A20D3A[v57];
          v58 = *a2;
          if ((*a2 & 0xC0) == 0x80)
          {
            do
            {
              v59 = *++a2;
              v55 = v58 & 0x3F | (v55 << 6);
              v58 = v59;
            }

            while ((v59 & 0xC0) == 0x80);
          }

          if (v55 < 0x80 || v55 >> 1 == 0x7FFF || v55 >> 11 == 27)
          {
            v55 = 65533;
          }
        }

        if (v14 != v55 && (!v7 || (v55 | v14) > 0x7F || byte_181A20298[v14] != byte_181A20298[v55]))
        {
          if (v14 != v5)
          {
            return 1;
          }

          v84 = 1;
          if (!v55 || a1 == v4)
          {
            return v84;
          }
        }
      }
    }

    if (!v9)
    {
      return *a2 != 0;
    }

LABEL_15:
    if (v9 == v6)
    {
      while (1)
      {
        v64 = *v11++;
        v63 = v64;
        v101 = v11;
        v65 = v64 - 192;
        if (v64 >= 0xC0)
        {
          v66 = byte_181A20D3A[v65];
          v67 = *v11;
          if ((*v11 & 0xC0) == 0x80)
          {
            do
            {
              v68 = *++v11;
              v66 = v67 & 0x3F | (v66 << 6);
              v67 = v68;
            }

            while ((v68 & 0xC0) == 0x80);
            v101 = v11;
          }

          if (v66 < 0x80 || v66 >> 1 == 0x7FFF || v66 >> 11 == 27)
          {
            v63 = 65533;
          }

          else
          {
            v63 = v66;
          }
        }

        v71 = v5 && v63 == v5;
        v72 = v71;
        if (v63 != v6 && !v72)
        {
          break;
        }

        if (v63 == v5)
        {
          v75 = *a2++;
          v74 = v75;
          v76 = v75 - 192;
          if (v75 < 0xC0)
          {
            goto LABEL_172;
          }

          v74 = byte_181A20D3A[v76];
          v77 = *a2;
          if ((*a2 & 0xC0) == 0x80)
          {
            do
            {
              v78 = *++a2;
              v74 = v77 & 0x3F | (v74 << 6);
              v77 = v78;
            }

            while ((v78 & 0xC0) == 0x80);
          }

          if (v74 >> 1 != 0x7FFF && v74 >= 0x80 && (v74 & 0xFFFFF800) != 0xD800)
          {
LABEL_172:
            v84 = 2;
            if (!v74)
            {
              return v84;
            }
          }
        }
      }

      if (!v63)
      {
        return 0;
      }

      if (v63 == a4)
      {
        if (a3[2])
        {
          if (*a2)
          {
            v79 = v11 - 1;
            while (1)
            {
              v81 = a2;
              v82 = sub_1818EDFDC(v79);
              if (v82 != 1)
              {
                break;
              }

              a2 = v81;
              if (*v81 < 0xC0u)
              {
                v80 = *(v81 + 1);
                a2 = v81 + 1;
              }

              else
              {
                do
                {
                  v83 = *++a2;
                  v80 = v83;
                }

                while ((v83 & 0xC0) == 0x80);
              }

              v84 = 2;
              if (!v80)
              {
                return v84;
              }
            }

            return v82;
          }

          return 2;
        }

        v85 = a2;
        v86 = sub_18194E43C(&v101);
        a2 = v85;
        v63 = v86;
        if (!v86)
        {
          return 2;
        }
      }

      if (v63 < 0x80)
      {
        if (v7)
        {
          v87 = a2;
          v88 = (~byte_181A204C8[v63] | 0xDF) & v63;
          v89 = byte_181A20298[v63];
          __charset[2] = 0;
        }

        else
        {
          v87 = a2;
          v89 = 0;
          v88 = v63;
        }

        __charset[0] = v88;
        __charset[1] = v89;
        v98 = v101;
        while (1)
        {
          v99 = &v87[strcspn(v87, __charset)];
          if (!*v99)
          {
            break;
          }

          v87 = v99 + 1;
          v82 = sub_1818EDFDC(v98);
          if (v82 != 1)
          {
            return v82;
          }
        }

        return 2;
      }

      v90 = v101;
      while (2)
      {
        v92 = *a2++;
        v91 = v92;
        if ((v92 & 0x80) != 0)
        {
          if (v91 < 0xC0)
          {
            v93 = v91;
          }

          else
          {
            v91 = byte_181A20D3A[v91 - 192];
            v94 = *a2;
            if ((*a2 & 0xC0) == 0x80)
            {
              do
              {
                v95 = *++a2;
                v91 = v94 & 0x3F | (v91 << 6);
                v94 = v95;
              }

              while ((v95 & 0xC0) == 0x80);
            }

            v93 = 65533;
            if (v91 >> 1 != 0x7FFF && v91 >= 0x80 && (v91 & 0xFFFFF800) != 0xD800)
            {
              goto LABEL_192;
            }
          }
        }

        else
        {
LABEL_192:
          v93 = v91;
          if (!v91)
          {
            return 2;
          }
        }

        if (v93 == v63)
        {
          v96 = a2;
          v97 = sub_1818EDFDC(v90);
          a2 = v96;
          v84 = v97;
          if (v97 != 1)
          {
            return v84;
          }
        }

        continue;
      }
    }

    v14 = v9;
    goto LABEL_17;
  }

  sub_1819012D0(139644);
  return 1;
}

int sqlite3_bind_blob(sqlite3_stmt *a1, int a2, const void *a3, int n, void (__cdecl *a5)(void *))
{
  if (n < 0)
  {
    return sub_1819012D0(101409);
  }

  else
  {
    return sub_1818DF574(a1, a2, a3, n, a5, 0);
  }
}

sqlite3_stmt *__cdecl sqlite3_next_stmt(sqlite3 *pDb, sqlite3_stmt *pStmt)
{
  if (!pDb)
  {
    v3 = "NULL";
    goto LABEL_11;
  }

  v2 = *(pDb + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v3);
    v4 = 101836;
    goto LABEL_12;
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  if (pStmt && *pStmt != pDb)
  {
    v4 = 101841;
LABEL_12:
    sub_1819012D0(v4);
    return 0;
  }

  if (*(pDb + 3))
  {
    xmmword_1ED452F18(*(pDb + 3));
    v8 = *(pDb + 3);
    v9 = (pDb + 8);
    if (pStmt)
    {
      v9 = (pStmt + 16);
    }

    result = *v9;
    if (v8)
    {
      v10 = *v9;
      xmmword_1ED452F28(v8);
      return v10;
    }
  }

  else
  {
    v11 = (pDb + 8);
    if (pStmt)
    {
      v11 = (pStmt + 16);
    }

    return *v11;
  }

  return result;
}

uint64_t sub_1818EE950(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  sub_18192A708(a1);
  sub_18192B800(a1, 0, 0);
  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v3);
    }
  }

  if (qword_1ED456B10)
  {
    xmmword_1ED452F18(qword_1ED456B10);
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  if (*(v2 + 28))
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 48);
    *(v6 + 8) = *(v5 + 40);
    *(v5 + 40) = v6;
    *(a1 + 24) = -1;
    *(a1 + 48) = 0;
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    xmmword_1ED452F28(v7);
  }

  sub_18192A87C(a1);
  v8 = *(a1 + 160);
  if (v8)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v8);
    }
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    off_1EE341CF0(v9, *(a1 + 88));
    *(a1 + 104) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 24);
  if ((v10 & 0x80000000) == 0)
  {
    if (off_1EE341AE0(v10))
    {
      v11 = *(a1 + 56);
      v12 = *__error();
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v12, __strerrbuf, 0x4FuLL);
      v13 = &byte_181A2878D;
      if (v11)
      {
        v13 = v11;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 44393, v12, "close", v13, __strerrbuf);
    }

    *(a1 + 24) = -1;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_29:
      (*v15)(v14);
      goto LABEL_30;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v14);
    --qword_1ED456A90;
    off_1ED452EB0(v14);
    v14 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v15 = &xmmword_1ED452F28;
      goto LABEL_29;
    }
  }

LABEL_30:
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (qword_1ED456B10)
  {
    xmmword_1ED452F28(qword_1ED456B10);
  }

  return 0;
}

uint64_t sub_1818EEBE4(uint64_t result)
{
  v1 = *(result + 32);
  v2 = __OFSUB__(v1--, 1);
  *(result + 32) = v1;
  if (!((v1 < 0) ^ v2 | (v1 == 0)))
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 8);
  *(result + 8) = 0;
  v5 = *(result + 24);
  if (v5)
  {
    v6 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_9:
      (*v6)(v5);
      goto LABEL_10;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v5);
    --qword_1ED456A90;
    off_1ED452EB0(v5);
    v5 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v6 = &xmmword_1ED452F28;
      goto LABEL_9;
    }
  }

LABEL_10:
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  if (v4)
  {
    while (1)
    {
      v7 = *v4;
      if (*(v3 + 1))
      {
        v8 = v4[3];
        if (v8)
        {
          v9 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_21;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v8);
          --qword_1ED456A90;
          off_1ED452EB0(v8);
          v8 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            break;
          }
        }
      }

LABEL_22:
      v10 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v4);
        --qword_1ED456A90;
        off_1ED452EB0(v4);
        v4 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_13;
        }

        v10 = &xmmword_1ED452F28;
      }

      (*v10)(v4);
LABEL_13:
      v4 = v7;
      if (!v7)
      {
        goto LABEL_27;
      }
    }

    v9 = &xmmword_1ED452F28;
LABEL_21:
    (*v9)(v8);
    goto LABEL_22;
  }

LABEL_27:
  *(v3 + 4) = 0;
  v11 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_32;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v3);
  --qword_1ED456A90;
  result = off_1ED452EB0(v3);
  v3 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v11 = &xmmword_1ED452F28;
LABEL_32:
    v12 = *v11;

    return v12(v3);
  }

  return result;
}

uint64_t sub_1818EEE54(uint64_t a1, unsigned int a2, signed int a3, char *a4, int a5)
{
  v5 = *(a1 + 136);
  if (*(a1 + 86) >= *(v5 + 24))
  {
    v14 = 84372;
    goto LABEL_5;
  }

  v11 = *(a1 + 32);
  sub_181938B20(a1);
  v12 = *(a1 + 56);
  v13 = *(a1 + 68);
  if (v12 - *(v5 + 80) > (v11[14] - v13))
  {
    v14 = 84387;
LABEL_5:

    return sub_18193596C(v14, v5);
  }

  __src = a4;
  if (v13 > a2)
  {
    if (a3 + a2 <= v13)
    {
      v16 = a3;
    }

    else
    {
      v16 = v13 - a2;
    }

    v17 = (v12 + a2);
    if (!a5)
    {
      v23 = v16;
      v24 = a4;
      v25 = v17;
LABEL_25:
      memcpy(v24, v25, v23);
      result = 0;
LABEL_26:
      v21 = 0;
      v22 = &a4[v16];
      a3 -= v16;
      if (result)
      {
        goto LABEL_87;
      }

      goto LABEL_27;
    }

    v18 = *(v5 + 112);
    v19 = *(v18 + 40);
    if ((*(v18 + 52) & 4) != 0 && v19[8] >= *(v18 + 48))
    {
      if (!v19[32])
      {
LABEL_24:
        v23 = v16;
        v24 = v17;
        v25 = a4;
        goto LABEL_25;
      }

      result = sub_1819360C0(*(v5 + 112));
    }

    else
    {
      result = v19[12];
      if (result)
      {
        goto LABEL_26;
      }

      v20 = *(v5 + 112);
      if (v19[46] <= v19[50])
      {
        result = sub_1818D8DD8(v20);
      }

      else
      {
        result = sub_181936438(v20);
      }
    }

    if (result)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  result = 0;
  v21 = a2 - v13;
  v22 = a4;
LABEL_27:
  if (a3)
  {
    v26 = v11[14];
    v27 = v26 - 4;
    v28 = *(a1 + 68);
    v29 = bswap32(*(v12 + v28));
    v59 = v29;
    if ((*(a1 + 1) & 4) != 0)
    {
      v35 = *(a1 + 16);
      v36 = v21 / v27;
      if (*(v35 + 4 * (v21 / v27)))
      {
        v37 = v36;
        v29 = *(v35 + 4 * v36);
        v59 = v29;
        v21 %= v27;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v30 = v22;
      v31 = v29;
      v32 = *(a1 + 16);
      v33 = (v26 - v28 + *(a1 + 64) - 5) / v27;
      if (v32 && xmmword_1ED452EC0(v32) >= 4 * v33)
      {
        v34 = *(a1 + 16);
      }

      else
      {
        if (off_1ED453038 && off_1ED453038(413))
        {
          return 7;
        }

        v34 = sub_18190287C(*(a1 + 16), 8 * v33, 0x100004052888210);
        if (!v34)
        {
          return 7;
        }

        *(a1 + 16) = v34;
      }

      bzero(v34, 4 * v33);
      v37 = 0;
      *(a1 + 1) |= 4u;
      v29 = v31;
      v22 = v30;
    }

    if (v29)
    {
      v38 = 4 * v37;
      while (1)
      {
        if (v29 > v11[16])
        {
          return sub_18190EDA8(84458);
        }

        v39 = *(a1 + 16);
        *(v39 + v38) = v29;
        if (v21 < v27)
        {
          break;
        }

        v46 = *(v39 + v38 + 4);
        if (v46)
        {
          result = 0;
          v59 = v46;
        }

        else
        {
          result = sub_181944028(v11, v29, 0, &v59);
        }

        v21 -= v27;
LABEL_84:
        if (result)
        {
          goto LABEL_87;
        }

        v29 = v59;
        v38 += 4;
        if (!v59)
        {
          goto LABEL_86;
        }
      }

      v57 = v22;
      if (v21 + a3 <= v27)
      {
        v40 = a3;
      }

      else
      {
        v40 = v27 - v21;
      }

      if (!(a5 | v21))
      {
        v41 = *v11;
        v42 = **(*v11 + 72);
        if (v42)
        {
          if (!**(v41 + 336) && !*(v41 + 296))
          {
            v50 = *(v41 + 344);
            v55 = v29;
            if (v50)
            {
              LODWORD(v58) = 0;
              sub_18193452C(v50, v29, &v58);
              if (v58)
              {
                goto LABEL_52;
              }

              v42 = **(v41 + 72);
            }

            if (((*(v42 + 96))() & 0x8000) != 0 && v57 - 4 >= __src)
            {
              v54 = *(v57 - 1);
              result = (*(**(*v11 + 72) + 16))(*(*v11 + 72), v57 - 1, (v40 + 4), v11[13] * (v55 - 1));
              v21 = 0;
              v59 = bswap32(*(v57 - 1));
              *(v57 - 1) = v54;
              goto LABEL_82;
            }
          }
        }
      }

LABEL_52:
      v58 = 0;
      result = (*(*v11 + 288))();
      if (!result)
      {
        v43 = *(v58 + 8);
        v59 = bswap32(*v43);
        v44 = v21 + 4;
        if (!a5)
        {
          v47 = v40;
          v48 = v43 + v44;
          v49 = v57;
LABEL_75:
          memcpy(v49, v48, v47);
          result = 0;
LABEL_76:
          v51 = v58;
          if (v58)
          {
            v52 = result;
            if ((*(v58 + 52) & 0x20) != 0)
            {
              v53 = *(v58 + 40);
              --*(v53 + 152);
              *(v51 + 32) = *(v53 + 168);
              *(v53 + 168) = v51;
              (*(**(v53 + 72) + 144))(*(v53 + 72), *(v53 + 200) * (*(v51 + 48) - 1), *(v51 + 8));
            }

            else
            {
              sub_181932B68(v58);
            }

            v21 = 0;
            result = v52;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_82;
        }

        v45 = *(v58 + 40);
        if ((*(v58 + 52) & 4) != 0 && v45[8] >= *(v58 + 48))
        {
          if (!v45[32])
          {
LABEL_74:
            v47 = v40;
            v49 = v43 + v44;
            v48 = v57;
            goto LABEL_75;
          }

          result = sub_1819360C0(v58);
        }

        else
        {
          result = v45[12];
          if (result)
          {
            goto LABEL_76;
          }

          if (v45[46] <= v45[50])
          {
            result = sub_1818D8DD8(v58);
          }

          else
          {
            result = sub_181936438(v58);
          }
        }

        if (result)
        {
          goto LABEL_76;
        }

        goto LABEL_74;
      }

LABEL_82:
      a3 -= v40;
      if (!a3)
      {
        return result;
      }

      v22 = &v57[v40];
      goto LABEL_84;
    }

LABEL_86:
    result = 0;
  }

LABEL_87:
  if (!result && a3)
  {
    return sub_18193596C(84542, v5);
  }

  return result;
}

void *__cdecl sqlite3_user_data(void *result)
{
  if (result)
  {
    return *(*(result + 1) + 8);
  }

  return result;
}

uint64_t sub_1818EF3D0(uint64_t a1, int a2)
{
  v3 = *(a1 + 18);
  v4 = *(a1 + 24);
  v5 = (v3 + 2 * v4);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = v6[14];
  v9 = &v7[*(a1 + 9)];
  if (v9[7] <= a2)
  {
    v18 = __rev16(*(v9 + 1));
    v10 = v8 - 4;
    if (v18 > v8 - 4)
    {
      v23 = 80904;
      goto LABEL_25;
    }

    if (v18)
    {
      v19 = __rev16(*&v7[v18]);
      if (v19 > v10)
      {
        v23 = 80907;
        goto LABEL_25;
      }

      if (!v19 || !v7[v19] && !v7[v19 + 1])
      {
        v35 = &v7[*(a1 + 9)];
        v24 = __rev16(*(v9 + 5));
        v25 = v18 - v24;
        if (v18 <= v24)
        {
          v23 = 80915;
          goto LABEL_25;
        }

        v26 = __rev16(*&v7[v18 + 2]);
        v27 = v26 + v18;
        if (v19)
        {
          if (v19 < v27)
          {
            v23 = 80918;
            goto LABEL_25;
          }

          v28 = __rev16(*&v7[v19 + 2]);
          if ((v28 + v19) > v8)
          {
            v23 = 80920;
            goto LABEL_25;
          }

          v29 = v19;
          memmove(&v7[v28 + v27], &v7[v27], (v19 - v27));
          v25 = v18 - v24;
          v26 += v28;
        }

        else
        {
          if (v27 > v8)
          {
            v22 = 20;
LABEL_24:
            v23 = v22 | 0x13C08;
            goto LABEL_25;
          }

          v29 = 0;
          v28 = 0;
        }

        v14 = v26 + v24;
        memmove(&v7[v14], &v7[v24], v25);
        v36 = v7;
        if (v3 >= v5)
        {
          v20 = v35;
        }

        else
        {
          v30 = &v7[v3];
          v20 = v35;
          do
          {
            v31 = __rev16(*v30);
            v32 = v26;
            if (v31 < v18 || (v32 = v28, v31 < v29))
            {
              *v30 = bswap32(v31 + v32) >> 16;
            }

            ++v30;
          }

          while (v30 < &v7[v5]);
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    v10 = v8 - 4;
  }

  v33 = v3 + 2 * v4;
  v34 = &v7[*(a1 + 9)];
  v36 = *(a1 + 80);
  if (*(a1 + 24))
  {
    v11 = __rev16(*(v9 + 5));
    v12 = *(*v6 + 328);
    memcpy(v12, v7, v8);
    v13 = &v7[v3 + 1];
    LODWORD(v14) = v8;
    while (1)
    {
      v15 = __rev16(*(v13 - 1));
      if (v15 > v10)
      {
        break;
      }

      v16 = (*(a1 + 120))(a1, &v12[v15]);
      LODWORD(v14) = v14 - v16;
      if (v14 < v11 || (v15 + v16) > v8)
      {
        v23 = 80963;
        goto LABEL_25;
      }

      *(v13 - 1) = bswap32(v14) >> 16;
      memcpy(&v36[v14], &v12[v15], v16);
      v13 += 2;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    v22 = 53;
    goto LABEL_24;
  }

  LODWORD(v14) = v6[14];
LABEL_19:
  LODWORD(v5) = v33;
  v20 = v34;
  v34[7] = 0;
LABEL_20:
  if (v14 - v5 + v20[7] == *(a1 + 20))
  {
    *(v20 + 5) = bswap32(v14) >> 16;
    *(v20 + 1) = 0;
    bzero(&v36[v5], v14 - v5);
    return 0;
  }

  v23 = 80977;
LABEL_25:

  return sub_18193596C(v23, a1);
}

_DWORD *sub_1818EF720(_DWORD *result, int a2, int a3, int a4, _DWORD *a5)
{
  if (!*a5)
  {
    if (a2 == 1)
    {
      v6 = 1;
      v7 = a3;
      v8 = a4;
      v9 = a5;
      v10 = 0;
    }

    else
    {
      if (!a2)
      {
        result = sub_18190EDA8(80330);
        *a5 = result;
        return result;
      }

      v7 = a3;
      v8 = a4;
      v9 = a5;
      v6 = a2;
      v11 = (a2 - 2) / (result[14] / 5u + 1) * (result[14] / 5u + 1);
      if (v11 + 1 == dword_1EA8315A8 / result[13])
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v10 = v12 + v11;
    }

    result = (*(*result + 288))();
    if (result)
    {
      *v9 = result;
      return result;
    }

    if (*MEMORY[0x10])
    {
      v13 = 80343;
    }

    else
    {
      v14 = 5 * (~v10 + v6);
      if (v14 >= 0)
      {
        v15 = (MEMORY[8] + v14);
        if (*v15 != v7 || bswap32(*(v15 + 1)) != v8)
        {
          v16 = sub_1818D8D88(0);
          *v9 = v16;
          if (!v16)
          {
            *v15 = v7;
            v15[1] = HIBYTE(v8);
            v15[2] = BYTE2(v8);
            v15[3] = BYTE1(v8);
            v15[4] = v8;
          }
        }

        return 0;
      }

      v13 = 80348;
    }

    *v9 = sub_18190EDA8(v13);
    return 0;
  }

  return result;
}

sqlite3_int64 sqlite3_last_insert_rowid(sqlite3 *a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
    switch(v1)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return *(a1 + 7);
      case 109:
LABEL_5:
        v2 = "unopened";
        break;
      default:
        v2 = "invalid";
        break;
    }
  }

  else
  {
    v2 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v2);
  sub_1819012D0(192786);
  return 0;
}

uint64_t sub_1818EF99C(uint64_t result, int a2, int a3)
{
  if (!result)
  {
    return result;
  }

  if (*(result + 16) != 2)
  {
    return 0;
  }

  v3 = *(result + 8);
  v4 = result;
  if (*(result + 17) && (++*(result + 20), !*(result + 18)))
  {
    v8 = a3;
    v9 = a2;
    sub_181932DEC(result);
    a2 = v9;
    a3 = v8;
    if (v9 != 2)
    {
      goto LABEL_12;
    }
  }

  else if (a2 != 2)
  {
    goto LABEL_12;
  }

  v5 = *(v3 + 16);
  if (!v5 || (v6 = a2, v7 = a3, result = sub_18193880C(v5, 0, 0), a2 = v6, a3 = v7, !result))
  {
LABEL_12:
    v10 = a3;
    result = sub_18193C13C(*v3, a2, a3);
    if (!result)
    {
      if (v10 < 0 && (*(v3 + 40) & 0x10) != 0)
      {
        *(v3 + 64) = 0;
      }

      result = sub_1818D1728(v3);
      v11 = bswap32(*(*(*(v3 + 24) + 80) + 28));
      if (!v11)
      {
        v11 = *(*v3 + 32);
      }

      *(v3 + 64) = v11;
    }
  }

  if (*(v4 + 17))
  {
    v12 = *(v4 + 20) - 1;
    *(v4 + 20) = v12;
    if (!v12)
    {
      v13 = result;
      sub_181932ECC(v4);
      return v13;
    }
  }

  return result;
}

uint64_t sub_1818EFAC4(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 8))
  {
    for (i = 16; i != 512; i += 8)
    {
      sub_1818EFAC4(*(v1 + i));
    }
  }

  v3 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_10;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v3 = &xmmword_1ED452F28;
LABEL_10:
    v4 = *v3;

    return v4(v1);
  }

  return result;
}

uint64_t sub_1818EFBBC(uint64_t a1, uint64_t a2, int a3, unsigned int (*a4)(uint64_t), uint64_t a5, unsigned int a6, int a7, uint64_t a8, _DWORD *a9, _DWORD *a10)
{
  v188 = *MEMORY[0x1E69E9840];
  v171 = 0;
  if (*(a1 + 66))
  {
    return 8;
  }

  v15 = a4;
  *(a1 + 160) = a2;
  if (a2)
  {
    if (a4)
    {
      if (*(a2 + 788))
      {
        LODWORD(v175) = *(a2 + 788);
        v18 = *(a1 + 8);
        if (*v18)
        {
          v19 = a3;
          (*(*v18 + 80))(v18, 34, &v175);
          a3 = v19;
        }
      }
    }
  }

  v170 = a3;
  if (*(a1 + 63) || (v22 = (*(**(a1 + 8) + 112))(*(a1 + 8), 1, 1, 10), v20 = v170, !v22))
  {
    *(a1 + 65) = 1;
    v20 = v170;
    if (v170)
    {
      while (!*(a1 + 63))
      {
        v21 = (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 10);
        v22 = v21;
        if (!v15 || v21 != 5)
        {
          if (v21)
          {
            if (v21 != 5)
            {
              if (v21 != 773)
              {
                goto LABEL_34;
              }

              LODWORD(v175) = 0;
              v23 = *(a1 + 8);
              if (*v23)
              {
                (*(*v23 + 80))(v23, 34, &v175);
              }
            }

LABEL_22:
            v15 = 0;
            v20 = 0;
            goto LABEL_24;
          }

          break;
        }

        if (!v15(a5))
        {
          goto LABEL_22;
        }
      }

      *(a1 + 64) = 1;
    }

LABEL_24:
    LODWORD(v175) = 0;
    v24 = **(a1 + 8);
    if (v24)
    {
      (*(v24 + 80))();
    }

    v22 = sub_1818A5900(a1, &v171);
    if (v20)
    {
      v25 = *(a1 + 160);
      if (v25)
      {
        v26 = *(v25 + 788);
        if (v26)
        {
          LODWORD(v175) = v26;
          v27 = *(a1 + 8);
          if (*v27)
          {
            (*(*v27 + 80))(v27, 34, &v175);
          }
        }
      }
    }

    if (v171)
    {
      v28 = *(a1 + 8);
      if (**v28 >= 3)
      {
        (*(*v28 + 144))(v28, 0, 0);
      }
    }

LABEL_34:
    if (!v22)
    {
      v32 = *(a1 + 88);
      if (v32 && ((*(a1 + 86) | (*(a1 + 86) << 16)) & 0x1FE00) != a7)
      {
        v22 = sub_18190EDA8(78588);
        goto LABEL_240;
      }

      v33 = **(a1 + 48);
      if (*(v33 + 96) >= v32)
      {
        v41 = 0;
        v22 = 0;
        v42 = **(a1 + 48);
        if (!v20)
        {
          goto LABEL_233;
        }

        goto LABEL_212;
      }

      v161 = a6;
      v162 = (*(a1 + 86) | (*(a1 + 86) << 16)) & 0x1FE00;
      v22 = 0;
      v159 = a8;
      v160 = *(a1 + 92);
      v166 = **(a1 + 48);
      v34 = v33 + 100;
      for (i = 1; i != 5; ++i)
      {
        v37 = *(v34 + 4 * i);
        if (v32 > v37)
        {
          v38 = v32;
          while (1)
          {
            if (*(a1 + 63))
            {
              goto LABEL_61;
            }

            v39 = (*(**(a1 + 8) + 112))(*(a1 + 8), (i + 3), 1, 10);
            v22 = v39;
            if (!v15 || v39 != 5)
            {
              break;
            }

            if (!v15(a5))
            {
              goto LABEL_74;
            }
          }

          if (v39)
          {
            if (v39 == 5)
            {
              v15 = 0;
              v32 = v37;
            }

            else
            {
              if (v39 != 773)
              {
                goto LABEL_240;
              }

              LODWORD(v175) = 0;
              v40 = *(a1 + 8);
              if (*v40)
              {
                (*(*v40 + 80))(v40, 34, &v175);
              }

LABEL_74:
              v15 = 0;
              v22 = 5;
              v32 = v37;
            }
          }

          else
          {
LABEL_61:
            if (i == 1)
            {
              v36 = v38;
            }

            else
            {
              v36 = -1;
            }

            *(v34 + 4 * i) = v36;
            if (!*(a1 + 63))
            {
              (*(**(a1 + 8) + 112))(*(a1 + 8), (i + 3), 1, 9);
            }

            v32 = v38;
            v22 = 0;
          }
        }
      }

      v42 = v166;
      if (*(v166 + 96) < v32)
      {
        v155 = v32;
        v43 = *(v166 + 96);
        v44 = *(a1 + 88);
        if (sqlite3_initialize())
        {
          v22 = 7;
          goto LABEL_35;
        }

        v153 = a5;
        v154 = v20;
        v45 = ((v44 + 4096) + 0xFFFFFFFF021) >> 12;
        v46 = v44;
        v47 = (v45 + 1) << 8;
        v48 = 2 * v46;
        v49 = v47 + 2 * v46;
        v158 = v46;
        if (v46 >= 0x1000)
        {
          v50 = 4096;
        }

        else
        {
          v50 = v46;
        }

        v51 = sub_181902484(v49 + (2 * v50), 0x1000040BDFB0063);
        if (!v51)
        {
          v22 = 7;
          v20 = v154;
          goto LABEL_35;
        }

        v152 = a2;
        v52 = v51;
        bzero(v51, v49);
        v52[1] = v45 + 1;
        v53 = ((v43 + 4097) + 0xFFFFFFFF021) >> 12;
        if (v53 > v45)
        {
LABEL_91:
          v20 = v154;
          a5 = v153;
          v42 = v166;
          v54 = v162;
          while (1)
          {
            if (*(a1 + 63))
            {
              goto LABEL_181;
            }

            v55 = (*(**(a1 + 8) + 112))(*(a1 + 8), 3, 1, 10);
            v22 = v55;
            if (!v15 || v55 != 5)
            {
              break;
            }

            if (!v15(v153))
            {
              goto LABEL_96;
            }
          }

          if (v55)
          {
            if (v55 == 773)
            {
              LODWORD(v175) = 0;
              v118 = *(a1 + 8);
              if (*v118)
              {
                (*(*v118 + 80))(v118, 34, &v175);
              }

LABEL_96:
              v41 = v52;
              goto LABEL_209;
            }

            goto LABEL_191;
          }

LABEL_181:
          v119 = *(v166 + 96);
          *(v166 + 128) = v155;
          v120 = (v161 >> 2) & 3;
          if (v120)
          {
            v121 = (*(**(a1 + 16) + 40))(*(a1 + 16), v120);
            if (v121)
            {
              goto LABEL_183;
            }
          }

          *&v175 = v160 * v162;
          __buf = 0;
          (*(**(a1 + 8) + 80))(*(a1 + 8), 39, 0);
          v22 = (*(**(a1 + 8) + 48))(*(a1 + 8), &__buf);
          if (v22)
          {
            goto LABEL_185;
          }

          if (__buf < v175)
          {
            if ((__buf + *(a1 + 88) * v162 + 0x10000) < v175)
            {
              v121 = sub_18190EDA8(76418);
LABEL_183:
              v22 = v121;
LABEL_185:
              v41 = v52;
              goto LABEL_186;
            }

            v134 = *(a1 + 8);
            if (*v134)
            {
              (*(*v134 + 80))(v134, 5, &v175);
            }
          }

          v165 = (v161 >> 2) & 3;
          v41 = v52;
          v135 = v52[1];
          v136 = v155;
          if (v135 < 1)
          {
LABEL_278:
            v22 = 0;
            *v41 = -1;
          }

          else
          {
            v137 = 0;
            v168 = v119;
            while (1)
            {
              v138 = *v41;
              v139 = -1;
              do
              {
                v141 = &v52[8 * v135 - 6];
                v142 = v141[6];
                v143 = *v141;
                if (v142 > v143)
                {
                  v144 = *(v141 + 2);
                  v145 = v142 - v143;
                  v146 = v143 + 1;
                  v147 = (*(v141 + 1) + 2 * v143);
                  while (1)
                  {
                    v149 = *v147++;
                    v148 = v149;
                    v150 = *(v144 + 4 * v149);
                    if (v150 > v138)
                    {
                      break;
                    }

                    *v141 = v146++;
                    if (!--v145)
                    {
                      goto LABEL_262;
                    }
                  }

                  if (v150 < v139)
                  {
                    v137 = v141[7] + v148;
                    v139 = v150;
                  }
                }

LABEL_262:
                ;
              }

              while (v135-- > 1);
              *v41 = v139;
              if (v139 == -1)
              {
                v22 = 0;
                goto LABEL_283;
              }

              if (*(v152 + 424))
              {
                break;
              }

              if (v137 > v119 && v137 <= v136 && v139 <= v160)
              {
                v54 = v162;
                v151 = (*(**(a1 + 16) + 16))(*(a1 + 16), v159, v162, (v162 | 0x18) * (v137 - 1) + 56);
                if (v151)
                {
                  v22 = v151;
                  a5 = v153;
                  v42 = v166;
                  v41 = v52;
                  v120 = v165;
                  goto LABEL_186;
                }

                v22 = (*(**(a1 + 8) + 24))(*(a1 + 8), v159, v162, v162 * (v139 - 1));
                v41 = v52;
                v136 = v155;
                v119 = v168;
                if (v22)
                {
                  goto LABEL_283;
                }
              }

              v135 = v41[1];
              if (v135 <= 0)
              {
                goto LABEL_278;
              }
            }

            if (*(v152 + 103))
            {
              v22 = 7;
            }

            else
            {
              v22 = 9;
            }
          }

LABEL_283:
          a5 = v153;
          v42 = v166;
          v54 = v162;
          v120 = v165;
LABEL_186:
          v122 = *(a1 + 8);
          if (*v122)
          {
            (*(*v122 + 80))(v122, 37, 0);
            v41 = v52;
          }

          if (v22)
          {
            if (*(a1 + 63))
            {
              goto LABEL_208;
            }

            goto LABEL_190;
          }

          v125 = v155;
          if (v155 == *(**(a1 + 48) + 16))
          {
            v126 = (*(**(a1 + 8) + 32))(*(a1 + 8), v54 * *(a1 + 92));
            if (v126)
            {
              v22 = v126;
              v41 = v52;
              if (!*(a1 + 63))
              {
LABEL_190:
                (*(**(a1 + 8) + 112))(*(a1 + 8), 3, 1, 9);
LABEL_191:
                v41 = v52;
              }

LABEL_208:
              if (v22 == 5)
              {
LABEL_209:
                v22 = 0;
                if (!v20)
                {
LABEL_233:
                  if (v41)
                  {
                    v130 = &off_1ED452EB0;
                    if (dword_1ED452E80)
                    {
                      if (xmmword_1ED456AF0)
                      {
                        v131 = v41;
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                        v41 = v131;
                      }

                      v132 = v41;
                      qword_1ED456A48 -= xmmword_1ED452EC0(v41);
                      --qword_1ED456A90;
                      off_1ED452EB0(v132);
                      v41 = xmmword_1ED456AF0;
                      if (!xmmword_1ED456AF0)
                      {
                        goto LABEL_240;
                      }

                      v130 = &xmmword_1ED452F28;
                    }

                    (*v130)(v41);
                  }

LABEL_240:
                  if (v22 == 5 || !v22)
                  {
                    if (a9)
                    {
                      *a9 = *(a1 + 88);
                    }

                    if (a10)
                    {
                      *a10 = *(**(a1 + 48) + 96);
                    }
                  }

                  goto LABEL_35;
                }
              }

              else if (!v20)
              {
                goto LABEL_233;
              }

LABEL_212:
              if (v22)
              {
                goto LABEL_233;
              }

              if (*(v42 + 96) >= *(a1 + 88))
              {
                if (v20 < 2)
                {
                  v22 = 0;
                  goto LABEL_233;
                }

                v127 = v41;
                LODWORD(__buf) = 0;
                sqlite3_initialize();
                arc4random_buf(&__buf, 4uLL);
                while (1)
                {
                  if (*(a1 + 63))
                  {
                    goto LABEL_227;
                  }

                  v128 = (*(**(a1 + 8) + 112))(*(a1 + 8), 4, 4, 10);
                  v22 = v128;
                  if (!v15 || v128 != 5)
                  {
                    break;
                  }

                  if (!v15(a5))
                  {
                    v22 = 5;
LABEL_232:
                    v41 = v127;
                    goto LABEL_233;
                  }
                }

                if (!v128)
                {
LABEL_227:
                  if (v20 == 3)
                  {
                    sub_1819382DC(a1, __buf);
                    v22 = (*(**(a1 + 16) + 32))(*(a1 + 16), 0);
                  }

                  else
                  {
                    v22 = 0;
                  }

                  if (!*(a1 + 63))
                  {
                    (*(**(a1 + 8) + 112))(*(a1 + 8), 4, 4, 9);
                  }

                  goto LABEL_232;
                }

                v41 = v127;
                if (v128 != 773)
                {
                  goto LABEL_233;
                }

                LODWORD(v175) = 0;
                v129 = *(a1 + 8);
                if (*v129)
                {
                  (*(*v129 + 80))(v129, 34, &v175);
                  v41 = v127;
                }
              }

              v22 = 5;
              goto LABEL_233;
            }

            v41 = v52;
            v125 = v155;
            if (v120)
            {
              v133 = (*(**(a1 + 8) + 40))(*(a1 + 8), v120);
              v41 = v52;
              v125 = v155;
              if (v133)
              {
                v22 = v133;
                if (!*(a1 + 63))
                {
                  goto LABEL_190;
                }

                goto LABEL_208;
              }
            }
          }

          v22 = 0;
          *(v42 + 96) = v125;
          if (!*(a1 + 63))
          {
            goto LABEL_190;
          }

          goto LABEL_208;
        }

        v56 = v52;
        v53 = v53;
        v57 = v45;
        v58 = v53;
        if (v53 <= v57)
        {
          v53 = v57;
        }

        v156 = v53;
        v157 = v57;
        v59 = v47 + v48;
        v60 = v52 + 2;
        v61 = v52 + v59;
        v62.i64[0] = 0x8000800080008;
        v62.i64[1] = 0x8000800080008;
        v63.i64[0] = 0x10001000100010;
        v63.i64[1] = 0x10001000100010;
LABEL_102:
        __buf = 0;
        v173 = 0;
        v174 = 0;
        if (v58 < *(a1 + 40))
        {
          v65 = *(*(a1 + 48) + 8 * v58);
          v173 = v65;
          if (v65)
          {
            v66 = v58 == 0;
            v67 = 136;
            if (v58)
            {
              v67 = 0;
            }

            v68 = v65 + v67;
            goto LABEL_112;
          }
        }

        v69 = sub_1819346F0(a1, v58, &v173);
        v22 = v69;
        if (v173)
        {
          v66 = v58 == 0;
          v67 = 136;
          if (v58)
          {
            v67 = 0;
          }

          v56 = v52;
          if (v69)
          {
            goto LABEL_196;
          }

          v68 = v173 + v67;
          v62.i64[0] = 0x8000800080008;
          v62.i64[1] = 0x8000800080008;
          v63.i64[0] = 0x10001000100010;
          v63.i64[1] = 0x10001000100010;
LABEL_112:
          if (v66)
          {
            v70 = 0;
          }

          else
          {
            v70 = ((v58 << 12) - 34);
          }

          v71 = (0x4000 - v67) >> 2;
          if (v58 == v157)
          {
            v72 = (v158 - v70);
          }

          else
          {
            v72 = v71;
          }

          v73 = v56[1];
          v167 = &v60[8 * v73] + 2 * v70;
          v169 = v72;
          v163 = v70 | 1;
          LODWORD(v174) = v70 | 1;
          v164 = v58;
          if (v72 <= 0)
          {
            v76 = 0;
            v77 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v182 = 0u;
            v183 = 0u;
            v180 = 0u;
            v181 = 0u;
            v178 = 0u;
            v179 = 0u;
            v176 = 0u;
            v177 = 0u;
            v78 = 1;
            v175 = 0u;
            goto LABEL_156;
          }

          v74 = 32 * v73;
          if (v72 < 4)
          {
            v75 = 0;
LABEL_131:
            v87 = (v60 + 2 * v75 + 2 * v70 + v74);
            do
            {
              *v87++ = v75++;
            }

            while (v72 != v75);
LABEL_133:
            v88 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v182 = 0u;
            v183 = 0u;
            v180 = 0u;
            v181 = 0u;
            v178 = 0u;
            v179 = 0u;
            v176 = 0u;
            v177 = 0u;
            v175 = 0u;
            while (1)
            {
              v76 = (v167 + 2 * v88);
              v90 = 0;
              v77 = 1;
              if (v88)
              {
                break;
              }

LABEL_134:
              v89 = &v175 + v90;
              *(v89 + 1) = v76;
              *v89 = v77;
              ++v88;
              LODWORD(v72) = v169;
              if (v88 == v169)
              {
                v78 = v90 + 1;
                if (v90 + 1 > 0xC)
                {
                  goto LABEL_101;
                }

LABEL_156:
                v104 = v78;
                while (2)
                {
                  if (((v72 >> v104) & 1) == 0)
                  {
                    goto LABEL_158;
                  }

                  v105 = &v175 + v104;
                  v106 = *(v105 + 1);
                  v107 = *v105;
                  v108 = v107 > 0;
                  v109 = v77 > 0;
                  if (v77 <= 0 && v107 < 1)
                  {
                    v77 = 0;
                    goto LABEL_157;
                  }

                  v110 = 0;
                  v111 = 0;
                  v112 = 0;
                  while (2)
                  {
                    if (!v108)
                    {
                      v115 = v112;
LABEL_169:
                      ++v112;
                      v114 = &v76[2 * v115];
                      goto LABEL_170;
                    }

                    v113 = v111;
                    if (v109 && *(v68 + 4 * v106[v111]) >= *(v68 + 4 * *&v76[2 * v112]))
                    {
                      v115 = v112;
                      goto LABEL_169;
                    }

                    ++v111;
                    v114 = &v106[v113];
LABEL_170:
                    v116 = *v114;
                    v117 = *(v68 + 4 * v116);
                    *&v61[2 * v110] = v116;
                    if (v111 < v107 && *(v68 + 4 * v106[v111]) == v117)
                    {
                      ++v111;
                    }

                    v108 = v111 < v107;
                    ++v110;
                    v109 = v112 < v77;
                    if (v112 < v77 || v111 < v107)
                    {
                      continue;
                    }

                    break;
                  }

                  v77 = v110;
LABEL_157:
                  memcpy(v106, v52 + v49, (2 * v77));
                  v56 = v52;
                  v76 = v106;
                  v62.i64[0] = 0x8000800080008;
                  v62.i64[1] = 0x8000800080008;
                  v63.i64[0] = 0x10001000100010;
                  v63.i64[1] = 0x10001000100010;
                  LODWORD(v72) = v169;
LABEL_158:
                  if (++v104 != 13)
                  {
                    continue;
                  }

                  break;
                }

LABEL_101:
                v60 = v52 + 2;
                v64 = &v52[8 * v164 + 2];
                *(v64 + 24) = v77;
                *(v64 + 28) = v163;
                *(v64 + 8) = v167;
                *(v64 + 16) = v68;
                v58 = v164 + 1;
                if (v164 == v156)
                {
                  goto LABEL_91;
                }

                goto LABEL_102;
              }
            }

            v91 = (v167 + 2 * v88);
LABEL_138:
            v92 = &v175 + v90;
            v76 = *(v92 + 1);
            v93 = *v92;
            v94 = v93 > 0;
            v95 = v77 > 0;
            if (v77 <= 0 && v93 < 1)
            {
              v77 = 0;
              goto LABEL_137;
            }

            v96 = 0;
            v97 = 0;
            v98 = 0;
            while (1)
            {
              if (v94)
              {
                v99 = v97;
                if (!v95 || *(v68 + 4 * *&v76[2 * v97]) < *(v68 + 4 * *&v91[2 * v98]))
                {
                  ++v97;
                  v100 = &v76[2 * v99];
                  goto LABEL_148;
                }

                v101 = v98;
              }

              else
              {
                v101 = v98;
              }

              ++v98;
              v100 = &v91[2 * v101];
LABEL_148:
              v102 = *v100;
              v103 = *(v68 + 4 * v102);
              *&v61[2 * v96] = v102;
              if (v97 < v93 && *(v68 + 4 * *&v76[2 * v97]) == v103)
              {
                ++v97;
              }

              v94 = v97 < v93;
              ++v96;
              v95 = v98 < v77;
              if (v98 >= v77 && v97 >= v93)
              {
                v77 = v96;
LABEL_137:
                memcpy(v76, v52 + v49, (2 * v77));
                v56 = v52;
                ++v90;
                v91 = v76;
                v62.i64[0] = 0x8000800080008;
                v62.i64[1] = 0x8000800080008;
                v63.i64[0] = 0x10001000100010;
                v63.i64[1] = 0x10001000100010;
                if (((v88 >> v90) & 1) == 0)
                {
                  goto LABEL_134;
                }

                goto LABEL_138;
              }
            }
          }

          if (v72 >= 0x10)
          {
            v75 = v72 & 0x7FFFFFF0;
            v79 = (v52 + 2 * v70 + v74 + 24);
            v80 = v75;
            v81 = xmmword_181A1FED0;
            do
            {
              v79[-1] = v81;
              *v79 = vaddq_s16(v81, v62);
              v81 = vaddq_s16(v81, v63);
              v79 += 2;
              v80 -= 16;
            }

            while (v80);
            v72 = v169;
            if (v75 == v169)
            {
              goto LABEL_133;
            }

            if ((v169 & 0xC) == 0)
            {
              goto LABEL_131;
            }
          }

          else
          {
            v75 = 0;
          }

          v82 = v75;
          v83 = vdup_n_s16(v75);
          v75 = v72 & 0x7FFFFFFC;
          v84 = vorr_s8(v83, 0x3000200010000);
          v85 = (v60 + 2 * v82 + 2 * v70 + v74);
          v86 = v82 - v75;
          do
          {
            *v85++ = v84;
            v84 = vadd_s16(v84, 0x4000400040004);
            v86 += 4;
          }

          while (v86);
          v72 = v169;
          if (v75 == v169)
          {
            goto LABEL_133;
          }

          goto LABEL_131;
        }

        if (v69 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v69;
        }

        v56 = v52;
LABEL_196:
        v123 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v20 = v154;
          a5 = v153;
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
            v56 = v52;
          }

          v124 = v56;
          qword_1ED456A48 -= xmmword_1ED452EC0(v56);
          --qword_1ED456A90;
          off_1ED452EB0(v124);
          v56 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            v41 = 0;
            v42 = v166;
            goto LABEL_208;
          }

          v123 = &xmmword_1ED452F28;
          v42 = v166;
        }

        else
        {
          v20 = v154;
          a5 = v153;
          v42 = v166;
        }

        (*v123)(v56);
      }

      v41 = 0;
      goto LABEL_208;
    }
  }

LABEL_35:
  if (v171)
  {
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
  }

  LODWORD(v175) = 0;
  v29 = *(a1 + 8);
  if (*v29)
  {
    (*(*v29 + 80))(v29, 34, &v175);
  }

  *(a1 + 160) = 0;
  if (*(a1 + 64))
  {
    if (!*(a1 + 63))
    {
      (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 9);
    }

    *(a1 + 64) = 0;
    *(a1 + 124) = 0;
    *(a1 + 67) = 0;
  }

  if (*(a1 + 65))
  {
    if (!*(a1 + 63))
    {
      (*(**(a1 + 8) + 112))(*(a1 + 8), 1, 1, 9);
    }

    *(a1 + 65) = 0;
  }

  if (v22 == 773)
  {
    v30 = 5;
  }

  else
  {
    v30 = v22;
  }

  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v31 = v20 == v170;
  }

  if (v31)
  {
    return v30;
  }

  else
  {
    return 5;
  }
}