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
  memset(__dst, 0, sizeof(__dst));
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
  memset(__srca, 0, 256);
  memset(__dst, 0, sizeof(__dst));
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
          v66 = LOBYTE(__dst[0]);
          v67 = __dst;
          if (LOBYTE(__dst[0]))
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
          v41 = LOBYTE(__dst[0]);
          v42 = __dst;
          if (LOBYTE(__dst[0]))
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

char *DNSMessageCollapse(unint64_t a1, unint64_t a2, void *a3, char **a4)
{
  v73 = *MEMORY[0x29EDCA608];
  v54 = 0;
  v53 = 0;
  memset(__src, 0, 256);
  memset(__dst, 0, sizeof(__dst));
  if (a2 < 0xC)
  {
LABEL_68:
    v20 = 0;
    v36 = 0;
    DomainName = -6743;
  }

  else if (__rev16(*(a1 + 4)) == 1)
  {
    v54 = (a1 + 12);
    DomainName = DNSMessageExtractQuestion(a1, a2, (a1 + 12), __src, &v53 + 1, &v53, &v54);
    if (DomainName)
    {
LABEL_57:
      v20 = 0;
      v36 = 0;
      goto LABEL_61;
    }

    if (v53 == 1)
    {
      v9 = __src[0];
      v39 = a3;
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
      v42 = v54;
      __memcpy_chk();
      v14 = __rev16(*(a1 + 6));
      if (v14)
      {
        v15 = 0;
        v44 = -1;
LABEL_9:
        v16 = 0;
        v54 = v42;
        v17 = 1;
        while (1)
        {
          v52 = 0;
          LODWORD(v50) = 0;
          LOWORD(v49) = 0;
          v51 = 0;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          DomainName = _DNSMessageExtractRecordEx(a1, a2, v54, &v55, &v49, &v51, &v50, &v52, 0, 0, 0, 0, 0, &v54);
          if (DomainName)
          {
            goto LABEL_57;
          }

          if (v49 == 5 && v51 == v53 && DomainNameEqual(&v55, __dst))
          {
            DomainName = DNSMessageExtractDomainName(a1, a2, v52, __dst, 0);
            if (DomainName)
            {
              goto LABEL_57;
            }

            v17 = 0;
            v18 = v44;
            if (v44 >= v50)
            {
              v18 = v50;
            }

            v44 = v18;
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

      v44 = -1;
LABEL_25:
      v40 = a4;
      v47 = 0;
      v19 = 0;
      v20 = 0;
      size = v13 + 17;
      v21 = 1;
      a4 = &v54;
      while (1)
      {
        v43 = v21;
        v54 = v42;
        if (v14)
        {
          break;
        }

        v46 = 0;
        if (v20)
        {
          goto LABEL_52;
        }

LABEL_45:
        if (!size || (v29 = malloc_type_calloc(1uLL, size, 0x56016498uLL)) == 0)
        {
          __break(1u);
          goto LABEL_68;
        }

        v20 = v29;
        if (size < 0xC)
        {
          goto LABEL_66;
        }

        v30 = *a1;
        *(v29 + 2) = *(a1 + 4);
        *v29 = v30;
        *(v29 + 6) = 0;
        *(v29 + 5) = 0;
        if (size - 12 < __n)
        {
          goto LABEL_66;
        }

        v31 = &v29[size];
        v32 = v29 + 12;
        memcpy(v29 + 12, __src, __n);
        v33 = &v32[__n];
        v47 = v31;
        if ((v31 - &v32[__n]) < 4)
        {
          goto LABEL_66;
        }

        v21 = 0;
        v34 = BYTE2(v53);
        v35 = v53;
        *v33 = HIBYTE(v53);
        v33[1] = v34;
        v33[2] = HIBYTE(v35);
        v33[3] = v35;
        v19 = v33 + 4;
        *(v20 + 2) = 256;
        if ((v43 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v46 = 0;
      v22 = v14;
      do
      {
        v52 = 0;
        v50 = 0;
        v49 = 0;
        v51 = 0;
        v48 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v23 = v54;
        DomainName = _DNSMessageExtractRecordEx(a1, a2, v54, &v55, &v51, &v48, &v49, 0, 0, 0, 0, 0, &v50, &v54);
        if (DomainName)
        {
          goto LABEL_59;
        }

        if (v51 == HIWORD(v53) && v48 == v53 && DomainNameEqual(&v55, __dst))
        {
          if (v20)
          {
            if (v47 - v19 < 2)
            {
              goto LABEL_58;
            }

            *v19 = 3264;
            if ((v47 - v19 - 2) < 0xA)
            {
              goto LABEL_58;
            }

            v24 = v49;
            if (v49 >= v44)
            {
              v24 = v44;
            }

            v49 = v24;
            v25 = v51;
            v26 = v48;
            v27 = v50;
            v19[2] = HIBYTE(v51);
            v19[3] = v25;
            v19[4] = HIBYTE(v26);
            v19[5] = v26;
            v19[6] = HIBYTE(v24);
            v19[7] = BYTE2(v24);
            v19[8] = BYTE1(v24);
            v19[9] = v24;
            v19[10] = HIBYTE(v27);
            v19[11] = v27;
            v28 = v19 + 12;
            if (v47 - v28 < v50)
            {
LABEL_58:
              DomainName = -6762;
LABEL_59:
              v36 = 0;
              goto LABEL_60;
            }

            DomainName = _DNSMessageExtractRecordEx(a1, a2, v23, 0, 0, 0, 0, 0, 0, v28, v50, &v52, 0, 0);
            if (DomainName)
            {
              goto LABEL_59;
            }

            v19 = &v52[v28];
            ++v46;
          }

          else
          {
            size += v50 + 12;
          }
        }

        --v22;
      }

      while (v22);
      if (!v20)
      {
        goto LABEL_45;
      }

LABEL_52:
      if (size >= 0xC)
      {
        *(v20 + 3) = bswap32(v46) >> 16;
LABEL_54:
        v36 = v20;
        a4 = v40;
        v20 = 0;
        DomainName = 0;
        if (v39)
        {
          *v39 = v19 - v36;
        }

        goto LABEL_61;
      }

LABEL_66:
      v36 = 0;
      DomainName = -6762;
LABEL_60:
      a4 = v40;
    }

    else
    {
      v20 = 0;
      v36 = 0;
      DomainName = -6756;
    }
  }

  else
  {
    v20 = 0;
    v36 = 0;
    DomainName = -6764;
  }

LABEL_61:
  if (a4)
  {
    *a4 = DomainName;
  }

  if (v20)
  {
    free(v20);
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
  memset(v129, 0, sizeof(v129));
  bzero(v128, 0x3F1uLL);
  memset(v127, 0, 256);
  memset(v126, 0, sizeof(v126));
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_662;
  }

  _GetCUSymAddr_DataBuffer_Init_sAddr(v118, v129, 512, -1);
  if (a2 >= 0xC)
  {
    v102 = a4;
    v8 = (*(a1 + 2) >> 3) & 0xF;
    v9 = *(a1 + 5);
    v105 = *(a1 + 4);
    v10 = v9 | (v105 << 8);
    v97 = *(a1 + 6);
    v98 = *(a1 + 7);
    v104 = _byteswap_ushort(a1[3]);
    v103 = __rev16(a1[4]);
    v99 = __rev16(a1[5]);
    v11 = "";
    v111 = a2;
    v112 = a1;
    if ((a3 & 0x20) == 0)
    {
      v113 = *(a1 + 5);
      v12 = *(a1 + 2) << 8;
      v13 = a1;
      v14 = *(a1 + 3) | (*(a1 + 2) << 8);
      v15 = __rev16(*v13);
      if ((a3 & 4) != 0)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        v17 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
        v20 = 81;
        if (v12 < 0)
        {
          v20 = 82;
        }

        v94 = v14;
        v95 = v20;
        v93 = v15;
        v19 = "id: 0x%04X (%u), flags: 0x%04X (%c/";
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "ID:               0x%04X (%u)\n", v15, v15);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        v17 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
        v18 = 81;
        if (v12 < 0)
        {
          v18 = 82;
        }

        v93 = v18;
        v19 = "Flags:            0x%04X %c/";
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = v17(v118, v19);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      v100 = v8;
      v96 = v10;
      if (v8 > 6 || v8 == 3)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

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
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
      }

      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      v22 = v14 & 0xF;
      v23 = &word_29F280C98;
      v24 = 7;
      do
      {
        if ((*v23 & v14) != 0)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", %s", *(v23 - 1));
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }
        }

        v23 += 8;
        --v24;
      }

      while (v24);
      v25 = DNSRCodeToString(v14 & 0xF);
      if (v25)
      {
        v26 = v25;
        a1 = v112;
        LODWORD(v8) = v100;
        v10 = v96;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        v9 = v113;
        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", %s", v26);
        a2 = v111;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }
      }

      else
      {
        a1 = v112;
        LODWORD(v8) = v100;
        v10 = v96;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", RCODE%d", v22);
        v9 = v113;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
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
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ")");
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        if ((a3 & 0x40) != 0)
        {
          goto LABEL_646;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", counts: %u/%u/%u/%u", v10, v104, v103, v99);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        v11 = ", ";
        if ((a3 & 0x10) != 0)
        {
          goto LABEL_646;
        }

        goto LABEL_76;
      }

      if ((a3 & 0x40) != 0)
      {
        goto LABEL_646;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_662;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\n");
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_662;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Question count:   %u\n", v10);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_662;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Answer count:     %u\n", v104);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_662;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Authority count:  %u\n", v103);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_662;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Additional count: %u\n", v99);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      v11 = "";
    }

    if ((a3 & 0x10) != 0)
    {
      goto LABEL_646;
    }

