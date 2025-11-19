uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeFindPropertyInSequence(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = DERDecodeSeqNext(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return DERImg4DecodePropertyWithItem(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t DERImg4DecodeParseManifestPropertiesInternal(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = DERDecodeItem(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = DERParseInteger(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = DERImg4DecodeFindProperty(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = DERImg4DecodeFindProperty(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

double Img4DecodeGetObjectProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11[0] = 0;
  v11[1] = 0;
  result = 0.0;
  memset(v10, 0, sizeof(v10));
  if (a1 && a5 && (DERImg4DecodeParseManifestProperties(a1, v11, 0) || DERImg4DecodeFindProperty(v11, a2 | 0xE000000000000000, 0x2000000000000011uLL, v10) || DERImg4DecodeFindProperty(&v10[1] + 1, a3, a4, a5)))
  {
    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

void Img4DecodeGetObjectPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

uint64_t Img4DecodeInitManifestCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeCertificate(&v15, v10);
      }

      else
      {
        result = DERImg4DecodeUnsignedCertificate(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeManifest(&v15, v9);
      }

      else
      {
        result = DERImg4DecodeUnsignedManifest(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = DERDecodeItemPartialBufferGetLength(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v5);
  if (!result)
  {
    if (HIDWORD(v5[0]))
    {
      result = 7;
    }

    else
    {
      result = 0;
      *a2 = v5[0];
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v9[3] = *MEMORY[0x1E69E9840];
  memset(v9, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v9, 0);
  if (result)
  {
    goto LABEL_7;
  }

  v6 = v9[0];
  *a2 = v9[0];
  if (v6 >> 1 != 0x1000000000000008)
  {
    result = 2;
    goto LABEL_7;
  }

  if (__CFADD__(v9[1], v9[2]))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = v9[1] + v9[2];
    if (v9[1] <= v9[1] + v9[2])
    {
      result = 0;
      *a3 = v9[1];
      a3[1] = v7;
LABEL_7:
      v8 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    result = 1;
    goto LABEL_8;
  }

  v11[0] = *a1;
  v11[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v11, a2, 0);
  if (result)
  {
LABEL_8:
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  v8 = a2[1];
  v7 = a2[2];
  if (!__CFADD__(v8, v7))
  {
    v9 = v8 + v7;
    if (v9 <= a1[1] && *a1 <= v9)
    {
      result = 0;
      *a1 = v9;
      goto LABEL_8;
    }

    __break(0x5519u);
  }

  __break(0x5513u);
  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v13[3] = *MEMORY[0x1E69E9840];
  memset(v13, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v13, 0);
  if (!result)
  {
    if (v13[0] == 0x2000000000000010)
    {
      result = DERParseSequenceContentToObject(&v13[1], a2, a3, a4, a5, a6);
    }

    else
    {
      result = 2;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v36 = *a1;
  v37 = v13;
  if (a2)
  {
    v14 = 0;
    while (1)
    {
      memset(v35, 170, sizeof(v35));
      v16 = v36;
      v15 = v37;
      result = DERDecodeSeqNext(&v36, v35);
      if (result)
      {
        if (result == 1)
        {
          if (a2 <= v14)
          {
            result = 0;
          }

          else
          {
            v29 = (a3 + 24 * v14 + 16);
            v30 = a2 - v14;
            result = 0;
            while (1)
            {
              v31 = *v29;
              v29 += 12;
              if ((v31 & 1) == 0)
              {
                break;
              }

              if (!--v30)
              {
                goto LABEL_51;
              }
            }

            result = 5;
          }
        }

        goto LABEL_51;
      }

      if (a2 <= v14)
      {
        result = 2;
        goto LABEL_51;
      }

      while (1)
      {
        if (24 * v14 > ~a3)
        {
          goto LABEL_58;
        }

        v18 = a3 + 24 * v14;
        v19 = *(v18 + 16);
        if ((v19 & 2) != 0 || v35[0] == *(v18 + 8))
        {
          break;
        }

        result = 2;
        if ((v19 & 1) != 0 && a2 > ++v14)
        {
          continue;
        }

        goto LABEL_51;
      }

      if ((v19 & 4) == 0)
      {
        v20 = *v18;
        v21 = *v18 + 16;
        if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
        {
          result = 7;
          goto LABEL_51;
        }

        if (v20 > ~a4)
        {
          goto LABEL_58;
        }

        v23 = (a4 + v20);
        v24 = v23 + 16;
        if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
        {
          goto LABEL_59;
        }

        *v23 = *&v35[1];
        if ((v19 & 8) != 0)
        {
          if (v16 >= v35[1])
          {
            if (v15 < v16 || *(v23 + 1) > v15 - v16)
            {
              goto LABEL_59;
            }

            *v23 = v16;
            result = 3;
            goto LABEL_51;
          }

          v27 = *(v23 + 1);
          v28 = v27 + v35[1] - v16;
          if (__CFADD__(v27, v35[1] - v16))
          {
            __break(0x5500u);
            return result;
          }

          if (v15 < v16 || v28 > v15 - v16)
          {
            goto LABEL_59;
          }

          *v23 = v16;
          *(v23 + 1) = v28;
        }
      }

      if (a2 == ++v14)
      {
        if (!__CFADD__(v35[1], v35[2]))
        {
          v32 = a1[1];
          if (!__CFADD__(*a1, v32))
          {
            v11 = v35[1] + v35[2];
            v13 = *a1 + v32;
            break;
          }
        }

LABEL_58:
        __break(0x5513u);
        goto LABEL_59;
      }

      if (a2 <= v14)
      {
        v11 = v36;
        v13 = v37;
        break;
      }
    }
  }

  if (v11 == v13)
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

LABEL_51:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t DEREncodeLengthSized(unint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (result < 0x80)
  {
    if (a3)
    {
      if (*a4)
      {
        *a2 = result;
        if (*a4)
        {
          v4 = 1;
LABEL_19:
          v9 = 0;
          *a4 = v4;
          return v9;
        }
      }

      goto LABEL_22;
    }

    return 7;
  }

  v5 = 0;
  v6 = result;
  do
  {
    --v5;
    v7 = v6 > 0xFF;
    v6 >>= 8;
  }

  while (v7);
  v8 = -v5;
  v9 = 7;
  if (-v5 >= a3 || v8 > 0x7E)
  {
    return v9;
  }

  if (*a4)
  {
    v4 = 1 - v5;
    *a2 = -v5 | 0x80;
    if (v8 < ~a2)
    {
      v10 = (a2 - v5);
      if (a2 - v5 != -2)
      {
        v11 = (a2 + *a4);
        while (v10 != -1)
        {
          if (v10 >= v11 || v10 < a2)
          {
            goto LABEL_22;
          }

          *v10-- = result;
          v7 = result > 0xFF;
          result >>= 8;
          if (!v7)
          {
            if (v8 >= *a4)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }
        }
      }
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(0x5519u);
LABEL_23:
  __break(0x5513u);
  return result;
}

unint64_t DERLengthOfItem(unint64_t result, unint64_t a2)
{
  v2 = result & 0x1FFFFFFFFFFFFFFFLL;
  v3 = 1;
  if ((result & 0x1FFFFFFFFFFFFFFFLL) >= 0x1F)
  {
    do
    {
      ++v3;
      v4 = v2 > 0x7F;
      v2 >>= 7;
    }

    while (v4);
  }

  v5 = 1;
  if (a2 >= 0x80)
  {
    v6 = a2;
    do
    {
      ++v5;
      v4 = v6 > 0xFF;
      v6 >>= 8;
    }

    while (v4);
  }

  v7 = __CFADD__(v3, v5);
  v8 = v3 + v5;
  if (v7 || (result = v8 + a2, __CFADD__(v8, a2)))
  {
    __break(0x5500u);
  }

  return result;
}

unint64_t DEREncodeItemSized(unint64_t a1, unint64_t a2, const void *a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v12 = *a6;
  v13 = DERLengthOfItem(a1, a2);
  if (v13 > a5)
  {
    result = 7;
LABEL_20:
    v22 = *MEMORY[0x1E69E9840];
    return result;
  }

  v15 = v13;
  if (v13 > *a6)
  {
    goto LABEL_21;
  }

  *a6 = v13;
  v23[0] = v13;
  if (v13 > v12)
  {
    goto LABEL_21;
  }

  result = DEREncodeTag(a1, a4, v23);
  if (result)
  {
    goto LABEL_20;
  }

  v16 = v23[0];
  if (__CFADD__(a4, v23[0]))
  {
    goto LABEL_22;
  }

  v17 = v15 >= v23[0];
  v18 = v15 - v23[0];
  if (!v17)
  {
    goto LABEL_23;
  }

  v19 = a4 + v12;
  v20 = a4 + v23[0];
  v23[0] = v18;
  if (a4 + v16 > a4 + v12 || v20 < a4 || v18 > v12 - v16)
  {
LABEL_21:
    __break(0x5519u);
  }

  result = DEREncodeLengthSized(a2, v20, v18, v23);
  if (result)
  {
    goto LABEL_20;
  }

  if (__CFADD__(v20, v23[0]))
  {
LABEL_22:
    __break(0x5513u);
    goto LABEL_23;
  }

  if (v18 >= v23[0])
  {
    v21 = (v20 + v23[0]);
    if (v19 >= v20 + v23[0] && v21 >= a4 && v19 - (v20 + v23[0]) >= a2)
    {
      memmove(v21, a3, a2);
      if (v21 <= &v21[a2])
      {
        result = 0;
        goto LABEL_20;
      }
    }

    goto LABEL_21;
  }

LABEL_23:
  __break(0x5515u);
  return result;
}

uint64_t DEREncodeTag(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v3 = result & 0x1FFFFFFFFFFFFFFFLL;
  if ((result & 0x1FFFFFFFFFFFFFFFuLL) < 0x1F)
  {
    if (*a3)
    {
      *a2 = HIBYTE(result) & 0xE0 | result;
      v8 = 1;
      goto LABEL_16;
    }

    return 7;
  }

  v4 = 0;
  v5 = result & 0x1FFFFFFFFFFFFFFFLL;
  do
  {
    ++v4;
    v6 = v5 > 0x7F;
    v5 >>= 7;
  }

  while (v6);
  v7 = *a3;
  if (v4 >= *a3)
  {
    return 7;
  }

  if (v4 < ~a2)
  {
    *a2 = HIBYTE(result) | 0x1F;
    if (a2 + v4 != -2)
    {
      v8 = v4 + 1;
      *(a2 + v4) = result & 0x7F;
      if (v3 >= 0x80)
      {
        v9 = (a2 + v4 - 1);
        v10 = (a2 + v7);
        while (v9 != -2)
        {
          if (v9 >= v10 || v9 < a2)
          {
            goto LABEL_19;
          }

          v11 = v3 >> 14;
          v3 >>= 7;
          *v9-- = v3 | 0x80;
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_20;
      }

LABEL_16:
      if (v8 <= *a3)
      {
        result = 0;
        *a3 = v8;
        return result;
      }

LABEL_19:
      __break(0x5519u);
    }
  }

LABEL_20:
  __break(0x5513u);
  return result;
}

uint64_t DEREncodeSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t *a8)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v8 = ~a6;
  if (~a6 < a7)
  {
    goto LABEL_72;
  }

  v11 = *a8;
  v47 = a7;
  v48[0] = 0;
  if (v11 < a7)
  {
    goto LABEL_73;
  }

  result = DEREncodeTag(a1, a6, &v47);
  if (result)
  {
    goto LABEL_17;
  }

  v17 = v47;
  if (v47 > v8)
  {
    goto LABEL_72;
  }

  v18 = a7 - v47;
  if (a7 >= v47)
  {
    v19 = a6 + a7;
    v20 = a6 + v47;
    if (a6 + v47 >= v19)
    {
LABEL_16:
      result = 7;
      goto LABEL_17;
    }

    result = DERContentLengthOfEncodedSequence(a2, a3, a4, a5, v48);
    if (!result)
    {
      v47 = v18;
      if (v20 > a6 + v11 || v20 < a6 || v18 > v11 - v17)
      {
        goto LABEL_73;
      }

      v45 = a6 + v11;
      v21 = v48[0];
      result = DEREncodeLengthSized(v48[0], a6 + v17, v18, &v47);
      if (!result)
      {
        v22 = v45;
        if (__CFADD__(v20, v47))
        {
          goto LABEL_72;
        }

        v23 = v18 - v47;
        if (v18 >= v47)
        {
          v24 = (v20 + v47);
          if (!__CFADD__(v20 + v47, v21))
          {
            if (&v24[v21] > v19)
            {
              goto LABEL_16;
            }

            if (a4)
            {
              v26 = 0;
              v44 = a2 + a3;
              v43 = ~a5;
              v27 = a5 + 8;
              v42 = 24 * a4;
              do
              {
                if (v26 > v43)
                {
                  goto LABEL_72;
                }

                v28 = *(v27 - 8);
                if (v28 > ~a2)
                {
                  goto LABEL_72;
                }

                v29 = (a2 + v28);
                v30 = *(v27 + 8);
                if ((v30 & 0x200) != 0)
                {
                  v39 = v29 < a2 || (v29 + 2) > v44;
                  if (v39 || v24 > v22 || v24 < a6)
                  {
                    goto LABEL_73;
                  }

                  v37 = v29[1];
                  v38 = v22 - v24;
                }

                else
                {
                  if (v30)
                  {
                    if (v29 < a2 || (v29 + 2) > v44)
                    {
                      goto LABEL_73;
                    }

                    if (!v29[1])
                    {
                      goto LABEL_69;
                    }
                  }

                  v47 = v23;
                  if (v24 > v22 || v24 < a6 || v23 > v22 - v24)
                  {
                    goto LABEL_73;
                  }

                  result = DEREncodeTag(*v27, v24, &v47);
                  if (result)
                  {
                    goto LABEL_17;
                  }

                  if (__CFADD__(v24, v47))
                  {
                    goto LABEL_72;
                  }

                  v32 = v23 - v47;
                  if (v23 < v47)
                  {
                    goto LABEL_74;
                  }

                  if (v29 < a2 || (v29 + 2) > v44)
                  {
                    goto LABEL_73;
                  }

                  v33 = v29[1];
                  v48[0] = v33;
                  v34 = 1;
                  if ((v30 & 0x100) != 0 && v33 && **v29 < 0)
                  {
                    v34 = 0;
                    v48[0] = ++v33;
                  }

                  v35 = &v24[v47];
                  v47 = v23 - v47;
                  if (v35 > v45 || v35 < a6 || v32 > v45 - v35)
                  {
                    goto LABEL_73;
                  }

                  result = DEREncodeLengthSized(v33, v35, v32, &v47);
                  if (result)
                  {
                    goto LABEL_17;
                  }

                  v36 = v47;
                  if (__CFADD__(v35, v47))
                  {
                    goto LABEL_72;
                  }

                  v23 = v32 - v47;
                  if (v32 < v47)
                  {
                    goto LABEL_74;
                  }

                  v24 = (v35 + v47);
                  if ((v34 & 1) == 0)
                  {
                    if (v24 == -1)
                    {
                      goto LABEL_72;
                    }

                    if (v24 >= v45 || v24 < a6)
                    {
                      goto LABEL_73;
                    }

                    *v24 = 0;
                    --v23;
                    if (v32 == v36)
                    {
                      goto LABEL_74;
                    }

                    ++v24;
                  }

                  if (v24 > v45 || v24 < a6)
                  {
                    goto LABEL_73;
                  }

                  v37 = v29[1];
                  v38 = v45 - v24;
                }

                if (v37 > v38)
                {
                  goto LABEL_73;
                }

                result = memmove(v24, *v29, v37);
                if (v24 > &v24[v37])
                {
                  goto LABEL_73;
                }

                v40 = v29[1];
                v22 = v45;
                if (__CFADD__(v24, v40))
                {
                  goto LABEL_72;
                }

                v41 = v23 >= v40;
                v23 -= v40;
                if (!v41)
                {
                  goto LABEL_74;
                }

                v24 += v40;
LABEL_69:
                v27 += 24;
                v26 += 24;
              }

              while (v42 != v26);
            }

            if (&v24[-a6] <= *a8)
            {
              result = 0;
              *a8 = &v24[-a6];
              goto LABEL_17;
            }

LABEL_73:
            __break(0x5519u);
          }

LABEL_72:
          __break(0x5513u);
          goto LABEL_73;
        }

        goto LABEL_74;
      }
    }

LABEL_17:
    v25 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_74:
  __break(0x5515u);
  return result;
}

unint64_t DERContentLengthOfEncodedSequence(unint64_t result, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v5 = 0;
  if (!a3)
  {
LABEL_38:
    result = 0;
LABEL_40:
    *a5 = v5;
    return result;
  }

  v6 = 0;
  v7 = result + a2;
  while (24 * v6 <= ~a4)
  {
    v8 = a4 + 24 * v6;
    v9 = *v8;
    v10 = *v8 > 0xFFFFFFFFFFFFFFEFLL || *v8 + 16 > a2;
    if (v10)
    {
      v5 = 0;
      result = 7;
      goto LABEL_40;
    }

    if (v9 > ~result)
    {
      break;
    }

    v11 = (result + v9);
    v12 = *(v8 + 16);
    if ((v12 & 0x200) == 0)
    {
      if (v12)
      {
        if (v11 < result || (v11 + 2) > v7)
        {
          goto LABEL_43;
        }

        if (!v11[1])
        {
          goto LABEL_37;
        }
      }

      v14 = *(v8 + 8) & 0x1FFFFFFFFFFFFFFFLL;
      v15 = 1;
      if (v14 >= 0x1F)
      {
        do
        {
          ++v15;
          v10 = v14 > 0x7F;
          v14 >>= 7;
        }

        while (v10);
      }

      v16 = __CFADD__(v5, v15);
      v17 = v5 + v15;
      if (v16)
      {
        goto LABEL_42;
      }

      if (v11 < result || (v11 + 2) > v7)
      {
        goto LABEL_43;
      }

      v18 = v11[1];
      if ((v12 & 0x100) != 0)
      {
        if (v18)
        {
          v18 += **v11 >> 7;
          goto LABEL_24;
        }

LABEL_25:
        v19 = 1;
      }

      else
      {
LABEL_24:
        if (v18 < 0x80)
        {
          goto LABEL_25;
        }

        v19 = 1;
        v22 = v18;
        do
        {
          ++v19;
          v10 = v22 > 0xFF;
          v22 >>= 8;
        }

        while (v10);
      }

      v16 = __CFADD__(v17, v19);
      v23 = v17 + v19;
      if (v16)
      {
        goto LABEL_42;
      }

      v16 = __CFADD__(v23, v18);
      v5 = v23 + v18;
      if (v16)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v11 < result || (v11 + 2) > v7)
    {
      goto LABEL_43;
    }

    v21 = v11[1];
    v16 = __CFADD__(v5, v21);
    v5 += v21;
    if (v16)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (++v6 == a3)
    {
      goto LABEL_38;
    }
  }

  __break(0x5513u);
LABEL_42:
  __break(0x5500u);
LABEL_43:
  __break(0x5519u);
  return result;
}

uint64_t DEREncodeSequence(uint64_t result, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) >= a2)
  {
    return DEREncodeSequenceFromObject(result, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, a5, *a6, a6);
  }

  __break(0x5519u);
  return result;
}

unint64_t DERLengthOfEncodedSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  result = DERContentLengthOfEncodedSequence(a2, a3, a4, a5, v18);
  if (result)
  {
    goto LABEL_10;
  }

  v9 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v10 = 1;
  if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >= 0x1F)
  {
    do
    {
      ++v10;
      v11 = v9 > 0x7F;
      v9 >>= 7;
    }

    while (v11);
  }

  v12 = 1;
  if (v18[0] >= 0x80uLL)
  {
    v13 = v18[0];
    do
    {
      ++v12;
      v11 = v13 > 0xFF;
      v13 >>= 8;
    }

    while (v11);
  }

  v14 = __CFADD__(v10, v12);
  v15 = v10 + v12;
  if (!v14)
  {
    v14 = __CFADD__(v15, v18[0]);
    v16 = v15 + v18[0];
    if (!v14)
    {
      result = 0;
      *a6 = v16;
LABEL_10:
      v17 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  __break(0x5500u);
  return result;
}

uint64_t DERLengthOfEncodedSequence(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) < a2)
  {
    __break(0x5519u);
  }

  if (DERLengthOfEncodedSequenceFromObject(a1, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, v6))
  {
    result = 0;
  }

  else
  {
    result = v6[0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

double AMFDRLoadLibrary()
{
  v0 = dlopen("/usr/lib/libFDR.dylib", 261);
  if (!v0)
  {
    AMFDRLoadLibrary_cold_53();
LABEL_108:
    result = 0.0;
    xmmword_1ECFD52E8 = 0u;
    *&qword_1ECFD52F8 = 0u;
    xmmword_1ECFD52C8 = 0u;
    *&qword_1ECFD52D8 = 0u;
    xmmword_1ECFD52A8 = 0u;
    *&qword_1ECFD52B8 = 0u;
    xmmword_1ECFD5288 = 0u;
    *&off_1ECFD5298 = 0u;
    xmmword_1ECFD5268 = 0u;
    *&qword_1ECFD5278 = 0u;
    xmmword_1ECFD5248 = 0u;
    *&qword_1ECFD5258 = 0u;
    xmmword_1ECFD5228 = 0u;
    *&qword_1ECFD5238 = 0u;
    xmmword_1ECFD5208 = 0u;
    *&qword_1ECFD5218 = 0u;
    xmmword_1ECFD51E8 = 0u;
    *&off_1ECFD51F8 = 0u;
    xmmword_1ECFD51C8 = 0u;
    *&qword_1ECFD51D8 = 0u;
    xmmword_1ECFD51A8 = 0u;
    *&off_1ECFD51B8 = 0u;
    xmmword_1ECFD5188 = 0u;
    *&qword_1ECFD5198 = 0u;
    ExportTable = 0u;
    *&qword_1ECFD5178 = 0u;
    return result;
  }

  v1 = v0;
  *&ExportTable = dlsym(v0, "AMFDRCreateWithOptions");
  if (!ExportTable)
  {
    AMFDRLoadLibrary_cold_52();
    goto LABEL_108;
  }

  *(&ExportTable + 1) = dlsym(v1, "AMFDRCreatePermissionsString");
  if (!*(&ExportTable + 1))
  {
    AMFDRLoadLibrary_cold_51();
    goto LABEL_108;
  }

  qword_1ECFD5178 = dlsym(v1, "AMFDRCreateInstanceString");
  if (!qword_1ECFD5178)
  {
    AMFDRLoadLibrary_cold_50();
    goto LABEL_108;
  }

  qword_1ECFD5180 = dlsym(v1, "AMFDRSetOption");
  if (!qword_1ECFD5180)
  {
    AMFDRLoadLibrary_cold_49();
    goto LABEL_108;
  }

  *&xmmword_1ECFD5188 = dlsym(v1, "AMFDRSetSealingMap");
  if (!xmmword_1ECFD5188)
  {
    AMFDRLoadLibrary_cold_48();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD5188 + 1) = dlsym(v1, "AMFDRGetSealingMap");
  if (!*(&xmmword_1ECFD5188 + 1))
  {
    AMFDRLoadLibrary_cold_47();
    goto LABEL_108;
  }

  qword_1ECFD5198 = dlsym(v1, "AMFDRSetRecoveryVerifier");
  if (!qword_1ECFD5198)
  {
    AMFDRLoadLibrary_cold_46();
    goto LABEL_108;
  }

  qword_1ECFD51A0 = dlsym(v1, "AMFDRGetOptions");
  if (!qword_1ECFD51A0)
  {
    AMFDRLoadLibrary_cold_45();
    goto LABEL_108;
  }

  *&xmmword_1ECFD51A8 = dlsym(v1, "AMFDRGetInfo");
  if (!xmmword_1ECFD51A8)
  {
    AMFDRLoadLibrary_cold_44();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD51A8 + 1) = dlsym(v1, "AMFDRGetCert");
  if (!*(&xmmword_1ECFD51A8 + 1))
  {
    AMFDRLoadLibrary_cold_43();
    goto LABEL_108;
  }

  off_1ECFD51B8 = dlsym(v1, "AMFDRGetTrustError");
  if (!off_1ECFD51B8)
  {
    AMFDRLoadLibrary_cold_42();
    goto LABEL_108;
  }

  qword_1ECFD51C0 = dlsym(v1, "AMFDRCopyClientId");
  if (!qword_1ECFD51C0)
  {
    AMFDRLoadLibrary_cold_41();
    goto LABEL_108;
  }

  *&xmmword_1ECFD51C8 = dlsym(v1, "AMFDRCopyUnderlyingDictionary");
  if (!xmmword_1ECFD51C8)
  {
    AMFDRLoadLibrary_cold_40();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD51C8 + 1) = dlsym(v1, "AMFDRLogSetHandler");
  if (!*(&xmmword_1ECFD51C8 + 1))
  {
    AMFDRLoadLibrary_cold_39();
    goto LABEL_108;
  }

  qword_1ECFD51D8 = dlsym(v1, "AMFDRPerformManifestCheck");
  if (!qword_1ECFD51D8)
  {
    AMFDRLoadLibrary_cold_38();
    goto LABEL_108;
  }

  qword_1ECFD51E0 = dlsym(v1, "AMFDRAppendPermissionsString");
  if (!qword_1ECFD51E0)
  {
    AMFDRLoadLibrary_cold_37();
    goto LABEL_108;
  }

  *&xmmword_1ECFD51E8 = dlsym(v1, "AMFDRDataCopyDigest");
  if (!xmmword_1ECFD51E8)
  {
    AMFDRLoadLibrary_cold_36();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD51E8 + 1) = dlsym(v1, "AMFDRDataPresent");
  if (!*(&xmmword_1ECFD51E8 + 1))
  {
    AMFDRLoadLibrary_cold_35();
    goto LABEL_108;
  }

  off_1ECFD51F8 = dlsym(v1, "AMFDRDataCopy");
  if (!off_1ECFD51F8)
  {
    AMFDRLoadLibrary_cold_34();
    goto LABEL_108;
  }

  qword_1ECFD5200 = dlsym(v1, "AMFDRDataMultiCopy");
  if (!qword_1ECFD5200)
  {
    AMFDRLoadLibrary_cold_33();
    goto LABEL_108;
  }

  *&xmmword_1ECFD5208 = dlsym(v1, "AMFDRDataPut");
  if (!xmmword_1ECFD5208)
  {
    AMFDRLoadLibrary_cold_32();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD5208 + 1) = dlsym(v1, "AMFDRDataMultiPut");
  if (!*(&xmmword_1ECFD5208 + 1))
  {
    AMFDRLoadLibrary_cold_31();
    goto LABEL_108;
  }

  qword_1ECFD5218 = dlsym(v1, "AMFDRDataPrefetch");
  if (!qword_1ECFD5218)
  {
    AMFDRLoadLibrary_cold_30();
    goto LABEL_108;
  }

  qword_1ECFD5220 = dlsym(v1, "AMFDRDataExport");
  if (!qword_1ECFD5220)
  {
    AMFDRLoadLibrary_cold_29();
    goto LABEL_108;
  }

  *&xmmword_1ECFD5228 = dlsym(v1, "AMFDRDataMultiExport");
  if (!xmmword_1ECFD5228)
  {
    AMFDRLoadLibrary_cold_28();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD5228 + 1) = dlsym(v1, "AMFDRDataDelete");
  if (!*(&xmmword_1ECFD5228 + 1))
  {
    AMFDRLoadLibrary_cold_27();
    goto LABEL_108;
  }

  qword_1ECFD5238 = dlsym(v1, "AMFDRDataMultiDelete");
  if (!qword_1ECFD5238)
  {
    AMFDRLoadLibrary_cold_26();
    goto LABEL_108;
  }

  qword_1ECFD5240 = dlsym(v1, "AMFDRDataCopyTrustObject");
  if (!qword_1ECFD5240)
  {
    AMFDRLoadLibrary_cold_25();
    goto LABEL_108;
  }

  *&xmmword_1ECFD5248 = dlsym(v1, "AMFDRDataCopySslRoots");
  if (!xmmword_1ECFD5248)
  {
    AMFDRLoadLibrary_cold_24();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD5248 + 1) = dlsym(v1, "AMFDRDataIterate");
  if (!*(&xmmword_1ECFD5248 + 1))
  {
    AMFDRLoadLibrary_cold_23();
    goto LABEL_108;
  }

  qword_1ECFD5258 = dlsym(v1, "AMFDRDataRecover");
  if (!qword_1ECFD5258)
  {
    AMFDRLoadLibrary_cold_22();
    goto LABEL_108;
  }

  qword_1ECFD5260 = dlsym(v1, "AMFDRDataLocalCreateFullKey");
  if (!qword_1ECFD5260)
  {
    AMFDRLoadLibrary_cold_21();
    goto LABEL_108;
  }

  *&xmmword_1ECFD5268 = dlsym(v1, "AMFDRSealingMapCreateRecoveryPermissions");
  if (!xmmword_1ECFD5268)
  {
    AMFDRLoadLibrary_cold_20();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD5268 + 1) = dlsym(v1, "AMFDRSealingMapRecoverCurrentDevice");
  if (!*(&xmmword_1ECFD5268 + 1))
  {
    AMFDRLoadLibrary_cold_19();
    goto LABEL_108;
  }

  qword_1ECFD5278 = dlsym(v1, "AMFDRSealingMapGetEntry");
  if (!qword_1ECFD5278)
  {
    AMFDRLoadLibrary_cold_18();
    goto LABEL_108;
  }

  qword_1ECFD5280 = dlsym(v1, "AMFDRSealingMapGetEntriesForDevice");
  if (!qword_1ECFD5280)
  {
    AMFDRLoadLibrary_cold_17();
    goto LABEL_108;
  }

  *&xmmword_1ECFD5288 = dlsym(v1, "AMFDRSealingMapCopyInstanceWithIdentifiers");
  if (!xmmword_1ECFD5288)
  {
    AMFDRLoadLibrary_cold_16();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD5288 + 1) = dlsym(v1, "AMFDRSealingMapCopyRequiredIdentifiers");
  if (!*(&xmmword_1ECFD5288 + 1))
  {
    AMFDRLoadLibrary_cold_15();
    goto LABEL_108;
  }

  off_1ECFD5298 = dlsym(v1, "AMFDRSealingMapCopyLocalData");
  if (!off_1ECFD5298)
  {
    AMFDRLoadLibrary_cold_14();
    goto LABEL_108;
  }

  qword_1ECFD52A0 = dlsym(v1, "AMFDRSealingMapCopyLocalDataForClass");
  if (!qword_1ECFD52A0)
  {
    AMFDRLoadLibrary_cold_13();
    goto LABEL_108;
  }

  *&xmmword_1ECFD52A8 = dlsym(v1, "AMFDRSealingMapCopyLocalMinimalManifestForInstance");
  if (!xmmword_1ECFD52A8)
  {
    AMFDRLoadLibrary_cold_12();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD52A8 + 1) = dlsym(v1, "AMFDRSealingMapVerifySealing");
  if (!*(&xmmword_1ECFD52A8 + 1))
  {
    AMFDRLoadLibrary_cold_11();
    goto LABEL_108;
  }

  qword_1ECFD52B8 = dlsym(v1, "AMFDRSealingMapCreateAndPopulateSealedData");
  if (!qword_1ECFD52B8)
  {
    AMFDRLoadLibrary_cold_10();
    goto LABEL_108;
  }

  qword_1ECFD52C0 = dlsym(v1, "AMFDRSealingMapVerifyAndCommitSealedData");
  if (!qword_1ECFD52C0)
  {
    AMFDRLoadLibrary_cold_9();
    goto LABEL_108;
  }

  *&xmmword_1ECFD52C8 = dlsym(v1, "AMFDRSealedDataCreateSealingRequest");
  if (!xmmword_1ECFD52C8)
  {
    AMFDRLoadLibrary_cold_8();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD52C8 + 1) = dlsym(v1, "AMFDRSealedDataCreate");
  if (!*(&xmmword_1ECFD52C8 + 1))
  {
    AMFDRLoadLibrary_cold_7();
    goto LABEL_108;
  }

  qword_1ECFD52D8 = dlsym(v1, "AMFDRSealedDataPopulate");
  if (!qword_1ECFD52D8)
  {
    AMFDRLoadLibrary_cold_6();
    goto LABEL_108;
  }

  qword_1ECFD52E0 = dlsym(v1, "AMFDRCopyDisposableKeys");
  if (!qword_1ECFD52E0)
  {
    AMFDRLoadLibrary_cold_5();
    goto LABEL_108;
  }

  *&xmmword_1ECFD52E8 = dlsym(v1, "AMFDRCopyDeviceKeys");
  if (!xmmword_1ECFD52E8)
  {
    AMFDRLoadLibrary_cold_4();
    goto LABEL_108;
  }

  qword_1ECFD52F8 = dlsym(v1, "AMFDRDataPutForSysCfgKey");
  if (!qword_1ECFD52F8)
  {
    AMFDRLoadLibrary_cold_3();
    goto LABEL_108;
  }

  *(&xmmword_1ECFD52E8 + 1) = dlsym(v1, "AMFDRCreateLocalPending");
  if (!*(&xmmword_1ECFD52E8 + 1))
  {
    AMFDRLoadLibrary_cold_2();
    goto LABEL_108;
  }

  qword_1ECFD5300 = dlsym(v1, "AMFDRSealingMapSetMGCopyAnswer");
  if (!qword_1ECFD5300)
  {
    AMFDRLoadLibrary_cold_1();
    goto LABEL_108;
  }

  return result;
}

uint64_t AMFDRCreateWithOptions(uint64_t a1, uint64_t a2)
{
  pthread_once(&ExportTableOnce, AMFDRLoadLibrary);
  v4 = ExportTable;
  if (!ExportTable)
  {
    return 0;
  }

  return v4(a1, a2);
}

uint64_t AMFDRGetTrustError(uint64_t a1)
{
  pthread_once(&ExportTableOnce, AMFDRLoadLibrary);
  v2 = off_1ECFD51B8;
  if (!off_1ECFD51B8)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t AMFDRLogSetHandler(uint64_t a1)
{
  result = pthread_once(&ExportTableOnce, AMFDRLoadLibrary);
  v3 = *(&xmmword_1ECFD51C8 + 1);
  if (*(&xmmword_1ECFD51C8 + 1))
  {

    return v3(a1);
  }

  return result;
}

uint64_t AMFDRDataCopy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_once(&ExportTableOnce, AMFDRLoadLibrary);
  v8 = off_1ECFD51F8;
  if (!off_1ECFD51F8)
  {
    return 0;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t AMFDRSealingMapCopyLocalData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_once(&ExportTableOnce, AMFDRLoadLibrary);
  v8 = off_1ECFD5298;
  if (!off_1ECFD5298)
  {
    return 0;
  }

  return v8(a1, a2, a3, a4);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void AMFDRLoadLibrary_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_8()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_9()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_10()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_11()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_12()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_13()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_14()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_15()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_16()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_17()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_18()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_19()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_20()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_21()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_22()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_23()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_24()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_25()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_26()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_27()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_28()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_29()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_30()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_31()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_32()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_33()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_34()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_35()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_36()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_37()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_38()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_39()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_40()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_41()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_42()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_43()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_44()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_45()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_46()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_47()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_48()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_49()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_50()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_51()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_52()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load '%s' from '%s'\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void AMFDRLoadLibrary_cold_53()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    dlerror();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1E5234000, MEMORY[0x1E69E9C10], v1, "failed to load %s: %s\n", v2, v3, v4, v5, 2u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t CircularFileLogWriter::CircularFileLogWriter(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x1E69E5168] + 16;
  v4 = dispatch_queue_create("CircularFileLogWriter", 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = v4;
    dispatch_retain(v4);
    *(a1 + 32) = 0;
    dispatch_release(v5);
    *a1 = &unk_1F5EFE5D8;
    *(a1 + 40) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *a2;
      *(a1 + 64) = *(a2 + 2);
      *(a1 + 48) = v6;
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *a1 = &unk_1F5EFE5D8;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 48), *a2, *(a2 + 1));
LABEL_6:
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v7 = *(a2 + 24);
    *(a1 + 88) = *(a2 + 5);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v8 = a2[3];
    *(a1 + 112) = *(a2 + 8);
    *(a1 + 96) = v8;
  }

  v9 = *(a2 + 72);
  *(a1 + 136) = *(a2 + 88);
  *(a1 + 120) = v9;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void sub_1E5239E84(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v4 = *(v1 + 40);
      *(v1 + 40) = 0;
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 48));
  v4 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (!v4)
  {
LABEL_4:
    ctu::SharedSynchronizable<CircularFileLogWriter>::~SharedSynchronizable(v2);
    _Unwind_Resume(a1);
  }

LABEL_7:
  (*(*v4 + 8))(v4);
  ctu::SharedSynchronizable<CircularFileLogWriter>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void *ctu::SharedSynchronizable<CircularFileLogWriter>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN21CircularFileLogWriter4openEv_block_invoke(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1 + 152) = 0;
  if (*(v1 + 40))
  {
    std::ostream::flush();
    v2 = *(v1 + 40);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    v3 = *(v1 + 40);
    *(v1 + 40) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  *(v1 + 144) = *(v1 + 120) / *(v1 + 128);
  v4 = *(v1 + 95);
  if (v4 >= 0)
  {
    v5 = *(v1 + 95);
  }

  else
  {
    v5 = *(v1 + 80);
  }

  v6 = v5 + 8;
  if (v5 + 8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = (v1 + 72);
  if (v6 < 0x17)
  {
    memset(v78, 0, 24);
    v9 = v78;
    HIBYTE(v78[0].__end_cap_.__value_) = v5 + 8;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v9 = operator new(v8);
    v78[0].__end_ = (v5 + 8);
    v78[0].__end_cap_.__value_ = (v8 | 0x8000000000000000);
    v78[0].__begin_ = v9;
  }

  v10 = *v7;
  if (v4 >= 0)
  {
    v11 = (v1 + 72);
  }

  else
  {
    v11 = *v7;
  }

  memmove(v9, v11, v5);
LABEL_20:
  strcpy(v9 + v5, "/latest-");
  v12 = *(v1 + 71);
  if (v12 >= 0)
  {
    v13 = (v1 + 48);
  }

  else
  {
    v13 = *(v1 + 48);
  }

  if (v12 >= 0)
  {
    v14 = *(v1 + 71);
  }

  else
  {
    v14 = *(v1 + 56);
  }

  v15 = std::string::append(v78, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  *&__dst.st_uid = *(&v15->__r_.__value_.__l + 2);
  *&__dst.st_dev = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = *(v1 + 96);
  v18 = *(v1 + 119);
  if (v18 >= 0)
  {
    v19 = (v1 + 96);
  }

  else
  {
    v19 = *(v1 + 96);
  }

  if (v18 >= 0)
  {
    v20 = *(v1 + 119);
  }

  else
  {
    v20 = *(v1 + 104);
  }

  v21 = std::string::append(&__dst, v19, v20);
  v22 = v21->__r_.__value_.__r.__words[0];
  v89[0] = v21->__r_.__value_.__r.__words[1];
  *(&v89[0].__locale_ + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
  v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  locale = v89[0].__locale_;
  *(v1 + 160) = v22;
  *(v1 + 168) = locale;
  *(v1 + 175) = *(&v89[0].__locale_ + 7);
  *(v1 + 183) = v23;
  if (SHIBYTE(__dst.st_gid) < 0)
  {
    operator delete(*&__dst.st_dev);
    if ((SHIBYTE(v78[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((SHIBYTE(v78[0].__end_cap_.__value_) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v78[0].__begin_);
LABEL_36:
  v25 = *(v1 + 95);
  if (v25 >= 0)
  {
    v26 = *(v1 + 95);
  }

  else
  {
    v26 = *(v1 + 80);
  }

  v27 = v26 + 1;
  if (v26 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v27 < 0x17)
  {
    memset(&__dst, 0, 24);
    p_dst = &__dst;
    HIBYTE(__dst.st_gid) = v26 + 1;
    if (!v26)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if ((v27 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v27 | 7) + 1;
    }

    p_dst = operator new(v28);
    __dst.st_ino = v26 + 1;
    *&__dst.st_uid = v28 | 0x8000000000000000;
    *&__dst.st_dev = p_dst;
  }

  v30 = *v7;
  if (v25 >= 0)
  {
    v31 = (v1 + 72);
  }

  else
  {
    v31 = *v7;
  }

  memmove(p_dst, v31, v26);
LABEL_50:
  *&p_dst[v26] = 47;
  if (v25 < 0)
  {
    operator delete(*v7);
  }

  *v7 = *&__dst.st_dev;
  *(v1 + 88) = *&__dst.st_uid;
  v32.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v32.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v32;
  *__dst.st_qspare = v32;
  __dst.st_birthtimespec = v32;
  *&__dst.st_size = v32;
  __dst.st_mtimespec = v32;
  __dst.st_ctimespec = v32;
  *&__dst.st_uid = v32;
  __dst.st_atimespec = v32;
  *&__dst.st_dev = v32;
  if (*(v1 + 95) >= 0)
  {
    v33 = (v1 + 72);
  }

  else
  {
    v33 = *(v1 + 72);
  }

  if (!stat(v33, &__dst))
  {
    v35 = *(v1 + 95) >= 0 ? (v1 + 72) : *(v1 + 72);
    v36 = opendir(v35);
    v37 = v36;
    if (v36)
    {
      v38 = readdir(v36);
      closedir(v37);
      if (v38)
      {
        *&v39 = 0xAAAAAAAAAAAAAAAALL;
        *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v91 = v39;
        v92 = v39;
        *&v89[0].__locale_ = v39;
        v90 = v39;
        HIBYTE(v78[0].__end_cap_.__value_) = 10;
        strcpy(v78, "([0-9]{8})");
        v40 = *(v1 + 119);
        if (v40 >= 0)
        {
          v41 = (v1 + 96);
        }

        else
        {
          v41 = *(v1 + 96);
        }

        if (v40 >= 0)
        {
          v42 = *(v1 + 119);
        }

        else
        {
          v42 = *(v1 + 104);
        }

        v43 = std::string::append(v78, v41, v42);
        v44 = *&v43->__r_.__value_.__l.__data_;
        *&__dst.st_uid = *(&v43->__r_.__value_.__l + 2);
        *&__dst.st_dev = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v89, &__dst, 0);
        if (SHIBYTE(__dst.st_gid) < 0)
        {
          operator delete(*&__dst.st_dev);
        }

        if (SHIBYTE(v78[0].__end_cap_.__value_) < 0)
        {
          operator delete(v78[0].__begin_);
        }

        v86 = 0;
        v87 = 0;
        v88 = 0;
        support::fs::readDir((v1 + 72), &v86);
        *&v45 = 0xAAAAAAAAAAAAAAAALL;
        *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v81 = 0xAAAAAAAAAAAAAA00;
        v78[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
        v84 = v45;
        v79 = 0;
        v80 = 0;
        v82 = 0;
        v83 = 0;
        LOBYTE(v84) = 0;
        BYTE8(v84) = 0;
        v85 = 0;
        memset(v78, 0, 41);
        v47 = v86;
        v46 = v87;
        if (v86 == v87)
        {
          *(v1 + 152) = 0;
          v70 = v86;
          if (v86)
          {
            goto LABEL_121;
          }

          goto LABEL_130;
        }

        v76 = 0;
        v48 = 0;
        v49 = 1;
        while (1)
        {
          *&v50 = 0xAAAAAAAAAAAAAAAALL;
          *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&__dst.st_birthtimespec.tv_nsec = v50;
          __dst.st_ctimespec.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          __dst.st_atimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          memset(&__dst.st_mtimespec, 0, 17);
          memset(&__dst.st_ctimespec.tv_nsec, 0, 17);
          LOBYTE(__dst.st_size) = 0;
          __dst.st_blocks = 0;
          memset(&__dst, 0, 40);
          v51 = *(v47 + 23);
          if ((v51 & 0x80u) == 0)
          {
            v52 = v47;
          }

          else
          {
            v52 = *v47;
          }

          if ((v51 & 0x80u) != 0)
          {
            v51 = *(v47 + 8);
          }

          v53 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v89, v52, (v52 + v51), &__dst, 0);
          v54 = *(v47 + 23);
          if ((v54 & 0x80u) == 0)
          {
            v55 = v47;
          }

          else
          {
            v55 = *v47;
          }

          if ((v54 & 0x80u) != 0)
          {
            v54 = *(v47 + 8);
          }

          std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v78, v55, (v55 + v54), &__dst.st_dev, 0);
          if (*&__dst.st_dev)
          {
            __dst.st_ino = *&__dst.st_dev;
            operator delete(*&__dst.st_dev);
          }

          if (!v53)
          {
            goto LABEL_78;
          }

          memset(&__dst, 170, 24);
          p_matched = &v78[0].__begin_->matched;
          if (v78[0].__end_ == v78[0].__begin_)
          {
            p_matched = &v78[1].__end_cap_;
          }

          if (*p_matched != 1)
          {
            memset(&__dst, 0, 24);
            goto LABEL_105;
          }

          v57 = v1;
          v58 = v49;
          begin = &v78[1];
          if (v78[0].__end_ != v78[0].__begin_)
          {
            begin = v78[0].__begin_;
          }

          i = begin->first.__i_;
          p_i = &v78[0].__begin_->second.__i_;
          if (v78[0].__end_ == v78[0].__begin_)
          {
            p_i = &v78[1].__end_;
          }

          v62 = *p_i;
          v63 = *p_i - i;
          if (v63 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v63 > 0x16)
          {
            break;
          }

          HIBYTE(__dst.st_gid) = *p_i - i;
          v64 = &__dst;
          if (v62 != i)
          {
            goto LABEL_102;
          }

LABEL_103:
          v64[v63] = 0;
          v49 = v58;
          v1 = v57;
LABEL_105:
          v65 = std::stoul(&__dst, 0, 10);
          v66 = v76;
          if (v49)
          {
            v66 = v65;
          }

          if (v66 >= v65)
          {
            v66 = v65;
          }

          v76 = v66;
          if (v48 < v65)
          {
            v48 = v65 + 1;
          }

          if (SHIBYTE(__dst.st_gid) < 0)
          {
            operator delete(*&__dst.st_dev);
          }

          v49 = 0;
LABEL_78:
          v47 += 24;
          if (v47 == v46)
          {
            v69 = v78[0].__begin_;
            *(v1 + 152) = v48;
            *(v1 + 156) = v76;
            if (v69)
            {
              v78[0].__end_ = v69;
              operator delete(v69);
            }

            v70 = v86;
            if (v86)
            {
LABEL_121:
              v71 = v87;
              v72 = v70;
              if (v87 != v70)
              {
                do
                {
                  v73 = *(v71 - 1);
                  v71 -= 3;
                  if (v73 < 0)
                  {
                    operator delete(*v71);
                  }
                }

                while (v71 != v70);
                v72 = v86;
              }

              v87 = v70;
              operator delete(v72);
              v74 = v92;
              if (!v92)
              {
LABEL_133:
                std::locale::~locale(v89);
                goto LABEL_57;
              }

LABEL_131:
              if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v74->__on_zero_shared)(v74);
                std::__shared_weak_count::__release_weak(v74);
              }

              goto LABEL_133;
            }

LABEL_130:
            v74 = v92;
            if (!v92)
            {
              goto LABEL_133;
            }

            goto LABEL_131;
          }
        }

        v75 = v48;
        v67 = v46;
        if ((v63 | 7) == 0x17)
        {
          v68 = 25;
        }

        else
        {
          v68 = (v63 | 7) + 1;
        }

        v64 = operator new(v68);
        __dst.st_ino = v63;
        *&__dst.st_uid = v68 | 0x8000000000000000;
        *&__dst.st_dev = v64;
        v46 = v67;
        v48 = v75;
        if (v62 == i)
        {
          goto LABEL_103;
        }

LABEL_102:
        memmove(v64, i, v63);
        goto LABEL_103;
      }
    }
  }

  support::fs::createDir((v1 + 72), 0x1EDu, 1);
LABEL_57:
  CircularFileLogWriter::openNewLog_sync(v1);
  v34 = *MEMORY[0x1E69E9840];
}

void sub_1E523A6F4(_Unwind_Exception *a1)
{
  std::vector<std::string>::~vector[abi:ne200100]((v1 - 200));
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v1 - 176));
  _Unwind_Resume(a1);
}

void sub_1E523A710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E523A77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    JUMPOUT(0x1E523A78CLL);
  }

  JUMPOUT(0x1E523A790);
}

void CircularFileLogWriter::openNewLog_sync(CircularFileLogWriter *this)
{
  if (*(this + 5))
  {
    std::ostream::flush();
    v2 = *(this + 5);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    v3 = *(this + 5);
    *(this + 5) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = this + 160;
  v5 = this + 160;
  if (*(this + 183) < 0)
  {
    v5 = *v4;
  }

  unlink(v5);
  v6 = *(this + 38);
  *(this + 38) = v6 + 1;
  CircularFileLogWriter::generateFileName_sync(&v20, this, v6);
  v7 = *(this + 95);
  if (v7 >= 0)
  {
    v8 = this + 72;
  }

  else
  {
    v8 = *(this + 9);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 95);
  }

  else
  {
    v9 = *(this + 10);
  }

  v10 = std::string::insert(&v20, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v12 = operator new(0x238uLL);
  v12[58] = 0;
  v13 = MEMORY[0x1E69E5530] + 64;
  v12[52] = MEMORY[0x1E69E5530] + 64;
  v14 = *(MEMORY[0x1E69E54D0] + 16);
  v15 = *(MEMORY[0x1E69E54D0] + 8);
  *v12 = v15;
  *(v12 + *(v15 - 24)) = v14;
  v16 = (v12 + *(*v12 - 24));
  std::ios_base::init(v16, v12 + 1);
  v17 = MEMORY[0x1E69E5530] + 24;
  v16[1].__vftable = 0;
  v16[1].__fmtflags_ = -1;
  *v12 = v17;
  v12[52] = v13;
  MEMORY[0x1E6926FC0](v12 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v12 + *(*v12 - 24)), *(v12 + *(*v12 - 24) + 32) | 4);
  }

  v18 = *(this + 5);
  *(this + 5) = v12;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v12 = *(this + 5);
  }

  if (v12[16])
  {
    support::fs::getFileName(&v20);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v20;
    }

    else
    {
      v19 = v20.__r_.__value_.__r.__words[0];
    }

    if (*(this + 183) < 0)
    {
      v4 = *v4;
    }

    symlink(v19, v4);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  CircularFileLogWriter::clearOldLogs_sync(this);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E523AAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void CircularFileLogWriter::close(CircularFileLogWriter *this)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN21CircularFileLogWriter5closeEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_4;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21;
  block[4] = this + 8;
  block[5] = &v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t ___ZN21CircularFileLogWriter5closeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 152) = 0;
  result = *(v1 + 40);
  if (result)
  {
    std::ostream::flush();
    v3 = *(v1 + 40);
    if (std::filebuf::close())
    {
      result = *(v1 + 40);
      *(v1 + 40) = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
      result = *(v1 + 40);
      *(v1 + 40) = 0;
      if (!result)
      {
        return result;
      }
    }

    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void CircularFileLogWriter::clear(CircularFileLogWriter *this)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN21CircularFileLogWriter5clearEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_5;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21;
  block[4] = this + 8;
  block[5] = &v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

BOOL ___ZN21CircularFileLogWriter5clearEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 152) = 0;
  if (*(v1 + 40))
  {
    std::ostream::flush();
    v2 = *(v1 + 40);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    v3 = *(v1 + 40);
    *(v1 + 40) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = (v1 + 160);
  if (*(v1 + 183) < 0)
  {
    unlink(*v4);
    v5 = (v1 + 72);
  }

  else
  {
    unlink(v4);
    v5 = (v1 + 72);
  }

  return support::fs::removeDir(v5);
}

void CircularFileLogWriter::write(uint64_t a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1174405120;
  v5[2] = ___ZN21CircularFileLogWriter5writeENSt3__110shared_ptrIN3ctu10LogMessageEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_6;
  v3 = *a2;
  v2 = a2[1];
  v5[4] = a1;
  v5[5] = v3;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<CircularFileLogWriter>::execute_wrapped((a1 + 8), v5);
  v4 = v6;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void ___ZN21CircularFileLogWriter5writeENSt3__110shared_ptrIN3ctu10LogMessageEEE_block_invoke(void *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v45 = v2;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = *(v1 + 5);
    if (v4)
    {
      if (*(v4 + 128))
      {
        v5 = *(v2 + 71);
        if ((v5 & 0x8000000000000000) == 0)
        {
          v6 = v5 + 1;
          if ((v5 + 1) < 2)
          {
            goto LABEL_8;
          }

LABEL_15:
          v9 = *(v2 + 8);
          v55 = 0xAAAAAAAAAAAAAAAALL;
          *&v10 = 0xAAAAAAAAAAAAAAAALL;
          *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v54[7] = v10;
          v54[8] = v10;
          v54[5] = v10;
          v54[6] = v10;
          v54[3] = v10;
          v54[4] = v10;
          v54[1] = v10;
          v54[2] = v10;
          v53 = v10;
          v54[0] = v10;
          *__p = v10;
          v52 = v10;
          v49 = v10;
          v50 = v10;
          v47 = v10;
          v48 = v10;
          v46 = v10;
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v46);
          v11.n128_f64[0] = v9 / 1000000000.0;
          v12 = v47;
          *(&v47 + *(v47 - 24) + 8) |= 4u;
          *(&v47 + *(v12 - 24) + 16) = 3;
          v13 = MEMORY[0x1E69270C0](&v47, v11);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " [", 2);
          v15 = *(v2 + 16);
          LOBYTE(__dst.__locale_) = ctu::asChar();
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &__dst, 1);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "] ", 2);
          v18 = *(v2 + 47);
          if (v18 >= 0)
          {
            v19 = v2 + 24;
          }

          else
          {
            v19 = *(v2 + 24);
          }

          if (v18 >= 0)
          {
            v20 = *(v2 + 47);
          }

          else
          {
            v20 = *(v2 + 32);
          }

          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ": ", 2);
          v22 = &v47 + *(v47 - 24);
          if ((v22[32] & 5) != 0)
          {
            v23 = v6 - 1;
            v24 = *(v1 + 16);
            if (v6 - 1 > v24)
            {
              goto LABEL_64;
            }
          }

          else
          {
            (*(**(v22 + 5) + 32))(&__dst);
            v23 = v59 + v6;
            v24 = *(v1 + 16);
            if (v59 + v6 > v24)
            {
              goto LABEL_64;
            }
          }

          v25 = *(v1 + 5) + *(**(v1 + 5) - 24);
          if ((*(v25 + 32) & 5) != 0)
          {
            if (v23 - 1 <= v24)
            {
LABEL_30:
              v26 = *(v2 + 71);
              if (v26 < 0)
              {
                v27 = *(v2 + 56);
                if (v27)
                {
LABEL_34:
                  v28 = (v2 + 48);
                  v29 = v27 - 1;
                  if ((v26 & 0x80000000) != 0)
                  {
                    v28 = *v28;
                  }

                  *(v28 + v29);
                  v30 = *(v1 + 5);
                  v31 = BYTE8(v53);
                  if ((BYTE8(v53) & 0x10) == 0)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_40;
                }
              }

              else if (*(v2 + 71))
              {
                v27 = *(v2 + 71);
                goto LABEL_34;
              }

              v30 = *(v1 + 5);
              v31 = BYTE8(v53);
              if ((BYTE8(v53) & 0x10) == 0)
              {
LABEL_37:
                if ((v31 & 8) == 0)
                {
                  v32 = 0;
                  HIBYTE(v58) = 0;
                  p_dst = &__dst;
                  goto LABEL_53;
                }

                v35 = &v48 + 1;
                v34 = *(&v49 + 1);
LABEL_44:
                v36 = *v35;
                v32 = v34 - *v35;
                if (v32 >= 0x7FFFFFFFFFFFFFF8)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v32 >= 0x17)
                {
                  if ((v32 | 7) == 0x17)
                  {
                    v37 = 25;
                  }

                  else
                  {
                    v37 = (v32 | 7) + 1;
                  }

                  p_dst = operator new(v37);
                  v57 = v32;
                  v58 = v37 | 0x8000000000000000;
                  __dst.__locale_ = p_dst;
                }

                else
                {
                  HIBYTE(v58) = v34 - *v35;
                  p_dst = &__dst;
                  if (!v32)
                  {
                    goto LABEL_53;
                  }
                }

                memmove(p_dst, v36, v32);
LABEL_53:
                *(p_dst + v32) = 0;
                if (v58 >= 0)
                {
                  locale = &__dst;
                }

                else
                {
                  locale = __dst.__locale_;
                }

                if (v58 >= 0)
                {
                  v39 = HIBYTE(v58);
                }

                else
                {
                  v39 = v57;
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, locale, v39);
                if (SHIBYTE(v58) < 0)
                {
                  operator delete(__dst.__locale_);
                }

                v40 = *(v1 + 5);
                if ((*(v45 + 71) & 0x8000000000000000) != 0)
                {
                  v41 = *(v45 + 48);
                  v42 = *(v45 + 56);
                }

                std::ostream::write();
                std::ios_base::getloc((*(v1 + 5) + *(**(v1 + 5) - 24)));
                v43 = std::locale::use_facet(&__dst, MEMORY[0x1E69E5318]);
                (v43->__vftable[2].~facet_0)(v43, 10);
                std::locale::~locale(&__dst);
                std::ostream::put();
                std::ostream::flush();
LABEL_64:
                *&v46 = *MEMORY[0x1E69E54D8];
                v44 = *(MEMORY[0x1E69E54D8] + 72);
                *(&v46 + *(v46 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
                *&v47 = v44;
                *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
                if (SHIBYTE(v52) < 0)
                {
                  operator delete(__p[1]);
                }

                *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
                std::locale::~locale(&v48);
                std::iostream::~basic_iostream();
                MEMORY[0x1E69273B0](v54);
                if (!v3)
                {
                  goto LABEL_10;
                }

                goto LABEL_9;
              }

LABEL_40:
              v34 = v53;
              if (v53 < *(&v50 + 1))
              {
                *&v53 = *(&v50 + 1);
                v34 = *(&v50 + 1);
              }

              v35 = &v50;
              goto LABEL_44;
            }
          }

          else
          {
            (*(**(v25 + 40) + 32))(&__dst);
            if (v59 + v23 <= *(v1 + 16))
            {
              goto LABEL_30;
            }
          }

          CircularFileLogWriter::openNewLog_sync(v1);
          goto LABEL_30;
        }

        v6 = *(v2 + 56) + 1;
        if (v6 >= 2)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_8:
  if (!v3)
  {
LABEL_10:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

LABEL_9:
  if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_10;
  }

  (v3->__on_zero_shared)(v3);
  v8 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_weak(v3);
}

void sub_1E523B63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a11, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69273B0](&a27);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__110shared_ptrIN3ctu10LogMessageEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSNSt3__110shared_ptrIN3ctu10LogMessageEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void CircularFileLogWriter::writeBuffer(CircularFileLogWriter *this, const char *a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN21CircularFileLogWriter11writeBufferEPKcm_block_invoke;
  v5[3] = &__block_descriptor_tmp_7;
  v5[4] = this;
  v5[5] = a2;
  v5[6] = a3;
  v6 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21;
  block[4] = this + 8;
  block[5] = &v6;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void *___ZN21CircularFileLogWriter11writeBufferEPKcm_block_invoke(void *result)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = result[5];
  v1 = result[6];
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    goto LABEL_24;
  }

  v4 = result[4];
  v5 = *(v4 + 40);
  if (!v5 || !v5[16])
  {
    goto LABEL_24;
  }

  if (*(v4 + 136) == 1)
  {
    while (1)
    {
      v8 = v5 + *(*v5 - 24);
      if ((v8[32] & 5) != 0)
      {
        v9 = *(v4 + 128);
        if (v1 - 1 <= v9)
        {
          goto LABEL_22;
        }
      }

      else
      {
        (*(**(v8 + 5) + 32))(v14);
        v9 = *(v4 + 128);
        if (v15 + v1 <= v9)
        {
          goto LABEL_22;
        }
      }

      v10 = *(v4 + 40) + *(**(v4 + 40) - 24);
      if ((*(v10 + 32) & 5) != 0)
      {
        break;
      }

      (*(**(v10 + 40) + 32))(v14);
      v6 = v15;
      if (v9 != v15)
      {
        v11 = *(v4 + 40);
        goto LABEL_10;
      }

LABEL_11:
      CircularFileLogWriter::openNewLog_sync(v4);
      v5 = *(v4 + 40);
    }

    v6 = -1;
LABEL_10:
    v7 = v9 - v6;
    std::ostream::write();
    v2 += v7;
    v1 -= v7;
    goto LABEL_11;
  }

  v12 = v5 + *(*v5 - 24);
  if ((v12[32] & 5) != 0)
  {
    if ((v1 - 1) <= *(v4 + 128))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  (*(**(v12 + 5) + 32))(v14);
  if ((v15 + v1) > *(v4 + 128))
  {
LABEL_21:
    CircularFileLogWriter::openNewLog_sync(v4);
  }

LABEL_22:
  result = *(v4 + 40);
  if (result)
  {
    result = std::ostream::write();
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void CircularFileLogWriter::clearOldLogs_sync(CircularFileLogWriter *this)
{
  v1 = *(this + 39);
  if (*(this + 18) < (*(this + 38) - v1))
  {
    v3 = this + 72;
    do
    {
      *(this + 39) = v1 + 1;
      CircularFileLogWriter::generateFileName_sync(&v12, this, v1);
      v4 = *(this + 95);
      if (v4 >= 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = *(this + 9);
      }

      if (v4 >= 0)
      {
        v6 = *(this + 95);
      }

      else
      {
        v6 = *(this + 10);
      }

      v7 = std::string::insert(&v12, 0, v5, v6);
      v13 = *v7;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      v9 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
      v10 = v13.__r_.__value_.__r.__words[0];
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v13;
      }

      else
      {
        v11 = v13.__r_.__value_.__r.__words[0];
      }

      if (remove(v11, v8))
      {
        unlink(v11);
      }

      if (v9 < 0)
      {
        operator delete(v10);
      }

      v1 = *(this + 39);
    }

    while (*(this + 18) < (*(this + 38) - v1));
  }
}

void sub_1E523BB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 24);
  v8 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x1E69E5560] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x1E69272B0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void sub_1E523BF98(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v1);
  _Unwind_Resume(a1);
}

void CircularFileLogWriter::generateFileName_sync(std::string *this, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v5;
  v29 = v5;
  *__str = v5;
  v27 = v5;
  snprintf(__str, 0x40uLL, "%08zu", a3);
  v6 = *(a2 + 71);
  if (v6 >= 0)
  {
    v7 = *(a2 + 71);
  }

  else
  {
    v7 = *(a2 + 56);
  }

  v8 = v7 + 1;
  if (v7 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 < 0x17)
  {
    memset(&v24, 0, sizeof(v24));
    v10 = &v24;
    *(&v24.__r_.__value_.__s + 23) = v7 + 1;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v8 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v8 | 7) + 1;
    }

    v10 = operator new(v9);
    v24.__r_.__value_.__l.__size_ = v7 + 1;
    v24.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v24.__r_.__value_.__r.__words[0] = v10;
  }

  if (v6 >= 0)
  {
    v11 = (a2 + 48);
  }

  else
  {
    v11 = *(a2 + 48);
  }

  memmove(v10, v11, v7);
LABEL_15:
  *&v10[v7] = 46;
  v12 = strlen(__str);
  v13 = std::string::append(&v24, __str, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v17 = *(a2 + 96);
  v16 = a2 + 96;
  v15 = v17;
  v18 = *(v16 + 23);
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  v21 = std::string::append(&v25, v19, v20);
  *this = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    operator delete(v24.__r_.__value_.__l.__data_);
    v23 = *MEMORY[0x1E69E9840];
    return;
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1E523C1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void CircularFileLogWriter::~CircularFileLogWriter(void **this)
{
  CircularFileLogWriter::~CircularFileLogWriter(this);

  operator delete(v1);
}

{
  *this = &unk_1F5EFE5D8;
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
    if ((*(this + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[12]);
  if ((*(this + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(this[9]);
  if ((*(this + 71) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = this[5];
    this[5] = 0;
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  operator delete(this[6]);
  v2 = this[5];
  this[5] = 0;
  if (v2)
  {
LABEL_6:
    (*(*v2 + 8))(v2);
  }

LABEL_7:
  v3 = this[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = this[3];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E876DC08, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E876DC10, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

atomic_ullong *std::shared_ptr<CircularFileLogWriter>::shared_ptr[abi:ne200100]<CircularFileLogWriter,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_1F5EFE6C8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_1E523C85C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1}::operator() const(CircularFileLogWriter*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CircularFileLogWriter *,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter *)#1},std::allocator<CircularFileLogWriter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CircularFileLogWriter *,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter *)#1},std::allocator<CircularFileLogWriter>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1}::operator() const(CircularFileLogWriter*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<CircularFileLogWriter>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_22_0;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

void __copy_helper_block_e8_32b40c50_ZTSNSt3__110shared_ptrIK21CircularFileLogWriterEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 7);
  v4 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32b40c50_ZTSNSt3__110shared_ptrIK21CircularFileLogWriterEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  _Block_object_dispose(v2, 7);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(uint64_t a1, uint64_t a2, int a3)
{
  v6 = MEMORY[0x1E69272B0]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x1E69E5318]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x1E69E5340]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(a1, v8, &v8[v7]) != &v8[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_1E523CCD4(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_1F5EFE748;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_1F5EFE7A0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
LABEL_4:
      if (v10)
      {
        if (v10 != 16)
        {
          if (v10 != 32)
          {
LABEL_27:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
          }

          goto LABEL_15;
        }

        return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      else
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }
    }
  }

  else
  {
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
      goto LABEL_4;
    }
  }

  switch(v10)
  {
    case 0x40u:
LABEL_15:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x80u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x100u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(a1, a2, a3);
    default:
      goto LABEL_27;
  }
}

void sub_1E523CF44(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E6926F10](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v7, a3);
    if (v8 != v7)
    {
      continue;
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 28);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
    if (v8 == v11)
    {
      break;
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v11, a3, v9, (v10 + 1), (*(a1 + 28) + 1));
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v12 = operator new(0x10uLL);
    v13 = *(a1 + 56);
    v14 = *(v13 + 8);
    v12[1] = v14;
    *(v13 + 8) = v12;
    *(a1 + 56) = v12;
  }

LABEL_11:
  if (v8 != a3)
  {
    if (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v22 = *(a1 + 56);
      v23 = (&v8->__traits_.__loc_.__locale_ + 1);
      v24 = &v8->__traits_.__loc_.__locale_ + 1;
      while (1)
      {
        v8 = v24;
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v24, a3);
        if (v8 == v24)
        {
          v25 = *(a1 + 56);
          v26 = *(a1 + 28);
          v27 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
          if (v8 == v27)
          {
LABEL_8:
            if (v8 == v23)
            {
              v28 = operator new(0x10uLL);
              v29 = *(a1 + 56);
              v30 = *(v29 + 8);
              v28[1] = v30;
              *(v29 + 8) = v28;
              *(a1 + 56) = v28;
            }

            v15 = operator new(0x18uLL);
            v16 = *(v22 + 8);
            v15[1] = *(v6 + 8);
            v15[2] = v16;
            *v15 = &unk_1F5EFED60;
            *(v6 + 8) = v15;
            *(v22 + 8) = 0;
            v17 = operator new(0x10uLL);
            v18 = *(a1 + 56);
            v19 = *(v18 + 8);
            v17[1] = v19;
            *(v22 + 8) = v17;
            *(v18 + 8) = 0;
            v20 = operator new(0x10uLL);
            v21 = *(v22 + 8);
            *v20 = &unk_1F5EFEDA8;
            v20[1] = v21;
            *(v18 + 8) = v20;
            *(a1 + 56) = *(v22 + 8);
            goto LABEL_11;
          }

          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v27, a3, v25, (v26 + 1), (*(a1 + 28) + 1));
        }

        if (v24 == v8)
        {
          goto LABEL_8;
        }
      }
    }

    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      v7 = operator new(0x18uLL);
      v8 = (*(a1 + 24) & 0x5F0) == 1024;
      v9 = *(a1 + 56);
      v10 = *(v9 + 8);
      *v7 = &unk_1F5EFE898;
      v7[1] = v10;
      *(v7 + 16) = v8;
      *(v9 + 8) = v7;
      *(a1 + 56) = v7;
      result = a2 + 1;
    }

    if (result != a3)
    {
      do
      {
        if (result == a3)
        {
          v11 = a3;
          goto LABEL_13;
        }

        v11 = result;
        v12 = *(a1 + 56);
        v13 = *(a1 + 28);
        v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, result, a3);
        if (v11 == v14)
        {
          break;
        }

        result = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v14, a3, v12, (v13 + 1), (*(a1 + 28) + 1));
      }

      while (v11 != result);
      if (v11 + 1 == a3 && *v11 == 36)
      {
        v15 = operator new(0x18uLL);
        v16 = (*(a1 + 24) & 0x5F0) == 1024;
        v17 = *(a1 + 56);
        v18 = *(v17 + 8);
        *v15 = &unk_1F5EFE8E0;
        v15[1] = v18;
        *(v15 + 16) = v16;
        *(v17 + 8) = v15;
        *(a1 + 56) = v15;
        ++v11;
      }

LABEL_13:
      if (v11 != a3)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
LABEL_12:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 == a3)
  {
    return a3;
  }

  while (*v8 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v8 + 1;
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
    if (v8 + 1 == v11)
    {
      goto LABEL_12;
    }

    do
    {
      v8 = v11;
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v11, a3);
    }

    while (v8 != v11);
    if (v8 == v10)
    {
      goto LABEL_12;
    }

    v12 = operator new(0x18uLL);
    v13 = *(v9 + 8);
    v12[1] = *(v6 + 8);
    v12[2] = v13;
    *v12 = &unk_1F5EFED60;
    *(v6 + 8) = v12;
    *(v9 + 8) = 0;
    v14 = operator new(0x10uLL);
    v15 = *(a1 + 56);
    v16 = *(v15 + 8);
    v14[1] = v16;
    *(v9 + 8) = v14;
    *(v15 + 8) = 0;
    v17 = operator new(0x10uLL);
    v18 = *(v9 + 8);
    *v17 = &unk_1F5EFEDA8;
    v17[1] = v18;
    *(v15 + 8) = v17;
    *(a1 + 56) = *(v9 + 8);
    if (v8 == a3)
    {
      return a3;
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_1F5EFED60;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_1F5EFEDA8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_1F5EFED60;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_1F5EFEDA8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E6926F10](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E538E680)
  {
    if (((v2 & 0x80000001E538E680 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E538E680))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538E680 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(this->__first_);
  }
}

{
  first = this->__first_;
  if (first)
  {
    v3 = this;
    (first->~__node_0)(this->__first_);
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      v20 = a2 + 1;
      if (a2 + 1 != a3)
      {
        v21 = a2[1];
        if (v21 == 66)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, 1);
        }

        else
        {
          if (v21 != 98)
          {
            return a2;
          }

          v23 = operator new(0x30uLL);
          v24 = *(*(a1 + 56) + 8);
          *v23 = &unk_1F5EFE928;
          *(v23 + 1) = v24;
          std::locale::locale(v23 + 2, a1);
          *(v23 + 24) = *(a1 + 8);
          v23[40] = 0;
          *(*(a1 + 56) + 8) = v23;
          *(a1 + 56) = v23;
        }

        return v20 + 1;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_1F5EFE898;
LABEL_17:
    *v15 = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(v13 + 56) = v15;
    return v14 + 1;
  }

  if (v3 == 36)
  {
    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_1F5EFE8E0;
    goto LABEL_17;
  }

  if (v3 != 40)
  {
    return a2;
  }

  v4 = a2 + 1;
  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    return a2;
  }

  v5 = a2[2];
  if (v5 == 33)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v31.__loop_count_ = v25;
    *&v31.__start_.__cntrl_ = v25;
    *&v31.__traits_.__loc_.__locale_ = v25;
    *&v31.__traits_.__col_ = v25;
    v26 = a1;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
    v28 = v26;
    v31.__flags_ = v26->__flags_;
    v29 = v4 + 2;
    v30 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v29, a3);
    LODWORD(v26) = v31.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v28, &v31, 1, v28->__marked_count_);
    v28->__marked_count_ += v26;
    if (v12 == v30 || *v12 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_27;
  }

  if (v5 != 61)
  {
    return a2;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v31.__loop_count_ = v6;
  *&v31.__start_.__cntrl_ = v6;
  *&v31.__traits_.__loc_.__locale_ = v6;
  *&v31.__traits_.__col_ = v6;
  v7 = a1;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
  v9 = v7;
  v31.__flags_ = v7->__flags_;
  v10 = v4 + 2;
  v11 = a3;
  v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v10, a3);
  LODWORD(v7) = v31.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v9, &v31, 0, v9->__marked_count_);
  v9->__marked_count_ += v7;
  if (v12 == v11 || *v12 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_27:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v31.__traits_.__loc_);
  return v12 + 1;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  locale_low = LOBYTE(a2->__traits_.__loc_.__locale_);
  if (locale_low > 0x3E)
  {
    if (LOBYTE(a2->__traits_.__loc_.__locale_) > 0x5Bu)
    {
      if (locale_low == 92)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      if (locale_low != 123)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      goto LABEL_32;
    }

    if (locale_low != 91)
    {
      if (locale_low != 63)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

LABEL_32:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  if (locale_low != 40)
  {
    if (locale_low == 46)
    {
      v4 = a1;
      v5 = a2;
      v6 = operator new(0x10uLL);
      v7 = *(v4 + 56);
      v8 = *(v7 + 8);
      *v6 = &unk_1F5EFE9B8;
      v6[1] = v8;
      *(v7 + 8) = v6;
      *(v4 + 56) = v6;
      return (&v5->__traits_.__loc_.__locale_ + 1);
    }

    if (locale_low - 42 >= 2)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, a2, a3);
    }

    goto LABEL_32;
  }

  if ((&a2->__traits_.__loc_.__locale_ + 1) == a3)
  {
LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  v10 = a1;
  if ((&a2->__traits_.__loc_.__locale_ + 2) != a3 && BYTE1(a2->__traits_.__loc_.__locale_) == 63 && BYTE2(a2->__traits_.__loc_.__locale_) == 58)
  {
    ++*(a1 + 36);
    v11 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
    if (v12 != v11 && LOBYTE(v12->__traits_.__loc_.__locale_) == 41)
    {
      --*(v10 + 36);
      return (&v12->__traits_.__loc_.__locale_ + 1);
    }

    goto LABEL_33;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    v16 = *(a1 + 28);
  }

  else
  {
    v13 = a3;
    v14 = operator new(0x18uLL);
    a3 = v13;
    v15 = v14;
    a1 = v10;
    v16 = *(v10 + 28) + 1;
    *(v10 + 28) = v16;
    v17 = *(v10 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_1F5EFEBF8;
    v15[1] = v18;
    *(v15 + 4) = v16;
    *(v17 + 8) = v15;
    *(v10 + 56) = v15;
  }

  ++*(a1 + 36);
  v19 = a3;
  v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
  if (v20 == v19)
  {
    goto LABEL_33;
  }

  v21 = v20;
  if (LOBYTE(v20->__traits_.__loc_.__locale_) != 41)
  {
    goto LABEL_33;
  }

  v22 = v10;
  if ((*(v10 + 24) & 2) == 0)
  {
    v23 = operator new(0x18uLL);
    v22 = v10;
    v24 = *(v10 + 56);
    v25 = *(v24 + 8);
    *v23 = &unk_1F5EFEC40;
    v23[1] = v25;
    *(v23 + 4) = v16;
    *(v24 + 8) = v23;
    *(v10 + 56) = v23;
  }

  --*(v22 + 36);
  return (&v21->__traits_.__loc_.__locale_ + 1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = *(a1 + 24) & 0x1F0;
  v8 = *a2;
  if (v8 > 0x3E)
  {
    if (v8 == 63)
    {
      v6 = a2 + 1;
      if (v7)
      {
        v19 = 1;
      }

      else
      {
        v19 = v6 == a3;
      }

      if (!v19 && *v6 == 63)
      {
        v6 = a2 + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v9 = 0;
        v16 = 1;
        v17 = 0;
        goto LABEL_72;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      v16 = 1;
      goto LABEL_71;
    }

    v6 = a2;
    if (v8 != 123)
    {
      return v6;
    }

    v10 = a2 + 1;
    if (a2 + 1 != a3)
    {
      v11 = *v10;
      if ((v11 & 0xF8) == 0x30 || (v11 & 0xFE) == 0x38)
      {
        v12 = v11 - 48;
        v13 = a2 + 2;
        if (a2 + 2 == a3)
        {
LABEL_19:
          v13 = a3;
        }

        else
        {
          while (1)
          {
            v14 = *v13;
            if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
            {
              break;
            }

            if (v12 >= 214748364)
            {
              goto LABEL_74;
            }

            v12 = v14 + 10 * v12 - 48;
            if (++v13 == a3)
            {
              goto LABEL_19;
            }
          }
        }

        if (v13 != v10)
        {
          if (v13 != a3)
          {
            v15 = *v13;
            if (v15 != 44)
            {
              if (v15 == 125)
              {
                v6 = v13 + 1;
                if (!v7 && v6 != a3 && *v6 == 63)
                {
                  v9 = v12;
                  v6 = v13 + 2;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  v16 = v12;
                  v17 = 0;
LABEL_72:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v9, v16, a4, __mexp_begin, __mexp_end, v17);
                  return v6;
                }

                v9 = v12;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                v16 = v12;
LABEL_71:
                v17 = 1;
                goto LABEL_72;
              }

              goto LABEL_74;
            }

            v20 = v13 + 1;
            if (v13 + 1 == a3)
            {
              goto LABEL_74;
            }

            v21 = *v20;
            if (v21 == 125)
            {
              v6 = v13 + 2;
              if (!v7 && v6 != a3 && *v6 == 63)
              {
                v9 = v12;
                v6 = v13 + 3;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                goto LABEL_34;
              }

              v9 = v12;
              __mexp_begin = __mexp_begin;
              __mexp_end = __mexp_end;
LABEL_43:
              v16 = -1;
              goto LABEL_71;
            }

            if (v20 != a3 && ((v21 & 0xF8) == 0x30 || (v21 & 0xFE) == 0x38))
            {
              v22 = v21 - 48;
              v23 = v13 + 2;
              if (v23 == a3)
              {
LABEL_60:
                v23 = a3;
              }

              else
              {
                while (1)
                {
                  v24 = *v23;
                  if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
                  {
                    break;
                  }

                  if (v22 >= 214748364)
                  {
                    goto LABEL_74;
                  }

                  v22 = v24 + 10 * v22 - 48;
                  if (++v23 == a3)
                  {
                    goto LABEL_60;
                  }
                }
              }

              if (v23 != v20 && v23 != a3 && *v23 == 125)
              {
                if (v22 >= v12)
                {
                  v6 = v23 + 1;
                  if (!v7 && v6 != a3 && *v6 == 63)
                  {
                    v9 = v12;
                    v16 = v22;
                    v6 = v23 + 2;
                    __mexp_begin = __mexp_begin;
                    __mexp_end = __mexp_end;
                    v17 = 0;
                    goto LABEL_72;
                  }

                  v9 = v12;
                  v16 = v22;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  goto LABEL_71;
                }

                goto LABEL_74;
              }
            }
          }

          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
        }
      }
    }

LABEL_74:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v8 == 42)
  {
    v6 = a2 + 1;
    if (v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v6 == a3;
    }

    if (!v18 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      goto LABEL_34;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 0;
    goto LABEL_43;
  }

  v6 = a2;
  if (v8 == 43)
  {
    v6 = a2 + 1;
    if (!v7 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 1;
LABEL_34:
      v16 = -1;
      v17 = 0;
      goto LABEL_72;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 1;
    goto LABEL_43;
  }

  return v6;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(std::basic_regex<char> *this, BOOL a2)
{
  v4 = operator new(0x30uLL);
  first = this->__end_->__first_;
  *v4 = &unk_1F5EFE928;
  *(v4 + 1) = first;
  std::locale::locale(v4 + 2, &this->__traits_.__loc_);
  *(v4 + 24) = *&this->__traits_.__ct_;
  v4[40] = a2;
  this->__end_->__first_ = v4;
  this->__end_ = v4;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1)
{
  v2 = MEMORY[0x1E69272B0]();
  *(a1 + 8) = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x1E69E5340]);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(std::basic_regex<char> *this, const std::basic_regex<char> *a2, BOOL a3, unsigned int a4)
{
  v8 = operator new(0x58uLL);
  first = this->__end_->__first_;
  *v8 = &unk_1F5EFE970;
  *(v8 + 1) = first;
  std::locale::locale(v8 + 2, &a2->__traits_.__loc_);
  *(v8 + 24) = *&a2->__traits_.__ct_;
  *(v8 + 40) = *&a2->__flags_;
  cntrl = a2->__start_.__cntrl_;
  *(v8 + 7) = a2->__start_.__ptr_;
  *(v8 + 8) = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v8 + 9) = a2->__end_;
  *(v8 + 20) = a4;
  v8[84] = a3;
  this->__end_->__first_ = v8;
  this->__end_ = v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E6926F10](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFE928;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFE928;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFE970;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFE970;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(a1);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAA00;
  v24 = v4;
  v21 = 0;
  v23 = 0uLL;
  LOBYTE(v24) = 0;
  BYTE8(v24) = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v5 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  *&v19 = *(a2 + 24);
  *(&v19 + 1) = v19;
  LOBYTE(v20) = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v5, &v19);
  *(&v20 + 1) = v6;
  v21 = v6;
  LOBYTE(v22) = 0;
  v23 = v19;
  LOBYTE(v24) = v20;
  v25 = v6;
  BYTE8(v24) = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &begin[v15];
    v17 = v13 + 24 * v12;
    *v17 = v16->std::pair<const char *, const char *>;
    *(v17 + 16) = v16->matched;
    v15 = v14;
    ++v12;
    ++v14;
  }

  while (v11 > v15);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_1E523F02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v48 = 0;
  memset(&v48[8], 0, 85);
  v51 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v50, v48);
  if (*&v48[56])
  {
    *&v48[64] = *&v48[56];
    operator delete(*&v48[56]);
  }

  if (*&v48[32])
  {
    *&v48[40] = *&v48[32];
    operator delete(*&v48[32]);
  }

  v13 = v51;
  *(v51 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    std::vector<std::sub_match<char const*>>::__append((v13 - 4), v15 - v16, &__x);
    v13 = v51;
  }

  v18 = *(v13 - 5);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 4) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 4) = v18 + 16 * v19;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v13 - 40), v19 - v20);
    v13 = v51;
  }

  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v23 = (v13 - 6);
    v24 = *(v13 - 2);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          *&v30 = 0xAAAAAAAAAAAAAAAALL;
          *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v48[64] = v30;
          *&v48[80] = v30;
          *&v48[32] = v30;
          *&v48[48] = v30;
          *v48 = v30;
          *&v48[16] = v30;
          std::__state<char>::__state(v48, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 6);
          (*(**&v48[80] + 24))(*&v48[80], 0, v48);
          v31 = v51;
          if (v51 >= v52)
          {
            v51 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v50, v48);
            if (*&v48[56])
            {
              *&v48[64] = *&v48[56];
              operator delete(*&v48[56]);
            }
          }

          else
          {
            v32 = *&v48[16];
            *v51 = *v48;
            v31[1] = v32;
            *(v31 + 6) = 0;
            *(v31 + 7) = 0;
            *(v31 + 4) = 0;
            *(v31 + 5) = 0;
            v31[2] = *&v48[32];
            *(v31 + 6) = *&v48[48];
            *&v48[32] = 0;
            *&v48[40] = 0;
            *(v31 + 8) = 0;
            *(v31 + 9) = 0;
            *(v31 + 56) = *&v48[56];
            *(v31 + 9) = *&v48[72];
            memset(&v48[48], 0, 32);
            v33 = *&v48[80];
            *(v31 + 85) = *&v48[85];
            *(v31 + 10) = v33;
            v51 = v31 + 6;
          }

          if (*&v48[32])
          {
            *&v48[40] = *&v48[32];
            operator delete(*&v48[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v50;
    v13 = v51;
    ++v21;
    if (v50 == v51)
    {
      v17 = 0;
      if (!v50)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_60:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
  }

  v26 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v51;
    v28 = *(v51 - 5);
    if (v28)
    {
      *(v51 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v51 = v27 - 6;
    goto LABEL_17;
  }

  v39 = *a4;
  *v39 = a2;
  *(v39 + 8) = v26;
  *(v39 + 16) = 1;
  v40 = *(v13 - 8);
  v41 = *(v13 - 7) - v40;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    v43 = (v40 + 16);
    v44 = 1;
    do
    {
      v45 = v39 + 24 * v44;
      *v45 = *(v43 - 1);
      v46 = *v43;
      v43 += 24;
      *(v45 + 16) = v46;
    }

    while (v42 > v44++);
  }

  v17 = 1;
  v22 = v50;
  if (v50)
  {
LABEL_44:
    v34 = v51;
    v35 = v22;
    if (v51 != v22)
    {
      do
      {
        v36 = *(v34 - 5);
        if (v36)
        {
          *(v34 - 4) = v36;
          operator delete(v36);
        }

        v37 = *(v34 - 8);
        if (v37)
        {
          *(v34 - 7) = v37;
          operator delete(v37);
        }

        v34 -= 6;
      }

      while (v34 != v22);
      v35 = v50;
    }

    v51 = v22;
    operator delete(v35);
  }

  return v17;
}

void sub_1E523F4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__state<char>::~__state(&a9);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v9 - 104));
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  v8 = begin;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_29;
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= __n)
    {
      v10 = __n;
    }

    v11 = v9 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v10;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_29:
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    v13 = operator new(24 * v11);
    this->__begin_ = v13;
    this->__end_ = v13;
    this->__end_cap_.__value_ = &v13[v12];
    v14 = 24 * __n;
    v15 = &v13[__n];
    do
    {
      v13->std::pair<const char *, const char *> = __u->std::pair<const char *, const char *>;
      *&v13->matched = *&__u->matched;
      ++v13;
      v14 -= 24;
    }

    while (v14);
    goto LABEL_28;
  }

  end = this->__end_;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v17 >= __n)
  {
    v18 = __n;
  }

  else
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v18)
  {
    first = __u->first;
    second = __u->second;
    v21 = v18;
    matched = __u->matched;
    if (v18 == 1)
    {
      goto LABEL_32;
    }

    v8 = &begin[v18 & 0xFFFFFFFFFFFFFFFELL];
    v21 = v18 & 1;
    v23 = begin + 1;
    v24 = v18 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v23[-1].first = first;
      v23[-1].second = second;
      v23->first = first;
      v23->second = second;
      v23[-1].matched = matched;
      v23->matched = matched;
      v23 += 2;
      v24 -= 2;
    }

    while (v24);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_32:
      do
      {
        v8->first = first;
        v8->second = second;
        v8->matched = matched;
        ++v8;
        --v21;
      }

      while (v21);
    }
  }

  if (__n <= v17)
  {
    v15 = &begin[__n];
LABEL_28:
    this->__end_ = v15;
    return;
  }

  v25 = &end[__n - v17];
  v26 = 24 * __n - 24 * v17;
  do
  {
    v27 = __u->std::pair<const char *, const char *>;
    *&end->matched = *&__u->matched;
    end->std::pair<const char *, const char *> = v27;
    ++end;
    v26 -= 24;
  }

  while (v26);
  this->__end_ = v25;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E6926F10](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E6926F10](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void **std::vector<std::__state<char>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    if (v6 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(96 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[96 * v2];
  __p = v7;
  v19 = v8;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a2 + 32);
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v8 + 56) = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 9) = v10;
  *(v8 + 10) = v11;
  v20 = v8 + 96;
  v21 = &v7[96 * v6];
  std::vector<std::__state<char>>::__swap_out_circular_buffer(a1, &__p);
  v12 = a1[1];
  v13 = v19;
  while (1)
  {
    v14 = v20;
    if (v20 == v13)
    {
      break;
    }

    v20 -= 96;
    v15 = *(v14 - 5);
    if (v15)
    {
      *(v14 - 4) = v15;
      operator delete(v15);
    }

    v16 = *(v14 - 8);
    if (v16)
    {
      *(v14 - 7) = v16;
      operator delete(v16);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_1E523F9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::__swap_out_circular_buffer(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v9;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v10 = v7[10];
      *(v8 + 85) = *(v7 + 85);
      *(v8 + 80) = v10;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v5);
    do
    {
      v11 = v4[7];
      if (v11)
      {
        v4[8] = v11;
        operator delete(v11);
      }

      v12 = v4[4];
      if (v12)
      {
        v4[5] = v12;
        operator delete(v12);
      }

      v4 += 12;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::__state<char>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v13 = &end[__n];
      v14 = 24 * __n;
      do
      {
        v15 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v15;
        ++end;
        v14 -= 24;
      }

      while (v14);
      end = v13;
    }

    this->__end_ = end;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v6 = v5 + __n;
    if (v5 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v9 = __n;
      v10 = __x;
      v11 = this;
      v12 = operator new(24 * v8);
      this = v11;
      __x = v10;
      __n = v9;
    }

    else
    {
      v12 = 0;
    }

    v16 = &v12[24 * v5];
    v17 = 24 * __n;
    v18 = (v16 + 24 * __n);
    v19 = v16;
    do
    {
      v20 = __x->std::pair<const char *, const char *>;
      v19[1].first = *&__x->matched;
      *v19 = v20;
      v19 = (v19 + 24);
      v17 -= 24;
    }

    while (v17);
    v21 = &v12[24 * v8];
    begin = this->__begin_;
    v23 = (v16 + this->__begin_ - end);
    if (end != this->__begin_)
    {
      v24 = v23;
      do
      {
        v25 = begin->std::pair<const char *, const char *>;
        *&v24->matched = *&begin->matched;
        v24->std::pair<const char *, const char *> = v25;
        ++v24;
        ++begin;
      }

      while (begin != end);
      begin = this->__begin_;
    }

    this->__begin_ = v23;
    this->__end_ = v18;
    this->__end_cap_.__value_ = v21;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 16 * __n;
      bzero(this->__end_, 16 * __n);
      end = (end + v12);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 4) + __n;
    if (v7 >> 60)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = __n;
      v11 = operator new(16 * v9);
      __n = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = __n;
    bzero(&v11[v6 >> 4], 16 * __n);
    memcpy(v11, begin, v6);
    this->__begin_ = v11;
    this->__end_ = &v11[(v6 >> 4) + v13];
    this->__end_cap_.__value_ = &v11[v9];
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::__state<char>::__state(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = 0;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v8);
    *(a1 + 32) = v9;
    *(a1 + 40) = v9;
    *(a1 + 48) = &v9[v8];
    v10 = 24 * ((v8 - 24) / 0x18uLL) + 24;
    memcpy(v9, v7, v10);
    *(a1 + 40) = &v9[v10];
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v12 = *(a2 + 7);
  v11 = *(a2 + 8);
  v13 = v11 - v12;
  if (v11 != v12)
  {
    if (v13 < 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v14 = operator new(v11 - v12);
    *(a1 + 56) = v14;
    *(a1 + 64) = v14;
    *(a1 + 72) = &v14[v13];
    v15 = v13 & 0x7FFFFFFFFFFFFFF0;
    memcpy(v14, v12, v15);
    *(a1 + 64) = &v14[v15];
  }

  v16 = *(a2 + 10);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 80) = v16;
  return a1;
}

