uint64_t DNSMessageExtractDomainName(unint64_t a1, uint64_t a2, char *__src, char *__dst, void *a5)
{
  if (__dst)
  {
    v6 = __dst + 256;
  }

  else
  {
    v6 = 0;
  }

  result = 4294960586;
  if (__src < a1)
  {
    return result;
  }

  v8 = a1 + a2;
  if (a1 + a2 <= __src)
  {
    return result;
  }

  v10 = __dst;
  v11 = *__src;
  if (*__src)
  {
    v12 = 0;
    do
    {
      if (v11 > 0x3F)
      {
        if ((~v11 & 0xC0) != 0)
        {
          return 4294960554;
        }

        if ((v8 - __src) < 2)
        {
          return 4294960546;
        }

        if (!v12)
        {
          v12 = __src + 2;
          if (!v10)
          {
            goto LABEL_23;
          }
        }

        __src = (a1 + (__src[1] | ((v11 & 0x3F) << 8)));
        if (__src >= v8)
        {
          return 4294960546;
        }

        v11 = *__src;
        if (v11 > 0xBF)
        {
          return 4294960554;
        }
      }

      else
      {
        v13 = &__src[v11 + 1];
        if (v13 >= v8)
        {
          return 4294960546;
        }

        if (v10)
        {
          v14 = v11 + 1;
          if (v6 - v10 <= v14)
          {
            return 4294960545;
          }

          memcpy(v10, __src, v11 + 1);
          v10 += v14;
        }

        v11 = *v13;
        __src = v13;
      }
    }

    while (v11);
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v12 = 0;
  if (__dst)
  {
LABEL_22:
    *v10 = 0;
  }

LABEL_23:
  result = 0;
  if (a5)
  {
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = __src + 1;
    }

    *a5 = v15;
  }

  return result;
}

uint64_t DNSMessageExtractDomainNameString(unint64_t a1, uint64_t a2, char *a3, unsigned __int8 *a4, void *a5)
{
  v11 = *MEMORY[0x29EDCA608];
  v9 = 0;
  result = DNSMessageExtractDomainName(a1, a2, a3, __dst, &v9);
  if (!result)
  {
    result = DomainNameToString(__dst, 0, a4, 0);
    if (a5)
    {
      if (!result)
      {
        *a5 = v9;
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DomainNameToString(_BYTE *a1, unint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (a2 && (a2 - a1) < 1)
  {
    return 4294960546;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1;
    do
    {
      if (v4 > 0x3F)
      {
        return 4294960554;
      }

      v6 = v4 + 1;
      v7 = &v5[v6];
      if (&v5[v6] - a1 > 255)
      {
        return 4294960554;
      }

      if (a2 && v7 >= a2)
      {
        return 4294960546;
      }

      v8 = v5 + 1;
      if (v5 + 1 < v7)
      {
        for (i = v6 - 1; i; --i)
        {
          v10 = *v8;
          if ((*v8 - 32) > 0x5E)
          {
            if ((*v8 & 0x80) == 0)
            {
              *a3 = 92;
              if (v10 <= 0x63u)
              {
                v12 = 48;
              }

              else
              {
                v12 = 49;
              }

              a3[1] = v12;
              if (v10 >= 0x64u)
              {
                v13 = v10 / 0xAu - 10;
              }

              else
              {
                v13 = v10 / 0xAu;
              }

              a3[2] = v13 + 48;
              a3[3] = (v10 % 0xAu) | 0x30;
              a3 += 4;
              goto LABEL_26;
            }
          }

          else if (*v8 - 32 <= 0x3C && ((1 << (v10 - 32)) & 0x1000000000004001) != 0)
          {
            *a3++ = 92;
          }

          *a3++ = v10;
LABEL_26:
          ++v8;
        }
      }

      *a3++ = 46;
      v4 = *v7;
      v5 = v7;
    }

    while (*v7);
    if (v7 != a1)
    {
      goto LABEL_30;
    }
  }

  *a3++ = 46;
  v7 = a1;
LABEL_30:
  *a3 = 0;
  result = 0;
  if (a4)
  {
    *a4 = v7 + 1;
  }

  return result;
}

uint64_t DNSMessageExtractQuestion(unint64_t a1, uint64_t a2, char *a3, char *a4, _WORD *a5, _WORD *a6, void *a7)
{
  v14 = 0;
  result = DNSMessageExtractDomainName(a1, a2, a3, a4, &v14);
  if (!result)
  {
    v13 = v14;
    if (a1 + a2 - v14 < 4)
    {
      return 4294960546;
    }

    else
    {
      if (a5)
      {
        *a5 = bswap32(*v14) >> 16;
      }

      if (a6)
      {
        *a6 = bswap32(v13[1]) >> 16;
      }

      result = 0;
      if (a7)
      {
        *a7 = v13 + 2;
      }
    }
  }

  return result;
}

uint64_t _DNSMessageExtractRecordEx(unint64_t a1, uint64_t a2, char *a3, char *a4, _WORD *a5, _WORD *a6, _DWORD *a7, unsigned __int16 **a8, unint64_t *a9, char *a10, size_t a11, void *a12, void *a13, void *a14)
{
  v27 = 0;
  result = DNSMessageExtractDomainName(a1, a2, a3, a4, &v27);
  if (!result)
  {
    v20 = v27;
    if (a1 + a2 - v27 < 0xA)
    {
      return 4294960546;
    }

    v21 = (v27 + 10);
    v22 = __rev16(*(v27 + 4));
    if (a1 + a2 - (v27 + 10) < v22)
    {
      return 4294960546;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v23 = bswap32(*v27) >> 16;
      if (!a11 && !a13 || (result = DNSMessageExtractRData(a1, a2, v27 + 10, v22, v23, a10, a11, &v26, &v25), !result))
      {
        if (a5)
        {
          *a5 = v23;
        }

        if (a6)
        {
          *a6 = bswap32(*(v20 + 1)) >> 16;
        }

        if (a7)
        {
          *a7 = bswap32(*(v20 + 1));
        }

        if (a8)
        {
          *a8 = v21;
        }

        if (a9)
        {
          *a9 = v22;
        }

        if (a12)
        {
          *a12 = v26;
        }

        if (a13)
        {
          *a13 = v25;
        }

        result = 0;
        if (a14)
        {
          *a14 = v21 + v22;
        }
      }
    }
  }

  return result;
}

uint64_t DNSMessageExtractRData(unint64_t a1, uint64_t a2, char *__src, unint64_t a4, int a5, char *a6, size_t a7, size_t *a8, unint64_t *a9)
{
  v10 = a7;
  v12 = a4;
  v80 = *MEMORY[0x29EDCA608];
  v77 = 0;
  v16 = &__src[a4];
  switch(a5)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 12:
    case 39:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v77);
      if (!result)
      {
        if (v77 != v16)
        {
          goto LABEL_80;
        }

        v18 = __srca[0];
        v19 = __srca;
        if (__srca[0])
        {
          do
          {
            v20 = &v19[v18];
            v21 = v20[1];
            v19 = v20 + 1;
            v18 = v21;
          }

          while (v21);
        }

        v12 = v19 - __srca + 1;
        if (v12 < v10)
        {
          v10 = v19 - __srca + 1;
        }

        v22 = __srca;
        v23 = a6;
        goto LABEL_9;
      }

      break;
    case 6:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v77);
      if (!result)
      {
        result = DNSMessageExtractDomainName(a1, a2, v77, __dst, &v77);
        if (!result)
        {
          v59 = v77;
          if (v16 - v77 != 20)
          {
            goto LABEL_80;
          }

          v60 = __srca[0];
          v61 = __srca;
          if (__srca[0])
          {
            do
            {
              v62 = &v61[v60];
              v63 = v62[1];
              v61 = v62 + 1;
              v60 = v63;
            }

            while (v63);
          }

          v64 = &a6[v10];
          v65 = v61 - __srca;
          v66 = __dst[0];
          v67 = __dst;
          if (__dst[0])
          {
            do
            {
              v68 = &v67[v66];
              v69 = v68[1];
              v67 = v68 + 1;
              v66 = v69;
            }

            while (v69);
          }

          v70 = v67 - __dst;
          v71 = v67 - __dst + 1;
          v12 = v65 + v71 + 21;
          if (v65 + 1 >= v10)
          {
            v72 = v10;
          }

          else
          {
            v72 = v65 + 1;
          }

          memcpy(a6, __srca, v72);
          if (v10 - v72 >= v71)
          {
            v73 = v70 + 1;
          }

          else
          {
            v73 = v10 - v72;
          }

          memcpy(&a6[v72], __dst, v73);
          v74 = &a6[v72 + v73];
          if ((v64 - v74) >= 0x14)
          {
            v75 = 20;
          }

          else
          {
            v75 = v64 - v74;
          }

          memcpy(v74, v59, v75);
          v10 = &v74[v75] - a6;
          goto LABEL_75;
        }
      }

      break;
    case 14:
    case 17:
    case 26:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v77);
      if (!result)
      {
        result = DNSMessageExtractDomainName(a1, a2, v77, __dst, &v77);
        if (!result)
        {
          if (v77 != v16)
          {
            goto LABEL_80;
          }

          v36 = __srca[0];
          v37 = __srca;
          if (__srca[0])
          {
            do
            {
              v38 = &v37[v36];
              v39 = v38[1];
              v37 = v38 + 1;
              v36 = v39;
            }

            while (v39);
          }

          v40 = v37 - __srca + 1;
          v41 = __dst[0];
          v42 = __dst;
          if (__dst[0])
          {
            do
            {
              v43 = &v42[v41];
              v44 = v43[1];
              v42 = v43 + 1;
              v41 = v44;
            }

            while (v44);
          }

          v45 = v42 - __dst;
          v46 = v42 - __dst + 1;
          v12 = v46 + v40;
          if (v40 >= v10)
          {
            v47 = v10;
          }

          else
          {
            v47 = v37 - __srca + 1;
          }

          memcpy(a6, __srca, v47);
          if (v10 - v47 >= v46)
          {
            v48 = v45 + 1;
          }

          else
          {
            v48 = v10 - v47;
          }

          memcpy(&a6[v47], __dst, v48);
          v10 = v48 + v47;
          goto LABEL_75;
        }
      }

      break;
    case 15:
    case 18:
    case 21:
    case 36:
      if (a4 < 3)
      {
        goto LABEL_80;
      }

      result = DNSMessageExtractDomainName(a1, a2, __src + 2, __srca, &v77);
      if (!result)
      {
        if (v77 != v16)
        {
          goto LABEL_80;
        }

        v24 = __srca[0];
        v25 = __srca;
        if (__srca[0])
        {
          do
          {
            v26 = &v25[v24];
            v27 = v26[1];
            v25 = v26 + 1;
            v24 = v27;
          }

          while (v27);
        }

        v28 = v25 - __srca;
        v29 = v25 - __srca + 1;
        v12 = v25 - __srca + 3;
        v30 = v10 >= 2;
        v31 = 2;
        goto LABEL_16;
      }

      break;
    case 33:
      if (a4 < 7)
      {
        goto LABEL_80;
      }

      result = DNSMessageExtractDomainName(a1, a2, __src + 6, __srca, &v77);
      if (!result)
      {
        if (v77 != v16)
        {
          goto LABEL_80;
        }

        v49 = __srca[0];
        v50 = __srca;
        if (__srca[0])
        {
          do
          {
            v51 = &v50[v49];
            v52 = v51[1];
            v50 = v51 + 1;
            v49 = v52;
          }

          while (v52);
        }

        v28 = v50 - __srca;
        v29 = v50 - __srca + 1;
        v12 = v50 - __srca + 7;
        v30 = v10 >= 6;
        v31 = 6;
LABEL_16:
        if (v30)
        {
          v32 = v31;
        }

        else
        {
          v32 = v10;
        }

        memcpy(a6, __src, v32);
        if (v10 - v32 >= v29)
        {
          v33 = v28 + 1;
        }

        else
        {
          v33 = v10 - v32;
        }

        v34 = &a6[v32];
        v35 = __srca;
        goto LABEL_23;
      }

      break;
    case 47:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v77);
      if (!result)
      {
        v53 = v77;
        if (v77 <= v16)
        {
          v54 = __srca[0];
          v55 = __srca;
          if (__srca[0])
          {
            do
            {
              v56 = &v55[v54];
              v57 = v56[1];
              v55 = v56 + 1;
              v54 = v57;
            }

            while (v57);
          }

          v58 = v16 - v77;
          v12 = v55 - __srca + 1 + v16 - v77;
          if (v55 - __srca + 1 < v10)
          {
            v32 = v55 - __srca + 1;
          }

          else
          {
            v32 = v10;
          }

          memcpy(a6, __srca, v32);
          if (v10 - v32 >= v58)
          {
            v33 = v16 - v53;
          }

          else
          {
            v33 = v10 - v32;
          }

          v34 = &a6[v32];
          v35 = v53;
LABEL_23:
          memcpy(v34, v35, v33);
          v10 = v33 + v32;
          goto LABEL_75;
        }

LABEL_80:
        result = 4294960554;
      }

      break;
    default:
      if (a7 >= a4)
      {
        v10 = a4;
      }

      v23 = a6;
      v22 = __src;
LABEL_9:
      memcpy(v23, v22, v10);
LABEL_75:
      if (a8)
      {
        *a8 = v10;
      }

      result = 0;
      if (a9)
      {
        *a9 = v12;
      }

      break;
  }

  v76 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DomainNameLength(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1;
  if (*a1)
  {
    v2 = a1;
    do
    {
      v3 = &v2[v1];
      v4 = v3[1];
      v2 = v3 + 1;
      v1 = v4;
    }

    while (v4);
  }

  return v2 - a1 + 1;
}