LABEL_76:
    v109 = v11;
    v101 = v8;
    v114 = (a3 >> 3) & 1;
    v117 = (a1 + 6);
    v108 = a3;
    if (v10)
    {
      v27 = 0;
      v28 = 0;
      v106 = (v105 << 8) + v9;
      v29 = v127;
      while (1)
      {
        LOWORD(__src[0]) = 0;
        LOWORD(v130[0]) = 0;
        CUSymAddr_DataBuffer_AppendF_sAddr = DNSMessageExtractQuestion(v112, a2, v117, v29, __src, v130, &v117);
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
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v109);
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

            if (v114 && _NameIsPrivate(v128))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
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
                goto LABEL_662;
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
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v37);
            a3 = v108;
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

            a3 = v108;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
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
              goto LABEL_662;
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
            a2 = v111;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            v92 = v40;
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s?");
          }

          else
          {
            a2 = v111;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            v92 = LOWORD(__src[0]);
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u?");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v28 = v29;
          v109 = ", ";
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
              goto LABEL_662;
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

          if (v114 && _NameIsPrivate(v128))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
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
              goto LABEL_662;
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
            goto LABEL_662;
          }

          v33 = "QM";
          if (v31)
          {
            v33 = "QU";
          }

          if ((a3 & 1) == 0)
          {
            v33 = "";
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

          a2 = v111;
          if (v35)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
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
              goto LABEL_662;
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
              goto LABEL_662;
            }

            v92 = v42;
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
              goto LABEL_662;
            }

            v92 = LOWORD(__src[0]);
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
        if (v106 == v27)
        {
          goto LABEL_202;
        }
      }

LABEL_654:
      v80 = CUSymAddr_DataBuffer_AppendF_sAddr;
      goto LABEL_655;
    }

    v28 = 0;
    v32 = v127;