void sub_1E523FFD8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3 && LOBYTE(this->__traits_.__loc_.__locale_) == 92)
  {
    v4 = &this->__traits_.__loc_.__locale_ + 1;
    if (a3 == (&this->__traits_.__loc_.__locale_ + 1))
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v5 = *v4;
    v6 = v5 - 48;
    if (v5 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
      return (v3 + 2);
    }

    v7 = v3;
    if ((v5 - 49) <= 8)
    {
      v3 = (v3 + 2);
      if (v4 + 1 == a3)
      {
        v9 = a3;
        v3 = a3;
      }

      else
      {
        while (1)
        {
          locale_low = LOBYTE(v3->__traits_.__loc_.__locale_);
          if ((locale_low - 48) > 9)
          {
            break;
          }

          if (v6 >= 0x19999999)
          {
            goto LABEL_23;
          }

          v3 = (v3 + 1);
          v6 = locale_low + 10 * v6 - 48;
          if (v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        v9 = a3;
        if (!v6)
        {
LABEL_23:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v6 > a1->__marked_count_)
      {
        goto LABEL_23;
      }

      v10 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v6);
      a1 = v10;
      a3 = v9;
      if (v3 != v4)
      {
        return v3;
      }
    }

    v11 = a1;
    v12 = a3;
    v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v4, a3);
    v14 = v12;
    v3 = v13;
    if (v13 == v4)
    {
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(v11, v4, v14, 0);
      if (v15 == v4)
      {
        return v7;
      }

      else
      {
        return v15;
      }
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_21;
    }

    v9 = v7;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      v9 = v7 + 1;
    }

    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      do
      {
        v10 = v9;
        std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(a1, v9, a3, v8);
      }

      while (v10 != v9);
    }

    if (v10 == a3)
    {
      goto LABEL_21;
    }

    if (*v10 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      ++v10;
    }

    if (v10 == a3 || *v10 != 93)
    {
LABEL_21:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v10 + 1;
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E6926F10](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  v5 = (locale_low - 36) > 0x3A || ((1 << (locale_low - 36)) & 0x7800000080004F1) == 0;
  if (!v5 || (locale_low - 123) < 3)
  {
    return this;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale_low);
  return (&this->__traits_.__loc_.__locale_ + 1);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E6926F10](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v5 = *a2;
  if (v5 > 0x63)
  {
    if (v5 == 119)
    {
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_14;
    }

    if (v5 == 115)
    {
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_17;
    }

    if (v5 != 100)
    {
      return v3;
    }

    v7 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_12:
    *(*(a1 + 56) + 8) = v7;
    *(a1 + 56) = v7;
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v5)
  {
    case 'D':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_12;
    case 'S':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_17:
      *(*(a1 + 56) + 8) = v7;
      *(a1 + 56) = v7;
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_14:
      *(*(a1 + 56) + 8) = v6;
      *(a1 + 56) = v6;
      v6[40] |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 12;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 10;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v6 = a2;
            v8 = 0;
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        case 'c':
          v6 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_98;
          }

          if (*v6 < 65)
          {
            goto LABEL_98;
          }

          v7 = *v6;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_98;
          }

          v8 = v7 & 0x1F;
          if (!a4)
          {
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v8;
          *(a4 + 1) = 0;
          return v6 + 1;
        case '_':
          goto LABEL_98;
      }
    }