uint64_t DNSMessageGetAnswerSection(unint64_t a1, unint64_t a2, char **a3)
{
  if (a2 < 0xC)
  {
    return 4294960553;
  }

  v12[7] = v3;
  v12[8] = v4;
  v7 = __rev16(*(a1 + 4));
  v8 = (a1 + 12);
  if (v7)
  {
    v10 = a1 + a2;
    while (1)
    {
      v12[0] = 0;
      result = DNSMessageExtractDomainName(a1, a2, v8, 0, v12);
      if (result)
      {
        break;
      }

      if (v10 - v12[0] <= 3)
      {
        return 4294960546;
      }

      v8 = (v12[0] + 4);
      if (!--v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    result = 0;
    if (a3)
    {
      *a3 = v8;
    }
  }

  return result;
}

uint64_t DNSMessageGetOptRecord(unsigned __int16 *a1, unint64_t a2, void *a3, char **a4)
{
  v17 = 0;
  result = DNSMessageGetAnswerSection(a1, a2, &v17);
  if (!result)
  {
    v9 = __rev16(a1[4]) + (bswap32(a1[3]) >> 16);
    if (v9)
    {
      while (1)
      {
        v16 = 0;
        LODWORD(result) = _DNSMessageExtractRecordEx(a1, a2, v17, 0, &v16, 0, 0, 0, 0, 0, 0, 0, 0, &v17);
        if (result || v16 == 41)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_6;
        }
      }

      if (v16 == 41)
      {
        v14 = -6742;
      }

      else
      {
        v14 = 0;
      }

      if (result)
      {
        return result;
      }

      else
      {
        return v14;
      }
    }

    else
    {
LABEL_6:
      v10 = __rev16(a1[5]);
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v15 = 0;
          v13 = v17;
          result = _DNSMessageExtractRecordEx(a1, a2, v17, 0, &v15, 0, 0, 0, 0, 0, 0, 0, 0, &v17);
          if (result)
          {
            break;
          }

          if (v15 == 41)
          {
            if (v12 || *v13)
            {
              return 4294960554;
            }

            v11 = (v17 - v13);
            v12 = v13;
          }

          else
          {
            v13 = v12;
          }

          if (!--v10)
          {
            if (!a3)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }
        }
      }

      else
      {
        v13 = 0;
        v11 = 0;
        if (a3)
        {
LABEL_16:
          *a3 = v13;
        }

LABEL_17:
        result = 0;
        if (a4)
        {
          *a4 = v11;
        }
      }
    }
  }

  return result;
}

uint64_t DNSMessageGetExtendedDNSError(unsigned __int16 *a1, unint64_t a2, _WORD *a3, char **a4, _WORD *a5)
{
  v15 = 0;
  v16 = 0;
  result = DNSMessageGetOptRecord(a1, a2, &v16, &v15);
  if (!result)
  {
    if (v16)
    {
      if (v15 < 0xB)
      {
        return 4294960546;
      }

      v9 = &v15[v16];
      v10 = (v16 + 11);
      while (v10 < v9)
      {
        v11 = v10;
        if ((v9 - v10) < 4)
        {
          return 4294960546;
        }

        v12 = __rev16(*(v10 + 1));
        if (v9 - (v10 + 4) < v12)
        {
          return 4294960546;
        }

        v13 = __rev16(*v10);
        v10 += v12 + 4;
        if (v13 == 15)
        {
          if (v12 < 2)
          {
            return 4294960546;
          }

          v14 = v11 + 6;
          if (v10 == v11 + 6)
          {
            v14 = 0;
          }

          if (a3)
          {
            *a3 = bswap32(*(v11 + 2)) >> 16;
          }

          if (a4)
          {
            *a4 = v14;
          }

          result = 0;
          if (a5)
          {
            *a5 = v10 - (v11 + 6);
          }

          return result;
        }
      }
    }

    return 4294960569;
  }

  return result;
}

uint64_t DNSMessageWriteQuery(__int16 a1, __int16 a2, _BYTE *__src, __int16 a4, __int16 a5, uint64_t a6, void *a7)
{
  *(a6 + 10) = 0;
  *(a6 + 6) = 0;
  *a6 = HIBYTE(a1);
  *(a6 + 1) = a1;
  *(a6 + 2) = HIBYTE(a2);
  *(a6 + 3) = a2;
  *(a6 + 4) = 256;
  v11 = *__src;
  v12 = __src;
  if (*__src)
  {
    v12 = __src;
    do
    {
      v13 = &v12[v11];
      v14 = v13[1];
      v12 = v13 + 1;
      v11 = v14;
    }

    while (v14);
  }

  v15 = v12 - __src + 1;
  if (v15 > 0x100)
  {
    return 4294960553;
  }

  memcpy((a6 + 12), __src, v12 - __src + 1);
  v16 = (a6 + 12 + v15);
  *v16 = HIBYTE(a4);
  v16[1] = a4;
  v16[2] = HIBYTE(a5);
  v16[3] = a5;
  result = 0;
  if (a7)
  {
    *a7 = v15 + 16;
  }

  return result;
}