LABEL_202:
    if (v99 + v103 + v104)
    {
      for (i = 0; i < v99 + v103 + v104; ++i)
      {
        __src[0] = 0;
        v130[0] = 0;
        LODWORD(v125) = 0;
        LOWORD(v124) = 0;
        LOWORD(v123) = 0;
        CUSymAddr_DataBuffer_AppendF_sAddr = _DNSMessageExtractRecordEx(v112, a2, v117, v32, &v124, &v123, &v125, __src, v130, 0, 0, 0, 0, &v117);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v32, 0, v128, 0);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
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
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v109);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
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
              goto LABEL_654;
            }

            if (v114 && _NameIsPrivate(v128))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
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
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s ");
            }

            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
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
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "CF ");
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_654;
              }
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            a2 = v111;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "OPT %u", v123);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
            }

            if (v125)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
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
                goto LABEL_662;
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
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%u", v125);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
            }

            if (v45)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CF");
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_654;
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
              a2 = v111;
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v48);
              a3 = v108;
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_654;
              }
            }

            else
            {
              a2 = v111;
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              a3 = v108;
              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v123);
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_654;
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
                goto LABEL_662;
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
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
            }
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          v28 = v32;
          v109 = ", ";
          if ((a3 & 2) == 0)
          {
            goto LABEL_367;
          }

          goto LABEL_368;
        }

        if (!v104 || i)
        {
          if (v103 && ((v97 << 8) + v98) == i)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\nAUTHORITY SECTION\n");
          }

          else
          {
            if (v103 + v104 != i)
            {
              goto LABEL_285;
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
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
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\nANSWER SECTION\n");
        }

        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

LABEL_285:
        if (v124 == 41)
        {
          if (v114 && _NameIsPrivate(v128))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
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
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          v49 = "";
          if (v45)
          {
            v49 = " CF";
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s OPT %u", v49, v123);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          a2 = v111;
          if (v125)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
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
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0");
          }
        }

        else
        {
          if (v114)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
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
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%-42s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          v50 = "";
          if (v45)
          {
            v50 = "CF";
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %6u %2s", v125, v50);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
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

          a2 = v111;
          if (v52)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v52);
            a3 = v108;
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
            }
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            a3 = v108;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v123);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
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
              goto LABEL_662;
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
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
          }
        }

        v46 = v32;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        if ((a3 & 2) == 0)
        {
LABEL_367:
          DNSRecordDataToStringEx(__src[0], v130[0], v124, v112, a2, v114, &v116);
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
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v116);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          if (v116)
          {
            free(v116);
            v116 = 0;
          }
        }

        else
        {
          if (v114)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            v92 = v130[0];
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
              goto LABEL_662;
            }

            v93 = v130[0];
            v94 = v130[0];
            v92 = __src[0];
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %#H");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }
        }

        if ((a3 & 4) != 0)
        {
          if (v124 == 5)
          {
            DomainName = DNSMessageExtractDomainName(v112, a2, __src[0], v46, 0);
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
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\n");
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }
        }

        v32 = v46;
      }
    }

    if (v101 != 6)
    {
      goto LABEL_646;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "[");
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      v55 = v112 + a2;
      v56 = v117;
      if (v117 < v112 + a2)
      {
        if ((a3 >> 2))
        {
          v57 = "";
        }

        else
        {
          v57 = "\n\t";
        }

        if ((a3 >> 2))
        {
          v58 = ", ";
        }

        else
        {
          v58 = ",\n\t";
        }

        v107 = v58;
        v110 = v112 + a2;
        do
        {
          if (v56 < v112)
          {
            v80 = 4294960586;
            goto LABEL_655;
          }

          if (v55 - v56 < 4 || (v59 = __rev16(*(v56 + 1)), v60 = v56 + 4, (v55 - (v56 + 4)) < v59))
          {
LABEL_663:
            v80 = 4294960546;
            goto LABEL_655;
          }

          v61 = *v56;
          v62 = &v60[v59];
          v117 = &v60[v59];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v57);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          v63 = __rev16(v61);
          if (v63 > 63)
          {
            a3 = v108;
            if (v63 <= 65)
            {
              if (v63 == 64)
              {
                v64 = "SUBSCRIBE";
              }

              else
              {
                v64 = "PUSH";
              }

              goto LABEL_443;
            }

            if (v63 == 66)
            {
              v64 = "UNSUBSCRIBE";
              goto LABEL_443;
            }

            if (v63 == 67)
            {
              v64 = "RECONFIRM";
              goto LABEL_443;
            }
          }

          else
          {
            a3 = v108;
            if (v63 > 1)
            {
              if (v63 == 2)
              {
                v64 = "Retry Delay";
                goto LABEL_443;
              }

              if (v63 == 3)
              {
                v64 = "Encryption Padding";
                goto LABEL_443;
              }
            }

            else
            {
              v64 = "Reserved";
              if (!v63)
              {
                goto LABEL_443;
              }

              if (v63 == 1)
              {
                v64 = "KeepAlive";
LABEL_443:
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_662;
                }

                v92 = v64;
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
            goto LABEL_662;
          }

          v92 = v63;
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "DSO-TYPE%u: ");
LABEL_447:
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          v124 = 0;
          v125 = (v56 + 4);
          bzero(__src, 0x3F1uLL);
          if (v63 > 65)
          {
            if (v63 == 66)
            {
              if (v59 != 2)
              {
                goto LABEL_665;
              }

              v73 = *(v56 + 2);
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%u", __rev16(v73));
                goto LABEL_582;
              }

              goto LABEL_633;
            }

            if (v63 != 67)
            {
              goto LABEL_524;
            }

            v65 = DNSMessageExtractDomainNameString(v112, v111, v56 + 4, __src, &v125);
            if (v65)
            {
              goto LABEL_582;
            }

            v70 = v125;
            if (v62 - v125 < 4)
            {
LABEL_634:
              v80 = 4294960546;
              goto LABEL_628;
            }

            v125 += 4;
            if (v114 && _NameIsPrivate(__src))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_633;
              }

              v92 = __src;
              v71 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_633;
              }

              v92 = __src;
              v71 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
            }

            if (v71)
            {
              goto LABEL_638;
            }

            v74 = __rev16(*(v70 + 1));
            v75 = "ANY";
            if (v74 != 255)
            {
              v75 = 0;
            }

            if (v74 == 1)
            {
              v76 = "IN";
            }

            else
            {
              v76 = v75;
            }

            if (v76)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              a3 = v108;
              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v76);
                if (v65)
                {
                  goto LABEL_582;
                }

                goto LABEL_587;
              }

LABEL_633:
              v80 = 4294960561;
              goto LABEL_628;
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v74);
              a3 = v108;
              if (v65)
              {
                goto LABEL_582;
              }

LABEL_587:
              v81 = __rev16(*v70);
              v82 = DNSRecordTypeValueToString(v81);
              if (v82)
              {
                v83 = v82;
                v84 = v111;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_633;
                }

                v92 = v83;
                v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
              }

              else
              {
                v84 = v111;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_633;
                }

                v92 = v81;
                v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
              }

              if (v65)
              {
                goto LABEL_582;
              }

              v88 = v125;
              v89 = v62 - v125;
              DNSRecordDataToStringEx(v125, v62 - v125, v81, v112, v84, v114, &v124);
              if (v124)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v124);
                  if (v65)
                  {
                    goto LABEL_582;
                  }

                  if (v124)
                  {
                    free(v124);
                    v124 = 0;
                  }

LABEL_627:
                  v80 = 0;
                  goto LABEL_628;
                }
              }

              else if (v114)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v92 = v89;
                  v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " [%zu B]");
                  goto LABEL_626;
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
                  v93 = v89;
                  v94 = v89;
                  v92 = v88;
                  v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " '%H'");
                  goto LABEL_626;
                }
              }

              goto LABEL_633;
            }
          }

          else
          {
            if (v63 != 64)
            {
              if (v63 == 65)
              {
                if (v62 <= v60)
                {
                  goto LABEL_663;
                }

                while (1)
                {
                  v122 = 0;
                  v123 = 0;
                  v120 = 0;
                  v121 = 0;
                  memset(v130, 0, sizeof(v130));
                  v65 = _DNSMessageExtractRecordEx(v112, v111, v60, v130, &v120 + 1, &v120, &v121, &v123, &v122, 0, 0, 0, 0, &v125);
                  if (v65)
                  {
                    goto LABEL_582;
                  }

                  if (v125 > v62)
                  {
                    goto LABEL_634;
                  }

                  v65 = DomainNameToString(v130, 0, __src, 0);
                  if (v65)
                  {
                    goto LABEL_582;
                  }

                  if (v114 && _NameIsPrivate(__src))
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v92 = __src;
                    v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v92 = __src;
                    v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
                  }

                  if (v65)
                  {
                    goto LABEL_582;
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_633;
                  }

                  v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0x%08X", v121);
                  if (v65)
                  {
                    goto LABEL_582;
                  }

                  v66 = "ANY";
                  if (v120 != 255)
                  {
                    v66 = 0;
                  }

                  if (v120 == 1)
                  {
                    v67 = "IN";
                  }

                  else
                  {
                    v67 = v66;
                  }

                  if (v67)
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v92 = v67;
                    v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v92 = v120;
                    v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u");
                  }

                  if (v65)
                  {
                    goto LABEL_582;
                  }

                  v68 = DNSRecordTypeValueToString(HIWORD(v120));
                  if (v68)
                  {
                    v69 = v68;
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v92 = v69;
                    v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v92 = HIWORD(v120);
                    v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
                  }

                  if (v65)
                  {
                    goto LABEL_582;
                  }

                  DNSRecordDataToStringEx(v123, v122, HIWORD(v120), v112, v111, v114, &v124);
                  if (v124)
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v124);
                    if (v65)
                    {
                      goto LABEL_582;
                    }

                    if (v124)
                    {
                      free(v124);
                      v124 = 0;
                    }
                  }

                  else
                  {
                    if (v114)
                    {
                      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                      {
                        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                      }

                      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                      {
                        goto LABEL_633;
                      }

                      v92 = v122;
                      v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " [%zu B]");
                    }

                    else
                    {
                      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                      {
                        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                      }

                      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                      {
                        goto LABEL_633;
                      }

                      v93 = v122;
                      v94 = v122;
                      v92 = v123;
                      v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %#H");
                    }

                    if (v65)
                    {
                      goto LABEL_582;
                    }
                  }

                  v60 = v125;
                  if (v125 >= v62)
                  {
                    goto LABEL_627;
                  }
                }
              }