LABEL_76:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_98;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v6 = a2;
    v8 = v4;
LABEL_82:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v6 + 1;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 13;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 9;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

    goto LABEL_76;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v10 = a2[1];
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_98;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_98;
    }

    v11 = *a2;
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v12 = -87;
    }

    v5 = 16 * (v12 + v11);
LABEL_48:
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v13 = a2[1];
    v14 = -48;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      v13 |= 0x20u;
      if ((v13 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v14 = -87;
    }

    if (a2 + 2 != a3)
    {
      v15 = a2[2];
      v16 = -48;
      if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
      {
        goto LABEL_58;
      }

      v15 |= 0x20u;
      if ((v15 - 97) < 6)
      {
        v16 = -87;
LABEL_58:
        v17 = v15 + 16 * (v5 + v14 + v13) + v16;
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v17;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v18 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
        return v18 + 3;
      }
    }

LABEL_98:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_48;
    }

    goto LABEL_76;
  }

  if (!a4)
  {
    v6 = a2;
    v8 = 11;
    goto LABEL_82;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void sub_1E5240D7C(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E6926F10](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if (flags)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_1F5EFEAD8;
  }

  else
  {
    if ((flags & 8) == 0)
    {
      v5 = operator new(0x18uLL);
      end = this->__end_;
      first = end->__first_;
      v5->__vftable = &unk_1F5EFEB68;
      v5->__first_ = first;
      LODWORD(v5[1].__vftable) = __i;
      end->__first_ = v5;
      this->__end_ = v5;
      return;
    }

    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_1F5EFEB20;
  }

  v8->__locale_ = v10;
  std::locale::locale(v8 + 2, &this->__traits_.__loc_);
  *&v9[3].__locale_ = *&this->__traits_.__ct_;
  LODWORD(v9[5].__locale_) = __i;
  this->__end_->__first_ = v9;
  this->__end_ = v9;
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFEA00;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFEA00;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFEA48;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFEA48;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFEAD8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFEAD8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  v7 = *(v3 + 8) != *v3;
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v8));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v8));
      if (v9 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v8)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFEB20;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5EFEB20;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__back_ref<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) != 1)
  {
    goto LABEL_5;
  }

  v6 = v4;
  v5 = *v4;
  v7 = *(v6 + 8) - v5;
  v8 = *(a2 + 16);
  if (*(a2 + 24) - v8 < v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  v10 = a2;
  result = memcmp(v5, *(a2 + 16), v7);
  a2 = v10;
  if (!result)
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
LABEL_5:
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v10 = *(a1 + 40);
    v11 = v5 - v10;
    v12 = v5 - v10 + 1;
    if (v12 >= 0)
    {
      v13 = v4 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = v3;
        v16 = operator new(v14);
        v3 = v15;
      }

      else
      {
        v16 = 0;
      }

      v22 = &v16[v14];
      v16[v11] = v3;
      v6 = &v16[v11 + 1];
      goto LABEL_26;
    }