char *DNSMessageCollapse(unint64_t a1, unint64_t a2, void *a3, size_t *a4)
{
  v56 = *MEMORY[0x29EDCA608];
  v52 = 0;
  v51 = 0;
  if (a2 < 0xC)
  {
LABEL_68:
    v21 = 0;
    v36 = 0;
    DomainName = -6743;
  }

  else if (__rev16(*(a1 + 4)) == 1)
  {
    v52 = (a1 + 12);
    DomainName = DNSMessageExtractQuestion(a1, a2, (a1 + 12), __src, &v51 + 1, &v51, &v52);
    if (DomainName)
    {
LABEL_57:
      v21 = 0;
      v36 = 0;
      goto LABEL_61;
    }

    if (v51 == 1)
    {
      v9 = __src[0];
      v10 = __src;
      if (__src[0])
      {
        do
        {
          v11 = &v10[v9];
          v12 = v11[1];
          v10 = v11 + 1;
          v9 = v12;
        }

        while (v12);
      }

      v13 = v10 - __src;
      __n = v10 - __src + 1;
      v41 = v52;
      __memcpy_chk();
      v14 = __rev16(*(a1 + 6));
      if (v14)
      {
        v15 = 0;
        v43 = -1;
LABEL_9:
        v16 = 0;
        v52 = v41;
        v17 = 1;
        while (1)
        {
          v50 = 0;
          LODWORD(v48) = 0;
          LOWORD(v47) = 0;
          v49 = 0;
          DomainName = _DNSMessageExtractRecordEx(a1, a2, v52, v53, &v47, &v49, &v48, &v50, 0, 0, 0, 0, 0, &v52);
          if (DomainName)
          {
            goto LABEL_57;
          }

          if (v47 == 5 && v49 == v51 && DomainNameEqual(v53, __dst))
          {
            DomainName = DNSMessageExtractDomainName(a1, a2, v50, __dst, 0);
            if (DomainName)
            {
              goto LABEL_57;
            }

            v17 = 0;
            v18 = v43;
            if (v43 >= v48)
            {
              v18 = v48;
            }

            v43 = v18;
            if (++v16 == v14)
            {
              goto LABEL_22;
            }
          }

          else if (v14 == ++v16)
          {
            if (v17)
            {
              goto LABEL_25;
            }

LABEL_22:
            if (++v15 != v14)
            {
              goto LABEL_9;
            }

            goto LABEL_25;
          }
        }
      }

      v43 = -1;
LABEL_25:
      v39 = a4;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      size = v13 + 17;
      v22 = 1;
      a4 = &v48;
      while (1)
      {
        v42 = v22;
        v52 = v41;
        if (v14)
        {
          break;
        }

        v45 = 0;
        if (v21)
        {
          goto LABEL_52;
        }

LABEL_45:
        if (!size || (v30 = malloc_type_calloc(1uLL, size, 0x56016498uLL)) == 0)
        {
          __break(1u);
          goto LABEL_68;
        }

        v21 = v30;
        if (size < 0xC)
        {
          goto LABEL_66;
        }

        v31 = *a1;
        *(v30 + 2) = *(a1 + 4);
        *v30 = v31;
        *(v30 + 6) = 0;
        *(v30 + 5) = 0;
        if (size - 12 < __n)
        {
          goto LABEL_66;
        }

        v19 = &v30[size];
        v32 = v30 + 12;
        memcpy(v30 + 12, __src, __n);
        v33 = &v32[__n];
        if ((v19 - &v32[__n]) < 4)
        {
          goto LABEL_66;
        }

        v22 = 0;
        v34 = BYTE2(v51);
        v35 = v51;
        *v33 = HIBYTE(v51);
        v33[1] = v34;
        v33[2] = HIBYTE(v35);
        v33[3] = v35;
        v20 = v33 + 4;
        *(v21 + 2) = 256;
        if ((v42 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v45 = 0;
      v23 = v14;
      do
      {
        v50 = 0;
        v48 = 0;
        v47 = 0;
        v49 = 0;
        v46 = 0;
        v24 = v52;
        DomainName = _DNSMessageExtractRecordEx(a1, a2, v52, v53, &v49, &v46, &v47, 0, 0, 0, 0, 0, &v48, &v52);
        if (DomainName)
        {
          goto LABEL_59;
        }

        if (v49 == HIWORD(v51) && v46 == v51 && DomainNameEqual(v53, __dst))
        {
          if (v21)
          {
            if (v19 - v20 < 2)
            {
              goto LABEL_58;
            }

            *v20 = 3264;
            if ((v19 - v20 - 2) < 0xA)
            {
              goto LABEL_58;
            }

            v25 = v47;
            if (v47 >= v43)
            {
              v25 = v43;
            }

            v47 = v25;
            v26 = v49;
            v27 = v46;
            v28 = v48;
            v20[2] = HIBYTE(v49);
            v20[3] = v26;
            v20[4] = HIBYTE(v27);
            v20[5] = v27;
            v20[6] = HIBYTE(v25);
            v20[7] = BYTE2(v25);
            v20[8] = BYTE1(v25);
            v20[9] = v25;
            v20[10] = HIBYTE(v28);
            v20[11] = v28;
            v29 = v20 + 12;
            if (v19 - v29 < v48)
            {
LABEL_58:
              DomainName = -6762;
LABEL_59:
              v36 = 0;
              goto LABEL_60;
            }

            DomainName = _DNSMessageExtractRecordEx(a1, a2, v24, 0, 0, 0, 0, 0, 0, v29, v48, &v50, 0, 0);
            if (DomainName)
            {
              goto LABEL_59;
            }

            v20 = &v50[v29];
            ++v45;
          }

          else
          {
            size += v48 + 12;
          }
        }

        --v23;
      }

      while (v23);
      if (!v21)
      {
        goto LABEL_45;
      }

LABEL_52:
      if (size >= 0xC)
      {
        *(v21 + 3) = bswap32(v45) >> 16;
LABEL_54:
        v36 = v21;
        a4 = v39;
        v21 = 0;
        DomainName = 0;
        if (a3)
        {
          *a3 = v20 - v36;
        }

        goto LABEL_61;
      }

LABEL_66:
      v36 = 0;
      DomainName = -6762;
LABEL_60:
      a4 = v39;
    }

    else
    {
      v21 = 0;
      v36 = 0;
      DomainName = -6756;
    }
  }

  else
  {
    v21 = 0;
    v36 = 0;
    DomainName = -6764;
  }

LABEL_61:
  if (a4)
  {
    *a4 = DomainName;
  }

  if (v21)
  {
    free(v21);
  }

  v37 = *MEMORY[0x29EDCA608];
  return v36;
}

uint64_t DomainNameEqual(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  while (1)
  {
    v4 = *v3;
    if (v3 != v2 && (v4 != *v2 || mdns_memcmp_us_ascii_case_insensitive(v3 + 1, v2 + 1, *v3)))
    {
      break;
    }

    v3 += v4 + 1;
    v2 += v4 + 1;
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t DomainNameAppendDomainName(_BYTE *a1, _BYTE *a2, void *a3)
{
  v5 = *a1;
  v6 = a1;
  if (*a1)
  {
    v6 = a1;
    do
    {
      v7 = &v6[v5];
      v8 = v7[1];
      v6 = v7 + 1;
      v5 = v8;
    }

    while (v8);
  }

  v9 = v6 - a1;
  v10 = *a2;
  v11 = a2;
  if (*a2)
  {
    v11 = a2;
    do
    {
      v12 = &v11[v10];
      v13 = v12[1];
      v11 = v12 + 1;
      v10 = v13;
    }

    while (v13);
  }

  result = 4294960553;
  if (v9 <= 0x100)
  {
    v15 = v11 - a2 + 1;
    if (v15 <= 0x100)
    {
      v16 = v15 + v9;
      if (v15 + v9 <= 0x100)
      {
        memcpy(&a1[v9], a2, v15);
        result = 0;
        if (a3)
        {
          *a3 = &a1[v16];
        }
      }
    }
  }

  return result;
}

uint64_t DomainNameAppendString(_BYTE *a1, char *a2, void *a3)
{
  v3 = a1;
  while (*v3)
  {
    v3 += *v3 + 1;
    if (v3 >= a1 + 256)
    {
      return 4294960554;
    }
  }

  v5 = *a2;
  if (*a2)
  {
    if (v5 != 46)
    {
      goto LABEL_9;
    }

    if (a2[1])
    {
      LOBYTE(v5) = 46;
LABEL_9:
      v6 = (a1 + 255);
      do
      {
        if ((v3 + 64) >= v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = v3 + 64;
        }

        v8 = v3 + 1;
        v9 = v3 + 1;
        v10 = a2;
        do
        {
          a2 = (v10 + 1);
          if (v5 == 92)
          {
            v11 = *a2;
            if (!*a2)
            {
              return 4294960546;
            }

            LOBYTE(v5) = *a2;
            a2 = (v10 + 2);
            if (v11 - 48 <= 9)
            {
              v12 = *a2;
              if ((v12 - 48) <= 9)
              {
                v13 = v10[3];
                if ((v13 - 48) <= 9)
                {
                  v14 = 100 * v11 + 10 * v12 + v13;
                  v15 = (v10 + 4);
                  if (v14 < 5584)
                  {
                    a2 = v15;
                    LOBYTE(v5) = v14 + 48;
                  }
                }
              }
            }
          }

          else if (v5 == 46)
          {
            break;
          }

          if (v9 >= v7)
          {
            return 4294960545;
          }

          *v9++ = v5;
          LOBYTE(v5) = *a2;
          v10 = a2;
        }

        while (*a2);
        if (v9 == v8)
        {
          return 4294960554;
        }

        *v3 = v9 - v8;
        *v9 = 0;
        LOBYTE(v5) = *a2;
        v3 = v9;
      }

      while (*a2);
      goto LABEL_29;
    }
  }

  v9 = v3;
LABEL_29:
  result = 0;
  if (a3)
  {
    *a3 = v9 + 1;
  }

  return result;
}

_BYTE *DomainNameDupEx(_BYTE *result, int a2, unsigned __int8 **a3, size_t *a4)
{
  v7 = result;
  v8 = *result;
  v9 = result;
  if (*result)
  {
    v9 = result;
    do
    {
      v10 = &v9[v8];
      v11 = v10[1];
      v9 = v10 + 1;
      v8 = v11;
    }

    while (v11);
  }

  v12 = v9 - result + 1;
  if (v9 - result == -1 || (result = malloc_type_malloc(v9 - result + 1, 0x1F4B2FEBuLL)) == 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    memcpy(result, v7, v12);
    if (a2)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = v13;
        do
        {
          v16 = v15 + 1;
          v17 = v16;
          v18 = v14;
          do
          {
            v19 = *v17;
            if ((v19 - 65) < 0x1A)
            {
              LOBYTE(v19) = v19 + 32;
            }

            *v17++ = v19;
            --v18;
          }

          while (v18);
          v15 = &v16[v14];
          v14 = *v15;
        }

        while (*v15);
      }
    }

    *a3 = v13;
    if (a4)
    {
      *a4 = v12;
    }

    return 0;
  }

  return result;
}

BOOL DomainLabelEqual(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *a1;
  return v2 == *a2 && mdns_memcmp_us_ascii_case_insensitive(a1 + 1, a2 + 1, v2) == 0;
}

uint64_t DomainNameLabelCount(uint64_t result)
{
  v1 = *result;
  if (!*result)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = v2;
  while (v1 <= 0x3F)
  {
    v3 += v1 + 1;
    if (&v3[-v2] > 255)
    {
      break;
    }

    result = (result + 1);
    v1 = *v3;
    if (!*v3)
    {
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

const char *DNSRecordTypeValueToString(int a1)
{
  if (a1 > 248)
  {
    switch(a1)
    {
      case 249:
        result = "TKEY";
        break;
      case 250:
        result = "TSIG";
        break;
      case 251:
        result = "IXFR";
        break;
      case 252:
        result = "AXFR";
        break;
      case 253:
        result = "MAILB";
        break;
      case 254:
        result = "MAILA";
        break;
      case 255:
        result = "ANY";
        break;
      case 256:
        result = "URI";
        break;
      case 257:
        result = "CAA";
        break;
      case 258:
        result = "AVC";
        break;
      case 259:
        result = "DOA";
        break;
      case 260:
        result = "AMTRELAY";
        break;
      case 261:
        result = "RESINFO";
        break;
      case 262:
        result = "WALLET";
        break;
      case 263:
        result = "CLA";
        break;
      case 264:
        result = "IPN";
        break;
      default:
        if (a1 == 0x8000)
        {
          result = "TA";
        }

        else if (a1 == 32769)
        {
          result = "DLV";
        }

        else
        {
LABEL_101:
          result = 0;
        }

        break;
    }
  }

  else
  {
    result = "Reserved";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "A";
        break;
      case 2:
        result = "NS";
        break;
      case 3:
        result = "MD";
        break;
      case 4:
        result = "MF";
        break;
      case 5:
        result = "CNAME";
        break;
      case 6:
        result = "SOA";
        break;
      case 7:
        result = "MB";
        break;
      case 8:
        result = "MG";
        break;
      case 9:
        result = "MR";
        break;
      case 10:
        result = "NULL";
        break;
      case 11:
        result = "WKS";
        break;
      case 12:
        result = "PTR";
        break;
      case 13:
        result = "HINFO";
        break;
      case 14:
        result = "MINFO";
        break;
      case 15:
        result = "MX";
        break;
      case 16:
        result = "TXT";
        break;
      case 17:
        result = "RP";
        break;
      case 18:
        result = "AFSDB";
        break;
      case 19:
        result = "X25";
        break;
      case 20:
        result = "ISDN";
        break;
      case 21:
        result = "RT";
        break;
      case 22:
        result = "NSAP";
        break;
      case 23:
        result = "NSAP-PTR";
        break;
      case 24:
        result = "SIG";
        break;
      case 25:
        result = "KEY";
        break;
      case 26:
        result = "PX";
        break;
      case 27:
        result = "GPOS";
        break;
      case 28:
        result = "AAAA";
        break;
      case 29:
        result = "LOC";
        break;
      case 30:
        result = "NXT";
        break;
      case 31:
        result = "EID";
        break;
      case 32:
        result = "NIMLOC";
        break;
      case 33:
        result = "SRV";
        break;
      case 34:
        result = "ATMA";
        break;
      case 35:
        result = "NAPTR";
        break;
      case 36:
        result = "KX";
        break;
      case 37:
        result = "CERT";
        break;
      case 38:
        result = "A6";
        break;
      case 39:
        result = "DNAME";
        break;
      case 40:
        result = "SINK";
        break;
      case 41:
        result = "OPT";
        break;
      case 42:
        result = "APL";
        break;
      case 43:
        result = "DS";
        break;
      case 44:
        result = "SSHFP";
        break;
      case 45:
        result = "IPSECKEY";
        break;
      case 46:
        result = "RRSIG";
        break;
      case 47:
        result = "NSEC";
        break;
      case 48:
        result = "DNSKEY";
        break;
      case 49:
        result = "DHCID";
        break;
      case 50:
        result = "NSEC3";
        break;
      case 51:
        result = "NSEC3PARAM";
        break;
      case 52:
        result = "TLSA";
        break;
      case 53:
        result = "SMIMEA";
        break;
      case 55:
        result = "HIP";
        break;
      case 56:
        result = "NINFO";
        break;
      case 57:
        result = "RKEY";
        break;
      case 58:
        result = "TALINK";
        break;
      case 59:
        result = "CDS";
        break;
      case 60:
        result = "CDNSKEY";
        break;
      case 61:
        result = "OPENPGPKEY";
        break;
      case 62:
        result = "CSYNC";
        break;
      case 63:
        result = "ZONEMD";
        break;
      case 64:
        result = "SVCB";
        break;
      case 65:
        result = "HTTPS";
        break;
      case 66:
        result = "DSYNC";
        break;
      case 99:
        result = "SPF";
        break;
      case 100:
        result = "UINFO";
        break;
      case 101:
        result = "UID";
        break;
      case 102:
        result = "GID";
        break;
      case 103:
        result = "UNSPEC";
        break;
      case 104:
        result = "NID";
        break;
      case 105:
        result = "L32";
        break;
      case 106:
        result = "L64";
        break;
      case 107:
        result = "LP";
        break;
      case 108:
        result = "EUI48";
        break;
      case 109:
        result = "EUI64";
        break;
      case 128:
        result = "NXNAME";
        break;
      default:
        goto LABEL_101;
    }
  }

  return result;
}

unsigned __int16 *DNSRecordTypeStringToValue(const void *a1)
{
  result = bsearch(a1, &DNSRecordTypeStringToValue_sTable, 0x60uLL, 0x10uLL, _DNSRecordTypeStringToValueCmp);
  if (result)
  {
    return result[4];
  }

  return result;
}

const char *DNSClassTypeToString(int a1)
{
  v1 = "ANY";
  if (a1 != 255)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return "IN";
  }

  else
  {
    return v1;
  }
}

const char *DNSRCodeToString(int a1)
{
  result = "NoError";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "FormErr";
      break;
    case 2:
      result = "ServFail";
      break;
    case 3:
      result = "NXDomain";
      break;
    case 4:
      result = "NotImp";
      break;
    case 5:
      result = "Refused";
      break;
    case 6:
      result = "YXDomain";
      break;
    case 7:
      result = "YXRRSet";
      break;
    case 8:
      result = "NXRRSet";
      break;
    case 9:
      result = "NotAuth";
      break;
    case 10:
      result = "NotZone";
      break;
    case 11:
      result = "DSOTYPENI";
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      goto LABEL_5;
    case 16:
      result = "BADVERS";
      break;
    case 17:
      result = "BADKEY";
      break;
    case 18:
      result = "BADTIME";
      break;
    case 19:
      result = "BADMODE";
      break;
    case 20:
      result = "BADNAME";
      break;
    case 21:
      result = "BADALG";
      break;
    case 22:
      result = "BADTRUNC";
      break;
    case 23:
      result = "BADCOOKIE";
      break;
    default:
      if (a1 == 0xFFFF)
      {
        result = "Reserved";
      }

      else
      {
LABEL_5:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t DNSRCodeFromString(const void *a1)
{
  v1 = bsearch(a1, &DNSRCodeFromString_sTable, 0x15uLL, 0x10uLL, _DNSRCodeFromStringCmp);
  if (v1)
  {
    return v1[2];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DNSMessageToString(unsigned __int16 *a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  __src[127] = *MEMORY[0x29EDCA608];
  v116 = 0;
  if (_GetCUSymAddr_DataBuffer_Init_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Init_sOnce, &__block_literal_global);
  }

  v119 = 0;
  memset(v118, 0, sizeof(v118));
  v117 = 0;
  v115 = 0;
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_663;
  }

  _GetCUSymAddr_DataBuffer_Init_sAddr(v118, v129, 512, -1);
  if (a2 >= 0xC)
  {
    v103 = a4;
    v8 = (*(a1 + 2) >> 3) & 0xF;
    v9 = *(a1 + 5);
    v106 = *(a1 + 4);
    v10 = v9 | (v106 << 8);
    v100 = *(a1 + 6);
    v101 = *(a1 + 7);
    v105 = _byteswap_ushort(a1[3]);
    v104 = __rev16(a1[4]);
    v102 = __rev16(a1[5]);
    v11 = &unk_299A1B48B;
    v109 = a2;
    v114 = a1;
    if ((a3 & 0x20) == 0)
    {
      v112 = *(a1 + 5);
      v12 = *(a1 + 2) << 8;
      v13 = *(a1 + 3) | (*(a1 + 2) << 8);
      v14 = __rev16(*a1);
      if ((a3 & 4) != 0)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        v16 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
        v19 = 81;
        if (v12 < 0)
        {
          v19 = 82;
        }

        v96 = v13;
        v97 = v19;
        v95 = v14;
        v18 = "id: 0x%04X (%u), flags: 0x%04X (%c/";
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "ID:               0x%04X (%u)\n", v14, v14);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        v16 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
        v17 = 81;
        if (v12 < 0)
        {
          v17 = 82;
        }

        v95 = v17;
        v18 = "Flags:            0x%04X %c/";
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = v16(v118, v18);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      v99 = v10;
      if (v8 > 6 || v8 == 3)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        v20 = v8;
        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "OPCODE%d");
      }

      else
      {
        v21 = _DNSOpCodeToString_sNames[v8];
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        v20 = v8;
        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
      }

      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      v22 = &word_29F2819D8;
      v23 = 7;
      do
      {
        if ((*v22 & v13) != 0)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", %s", *(v22 - 1));
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }
        }

        v22 += 8;
        --v23;
      }

      while (v23);
      v24 = DNSRCodeToString(v13 & 0xF);
      if (v24)
      {
        v25 = v24;
        LODWORD(v8) = v20;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        v9 = v112;
        v10 = v99;
        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", %s", v25);
        a2 = v109;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }
      }

      else
      {
        LODWORD(v8) = v20;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        v10 = v99;
        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", RCODE%d", v13 & 0xF);
        v9 = v112;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }
      }

      if ((a3 & 4) != 0)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ")");
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        if ((a3 & 0x40) != 0)
        {
          goto LABEL_647;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", counts: %u/%u/%u/%u", v10, v105, v104, v102);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        v11 = ", ";
        if ((a3 & 0x10) != 0)
        {
          goto LABEL_647;
        }

        goto LABEL_76;
      }

      if ((a3 & 0x40) != 0)
      {
        goto LABEL_647;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_663;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\n");
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_663;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Question count:   %u\n", v10);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_663;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Answer count:     %u\n", v105);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_663;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Authority count:  %u\n", v104);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_663;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Additional count: %u\n", v102);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      v11 = &unk_299A1B48B;
    }

    if ((a3 & 0x10) != 0)
    {
      goto LABEL_647;
    }