LABEL_524:
              if (v114)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v92 = v59;
                  v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "[%u B]");
                  goto LABEL_582;
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
                  v93 = v59;
                  v94 = v59;
                  v92 = (v56 + 4);
                  v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "'%H'");
LABEL_582:
                  v80 = v65;
                  goto LABEL_628;
                }
              }

              goto LABEL_633;
            }

            v65 = DNSMessageExtractDomainNameString(v112, v111, v56 + 4, __src, &v125);
            if (v65)
            {
              goto LABEL_582;
            }

            v72 = v125;
            if (v62 - v125 != 4)
            {
              v80 = 4294960553;
              goto LABEL_628;
            }

            if (v114 && _NameIsPrivate(__src))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_633;
              }

              v92 = __src;
              v71 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_633;
              }

              v92 = __src;
              v71 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
            }

            if (v71)
            {
LABEL_638:
              v80 = v71;
              goto LABEL_637;
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

              a3 = v108;
              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_633;
              }

              v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v79);
              if (v65)
              {
                goto LABEL_582;
              }

LABEL_596:
              v85 = __rev16(*v72);
              v86 = DNSRecordTypeValueToString(v85);
              if (v86)
              {
                v87 = v86;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v92 = v87;
                  v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                  goto LABEL_626;
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
                  v92 = v85;
                  v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
LABEL_626:
                  if (v65)
                  {
                    goto LABEL_582;
                  }

                  goto LABEL_627;
                }
              }

              goto LABEL_633;
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              v65 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v77);
              a3 = v108;
              if (v65)
              {
                goto LABEL_582;
              }

              goto LABEL_596;
            }
          }

          v80 = 4294960561;
LABEL_637:
          a3 = v108;
LABEL_628:
          if (v124)
          {
            free(v124);
          }

          if (v80)
          {
            goto LABEL_655;
          }

          v56 = v117;
          v57 = v107;
          v55 = v110;
        }

        while (v117 < v110);
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        if ((a3 >> 2))
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "]", v92, v93, v94, v95);
        }

        else
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\n]", v92, v93, v94, v95);
        }

        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

LABEL_646:
        if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
        }

        if (_GetCUSymAddr_DataBuffer_Append_sAddr)
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_Append_sAddr(v118, "", 1);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
          }

          if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
          {
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_Detach_sAddr(v118, v102, &v115);
            goto LABEL_654;
          }
        }
      }
    }

LABEL_662:
    v80 = 4294960561;
    goto LABEL_655;
  }

LABEL_665:
  v80 = 4294960553;
LABEL_655:
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

  v90 = *MEMORY[0x29EDCA608];
  return v80;
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

  v103 = 0;
  *v104 = 0;
  memset(v102, 0, sizeof(v102));
  v101 = 0;
  memset(v107, 0, sizeof(v107));
  bzero(v106, 0x3F1uLL);
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_464;
  }

  v96 = a7;
  v13 = &a1[a2];
  _GetCUSymAddr_DataBuffer_Init_sAddr(v102, v107, 256, -1);
  CUSymAddr_DataBuffer_Append_sAddr = 4294960582;
  if (a3 <= 32)
  {
    if (a3 <= 12)
    {
      if (a3 > 4)
      {
        if (a3 == 5)
        {
          goto LABEL_84;
        }

        if (a3 != 6)
        {
          if (a3 != 12)
          {
            goto LABEL_442;
          }

LABEL_84:
          if (a4)
          {
            DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v106, 0);
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }

          else
          {
            DomainNameString = DomainNameToString(a1, &a1[a2], v106, 0);
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }

LABEL_384:
          v83 = 0;
          goto LABEL_432;
        }

        if (a4)
        {
          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v106, v104);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          if (*v104 >= v13)
          {
            goto LABEL_467;
          }

          DomainNameString = _AppendDomainNameStringEx(v102, 0, a6, v106);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, *v104, v106, v104);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        else
        {
          DomainNameString = DomainNameToString(a1, &a1[a2], v106, v104);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = _AppendDomainNameStringEx(v102, 0, a6, v106);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = DomainNameToString(*v104, &a1[a2], v106, v104);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        DomainNameString = _AppendDomainNameStringEx(v102, " ", a6, v106);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v82 = *v104;
        if (v13 - *v104 == 20)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          v94 = bswap32(v82[3]);
          v95 = bswap32(v82[4]);
          v92 = bswap32(v82[1]);
          v93 = bswap32(v82[2]);
          v90 = bswap32(*v82);
          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " %u %u %u %u %u");
          goto LABEL_377;
        }

LABEL_467:
        CUSymAddr_DataBuffer_Append_sAddr = 4294960554;
        goto LABEL_442;
      }

      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_442;
        }

        goto LABEL_84;
      }

      if (a2 != 4)
      {
        goto LABEL_467;
      }

      DomainNameString = _AppendIPv4Address(v102, 0, a1, a6);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

LABEL_433:
      if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
      }

      if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_Append_sAddr(v102, "", 1);
      if (!DomainNameString)
      {
        if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
        }

        if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
        {
          DomainNameString = _GetCUSymAddr_DataBuffer_Detach_sAddr(v102, v96, &v101);
          goto LABEL_441;
        }

LABEL_464:
        CUSymAddr_DataBuffer_Append_sAddr = 4294960561;
        goto LABEL_442;
      }

      goto LABEL_441;
    }

    if (a3 > 15)
    {
      if (a3 != 16)
      {
        if (a3 != 25)
        {
          if (a3 != 28)
          {
            goto LABEL_442;
          }

          if (a2 != 16)
          {
            goto LABEL_467;
          }

          DomainNameString = _AppendIPv6Address(v102, 0, a1, a6);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          goto LABEL_433;
        }

LABEL_227:
        if (a2 < 5)
        {
          goto LABEL_467;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%u %u %u", __rev16(*a1), a1[2], a1[3]);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        *v104 = a1 + 4;
        v108[0] = 0;
        if (_GetCUSymAddr_Base64EncodeCopyEx_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253);
        }

        if (!_GetCUSymAddr_Base64EncodeCopyEx_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_Base64EncodeCopyEx_sAddr(*v104, v13 - *v104, 0, v108, 0);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_421;
        }

        goto LABEL_468;
      }

LABEL_240:
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
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "[%zu B]");
        }

        else if (a2 == 1)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%#H");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%#{txt}");
        }