LABEL_29:
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 170);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v9 < v8)
  {
    *v9 = a2;
    *(a1 + 48) = v9 + 1;
    return;
  }

  v10 = *(a1 + 40);
  v11 = v9 - v10;
  v17 = v9 - v10 + 1;
  if (v17 < 0)
  {
    goto LABEL_29;
  }

  v18 = v8 - v10;
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = a2;
    v21 = operator new(v19);
    a2 = v20;
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v22 = &v16[v19];
  v16[v11] = a2;
  v6 = &v16[v11 + 1];
LABEL_26:
  memcpy(v16, v10, v11);
  *(a1 + 40) = v16;
  *(a1 + 48) = v6;
  *(a1 + 56) = v22;
  if (v10)
  {
    operator delete(v10);
    *(a1 + 48) = v6;
    return;
  }

LABEL_28:
  *(a1 + 48) = v6;
}

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_1E5241C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  std::vector<std::string>::~vector[abi:ne200100]((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v1 = std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  operator delete(v1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  v2 = a2;
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v23 = 0;
    negate = this->__negate_;
    goto LABEL_59;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_34;
  }

  LOBYTE(v112) = *current;
  v6 = current[1];
  HIBYTE(v112) = current[1];
  if (this->__icase_)
  {
    LOBYTE(v112) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(v112) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v112, __p, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    v25 = __p[1];
    operator delete(__p[0]);
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_34:
    negate = 0;
    v23 = 1;
    goto LABEL_35;
  }

  if (!HIBYTE(__p[2]))
  {
    goto LABEL_34;
  }

LABEL_8:
  begin = this->__digraphs_.__begin_;
  v8 = this->__digraphs_.__end_ - begin;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    p_second = &begin->second;
    while (v112 != *(p_second - 1) || HIBYTE(v112) != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_225;
  }

LABEL_17:
  if (!this->__collate_ || this->__ranges_.__begin_ == this->__ranges_.__end_)
  {
LABEL_179:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
      v86 = 0;
      goto LABEL_207;
    }

    memset(__p, 170, sizeof(__p));
    std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v112, __p, __p);
    v87 = this->__equivalences_.__begin_;
    v88 = HIBYTE(__p[2]);
    v89 = this->__equivalences_.__end_ - v87;
    if (v89)
    {
      v90 = v2;
      v91 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v92 = HIBYTE(__p[2]);
      }

      else
      {
        v92 = __p[1];
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v93 = __p;
      }

      else
      {
        v93 = __p[0];
      }

      if (v91 <= 1)
      {
        v94 = 1;
      }

      else
      {
        v94 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      }

      v95 = 1;
      v96 = 1;
      do
      {
        size = HIBYTE(v87->__r_.__value_.__r.__words[2]);
        v98 = size;
        if ((size & 0x80u) != 0)
        {
          size = v87->__r_.__value_.__l.__size_;
        }

        if (v92 == size)
        {
          v99 = v98 >= 0 ? v87 : v87->__r_.__value_.__r.__words[0];
          if (!memcmp(v93, v99, v92))
          {
            v86 = 1;
            v70 = 5;
            v2 = v90;
            if ((v88 & 0x80) == 0)
            {
              goto LABEL_204;
            }

            goto LABEL_203;
          }
        }

        v96 = v95++ < v91;
        ++v87;
        --v94;
      }

      while (v94);
      v70 = 0;
      v86 = 0;
      v2 = v90;
      if ((v88 & 0x80) == 0)
      {
        goto LABEL_204;
      }
    }

    else
    {
      v96 = 0;
      v70 = 0;
      v86 = 0;
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
LABEL_204:
        if (v96)
        {
          goto LABEL_205;
        }

LABEL_207:
        if (v112 < 0)
        {
          neg_mask = this->__neg_mask_;
        }

        else
        {
          mask = this->__mask_;
          tab = this->__traits_.__ct_->__tab_;
          v102 = tab[v112];
          if (((v102 & mask) != 0 || v112 == 95 && (mask & 0x80) != 0) && (SHIBYTE(v112) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(v112)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(v112) == 95))
          {
            goto LABEL_225;
          }

          neg_mask = this->__neg_mask_;
          if ((neg_mask & v102) != 0 || v112 == 95 && (neg_mask & 0x80) != 0)
          {
LABEL_224:
            negate = v86;
LABEL_226:
            v23 = 2;
            goto LABEL_59;
          }
        }

        if ((SHIBYTE(v112) & 0x8000000000000000) == 0)
        {
          if ((this->__traits_.__ct_->__tab_[SHIBYTE(v112)] & neg_mask) == 0)
          {
            negate = 1;
            if (SHIBYTE(v112) != 95 || (neg_mask & 0x80) == 0)
            {
              goto LABEL_226;
            }
          }

          goto LABEL_224;
        }

LABEL_225:
        negate = 1;
        goto LABEL_226;
      }
    }