LABEL_76:
    v110 = v11;
    v98 = v8;
    v113 = (a3 >> 3) & 1;
    v26 = v114;
    v117 = (v114 + 12);
    if (v10)
    {
      v27 = 0;
      v28 = 0;
      v107 = (v106 << 8) + v9;
      v29 = v127;
      while (1)
      {
        LOWORD(__src[0]) = 0;
        LOWORD(v130[0]) = 0;
        CUSymAddr_DataBuffer_AppendF_sAddr = DNSMessageExtractQuestion(v26, a2, v117, v29, __src, v130, &v117);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v30 = SLOWORD(v130[0]) < 0;
        if (a3)
        {
          LOWORD(v130[0]) &= ~0x8000u;
        }

        v31 = a3 & v30;
        if ((a3 & 4) != 0)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v110);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          if (v28 && (DomainNameEqual(v29, v28) & 1) != 0)
          {
            v32 = v29;
            v29 = v28;
          }

          else
          {
            CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v29, 0, v128, 0);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }

            if (v113 && _NameIsPrivate(v128))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s ");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s ");
            }

            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }

            if (v29 == v127)
            {
              v32 = v126;
            }

            else
            {
              v32 = v127;
            }

            *v32 = 0;
          }

          v36 = "ANY";
          if (LOWORD(v130[0]) != 255)
          {
            v36 = 0;
          }

          if (LOWORD(v130[0]) == 1)
          {
            v37 = "IN";
          }

          else
          {
            v37 = v36;
          }

          if (v37)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v37);
            a2 = v109;
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            a2 = v109;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "CLASS%u", LOWORD(v130[0]));
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          if (a3)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v38 = "QM";
            if (v31)
            {
              v38 = "QU";
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v38);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          v39 = DNSRecordTypeValueToString(LOWORD(__src[0]));
          if (v39)
          {
            v40 = v39;
            v26 = v114;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v94 = v40;
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s?");
          }

          else
          {
            v26 = v114;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v94 = LOWORD(__src[0]);
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u?");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v28 = v29;
          v110 = ", ";
        }

        else
        {
          if (!v27)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\nQUESTION SECTION\n");
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v29, 0, v128, 0);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          if (v113 && _NameIsPrivate(v128))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~-30s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%-30s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          v33 = "QM";
          if (v31)
          {
            v33 = "QU";
          }

          if ((a3 & 1) == 0)
          {
            v33 = &unk_299A1B48B;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %2s", v33);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v34 = "ANY";
          if (LOWORD(v130[0]) != 255)
          {
            v34 = 0;
          }

          if (LOWORD(v130[0]) == 1)
          {
            v35 = "IN";
          }

          else
          {
            v35 = v34;
          }

          v26 = v114;
          if (v35)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v41 = DNSRecordTypeValueToString(LOWORD(__src[0]));
          if (v41)
          {
            v42 = v41;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v94 = v42;
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %-5s\n");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v94 = LOWORD(__src[0]);
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u\n");
          }

          v32 = v29;
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }
        }

        ++v27;
        v29 = v32;
        if (v107 == v27)
        {
          goto LABEL_202;
        }
      }

LABEL_655:
      v76 = CUSymAddr_DataBuffer_AppendF_sAddr;
      goto LABEL_656;
    }

    v28 = 0;
    v32 = v127;
LABEL_202:
    if (v102 + v104 + v105)
    {
      for (i = 0; i < v102 + v104 + v105; ++i)
      {
        __src[0] = 0;
        v130[0] = 0;
        LODWORD(v125) = 0;
        LOWORD(v124) = 0;
        LOWORD(v123) = 0;
        CUSymAddr_DataBuffer_AppendF_sAddr = _DNSMessageExtractRecordEx(v26, a2, v117, v32, &v124, &v123, &v125, __src, v130, 0, 0, 0, 0, &v117);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v32, 0, v128, 0);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        v44 = v123 < 0;
        if (a3)
        {
          LOWORD(v123) = v123 & 0x7FFF;
        }

        v45 = a3 & v44;
        if ((a3 & 4) != 0)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v110);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          if (v28 && (DomainNameEqual(v32, v28) & 1) != 0)
          {
            v46 = v32;
            v32 = v28;
          }

          else
          {
            CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v32, 0, v128, 0);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }

            if (v113 && _NameIsPrivate(v128))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s ");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s ");
            }

            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }

            if (v32 == v127)
            {
              v46 = v126;
            }

            else
            {
              v46 = v127;
            }

            *v46 = 0;
          }

          if (v124 == 41)
          {
            if (v45)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "CF ");
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_655;
              }
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            v26 = v114;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "OPT %u", v123);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }

            if (v125)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0x%08X");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0");
            }
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%u", v125);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }

            if (v45)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CF");
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_655;
              }
            }

            v47 = "ANY";
            if (v123 != 255)
            {
              v47 = 0;
            }

            if (v123 == 1)
            {
              v48 = "IN";
            }

            else
            {
              v48 = v47;
            }

            if (v48)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v48);
              v26 = v114;
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_655;
              }
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              v26 = v114;
              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v123);
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_655;
              }
            }

            if (DNSRecordTypeValueToString(v124))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
            }
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          v28 = v32;
          v110 = ", ";
          if ((a3 & 2) == 0)
          {
            goto LABEL_367;
          }

          goto LABEL_368;
        }

        if (!v105 || i)
        {
          if (v104 && ((v100 << 8) + v101) == i)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\nAUTHORITY SECTION\n");
          }

          else
          {
            if (v104 + v105 != i)
            {
              goto LABEL_285;
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\nADDITIONAL SECTION\n");
          }
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\nANSWER SECTION\n");
        }

        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

LABEL_285:
        if (v124 == 41)
        {
          if (v113 && _NameIsPrivate(v128))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          v49 = &unk_299A1B48B;
          if (v45)
          {
            v49 = " CF";
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s OPT %u", v49, v123);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          v26 = v114;
          if (v125)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0x%08X");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0");
          }
        }

        else
        {
          if (v113)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~-42s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%-42s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          v50 = &unk_299A1B48B;
          if (v45)
          {
            v50 = "CF";
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %6u %2s", v125, v50);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          v51 = "ANY";
          if (v123 != 255)
          {
            v51 = 0;
          }

          if (v123 == 1)
          {
            v52 = "IN";
          }

          else
          {
            v52 = v51;
          }

          if (v52)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v52);
            v26 = v114;
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            v26 = v114;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v123);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }
          }

          if (DNSRecordTypeValueToString(v124))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %-5s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
          }
        }

        v46 = v32;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        if ((a3 & 2) == 0)
        {
LABEL_367:
          DNSRecordDataToStringEx(__src[0], v130[0], v124, v26, a2, v113, &v116);
        }

LABEL_368:
        if (v116)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v116);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          if (v116)
          {
            free(v116);
            v116 = 0;
          }
        }

        else
        {
          if (v113)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v94 = v130[0];
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " [%zu B]");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v95 = v130[0];
            v96 = v130[0];
            v94 = __src[0];
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %#H");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }
        }

        if ((a3 & 4) != 0)
        {
          if (v124 == 5)
          {
            DomainName = DNSMessageExtractDomainName(v26, a2, __src[0], v46, 0);
            v54 = v127;
            if (v46 == v127)
            {
              v54 = v126;
            }

            if (!DomainName)
            {
              v28 = v46;
              v46 = v54;
            }

            *v46 = 0;
          }
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\n");
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }
        }

        v32 = v46;
      }
    }

    if (v98 != 6)
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    v55 = v114;
    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "[");
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      v56 = v114 + a2;
      v57 = v117;
      if (v117 < v114 + a2)
      {
        if ((a3 >> 2))
        {
          v58 = &unk_299A1B48B;
        }

        else
        {
          v58 = "\n\t";
        }

        if ((a3 >> 2))
        {
          v59 = ", ";
        }

        else
        {
          v59 = ",\n\t";
        }

        v108 = v59;
        v111 = v114 + a2;
        do
        {
          if (v57 < v55)
          {
            v76 = 4294960586;
            goto LABEL_656;
          }

          if (v56 - v57 < 4 || (v60 = __rev16(*(v57 + 1)), v61 = v57 + 4, (v56 - (v57 + 4)) < v60))
          {
LABEL_664:
            v76 = 4294960546;
            goto LABEL_656;
          }

          v62 = *v57;
          v63 = &v61[v60];
          v117 = &v61[v60];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v58);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          v64 = __rev16(v62);
          if (v64 > 63)
          {
            v65 = v109;
            if (v64 <= 65)
            {
              if (v64 == 64)
              {
                v66 = "SUBSCRIBE";
              }

              else
              {
                v66 = "PUSH";
              }

              goto LABEL_443;
            }

            if (v64 == 66)
            {
              v66 = "UNSUBSCRIBE";
              goto LABEL_443;
            }

            if (v64 == 67)
            {
              v66 = "RECONFIRM";
              goto LABEL_443;
            }
          }

          else
          {
            v65 = v109;
            if (v64 > 1)
            {
              if (v64 == 2)
              {
                v66 = "Retry Delay";
                goto LABEL_443;
              }

              if (v64 == 3)
              {
                v66 = "Encryption Padding";
                goto LABEL_443;
              }
            }

            else
            {
              v66 = "Reserved";
              if (!v64)
              {
                goto LABEL_443;
              }

              if (v64 == 1)
              {
                v66 = "KeepAlive";
LABEL_443:
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_663;
                }

                v94 = v66;
                CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s: ");
                goto LABEL_447;
              }
            }
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          v94 = v64;
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "DSO-TYPE%u: ");
LABEL_447:
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          v124 = 0;
          v125 = (v57 + 4);
          if (v64 > 65)
          {
            if (v64 == 66)
            {
              if (v60 != 2)
              {
                goto LABEL_666;
              }

              v75 = *(v57 + 2);
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              v55 = v114;
              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%u", __rev16(v75));
LABEL_543:
                v76 = v67;
                goto LABEL_631;
              }

              goto LABEL_636;
            }

            if (v64 != 67)
            {
              goto LABEL_525;
            }

            v55 = v114;
            v67 = DNSMessageExtractDomainNameString(v114, v65, v57 + 4, __src, &v125);
            if (v67)
            {
              goto LABEL_543;
            }

            v72 = v125;
            if (v63 - v125 >= 4)
            {
              v125 += 4;
              if (!v113 || !_NameIsPrivate(__src))
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_636;
                }

                v94 = __src;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