LABEL_377:
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        goto LABEL_433;
      }

      goto LABEL_467;
    }

    if (a3 == 13)
    {
      goto LABEL_240;
    }

    if (a3 != 15)
    {
      goto LABEL_442;
    }

    if (a2 < 3)
    {
      goto LABEL_467;
    }

    v41 = *a1;
    v40 = (a1 + 2);
    v39 = v41;
    if (a4)
    {
      DomainNameString = DNSMessageExtractDomainNameString(a4, a5, v40, v106, 0);
      if (DomainNameString)
      {
        goto LABEL_441;
      }
    }

    else
    {
      DomainNameString = DomainNameToString(v40, v13, v106, 0);
      if (DomainNameString)
      {
        goto LABEL_441;
      }
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%u", __rev16(v39));
    if (!DomainNameString)
    {
LABEL_431:
      v83 = " ";
LABEL_432:
      DomainNameString = _AppendDomainNameStringEx(v102, v83, a6, v106);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      goto LABEL_433;
    }

LABEL_441:
    CUSymAddr_DataBuffer_Append_sAddr = DomainNameString;
    goto LABEL_442;
  }

  if (a3 > 46)
  {
    if (a3 <= 63)
    {
      if (a3 == 47)
      {
        if (a4)
        {
          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v106, v104);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        else
        {
          DomainNameString = DomainNameToString(a1, &a1[a2], v106, v104);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        if (*v104 < v13)
        {
          DomainNameString = _AppendDomainNameStringEx(v102, 0, a6, v106);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          v21 = *v104;
LABEL_371:
          DomainNameString = _DNSRecordDataAppendTypeBitMap(v102, v21, v13);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          goto LABEL_433;
        }

        goto LABEL_467;
      }

      if (a3 == 48)
      {
        goto LABEL_227;
      }

      if (a3 != 50)
      {
        goto LABEL_442;
      }

      if (a2 < 5)
      {
        goto LABEL_467;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%u %u %u", *a1, a1[1], __rev16(*(a1 + 1)));
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      *v104 = a1 + 4;
      if ((a2 - 4) < 1)
      {
        goto LABEL_467;
      }

      *v104 = a1 + 5;
      v16 = a1[4];
      if (a2 - 5 < v16)
      {
        goto LABEL_467;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " %.4H", *v104, v16, v16);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      v17 = (*v104 + v16);
      *v104 = v17;
      if ((v13 - v17) < 1)
      {
        goto LABEL_467;
      }

      v18 = v17 + 1;
      *v104 = v17 + 1;
      v19 = *v17;
      if (v13 - (v17 + 1) < v19)
      {
        goto LABEL_467;
      }

      if (*v17)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " ");
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v18 = *v104;
      }

      v20 = &v18[v19];
      while (1)
      {
        v21 = *v104;
        v22 = &v20[-*v104];
        if (v20 == *v104)
        {
          goto LABEL_371;
        }

        v108[0] = 0;
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

          v26 = *(*v104 + 2);
          v24 = (v26 << 16) | (*(*v104 + 1) << 24);
          v25 = v24 | (**v104 << 32);
          *v104 += 3;
          BYTE4(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[2 * (v26 & 0xF)];
          v23 = 5;
        }

        else
        {
          if (v22 == 1)
          {
            v28 = 0;
            v25 = **v104 << 32;
            ++*v104;
            goto LABEL_74;
          }

          if (v22 != 2)
          {
LABEL_61:
            v27 = *(*v104 + 4);
LABEL_64:
            v29 = *(*v104 + 3);
            v30 = v27 | (v29 << 8);
            v24 = (*(*v104 + 1) << 24) | (*(*v104 + 2) << 16) | v30;
            v25 = v24 | (**v104 << 32);
            if (v22 >= 5)
            {
              v31 = 5;
            }

            else
            {
              v31 = &v20[-*v104];
            }

            *v104 += v31;
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
          v24 = *(*v104 + 1) << 24;
          v25 = v24 | (**v104 << 32);
          *v104 += 2;
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
          goto LABEL_464;
        }

        if (v28)
        {
          v33 = v28;
        }

        else
        {
          v33 = 2;
        }

        CUSymAddr_DataBuffer_Append_sAddr = _GetCUSymAddr_DataBuffer_Append_sAddr(v102, v108, v33);
        if (CUSymAddr_DataBuffer_Append_sAddr)
        {
          goto LABEL_442;
        }
      }
    }

    if ((a3 - 64) >= 2)
    {
      goto LABEL_442;
    }

    if (v13 < a1)
    {
      goto LABEL_463;
    }

    if (a2 < 2)
    {
      goto LABEL_467;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%u", __rev16(*a1));
    if (DomainNameString)
    {
      goto LABEL_441;
    }

    bzero(v108, 0x3F1uLL);
    *v105 = a1 + 2;
    DomainNameString = DomainNameToString(a1 + 2, v13, v108, v105);
    if (DomainNameString)
    {
      goto LABEL_441;
    }

    DomainNameString = _AppendDomainNameStringEx(v102, " ", a6, v108);
    if (DomainNameString)
    {
      goto LABEL_441;
    }

    while (1)
    {
      v42 = *v105;
      if (*v105 >= v13)
      {
        goto LABEL_433;
      }

      if (v13 - *v105 < 4)
      {
        goto LABEL_462;
      }

      v43 = __rev16(**v105);
      v44 = *(*v105 + 2);
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
          goto LABEL_464;
        }

        v89 = v46;
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " %s=");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        v89 = v43;
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " key%u=");
      }

      if (DomainNameString)
      {
        goto LABEL_441;
      }

      v47 = __rev16(v44);
      v48 = v42 + 4;
      *v105 = v42 + 4;
      if (v13 - (v42 + 4) < v47)
      {
LABEL_462:
        CUSymAddr_DataBuffer_Append_sAddr = 4294960546;
        goto LABEL_442;
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
                goto LABEL_464;
              }

              v89 = *v105;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%.4H");
LABEL_218:
              if (DomainNameString)
              {
                goto LABEL_441;
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
                  goto LABEL_464;
                }

                v89 = v47;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "<%u redacted bytes>");
                goto LABEL_218;
              }

              DomainNameString = _AppendEscapedASCIIString(v102, v42 + 4, &v48[v47], "");
              if (DomainNameString)
              {
                goto LABEL_441;
              }
            }

            *v105 += v47;
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
                  goto LABEL_464;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%s", v68);
                if (DomainNameString)
                {
                  goto LABEL_441;
                }

                v48 = *v105;
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
                  goto LABEL_464;
                }

                v89 = v70;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "sla%u");
              }

              else
              {
                v71 = off_29F280E58[*v48];
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_464;
                }

                v89 = v71;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%s");
              }

              if (DomainNameString)
              {
                goto LABEL_441;
              }

              v69 = 0;
              v48 = (*v105 + 1);
              *v105 = v48;
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
            goto LABEL_467;
          }

          v55 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v56 = "";
            v57 = (v42 + 4);
            while (1)
            {
              CUSymAddr_DataBuffer_Append_sAddr = _AppendIPv6Address(v102, v56, v57, a6);
              if (CUSymAddr_DataBuffer_Append_sAddr)
              {
                goto LABEL_442;
              }

              v57 = *v105 + 16;
              *v105 = v57;
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
            goto LABEL_467;
          }

          v66 = *(v42 + 2);
          *v105 = &v48[v47];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%u", __rev16(v66));
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        else
        {
          if ((v47 & 3) != 0)
          {
            goto LABEL_467;
          }

          v58 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v59 = "";
            v60 = (v42 + 4);
            while (1)
            {
              CUSymAddr_DataBuffer_Append_sAddr = _AppendIPv4Address(v102, v59, v60, a6);
              if (CUSymAddr_DataBuffer_Append_sAddr)
              {
                goto LABEL_442;
              }

              v60 = (*v105 + 4);
              *v105 = v60;
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
        while (*v105 < v50)
        {
          v53 = (*v105 + 1);
          v52 = **v105;
          if (*v105 + 1 > v50)
          {
            goto LABEL_463;
          }

          if (v50 - v53 < v52)
          {
            goto LABEL_462;
          }

          v54 = &v53[v52];
          *v105 = &v53[v52];
          if ((v51 & 1) == 0)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_464;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%s", v49);
            if (DomainNameString)
            {
              goto LABEL_441;
            }

            v54 = *v105;
          }

          DomainNameString = _AppendEscapedASCIIString(v102, v53, v54, ",");
          v51 = 0;
          v49 = ",";
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }
      }

      else
      {
        if (v47)
        {
          goto LABEL_467;
        }

        v61 = &v48[v47];
        if (v48 < v61)
        {
          v62 = 0;
          v63 = 1;
          do
          {
            v64 = __rev16(*v48);
            *v105 = v48 + 2;
            v65 = _DNSSVCBKeyToString(v64);
            if ((v63 & 1) == 0)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%s", v62);
              if (DomainNameString)
              {
                goto LABEL_441;
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
                goto LABEL_464;
              }

              v89 = v65;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              v89 = v64;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "key%u");
            }

            if (DomainNameString)
            {
              goto LABEL_441;
            }

            v63 = 0;
            v48 = *v105;
            v62 = ",";
          }

          while (*v105 < v61);
        }
      }