LABEL_203:
    operator delete(__p[0]);
    goto LABEL_204;
  }

  memset(v111, 170, sizeof(v111));
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  __p[2] = 0x2AAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAA00AAAALL;
  LOWORD(__p[0]) = v112;
  (*(*this->__traits_.__col_ + 32))(v111);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = this->__ranges_.__begin_;
  v13 = HIBYTE(v111[2]);
  v14 = this->__ranges_.__end_ - v12;
  if (!v14)
  {
    v22 = 0;
    v70 = 0;
    goto LABEL_175;
  }

  v106 = v2;
  v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  if (SHIBYTE(v111[2]) >= 0)
  {
    v16 = v111;
  }

  else
  {
    v16 = v111[0];
  }

  v17 = HIBYTE(v111[2]);
  if (SHIBYTE(v111[2]) >= 0)
  {
    v18 = HIBYTE(v111[2]);
  }

  else
  {
    v18 = v111[1];
  }

  if (v15 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  }

  v20 = &v12->second.__r_.__value_.__r.__words[2] + 7;
  v21 = 1;
  v22 = 1;
  do
  {
    v60 = *(v20 - 24);
    if (v60 >= 0)
    {
      v61 = (v20 - 47);
    }

    else
    {
      v61 = *(v20 - 47);
    }

    if (v60 >= 0)
    {
      v62 = *(v20 - 24);
    }

    else
    {
      v62 = *(v20 - 39);
    }

    if (v18 >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v18;
    }

    v64 = memcmp(v61, v16, v63);
    if (v64)
    {
      if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_109;
      }
    }

    else if (v62 > v18)
    {
      goto LABEL_109;
    }

    v65 = *v20;
    if (v65 >= 0)
    {
      v66 = (v20 - 23);
    }

    else
    {
      v66 = *(v20 - 23);
    }

    if (v65 >= 0)
    {
      v67 = *v20;
    }

    else
    {
      v67 = *(v20 - 15);
    }

    if (v67 >= v18)
    {
      v68 = v18;
    }

    else
    {
      v68 = v67;
    }

    v69 = memcmp(v16, v66, v68);
    if (v69)
    {
      if (v69 < 0)
      {
LABEL_134:
        v70 = 5;
        goto LABEL_173;
      }
    }

    else if (v18 <= v67)
    {
      goto LABEL_134;
    }