LABEL_548:
                if (v73)
                {
                  goto LABEL_584;
                }

                v77 = __rev16(*(v72 + 1));
                v78 = "ANY";
                if (v77 != 255)
                {
                  v78 = 0;
                }

                if (v77 == 1)
                {
                  v79 = "IN";
                }

                else
                {
                  v79 = v78;
                }

                if (v79)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  v55 = v114;
                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_636;
                  }

                  v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v79);
                  if (v67)
                  {
                    goto LABEL_543;
                  }
                }

                else
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_638;
                  }

                  v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v77);
                  v55 = v114;
                  if (v67)
                  {
                    goto LABEL_543;
                  }
                }

                v83 = __rev16(*v72);
                v84 = DNSRecordTypeValueToString(v83);
                if (v84)
                {
                  v85 = v84;
                  v86 = v109;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_638;
                  }

                  v94 = v85;
                  v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                }

                else
                {
                  v86 = v109;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_638;
                  }

                  v94 = v83;
                  v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
                }

                if (v73)
                {
                  goto LABEL_584;
                }

                v90 = v125;
                v91 = v63 - v125;
                DNSRecordDataToStringEx(v125, v63 - v125, v83, v114, v86, v113, &v124);
                if (v124)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  v55 = v114;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v124);
                    if (v67)
                    {
                      goto LABEL_543;
                    }

                    if (v124)
                    {
                      free(v124);
                      v124 = 0;
                    }

LABEL_630:
                    v76 = 0;
                    goto LABEL_631;
                  }
                }

                else if (v113)
                {
                  v55 = v114;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    v94 = v91;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " [%zu B]");
                    goto LABEL_629;
                  }
                }

                else
                {
                  v55 = v114;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    v95 = v91;
                    v96 = v91;
                    v94 = v90;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " '%H'");
                    goto LABEL_629;
                  }
                }

                goto LABEL_636;
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v94 = __src;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
                goto LABEL_548;
              }

              goto LABEL_636;
            }

LABEL_637:
            v76 = 4294960546;
          }

          else
          {
            if (v64 != 64)
            {
              if (v64 == 65)
              {
                if (v63 <= v61)
                {
                  goto LABEL_664;
                }

                v55 = v114;
                while (1)
                {
                  v122 = 0;
                  v123 = 0;
                  v120 = 0;
                  v121 = 0;
                  v67 = _DNSMessageExtractRecordEx(v114, v65, v61, v130, &v120 + 1, &v120, &v121, &v123, &v122, 0, 0, 0, 0, &v125);
                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  if (v125 > v63)
                  {
                    goto LABEL_637;
                  }

                  v67 = DomainNameToString(v130, 0, __src, 0);
                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  if (v113 && _NameIsPrivate(__src))
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = __src;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = __src;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
                  }

                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_636;
                  }

                  v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0x%08X", v121);
                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  v68 = "ANY";
                  if (v120 != 255)
                  {
                    v68 = 0;
                  }

                  if (v120 == 1)
                  {
                    v69 = "IN";
                  }

                  else
                  {
                    v69 = v68;
                  }

                  if (v69)
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = v69;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = v120;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u");
                  }

                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  v70 = DNSRecordTypeValueToString(HIWORD(v120));
                  if (v70)
                  {
                    v71 = v70;
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = v71;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = HIWORD(v120);
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
                  }

                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  DNSRecordDataToStringEx(v123, v122, HIWORD(v120), v114, v65, v113, &v124);
                  if (v124)
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v124);
                    if (v67)
                    {
                      goto LABEL_543;
                    }

                    if (v124)
                    {
                      free(v124);
                      v124 = 0;
                    }
                  }

                  else
                  {
                    if (v113)
                    {
                      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                      {
                        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                      }

                      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                      {
                        goto LABEL_636;
                      }

                      v94 = v122;
                      v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " [%zu B]");
                    }

                    else
                    {
                      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                      {
                        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                      }

                      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                      {
                        goto LABEL_636;
                      }

                      v95 = v122;
                      v96 = v122;
                      v94 = v123;
                      v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %#H");
                    }

                    if (v67)
                    {
                      goto LABEL_543;
                    }
                  }

                  v61 = v125;
                  if (v125 >= v63)
                  {
                    goto LABEL_630;
                  }
                }
              }

LABEL_525:
              if (v113)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_638;
                }

                v94 = v60;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "[%u B]");
LABEL_584:
                v76 = v73;
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v95 = v60;
                  v96 = v60;
                  v94 = (v57 + 4);
                  v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "'%H'");
                  goto LABEL_584;
                }

LABEL_638:
                v76 = 4294960561;
              }

              v55 = v114;
              goto LABEL_631;
            }

            v55 = v114;
            v67 = DNSMessageExtractDomainNameString(v114, v65, v57 + 4, __src, &v125);
            if (v67)
            {
              goto LABEL_543;
            }

            v74 = v125;
            if (v63 - v125 == 4)
            {
              if (!v113 || !_NameIsPrivate(__src))
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_636;
                }

                v94 = __src;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
LABEL_564:
                if (v73)
                {
                  goto LABEL_584;
                }

                v80 = __rev16(*(v74 + 1));
                v81 = "ANY";
                if (v80 != 255)
                {
                  v81 = 0;
                }

                if (v80 == 1)
                {
                  v82 = "IN";
                }

                else
                {
                  v82 = v81;
                }

                if (v82)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  v55 = v114;
                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_636;
                  }

                  v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v82);
                  if (v67)
                  {
                    goto LABEL_543;
                  }
                }

                else
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_638;
                  }

                  v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v80);
                  v55 = v114;
                  if (v67)
                  {
                    goto LABEL_543;
                  }
                }

                v87 = __rev16(*v74);
                v88 = DNSRecordTypeValueToString(v87);
                if (v88)
                {
                  v89 = v88;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    v94 = v89;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                    goto LABEL_629;
                  }
                }

                else
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    v94 = v87;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
LABEL_629:
                    if (v67)
                    {
                      goto LABEL_543;
                    }

                    goto LABEL_630;
                  }
                }

                goto LABEL_636;
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v94 = __src;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
                goto LABEL_564;
              }

LABEL_636:
              v76 = 4294960561;
              goto LABEL_631;
            }

            v76 = 4294960553;
          }

LABEL_631:
          if (v124)
          {
            free(v124);
          }

          if (v76)
          {
            goto LABEL_656;
          }

          v57 = v117;
          v58 = v108;
          v56 = v111;
        }

        while (v117 < v111);
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        if ((a3 >> 2))
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "]", v94, v95, v96, v97);
        }

        else
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\n]", v94, v95, v96, v97);
        }

        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

LABEL_647:
        if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
        }

        if (_GetCUSymAddr_DataBuffer_Append_sAddr)
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_Append_sAddr(v118, &unk_299A1B48B, 1);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
          }

          if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
          {
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_Detach_sAddr(v118, v103, &v115);
            goto LABEL_655;
          }
        }
      }
    }

LABEL_663:
    v76 = 4294960561;
    goto LABEL_656;
  }

LABEL_666:
  v76 = 4294960553;
LABEL_656:
  if (v116)
  {
    free(v116);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Free_sOnce, &__block_literal_global_243);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sAddr)
  {
    _GetCUSymAddr_DataBuffer_Free_sAddr(v118);
  }

  v92 = *MEMORY[0x29EDCA608];
  return v76;
}

uint64_t _NameIsPrivate(const char *a1)
{
  result = strcasecmp(a1, ".");
  if (result)
  {
    return strcasecmp(a1, "ipv4only.arpa.") != 0;
  }

  return result;
}