LABEL_220:
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "", v89);
      if (DomainNameString)
      {
        goto LABEL_441;
      }
    }
  }

  if (a3 <= 40)
  {
    if (a3 == 33)
    {
      if (a2 < 7)
      {
        goto LABEL_467;
      }

      if (a4)
      {
        DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1 + 6, v106, 0);
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      else
      {
        DomainNameString = DomainNameToString(a1 + 6, &a1[a2], v106, 0);
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%u %u %u ", __rev16(*a1), __rev16(*(a1 + 1)), __rev16(*(a1 + 2)));
      if (!DomainNameString)
      {
        goto LABEL_384;
      }

      goto LABEL_441;
    }

    if (a3 != 35)
    {
      goto LABEL_442;
    }

    v34 = 1;
    *v104 = a1;
    while (1)
    {
      v35 = v34;
      if (*v104 > v13)
      {
        goto LABEL_463;
      }

      if (v13 - *v104 < 2)
      {
        goto LABEL_462;
      }

      v36 = **v104;
      *v104 += 2;
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      v37 = __rev16(v36);
      if (v35)
      {
        v38 = "";
      }

      else
      {
        v38 = " ";
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%s%u", v38, v37);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      v34 = 0;
      if ((v35 & 1) == 0)
      {
        v86 = 3;
        while (*v104 <= v13)
        {
          if (v13 == *v104)
          {
            goto LABEL_462;
          }

          v88 = (*v104 + 1);
          v87 = **v104;
          if (*v104 + 1 > v13)
          {
            break;
          }

          if (v13 - v88 < v87)
          {
            goto LABEL_462;
          }

          *v104 = &v88[v87];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " ");
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = _AppendEscapedASCIIString(v102, v88, *v104, "");
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "");
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          if (!--v86)
          {
            DomainNameString = DomainNameToString(*v104, v13, v106, v104);
            if (DomainNameString)
            {
              goto LABEL_441;
            }

            goto LABEL_431;
          }
        }

        goto LABEL_463;
      }
    }
  }

  if (a3 == 41)
  {
    if (v13 >= a1)
    {
      v72 = "";
      while (1)
      {
        if (a1 >= v13)
        {
          goto LABEL_433;
        }

        if (v13 - a1 < 4)
        {
          goto LABEL_462;
        }

        v73 = a1 + 4;
        v74 = __rev16(*(a1 + 1));
        if (v13 - (a1 + 4) < v74)
        {
          goto LABEL_462;
        }

        v75 = *a1;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%s{", v72);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v76 = __rev16(v75);
        if (v76 == 12)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "Padding");
        }

        else if (v76 == 15)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "EDE");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "CODE%u");
        }

        if (DomainNameString)
        {
          goto LABEL_441;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, ", ");
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v77 = &v73[v74];
        if (v76 != 15 || !v74)
        {
          break;
        }

        if (v74 < 2)
        {
          goto LABEL_462;
        }

        v78 = *(a1 + 2);
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        v79 = __rev16(v78);
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "code: %u", v79);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v80 = (v77 - (a1 + 6));
        if (v80 | v79)
        {
          if (v79 <= 0x18)
          {
            v81 = off_29F280E70[v79];
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_464;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " (%s)", v81);
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }

          if (v80)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_464;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, ", extra-text: ");
            if (DomainNameString)
            {
              goto LABEL_441;
            }

            if (a6)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "«REDACTED»");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "'%.*s'");
            }

LABEL_333:
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "}");
        a1 = v77;
        v72 = ", ";
        if (DomainNameString)
        {
          goto LABEL_441;
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
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "[%u B]");
      }

      else if (v76 == 12 && v74 && !*v73 && !memcmp(a1 + 4, a1 + 5, v74 - 1))
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "<%u zero bytes>");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "'%H'");
      }

      goto LABEL_333;
    }

LABEL_463:
    CUSymAddr_DataBuffer_Append_sAddr = 4294960586;
    goto LABEL_442;
  }

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
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%u %u %u", __rev16(*a1), a1[2], a1[3]);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      if (a2 != 4)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " %.4H", a1 + 4, a2 - 4, a2 - 4);
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      goto LABEL_433;
    }

    goto LABEL_467;
  }

  if (a3 != 46)
  {
    goto LABEL_442;
  }

  v105[0] = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  if (a2 < 0x13)
  {
    goto LABEL_467;
  }

  if (DNSRecordTypeValueToString(__rev16(*a1)))
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "%s");
  }

  else
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    v91 = __rev16(*a1);
    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, "TYPE%u");
  }

  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " %u %u %u", a1[2], a1[3], bswap32(*(a1 + 1)));
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  v105[0] = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  if (_GetCUSymAddr_SecondsToYMD_HMS_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SecondsToYMD_HMS_sOnce, &__block_literal_global_257);
  }

  if (!_GetCUSymAddr_SecondsToYMD_HMS_sAddr)
  {
    goto LABEL_464;
  }

  _GetCUSymAddr_SecondsToYMD_HMS_sAddr(bswap32(*(a1 + 2)) + 0xE77934880, v105, &v100 + 4, &v100, &v99 + 4, &v99, &v98);
  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " %u%02u%02u%02u%02u%02u", v105[0], HIDWORD(v100), v100, HIDWORD(v99), v99, v98);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_SecondsToYMD_HMS_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SecondsToYMD_HMS_sOnce, &__block_literal_global_257);
  }

  if (!_GetCUSymAddr_SecondsToYMD_HMS_sAddr)
  {
    goto LABEL_464;
  }

  _GetCUSymAddr_SecondsToYMD_HMS_sAddr(bswap32(*(a1 + 3)) + 0xE77934880, v105, &v100 + 4, &v100, &v99 + 4, &v99, &v98);
  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " %u%02u%02u%02u%02u%02u", v105[0], HIDWORD(v100), v100, HIDWORD(v99), v99, v98);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " %u", __rev16(*(a1 + 8)));
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  *v104 = a1 + 18;
  DomainNameString = DomainNameToString(a1 + 18, v13, v106, v104);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  DomainNameString = _AppendDomainNameStringEx(v102, " ", a6, v106);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  v108[0] = 0;
  if (_GetCUSymAddr_Base64EncodeCopyEx_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253);
  }

  if (!_GetCUSymAddr_Base64EncodeCopyEx_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_Base64EncodeCopyEx_sAddr(*v104, v13 - *v104, 0, v108, 0);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
LABEL_421:
    CUSymAddr_DataBuffer_Append_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v102, " %s", v108[0]);
    goto LABEL_422;
  }