LABEL_109:
    v22 = v21++ < v15;
    v20 += 48;
    --v19;
  }

  while (v19);
  v70 = 0;
LABEL_173:
  v2 = v106;
  v13 = v17;
LABEL_175:
  if (v13 < 0)
  {
    operator delete(v111[0]);
  }

  if (!v22)
  {
    goto LABEL_179;
  }

  v86 = 1;
LABEL_205:
  v23 = 2;
  negate = v86;
  if (v70)
  {
    goto LABEL_59;
  }

LABEL_35:
  v26 = *v2->__current_;
  LOBYTE(v112) = *v2->__current_;
  if (this->__icase_)
  {
    LODWORD(v26) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v26);
    LOBYTE(v112) = v26;
  }

  v27 = this->__chars_.__begin_;
  v28 = this->__chars_.__end_ - v27;
  if (v28)
  {
    if (v28 <= 1)
    {
      v28 = 1;
    }

    do
    {
      v29 = *v27++;
      if (v29 == v26)
      {
        goto LABEL_58;
      }

      --v28;
    }

    while (v28);
  }

  v30 = this->__neg_mask_;
  if (v30 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v26 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v26] & v30) == 0)
    {
      v32 = (v30 >> 7) & 1;
      v31 = v26 == 95 ? v32 : 0;
    }

    else
    {
      v31 = 1;
    }

    end = this->__neg_chars_.__end_;
    v34 = memchr(this->__neg_chars_.__begin_, v26, end - this->__neg_chars_.__begin_);
    v35 = !v34 || v34 == end;
    v36 = !v35;
    if ((v31 & 1) == 0 && !v36)
    {
      goto LABEL_58;
    }
  }

  v39 = this->__ranges_.__begin_;
  v40 = this->__ranges_.__end_;
  if (v39 == v40)
  {
    goto LABEL_139;
  }

  memset(v111, 170, sizeof(v111));
  v109 = negate;
  if (this->__collate_)
  {
    __p[1] = 0xAAAAAAAAAAAAAAAALL;
    __p[2] = 0x1AAAAAAAAAAAAAALL;
    __p[0] = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(__p[0]) = v26;
    (*(*this->__traits_.__col_ + 32))(v111);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v39 = this->__ranges_.__begin_;
    v41 = HIBYTE(v111[2]);
    v42 = this->__ranges_.__end_ - v39;
    if (!v42)
    {
LABEL_68:
      v43 = 0;
      if ((v41 & 0x80) != 0)
      {
        goto LABEL_137;
      }

      goto LABEL_138;
    }
  }

  else
  {
    v41 = 1;
    HIBYTE(v111[2]) = 1;
    LOWORD(v111[0]) = v26;
    v42 = v40 - v39;
    if (!v42)
    {
      goto LABEL_68;
    }
  }

  v105 = v23;
  v107 = v2;
  v44 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  v104 = v41;
  if ((v41 & 0x80u) == 0)
  {
    v45 = v111;
  }

  else
  {
    v45 = v111[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v46 = v41;
  }

  else
  {
    v46 = v111[1];
  }

  if (v44 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  }

  v48 = &v39->second.__r_.__value_.__r.__words[2] + 7;
  v49 = 1;
  v43 = 1;
  while (2)
  {
    v50 = *(v48 - 24);
    if (v50 >= 0)
    {
      v51 = (v48 - 47);
    }

    else
    {
      v51 = *(v48 - 47);
    }

    if (v50 >= 0)
    {
      v52 = *(v48 - 24);
    }

    else
    {
      v52 = *(v48 - 39);
    }

    if (v46 >= v52)
    {
      v53 = v52;
    }

    else
    {
      v53 = v46;
    }

    v54 = memcmp(v51, v45, v53);
    if (v54)
    {
      if (v54 < 0)
      {
        goto LABEL_96;
      }
    }

    else if (v52 <= v46)
    {
LABEL_96:
      v55 = *v48;
      if (v55 >= 0)
      {
        v56 = (v48 - 23);
      }

      else
      {
        v56 = *(v48 - 23);
      }

      if (v55 >= 0)
      {
        v57 = *v48;
      }

      else
      {
        v57 = *(v48 - 15);
      }

      if (v57 >= v46)
      {
        v58 = v46;
      }

      else
      {
        v58 = v57;
      }

      v59 = memcmp(v45, v56, v58);
      if (v59)
      {
        if (v59 < 0)
        {
LABEL_107:
          negate = 1;
          v2 = v107;
          goto LABEL_136;
        }
      }

      else if (v46 <= v57)
      {
        goto LABEL_107;
      }
    }

    v43 = v49++ < v44;
    v48 += 48;
    if (--v47)
    {
      continue;
    }

    break;
  }

  v2 = v107;
  negate = v109;
LABEL_136:
  v23 = v105;
  if (v104 < 0)
  {
LABEL_137:
    operator delete(v111[0]);
  }

LABEL_138:
  if (!v43)
  {
LABEL_139:
    if (this->__equivalences_.__begin_ != this->__equivalences_.__end_)
    {
      v71 = v23;
      memset(__p, 170, sizeof(__p));
      v72 = __p;
      std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v112, &v112 + 1, __p);
      v73 = this->__equivalences_.__begin_;
      v74 = HIBYTE(__p[2]);
      v75 = this->__equivalences_.__end_ - v73;
      if (v75)
      {
        v110 = negate;
        v108 = v2;
        v76 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        if (SHIBYTE(__p[2]) >= 0)
        {
          v77 = HIBYTE(__p[2]);
        }

        else
        {
          v77 = __p[1];
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          v72 = __p[0];
        }

        if (v76 <= 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        }

        v79 = 1;
        v80 = 1;
        do
        {
          v81 = HIBYTE(v73->__r_.__value_.__r.__words[2]);
          v82 = v81;
          if ((v81 & 0x80u) != 0)
          {
            v81 = v73->__r_.__value_.__l.__size_;
          }

          if (v77 == v81)
          {
            v83 = v82 >= 0 ? v73 : v73->__r_.__value_.__r.__words[0];
            if (!memcmp(v72, v83, v77))
            {
              negate = 1;
              v2 = v108;
              if ((v74 & 0x80) == 0)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            }
          }

          v80 = v79++ < v76;
          ++v73;
          --v78;
        }

        while (v78);
        v2 = v108;
        negate = v110;
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_162;
        }

LABEL_161:
        operator delete(__p[0]);
      }

      else
      {
        v80 = 0;
        if ((HIBYTE(__p[2]) & 0x80) != 0)
        {
          goto LABEL_161;
        }
      }

LABEL_162:
      if (v80)
      {
        v23 = v71;
        goto LABEL_59;
      }

      LOBYTE(v26) = v112;
      v23 = v71;
    }

    v84 = this->__mask_;
    if ((v26 & 0x80) != 0 || (this->__traits_.__ct_->__tab_[v26] & v84) == 0)
    {
      v85 = (v84 >> 7) & 1;
      if (v26 != 95)
      {
        LOBYTE(v85) = 0;
      }

      negate |= v85;
      goto LABEL_59;
    }

LABEL_58:
    negate = 1;
  }

LABEL_59:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v38 = -993;
  }

  else
  {
    v2->__current_ += v23;
    first = this->__first_;
    v38 = -995;
  }

  v2->__do_ = v38;
  v2->__node_ = first;
}