uint64_t DNSRecordDataToStringEx(unsigned __int8 *a1, unint64_t a2, int a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v108[127] = *MEMORY[0x29EDCA608];
  if (_GetCUSymAddr_DataBuffer_Init_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Init_sOnce, &__block_literal_global);
  }

  v104 = 0;
  *v105 = 0;
  memset(v103, 0, sizeof(v103));
  v102 = 0;
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_466;
  }

  v97 = a7;
  v13 = &a1[a2];
  _GetCUSymAddr_DataBuffer_Init_sAddr(v103, v107, 256, -1);
  CUSymAddr_DataBuffer_AppendF_sAddr = 4294960582;
  if (a3 > 32)
  {
    if (a3 <= 46)
    {
      if (a3 <= 40)
      {
        if (a3 == 33)
        {
          if (a2 < 7)
          {
            goto LABEL_469;
          }

          if (a4)
          {
            DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1 + 6, v108, 0);
            if (DomainNameString)
            {
              goto LABEL_443;
            }
          }

          else
          {
            DomainNameString = DomainNameToString(a1 + 6, &a1[a2], v108, 0);
            if (DomainNameString)
            {
              goto LABEL_443;
            }
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u %u %u ", __rev16(*a1), __rev16(*(a1 + 1)), __rev16(*(a1 + 2)));
          if (!DomainNameString)
          {
            goto LABEL_388;
          }

          goto LABEL_443;
        }

        if (a3 != 35)
        {
          goto LABEL_444;
        }

        v34 = 1;
        *v105 = a1;
        while (1)
        {
          v35 = v34;
          if (*v105 > v13)
          {
            break;
          }

          if (v13 - *v105 < 2)
          {
            goto LABEL_464;
          }

          v36 = **v105;
          *v105 += 2;
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          v37 = __rev16(v36);
          if (v35)
          {
            v38 = &unk_299A1B48B;
          }

          else
          {
            v38 = " ";
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s%u", v38, v37);
          if (DomainNameString)
          {
            goto LABEL_443;
          }

          v34 = 0;
          if ((v35 & 1) == 0)
          {
            v87 = 3;
            while (*v105 <= v13)
            {
              if (v13 == *v105)
              {
                goto LABEL_464;
              }

              v89 = (*v105 + 1);
              v88 = **v105;
              if (*v105 + 1 > v13)
              {
                break;
              }

              if (v13 - v89 < v88)
              {
                goto LABEL_464;
              }

              *v105 = &v89[v88];
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " ");
              if (DomainNameString)
              {
                goto LABEL_443;
              }

              DomainNameString = _AppendEscapedASCIIString(v103, v89, *v105, "");
              if (DomainNameString)
              {
                goto LABEL_443;
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "");
              if (DomainNameString)
              {
                goto LABEL_443;
              }

              if (!--v87)
              {
                DomainNameString = DomainNameToString(*v105, v13, v108, v105);
                if (DomainNameString)
                {
                  goto LABEL_443;
                }

                goto LABEL_433;
              }
            }

            break;
          }
        }
      }

      else
      {
        if (a3 != 41)
        {
          if (a3 == 43)
          {
            if (a2 >= 4)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u %u %u", __rev16(*a1), a1[2], a1[3]);
              if (DomainNameString)
              {
                goto LABEL_443;
              }

              if (a2 != 4)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %.4H", a1 + 4, a2 - 4, a2 - 4);
                if (DomainNameString)
                {
                  goto LABEL_443;
                }
              }

              goto LABEL_435;
            }

            goto LABEL_469;
          }

          if (a3 != 46)
          {
            goto LABEL_444;
          }

          v100 = 0;
          v101 = 0;
          v99 = 0;
          if (a2 < 0x13)
          {
            goto LABEL_469;
          }

          if (DNSRecordTypeValueToString(__rev16(*a1)))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            v92 = __rev16(*a1);
            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "TYPE%u");
          }

          if (!DomainNameString)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %u %u %u", a1[2], a1[3], bswap32(*(a1 + 1)));
            if (!DomainNameString)
            {
              v100 = 0;
              v101 = 0;
              v99 = 0;
              if (_GetCUSymAddr_SecondsToYMD_HMS_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_SecondsToYMD_HMS_sOnce, &__block_literal_global_257);
              }

              if (!_GetCUSymAddr_SecondsToYMD_HMS_sAddr)
              {
                goto LABEL_466;
              }

              _GetCUSymAddr_SecondsToYMD_HMS_sAddr(bswap32(*(a1 + 2)) + 0xE77934880, &v101 + 4, &v101, &v100 + 4, &v100, &v99 + 4, &v99);
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %u%02u%02u%02u%02u%02u", HIDWORD(v101), v101, HIDWORD(v100), v100, HIDWORD(v99), v99);
              if (!DomainNameString)
              {
                if (_GetCUSymAddr_SecondsToYMD_HMS_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_SecondsToYMD_HMS_sOnce, &__block_literal_global_257);
                }

                if (!_GetCUSymAddr_SecondsToYMD_HMS_sAddr)
                {
                  goto LABEL_466;
                }

                _GetCUSymAddr_SecondsToYMD_HMS_sAddr(bswap32(*(a1 + 3)) + 0xE77934880, &v101 + 4, &v101, &v100 + 4, &v100, &v99 + 4, &v99);
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %u%02u%02u%02u%02u%02u", HIDWORD(v101), v101, HIDWORD(v100), v100, HIDWORD(v99), v99);
                if (!DomainNameString)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_466;
                  }

                  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %u", __rev16(*(a1 + 8)));
                  if (DomainNameString)
                  {
                    goto LABEL_443;
                  }

                  *v105 = a1 + 18;
                  DomainNameString = DomainNameToString(a1 + 18, v13, v108, v105);
                  if (DomainNameString)
                  {
                    goto LABEL_443;
                  }

                  DomainNameString = _AppendDomainNameStringEx(v103, " ", a6, v108);
                  if (DomainNameString)
                  {
                    goto LABEL_443;
                  }

                  *v106 = 0;
                  if (_GetCUSymAddr_Base64EncodeCopyEx_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253);
                  }

                  if (!_GetCUSymAddr_Base64EncodeCopyEx_sAddr)
                  {
                    goto LABEL_466;
                  }

                  DomainNameString = _GetCUSymAddr_Base64EncodeCopyEx_sAddr(*v105, v13 - *v105, 0, v106, 0);
                  if (!DomainNameString)
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %s", *v106);
                    }

                    else
                    {
                      CUSymAddr_DataBuffer_AppendF_sAddr = 4294960561;
                    }

                    v72 = *v106;
                    if (*v106)
                    {
LABEL_241:
                      free(v72);
                    }

LABEL_242:
                    if (CUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_444;
                    }

                    goto LABEL_435;
                  }
                }
              }
            }
          }

          goto LABEL_443;
        }

        if (v13 >= a1)
        {
          v73 = &unk_299A1B48B;
          while (1)
          {
            if (a1 >= v13)
            {
              goto LABEL_435;
            }

            if (v13 - a1 < 4)
            {
              goto LABEL_464;
            }

            v74 = a1 + 4;
            v75 = __rev16(*(a1 + 1));
            if (v13 - (a1 + 4) < v75)
            {
              goto LABEL_464;
            }

            v76 = *a1;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s{", v73);
            if (DomainNameString)
            {
              goto LABEL_443;
            }

            v77 = __rev16(v76);
            if (v77 == 12)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "Padding");
            }

            else if (v77 == 15)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "EDE");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "CODE%u");
            }

            if (DomainNameString)
            {
              goto LABEL_443;
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, ", ");
            if (DomainNameString)
            {
              goto LABEL_443;
            }

            v78 = &v74[v75];
            if (v77 != 15 || !v75)
            {
              break;
            }

            if (v75 < 2)
            {
              goto LABEL_464;
            }

            v79 = *(a1 + 2);
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            v80 = __rev16(v79);
            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "code: %u", v80);
            if (DomainNameString)
            {
              goto LABEL_443;
            }

            v81 = (v78 - (a1 + 6));
            if (v81 | v80)
            {
              if (v80 <= 0x18)
              {
                v82 = off_29F281BB0[v80];
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " (%s)", v82);
                if (DomainNameString)
                {
                  goto LABEL_443;
                }
              }

              if (v81)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, ", extra-text: ");
                if (DomainNameString)
                {
                  goto LABEL_443;
                }

                if (a6)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_466;
                  }

                  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "«REDACTED»");
                }

                else
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_466;
                  }

                  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "'%.*s'");
                }

LABEL_337:
                if (DomainNameString)
                {
                  goto LABEL_443;
                }
              }
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "}");
            a1 = v78;
            v73 = ", ";
            if (DomainNameString)
            {
              goto LABEL_443;
            }
          }

          if (a6)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "[%u B]");
          }

          else if (v77 == 12 && v75 && !*v74 && !memcmp(a1 + 4, a1 + 5, v75 - 1))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "<%u zero bytes>");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "'%H'");
          }

          goto LABEL_337;
        }
      }

LABEL_465:
      CUSymAddr_DataBuffer_AppendF_sAddr = 4294960586;
      goto LABEL_444;
    }

    if (a3 <= 63)
    {
      if (a3 == 47)
      {
        if (a4)
        {
          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v108, v105);
          if (DomainNameString)
          {
            goto LABEL_443;
          }
        }

        else
        {
          DomainNameString = DomainNameToString(a1, &a1[a2], v108, v105);
          if (DomainNameString)
          {
            goto LABEL_443;
          }
        }

        if (*v105 < v13)
        {
          DomainNameString = _AppendDomainNameStringEx(v103, 0, a6, v108);
          if (DomainNameString)
          {
            goto LABEL_443;
          }

          v21 = *v105;
LABEL_375:
          DomainNameString = _DNSRecordDataAppendTypeBitMap(v103, v21, v13);
          if (DomainNameString)
          {
            goto LABEL_443;
          }

          goto LABEL_435;
        }

        goto LABEL_469;
      }

      if (a3 == 48)
      {
        goto LABEL_227;
      }

      if (a3 != 50)
      {
        goto LABEL_444;
      }

      if (a2 < 5)
      {
        goto LABEL_469;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_466;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u %u %u", *a1, a1[1], __rev16(*(a1 + 1)));
      if (DomainNameString)
      {
        goto LABEL_443;
      }

      *v105 = a1 + 4;
      if ((a2 - 4) < 1)
      {
        goto LABEL_469;
      }

      *v105 = a1 + 5;
      v16 = a1[4];
      if (a2 - 5 < v16)
      {
        goto LABEL_469;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_466;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %.4H", *v105, v16, v16);
      if (DomainNameString)
      {
        goto LABEL_443;
      }

      v17 = (*v105 + v16);
      *v105 = v17;
      if ((v13 - v17) < 1)
      {
        goto LABEL_469;
      }

      v18 = (v17 + 1);
      *v105 = v17 + 1;
      v19 = *v17;
      if (v13 - (v17 + 1) < v19)
      {
        goto LABEL_469;
      }

      if (*v17)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_466;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " ");
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        v18 = *v105;
      }

      v20 = v18 + v19;
      while (1)
      {
        v21 = *v105;
        v22 = v20 - *v105;
        if (v20 == *v105)
        {
          goto LABEL_375;
        }

        if (v22 > 2)
        {
          if (v22 == 4)
          {
            v27 = 0;
            goto LABEL_64;
          }

          if (v22 != 3)
          {
            goto LABEL_61;
          }

          v26 = *(*v105 + 2);
          v24 = (v26 << 16) | (*(*v105 + 1) << 24);
          v25 = v24 | (**v105 << 32);
          *v105 += 3;
          BYTE4(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[2 * (v26 & 0xF)];
          v23 = 5;
        }

        else
        {
          if (v22 == 1)
          {
            v28 = 0;
            v25 = **v105 << 32;
            ++*v105;
            goto LABEL_74;
          }

          if (v22 != 2)
          {
LABEL_61:
            v27 = *(*v105 + 4);
LABEL_64:
            v29 = *(*v105 + 3);
            v30 = v27 | (v29 << 8);
            v24 = (*(*v105 + 1) << 24) | (*(*v105 + 2) << 16) | v30;
            v25 = v24 | (**v105 << 32);
            if (v22 >= 5)
            {
              v31 = 5;
            }

            else
            {
              v31 = v20 - *v105;
            }

            *v105 += v31;
            if (v22 == 4)
            {
              v23 = 7;
            }

            else
            {
              HIBYTE(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[v27 & 0x1F];
              v23 = 8;
            }

            v32 = DNSRecordDataToStringEx_kBase32ExtendedHex[(v29 >> 2) & 0x1F];
            BYTE6(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v30 >> 5) & 0x1F];
            BYTE5(v108[0]) = v32;
            BYTE4(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 15) & 0x1F];
            goto LABEL_71;
          }

          v23 = 0;
          v24 = *(*v105 + 1) << 24;
          v25 = v24 | (**v105 << 32);
          *v105 += 2;
        }

LABEL_71:
        BYTE3(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 20) & 0x1F];
        BYTE2(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 25) & 0x1F];
        if (v23)
        {
          v28 = v23;
        }

        else
        {
          v28 = 4;
        }