LABEL_468:
  CUSymAddr_DataBuffer_Append_sAddr = 4294960561;
LABEL_422:
  if (v108[0])
  {
    free(v108[0]);
  }

  if (!CUSymAddr_DataBuffer_Append_sAddr)
  {
    goto LABEL_433;
  }

LABEL_442:
  if (_GetCUSymAddr_DataBuffer_Free_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Free_sOnce, &__block_literal_global_243);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sAddr)
  {
    _GetCUSymAddr_DataBuffer_Free_sAddr(v102);
  }

  v84 = *MEMORY[0x29EDCA608];
  return CUSymAddr_DataBuffer_Append_sAddr;
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
  v19 = *MEMORY[0x29EDCA608];
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
          *__str = 0u;
          v18 = 0u;
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
    return off_29F280E70[a1];
  }
}

uint64_t _AppendIPAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v12 = *MEMORY[0x29EDCA608];
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

  v11 = 0;
  memset(v10, 0, sizeof(v10));
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
  v12 = *MEMORY[0x29EDCA608];
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

  v11 = 0;
  memset(v10, 0, sizeof(v10));
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

void *OSLogCopyFormattedString(const char *a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = 11;
  v6 = &off_2A2001DB8;
  do
  {
    if (!strcmp(a1, *(v6 - 1)))
    {
      v7 = (*v6)(v3);

      v4 = v7;
    }

    v6 += 2;
    --v5;
  }

  while (v5);

  return v4;
}

uint64_t MDNSOLCopyFormattedStringRegisterRecordResult(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 unsignedLongLongValue];
    if (v3 == -65792)
    {
      v4 = @"NAME CONFLICT";
    }

    else if (v3)
    {
      if (v3 == -65548)
      {
        v4 = @"DEREGISTERED";
      }

      else
      {
        v4 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<Unknown register record result: %d>", v3];
      }
    }

    else
    {
      v4 = @"REGISTERED";
    }
  }

  else
  {
    v4 = &stru_2A20020C0;
  }

  v5 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v4];

  return v5;
}

uint64_t MDNSOLCopyFormattedStringNetworkChangeEventFlag(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x29EDBA050]) initWithCapacity:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
    v4 = [v3 unsignedLongLongValue];
    [v2 appendFormat:@"0x%llX {", v4];
    v5 = "";
    v6 = &dword_29F280F40;
    v7 = 6;
    do
    {
      if ((v4 & *v6) != 0)
      {
        [v2 appendFormat:@"%s%s", v5, *(v6 - 1)];
        v5 = ", ";
      }

      v6 += 4;
      --v7;
    }

    while (v7);
    [v2 appendString:@"}"];
  }

  v8 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v2];

  return v8;
}

uint64_t MDNSOLCopyFormattedStringMDNSNameHashTypeBytes(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x29EDBA050]) initWithCapacity:0];
  if (!v2)
  {
    v12 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
    if ([v3 bytes])
    {
      v19 = v1;
      v4 = [v3 bytes];
      v5 = [v3 length];
      if (v5 >= 6)
      {
        v6 = v5 / 6;
        v7 = v4 + 2;
        v8 = "";
        do
        {
          v9 = bswap32(*(v7 - 2));
          v10 = __rev16(*(v7 + 2));
          v11 = DNSRecordTypeValueToString(v10);
          if (v11)
          {
            [v2 appendFormat:@"%s(%x %s)", v8, v9, v11];
          }

          else
          {
            [v2 appendFormat:@"%s(%x TYPE%u)", v8, v9, v10];
          }

          v7 += 6;
          v8 = " ";
          --v6;
        }

        while (v6);
      }

      v12 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v2];
      v1 = v19;
      goto LABEL_11;
    }

    v14 = objc_alloc(MEMORY[0x29EDB9F30]);
    v16 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<failed to decode - NIL data >", v18];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x29EDB9F30]);
    v15 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v3 = [v1 description];
    v16 = [v15 initWithFormat:@"<failed to decode - invalid data type: %@>", v3];
  }

  v17 = v16;
  v12 = [v14 initWithString:v16];

LABEL_11:
LABEL_12:

  return v12;
}

uint64_t MDNSOLCopyFormattedStringmDNSMACAddr(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = objc_alloc(MEMORY[0x29EDB9F30]);
    v9 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v10 = [v1 description];
    v11 = [v9 initWithFormat:@"<fail decode - data type> %@", v10];
    v6 = [v8 initWithString:v11];

    v2 = 0;
    goto LABEL_9;
  }

  v2 = v1;
  if (![v2 bytes] || !objc_msgSend(v2, "length"))
  {
    v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:@"<NULL MAC ADDRESS>"];
LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  if ([v2 length] != 6)
  {
    v12 = objc_alloc(MEMORY[0x29EDB9F30]);
    v13 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<fail decode - size> %zu != %d", objc_msgSend(v2, "length"), 6];
    v6 = [v12 initWithString:v13];

    goto LABEL_9;
  }

  v15 = [v2 bytes];
  v3 = NSPrintF();
  v4 = objc_alloc(MEMORY[0x29EDB9F30]);
  if (!v3)
  {
    v14 = @"<Could not create NSString>";
LABEL_15:
    v5 = [v4 initWithString:{v14, v15}];
    goto LABEL_7;
  }

  v5 = [v4 initWithString:{v3, v15}];
  if (!v5)
  {
    v4 = objc_alloc(MEMORY[0x29EDB9F30]);
    v14 = @"<Could not create NSAttributedString>";
    goto LABEL_15;
  }

LABEL_7:
  v6 = v5;
LABEL_10:

  return v6;
}

uint64_t MDNSOLCopyFormattedStringDataLinkEvent(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [v2 unsignedLongLongValue];
  if ((v3 - 1) > 0x1D)
  {
LABEL_6:
    v4 = &stru_2A20020C0;
    goto LABEL_7;
  }

  v4 = @"KEV_DL_SIFFLAGS";
  switch(v3)
  {
    case 1:
      break;
    case 2:
      v4 = @"KEV_DL_SIFMETRICS";
      break;
    case 3:
      v4 = @"KEV_DL_SIFMTU";
      break;
    case 4:
      v4 = @"KEV_DL_SIFPHYS";
      break;
    case 5:
      v4 = @"KEV_DL_SIFMEDIA";
      break;
    case 6:
      v4 = @"KEV_DL_SIFGENERIC";
      break;
    case 7:
      v4 = @"KEV_DL_ADDMULTI";
      break;
    case 8:
      v4 = @"KEV_DL_DELMULTI";
      break;
    case 9:
      v4 = @"KEV_DL_IF_ATTACHED";
      break;
    case 10:
      v4 = @"KEV_DL_IF_DETACHING";
      break;
    case 11:
      v4 = @"KEV_DL_IF_DETACHED";
      break;
    case 12:
      v4 = @"KEV_DL_LINK_OFF";
      break;
    case 13:
      v4 = @"KEV_DL_LINK_ON";
      break;
    case 14:
      v4 = @"KEV_DL_PROTO_ATTACHED";
      break;
    case 15:
      v4 = @"KEV_DL_PROTO_DETACHED";
      break;
    case 16:
      v4 = @"KEV_DL_LINK_ADDRESS_CHANGED";
      break;
    case 17:
      v4 = @"KEV_DL_WAKEFLAGS_CHANGED";
      break;
    case 18:
      v4 = @"KEV_DL_IF_IDLE_ROUTE_REFCNT";
      break;
    case 19:
      v4 = @"KEV_DL_IFCAP_CHANGED";
      break;
    case 20:
      v4 = @"KEV_DL_LINK_QUALITY_METRIC_CHANGED";
      break;
    case 21:
      v4 = @"KEV_DL_NODE_PRESENCE";
      break;
    case 22:
      v4 = @"KEV_DL_NODE_ABSENCE";
      break;
    case 23:
      v4 = @"KEV_DL_PRIMARY_ELECTED";
      break;
    case 24:
      v4 = @"KEV_DL_ISSUES";
      break;
    case 25:
      v4 = @"KEV_DL_IFDELEGATE_CHANGED";
      break;
    case 27:
      v4 = @"KEV_DL_AWDL_UNRESTRICTED";
      break;
    case 28:
      v4 = @"KEV_DL_RRC_STATE_CHANGED";
      break;
    case 29:
      v4 = @"KEV_DL_QOS_MODE_CHANGED";
      break;
    case 30:
      v4 = @"KEV_DL_LOW_POWER_MODE_CHANGED";
      break;
    default:
      v4 = @"<Unknown Data-Link event>";
      break;
  }

LABEL_7:
  v5 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v4];

  return v5;
}