LABEL_74:
        BYTE1(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v25 >> 30) & 0x1F];
        LOBYTE(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[v25 >> 35];
        if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
        }

        if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
        {
          goto LABEL_466;
        }

        if (v28)
        {
          v33 = v28;
        }

        else
        {
          v33 = 2;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_Append_sAddr(v103, v108, v33);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_444;
        }
      }
    }

    if ((a3 - 64) >= 2)
    {
      goto LABEL_444;
    }

    if (v13 < a1)
    {
      goto LABEL_465;
    }

    if (a2 < 2)
    {
      goto LABEL_469;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_466;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u", __rev16(*a1));
    if (DomainNameString)
    {
      goto LABEL_443;
    }

    *v106 = a1 + 2;
    DomainNameString = DomainNameToString(a1 + 2, v13, v108, v106);
    if (DomainNameString)
    {
      goto LABEL_443;
    }

    DomainNameString = _AppendDomainNameStringEx(v103, " ", a6, v108);
    if (DomainNameString)
    {
      goto LABEL_443;
    }

    while (1)
    {
      v42 = *v106;
      if (*v106 >= v13)
      {
        goto LABEL_435;
      }

      if (v13 - *v106 < 4)
      {
        goto LABEL_464;
      }

      v43 = __rev16(**v106);
      v44 = *(*v106 + 2);
      v45 = _DNSSVCBKeyToString(v43);
      if (v45)
      {
        v46 = v45;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_466;
        }

        v90 = v46;
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %s=");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_466;
        }

        v90 = v43;
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " key%u=");
      }

      if (DomainNameString)
      {
        goto LABEL_443;
      }

      v47 = __rev16(v44);
      v48 = v42 + 4;
      *v106 = v42 + 4;
      if (v13 - (v42 + 4) < v47)
      {
LABEL_464:
        CUSymAddr_DataBuffer_AppendF_sAddr = 4294960546;
        goto LABEL_444;
      }

      if (v43 > 4)
      {
        if (v43 > 32766)
        {
          if (v43 != 0x7FFF)
          {
            if (v43 == 32769)
            {
LABEL_163:
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              v90 = *v106;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%.4H");
LABEL_218:
              if (DomainNameString)
              {
                goto LABEL_443;
              }
            }

            else
            {
LABEL_213:
              if (a6)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                v90 = v47;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "<%u redacted bytes>");
                goto LABEL_218;
              }

              DomainNameString = _AppendEscapedASCIIString(v103, v42 + 4, &v48[v47], "");
              if (DomainNameString)
              {
                goto LABEL_443;
              }
            }

            *v106 += v47;
            goto LABEL_220;
          }

          v67 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v68 = 0;
            v69 = 1;
            do
            {
              if ((v69 & 1) == 0)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s", v68);
                if (DomainNameString)
                {
                  goto LABEL_443;
                }

                v48 = *v106;
              }

              v70 = *v48;
              if (v70 > 2)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                v90 = v70;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "sla%u");
              }

              else
              {
                v71 = off_29F281B98[*v48];
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                v90 = v71;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s");
              }

              if (DomainNameString)
              {
                goto LABEL_443;
              }

              v69 = 0;
              v48 = (*v106 + 1);
              *v106 = v48;
              v68 = ",";
            }

            while (v48 < v67);
          }
        }

        else
        {
          if (v43 == 5)
          {
            goto LABEL_163;
          }

          if (v43 != 6)
          {
            goto LABEL_213;
          }

          if ((v47 & 0xF) != 0)
          {
            goto LABEL_469;
          }

          v55 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v56 = &unk_299A1B48B;
            v57 = (v42 + 4);
            while (1)
            {
              CUSymAddr_DataBuffer_AppendF_sAddr = _AppendIPv6Address(v103, v56, v57, a6);
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_444;
              }

              v57 = *v106 + 16;
              *v106 = v57;
              if (v57 >= v55)
              {
                break;
              }

              v56 = ",";
            }
          }
        }
      }

      else if (v43 > 2)
      {
        if (v43 == 3)
        {
          if (v47 != 2)
          {
            goto LABEL_469;
          }

          v66 = *(v42 + 2);
          *v106 = &v48[v47];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u", __rev16(v66));
          if (DomainNameString)
          {
            goto LABEL_443;
          }
        }

        else
        {
          if ((v47 & 3) != 0)
          {
            goto LABEL_469;
          }

          v58 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v59 = &unk_299A1B48B;
            v60 = (v42 + 4);
            while (1)
            {
              CUSymAddr_DataBuffer_AppendF_sAddr = _AppendIPv4Address(v103, v59, v60, a6);
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_444;
              }

              v60 = (*v106 + 4);
              *v106 = v60;
              if (v60 >= v58)
              {
                break;
              }

              v59 = ",";
            }
          }
        }
      }

      else if (v43)
      {
        if (v43 != 1)
        {
          goto LABEL_213;
        }

        v49 = 0;
        v50 = &v48[v47];
        v51 = 1;
        while (*v106 < v50)
        {
          v53 = (*v106 + 1);
          v52 = **v106;
          if (*v106 + 1 > v50)
          {
            goto LABEL_465;
          }

          if (v50 - v53 < v52)
          {
            goto LABEL_464;
          }

          v54 = &v53[v52];
          *v106 = &v53[v52];
          if ((v51 & 1) == 0)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s", v49);
            if (DomainNameString)
            {
              goto LABEL_443;
            }

            v54 = *v106;
          }

          DomainNameString = _AppendEscapedASCIIString(v103, v53, v54, ",");
          v51 = 0;
          v49 = ",";
          if (DomainNameString)
          {
            goto LABEL_443;
          }
        }
      }

      else
      {
        if (v47)
        {
          goto LABEL_469;
        }

        v61 = &v48[v47];
        if (v48 < v61)
        {
          v62 = 0;
          v63 = 1;
          do
          {
            v64 = __rev16(*v48);
            *v106 = v48 + 2;
            v65 = _DNSSVCBKeyToString(v64);
            if ((v63 & 1) == 0)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s", v62);
              if (DomainNameString)
              {
                goto LABEL_443;
              }
            }

            if (v65)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              v90 = v65;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              v90 = v64;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "key%u");
            }

            if (DomainNameString)
            {
              goto LABEL_443;
            }

            v63 = 0;
            v48 = *v106;
            v62 = ",";
          }

          while (*v106 < v61);
        }
      }

LABEL_220:
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_466;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "", v90);
      if (DomainNameString)
      {
        goto LABEL_443;
      }
    }
  }

  if (a3 > 12)
  {
    if (a3 > 15)
    {
      if (a3 != 16)
      {
        if (a3 != 25)
        {
          if (a3 != 28)
          {
            goto LABEL_444;
          }

          if (a2 != 16)
          {
            goto LABEL_469;
          }

          DomainNameString = _AppendIPv6Address(v103, 0, a1, a6);
          if (DomainNameString)
          {
            goto LABEL_443;
          }

          goto LABEL_435;
        }

LABEL_227:
        if (a2 < 5)
        {
          goto LABEL_469;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_466;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u %u %u", __rev16(*a1), a1[2], a1[3]);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        *v105 = a1 + 4;
        v108[0] = 0;
        if (_GetCUSymAddr_Base64EncodeCopyEx_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253);
        }

        if (!_GetCUSymAddr_Base64EncodeCopyEx_sAddr)
        {
          goto LABEL_466;
        }

        DomainNameString = _GetCUSymAddr_Base64EncodeCopyEx_sAddr(*v105, v13 - *v105, 0, v108, 0);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %s", v108[0]);
        }

        else
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = 4294960561;
        }

        v72 = v108[0];
        if (v108[0])
        {
          goto LABEL_241;
        }

        goto LABEL_242;
      }

LABEL_244:
      if (a2)
      {
        if (a6)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "[%zu B]");
        }

        else if (a2 == 1)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%#H");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%#{txt}");
        }

LABEL_381:
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        goto LABEL_435;
      }

      goto LABEL_469;
    }

    if (a3 == 13)
    {
      goto LABEL_244;
    }

    if (a3 != 15)
    {
      goto LABEL_444;
    }

    if (a2 < 3)
    {
      goto LABEL_469;
    }

    v41 = *a1;
    v40 = (a1 + 2);
    v39 = v41;
    if (a4)
    {
      DomainNameString = DNSMessageExtractDomainNameString(a4, a5, v40, v108, 0);
      if (DomainNameString)
      {
        goto LABEL_443;
      }
    }

    else
    {
      DomainNameString = DomainNameToString(v40, v13, v108, 0);
      if (DomainNameString)
      {
        goto LABEL_443;
      }
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_466;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u", __rev16(v39));
    if (!DomainNameString)
    {
LABEL_433:
      v84 = " ";
LABEL_434:
      DomainNameString = _AppendDomainNameStringEx(v103, v84, a6, v108);
      if (DomainNameString)
      {
        goto LABEL_443;
      }

      goto LABEL_435;
    }

LABEL_443:
    CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameString;
    goto LABEL_444;
  }

  if (a3 <= 4)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_444;
      }

LABEL_84:
      if (a4)
      {
        DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v108, 0);
        if (DomainNameString)
        {
          goto LABEL_443;
        }
      }

      else
      {
        DomainNameString = DomainNameToString(a1, &a1[a2], v108, 0);
        if (DomainNameString)
        {
          goto LABEL_443;
        }
      }

LABEL_388:
      v84 = 0;
      goto LABEL_434;
    }

    if (a2 != 4)
    {
      goto LABEL_469;
    }

    DomainNameString = _AppendIPv4Address(v103, 0, a1, a6);
    if (DomainNameString)
    {
      goto LABEL_443;
    }

LABEL_435:
    if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
    }

    if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
    {
      goto LABEL_466;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_Append_sAddr(v103, &unk_299A1B48B, 1);
    if (!DomainNameString)
    {
      if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
      }

      if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
      {
        DomainNameString = _GetCUSymAddr_DataBuffer_Detach_sAddr(v103, v97, &v102);
        goto LABEL_443;
      }

LABEL_466:
      CUSymAddr_DataBuffer_AppendF_sAddr = 4294960561;
      goto LABEL_444;
    }

    goto LABEL_443;
  }

  switch(a3)
  {
    case 5:
      goto LABEL_84;
    case 6:
      if (a4)
      {
        DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v108, v105);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        if (*v105 >= v13)
        {
          goto LABEL_469;
        }

        DomainNameString = _AppendDomainNameStringEx(v103, 0, a6, v108);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        DomainNameString = DNSMessageExtractDomainNameString(a4, a5, *v105, v108, v105);
        if (DomainNameString)
        {
          goto LABEL_443;
        }
      }

      else
      {
        DomainNameString = DomainNameToString(a1, &a1[a2], v108, v105);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        DomainNameString = _AppendDomainNameStringEx(v103, 0, a6, v108);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        DomainNameString = DomainNameToString(*v105, &a1[a2], v108, v105);
        if (DomainNameString)
        {
          goto LABEL_443;
        }
      }

      DomainNameString = _AppendDomainNameStringEx(v103, " ", a6, v108);
      if (DomainNameString)
      {
        goto LABEL_443;
      }

      v83 = *v105;
      if (v13 - *v105 == 20)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_466;
        }

        v95 = bswap32(v83[3]);
        v96 = bswap32(v83[4]);
        v93 = bswap32(v83[1]);
        v94 = bswap32(v83[2]);
        v91 = bswap32(*v83);
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %u %u %u %u %u");
        goto LABEL_381;
      }

LABEL_469:
      CUSymAddr_DataBuffer_AppendF_sAddr = 4294960554;
      break;
    case 12:
      goto LABEL_84;
  }

LABEL_444:
  if (_GetCUSymAddr_DataBuffer_Free_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Free_sOnce, &__block_literal_global_243);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sAddr)
  {
    _GetCUSymAddr_DataBuffer_Free_sAddr(v103);
  }

  v85 = *MEMORY[0x29EDCA608];
  return CUSymAddr_DataBuffer_AppendF_sAddr;
}

uint64_t _AppendIPv4Address(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4)
  {
    v4 = bswap32(*a3);
    if (v4)
    {
      v5 = v4 == 2130706433;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
  }

  else
  {
    v6 = 0;
  }

  return _AppendIPAddress(a1, a2, a3, 4, v6);
}

uint64_t _AppendIPv6Address(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (*a3 | *(a3 + 7))
    {
      v4 = 1;
    }

    else
    {
      v4 = *(a3 + 15) > 1u;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return _AppendIPAddress(a1, a2, a3, 16, v5);
}

uint64_t _AppendDomainNameStringEx(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  if (a3 && _NameIsPrivate(a4))
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      v5 = "%s%~s";
      return _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, v5);
    }
  }

  else
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      v5 = "%s%s";
      return _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, v5);
    }
  }

  return 4294960561;
}

uint64_t _DNSRecordDataAppendTypeBitMap(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a3 - a2;
  if (a3 - a2 >= 1)
  {
    while (2)
    {
      if (v3 < 3 || (v5 = a2[1], (v5 - 33) < 0xFFFFFFE0) || (v6 = a2 + 2, a3 - (a2 + 2) < v5))
      {
        result = 4294960554;
        goto LABEL_18;
      }

      v14 = a3 - (a2 + 2);
      v15 = a2[1];
      v7 = 0;
      v8 = 8 * v5;
      v9 = *a2 << 8;
      v10 = 1;
      while (1)
      {
        if ((v6[v7 >> 3] >> (~v7 & 7)))
        {
          v11 = DNSRecordTypeValueToString(v9 + v7);
          if (!v11)
          {
            v11 = __str;
            snprintf(__str, 0x20uLL, "TYPE%d", v9 + v7);
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            result = 4294960561;
            goto LABEL_18;
          }

          result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, " %s", v11);
          if (result)
          {
            break;
          }
        }

        v10 = ++v7 < v8;
        if (v8 == v7)
        {
          v6 += v15;
          v3 = a3 - v6;
          goto LABEL_16;
        }
      }

      v3 = v14;
      if (v10)
      {
        goto LABEL_18;
      }

LABEL_16:
      a2 = v6;
      if (v3 > 0)
      {
        continue;
      }

      break;
    }
  }

  result = 0;
LABEL_18:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

const char *_DNSSVCBKeyToString(int a1)
{
  if (a1 > 4)
  {
    if (a1 > 32766)
    {
      switch(a1)
      {
        case 32767:
          return "sla";
        case 32768:
          return "dohuri";
        case 32769:
          return "odohconfig";
      }
    }

    else
    {
      switch(a1)
      {
        case 5:
          return "echconfig";
        case 6:
          return "ipv6hint";
        case 7:
          return "dohpath";
      }
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return "mandatory";
    }

    if (a1 == 1)
    {
      return "alpn";
    }

    return 0;
  }

  if (a1 == 2)
  {
    return "no-default-alpn";
  }

  if (a1 == 3)
  {
    return "port";
  }

  return "ipv4hint";
}

uint64_t _AppendEscapedASCIIString(uint64_t a1, unsigned __int8 *a2, unint64_t a3, char *__s)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v6 = a2;
  while (1)
  {
    v8 = mdns_parse_printable_ascii_run(v6, a3, 92, __s);
    if (!v8)
    {
      break;
    }

    v9 = v8;
    if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
    }

    if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
    {
      return 4294960561;
    }

    result = _GetCUSymAddr_DataBuffer_Append_sAddr(a1, v6, v9);
    if (result)
    {
      return result;
    }

    v6 += v9;
LABEL_19:
    if (v6 >= a3)
    {
      return 0;
    }
  }

  v11 = *v6++;
  if ((v11 - 32) <= 0x5E)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      return 4294960561;
    }

    result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "\\%c");
    goto LABEL_18;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "\\%03d");
LABEL_18:
    if (result)
    {
      return result;
    }

    goto LABEL_19;
  }

  return 4294960561;
}

char *DNSExtendedDNSErrorCodeToString(unsigned int a1)
{
  if (a1 > 0x18)
  {
    return 0;
  }

  else
  {
    return off_29F281BB0[a1];
  }
}

uint64_t _AppendIPAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a4 != 16 && a4 != 4)
  {
    result = 4294960553;
    goto LABEL_17;
  }

  if (!a5)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      result = (_GetCUSymAddr_DataBuffer_AppendF_sAddr)(a1, "%s%.*a");
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (!_GetCUSymAddr_SNPrintF_sAddr)
  {
    goto LABEL_18;
  }

  result = _GetCUSymAddr_SNPrintF_sAddr(v10, 33, "%.4H", a3, a4, a4);
  if ((result & 0x80000000) == 0)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      result = (_GetCUSymAddr_DataBuffer_AppendF_sAddr)(a1, "%s%~s");
      goto LABEL_17;
    }

LABEL_18:
    result = 4294960561;
  }

LABEL_17:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DNSComputeDNSKeyTag(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + v2);
      if ((v2 & 1) == 0)
      {
        v4 <<= 8;
      }

      v3 += v4;
      ++v2;
    }

    while (a2 != v2);
  }

  else
  {
    v3 = 0;
  }

  return (v3 + HIWORD(v3));
}

uint64_t DNSMessagePrintObfuscatedString(uint64_t a1, uint64_t a2, const char *a3)
{
  if (_NameIsPrivate(a3))
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%~s", a3);
    }
  }

  else
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%s");
    }
  }

  return 4294960561;
}

uint64_t DNSMessagePrintObfuscatedIPv4Address(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = bswap32(a3);
  v7 = a3;
  if (a3 && a3 != 2130706433)
  {
    return _DNSMessagePrintObfuscatedIPAddress(a1, a2, &v6, 4);
  }

  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (_GetCUSymAddr_SNPrintF_sAddr)
  {
    return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%#.4a", COERCE_DOUBLE(&v7));
  }

  else
  {
    return 4294960561;
  }
}

uint64_t _DNSMessagePrintObfuscatedIPAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a4 != 16 && a4 != 4)
  {
    result = 4294960553;
    goto LABEL_12;
  }

  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (!_GetCUSymAddr_SNPrintF_sAddr)
  {
    goto LABEL_13;
  }

  result = _GetCUSymAddr_SNPrintF_sAddr(v10, 33, "%.4H", a3, a4, a4);
  if ((result & 0x80000000) == 0)
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      result = _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%~s", v10);
      goto LABEL_12;
    }

LABEL_13:
    result = 4294960561;
  }

LABEL_12:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DNSMessagePrintObfuscatedIPv6Address(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 | *(a3 + 7))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a3 + 15) >= 2u;
  }

  if (v6)
  {

    return _DNSMessagePrintObfuscatedIPAddress(a1, a2, a3, 16);
  }

  else
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%.16a", *&a3);
    }

    else
    {
      return 4294960561;
    }
  }
}

uint64_t OSLogCopyFormattedString(char *__s1, uint64_t a2)
{
  v4 = 3;
  for (i = &OSLogCopyFormattedString_formatters; strcmp(__s1, *i); i += 2)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  v7 = i[1];

  return (v7)(a2);
}

uint64_t srp_os_log_copy_formatted_string_mac_addr(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = a1;
  __str[17] = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_alloc(MEMORY[0x29EDB9F30]);
    v11 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v12 = [v1 description];
    v13 = [v11 initWithFormat:@"<failed to decode - invalid data type: %@>", v12];
    v6 = [v10 initWithString:v13];

    goto LABEL_8;
  }

  v2 = v1;
  if ([v2 bytes] && objc_msgSend(v2, "length") == 6)
  {
    v3 = [v2 bytes];
    if (snprintf(__str, 0x12uLL, "%02x:%02x:%02x:%02x:%02x:%02x", *v3, v3[1], v3[2], v3[3], v3[4], v3[5]) <= 0)
    {
      v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:@"<failed to decode - MAC address conversion failed>"];
      goto LABEL_7;
    }

    v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:__str];
    v5 = objc_alloc(MEMORY[0x29EDB9F30]);
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x29EDB9F30]);
    v4 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<failed to decode - NIL or invalid data length: %lu>", objc_msgSend(v2, "length")];
    v5 = v9;
  }

  v6 = [v5 initWithString:v4];

LABEL_7:
LABEL_8:

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t srp_os_log_copy_formatted_string_domain_name(void *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x29EDB9F30]);
    v10 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v11 = [v1 description];
    v12 = [v10 initWithFormat:@"<failed to decode - invalid data type: %@>", v11];
    v5 = [v9 initWithString:v12];

    goto LABEL_9;
  }

  v2 = v1;
  if (![v2 bytes])
  {
    v13 = objc_alloc(MEMORY[0x29EDB9F30]);
    v14 = @"<null>";
LABEL_14:
    v5 = [v13 initWithString:v14];
    goto LABEL_8;
  }

  if (![v2 length] || objc_msgSend(v2, "length") >= 0x101)
  {
    v8 = objc_alloc(MEMORY[0x29EDB9F30]);
    v3 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<failed to decode - NIL or invalid data length: %lu>", objc_msgSend(v2, "length")];
    v4 = v8;
    goto LABEL_7;
  }

  v15[1008] = 0;
  if (DomainNameToString([v2 bytes], objc_msgSend(v2, "bytes") + objc_msgSend(v2, "length"), v15, 0))
  {
    v13 = objc_alloc(MEMORY[0x29EDB9F30]);
    v14 = @"Malformed Domain Name";
    goto LABEL_14;
  }

  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v15];
  v4 = objc_alloc(MEMORY[0x29EDB9F30]);
LABEL_7:
  v5 = [v4 initWithString:v3];

LABEL_8:
LABEL_9:

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t srp_os_log_copy_formatted_string_ipv6_addr_segment(void *a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v1 = a1;
  __str[51] = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = objc_alloc(MEMORY[0x29EDB9F30]);
    v23 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v24 = [v1 description];
    v25 = [v23 initWithFormat:@"<failed to decode - invalid data type: %@>", v24];
    v15 = [v22 initWithString:v25];

    goto LABEL_19;
  }

  v2 = v1;
  if (![v2 bytes] || !objc_msgSend(v2, "length") || objc_msgSend(v2, "length") >= 0x11)
  {
    v18 = objc_alloc(MEMORY[0x29EDB9F30]);
    v20 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v26 = [v2 length];
    v21 = @"<failed to decode - NIL or invalid data length: %lu>";
LABEL_23:
    v19 = [v20 initWithFormat:v21, v26, v27];
LABEL_24:
    v13 = v19;
    v14 = v18;
    goto LABEL_18;
  }

  if ([v2 length])
  {
    v18 = objc_alloc(MEMORY[0x29EDB9F30]);
    v20 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v26 = [v2 length];
    v21 = @"<failed to decode - odd data length: %lu>";
    goto LABEL_23;
  }

  v3 = [v2 bytes];
  if ([v2 length])
  {
    v4 = 0;
    LODWORD(v5) = 0;
    do
    {
      v6 = v5;
      v28[v5] = bswap32(*(v3 + v4)) >> 16;
      v5 = (v5 + 1);
      v4 += 2;
    }

    while (v4 < [v2 length]);
    if (v6 <= 0x7FFFFFFE)
    {
      v7 = 0;
      v8 = __str;
      v9 = &unk_299A1B48B;
      while (1)
      {
        v10 = (&v30 - v8);
        v11 = snprintf(v8, &v30 - v8, "%s%x", v9, v28[v7]);
        if (v11 < 1 || v10 <= v11)
        {
          break;
        }

        v8 += v11;
        ++v7;
        v9 = ":";
        if (v5 == v7)
        {
          goto LABEL_17;
        }
      }

      v18 = objc_alloc(MEMORY[0x29EDB9F30]);
      v19 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<failed to decode - snprintf: result: %d remain: %lu>", v7, v10];
      goto LABEL_24;
    }
  }

LABEL_17:
  v13 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:__str];
  v14 = objc_alloc(MEMORY[0x29EDB9F30]);
LABEL_18:
  v15 = [v14 initWithString:v13];

LABEL_19:
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

_BYTE *mdns_memcpy_bits(_BYTE *__dst, void *__src, unint64_t a3)
{
  v3 = a3;
  v5 = __dst;
  v6 = a3 >> 3;
  if (a3 >= 8)
  {
    __dst = memcpy(__dst, __src, a3 >> 3);
  }

  if ((v3 & 7) != 0)
  {
    v5[v6] = v5[v6] & ~(-1 << (8 - (v3 & 7))) | *(__src + v6) & (-1 << (8 - (v3 & 7)));
  }

  return __dst;
}

uint64_t mdns_memcmp_us_ascii_case_insensitive(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    while (1)
    {
      v4 = *a1++;
      v3 = v4;
      v5 = v4 + 32;
      v6 = v4 - 65 >= 0x1A;
      v8 = *a2++;
      v7 = v8;
      if (!v6)
      {
        v3 = v5;
      }

      if (v7 - 65 < 0x1A)
      {
        v7 += 32;
      }

      if (v3 < v7)
      {
        return -1;
      }

      if (v3 > v7)
      {
        break;
      }

      if (!--a3)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_parse_uint16_be(unsigned __int16 *a1, unint64_t a2, void *a3, int *a4)
{
  if (a1 <= a2)
  {
    if (a2 - a1 >= 2)
    {
      result = bswap32(*a1) >> 16;
      v5 = 0;
      if (a3)
      {
        *a3 = a1 + 1;
      }
    }

    else
    {
      result = 0;
      v5 = -6750;
    }
  }

  else
  {
    result = 0;
    v5 = -6710;
  }

  if (a4)
  {
    *a4 = v5;
  }

  return result;
}

unsigned __int8 *mdns_parse_length_prefixed_string(unsigned __int8 *a1, unsigned __int8 *a2, void *a3, int *a4)
{
  if (a1 > a2)
  {
    goto LABEL_4;
  }

  if (a2 == a1)
  {
    goto LABEL_6;
  }

  v6 = *a1;
  result = a1 + 1;
  v5 = v6;
  if (result > a2)
  {
LABEL_4:
    result = 0;
    v7 = -6710;
    goto LABEL_7;
  }

  if (a2 - result < v5)
  {
LABEL_6:
    result = 0;
    v7 = -6750;
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      *a3 = &result[v5];
    }
  }

LABEL_7:
  if (a4)
  {
    *a4 = v7;
  }

  return result;
}

unint64_t mdns_parse_printable_ascii_run(unint64_t a1, unint64_t a2, int a3, char *__s)
{
  if (a1 >= a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = a2 - a1;
  while (1)
  {
    v9 = *(a1 + v7);
    if (v9 == a3 || (v9 - 127) < 0xFFFFFFA1 || __s && strchr(__s, v9))
    {
      break;
    }

    if (v8 == ++v7)
    {
      return v8;
    }
  }

  return v7;
}