uint64_t MDNSOLCopyFormattedStringmDNSIPAddr(void *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x29EDB9F30]);
    v14 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v15 = [v1 description];
    v16 = [v14 initWithFormat:@"<fail decode - data type> %@", v15];
    v8 = [v13 initWithString:v16];

    v2 = 0;
    goto LABEL_11;
  }

  v2 = v1;
  if (![v2 bytes] || !objc_msgSend(v2, "length"))
  {
    v9 = objc_alloc(MEMORY[0x29EDB9F30]);
    v10 = @"<NULL IP ADDRESS>";
LABEL_10:
    v8 = [v9 initWithString:v10];
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v19 = 0uLL;
  v20 = 0;
  if ([v2 length] != 20)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v3 = [v2 bytes];
  v4 = *(v3 + 16);
  v19 = *v3;
  v20 = v4;
  if (!v19)
  {
    v9 = objc_alloc(MEMORY[0x29EDB9F30]);
    v10 = @"<UNSPECIFIED IP ADDRESS>";
    goto LABEL_10;
  }

  v18 = &v19;
  v5 = NSPrintF();
  v6 = objc_alloc(MEMORY[0x29EDB9F30]);
  if (!v5)
  {
    v17 = @"<Could not create NSString>";
LABEL_18:
    v7 = [v6 initWithString:{v17, v18}];
    goto LABEL_8;
  }

  v7 = [v6 initWithString:{v5, &v19}];
  if (!v7)
  {
    v6 = objc_alloc(MEMORY[0x29EDB9F30]);
    v17 = @"<Could not create NSAttributedString>";
    goto LABEL_18;
  }

LABEL_8:
  v8 = v7;
LABEL_12:

  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t MDNSOLCopyFormattedStringHexSequence(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x29EDB9F30]);
    v6 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v2 = [v1 description];
    v7 = [v6 initWithFormat:@"<failed to decode - invalid data type: %@>", v2];
LABEL_7:
    v8 = v7;
    v3 = [v5 initWithString:v7];

    goto LABEL_4;
  }

  v2 = v1;
  if (![v2 bytes])
  {
    v5 = objc_alloc(MEMORY[0x29EDB9F30]);
    v7 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<failed to decode - NIL data >", v9];
    goto LABEL_7;
  }

  v3 = NSPrintTypedObject();
LABEL_4:

  return v3;
}

uint64_t MDNSOLCopyFormattedStringmDNSLabel(void *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_alloc(MEMORY[0x29EDB9F30]);
    v11 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v12 = [v1 description];
    v13 = [v11 initWithFormat:@"<failed to decode - invalid data type: %@>", v12];
    v7 = [v10 initWithString:v13];

    v5 = 0;
    v2 = 0;
    goto LABEL_15;
  }

  v2 = v1;
  if (![v2 bytes] || !objc_msgSend(v2, "length"))
  {
    v7 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:@"<NULL DOMAIN LABEL>"];
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v3 = *[v2 bytes];
  if (v3 > 0x3F || [v2 length] != v3 + 1)
  {
    v14 = objc_alloc(MEMORY[0x29EDB9F30]);
    v15 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"failed to decode - invalid domain label length - data length: %lu, label length: %lu", objc_msgSend(v2, "length"), v3];
    v7 = [v14 initWithString:v15];

    goto LABEL_14;
  }

  memset(v17, 0, 65);
  [v2 bytes];
  [v2 length];
  __memcpy_chk();
  v17[[v2 length]] = 0;
  bzero(__s, 0x3F1uLL);
  if (DomainNameToString(v17, 0, __s, 0))
  {
    v5 = 0;
LABEL_19:
    v7 = 0;
    goto LABEL_15;
  }

  v4 = strlen(__s);
  if (v4)
  {
    __s[v4 - 1] = 0;
  }

  v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:__s];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v5];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:@"<Could not create NSAttributedString>"];
  }

  v7 = v6;
LABEL_15:

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t MDNSOLCopyFormattedStringmDNSLabelSequenceName(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_alloc(MEMORY[0x29EDB9F30]);
    v11 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v12 = [v1 description];
    v13 = [v11 initWithFormat:@"<fail decode - data type> %@", v12];
    v7 = [v10 initWithString:v13];

    v5 = 0;
    v2 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  if (![v2 bytes] || !objc_msgSend(v2, "length"))
  {
    v7 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:@"<NULL DOMAIN NAME>"];
    v5 = 0;
    goto LABEL_10;
  }

  v3 = [v2 bytes];
  v4 = [v2 length];
  bzero(v14, 0x3F1uLL);
  if (DomainNameToString(v3, &v3[v4], v14, 0))
  {
    v5 = 0;
    goto LABEL_13;
  }

  v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v14];
  if (!v5)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v5];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:@"<Could not create NSAttributedString>"];
  }

  v7 = v6;
LABEL_10:

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t MDNSOLCopyFormattedStringDNSScopeType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 longLongValue];
    v4 = @"Service scoped";
    v5 = @"Interface scoped";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3 != 2)
    {
      v4 = v5;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = @"Unscoped";
    }
  }

  else
  {
    v6 = 0;
    v2 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v6];

  return v7;
}

uint64_t MDNSOLCopyFormattedStringD2DServiceEvent(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    v2 = 0;
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v2 longLongValue];
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = @"D2DServiceRetained";
        goto LABEL_8;
      case 4:
        v4 = @"D2DServiceReleased";
        goto LABEL_8;
      case 5:
        v4 = @"D2DServicePeerLost";
        goto LABEL_8;
    }

LABEL_15:
    v4 = 0;
    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = @"D2DServiceFound";
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v4 = @"D2DServiceLost";
    goto LABEL_8;
  }

  if (v3 != 2)
  {
    goto LABEL_15;
  }

  v4 = @"D2DServiceResolved";
LABEL_8:
  v5 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v4];

  return v5;
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