UChar *__cdecl u_strFromUTF8WithSub(UChar *dest, int32_t destCapacity, int32_t *pDestLength, const char *src, int32_t srcLength, UChar32 subchar, int32_t *pNumSubstitutions, UErrorCode *pErrorCode)
{
  if (*pErrorCode > 0)
  {
    return 0;
  }

  if (src)
  {
    v13 = 1;
  }

  else
  {
    v13 = srcLength == 0;
  }

  v14 = !v13;
  if (destCapacity < 0 || srcLength < -1 || (v14 & 1) != 0 || ((v8 = dest, destCapacity) ? (v15 = dest == 0) : (v15 = 0), v15 || subchar >= 1114112 || (subchar & 0xFFFFF800) == 0xD800))
  {
    v8 = 0;
    v33 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_55;
  }

  if (pNumSubstitutions)
  {
    *pNumSubstitutions = 0;
  }

  v17 = &dest[destCapacity];
  if ((srcLength & 0x80000000) == 0)
  {
    v68 = 0;
    pi = 0;
    LODWORD(v18) = 0;
    if ((srcLength / 3u) >= destCapacity)
    {
      v19 = destCapacity;
    }

    else
    {
      v19 = srcLength / 3u;
    }

    v20 = dest;
    if (v19 < 3)
    {
LABEL_25:
      v21 = 0;
      if (v18 < srcLength && v20 < v17)
      {
        while (1)
        {
          v22 = v18;
          v23 = v18 + 1;
          pi = v18 + 1;
          v24 = src[v18];
          if ((v24 & 0x80) != 0)
          {
            if ((v24 & 0xF0) == 0xE0)
            {
              v26 = v18 + 2;
              if (v22 + 2 < srcLength)
              {
                v27 = src[v23];
                if ((a00000000000000[v24 & 0xF] >> (v27 >> 5)))
                {
                  v28 = src[v26] ^ 0x80;
                  if (v28 <= 0x3F)
                  {
                    *v20++ = (v24 << 12) | ((v27 & 0x3F) << 6) | v28;
                    v29 = v22 + 3;
LABEL_46:
                    pi = v29;
                    goto LABEL_29;
                  }
                }
              }
            }

            else if ((v24 - 224) >= 0xFFFFFFE2 && v23 != srcLength)
            {
              v31 = src[v23] ^ 0x80;
              if (v31 <= 0x3F)
              {
                *v20++ = ((v24 & 0x1F) << 6) | v31;
                v29 = v22 + 2;
                goto LABEL_46;
              }
            }

            v32 = utf8_nextCharSafeBody(src, &pi, srcLength, v24, -1);
            if ((v32 & 0x80000000) != 0)
            {
              if (subchar < 0)
              {
                goto LABEL_166;
              }

              ++v68;
              v32 = subchar;
            }

            if (HIWORD(v32))
            {
              *v20 = (v32 >> 10) - 10304;
              if (v20 + 1 >= v17)
              {
                v21 = 1;
                LODWORD(v18) = pi;
                ++v20;
                break;
              }

              v20[1] = v32 & 0x3FF | 0xDC00;
              v20 += 2;
            }

            else
            {
              *v20++ = v32;
            }
          }

          else
          {
            *v20++ = v24;
          }

LABEL_29:
          LODWORD(v18) = pi;
          if (pi >= srcLength || v20 >= v17)
          {
            v21 = 0;
            break;
          }
        }
      }

      if (v18 >= srcLength)
      {
        goto LABEL_160;
      }

      while (1)
      {
        v55 = v18;
        v56 = src[v18];
        v18 = v18 + 1;
        pi = v18;
        if ((v56 & 0x80) != 0)
        {
          if ((v56 & 0xF0) == 0xE0)
          {
            if (v55 + 2 >= srcLength || ((a00000000000000[v56 & 0xF] >> (src[v18] >> 5)) & 1) == 0 || src[v55 + 2] > -65)
            {
              goto LABEL_129;
            }

            ++v21;
            LODWORD(v18) = v55 + 3;
          }

          else
          {
            v57 = (v56 - 224) < 0xFFFFFFE2 || v18 == srcLength;
            if (v57 || src[v18] > -65)
            {
LABEL_129:
              v58 = utf8_nextCharSafeBody(src, &pi, srcLength, v56, -1);
              if ((v58 & 0x80000000) != 0)
              {
                if (subchar < 0)
                {
                  goto LABEL_166;
                }

                ++v68;
                v58 = subchar;
              }

              if (v58 < 0x10000)
              {
                v59 = 1;
              }

              else
              {
                v59 = 2;
              }

              v21 += v59;
              LODWORD(v18) = pi;
              goto LABEL_136;
            }

            ++v21;
            LODWORD(v18) = v55 + 2;
          }

          pi = v18;
        }

        else
        {
          ++v21;
        }

LABEL_136:
        if (v18 >= srcLength)
        {
          goto LABEL_160;
        }
      }
    }

    v68 = 0;
    v20 = dest;
    while (1)
    {
      v44 = pi;
      v45 = ++pi;
      v46 = src[v44];
      if ((v46 & 0x80) != 0)
      {
        if ((v46 & 0xF0) == 0xE0)
        {
          v48 = v44 + 2;
          if (v48 < srcLength)
          {
            v49 = src[v45];
            if ((a00000000000000[v46 & 0xF] >> (v49 >> 5)))
            {
              v50 = src[v48] ^ 0x80;
              if (v50 <= 0x3F)
              {
                *v20++ = (v46 << 12) | ((v49 & 0x3F) << 6) | v50;
                v51 = v44 + 3;
LABEL_103:
                pi = v51;
                goto LABEL_85;
              }
            }
          }
        }

        else if (v46 - 224 >= 0xFFFFFFE2 && v45 != srcLength)
        {
          v53 = src[v45] ^ 0x80;
          if (v53 <= 0x3F)
          {
            *v20++ = ((v46 & 0x1F) << 6) | v53;
            v51 = v44 + 2;
            goto LABEL_103;
          }
        }

        if ((subchar >= 0x10000 || v46 >= 0xF0) && !--v19)
        {
          pi = v44;
          goto LABEL_87;
        }

        v54 = utf8_nextCharSafeBody(src, &pi, srcLength, v46, -1);
        if ((v54 & 0x80000000) != 0)
        {
          if (subchar < 0)
          {
            goto LABEL_166;
          }

          ++v68;
          v54 = subchar;
        }

        if (HIWORD(v54))
        {
          *v20 = (v54 >> 10) - 10304;
          v20[1] = v54 & 0x3FF | 0xDC00;
          v20 += 2;
        }

        else
        {
          *v20++ = v54;
        }
      }

      else
      {
        *v20++ = v46;
      }

LABEL_85:
      v47 = __OFSUB__(v19--, 1);
      if ((v19 < 0) ^ v47 | (v19 == 0))
      {
LABEL_87:
        LODWORD(v18) = pi;
        if ((srcLength - pi) / 3 >= ((v17 - v20) >> 1))
        {
          v19 = (v17 - v20) >> 1;
        }

        else
        {
          v19 = (srcLength - pi) / 3;
        }

        if (v19 <= 2)
        {
          goto LABEL_25;
        }
      }
    }
  }

  v34 = 0;
  v35 = *src;
  if (!*src || !destCapacity)
  {
    v20 = dest;
    v21 = 0;
    v68 = 0;
    if (v35)
    {
      goto LABEL_141;
    }

    goto LABEL_160;
  }

  v34 = 0;
  v68 = 0;
  v36 = src;
  v20 = dest;
  do
  {
    v37 = v34 + 1;
    v70 = v34 + 1;
    if ((v35 & 0x80) == 0)
    {
      *v20++ = v35;
      goto LABEL_61;
    }

    if ((v35 & 0xF0) == 0xE0)
    {
      v39 = src[v37];
      if ((a00000000000000[v35 & 0xF] >> (v39 >> 5)))
      {
        v40 = *(v36 + 2) ^ 0x80;
        if (v40 <= 0x3F)
        {
          *v20++ = (v35 << 12) | ((v39 & 0x3F) << 6) | v40;
          v41 = v34 + 3;
LABEL_74:
          v70 = v41;
          goto LABEL_61;
        }
      }
    }

    else if ((v35 - 194) <= 0x1D)
    {
      v42 = src[v37] ^ 0x80;
      if (v42 <= 0x3F)
      {
        *v20++ = ((v35 & 0x1F) << 6) | v42;
        v41 = v34 + 2;
        goto LABEL_74;
      }
    }

    v43 = utf8_nextCharSafeBody(src, &v70, -1, v35, -1);
    if ((v43 & 0x80000000) != 0)
    {
      if ((subchar & 0x80000000) == 0)
      {
        ++v68;
        v43 = subchar;
        goto LABEL_78;
      }

LABEL_166:
      v8 = 0;
      v33 = U_INVALID_CHAR_FOUND;
LABEL_55:
      *pErrorCode = v33;
      return v8;
    }

LABEL_78:
    if (!HIWORD(v43))
    {
      *v20++ = v43;
      goto LABEL_61;
    }

    *v20 = (v43 >> 10) - 10304;
    if (v20 + 1 >= v17)
    {
      v34 = v70;
      v35 = src[v70];
      v21 = 1;
      ++v20;
      if (!src[v70])
      {
        goto LABEL_160;
      }

LABEL_141:
      v60 = v34;
      while (2)
      {
        v61 = v34 + 1;
        v70 = v34 + 1;
        if ((v35 & 0x80) == 0)
        {
          ++v21;
          goto LABEL_159;
        }

        if ((v35 & 0xF0) == 0xE0)
        {
          if (((a00000000000000[v35 & 0xF] >> (src[v61] >> 5)) & 1) != 0 && src[v60 + 2] <= -65)
          {
            ++v21;
            LODWORD(v61) = v34 + 3;
            goto LABEL_151;
          }

LABEL_152:
          v62 = utf8_nextCharSafeBody(src, &v70, -1, v35, -1);
          if ((v62 & 0x80000000) != 0)
          {
            if (subchar < 0)
            {
              goto LABEL_166;
            }

            ++v68;
            v62 = subchar;
          }

          if (v62 < 0x10000)
          {
            v63 = 1;
          }

          else
          {
            v63 = 2;
          }

          v21 += v63;
          LODWORD(v61) = v70;
        }

        else
        {
          if ((v35 - 194) > 0x1D || src[v61] > -65)
          {
            goto LABEL_152;
          }

          ++v21;
          LODWORD(v61) = v34 + 2;
LABEL_151:
          v70 = v61;
        }

LABEL_159:
        v34 = v61;
        v60 = v61;
        v35 = src[v61];
        if (!src[v61])
        {
          goto LABEL_160;
        }

        continue;
      }
    }

    v20[1] = v43 & 0x3FF | 0xDC00;
    v20 += 2;
LABEL_61:
    v34 = v70;
    v36 = &src[v70];
    v35 = *v36;
    if (*v36)
    {
      v38 = v20 >= v17;
    }

    else
    {
      v38 = 1;
    }
  }

  while (!v38);
  v21 = 0;
  if (*v36)
  {
    goto LABEL_141;
  }

LABEL_160:
  if (pNumSubstitutions)
  {
    *pNumSubstitutions = v68;
  }

  v64 = v21 + ((v20 - v8) >> 1);
  if (pDestLength)
  {
    *pDestLength = v64;
  }

  u_terminateUChars(v8, destCapacity, v64, pErrorCode);
  return v8;
}

UChar *__cdecl u_strFromUTF8Lenient(UChar *dest, int32_t destCapacity, int32_t *pDestLength, const char *src, int32_t srcLength, UErrorCode *pErrorCode)
{
  if (*pErrorCode > 0)
  {
    return 0;
  }

  if (src)
  {
    v7 = 1;
  }

  else
  {
    v7 = srcLength == 0;
  }

  v8 = !v7;
  if (destCapacity < 0 || srcLength < -1 || (v8 & 1) != 0 || (v6 = dest) == 0 && destCapacity)
  {
    v6 = 0;
    v9 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_15:
    *pErrorCode = v9;
    return v6;
  }

  if ((srcLength & 0x80000000) == 0)
  {
    if (src)
    {
      v11 = &src[srcLength];
    }

    else
    {
      v11 = 0;
    }

    if (destCapacity < srcLength)
    {
      if (pDestLength)
      {
        *pDestLength = srcLength;
      }

      v6 = 0;
      v9 = U_BUFFER_OVERFLOW_ERROR;
      goto LABEL_15;
    }

    if (v11 - src < 4)
    {
      v15 = dest;
LABEL_65:
      while (src < v11)
      {
        v30 = src + 1;
        v29 = *src;
        if (v29 > 0xBF)
        {
          if (v29 > 0xDF)
          {
            v32 = v11 - v30;
            if (v29 > 0xEF)
            {
              if (v32 < 3)
              {
                goto LABEL_78;
              }

              v33 = (v29 << 18) - 63447168 + (*(src + 1) << 12) + (*(src + 2) << 6) + *(src + 3);
              *v15 = (v33 >> 10) - 10304;
              v15[1] = v33 & 0x3FF | 0xDC00;
              v15 += 2;
              src += 8;
            }

            else
            {
              if (v32 < 2)
              {
                goto LABEL_78;
              }

              *v15++ = (*(src + 1) << 6) + (v29 << 12) + *(src + 2) - 8320;
              src += 6;
            }
          }

          else
          {
            if (v30 >= v11)
            {
              goto LABEL_78;
            }

            v31 = *(src + 1);
            src += 2;
            *v15++ = v31 + (v29 << 6) - 12416;
          }
        }

        else
        {
          *v15++ = v29;
          ++src;
        }
      }

      v12 = 0;
      goto LABEL_97;
    }

    v15 = dest;
    while (1)
    {
      v21 = *src;
      if (v21 > 0xBF)
      {
        v22 = *(src + 1);
        if (v21 > 0xDF)
        {
          if (v21 > 0xEF)
          {
            v26 = *(src + 2);
            v27 = *(src + 3);
            src += 4;
            v28 = (v21 << 18) - 63447168 + (v22 << 12) + (v26 << 6) + v27;
            *v15 = (v28 >> 10) - 10304;
            v15[1] = v28 & 0x3FF | 0xDC00;
            v15 += 2;
            goto LABEL_61;
          }

          v24 = (v22 << 6) + (v21 << 12);
          v25 = *(src + 2);
          src += 3;
          v23 = v24 + v25 - 8320;
        }

        else
        {
          src += 2;
          v23 = v22 + (v21 << 6) - 12416;
        }

        *v15++ = v23;
      }

      else
      {
        *v15++ = v21;
        ++src;
      }

LABEL_61:
      if (src >= v11 - 3)
      {
        goto LABEL_65;
      }
    }
  }

  v12 = 0;
  if (dest)
  {
    v13 = &dest[destCapacity];
  }

  else
  {
    v13 = 0;
  }

  v14 = *src;
  if (!*src || v13 <= dest)
  {
    v15 = dest;
    goto LABEL_94;
  }

  v15 = dest;
  while (1)
  {
    if (v14 <= 0xBF)
    {
      *v15++ = v14;
      ++src;
      goto LABEL_45;
    }

    if (v14 <= 0xDF)
    {
      if (!src[1])
      {
        goto LABEL_78;
      }

      *v15++ = *(src + 1) + (v14 << 6) - 12416;
      src += 2;
      goto LABEL_45;
    }

    v16 = *(src + 1);
    if (v14 > 0xEF)
    {
      break;
    }

    if (!src[1] || !src[2])
    {
      goto LABEL_78;
    }

    *v15++ = (v16 << 6) + (v14 << 12) + *(src + 2) - 8320;
    src += 3;
LABEL_45:
    v14 = *src;
    if (*src)
    {
      v20 = v15 >= v13;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v12 = 0;
      goto LABEL_94;
    }
  }

  if (!src[1] || (v17 = *(src + 2), !src[2]) || (v18 = *(src + 3), !src[3]))
  {
LABEL_78:
    v12 = 0;
    *v15++ = -3;
    goto LABEL_97;
  }

  src += 4;
  v19 = (v14 << 18) - 63447168 + (v16 << 12) + (v17 << 6) + v18;
  *v15 = (v19 >> 10) - 10304;
  if (v15 + 1 < v13)
  {
    v15[1] = v19 & 0x3FF | 0xDC00;
    v15 += 2;
    goto LABEL_45;
  }

  v14 = *src;
  v12 = 1;
  ++v15;
LABEL_94:
  while (v14)
  {
    if (v14 > 0xBF)
    {
      if (v14 > 0xDF)
      {
        v36 = *(src + 1);
        if (v14 > 0xEF)
        {
          if (!src[1] || !src[2] || !src[3])
          {
LABEL_96:
            ++v12;
            break;
          }

          v34 = 2;
          v35 = 4;
        }

        else
        {
          if (!src[1] || !src[2])
          {
            goto LABEL_96;
          }

          v34 = 1;
          v35 = 3;
        }
      }

      else
      {
        if (!src[1])
        {
          goto LABEL_96;
        }

        v34 = 1;
        v35 = 2;
      }
    }

    else
    {
      v34 = 1;
      v35 = 1;
    }

    v12 += v34;
    src += v35;
    v14 = *src;
  }

LABEL_97:
  v37 = v12 + ((v15 - v6) >> 1);
  if (pDestLength)
  {
    *pDestLength = v37;
  }

  u_terminateUChars(v6, destCapacity, v37, pErrorCode);
  return v6;
}

char *__cdecl u_strToUTF8WithSub(char *dest, int32_t destCapacity, int32_t *pDestLength, const UChar *src, int32_t srcLength, UChar32 subchar, int32_t *pNumSubstitutions, UErrorCode *pErrorCode)
{
  result = 0;
  if (dest)
  {
    v10 = &dest[destCapacity];
  }

  else
  {
    v10 = 0;
  }

  if (*pErrorCode > 0)
  {
    return result;
  }

  if (src)
  {
    v13 = 1;
  }

  else
  {
    v13 = srcLength == 0;
  }

  v14 = !v13;
  if (destCapacity < 0 || srcLength < -1 || (v14 & 1) != 0 || (destCapacity ? (v15 = dest == 0) : (v15 = 0), v15 || subchar >= 1114112 || (subchar & 0xFFFFF800) == 0xD800))
  {
    result = 0;
    v30 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_63:
    *pErrorCode = v30;
    return result;
  }

  if (pNumSubstitutions)
  {
    *pNumSubstitutions = 0;
  }

  if (srcLength == -1)
  {
    v29 = *src;
    if (!*src)
    {
      v23 = 0;
      LODWORD(v24) = dest;
      goto LABEL_166;
    }

    v23 = 0;
    v24 = dest;
    while (1)
    {
      v31 = src + 1;
      if (v29 > 0x7F)
      {
        if (v29 > 0x7FF)
        {
          if (v29 - 57344 <= 0xFFFFF7FF)
          {
            if (v10 - v24 < 3)
            {
              v29 = 3;
              goto LABEL_173;
            }

            *v24 = (v29 >> 12) | 0xE0;
            v24[1] = (v29 >> 6) & 0x3F | 0x80;
            v24[2] = v29 & 0x3F | 0x80;
LABEL_76:
            v24 += 3;
            goto LABEL_96;
          }

          if ((v29 & 0x400) != 0 || (v32 = *v31, (v32 & 0xFC00) != 0xDC00))
          {
            if (subchar < 0)
            {
LABEL_200:
              result = 0;
              v30 = U_INVALID_CHAR_FOUND;
              goto LABEL_63;
            }

            ++v23;
            v33 = subchar;
          }

          else
          {
            v31 = src + 2;
            v33 = v32 + (v29 << 10) - 56613888;
          }

          if (v33 >= 0x80)
          {
            if (v33 >= 0x800)
            {
              if (v33 >> 11 >= 0x1B)
              {
                if (v33 - 1114112 >= 0xFFEFE000)
                {
                  if (v33 < 0x10000)
                  {
                    v29 = 3;
                  }

                  else
                  {
                    v29 = 4;
                  }
                }

                else
                {
                  v29 = 0;
                }
              }

              else
              {
                v29 = 3;
              }
            }

            else
            {
              v29 = 2;
            }
          }

          else
          {
            v29 = 1;
          }

          if (v10 - v24 < v29)
          {
            goto LABEL_173;
          }

          if (v33 <= 127)
          {
            *v24++ = v33;
            goto LABEL_96;
          }

          if (v33 > 0x7FF)
          {
            v34 = (v33 >> 6) & 0x3F | 0x80;
            v35 = v33 & 0x3F | 0x80;
            if (HIWORD(v33))
            {
              *v24 = (v33 >> 18) | 0xF0;
              v24[1] = (v33 >> 12) & 0x3F | 0x80;
              v24[2] = v34;
              v24[3] = v35;
              v24 += 4;
              goto LABEL_96;
            }

            *v24 = (v33 >> 12) | 0xE0;
            v24[1] = v34;
            v24[2] = v35;
            goto LABEL_76;
          }

          *v24 = (v33 >> 6) | 0xC0;
          v24[1] = v33 & 0x3F | 0x80;
        }

        else
        {
          if (v10 - v24 < 2)
          {
            v29 = 2;
            goto LABEL_173;
          }

          *v24 = (v29 >> 6) | 0xC0;
          v24[1] = v29 & 0x3F | 0x80;
        }

        v24 += 2;
      }

      else
      {
        if (v24 >= v10)
        {
          v29 = 1;
LABEL_173:
          v51 = *v31;
          if (!*v31)
          {
            goto LABEL_166;
          }

          if (subchar < 0x10000)
          {
            v52 = 3;
          }

          else
          {
            v52 = 4;
          }

          if (subchar < 0x80)
          {
            v53 = 1;
          }

          else
          {
            v53 = 2;
          }

          if (subchar >= 0x800)
          {
            v54 = 3;
          }

          else
          {
            v54 = v53;
          }

          if (subchar < 0xE000)
          {
            v52 = 0;
          }

          if (subchar >> 11 >= 0x1B)
          {
            v54 = v52;
          }

          while (1)
          {
            v55 = v31 + 1;
            if (v51 > 0x7F)
            {
              if (v51 > 0x7FF)
              {
                if ((v51 & 0xF800) == 0xD800)
                {
                  if ((v51 & 0x400) != 0 || (*v55 & 0xFC00) != 0xDC00)
                  {
                    if (subchar < 0)
                    {
                      goto LABEL_200;
                    }

                    v29 += v54;
                    ++v23;
                  }

                  else
                  {
                    v55 = v31 + 2;
                    v29 += 4;
                  }
                }

                else
                {
                  v29 += 3;
                }
              }

              else
              {
                v29 += 2;
              }
            }

            else
            {
              ++v29;
            }

            v51 = *v55;
            v31 = v55;
            if (!*v55)
            {
              goto LABEL_166;
            }
          }
        }

        *v24++ = v29;
      }

LABEL_96:
      v29 = *v31;
      src = v31;
      if (!*v31)
      {
        goto LABEL_166;
      }
    }
  }

  if (src)
  {
    v19 = &src[srcLength];
  }

  else
  {
    v19 = 0;
  }

  v20 = ((v10 - dest) * 0x5555555555555556) >> 64;
  v21 = v20 + (v20 >> 63);
  if (v21 >= ((v19 - src) >> 1))
  {
    v22 = (v19 - src) >> 1;
  }

  else
  {
    v22 = v21;
  }

  if (v22 >= 3)
  {
    v23 = 0;
    v36 = (subchar >> 6) & 0x3F | 0xFFFFFF80;
    v37 = subchar & 0x3F | 0x80;
    v24 = dest;
    while (1)
    {
      v38 = src + 1;
      v39 = *src;
      if (v39 > 0x7F)
      {
        if (v39 > 0x7FF)
        {
          if (v39 - 57344 <= 0xFFFFF7FF)
          {
            *v24 = (v39 >> 12) | 0xE0;
            v24[1] = (v39 >> 6) & 0x3F | 0x80;
            v24[2] = v39 & 0x3F | 0x80;
LABEL_111:
            v24 += 3;
            goto LABEL_112;
          }

          if (!--v22)
          {
            goto LABEL_114;
          }

          if ((v39 & 0x400) == 0)
          {
            v42 = *v38;
            if ((v42 & 0xFC00) == 0xDC00)
            {
              v38 = src + 2;
              v43 = (v39 << 10) - 56613888 + v42;
              *v24 = (v43 >> 18) | 0xF0;
              v24[1] = (v43 >> 12) & 0x3F | 0x80;
              v24[2] = (v43 >> 6) & 0x3F | 0x80;
              v24[3] = v42 & 0x3F | 0x80;
LABEL_130:
              v24 += 4;
              goto LABEL_112;
            }
          }

          if (subchar < 0)
          {
            goto LABEL_200;
          }

          ++v23;
          if (subchar <= 0x7F)
          {
            *v24++ = subchar;
            goto LABEL_112;
          }

          if (subchar > 0x7FF)
          {
            if (HIWORD(subchar))
            {
              *v24 = (subchar >> 18) | 0xF0;
              v24[1] = (subchar >> 12) & 0x3F | 0x80;
              v24[2] = v36;
              v24[3] = v37;
              goto LABEL_130;
            }

            *v24 = (subchar >> 12) | 0xE0;
            v24[1] = v36;
            v24[2] = v37;
            goto LABEL_111;
          }

          *v24 = (subchar >> 6) | 0xC0;
          v24[1] = v37;
        }

        else
        {
          *v24 = (v39 >> 6) | 0xC0;
          v24[1] = v39 & 0x3F | 0x80;
        }

        v24 += 2;
      }

      else
      {
        *v24++ = v39;
      }

LABEL_112:
      src = v38;
      v40 = __OFSUB__(v22--, 1);
      if ((v22 < 0) ^ v40 | (v22 == 0))
      {
LABEL_114:
        v41 = ((v10 - v24) * 0x5555555555555556) >> 64;
        v22 = v41 + (v41 >> 63);
        if (v22 >= ((v19 - src) >> 1))
        {
          v22 = (v19 - src) >> 1;
        }

        if (v22 < 3)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v23 = 0;
  v24 = dest;
LABEL_31:
  if (src >= v19)
  {
LABEL_61:
    v29 = 0;
    goto LABEL_138;
  }

  while (1)
  {
    v26 = src + 1;
    v25 = *src;
    if (v25 <= 0x7F)
    {
      if (v24 >= v10)
      {
        v29 = 1;
        goto LABEL_137;
      }

      *v24++ = v25;
      goto LABEL_60;
    }

    if (v25 > 0x7FF)
    {
      break;
    }

    if (v10 - v24 < 2)
    {
      v29 = 2;
      goto LABEL_137;
    }

    *v24 = (v25 >> 6) | 0xC0;
    v24[1] = v25 & 0x3F | 0x80;
    v24 += 2;
LABEL_60:
    src = v26;
    if (v26 >= v19)
    {
      goto LABEL_61;
    }
  }

  if (v25 - 57344 > 0xFFFFF7FF)
  {
    if ((v25 & 0x400) != 0 || v26 >= v19 || (v27 = *v26, (v27 & 0xFC00) != 0xDC00))
    {
      if (subchar < 0)
      {
        goto LABEL_200;
      }

      ++v23;
      v28 = subchar;
    }

    else
    {
      v26 = src + 2;
      v28 = v27 + (v25 << 10) - 56613888;
    }

    if (v28 >= 0x80)
    {
      if (v28 >= 0x800)
      {
        if (v28 >> 11 >= 0x1B)
        {
          if (v28 - 1114112 >= 0xFFEFE000)
          {
            if (v28 < 0x10000)
            {
              v29 = 3;
            }

            else
            {
              v29 = 4;
            }
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 3;
        }
      }

      else
      {
        v29 = 2;
      }
    }

    else
    {
      v29 = 1;
    }

    if (v10 - v24 < v29)
    {
      goto LABEL_137;
    }

    v24 = sub_19529FB44(v24, v28);
    goto LABEL_60;
  }

  if (v10 - v24 >= 3)
  {
    *v24 = (v25 >> 12) | 0xE0;
    v24[1] = (v25 >> 6) & 0x3F | 0x80;
    v24[2] = v25 & 0x3F | 0x80;
    v24 += 3;
    goto LABEL_60;
  }

  v29 = 3;
LABEL_137:
  src = v26;
LABEL_138:
  if (src < v19)
  {
    if (subchar < 0x10000)
    {
      v44 = 3;
    }

    else
    {
      v44 = 4;
    }

    if (subchar < 0x80)
    {
      v45 = 1;
    }

    else
    {
      v45 = 2;
    }

    if (subchar >= 0x800)
    {
      v46 = 3;
    }

    else
    {
      v46 = v45;
    }

    if (subchar < 0xE000)
    {
      v44 = 0;
    }

    if (subchar >> 11 >= 0x1B)
    {
      v46 = v44;
    }

    v47 = src;
    do
    {
      v49 = *v47++;
      v48 = v49;
      if (v49 > 0x7F)
      {
        if (v48 > 0x7FF)
        {
          if ((v48 & 0xF800) == 0xD800)
          {
            if ((v48 & 0x400) != 0 || v47 >= v19 || (*v47 & 0xFC00) != 0xDC00)
            {
              if (subchar < 0)
              {
                goto LABEL_200;
              }

              v29 += v46;
              ++v23;
            }

            else
            {
              v47 = src + 2;
              v29 += 4;
            }
          }

          else
          {
            v29 += 3;
          }
        }

        else
        {
          v29 += 2;
        }
      }

      else
      {
        ++v29;
      }

      src = v47;
    }

    while (v47 < v19);
  }

LABEL_166:
  if (pNumSubstitutions)
  {
    *pNumSubstitutions = v23;
  }

  v50 = v29 + v24 - dest;
  if (pDestLength)
  {
    *pDestLength = v50;
  }

  u_terminateChars(dest, destCapacity, v50, pErrorCode);
  return dest;
}

_BYTE *sub_19529FB44(_BYTE *a1, unsigned int a2)
{
  if (a2 > 127)
  {
    if (a2 > 0x7FF)
    {
      if (HIWORD(a2))
      {
        *a1 = (a2 >> 18) | 0xF0;
        a1[1] = (a2 >> 12) & 0x3F | 0x80;
        a1[2] = (a2 >> 6) & 0x3F | 0x80;
        a1[3] = a2 & 0x3F | 0x80;
        return a1 + 4;
      }

      else
      {
        *a1 = (a2 >> 12) | 0xE0;
        a1[1] = (a2 >> 6) & 0x3F | 0x80;
        a1[2] = a2 & 0x3F | 0x80;
        return a1 + 3;
      }
    }

    else
    {
      *a1 = (a2 >> 6) | 0xC0;
      a1[1] = a2 & 0x3F | 0x80;
      return a1 + 2;
    }
  }

  else
  {
    *a1 = a2;
    return a1 + 1;
  }
}

UChar *__cdecl u_strFromJavaModifiedUTF8WithSub(UChar *dest, int32_t destCapacity, int32_t *pDestLength, const char *src, int32_t srcLength, UChar32 subchar, int32_t *pNumSubstitutions, UErrorCode *pErrorCode)
{
  if (*pErrorCode > 0)
  {
    return 0;
  }

  v10 = srcLength;
  v11 = src;
  if (src)
  {
    v12 = 1;
  }

  else
  {
    v12 = srcLength == 0;
  }

  v13 = !v12;
  if (srcLength < -1 || (v13 & 1) != 0 || ((v14 = destCapacity, (v8 = dest) == 0) ? (v15 = destCapacity == 0) : (v15 = 1), v15 ? (v16 = 0) : (v16 = 1), destCapacity < 0 || (v16 & 1) != 0 || subchar >= 1114112 || (subchar & 0xFFFFF800) == 0xD800))
  {
    v8 = 0;
    v21 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_26:
    *pErrorCode = v21;
    return v8;
  }

  if (pNumSubstitutions)
  {
    *pNumSubstitutions = 0;
  }

  v19 = &dest[destCapacity];
  if (srcLength < 0)
  {
    v23 = *src;
    if (*src >= 1 && destCapacity)
    {
      v20 = dest;
      do
      {
        *v20++ = v23;
        v24 = *++v11;
        v23 = v24;
      }

      while (v24 >= 1 && v20 < v19);
    }

    else
    {
      v20 = dest;
    }

    if (!v23)
    {
      v47 = (v20 - dest) >> 1;
      if (pDestLength)
      {
        *pDestLength = v47;
      }

      goto LABEL_141;
    }

    v70 = pDestLength;
    v71 = pNumSubstitutions;
    v10 = strlen(v11);
  }

  else
  {
    v70 = pDestLength;
    v71 = pNumSubstitutions;
    v20 = dest;
  }

  v26 = 0;
  pi = 0;
LABEL_41:
  v27 = (v19 - v20) >> 1;
  v28 = pi;
  v29 = v10 - pi;
  if (v10 >= 1 && v29 <= v27 && (*v11 & 0x80000000) == 0)
  {
    if (v10 <= pi)
    {
      v31 = pi;
    }

    else
    {
      v30 = &v11[pi];
      v31 = pi;
      while (1)
      {
        v33 = *v30++;
        v32 = v33;
        if (v33 < 0)
        {
          break;
        }

        *v20++ = v32;
        pi = ++v31;
        if (v10 == v31)
        {
          v31 = v10;
          break;
        }
      }
    }

    v34 = v31 - v28;
    LODWORD(v27) = v27 - v34;
    v29 -= v34;
  }

  if (subchar < 0x10000)
  {
    v35 = v29 / 3;
    if (v27 >= v35)
    {
      LODWORD(v27) = v35;
    }

    if (v27 >= 3)
    {
      v36 = v27 + 1;
      while (1)
      {
        v37 = pi;
        v38 = ++pi;
        v39 = v11[v37];
        if (v11[v37] < 0)
        {
          if (v39 < 0xE0)
          {
            if (v39 < 0xC0 || (v43 = v11[v38] ^ 0x80, v43 > 0x3F))
            {
LABEL_67:
              if (subchar < 0)
              {
                goto LABEL_142;
              }

              utf8_nextCharSafeBody(v11, &pi, v10, v39, -1);
              ++v26;
              *v20 = subchar;
              goto LABEL_69;
            }

            *v20 = ((v39 & 0x1F) << 6) | v43;
            v42 = v37 + 2;
          }

          else
          {
            if (v39 > 0xEF)
            {
              goto LABEL_67;
            }

            v40 = v11[v38] ^ 0x80;
            if (v40 > 0x3F)
            {
              goto LABEL_67;
            }

            v41 = v11[v37 + 2] ^ 0x80;
            if (v41 > 0x3F)
            {
              goto LABEL_67;
            }

            *v20 = (v40 << 6) | (v39 << 12) | v41;
            v42 = v37 + 3;
          }

          pi = v42;
        }

        else
        {
          *v20 = v39;
        }

LABEL_69:
        ++v20;
        if (--v36 <= 1)
        {
          goto LABEL_41;
        }
      }
    }
  }

  LODWORD(v44) = pi;
  if (pi >= v10 || v20 >= v19)
  {
    v46 = 0;
    v48 = v71;
    goto LABEL_112;
  }

  v48 = v71;
  while (1)
  {
    while (1)
    {
      v49 = v44;
      v50 = v44 + 1;
      pi = v44 + 1;
      v51 = v11[v44];
      v52 = v51;
      if ((v51 & 0x80000000) == 0)
      {
        *v20++ = v51;
        goto LABEL_106;
      }

      if (v51 >= 0xE0u)
      {
        break;
      }

      if (v51 < 0xC0u || v50 >= v10)
      {
        goto LABEL_100;
      }

      v60 = v11[v50] ^ 0x80;
      if (v60 > 0x3F)
      {
        goto LABEL_100;
      }

      v57 = ((v52 & 0x1F) << 6) | v60;
      v58 = 2;
LABEL_97:
      *v20++ = v57;
      LODWORD(v44) = v49 + v58;
      pi = v49 + v58;
      if (v49 + v58 >= v10 || v20 >= v19)
      {
        goto LABEL_111;
      }
    }

    v53 = v49 + 2;
    if (v52 <= 0xEF && v53 < v10)
    {
      v55 = v11[v50] ^ 0x80;
      if (v55 <= 0x3F)
      {
        v56 = v11[v53] ^ 0x80;
        if (v56 <= 0x3F)
        {
          v57 = (v55 << 6) | (v52 << 12) | v56;
          v58 = 3;
          goto LABEL_97;
        }
      }
    }

LABEL_100:
    if (subchar < 0)
    {
LABEL_142:
      v8 = 0;
      v21 = U_INVALID_CHAR_FOUND;
      goto LABEL_26;
    }

    utf8_nextCharSafeBody(v11, &pi, v10, v52, -1);
    ++v26;
    if (HIWORD(subchar))
    {
      break;
    }

    *v20++ = subchar;
LABEL_106:
    LODWORD(v44) = pi;
    if (pi >= v10 || v20 >= v19)
    {
LABEL_111:
      v46 = 0;
      goto LABEL_112;
    }
  }

  *v20 = (subchar >> 10) - 10304;
  if (v20 + 1 < v19)
  {
    v20[1] = subchar & 0x3FF | 0xDC00;
    v20 += 2;
    goto LABEL_106;
  }

  LODWORD(v44) = pi;
  ++v20;
  v46 = 1;
LABEL_112:
  while (v44 < v10)
  {
    v62 = v44;
    while (1)
    {
      v63 = v62;
      v44 = v62 + 1;
      pi = v62 + 1;
      v64 = v11[v62];
      if ((v64 & 0x80000000) == 0)
      {
        break;
      }

      v65 = v64;
      if (v64 < 0xE0u)
      {
        v69 = v64 >= 0xC0u && v44 < v10;
        if (!v69 || v11[v44] >= -64)
        {
LABEL_133:
          if (subchar < 0)
          {
            goto LABEL_142;
          }

          utf8_nextCharSafeBody(v11, &pi, v10, v65, -1);
          ++v26;
          LODWORD(v44) = pi;
          break;
        }

        v68 = 2;
      }

      else
      {
        v66 = v63 + 2;
        v67 = v65 <= 0xEF && v66 < v10;
        if (!v67 || v11[v44] > -65 || v11[v66] > -65)
        {
          goto LABEL_133;
        }

        v68 = 3;
      }

      v62 = v63 + v68;
      ++v46;
      pi = v63 + v68;
      if (v63 + v68 >= v10)
      {
        goto LABEL_136;
      }
    }

    ++v46;
  }

LABEL_136:
  if (v48)
  {
    *v48 = v26;
  }

  v47 = v46 + ((v20 - v8) >> 1);
  if (v70)
  {
    *v70 = v47;
  }

  dest = v8;
  destCapacity = v14;
LABEL_141:
  u_terminateUChars(dest, destCapacity, v47, pErrorCode);
  return v8;
}

char *__cdecl u_strToJavaModifiedUTF8(char *dest, int32_t destCapacity, int32_t *pDestLength, const UChar *src, int32_t srcLength, UErrorCode *pErrorCode)
{
  if (*pErrorCode > 0)
  {
    return 0;
  }

  v8 = src;
  if (src)
  {
    v9 = 1;
  }

  else
  {
    v9 = srcLength == 0;
  }

  v10 = !v9;
  if (srcLength < -1 || (v10 & 1) != 0 || ((v6 = dest) == 0 ? (v12 = destCapacity == 0) : (v12 = 1), v12 ? (v13 = 0) : (v13 = 1), destCapacity < 0 || v13))
  {
    v6 = 0;
    *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
    return v6;
  }

  v15 = &dest[destCapacity];
  if (srcLength == -1)
  {
    v17 = *src;
    if ((v17 - 1) <= 0x7E && destCapacity)
    {
      v18 = *src;
      v16 = dest;
      do
      {
        *v16++ = v18;
        v19 = v8[1];
        ++v8;
        v17 = v19;
        v18 = v19;
      }

      while ((v19 - 1) <= 0x7E && v16 < v15);
    }

    else
    {
      v16 = dest;
    }

    if (!v17)
    {
      v38 = (v16 - dest);
      if (pDestLength)
      {
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    srcLength = u_strlen(v8);
  }

  else
  {
    v16 = dest;
  }

  v21 = &v8[srcLength];
  if (!v8)
  {
    v21 = 0;
  }

  while (1)
  {
    v22 = v15 - v16;
    v23 = (v21 - v8) >> 1;
    v24 = v15 - v16 < v23 || v23 < 1;
    if (!v24 && *v8 <= 0x7Fu)
    {
      v25 = v8;
      if (v8 < v21)
      {
        do
        {
          v26 = *v25;
          if ((v26 - 1) > 0x7E)
          {
            break;
          }

          *v16++ = v26;
          v25 += 2;
        }

        while (v25 < v21);
      }

      v27 = (v25 - v8) >> 1;
      v22 -= v27;
      LODWORD(v23) = v23 - v27;
      v8 = v25;
    }

    v28 = v22 / 3;
    if (v28 < v23)
    {
      LODWORD(v23) = v28;
    }

    if (v23 < 3)
    {
      break;
    }

    v29 = v23 + 1;
    do
    {
      v31 = *v8++;
      v30 = v31;
      if (v31 - 1 > 0x7E)
      {
        v32 = v30 & 0x3F | 0x80;
        if (v30 > 0x7FF)
        {
          *v16 = (v30 >> 12) | 0xE0;
          v16[1] = (v30 >> 6) & 0x3F | 0x80;
          v16[2] = v32;
          v16 += 3;
        }

        else
        {
          *v16 = (v30 >> 6) | 0xC0;
          v16[1] = v32;
          v16 += 2;
        }
      }

      else
      {
        *v16++ = v30;
      }

      --v29;
    }

    while (v29 > 1);
  }

  if (v8 >= v21)
  {
    v37 = 0;
    goto LABEL_74;
  }

  while (1)
  {
    v33 = v8;
    v35 = *v8++;
    v34 = v35;
    if (v35 - 1 <= 0x7E)
    {
      if (v16 >= v15)
      {
        v37 = 1;
        goto LABEL_73;
      }

      *v16++ = v34;
      goto LABEL_65;
    }

    v36 = v15 - v16;
    if (v34 > 0x7FF)
    {
      break;
    }

    if (v36 < 2)
    {
      v37 = 2;
      goto LABEL_73;
    }

    *v16 = (v34 >> 6) | 0xC0;
    v16[1] = v34 & 0x3F | 0x80;
    v16 += 2;
LABEL_65:
    if (v8 >= v21)
    {
      v37 = 0;
      goto LABEL_73;
    }
  }

  if (v36 >= 3)
  {
    *v16 = (v34 >> 12) | 0xE0;
    v16[1] = (v34 >> 6) & 0x3F | 0x80;
    v16[2] = v34 & 0x3F | 0x80;
    v16 += 3;
    goto LABEL_65;
  }

  v37 = 3;
LABEL_73:
  v8 = v33 + 1;
LABEL_74:
  while (v8 < v21)
  {
    v39 = *v8++;
    v40 = v39 - 1;
    if (v39 < 0x800)
    {
      v41 = 2;
    }

    else
    {
      v41 = 3;
    }

    if (v40 < 0x7F)
    {
      v41 = 1;
    }

    v37 += v41;
  }

  v38 = (v37 + v16 - v6);
  if (pDestLength)
  {
LABEL_82:
    *pDestLength = v38;
  }

LABEL_83:
  u_terminateChars(v6, destCapacity, v38, pErrorCode);
  return v6;
}

UBool utext_moveIndex32(UText *ut, int32_t delta)
{
  v2 = delta;
  if (delta < 1)
  {
    if (delta < 0)
    {
      do
      {
        chunkOffset = ut->chunkOffset;
        if (chunkOffset <= 0)
        {
          v6 = (ut->pFuncs->access)(ut, ut->chunkNativeStart, 0);
          if (!v6)
          {
            return v6;
          }

          chunkOffset = ut->chunkOffset;
        }

        if ((ut->chunkContents[chunkOffset - 1] & 0xF800) == 0xD800)
        {
          if (utext_previous32(ut) == -1)
          {
LABEL_23:
            LOBYTE(v6) = 0;
            return v6;
          }
        }

        else
        {
          ut->chunkOffset = chunkOffset - 1;
        }
      }

      while (!__CFADD__(v2++, 1));
    }
  }

  else
  {
    v4 = delta + 1;
    do
    {
      v5 = ut->chunkOffset;
      if (v5 >= ut->chunkLength)
      {
        v6 = (ut->pFuncs->access)(ut, ut->chunkNativeLimit, 1);
        if (!v6)
        {
          return v6;
        }

        v5 = ut->chunkOffset;
      }

      if ((ut->chunkContents[v5] & 0xF800) == 0xD800)
      {
        if (utext_next32(ut) == -1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        ut->chunkOffset = v5 + 1;
      }

      --v4;
    }

    while (v4 > 1);
  }

  LOBYTE(v6) = 1;
  return v6;
}

UChar32 utext_next32(UText *ut)
{
  chunkOffset = ut->chunkOffset;
  if (chunkOffset >= ut->chunkLength)
  {
    if (!(ut->pFuncs->access)(ut, ut->chunkNativeLimit, 1))
    {
      return -1;
    }

    chunkOffset = ut->chunkOffset;
  }

  chunkContents = ut->chunkContents;
  v4 = chunkOffset + 1;
  ut->chunkOffset = chunkOffset + 1;
  v5 = chunkContents[chunkOffset];
  if ((v5 & 0xFC00) == 0xD800)
  {
    if (v4 >= ut->chunkLength)
    {
      if (!(ut->pFuncs->access)(ut, ut->chunkNativeLimit, 1))
      {
        return v5;
      }

      chunkContents = ut->chunkContents;
      v4 = ut->chunkOffset;
    }

    v6 = chunkContents[v4];
    if ((v6 & 0xFC00) == 0xDC00)
    {
      v5 = v6 + (v5 << 10) - 56613888;
      ut->chunkOffset = v4 + 1;
    }
  }

  return v5;
}

UChar32 utext_previous32(UText *ut)
{
  chunkOffset = ut->chunkOffset;
  if (chunkOffset <= 0)
  {
    if (!(ut->pFuncs->access)(ut, ut->chunkNativeStart, 0))
    {
      return -1;
    }

    chunkOffset = ut->chunkOffset;
  }

  v3 = chunkOffset - 1;
  ut->chunkOffset = chunkOffset - 1;
  chunkContents = ut->chunkContents;
  v5 = chunkContents[chunkOffset - 1];
  if ((v5 & 0xFC00) == 0xDC00)
  {
    if (chunkOffset > 1)
    {
      v6 = v3;
    }

    else
    {
      if (!(ut->pFuncs->access)(ut, ut->chunkNativeStart, 0))
      {
        return v5;
      }

      chunkContents = ut->chunkContents;
      v3 = ut->chunkOffset;
      v6 = v3;
    }

    v7 = chunkContents[v6 - 1];
    if ((v7 & 0xFC00) == 0xD800)
    {
      v5 = v5 + (v7 << 10) - 56613888;
      ut->chunkOffset = v3 - 1;
    }
  }

  return v5;
}

int64_t utext_getNativeIndex(const UText *ut)
{
  chunkOffset = ut->chunkOffset;
  if (chunkOffset <= ut->nativeIndexingLimit)
  {
    return ut->chunkNativeStart + chunkOffset;
  }

  else
  {
    return (ut->pFuncs->mapOffsetToNative)();
  }
}

void utext_setNativeIndex(UText *ut, int64_t nativeIndex)
{
  chunkNativeStart = ut->chunkNativeStart;
  if (nativeIndex < chunkNativeStart || ut->chunkNativeLimit <= nativeIndex)
  {
    (ut->pFuncs->access)(ut);
    chunkOffset = ut->chunkOffset;
  }

  else
  {
    chunkOffset = nativeIndex - chunkNativeStart;
    if (ut->nativeIndexingLimit < nativeIndex - chunkNativeStart)
    {
      chunkOffset = (ut->pFuncs->mapNativeIndexToUTF16)(ut);
    }

    ut->chunkOffset = chunkOffset;
  }

  if (chunkOffset < ut->chunkLength && (ut->chunkContents[chunkOffset] & 0xFC00) == 0xDC00)
  {
    if (!chunkOffset)
    {
      (ut->pFuncs->access)(ut, ut->chunkNativeStart, 0);
    }

    v5 = ut->chunkOffset;
    if (v5 >= 1 && (ut->chunkContents[v5 - 1] & 0xFC00) == 0xD800)
    {
      ut->chunkOffset = v5 - 1;
    }
  }
}

int64_t utext_getPreviousNativeIndex(UText *ut)
{
  chunkOffset = ut->chunkOffset;
  v3 = (chunkOffset - 1);
  if (chunkOffset < 1)
  {
    if (!chunkOffset && !ut->chunkNativeStart)
    {
      return 0;
    }

LABEL_7:
    utext_previous32(ut);
    v5 = ut->chunkOffset;
    if (v5 <= ut->nativeIndexingLimit)
    {
      v6 = ut->chunkNativeStart + v5;
    }

    else
    {
      v6 = (ut->pFuncs->mapOffsetToNative)(ut);
    }

    utext_next32(ut);
    return v6;
  }

  if ((ut->chunkContents[v3] & 0xFC00) == 0xDC00)
  {
    goto LABEL_7;
  }

  if (v3 > ut->nativeIndexingLimit)
  {
    ut->chunkOffset = v3;
    result = (ut->pFuncs->mapOffsetToNative)(ut);
    ++ut->chunkOffset;
    return result;
  }

  return ut->chunkNativeStart + v3;
}

UChar32 utext_current32(UText *ut)
{
  chunkOffset = ut->chunkOffset;
  if (chunkOffset == ut->chunkLength)
  {
    if (!(ut->pFuncs->access)(ut, ut->chunkNativeLimit, 1))
    {
      return -1;
    }

    chunkOffset = ut->chunkOffset;
  }

  chunkContents = ut->chunkContents;
  v4 = chunkContents[chunkOffset];
  if ((v4 & 0xFC00) != 0xD800)
  {
    return v4;
  }

  v5 = chunkOffset + 1;
  if (v5 >= ut->chunkLength)
  {
    chunkNativeLimit = ut->chunkNativeLimit;
    if ((ut->pFuncs->access)(ut, chunkNativeLimit, 1))
    {
      v6 = ut->chunkContents[ut->chunkOffset];
    }

    else
    {
      v6 = 0;
    }

    v8 = (ut->pFuncs->access)(ut, chunkNativeLimit, 0);
    ut->chunkOffset = ut->chunkLength - 1;
    if (v8)
    {
      goto LABEL_11;
    }

    return -1;
  }

  v6 = chunkContents[v5];
LABEL_11:
  if (v6 >> 10 == 55)
  {
    return v6 + (v4 << 10) - 56613888;
  }

  return v4;
}

UChar32 utext_char32At(UText *ut, int64_t nativeIndex)
{
  chunkNativeStart = ut->chunkNativeStart;
  v5 = nativeIndex - chunkNativeStart;
  if (nativeIndex < chunkNativeStart || chunkNativeStart + ut->nativeIndexingLimit <= nativeIndex)
  {
    v6 = -1;
  }

  else
  {
    ut->chunkOffset = v5;
    v6 = ut->chunkContents[v5];
    if ((v6 & 0xF800) != 0xD800)
    {
      return v6;
    }
  }

  utext_setNativeIndex(ut, nativeIndex);
  if (ut->chunkNativeStart > nativeIndex)
  {
    return v6;
  }

  chunkOffset = ut->chunkOffset;
  if (chunkOffset >= ut->chunkLength)
  {
    return v6;
  }

  v6 = ut->chunkContents[chunkOffset];
  if ((v6 & 0xF800) != 0xD800)
  {
    return v6;
  }

  return utext_current32(ut);
}

UChar32 utext_next32From(UText *ut, int64_t nativeIndex)
{
  chunkNativeStart = ut->chunkNativeStart;
  v5 = nativeIndex - chunkNativeStart;
  if (nativeIndex < chunkNativeStart || ut->chunkNativeLimit <= nativeIndex)
  {
    if (!(ut->pFuncs->access)(ut, nativeIndex, 1))
    {
      return -1;
    }

    LODWORD(v5) = ut->chunkOffset;
  }

  else if (v5 > ut->nativeIndexingLimit)
  {
    LODWORD(v5) = (ut->pFuncs->mapNativeIndexToUTF16)(ut, nativeIndex);
  }

  chunkContents = ut->chunkContents;
  ut->chunkOffset = v5 + 1;
  result = chunkContents[v5];
  if ((result & 0xF800) == 0xD800)
  {
    utext_setNativeIndex(ut, nativeIndex);

    return utext_next32(ut);
  }

  return result;
}

UChar32 utext_previous32From(UText *ut, int64_t nativeIndex)
{
  chunkNativeStart = ut->chunkNativeStart;
  v5 = __OFSUB__(nativeIndex, chunkNativeStart);
  v6 = nativeIndex - chunkNativeStart;
  if (!((v6 < 0) ^ v5 | (v6 == 0)) && ut->chunkNativeLimit >= nativeIndex)
  {
    if (v6 <= ut->nativeIndexingLimit)
    {
      ut->chunkOffset = v6;
      goto LABEL_9;
    }

    v8 = (ut->pFuncs->mapNativeIndexToUTF16)(ut, nativeIndex);
    ut->chunkOffset = v8;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (!(ut->pFuncs->access)(ut, nativeIndex, 0))
  {
    return -1;
  }

LABEL_9:
  v9 = ut->chunkOffset - 1;
  ut->chunkOffset = v9;
  result = ut->chunkContents[v9];
  if ((result & 0xF800) == 0xD800)
  {
    utext_setNativeIndex(ut, nativeIndex);

    return utext_previous32(ut);
  }

  return result;
}

UBool utext_equals(const UText *a, const UText *b)
{
  v2 = 0;
  if (a && b)
  {
    if (a->magic == 878368812 && b->magic == 878368812 && (pFuncs = a->pFuncs, pFuncs == b->pFuncs) && a->context == b->context)
    {
      chunkOffset = a->chunkOffset;
      if (chunkOffset <= a->nativeIndexingLimit)
      {
        v7 = a->chunkNativeStart + chunkOffset;
      }

      else
      {
        v7 = (pFuncs->mapOffsetToNative)();
      }

      v8 = b->chunkOffset;
      if (v8 <= b->nativeIndexingLimit)
      {
        v9 = b->chunkNativeStart + v8;
      }

      else
      {
        v9 = (b->pFuncs->mapOffsetToNative)(b);
      }

      return v7 == v9;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

int32_t utext_replace(UText *ut, int64_t nativeStart, int64_t nativeLimit, const UChar *replacementText, int32_t replacementLength, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if ((ut->providerProperties & 8) == 0)
  {
    *status = U_NO_WRITE_PERMISSION;
    return 0;
  }

  return (ut->pFuncs->replace)();
}

void utext_copy(UText *ut, int64_t nativeStart, int64_t nativeLimit, int64_t destIndex, UBool move, UErrorCode *status)
{
  if (*status <= 0)
  {
    if ((ut->providerProperties & 8) != 0)
    {
      (ut->pFuncs->copy)();
    }

    else
    {
      *status = U_NO_WRITE_PERMISSION;
    }
  }
}

UText *__cdecl utext_clone(UText *dest, const UText *src, UBool deep, UBool readOnly, UErrorCode *status)
{
  if (*status <= 0)
  {
    v6 = readOnly;
    dest = (src->pFuncs->clone)(dest);
    if (*status <= 0)
    {
      if (dest)
      {
        if (v6)
        {
          dest->providerProperties &= ~8u;
        }
      }

      else
      {
        *status = U_MEMORY_ALLOCATION_ERROR;
      }
    }
  }

  return dest;
}

UText *__cdecl utext_setup(UText *ut, int32_t extraSpace, UErrorCode *status)
{
  v3 = ut;
  if (*status > 0)
  {
    return v3;
  }

  if (!ut)
  {
    if (extraSpace <= 0)
    {
      v9 = 144;
    }

    else
    {
      v9 = extraSpace + 144;
    }

    v10 = malloc_type_malloc(v9, 0x10F0040E73C321EuLL);
    v3 = v10;
    if (v10)
    {
      *&v10->r = xmmword_1954817E0;
      *&v10->a = unk_1954817F0;
      *&v10->privA = xmmword_195481800;
      *&v10->chunkNativeStart = xmmword_1954817A0;
      *&v10->chunkContents = unk_1954817B0;
      *&v10->pExtra = xmmword_1954817C0;
      *&v10->p = unk_1954817D0;
      *&v10->magic = xmmword_195481780;
      *&v10->chunkNativeLimit = *algn_195481790;
      v10->flags = 1;
      if (v9 >= 1)
      {
        v10->extraSize = extraSpace;
        v10->pExtra = &v10[1];
      }

      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (ut->magic != 878368812)
  {
    v14 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_24:
    *status = v14;
    return v3;
  }

  flags = ut->flags;
  if ((flags & 4) != 0)
  {
    close = ut->pFuncs->close;
    if (close)
    {
      (close)(ut);
      flags = v3->flags;
    }
  }

  v3->flags = flags & 0xFFFFFFFB;
  if (v3->extraSize >= extraSpace)
  {
    goto LABEL_18;
  }

  if ((flags & 2) != 0)
  {
    free(v3->pExtra);
    v3->extraSize = 0;
  }

  v8 = malloc_type_malloc(extraSpace, 0xF71D5A0CuLL);
  v3->pExtra = v8;
  if (!v8)
  {
LABEL_23:
    v14 = U_MEMORY_ALLOCATION_ERROR;
    goto LABEL_24;
  }

  v3->extraSize = extraSpace;
  v3->flags |= 2u;
LABEL_18:
  if (*status <= 0)
  {
    v11 = v3->flags | 4;
    v3->chunkNativeLimit = 0;
    *&v3->flags = v11;
    *&v3->nativeIndexingLimit = 0;
    *&v3->chunkLength = 0;
    *(&v3->chunkNativeStart + 4) = 0;
    HIDWORD(v3->chunkContents) = 0;
    *&v3->context = 0u;
    *&v3->q = 0u;
    *&v3->privP = 0u;
    *&v3->b = 0u;
    *&v3->privB = 0;
    pExtra = v3->pExtra;
    if (pExtra)
    {
      extraSize = v3->extraSize;
      if (extraSize >= 1)
      {
        bzero(pExtra, extraSize);
      }
    }
  }

  return v3;
}

UText *__cdecl utext_close(UText *ut)
{
  v1 = ut;
  if (ut)
  {
    if (ut->magic == 878368812)
    {
      flags = ut->flags;
      if ((flags & 4) != 0)
      {
        close = ut->pFuncs->close;
        if (close)
        {
          (close)(ut);
          flags = v1->flags;
        }

        LOBYTE(v4) = flags & 0xFB;
        v1->flags = flags & 0xFFFFFFFB;
        if ((flags & 2) != 0)
        {
          free(v1->pExtra);
          v1->pExtra = 0;
          v4 = v1->flags & 0xFFFFFFFD;
          v1->flags = v4;
          v1->extraSize = 0;
        }

        v1->pFuncs = 0;
        if (v4)
        {
          free(v1);
          return 0;
        }
      }
    }
  }

  return v1;
}

UText *__cdecl utext_openUTF8(UText *ut, const char *s, int64_t length, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (s | length)
  {
    v7 = s;
  }

  else
  {
    v7 = &unk_195481810;
  }

  if ((length - 0x80000000) >= 0xFFFFFFFF7FFFFFFFLL && v7)
  {
    result = utext_setup(ut, 480, status);
    if (*status <= 0)
    {
      result->pFuncs = &unk_1F0936AE8;
      result->context = v7;
      result->b = length;
      result->c = length;
      if (length < 0)
      {
        result->c = 0;
        result->providerProperties |= 2u;
      }

      pExtra = result->pExtra;
      result->p = pExtra;
      result->q = pExtra + 240;
    }
  }

  else
  {
    result = 0;
    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return result;
}

UText *utext_openReplaceable(UText *a1, const void *a2, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (a2)
  {
    v7 = utext_setup(a1, 22, status);
    v3 = v7;
    if (*status <= 0)
    {
      v7->providerProperties = 8;
      if ((*(*a2 + 48))(a2))
      {
        v3->providerProperties |= 0x10u;
      }

      v3->pFuncs = &unk_1F0936B58;
      v3->context = a2;
    }
  }

  else
  {
    v3 = 0;
    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return v3;
}

UText *utext_openUnicodeString(UText *a1, uint64_t a2, UErrorCode *a3)
{
  result = utext_openConstUnicodeString(a1, a2, a3);
  if (*a3 <= 0)
  {
    result->providerProperties |= 8u;
  }

  return result;
}

UText *utext_openConstUnicodeString(UText *ut, uint64_t a2, UErrorCode *status)
{
  v5 = ut;
  if (*status <= 0 && (*(a2 + 8) & 1) != 0)
  {
    utext_openUChars(ut, 0, 0, status);
    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  else
  {
    v6 = utext_setup(ut, 0, status);
    v5 = v6;
    if (*status <= 0)
    {
      v6->pFuncs = &unk_1F0936BC8;
      v6->context = a2;
      v6->providerProperties = 4;
      v7 = *(a2 + 8);
      if ((v7 & 0x11) != 0)
      {
        v8 = 0;
      }

      else if ((v7 & 2) != 0)
      {
        v8 = (a2 + 10);
      }

      else
      {
        v8 = *(a2 + 24);
      }

      v6->chunkContents = v8;
      if (*(a2 + 8) < 0)
      {
        v9 = *(a2 + 12);
      }

      else
      {
        v9 = *(a2 + 8) >> 5;
      }

      v6->chunkLength = v9;
      v6->chunkNativeStart = 0;
      v6->chunkNativeLimit = v9;
      v6->nativeIndexingLimit = v9;
    }
  }

  return v5;
}

UText *__cdecl utext_openUChars(UText *ut, const UChar *s, int64_t length, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  if (s | length)
  {
    v7 = s;
  }

  else
  {
    v7 = &unk_195481812;
  }

  if ((length - 0x80000000) >= 0xFFFFFFFF7FFFFFFFLL && v7)
  {
    result = utext_setup(ut, 0, status);
    if (*status <= 0)
    {
      result->context = v7;
      if (length == -1)
      {
        v8 = 6;
      }

      else
      {
        v8 = 4;
      }

      result->providerProperties = v8;
      result->a = length;
      result->chunkContents = v7;
      result->pFuncs = &unk_1F0936C38;
      result->chunkNativeStart = 0;
      v9 = length & ~(length >> 63);
      result->chunkNativeLimit = v9;
      result->chunkOffset = 0;
      result->chunkLength = v9;
      result->nativeIndexingLimit = v9;
    }
  }

  else
  {
    result = 0;
    *status = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return result;
}

double utext_openCharacterIterator(UText *a1, int *a2, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (a2[4] < 1)
    {
      v5 = utext_setup(a1, 64, status);
      if (*status <= 0)
      {
        v5->a = a2[5];
        pExtra = v5->pExtra;
        v5->p = pExtra;
        v5->q = pExtra + 32;
        v5->providerProperties = 0;
        v5->context = a2;
        result = NAN;
        *&v5->b = -1;
        v5->chunkContents = pExtra;
        v5->pFuncs = &unk_1F0936CA8;
        v5->chunkNativeStart = -1;
        *&v5->chunkOffset = 1;
        v5->chunkNativeLimit = 0;
        v5->nativeIndexingLimit = 1;
      }
    }

    else
    {
      *status = U_UNSUPPORTED_ERROR;
    }
  }

  return result;
}

UText *sub_1952A1528(UText *a1, unint64_t a2, int a3, UErrorCode *a4)
{
  v7 = sub_1952A20DC(a1, a2, a4);
  if (a3 && *a4 <= 0)
  {
    v8 = ((*(*(a2 + 56) + 24))(a2) + 1);
    v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      memcpy(v9, *(a2 + 72), v8);
      v7->context = v10;
      v7->providerProperties |= 0x20u;
    }

    else
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return v7;
}

uint64_t sub_1952A15E0(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 < 0)
  {
    v2 = *(a1 + 124);
      ;
    }

    v1 = v2 - 1;
    if (v2 - 1 >= 0x7FFFFFFF)
    {
      v1 = 0x7FFFFFFF;
    }

    *(a1 + 120) = v1;
    *(a1 + 8) &= ~2u;
  }

  return v1;
}

BOOL sub_1952A1624(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 120);
  v6 = 0x7FFFFFFF;
  if (a2 < 0x7FFFFFFF)
  {
    v6 = a2;
  }

  if (a2 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > v5)
  {
    if ((v5 & 0x80000000) != 0)
    {
      v8 = *(a1 + 124);
      if (v7 >= v8)
      {
        if (v8 < v7)
        {
          v9 = &v4[v8];
          while (*v9++)
          {
            *(a1 + 124) = ++v8;
            if (v7 == v8)
            {
              v8 = v7;
              break;
            }
          }
        }

        if (!v4[v8])
        {
          *(a1 + 120) = v8;
          *(a1 + 8) &= ~2u;
          v7 = v8;
          v5 = v8;
        }
      }
    }

    else
    {
      v7 = *(a1 + 120);
    }
  }

  v11 = v7;
  if (!a3)
  {
    v16 = *(a1 + 32);
    if (v16 == v7)
    {
      if (!v7)
      {
LABEL_118:
        result = 0;
        *(a1 + 40) = 0;
        return result;
      }

      v13 = *(a1 + 88);
      v14 = *v13;
      if (v7 > *v13)
      {
        v15 = *(v13 + 4);
        if (v7 <= v15)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      v13 = *(a1 + 88);
      v14 = *v13;
    }

    if (v7 > v14)
    {
      v15 = *(v13 + 4);
      if (v7 <= v15)
      {
        goto LABEL_58;
      }
    }

    if (v7)
    {
      if (v16 < v7 && *(a1 + 16) >= v7)
      {
        v70 = *(*(a1 + 80) - *(*(a1 + 80) + 20) + v7 + 132) - *(*(a1 + 80) + 8);
        *(a1 + 40) = v70;
        return v70 != 0;
      }

      if (v7 != v5 && v4[v7] <= -65)
      {
        v7 = utf8_back1SafeBody(v4, 0, v7);
        v13 = *(a1 + 88);
      }

      v18 = *(a1 + 80);
      *(a1 + 80) = v13;
      *(a1 + 88) = v18;
      v19 = v13 + 24;
      v20 = v13 + 96;
      v21 = v7 - 101;
      pi = v7;
      *(v13 + 130) = 101;
      v22 = 34;
      *(v13 + 233) = 34;
      v23 = 34;
      do
      {
        v24 = pi;
        v25 = (pi - 1);
        if (pi < 1 || pi - v21 < 6)
        {
          goto LABEL_57;
        }

        --pi;
        v27 = v23 - 1;
        v28 = v4[v25];
        if (v28 < 0)
        {
          v29 = utf8_prevCharSafeBody(v4, 0, &pi, v4[v25], -3);
          if (v29 >= 0x10000)
          {
            *(v19 + 2 * v27) = v29 & 0x3FF | 0xDC00;
            *(v20 + v27) = pi - v21;
            v29 = (v29 >> 10) - 10304;
            v27 = v23 - 2;
          }

          *(v19 + 2 * v27) = v29;
          *(v20 + v27) = pi - v21;
          v30 = v25 + 1;
          v31 = (v13 - (v7 - 101) + 132 + v25);
          do
          {
            *v31-- = v27;
            --v30;
          }

          while (v30 > pi);
          v23 = v27;
          v22 = v27;
        }

        else
        {
          *(v19 + 2 * v27) = v28;
          *(v13 + 132 + v25 - v21) = v23 - 1;
          *(v20 + v27) = pi - v21;
          --v23;
        }
      }

      while (v23 > 2);
      v24 = pi;
LABEL_57:
      *v13 = v24;
      *(v13 + 4) = v7;
      *(v13 + 8) = v23;
      *(v13 + 12) = 34;
      v32 = v22 - v23;
      *(v13 + 16) = v32;
      *(v13 + 20) = v21;
      *(a1 + 48) = v19 + 2 * v23;
      *(a1 + 40) = 34 - v23;
      *(a1 + 44) = 34 - v23;
      *(a1 + 32) = v24;
      *(a1 + 16) = v7;
      result = 1;
      *(a1 + 28) = v32;
      return result;
    }

    if (!v14)
    {
LABEL_116:
      v65 = *(a1 + 80);
      *(a1 + 80) = v13;
      *(a1 + 88) = v65;
      v67 = *(v13 + 4);
      v66 = *(v13 + 8);
      *(a1 + 48) = v13 + 2 * v66 + 24;
      v68 = *(v13 + 16);
      v69 = *(v13 + 12) - v66;
      *(a1 + 44) = v69;
      *(a1 + 32) = v14;
      *(a1 + 16) = v67;
      *(a1 + 28) = v68;
      if (v7 == v67)
      {
        result = 0;
        *(a1 + 40) = v69;
        return result;
      }

      goto LABEL_118;
    }

LABEL_115:
    *v13 = v7;
    *(v13 + 4) = v7;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 20) = v7;
    *(v13 + 96) = 0;
    *(v13 + 132) = 0;
    v13 = *(a1 + 88);
    v14 = *v13;
    goto LABEL_116;
  }

  v12 = *(a1 + 16);
  if (v12 == v7)
  {
    if (v7 == v5)
    {
LABEL_33:
      result = 0;
      *(a1 + 40) = *(a1 + 44);
      return result;
    }

    v13 = *(a1 + 88);
    v14 = *v13;
    if (v7 >= *v13)
    {
      v15 = *(v13 + 4);
      if (v7 < v15)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    v13 = *(a1 + 88);
    v14 = *v13;
  }

  if (v7 >= v14)
  {
    v15 = *(v13 + 4);
    if (v7 < v15)
    {
LABEL_58:
      v33 = *(v13 + 12);
      v34 = *(v13 + 8);
      *(a1 + 48) = v13 + 2 * v34 + 24;
      v35 = *(a1 + 80);
      *(a1 + 80) = v13;
      *(a1 + 88) = v35;
      *(a1 + 44) = v33 - v34;
      *(a1 + 32) = v14;
      *(a1 + 16) = v15;
      v36 = *(v13 + 20);
      *(a1 + 28) = *(v13 + 16);
      v37 = *(v13 - v36 + v7 + 132) - v34;
LABEL_62:
      *(a1 + 40) = v37;
      return 1;
    }
  }

  if (v7 == v5)
  {
    if (v12 == v7)
    {
      goto LABEL_33;
    }

    if (v7 == *(v13 + 4))
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  if (v12 > v7 && *(a1 + 32) <= v7)
  {
    v37 = *(*(a1 + 80) - *(*(a1 + 80) + 20) + v7 + 132) - *(*(a1 + 80) + 8);
    goto LABEL_62;
  }

  if (v4[v7] <= -65)
  {
    v38 = utf8_back1SafeBody(v4, 0, v7);
    v13 = *(a1 + 88);
    v5 = *(a1 + 120);
    v11 = v38;
    v7 = v38;
  }

  v39 = 0;
  v76 = 0;
  v40 = *(a1 + 80);
  v72 = v5;
  if (v5 >= 0x7FFFFFFF)
  {
    v41 = 0x7FFFFFFF;
  }

  else
  {
    v41 = v5;
  }

  v42 = v13 + 24;
  *(a1 + 80) = v13;
  *(a1 + 88) = v40;
  v43 = v13 + 96;
  v77 = v13 + 132;
  v71 = v11;
  v73 = v13 - v11 + 132;
  LODWORD(v44) = v7;
  v75 = v4;
  v74 = v41;
  while (1)
  {
    v45 = v44;
    v46 = v4[v44];
    if (v4[v44] < 1)
    {
      break;
    }

    v47 = 0;
    *(v42 + 2 * v39) = v46;
    v48 = v44 - v7;
    *(v43 + v39) = v48;
    *(v77 + v48) = v39;
    LODWORD(v44) = v44 + 1;
    ++v39;
LABEL_107:
    if (v44 >= v41 || v39 >= 32)
    {
      LOBYTE(v46) = v76 == 0;
      goto LABEL_110;
    }
  }

  if (!v76)
  {
    *(v13 + 16) = v39;
    v46 = v4[v44];
    v76 = 1;
  }

  v49 = v44 + 1;
  if ((v46 & 0x80) != 0)
  {
    if (v49 == v41)
    {
LABEL_81:
      v46 = 65533;
      LODWORD(v44) = v41;
      goto LABEL_99;
    }

    if (v46 < 0xE0)
    {
      if (v46 >= 0xC2)
      {
        v56 = v46 & 0x1F;
        LODWORD(v44) = v44 + 1;
LABEL_90:
        v57 = v4[v44] ^ 0x80;
        if (v57 <= 0x3F)
        {
          v46 = v57 | (v56 << 6);
          LODWORD(v44) = v44 + 1;
          goto LABEL_76;
        }

        goto LABEL_98;
      }
    }

    else if (v46 > 0xEF)
    {
      if (v46 <= 0xF4)
      {
        v58 = v46 - 240;
        v59 = v4[v49];
        if ((byte_195481814[v59 >> 4] >> v58))
        {
          v44 = v44 + 2;
          if (v45 + 2 == v41)
          {
            goto LABEL_81;
          }

          v55 = v4[v44] ^ 0x80;
          if (v55 > 0x3F)
          {
LABEL_98:
            v46 = 65533;
            goto LABEL_99;
          }

          LODWORD(v54) = v59 & 0x3F | (v58 << 6);
          goto LABEL_86;
        }
      }
    }

    else
    {
      v54 = v46 & 0xF;
      if ((a00000000000000[v54] >> (v4[v49] >> 5)))
      {
        v55 = v4[v49] & 0x3F;
        LODWORD(v44) = v44 + 1;
LABEL_86:
        LODWORD(v44) = v44 + 1;
        if (v44 == v41)
        {
          goto LABEL_81;
        }

        v56 = v55 | (v54 << 6);
        goto LABEL_90;
      }
    }

    v46 = 65533;
    LODWORD(v44) = v44 + 1;
    goto LABEL_99;
  }

  LODWORD(v44) = v44 + 1;
LABEL_76:
  if ((v72 & 0x80000000) == 0 || v46)
  {
    if (HIWORD(v46))
    {
      v47 = 0;
      v50 = v39;
      v51 = (v42 + 2 * v39);
      *v51 = (v46 >> 10) - 10304;
      v52 = v39 + 2;
      v51[1] = v46 & 0x3FF | 0xDC00;
      v53 = v39 + 1;
LABEL_100:
      if (v52 <= v53)
      {
        v60 = v53;
      }

      else
      {
        v60 = v52;
      }

      v61 = v43;
      memset((v43 + v50), v45 - v7, (v60 + ~v39) + 1);
      if (v44 <= v49)
      {
        v62 = v45 + 1;
      }

      else
      {
        v62 = v44;
      }

      memset((v73 + v45), v39, (v62 + ~v45) + 1);
      v43 = v61;
      v39 = v52;
      v4 = v75;
      v42 = v13 + 24;
      v41 = v74;
      goto LABEL_107;
    }

LABEL_99:
    v53 = v39 + 1;
    v50 = v39;
    *(v42 + 2 * v39) = v46;
    v47 = v46 == 0;
    v52 = v39 + 1;
    goto LABEL_100;
  }

  LODWORD(v44) = v44 - 1;
  v47 = 1;
LABEL_110:
  v63 = v44 - v7;
  *(v43 + v39) = v63;
  *(v77 + v63) = v39;
  *v13 = v7;
  *(v13 + 4) = v44;
  *(v13 + 8) = 0;
  *(v13 + 12) = v39;
  if (v46)
  {
    *(v13 + 16) = v39;
    v64 = v39;
  }

  else
  {
    v64 = *(v13 + 16);
  }

  *(v13 + 20) = v7;
  *(a1 + 48) = v42;
  *(a1 + 40) = 0;
  *(a1 + 44) = v39;
  *(a1 + 32) = v71;
  *(a1 + 16) = v44;
  *(a1 + 28) = v64;
  if ((v72 & 0x80000000) != 0 && v44 > *(a1 + 124))
  {
    *(a1 + 124) = v44;
    if (v47)
    {
      *(a1 + 120) = v44;
      *(a1 + 8) &= ~2u;
    }
  }

  return 1;
}

uint64_t sub_1952A1DA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, int *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  if ((a5 & 0x80000000) != 0 || (v10 = a3, !a4) && a5)
  {
    v6 = 0;
    v12 = 1;
LABEL_7:
    *a6 = v12;
    return v6;
  }

  v14 = *(a1 + 120);
  if (a2 < 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a1 + 120);
    if (v14 >= a2)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      LODWORD(v14) = 0;
      goto LABEL_17;
    }
  }

  a2 = v15;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v14 < a3)
  {
LABEL_17:
    v10 = v14;
  }

  if (a2 > v10)
  {
    v6 = 0;
    v12 = 8;
    goto LABEL_7;
  }

  v16 = *(a1 + 72);
  v17 = *(a1 + 16);
  if (v17 > a2)
  {
    v18 = a2 - 3;
    v19 = 3;
    while (*(v16 + a2) < 0)
    {
      if (*(v16 + a2) - 194 < 0x33 || a2 == 0)
      {
        break;
      }

      --a2;
      if (!--v19)
      {
        LODWORD(a2) = v18;
        break;
      }
    }
  }

  if (v17 > v10)
  {
    v21 = 0;
    v22 = v10;
    while (*(v16 + v22) < 0)
    {
      if (*(v16 + v22) - 194 < 0x33 || v22 == 0)
      {
        break;
      }

      --v22;
      if (++v21 == 3)
      {
        v10 -= 3;
        goto LABEL_39;
      }
    }

    v10 -= v21;
  }

LABEL_39:
  v24 = 0;
  v25 = (v16 + a2);
  v26 = v10 - a2;
  if (a4)
  {
    v27 = a4 + 2 * a5;
  }

  else
  {
    v27 = 0;
  }

  pi = 0;
  v28 = 0;
  v29 = a4;
  if (v26 >= 1 && v27 > a4)
  {
    v24 = 0;
    v29 = a4;
    while (1)
    {
      pi = v24 + 1;
      v30 = v25[v24];
      if (v30 < 0)
      {
        v31 = utf8_nextCharSafeBody(v25, &pi, v26, v25[v24], -3);
        if (HIWORD(v31))
        {
          *v29 = (v31 >> 10) - 10304;
          if ((v29 + 1) >= v27)
          {
            v28 = 1;
            v24 = pi;
            ++v29;
            break;
          }

          v29[1] = v31 & 0x3FF | 0xDC00;
          v29 += 2;
        }

        else
        {
          *v29++ = v31;
        }
      }

      else
      {
        *v29++ = v30;
      }

      v24 = pi;
      if (pi >= v26 || v29 >= v27)
      {
        v28 = 0;
        break;
      }
    }
  }

  while (v24 < v26)
  {
    v33 = v24 + 1;
    pi = v24 + 1;
    v34 = v25[v24];
    if (v34 < 0)
    {
      if (utf8_nextCharSafeBody(v25, &pi, v26, v34, -3) < 0x10000)
      {
        v35 = 1;
      }

      else
      {
        v35 = 2;
      }

      v28 += v35;
      v24 = pi;
    }

    else
    {
      ++v28;
      v24 = v33;
    }
  }

  v6 = v28 + ((v29 - a4) >> 1);
  u_terminateUChars(a4, a5, v6, a6);
  sub_1952A1624(a1, v10, 1);
  return v6;
}

void sub_1952A20A4(uint64_t a1)
{
  if ((*(a1 + 8) & 0x20) != 0)
  {
    free(*(a1 + 72));
    *(a1 + 72) = 0;
  }
}

UText *sub_1952A20DC(UText *a1, unint64_t a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = a2;
    v6 = *(a2 + 24);
    v7 = utext_setup(a1, *(a2 + 24), a3);
    v3 = v7;
    if (*a3 > 0)
    {
      return v3;
    }

    pExtra = v7->pExtra;
    flags = v7->flags;
    sizeOfStruct = *(v5 + 12);
    if (sizeOfStruct >= v7->sizeOfStruct)
    {
      sizeOfStruct = v7->sizeOfStruct;
    }

    memcpy(v7, v5, sizeOfStruct);
    v3->pExtra = pExtra;
    v3->flags = flags;
    if (v6 >= 1)
    {
      memcpy(pExtra, *(v5 + 64), v6);
    }

    context = v3->context;
    v12 = *(v5 + 64);
    if (context < v12 || context >= v12 + *(v5 + 24))
    {
      if (context < v5 || (v14 = v5, v13 = v3, context >= v5 + *(v5 + 12)))
      {
LABEL_14:
        p = v3->p;
        if (p < v12 || p >= v12 + *(v5 + 24))
        {
          if (p < v5 || (v17 = v5, v16 = v3, p >= v5 + *(v5 + 12)))
          {
LABEL_20:
            q = v3->q;
            if (q < v12 || q >= v12 + *(v5 + 24))
            {
              if (q < v5 || (v20 = v5, v19 = v3, q >= v5 + *(v5 + 12)))
              {
LABEL_26:
                r = v3->r;
                if (r < v12 || r >= v12 + *(v5 + 24))
                {
                  if (r < v5 || (v23 = v5, v22 = v3, r >= v5 + *(v5 + 12)))
                  {
LABEL_32:
                    chunkContents = v3->chunkContents;
                    if (chunkContents < v12 || chunkContents >= v12 + *(v5 + 24))
                    {
                      if (chunkContents < v5)
                      {
                        goto LABEL_38;
                      }

                      v25 = v3;
                      if (chunkContents >= v5 + *(v5 + 12))
                      {
                        goto LABEL_38;
                      }
                    }

                    else
                    {
                      v25 = v3->pExtra;
                      v5 = v12;
                    }

                    v3->chunkContents = &v25[chunkContents - v5];
LABEL_38:
                    v3->providerProperties &= ~0x20u;
                    return v3;
                  }
                }

                else
                {
                  v22 = v3->pExtra;
                  v23 = v12;
                }

                v3->r = &v22[r - v23];
                v12 = *(v5 + 64);
                goto LABEL_32;
              }
            }

            else
            {
              v19 = v3->pExtra;
              v20 = v12;
            }

            v3->q = &v19[q - v20];
            v12 = *(v5 + 64);
            goto LABEL_26;
          }
        }

        else
        {
          v16 = v3->pExtra;
          v17 = v12;
        }

        v3->p = &v16[p - v17];
        v12 = *(v5 + 64);
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v3->pExtra;
      v14 = *(v5 + 64);
    }

    v3->context = &v13[context - v14];
    v12 = *(v5 + 64);
    goto LABEL_14;
  }

  return 0;
}

UText *sub_1952A234C(UText *a1, unint64_t a2, int a3, UErrorCode *a4)
{
  v7 = sub_1952A20DC(a1, a2, a4);
  if (a3 && *a4 <= 0)
  {
    v7->context = (*(**(a2 + 72) + 56))(*(a2 + 72));
    v7->providerProperties |= 0x28u;
  }

  return v7;
}

uint64_t sub_1952A2418(uint64_t a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 72);
  LODWORD(v7) = (*(*v6 + 64))(v6);
  v8 = v7;
  if (a2 < 0)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = v7;
  if (v7 < a2)
  {
LABEL_5:
    a2 = v7;
  }

  v9 = *(a1 + 32);
  if (!a3)
  {
    if (a2 < v9 || *(a1 + 16) < a2)
    {
      if (!a2 && !v9)
      {
        result = 0;
        *(a1 + 40) = 0;
        goto LABEL_42;
      }

      v14 = ((a2 << 32) - 0x900000000) >> 32;
      if (a2 < 9)
      {
        v14 = 0;
      }

      *(a1 + 32) = v14;
      v15 = ((a2 << 32) + 0x100000000) >> 32;
      if (v8 <= a2)
      {
        v15 = v8;
      }

      *(a1 + 16) = v15;
      goto LABEL_28;
    }

LABEL_22:
    *(a1 + 40) = a2 - v9;
LABEL_41:
    result = 1;
    goto LABEL_42;
  }

  if (a2 >= v9 && *(a1 + 16) > a2)
  {
    goto LABEL_22;
  }

  if (v8 > a2 || *(a1 + 16) != v8)
  {
    v11 = a2 + 9;
    if (a2 + 9 >= v8)
    {
      v11 = v8;
    }

    *(a1 + 16) = v11;
    v12 = v11 < 10;
    v13 = v11 - 10;
    if (v12)
    {
      v13 = 0;
    }

    *(a1 + 32) = v13;
LABEL_28:
    v16 = *(a1 + 64);
    memset(v23, 0, sizeof(v23));
    icu::UnicodeString::UnicodeString(v23, v16, 0, 10);
    (*(*v6 + 24))(v6, *(a1 + 32), *(a1 + 16), v23);
    *(a1 + 48) = v16;
    v17 = *(a1 + 16);
    v18 = *(a1 + 32);
    v19 = v17 - v18;
    v20 = a2 - v18;
    *(a1 + 40) = a2 - v18;
    *(a1 + 44) = v17 - v18;
    if (v17 < v8 && (v21 = v19 - 1, (v16[v21] & 0xFC00) == 0xD800))
    {
      *(a1 + 44) = v21;
      *(a1 + 16) = v17 - 1;
      if (v20 >= v19)
      {
        *(a1 + 40) = v21;
        v20 = v19 - 1;
      }
    }

    else
    {
      LODWORD(v21) = v17 - v18;
    }

    if (v18 >= 1 && (*v16 & 0xFC00) == 0xDC00)
    {
      *(a1 + 48) = ++v16;
      *(a1 + 32) = v18 + 1;
      LODWORD(v21) = v21 - 1;
      *(a1 + 40) = --v20;
      *(a1 + 44) = v21;
    }

    if (v20 >= 1 && (v16[v20] & 0xFC00) == 0xDC00 && (v16[v20 - 1] & 0xFC00) == 0xD800)
    {
      *(a1 + 40) = v20 - 1;
    }

    *(a1 + 28) = v21;
    icu::UnicodeString::~UnicodeString(v23);
    goto LABEL_41;
  }

  result = 0;
  *(a1 + 40) = v8 - v9;
LABEL_42:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1952A26D0(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 72);
  LODWORD(v13) = (*(*v12 + 64))(v12);
  if (*a6 > 0)
  {
    v14 = 0;
    goto LABEL_28;
  }

  v15 = v13;
  if ((a5 & 0x80000000) != 0 || !a4 && a5)
  {
    *a6 = 1;
  }

  if (a2 > a3)
  {
    v14 = 0;
    *a6 = 8;
    goto LABEL_28;
  }

  v16 = v13;
  if (a2 < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v13;
    if (v13 >= a2)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      v16 = 0;
      goto LABEL_17;
    }
  }

  a2 = v13;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v15 < a3)
  {
LABEL_17:
    a3 = v16;
  }

  if (v15 > a2 && ((*(*v12 + 72))(v12, a2) & 0xFC00) == 0xDC00)
  {
    a2 = (__PAIR64__(a2, (*(*v12 + 80))(v12, a2) - 0x10000) - 0x100000) >> 32;
  }

  if (v15 > a3 && ((*(*v12 + 72))(v12, a3) & 0xFC00) == 0xDC00)
  {
    LODWORD(a3) = (__PAIR64__(a3, (*(*v12 + 80))(v12, a3) - 0x10000) - 0x100000) >> 32;
  }

  v17 = (a3 - a2);
  memset(&v21[2], 0, 32);
  if (v17 <= a5)
  {
    a3 = a3;
  }

  else
  {
    a3 = (a2 + a5);
  }

  memset(v21, 0, 32);
  icu::UnicodeString::UnicodeString(v21, a4, 0, a5);
  (*(*v12 + 24))(v12, a2, a3, v21);
  sub_1952A2418(a1, a3, 1);
  v14 = u_terminateUChars(a4, a5, v17, a6);
  icu::UnicodeString::~UnicodeString(v18, v21);
LABEL_28:
  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_1952A2990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    v6 = 0;
    goto LABEL_34;
  }

  v13 = *(a1 + 72);
  if (!a4 && a5)
  {
    v6 = 0;
    v14 = 1;
LABEL_8:
    *a6 = v14;
    goto LABEL_34;
  }

  LODWORD(v15) = (*(*v13 + 64))(*(a1 + 72));
  if (a2 > a3)
  {
    v6 = 0;
    v14 = 8;
    goto LABEL_8;
  }

  v16 = v15;
  v17 = v15;
  if (a2 < 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v15;
    if (v15 >= a2)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }
  }

  a2 = v15;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v17 < a3)
  {
LABEL_17:
    a3 = v17;
  }

  if (v16 > a2 && ((*(*v13 + 72))(v13, a2) & 0xFC00) == 0xDC00 && a2 >= 1)
  {
    if (((*(*v13 + 72))(v13, (a2 - 1)) & 0xFC00) == 0xD800)
    {
      a2 = (a2 - 1);
    }

    else
    {
      a2 = a2;
    }
  }

  if (v16 > a3 && ((*(*v13 + 72))(v13, (a3 - 1)) & 0xFC00) == 0xD800)
  {
    if (((*(*v13 + 72))(v13, a3) & 0xFC00) == 0xDC00)
    {
      a3 = (a3 + 1);
    }

    else
    {
      a3 = a3;
    }
  }

  memset(v23, 0, sizeof(v23));
  v22 = a4;
  icu::UnicodeString::UnicodeString(v23, a5 >> 31, &v22);
  (*(*v13 + 32))(v13, a2, a3, v23);
  v6 = (*(*v13 + 64))(v13) - v16;
  if (*(a1 + 16) > a2)
  {
    *(a1 + 16) = 0;
    *(a1 + 36) = 0;
    *(a1 + 28) = 0;
    *(a1 + 44) = 0;
  }

  sub_1952A2418(a1, v6 + a3, 1);
  icu::UnicodeString::~UnicodeString(v19, v23);
LABEL_34:
  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1952A2C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 72);
  result = (*(*v12 + 64))(v12);
  if (*a6 > 0)
  {
    goto LABEL_35;
  }

  if (a2 > a3 || a2 < a4 && a4 < a3)
  {
    *a6 = 8;
    goto LABEL_35;
  }

  v14 = result;
  if (a2 < 0)
  {
    result = 0;
  }

  else
  {
    result = result;
    if (result >= a2)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_15:
      v15 = 0;
      goto LABEL_16;
    }
  }

  a2 = result;
  if (a3 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v15 = v14;
  if (v14 >= a3)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  a3 = v15;
  if ((a4 & 0x8000000000000000) == 0)
  {
LABEL_11:
    if (v14 >= a4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_17:
  v14 = 0;
LABEL_18:
  a4 = v14;
LABEL_19:
  (*(*v12 + 40))(v12, a2, a3, a4);
  if (a5)
  {
    v16 = a3 - a2;
    if (a4 >= a2)
    {
      v16 = 0;
    }

    v17 = (v16 + a3);
    if (a4 >= a2)
    {
      a2 = a2;
    }

    else
    {
      a2 = a3;
    }

    v22 = &unk_1F0935D00;
    v23 = 2;
    (*(*v12 + 32))(v12, a2, v17, &v22);
    icu::UnicodeString::~UnicodeString(v18, &v22);
    LODWORD(a3) = v17;
  }

  if (a5 != 0 && a2 < a4)
  {
    v19 = a2;
  }

  else
  {
    v19 = a4;
  }

  if (*(a1 + 16) > v19)
  {
    *(a1 + 16) = 0;
    *(a1 + 36) = 0;
    *(a1 + 28) = 0;
    *(a1 + 44) = 0;
  }

  if (a5 != 0 && a2 < a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = a3 + a4 - a2;
  }

  result = sub_1952A2418(a1, v20, 1);
LABEL_35:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1952A2EC4(uint64_t result)
{
  if ((*(result + 8) & 0x20) != 0)
  {
    v1 = result;
    result = *(result + 72);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(v1 + 72) = 0;
  }

  return result;
}

UText *sub_1952A2F20(UText *a1, unint64_t a2, int a3, UErrorCode *a4)
{
  v7 = sub_1952A20DC(a1, a2, a4);
  if (a3 && *a4 <= 0)
  {
    v8 = *(a2 + 72);
    operator new();
  }

  return v7;
}

uint64_t sub_1952A2FA8(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (*(v1 + 8) < 0)
  {
    return *(v1 + 12);
  }

  else
  {
    return *(v1 + 8) >> 5;
  }
}

BOOL sub_1952A2FCC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 44);
  if (a2 < 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 44);
    if (v3 >= a2)
    {
      goto LABEL_6;
    }
  }

  a2 = v4;
LABEL_6:
  *(a1 + 40) = a2;
  if (a3 && a2 < v3)
  {
    return 1;
  }

  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2 <= 0;
  }

  return !v6;
}

uint64_t sub_1952A3014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  v11 = *(a1 + 72);
  if (*(v11 + 8) < 0)
  {
    v12 = *(v11 + 12);
  }

  else
  {
    v12 = *(v11 + 8) >> 5;
  }

  if (*a6 > 0)
  {
    return 0;
  }

  if (a5 < 0 || !a4 && a5)
  {
    *a6 = 1;
  }

  if (a2 < 0 || a2 > a3)
  {
    v13 = 0;
    *a6 = 8;
  }

  else
  {
    Char32Start = v12;
    if (v12 > a2)
    {
      Char32Start = icu::UnicodeString::getChar32Start(v11, a2);
    }

    if (v12 > a3)
    {
      v12 = icu::UnicodeString::getChar32Start(v11, a3);
    }

    v13 = (v12 - Char32Start);
    if (a4 && a5 >= 1)
    {
      if (v13 >= a5)
      {
        v15 = a5;
      }

      else
      {
        v15 = v12 - Char32Start;
      }

      icu::UnicodeString::doExtract(v11, Char32Start, v15, a4, 0);
      Char32Start += v15;
    }

    *(a1 + 40) = Char32Start;
    u_terminateUChars(a4, a5, v13, a6);
  }

  return v13;
}

uint64_t sub_1952A3158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v9 = a3;
  Char32Start = a2;
  v12 = *(a1 + 72);
  if (!a4 && a5)
  {
    *a6 = 1;
  }

  if (a2 > a3)
  {
    result = 0;
    *a6 = 8;
    return result;
  }

  if (*(v12 + 8) < 0)
  {
    v13 = *(v12 + 12);
  }

  else
  {
    v13 = *(v12 + 8) >> 5;
  }

  v14 = v13;
  if (a2 < 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
    if (v13 >= a2)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

  Char32Start = v15;
  if ((a3 & 0x8000000000000000) == 0)
  {
LABEL_14:
    v16 = v13;
    if (v13 >= a3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_18:
  v16 = 0;
LABEL_19:
  v9 = v16;
LABEL_20:
  if (v13 > Char32Start)
  {
    Char32Start = icu::UnicodeString::getChar32Start(v12, Char32Start);
  }

  if (v14 > v9)
  {
    LODWORD(v9) = icu::UnicodeString::getChar32Start(v12, v9);
  }

  icu::UnicodeString::doReplace(v12, Char32Start, (v9 - Char32Start), a4, 0, a5);
  v17 = *(v12 + 8);
  if (*(v12 + 8) < 0)
  {
    v18 = *(v12 + 12);
  }

  else
  {
    v18 = v17 >> 5;
  }

  if ((v17 & 0x11) != 0)
  {
    v19 = 0;
  }

  else if ((v17 & 2) != 0)
  {
    v19 = v12 + 10;
  }

  else
  {
    v19 = *(v12 + 24);
  }

  *(a1 + 48) = v19;
  *(a1 + 16) = v18;
  *(a1 + 28) = v18;
  result = v18 - v14;
  *(a1 + 40) = result + v9;
  *(a1 + 44) = v18;
  return result;
}

uint64_t sub_1952A32EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = result;
  v11 = *(result + 72);
  if (*(v11 + 8) < 0)
  {
    LODWORD(v12) = *(v11 + 12);
  }

  else
  {
    LODWORD(v12) = *(v11 + 8) >> 5;
  }

  if (*a6 > 0)
  {
    return result;
  }

  v12 = v12;
  if (a2 < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
    if (v12 >= a2)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      result = 0;
      goto LABEL_15;
    }
  }

  v9 = v13;
  if (a3 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  result = v12;
  if (v12 >= a3)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = result;
  if ((a4 & 0x8000000000000000) == 0)
  {
LABEL_10:
    if (v12 >= a4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = 0;
LABEL_17:
  v7 = v12;
LABEL_18:
  v14 = (v8 - v9);
  if (v8 >= v9 && (v9 >= v7 || v7 >= v8))
  {
    if (a5)
    {
      result = (*(*v11 + 40))(v11, v9, v8, v7);
      if (v7 >= v9)
      {
        v9 = v9;
      }

      else
      {
        v9 = v8;
      }

      if (v14 == 0x7FFFFFFF && v9 <= 0)
      {
        if (*(v11 + 8))
        {
          v15 = 2;
        }

        else
        {
          v15 = *(v11 + 8) & 0x1E;
        }

        *(v11 + 8) = v15;
      }

      else
      {
        result = icu::UnicodeString::doReplace(v11, v9, v14, 0, 0, 0);
      }
    }

    else
    {
      result = (*(*v11 + 40))(v11, v9, v8, v7);
    }

    v16 = *(v11 + 8);
    if ((v16 & 0x11) != 0)
    {
      v17 = 0;
    }

    else if ((v16 & 2) != 0)
    {
      v17 = v11 + 10;
    }

    else
    {
      v17 = *(v11 + 24);
    }

    *(v10 + 48) = v17;
    if (!a5)
    {
      v18 = *(v10 + 44) + (v8 - v9);
      *(v10 + 44) = v18;
      *(v10 + 16) = v18;
      *(v10 + 28) = v18;
    }

    v19 = v7 + v8 - v9;
    if (v9 < v7 && a5 != 0)
    {
      v19 = v7;
    }

    *(v10 + 40) = v19;
  }

  else
  {
    *a6 = 8;
  }

  return result;
}

uint64_t sub_1952A34F8(uint64_t result)
{
  if ((*(result + 8) & 0x20) != 0)
  {
    v1 = result;
    result = *(result + 72);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(v1 + 72) = 0;
  }

  return result;
}

UText *sub_1952A3554(UText *a1, unint64_t a2, int a3, UErrorCode *a4)
{
  v7 = sub_1952A20DC(a1, a2, a4);
  v8 = v7;
  if (a3 && *a4 <= 0)
  {
    v9 = (v7->pFuncs->nativeLength)(v7);
    v10 = v9;
    v11 = *(a2 + 72);
    v12 = malloc_type_malloc(((v9 << 32) + 0x100000000) >> 31, 0x1000040BDFB0063uLL);
    if (v12)
    {
      if (v10 >= 1)
      {
        v13 = v12;
        v14 = v10;
        do
        {
          v15 = *v11++;
          *v13++ = v15;
          --v14;
        }

        while (v14);
      }

      v12[v10] = 0;
      v8->context = v12;
      v8->providerProperties |= 0x20u;
    }

    else
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return v8;
}

uint64_t sub_1952A3628(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 < 0)
  {
    v2 = *(a1 + 72);
    v1 = *(a1 + 16);
    if (*(v2 + 2 * v1))
    {
      v3 = v2 + 2;
        ;
      }

      *(a1 + 16) = v1;
    }

    *(a1 + 112) = v1;
    *(a1 + 44) = v1;
    *(a1 + 28) = v1;
    *(a1 + 8) &= ~2u;
  }

  return v1;
}

BOOL sub_1952A3674(uint64_t a1, int64_t a2, int a3)
{
  if (a2 < 0)
  {
    v6 = 0;
  }

  else
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 16);
    if (v4 > a2)
    {
      if (a2 && (v5 = (v3 + 2 * a2), (*v5 & 0xFC00) == 0xDC00))
      {
        v6 = a2 - ((*(v5 - 1) & 0xFC00) == 55296);
      }

      else
      {
        v6 = a2;
      }

      goto LABEL_32;
    }

    v6 = *(a1 + 112);
    if (v6 < 0)
    {
      v7 = a2 + 32;
      if (a2 > 0x7FFFFFDF)
      {
        v7 = 0x7FFFFFFF;
      }

      if (v7 > v4)
      {
        v4 = v4;
        while (*(v3 + 2 * v4))
        {
          if (v7 == ++v4)
          {
            LODWORD(v4) = v7;
            goto LABEL_15;
          }
        }

        *(a1 + 112) = v4;
        *(a1 + 44) = v4;
        v6 = v4;
        *(a1 + 28) = v4;
        if (v4 > a2)
        {
          if (a2 && (v10 = (v3 + 2 * a2), (*v10 & 0xFC00) == 0xDC00))
          {
            v6 = a2 - ((*(v10 - 1) & 0xFC00) == 55296);
          }

          else
          {
            v6 = a2;
          }
        }

        *(a1 + 16) = v4;
        goto LABEL_31;
      }

LABEL_15:
      if (a2 && (v8 = (v3 + 2 * a2), (*v8 & 0xFC00) == 0xDC00))
      {
        v6 = a2 - ((*(v8 - 1) & 0xFC00) == 55296);
      }

      else
      {
        v6 = a2;
      }

      if (v4 == 0x7FFFFFFF)
      {
        *(a1 + 112) = 0x7FFFFFFFLL;
        *(a1 + 44) = 0x7FFFFFFF;
        *(a1 + 28) = 0x7FFFFFFF;
        if (v6 >= 0x7FFFFFFF)
        {
          v6 = 0x7FFFFFFFLL;
        }

        *(a1 + 16) = 0x7FFFFFFFLL;
LABEL_31:
        *(a1 + 8) &= ~2u;
        goto LABEL_32;
      }

      v9 = v4 - ((*(v3 + 2 * v4 - 2) & 0xFC00) == 55296);
      *(a1 + 16) = v9;
      *(a1 + 28) = v9;
      *(a1 + 44) = v9;
    }
  }

LABEL_32:
  *(a1 + 40) = v6;
  if (a3 && v6 < *(a1 + 16))
  {
    return 1;
  }

  if (a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = v6 <= 0;
  }

  return !v12;
}

uint64_t sub_1952A383C(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, int a5, int *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  if (a5 < 0 || ((v10 = a3, !a4) ? (v11 = a5 == 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), a3 < a2 || v12))
  {
    v6 = 0;
    *a6 = 1;
    return v6;
  }

  sub_1952A3674(a1, a2, 1);
  LODWORD(v14) = *(a1 + 40);
  v15 = *(a1 + 112);
  if ((v15 & 0x80000000) != 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      LODWORD(v10) = 0;
    }

    else if (v10 >> 31)
    {
      LODWORD(v10) = 0x7FFFFFFF;
    }

    goto LABEL_23;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 & 0x7FFFFFFF;
    if ((*(a1 + 112) & 0x7FFFFFFFuLL) >= v10)
    {
      goto LABEL_23;
    }
  }

  LODWORD(v10) = v16;
LABEL_23:
  v17 = *(a1 + 48);
  v6 = (v10 - v14);
  if (v10 <= v14)
  {
    v6 = 0;
LABEL_33:
    LODWORD(v10) = v14;
  }

  else
  {
    v18 = 0;
    v14 = v14;
    while ((v15 & 0x80000000) == 0 || *(v17 + 2 * v14))
    {
      if (v18 >= a5)
      {
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        *(a4 + 2 * v18) = *(v17 + 2 * v14);
      }

      ++v18;
      ++v14;
      if (v6 == v18)
      {
        goto LABEL_33;
      }
    }

    *(a1 + 112) = v14;
    *(a1 + 16) = v14;
    *(a1 + 44) = v14;
    LODWORD(v10) = v14;
    v6 = v18;
    LODWORD(v15) = v14;
    *(a1 + 28) = v14;
  }

LABEL_34:
  if (v10 >= 1 && v15 > v10)
  {
    v19 = (v17 + 2 * v10);
    if ((*(v19 - 1) & 0xFC00) == 0xD800)
    {
      v20 = *v19;
      if ((v20 & 0xFC00) == 0xDC00)
      {
        if (v6 < a5)
        {
          *(a4 + 2 * v6) = v20;
          v6 = (v6 + 1);
        }

        LODWORD(v10) = v10 + 1;
      }
    }
  }

  if (*(a1 + 16) >= v10)
  {
    *(a1 + 40) = v10;
  }

  else
  {
    sub_1952A3674(a1, v10, 1);
  }

  u_terminateUChars(a4, a5, v6, a6);
  return v6;
}

void sub_1952A3A10(uint64_t a1)
{
  if ((*(a1 + 8) & 0x20) != 0)
  {
    free(*(a1 + 72));
    *(a1 + 72) = 0;
  }
}

UText *sub_1952A3A48(UText *a1, uint64_t a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3)
  {
    v4 = 0;
    *a4 = U_UNSUPPORTED_ERROR;
  }

  else
  {
    v8 = (*(**(a2 + 72) + 64))(*(a2 + 72));
    v9 = utext_openCharacterIterator(a1, v8, a4);
    v4 = v10;
    if (*a4 <= 0)
    {
      v11 = *(a2 + 40);
      if (v11 <= *(a2 + 28))
      {
        v12 = *(a2 + 32) + v11;
      }

      else
      {
        v12 = (*(*(a2 + 56) + 64))(a2, v9);
      }

      utext_setNativeIndex(v4, v12);
      v4->r = v8;
    }
  }

  return v4;
}

BOOL sub_1952A3B34(uint64_t a1, int a2, int a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(a1 + 112);
    if ((a2 & 0x7FFFFFFFu) >= v4)
    {
      v5 = *(a1 + 112);
    }

    else
    {
      v5 = a2;
    }

    v6 = v5 > 0;
    if (a3 || (v7 = v5 - 1, v5 < 1))
    {
      if (!a3)
      {
        v8 = 1;
        v7 = v5;
        goto LABEL_17;
      }

      goto LABEL_11;
    }

LABEL_16:
    v8 = 1;
    goto LABEL_17;
  }

  v5 = 0;
  if (!a3)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v6 = 0;
  v4 = *(a1 + 112);
LABEL_11:
  v8 = 0;
  v9 = v4 == v5 && v6;
  v7 = v5 - v9;
LABEL_17:
  if (v7 <= 0)
  {
    v10 = -(-v7 & 0xF);
  }

  else
  {
    v10 = v7 & 0xF;
  }

  v11 = v7 - v10;
  v12 = *(a1 + 32);
  if (v12 == v11)
  {
    goto LABEL_37;
  }

  v12 = v11;
  if (*(a1 + 120) == v11)
  {
    v13 = 80;
  }

  else
  {
    if (*(a1 + 124) != v11)
    {
      v15 = *(a1 + 72);
      v14 = *(a1 + 80);
      if (v14 == *(a1 + 48))
      {
        v14 = *(a1 + 88);
      }

      (*(*v15 + 120))(*(a1 + 72), v11);
      v16 = 0;
      v17 = v12;
      do
      {
        *(v14 + v16) = (*(*v15 + 40))(v15);
        v18 = *(a1 + 112) < v17 || v16 == 30;
        v16 += 2;
        ++v17;
      }

      while (!v18);
      goto LABEL_34;
    }

    v13 = 88;
  }

  v14 = *(a1 + v13);
LABEL_34:
  *(a1 + 48) = v14;
  v19 = 16;
  *(a1 + 44) = 16;
  *(a1 + 32) = v12;
  *(a1 + 16) = v12 + 16;
  v20 = *(a1 + 112);
  if (v20 < v12 + 16)
  {
    *(a1 + 16) = v20;
    v19 = v20 - v12;
    *(a1 + 44) = v20 - v12;
  }

  *(a1 + 28) = v19;
LABEL_37:
  v21 = v5 - v12;
  *(a1 + 40) = v5 - v12;
  if (v8)
  {
    return v21 > 0;
  }

  else
  {
    return v21 < *(a1 + 44);
  }
}

uint64_t sub_1952A3D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  if (a5 < 0 || ((v10 = a3, !a4) ? (v11 = a5 == 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), a2 > a3 || v12))
  {
    v6 = 0;
    *a6 = 1;
    return v6;
  }

  v14 = *(a1 + 112);
  if (a2 < 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a1 + 112);
    if (v14 >= a2)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  a2 = v15;
  if ((a3 & 0x8000000000000000) == 0)
  {
LABEL_15:
    if (v14 >= a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_20:
  LODWORD(v14) = 0;
LABEL_21:
  v10 = v14;
LABEL_22:
  v16 = *(a1 + 72);
  (*(*v16 + 128))(v16, a2);
  v17 = v16[3];
  if (v17 >= v10)
  {
    v6 = 0;
  }

  else
  {
    LODWORD(v6) = 0;
    v18 = v16[3];
    do
    {
      v19 = (*(*v16 + 48))(v16);
      if (v19 < 0x10000)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v20 + v6 <= a5)
      {
        if (HIWORD(v19))
        {
          v21 = (a4 + 2 * v6);
          *v21 = (v19 >> 10) - 10304;
          v6 = (v6 + 2);
          v21[1] = v19 & 0x3FF | 0xDC00;
        }

        else
        {
          *(a4 + 2 * v6) = v19;
          v6 = (v6 + 1);
        }

        v18 += v20;
        v17 = v18;
      }

      else
      {
        *a6 = 15;
        v18 += v20;
        v6 = (v20 + v6);
      }
    }

    while (v18 < v10);
  }

  sub_1952A3B34(a1, v17, 1);
  u_terminateUChars(a4, a5, v6, a6);
  return v6;
}

uint64_t sub_1952A3ED8(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 96) = 0;
  return result;
}

UChar32 utf8_nextCharSafeBody(const uint8_t *s, int32_t *pi, int32_t length, UChar32 c, UBool strict)
{
  v5 = *pi;
  LODWORD(v6) = *pi;
  if (c <= 244 && v5 != length)
  {
    if (c < 240)
    {
      if (c < 224)
      {
        if (c >= 194)
        {
          v14 = s[v5] ^ 0x80;
          if (v14 <= 0x3F)
          {
            *pi = v5 + 1;
            return v14 + (c << 6) - 12288;
          }
        }
      }

      else
      {
        v8 = c & 0xF;
        v9 = s[v5];
        if (strict == -2)
        {
          v10 = v9 ^ 0x80;
          if (v10 <= 0x3F && ((c & 0xF) != 0 || v10 >= 0x20))
          {
            v11 = v5 + 1;
            LODWORD(v6) = length;
            if (v11 != length)
            {
              v12 = s[v11] ^ 0x80;
              LODWORD(v6) = v5 + 1;
              if (v12 <= 0x3F)
              {
                *pi = v5 + 2;
                return (v10 << 6) | (v8 << 12) | v12;
              }
            }
          }

          goto LABEL_39;
        }

        if ((a00000000000000[v8] >> (s[v5] >> 5)))
        {
          LODWORD(v6) = length;
          if (v5 + 1 != length)
          {
            v19 = s[v5 + 1] ^ 0x80;
            LODWORD(v6) = v5 + 1;
            if (v19 <= 0x3F)
            {
              LODWORD(v6) = v5 + 2;
              result = (v8 << 12) | ((v9 & 0x3F) << 6) | v19;
              if (strict < 1 || result >> 4 < 0xFDD)
              {
                goto LABEL_42;
              }

              if (result >> 4 >= 0xFDF && ((v8 << 12) | ((v9 & 0x3F) << 6) | v19 & 0xFFFE) != 65534)
              {
                goto LABEL_42;
              }

              goto LABEL_38;
            }
          }
        }
      }
    }

    else
    {
      v7 = s[v5];
      if ((byte_195481928[v7 >> 4] >> (c & 7)))
      {
        v6 = v5 + 1;
        if (v5 + 1 == length)
        {
          LODWORD(v6) = length;
        }

        else
        {
          v15 = s[v6] ^ 0x80;
          if (v15 <= 0x3F)
          {
            v16 = v5 + 2;
            LODWORD(v6) = length;
            if (v16 != length)
            {
              v17 = s[v16] ^ 0x80;
              LODWORD(v6) = v5 + 2;
              if (v17 <= 0x3F)
              {
                LODWORD(v6) = v5 + 3;
                v18 = ((c & 7) << 18) | ((v7 & 0x3F) << 12);
                result = v17 | (v15 << 6) | v18;
                if (strict < 1 || result >> 4 < 0xFDD || result >> 4 >= 0xFDF && ((~result & 0xFFFE) != 0 || v18 >= 0x110000))
                {
                  goto LABEL_42;
                }

                goto LABEL_38;
              }
            }
          }
        }
      }
    }
  }

  if (strict < 0)
  {
LABEL_39:
    if (strict == -3)
    {
      result = 65533;
    }

    else
    {
      result = -1;
    }

    goto LABEL_42;
  }

LABEL_38:
  result = dword_19548193C[v6 - v5];
LABEL_42:
  *pi = v6;
  return result;
}

int32_t utf8_appendCharSafeBody(uint8_t *s, int32_t i, int32_t length, UChar32 c, UBool *pIsError)
{
  if (c > 0x7FF)
  {
    if (HIWORD(c))
    {
      if (HIWORD(c) <= 0x10u && i + 3 < length)
      {
        v7 = &s[i];
        *v7 = (c >> 18) | 0xF0;
        v7[1] = (c >> 12) & 0x3F | 0x80;
        v7[2] = (c >> 6) & 0x3F | 0x80;
        i += 4;
        v7[3] = c & 0x3F | 0x80;
        return i;
      }
    }

    else if (i + 2 < length && (c & 0xF800) != 0xD800)
    {
      v6 = &s[i];
      *v6 = (c >> 12) | 0xE0;
      v6[1] = (c >> 6) & 0x3F | 0x80;
      i += 3;
      v6[2] = c & 0x3F | 0x80;
      return i;
    }
  }

  else
  {
    v5 = i + 1;
    if (v5 < length)
    {
      s[i] = (c >> 6) | 0xC0;
      i += 2;
      s[v5] = c & 0x3F | 0x80;
      return i;
    }
  }

  if (pIsError)
  {
    *pIsError = 1;
  }

  else
  {
    v8 = length - i;
    if (length - i >= 1)
    {
      if (v8 >= 3)
      {
        v9 = 3;
      }

      else
      {
        v9 = length - i;
      }

      v10 = &s[i];
      v12 = v9 - 1;
      v11 = v12 == 0;
      v13 = dword_19548193C[v12];
      if (v11)
      {
        *v10 = v13;
        v16 = 1;
      }

      else
      {
        if (v8 > 2)
        {
          v14 = (v13 >> 12) | 0xFFFFFFE0;
          v10[1] = (v13 >> 6) & 0x3F | 0x80;
          v15 = 2;
        }

        else
        {
          v14 = (v13 >> 6) | 0xFFFFFFC0;
          v15 = 1;
        }

        *v10 = v14;
        v17 = v13 & 0x3F | 0x80;
        v16 = v15 + 1;
        v10[v15] = v17;
      }

      i += v16;
    }
  }

  return i;
}

UChar32 utf8_prevCharSafeBody(const uint8_t *s, int32_t start, int32_t *pi, UChar32 c, UBool strict)
{
  v5 = *pi;
  v6 = c > -65 || v5 <= start;
  if (v6)
  {
    goto LABEL_6;
  }

  v8 = v5;
  v9 = v5 - 1;
  v10 = s[v9];
  if ((v10 - 194) <= 0x32)
  {
    if (v10 <= 0xDF)
    {
      *pi = v9;
      return (c & 0x3F | (v10 << 6)) - 12288;
    }

    v6 = v10 > 0xEF;
    v17 = v10 & 7;
    v18 = &a00000000000000[v10 & 0xF];
    if (v6)
    {
      v18 = &byte_195481928[(c >> 4) & 0xB];
    }

    else
    {
      v17 = (c >> 5) & 5;
    }

    if ((*v18 >> v17))
    {
      *pi = v9;
      if (strict == -3)
      {
        v19 = 65533;
      }

      else
      {
        v19 = -1;
      }

      if (strict < 0)
      {
        return v19;
      }

      else
      {
        return 159;
      }
    }

    goto LABEL_6;
  }

  if (v9 <= start || v10 > -65)
  {
    goto LABEL_6;
  }

  v11 = c & 0x3F;
  v12 = v8 - 2;
  v13 = s[v8 - 2];
  if ((v13 - 224) <= 0x14)
  {
    if (v13 > 0xEF)
    {
      if ((byte_195481928[v10 >> 4] >> (v13 & 7)))
      {
        *pi = v12;
        if ((strict & 0x80000000) == 0)
        {
          return 0xFFFF;
        }

        goto LABEL_44;
      }

      goto LABEL_6;
    }

    v14 = v13 & 0xF;
    if (strict == -2)
    {
      v15 = v10 & 0x3F;
      if (v15 > 0x1F || v14 != 0)
      {
        *pi = v12;
        return (v15 << 6) | (v14 << 12) | v11;
      }

      goto LABEL_44;
    }

    if ((a00000000000000[v14] >> (v10 >> 5)))
    {
      *pi = v12;
      result = ((v10 & 0x3F) << 6) | (v14 << 12) | v11;
      if (strict >= 1 && result >> 4 >= 0xFDD && ((~result & 0xFFFE) == 0 || result >> 4 < 0xFDF))
      {
        return 0xFFFF;
      }

      return result;
    }

LABEL_6:
    if ((strict & 0x80000000) == 0)
    {
      return 21;
    }

LABEL_44:
    if (strict == -3)
    {
      return 65533;
    }

    else
    {
      return -1;
    }
  }

  if (v12 <= start)
  {
    goto LABEL_6;
  }

  if (v13 > -65)
  {
    goto LABEL_6;
  }

  v20 = v8 - 3;
  v21 = s[v8 - 3];
  if ((v21 - 240) > 4)
  {
    goto LABEL_6;
  }

  v22 = v21 & 7;
  if (((byte_195481928[v13 >> 4] >> v22) & 1) == 0)
  {
    goto LABEL_6;
  }

  *pi = v20;
  v23 = ((v13 & 0x3F) << 12) | (v22 << 18);
  result = c & 0x3F | ((v10 & 0x3F) << 6) | v23;
  if (strict >= 1 && result >> 4 >= 0xFDD && (result >> 4 < 0xFDF || (~result & 0xFFFE) == 0 && HIWORD(v23) <= 0x10u))
  {
    return 1114111;
  }

  return result;
}

int32_t utf8_back1SafeBody(const uint8_t *s, int32_t start, int32_t i)
{
  if (i <= start || s[i] > -65)
  {
    return i;
  }

  v3 = i - 1;
  v4 = s[v3];
  if ((v4 - 194) > 0x32)
  {
    if (v3 <= start || v4 > -65)
    {
      return i;
    }

    LODWORD(v3) = i - 2;
    v9 = s[i - 2];
    if ((v9 - 224) > 0x14)
    {
      if (v3 <= start)
      {
        return i;
      }

      if (v9 > -65)
      {
        return i;
      }

      LODWORD(v3) = i - 3;
      v15 = s[i - 3];
      if ((v15 - 240) > 4 || ((byte_195481928[v9 >> 4] >> (v15 & 7)) & 1) == 0)
      {
        return i;
      }
    }

    else
    {
      v5 = v9 > 0xEF;
      v10 = &byte_195481928[v4 >> 4];
      v11 = v9 & 7;
      v12 = &a00000000000000[v9 & 0xF];
      v13 = v4 >> 5;
      if (v5)
      {
        LOBYTE(v13) = v11;
      }

      else
      {
        v10 = v12;
      }

      if (((*v10 >> v13) & 1) == 0)
      {
        return i;
      }
    }

    return v3;
  }

  if (v4 < 0xE0)
  {
    return v3;
  }

  v5 = v4 > 0xEF;
  v6 = v4 & 7;
  v7 = &a00000000000000[v4 & 0xF];
  v8 = s[i] >> 5;
  if (v5)
  {
    LOBYTE(v8) = v6;
    v7 = &byte_195481928[s[i] >> 4];
  }

  if ((*v7 >> v8))
  {
    return v3;
  }

  return i;
}

icu::ICU_Utility *icu::ICU_Utility::appendNumber(icu::ICU_Utility *this, icu::UnicodeString *a2, unsigned int a3, int a4)
{
  v4 = this;
  if (a3 - 37 > 0xFFFFFFDC)
  {
    v7 = a2;
    if ((a2 & 0x80000000) != 0)
    {
      v7 = -a2;
      v14 = 45;
      icu::UnicodeString::doAppend(this, &v14, 0, 1);
    }

    v8 = 1;
    if (v7 >= a3)
    {
      v9 = v7;
      do
      {
        v9 /= a3;
        v8 *= a3;
        --a4;
      }

      while (v9 >= a3);
    }

    if (a4 > 1)
    {
      v10 = a4 + 1;
      do
      {
        v15 = 48;
        icu::UnicodeString::doAppend(v4, &v15, 0, 1);
        --v10;
      }

      while (v10 > 2);
    }

    if (v8 >= 1)
    {
      do
      {
        v16 = a0123456789abcd_1[v7 / v8];
        icu::UnicodeString::doAppend(v4, &v16, 0, 1);
        v7 %= v8;
        v11 = v8 >= a3;
        v8 /= a3;
      }

      while (v11);
    }
  }

  else
  {
    v13 = 63;
    return icu::UnicodeString::doAppend(this, &v13, 0, 1);
  }

  return v4;
}

BOOL icu::ICU_Utility::shouldAlwaysBeEscaped(icu::ICU_Utility *this)
{
  if (this < 32)
  {
    return 1;
  }

  v2 = this;
  if (this < 0x7F)
  {
    return 0;
  }

  if (this < 0xA0)
  {
    return 1;
  }

  if (this >> 11 < 0x1B)
  {
    return 0;
  }

  result = 1;
  if ((~v2 & 0xFFFE) != 0)
  {
    v3 = v2 - 64976 < 0x20 || HIWORD(v2) > 0x10u;
    return v2 < 0xE000 || v3;
  }

  return result;
}

uint64_t icu::ICU_Utility::escapeUnprintable(icu::ICU_Utility *this, icu::UnicodeString *a2)
{
  if ((a2 - 32) < 0x5F)
  {
    return 0;
  }

  icu::ICU_Utility::escape(this, a2);
  return 1;
}

icu::ICU_Utility *icu::ICU_Utility::escape(icu::ICU_Utility *this, icu::UnicodeString *a2)
{
  v2 = a2;
  v6 = 92;
  icu::UnicodeString::doAppend(this, &v6, 0, 1);
  if (v2 >= 0x10000)
  {
    v6 = 85;
    icu::UnicodeString::doAppend(this, &v6, 0, 1);
    v6 = a0123456789abcd_1[v2 >> 28];
    icu::UnicodeString::doAppend(this, &v6, 0, 1);
    v6 = a0123456789abcd_1[HIBYTE(v2) & 0xF];
    icu::UnicodeString::doAppend(this, &v6, 0, 1);
    v6 = a0123456789abcd_1[(v2 >> 20) & 0xF];
    icu::UnicodeString::doAppend(this, &v6, 0, 1);
    v4 = a0123456789abcd_1[HIWORD(v2) & 0xF];
  }

  else
  {
    v4 = 117;
  }

  v6 = v4;
  icu::UnicodeString::doAppend(this, &v6, 0, 1);
  v6 = a0123456789abcd_1[v2 >> 12];
  icu::UnicodeString::doAppend(this, &v6, 0, 1);
  v6 = a0123456789abcd_1[(v2 >> 8) & 0xF];
  icu::UnicodeString::doAppend(this, &v6, 0, 1);
  v6 = a0123456789abcd_1[v2 >> 4];
  icu::UnicodeString::doAppend(this, &v6, 0, 1);
  v6 = a0123456789abcd_1[v2 & 0xF];
  icu::UnicodeString::doAppend(this, &v6, 0, 1);
  return this;
}

unint64_t icu::ICU_Utility::skipWhitespace(icu::ICU_Utility *this, const icu::UnicodeString *a2, int *a3)
{
  v3 = a3;
  v5 = *(this + 4);
  if ((v5 & 0x11) != 0)
  {
    v6 = 0;
  }

  else if ((v5 & 2) != 0)
  {
    v6 = this + 10;
  }

  else
  {
    v6 = *(this + 3);
  }

  v7 = v5;
  v8 = v5 >> 5;
  if (v7 < 0)
  {
    v8 = *(this + 3);
  }

  result = (icu::PatternProps::skipWhiteSpace(&v6[2 * *a2], v8 - *a2) - v6) >> 1;
  if (v3)
  {
    *a2 = result;
  }

  return result;
}

BOOL icu::ICU_Utility::parseChar(uint64_t a1, const icu::UnicodeString *a2, int a3)
{
  v6 = *a2;
  icu::ICU_Utility::skipWhitespace(a1, a2, 1);
  v7 = *a2;
  v8 = *(a1 + 8);
  if ((v8 & 0x8000) != 0)
  {
    v9 = *(a1 + 12);
    if (v7 != v9)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = 0;
    goto LABEL_14;
  }

  if (v7 == v8 >> 5)
  {
    goto LABEL_5;
  }

  v9 = v8 >> 5;
LABEL_6:
  if (v9 <= v7)
  {
    v12 = 0xFFFF;
  }

  else
  {
    if ((v8 & 2) != 0)
    {
      v11 = a1 + 10;
    }

    else
    {
      v11 = *(a1 + 24);
    }

    v12 = *(v11 + 2 * v7);
  }

  result = v12 == a3;
  if (v12 == a3)
  {
    v6 = v7 + 1;
  }

LABEL_14:
  *a2 = v6;
  return result;
}

unint64_t icu::ICU_Utility::parsePattern(icu::ICU_Utility *this, const icu::UnicodeString *a2, unint64_t a3, int a4)
{
  v5 = *(this + 4);
  v6 = v5;
  LODWORD(v7) = v5 >> 5;
  if (v6 >= 0)
  {
    v7 = v7;
  }

  else
  {
    v7 = *(this + 3);
  }

  if (v7)
  {
    v11 = icu::UnicodeString::char32At(v7, this, 0);
    if (a3 < a4)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        v14 = (*(*a2 + 80))(a2, a3);
        v15 = v14;
        if (v12 == 126)
        {
          if (icu::PatternProps::isWhiteSpace(v14))
          {
            if (v15 < 0x10000)
            {
              v16 = 1;
            }

            else
            {
              v16 = 2;
            }

            a3 = (v16 + a3);
            v12 = 126;
            continue;
          }

          ++v13;
        }

        else
        {
          if (v14 != v12)
          {
            return 0xFFFFFFFFLL;
          }

          if (v12 < 0x10000)
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          a3 = (v17 + a3);
          v13 += v17;
        }

        v18 = *(this + 4);
        v19 = v18;
        LODWORD(v20) = v18 >> 5;
        if (v19 >= 0)
        {
          v20 = v20;
        }

        else
        {
          v20 = *(this + 3);
        }

        if (v13 == v20)
        {
          return a3;
        }

        v12 = icu::UnicodeString::char32At(v20, this, v13);
      }

      while (a3 < a4);
    }

    return 0xFFFFFFFFLL;
  }

  return a3;
}

uint64_t icu::ICU_Utility::parseAsciiInteger(icu::ICU_Utility *this, const icu::UnicodeString *a2, int *a3)
{
  v3 = 0;
  v4 = *a2;
  for (i = 2 * v4; ; i += 2)
  {
    v6 = *(this + 4);
    if (*(this + 4) < 0)
    {
      v7 = *(this + 3);
      if (v4 >= v7)
      {
        return v3;
      }
    }

    else
    {
      if (v4 >= (v6 >> 5))
      {
        return v3;
      }

      v7 = v6 >> 5;
    }

    if (v7 <= v4)
    {
      break;
    }

    v8 = (v6 & 2) != 0 ? (this + 10) : *(this + 3);
    v9 = *(v8 + i);
    if ((v9 - 48) > 9)
    {
      break;
    }

    v3 = (v9 + 10 * v3 - 48);
    LODWORD(v4) = v4 + 1;
    *a2 = v4;
  }

  return v3;
}

icu::ICU_Utility *icu::ICU_Utility::appendToRule(icu::ICU_Utility *this, icu::UnicodeString *a2, int a3, int a4, icu::UnicodeString *a5, icu::UnicodeString *a6)
{
  v9 = this;
  if (!a3 && ((a2 - 32) < 0x5F || !a4))
  {
    v29 = *(a5 + 4);
    v30 = v29;
    v31 = v29 >> 5;
    if (v30 < 0)
    {
      v31 = *(a5 + 3);
    }

    if (v31)
    {
      if (v31 > 0)
      {
        goto LABEL_83;
      }
    }

    else if (a2 == 92 || a2 == 39)
    {
      v46 = 92;
      icu::UnicodeString::doAppend(this, &v46, 0, 1);
LABEL_78:
      v36 = v9;
      v37 = a2;
      return icu::UnicodeString::append(v36, v37);
    }

    if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_195481970, vaddq_s32(vdupq_n_s32(a2), xmmword_195481960)))) & 1) != 0 && !icu::PatternProps::isWhiteSpace(a2))
    {
      v38 = v9;
      v39 = a2;
LABEL_86:

      return icu::UnicodeString::append(v38, v39);
    }

LABEL_83:
    this = icu::UnicodeString::append(a5, a2);
    if (a2 != 39)
    {
      return this;
    }

    v38 = a5;
    v39 = 39;
    goto LABEL_86;
  }

  v10 = *(a5 + 4);
  v11 = v10;
  v12 = v10 >> 5;
  if (v11 < 0)
  {
    v12 = *(a5 + 3);
  }

  if (v12 >= 1)
  {
    if ((v11 & 0x8000) != 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (v11 >= 0x40u)
    {
      do
      {
        v13 = *(a5 + 3);
        if ((v11 & 2) != 0)
        {
          v13 = (a5 + 10);
        }

        if (*v13 != 39)
        {
          break;
        }

        v14 = (v11 & 0x8000u) == 0 ? v11 >> 5 : *(a5 + 3);
        if (v14 < 2 || v13[1] != 39)
        {
          break;
        }

        v40 = 92;
        v15 = icu::UnicodeString::doAppend(v9, &v40, 0, 1);
        v41 = 39;
        icu::UnicodeString::doAppend(v15, &v41, 0, 1);
        this = icu::UnicodeString::doReplace(a5, 0, 2, 0, 0, 0);
        LOWORD(v11) = *(a5 + 4);
        if ((v11 & 0x8000) == 0)
        {
          goto LABEL_8;
        }

LABEL_10:
        ;
      }

      while (*(a5 + 3) > 1);
    }

    v16 = 1;
    if ((v11 & 0x8000) != 0)
    {
      goto LABEL_28;
    }

    while (1)
    {
      LODWORD(v17) = v11 >> 5;
      if (v11 <= 0x3Fu)
      {
        break;
      }

      v18 = *(a5 + 3);
      if ((v11 & 2) != 0)
      {
        v18 = a5 + 10;
      }

      v19 = &v18[2 * (v11 >> 5)];
      if (*(v19 - 2) != 39 || *(v19 - 1) != 39)
      {
        break;
      }

      while (1)
      {
        v22 = v17 - 2;
        if ((v11 & 1) != 0 && v17 == 2)
        {
          this = icu::UnicodeString::unBogus(a5);
          LOWORD(v11) = *(a5 + 4);
        }

        else if (v17 > v22)
        {
          if (v22 > 1023)
          {
            LOWORD(v11) = v11 | 0xFFE0;
            *(a5 + 4) = v11;
            *(a5 + 3) = v22;
          }

          else
          {
            LOWORD(v11) = v11 & 0x1F | (32 * v22);
            *(a5 + 4) = v11;
          }
        }

        ++v16;
        if ((v11 & 0x8000) == 0)
        {
          break;
        }

LABEL_28:
        v17 = *(a5 + 3);
        if (v17 > 1)
        {
          v20 = *(a5 + 3);
          if ((v11 & 2) != 0)
          {
            v20 = a5 + 10;
          }

          v21 = &v20[2 * v17];
          if (*(v21 - 2) == 39 && *(v21 - 1) == 39)
          {
            continue;
          }
        }

        LODWORD(v17) = *(a5 + 3);
        goto LABEL_43;
      }
    }

LABEL_43:
    if (v17 >= 1)
    {
      v42 = 39;
      icu::UnicodeString::doAppend(v9, &v42, 0, 1);
      v23 = *(a5 + 4);
      v24 = v23;
      v25 = v23 >> 5;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = *(a5 + 3);
      }

      icu::UnicodeString::doAppend(v9, a5, 0, v26);
      v43 = 39;
      this = icu::UnicodeString::doAppend(v9, &v43, 0, 1);
      v27 = *(a5 + 4);
      if (v27)
      {
        this = icu::UnicodeString::unBogus(a5);
      }

      else
      {
        if ((v27 & 0x8000u) == 0)
        {
          v28 = v27 >> 5;
        }

        else
        {
          v28 = *(a5 + 3);
        }

        if (v28)
        {
          *(a5 + 4) &= 0x1Eu;
        }
      }
    }

    if (v16 != 1)
    {
      do
      {
        v44 = 92;
        v32 = icu::UnicodeString::doAppend(v9, &v44, 0, 1);
        v45 = 39;
        this = icu::UnicodeString::doAppend(v32, &v45, 0, 1);
        --v16;
      }

      while (v16 > 1);
    }
  }

  if (a2 == -1)
  {
    return this;
  }

  if (a2 != 32)
  {
    if ((a2 - 32) >= 0x5F && a4)
    {
      return icu::ICU_Utility::escape(v9, a2);
    }

    goto LABEL_78;
  }

  v33 = *(v9 + 4);
  if (*(v9 + 4) < 0)
  {
    v34 = *(v9 + 3);
    if (v34 <= 0)
    {
      return this;
    }
  }

  else
  {
    if (v33 < 0x20)
    {
      return this;
    }

    v34 = v33 >> 5;
  }

  if ((v33 & 2) != 0)
  {
    v35 = v9 + 10;
  }

  else
  {
    v35 = *(v9 + 3);
  }

  if (*&v35[2 * v34 - 2] != 32)
  {
    v36 = v9;
    v37 = 32;
    return icu::UnicodeString::append(v36, v37);
  }

  return this;
}

icu::ICU_Utility *icu::ICU_Utility::appendToRule(icu::ICU_Utility *this, icu::UnicodeString *a2, const icu::UnicodeString *a3, int a4, icu::UnicodeString *a5, icu::UnicodeString *a6)
{
  v8 = a3;
  v10 = this;
  v11 = 0;
  v12 = a2 + 10;
  while (1)
  {
    v13 = *(a2 + 4);
    if (v13 < 0)
    {
      break;
    }

    if (v11 >= *(a2 + 4) >> 5)
    {
      return this;
    }

    v14 = *(a2 + 4) >> 5;
LABEL_7:
    if (v14 <= v11)
    {
      v16 = 0xFFFFLL;
    }

    else
    {
      if ((v13 & 2) != 0)
      {
        v15 = v12;
      }

      else
      {
        v15 = *(a2 + 3);
      }

      v16 = *&v15[2 * v11];
    }

    this = icu::ICU_Utility::appendToRule(v10, v16, v8, a4, a5, a6);
    ++v11;
  }

  v14 = *(a2 + 3);
  if (v11 < v14)
  {
    v14 = v14;
    goto LABEL_7;
  }

  return this;
}

icu::ICU_Utility *icu::ICU_Utility::appendToRule(icu::ICU_Utility *this, icu::UnicodeString *a2, const icu::UnicodeMatcher *a3, icu::UnicodeString *a4, icu::UnicodeString *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = a3;
    v7 = this;
    v13 = 0u;
    v14 = 0u;
    v16 = 0;
    v15 = 0u;
    v12 = &unk_1F0935D00;
    LOWORD(v13) = 2;
    v8 = (*(*a2 + 24))(a2, &v12, a3, a4, a5);
    icu::ICU_Utility::appendToRule(v7, v8, 1, v6, a4, v9);
    this = icu::UnicodeString::~UnicodeString(v10, &v12);
  }

  v11 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::ICU_Utility::parseInteger(icu::ICU_Utility *this, const icu::UnicodeString *a2, int *a3)
{
  v5 = *a2;
  if (*a2 >= a3)
  {
    goto LABEL_13;
  }

  v6 = *(this + 4);
  v7 = (v6 & 0x8000u) == 0 ? v6 >> 5 : *(this + 3);
  if (v7 <= v5)
  {
    goto LABEL_13;
  }

  v8 = this + 10;
  if ((v6 & 2) == 0)
  {
    v8 = *(this + 3);
  }

  if (*&v8[2 * v5] == 48)
  {
    v9 = v5 + 1;
    v10 = 1;
    v11 = 8;
    if (v5 + 1 < a3 && v7 > v9 && (*&v8[2 * v9] | 0x20) == 0x78)
    {
      v10 = 0;
      v5 += 2;
      v11 = 16;
    }

    else
    {
      ++v5;
    }
  }

  else
  {
LABEL_13:
    v10 = 0;
    v11 = 10;
  }

  v12 = 0;
  v13 = v5;
  if (v5 <= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = v5;
  }

  while (v14 != v13)
  {
    v15 = *(this + 4);
    if ((v15 & 0x8000u) == 0)
    {
      v16 = v15 >> 5;
    }

    else
    {
      v16 = *(this + 3);
    }

    if (v16 <= v13)
    {
      v18 = 0xFFFF;
    }

    else
    {
      if ((v15 & 2) != 0)
      {
        v17 = this + 10;
      }

      else
      {
        v17 = *(this + 3);
      }

      v18 = *&v17[2 * v13];
    }

    v19 = u_digit(v18, v11);
    if (v19 < 0)
    {
      goto LABEL_32;
    }

    ++v10;
    ++v13;
    v20 = v19 + v12 * v11 <= v12;
    v12 = (v19 + v12 * v11);
    if (v20)
    {
      return 0;
    }
  }

  LODWORD(v13) = v14;
LABEL_32:
  if (v10)
  {
    *a2 = v13;
  }

  return v12;
}

uint64_t icu::ICU_Utility::parsePattern(icu::ICU_Utility *this, const icu::UnicodeString *a2, int *a3, uint64_t a4, const icu::UnicodeString *a5, int *a6)
{
  v10 = 0;
  v11 = 0;
  v30 = a2;
  v12 = a4 + 10;
  v13 = this + 10;
  while (1)
  {
    v14 = *(a4 + 8);
    if (v14 < 0)
    {
      break;
    }

    if (v10 >= *(a4 + 8) >> 5)
    {
      return v30;
    }

    v15 = *(a4 + 8) >> 5;
LABEL_7:
    if (v15 <= v10)
    {
      v17 = 0xFFFF;
    }

    else
    {
      if ((v14 & 2) != 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = *(a4 + 24);
      }

      v17 = *(v16 + 2 * v10);
      switch(v17)
      {
        case '~':
          goto LABEL_40;
        case '#':
          v29 = v30;
          *(a5 + v11) = icu::ICU_Utility::parseInteger(this, &v29, a3);
          if (v29 == v30)
          {
            return 0xFFFFFFFFLL;
          }

          ++v11;
          v30 = v29;
          goto LABEL_41;
        case ' ':
          v18 = v30;
          if (v30 >= a3)
          {
            return 0xFFFFFFFFLL;
          }

          ++v30;
          v19 = *(this + 4);
          v20 = (v19 & 0x8000u) == 0 ? v19 >> 5 : *(this + 3);
          if (v20 <= v18)
          {
            v22 = 0xFFFFLL;
          }

          else
          {
            v21 = (v19 & 2) != 0 ? v13 : *(this + 3);
            v22 = *&v21[2 * v18];
          }

          if (!icu::PatternProps::isWhiteSpace(v22))
          {
            return 0xFFFFFFFFLL;
          }

LABEL_40:
          v30 = icu::ICU_Utility::skipWhitespace(this, &v30, 0);
          goto LABEL_41;
      }
    }

    v23 = v30;
    if (v30 >= a3)
    {
      return 0xFFFFFFFFLL;
    }

    ++v30;
    v24 = *(this + 4);
    v25 = (v24 & 0x8000u) == 0 ? v24 >> 5 : *(this + 3);
    if (v25 <= v23)
    {
      v27 = 0xFFFF;
    }

    else
    {
      v26 = (v24 & 2) != 0 ? v13 : *(this + 3);
      v27 = *&v26[2 * v23];
    }

    if (v17 != u_tolower(v27))
    {
      return 0xFFFFFFFFLL;
    }

LABEL_41:
    ++v10;
  }

  v15 = *(a4 + 12);
  if (v10 < v15)
  {
    v15 = v15;
    goto LABEL_7;
  }

  return v30;
}

uint64_t icu::ICU_Utility::parseUnicodeIdentifier@<X0>(uint64_t this@<X0>, const icu::UnicodeString *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a3;
  *(a3 + 8) = 0u;
  v6 = (a3 + 8);
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  v7 = *a2;
  v8 = *(this + 8);
  v9 = v8;
  LODWORD(a3) = v8 >> 5;
  if (v9 >= 0)
  {
    a3 = a3;
  }

  else
  {
    a3 = *(this + 12);
  }

  if (v7 >= a3)
  {
LABEL_19:
    *a2 = v7;
    return this;
  }

  v10 = this;
  while (1)
  {
    v11 = icu::UnicodeString::char32At(a3, v10, v7);
    v12 = v11;
    v13 = *(v5 + 8);
    v14 = v13;
    v15 = v13 >> 5;
    if (v14 < 0)
    {
      v15 = *(v5 + 12);
    }

    if (v15)
    {
      this = u_isIDPart(v11);
      if (!this)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    this = u_isIDStart(v11);
    if (!this)
    {
      break;
    }

LABEL_12:
    this = icu::UnicodeString::append(v5, v12);
    if (v12 < 0x10000)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v7 += v16;
    v17 = *(v10 + 8);
    v18 = v17;
    LODWORD(a3) = v17 >> 5;
    if (v18 >= 0)
    {
      a3 = a3;
    }

    else
    {
      a3 = *(v10 + 12);
    }

    if (v7 >= a3)
    {
      goto LABEL_19;
    }
  }

  v19 = *v6;
  if (v19)
  {

    return icu::UnicodeString::unBogus(v5);
  }

  else
  {
    if ((v19 & 0x8000u) == 0)
    {
      v20 = v19 >> 5;
    }

    else
    {
      v20 = *(v5 + 12);
    }

    if (v20)
    {
      *v6 &= 0x1Eu;
    }
  }

  return this;
}

uint64_t icu::ICU_Utility::parseNumber(icu::ICU_Utility *this, const icu::UnicodeString *a2, int *a3)
{
  v3 = a3;
  v6 = 0;
  for (i = *a2; ; ++i)
  {
    v8 = *(this + 4);
    v9 = v8;
    LODWORD(v10) = v8 >> 5;
    v10 = v9 >= 0 ? v10 : *(this + 3);
    if (i >= v10)
    {
      break;
    }

    v11 = icu::UnicodeString::char32At(v10, this, i);
    v12 = u_digit(v11, v3);
    if ((v12 & 0x80000000) != 0)
    {
      break;
    }

    v6 = v12 + v3 * v6;
    if (v6 > 0x7FFFFFFF)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*a2 == i)
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = i;
  return v6;
}

uint64_t utrace_entry(uint64_t result)
{
  if (off_1EAEC9B58)
  {
    return off_1EAEC9B58(qword_1EAEC9B60, result);
  }

  return result;
}

uint64_t utrace_exit(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (off_1EAEC9B68)
  {
    if (a2 <= 15)
    {
      if (!a2)
      {
        v9 = "Returns.";
        return off_1EAEC9B68(qword_1EAEC9B60, result, v9, &a9);
      }

      if (a2 == 1)
      {
        v9 = "Returns %d.";
        return off_1EAEC9B68(qword_1EAEC9B60, result, v9, &a9);
      }
    }

    else
    {
      switch(a2)
      {
        case 16:
          v9 = "Returns.  Status = %d.";
          return off_1EAEC9B68(qword_1EAEC9B60, result, v9, &a9);
        case 17:
          v9 = "Returns %d.  Status = %d.";
          return off_1EAEC9B68(qword_1EAEC9B60, result, v9, &a9);
        case 18:
          v9 = "Returns %d.  Status = %p.";
          return off_1EAEC9B68(qword_1EAEC9B60, result, v9, &a9);
      }
    }

    abort();
  }

  return result;
}

uint64_t utrace_data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (off_1EAEC9B70)
  {
    return off_1EAEC9B70(qword_1EAEC9B60, result, a2, a3, &a9);
  }

  return result;
}

uint64_t utrace_vformat(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5)
{
  v9 = 0;
  v82 = a5;
  v81 = 0;
  v78 = 0;
LABEL_2:
  v10 = v9;
  v11 = v9 + 3;
  v12 = (a4 + v9);
  v13 = (v10 << 32) + 0x100000000;
  do
  {
    v15 = *v12++;
    v14 = v15;
    if (v15 == 37)
    {
      v9 = v11 - 1;
      v16 = *(a4 + (v13 >> 32));
      if (v16 > 0x67)
      {
        if (*(a4 + (v13 >> 32)) <= 0x6Fu)
        {
          if (v16 == 104)
          {
            v17 = a4;
            v50 = v82++;
            v51 = *v50;
            for (i = 12; i != -4; i -= 4)
            {
              sub_1952A608C(a0123456789abcd_0[(v51 >> i) & 0xF], a1, &v81, a2, 0);
            }

LABEL_76:
            a4 = v17;
          }

          else
          {
            if (v16 != 108)
            {
              goto LABEL_88;
            }

            v46 = v82++;
            v47 = *v46;
            for (j = 60; j != -4; j -= 4)
            {
              sub_1952A608C(a0123456789abcd_0[(v47 >> j) & 0xF], a1, &v81, a2, 0);
            }

            v78 = v47;
          }
        }

        else
        {
          if (v16 == 112)
          {
            v75 = a4;
            v56 = 0;
            v57 = v82++;
            v83 = *v57;
            v58 = &v83 + 7;
            do
            {
              v59 = *v58;
              for (k = 4; k != -4; k -= 4)
              {
                sub_1952A608C(a0123456789abcd_0[(v59 >> k) & 0xF], a1, &v81, a2, 0);
              }

              --v58;
              ++v56;
            }

            while (v56 != 8);
LABEL_95:
            a4 = v75;
            goto LABEL_2;
          }

          if (v16 != 115)
          {
            if (v16 != 118)
            {
              goto LABEL_88;
            }

            v21 = *(a4 + v9);
            if (*(a4 + v9))
            {
              v9 = v11;
            }

            v22 = v82++;
            v23 = *v22;
            v82 = v22 + 2;
            v24 = *(v22 + 2);
            v25 = v23;
            v75 = a4;
            if (v23)
            {
              v26 = v24 != -1 && v24 < 1;
              v27 = v78;
              if (!v26)
              {
                v28 = 0;
                v29 = 0;
                v71 = v25;
                v72 = v25;
                v70 = v25;
                v76 = v25;
                v77 = v24;
                v74 = v25;
                v73 = v21;
                while (v21 <= 103)
                {
                  if (v21 > 98)
                  {
                    if (v21 != 99)
                    {
                      if (v21 == 100)
                      {
                        v27 = *v71++;
                        v29 = 8;
                        goto LABEL_54;
                      }

                      goto LABEL_53;
                    }

                    v36 = v28;
                    sub_1952A608C(*v74, a1, &v81, a2, a3);
                    v28 = v36;
                    v33 = 0;
                    v27 = *v74++;
                  }

                  else
                  {
                    if (v21 != 83)
                    {
                      if (v21 != 98)
                      {
                        goto LABEL_53;
                      }

                      v27 = *v74++;
                      v29 = 2;
                      goto LABEL_54;
                    }

                    v34 = v76;
                    v35 = v28;
                    sub_1952A6134(*v76, -1, a1, &v81, a2, a3);
                    sub_1952A608C(10, a1, &v81, a2, a3);
                    v28 = v35;
                    v33 = 0;
                    ++v76;
                    v27 = *v34 != 0;
                  }

LABEL_55:
                  v24 = v77;
LABEL_56:
                  if (v24 != -1 || v27)
                  {
                    ++v28;
                    v29 = v33;
                    if (v24 == -1 || v28 < v24)
                    {
                      continue;
                    }
                  }

                  goto LABEL_92;
                }

                if (v21 > 111)
                {
                  if (v21 == 112)
                  {
                    v80 = v28;
                    v37 = 0;
                    v83 = *v76;
                    v38 = &v83 + 7;
                    do
                    {
                      v39 = *v38;
                      for (m = 4; m != -4; m -= 4)
                      {
                        sub_1952A608C(a0123456789abcd_0[(v39 >> m) & 0xF], a1, &v81, a2, 0);
                      }

                      --v38;
                      ++v37;
                    }

                    while (v37 != 8);
                    v33 = 0;
                    v24 = v77;
                    v41 = *v76++;
                    v27 = v41 != 0;
                    v21 = v73;
                    v28 = v80;
                    goto LABEL_56;
                  }

                  if (v21 == 115)
                  {
                    v79 = v28;
                    v30 = v76;
                    if (*v76)
                    {
                      v31 = *v76;
                    }

                    else
                    {
                      v31 = "*NULL*";
                    }

                    do
                    {
                      v32 = *v31++;
                      sub_1952A608C(v32, a1, &v81, a2, a3);
                    }

                    while (v32);
                    sub_1952A608C(10, a1, &v81, a2, a3);
                    v33 = 0;
                    ++v76;
                    v27 = *v30 != 0;
                    v21 = v73;
                    v28 = v79;
                    goto LABEL_55;
                  }

                  goto LABEL_53;
                }

                if (v21 == 104)
                {
                  v27 = *v70++;
                  v29 = 4;
                  goto LABEL_54;
                }

                if (v21 != 108)
                {
LABEL_53:
                  if (v29 < 1)
                  {
                    v33 = v29;
                    goto LABEL_55;
                  }

                  goto LABEL_54;
                }

                v27 = *v72++;
                v29 = 16;
LABEL_54:
                v42 = v27;
                v33 = v29;
                v43 = v28;
                sub_1952A624C(v27, v29, a1, &v81, a2);
                sub_1952A608C(32, a1, &v81, a2, a3);
                v27 = v42;
                v28 = v43;
                goto LABEL_55;
              }
            }

            else
            {
              do
              {
                v66 = (v25 + 1);
                sub_1952A608C(aNull[v25], a1, &v81, a2, a3);
                v25 = v66;
              }

              while (v66 != 8);
              v27 = v78;
            }

LABEL_92:
            v78 = v27;
            sub_1952A608C(91, a1, &v81, a2, a3);
            for (n = 28; n != -4; n -= 4)
            {
              sub_1952A608C(a0123456789abcd_0[(v24 >> n) & 0xFLL], a1, &v81, a2, 0);
            }

            sub_1952A608C(93, a1, &v81, a2, a3);
            goto LABEL_95;
          }

          v62 = v82++;
          v63 = *v62;
          if (v63)
          {
            v64 = v63;
          }

          else
          {
            v64 = "*NULL*";
          }

          do
          {
            v65 = *v64++;
            sub_1952A608C(v65, a1, &v81, a2, a3);
          }

          while (v65);
        }
      }

      else if (*(a4 + (v13 >> 32)) <= 0x61u)
      {
        if (!*(a4 + (v13 >> 32)))
        {
          v9 = v11 - 2;
          v49 = 37;
          goto LABEL_89;
        }

        if (v16 != 83)
        {
          goto LABEL_88;
        }

        v44 = v82++;
        v45 = *v44;
        v82 = v44 + 2;
        sub_1952A6134(v45, *(v44 + 2), a1, &v81, a2, a3);
      }

      else
      {
        switch(v16)
        {
          case 'b':
            v17 = a4;
            v53 = v82++;
            v54 = *v53;
            for (ii = 4; ii != -4; ii -= 4)
            {
              sub_1952A608C(a0123456789abcd_0[(v54 >> ii) & 0xF], a1, &v81, a2, 0);
            }

            goto LABEL_76;
          case 'c':
            v61 = v82++;
            v49 = *v61;
            goto LABEL_89;
          case 'd':
            v17 = a4;
            v18 = v82++;
            v19 = *v18;
            for (jj = 28; jj != -4; jj -= 4)
            {
              sub_1952A608C(a0123456789abcd_0[(v19 >> jj) & 0xF], a1, &v81, a2, 0);
            }

            goto LABEL_76;
        }

LABEL_88:
        v49 = v16;
LABEL_89:
        sub_1952A608C(v49, a1, &v81, a2, a3);
      }

      goto LABEL_2;
    }

    sub_1952A608C(v14, a1, &v81, a2, a3);
    ++v11;
    v13 += 0x100000000;
  }

  while (v14);
  LODWORD(v68) = v81;
  if (!v81)
  {
    if (a3 < 1)
    {
      LODWORD(v68) = 0;
    }

    else
    {
      v68 = 0;
      do
      {
        if (v68 < a2)
        {
          *(a1 + v68) = 32;
        }

        ++v68;
      }

      while (a3 != v68);
    }
  }

  if (v68 < a2)
  {
    *(a1 + v68) = 0;
  }

  return (v68 + 1);
}

uint64_t sub_1952A608C(uint64_t result, uint64_t a2, int *a3, int a4, int a5)
{
  v5 = *a3;
  if (*a3)
  {
    if (!result)
    {
      goto LABEL_18;
    }

    if (result == 10)
    {
      if (v5 >= a4)
      {
        v6 = a5 == 0;
        v7 = a5 < 0;
      }

      else
      {
        v6 = 1;
        v7 = 0;
      }

      if (v7 || v6)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (v5 >= a4 || *(a2 + v5 - 1) != 10)
    {
      goto LABEL_18;
    }
  }

  if (a5 < 1)
  {
    goto LABEL_18;
  }

  do
  {
LABEL_15:
    if (v5 < a4)
    {
      *(a2 + v5) = 32;
      v5 = *a3;
    }

    *a3 = ++v5;
    --a5;
  }

  while (a5);
LABEL_18:
  if (v5 < a4)
  {
    *(a2 + v5) = result;
  }

  if (result)
  {
    ++*a3;
  }

  return result;
}

uint64_t sub_1952A6134(uint64_t result, int a2, uint64_t a3, int *a4, int a5, int a6)
{
  if (result)
  {
    v11 = result;
    if (a2 == -1 || a2 >= 1)
    {
      for (i = 0; a2 == -1 || i < a2; ++i)
      {
        v13 = *(v11 + 2 * i);
        for (j = 12; j != -4; j -= 4)
        {
          sub_1952A608C(a0123456789abcd_0[(v13 >> j) & 0xF], a3, a4, a5, 0);
        }

        result = sub_1952A608C(32, a3, a4, a5, a6);
        if (a2 == -1 && !v13)
        {
          break;
        }
      }
    }
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = v15 + 1;
      result = sub_1952A608C(aNull_0[v15], a3, a4, a5, a6);
      v15 = v16;
    }

    while (v16 != 7);
  }

  return result;
}

uint64_t sub_1952A624C(uint64_t result, int a2, uint64_t a3, int *a4, int a5)
{
  v5 = (4 * a2 - 4);
  if (4 * a2 - 4 >= 0)
  {
    v9 = result;
    do
    {
      result = sub_1952A608C(a0123456789abcd_0[(v9 >> v5) & 0xF], a3, a4, a5, 0);
      v5 -= 4;
    }

    while (v5 != -4);
  }

  return result;
}

uint64_t utrace_setFunctions(uint64_t result, uint64_t (*a2)(void, void), void *a3, uint64_t (*a4)(void, void, void, void, void))
{
  off_1EAEC9B58 = a2;
  off_1EAEC9B68 = a3;
  off_1EAEC9B70 = a4;
  qword_1EAEC9B60 = result;
  return result;
}

void *utrace_getFunctions(void *result, void *a2, void *a3, void *a4)
{
  *a2 = off_1EAEC9B58;
  *a3 = off_1EAEC9B68;
  *a4 = off_1EAEC9B70;
  *result = qword_1EAEC9B60;
  return result;
}

uint64_t utrace_setLevel(uint64_t result)
{
  if (result < 0)
  {
    v1 = -1;
  }

  else
  {
    v1 = result;
  }

  if (v1 >= 9)
  {
    v1 = 9;
  }

  dword_1EAEC9B78 = v1;
  return result;
}

uint64_t sub_1952A6378()
{
  off_1EAEC9B58 = 0;
  off_1EAEC9B68 = 0;
  off_1EAEC9B70 = 0;
  dword_1EAEC9B78 = -1;
  qword_1EAEC9B60 = 0;
  return 1;
}

const char *utrace_functionName(unsigned int a1)
{
  if (a1 <= 1)
  {
    v1 = &off_1E740B8E8[a1];
    return *v1;
  }

  if ((a1 & 0xFFFFFFF8) == 0x1000)
  {
    v2 = a1 - 4096;
    v3 = off_1E740B900;
LABEL_9:
    v1 = &v3[v2];
    return *v1;
  }

  v2 = a1 - 0x2000;
  if (a1 - 0x2000 <= 8)
  {
    v3 = off_1E740B948;
    goto LABEL_9;
  }

  if ((a1 & 0xFFFFFFFC) == 0x3000)
  {
    v2 = a1 - 12288;
    v3 = off_1E740B998;
    goto LABEL_9;
  }

  return "[BOGUS Trace Function Number]";
}

_OWORD *utrie_open(_OWORD *a1, char *a2, int a3, unsigned int a4, int a5, int a6)
{
  if (a3 < 32 || a3 <= 0x3FF && a6)
  {
    return 0;
  }

  v12 = a1;
  if (a1 || (v12 = malloc_type_malloc(0x44120uLL, 0x1010040A2A82512uLL)) != 0)
  {
    bzero(v12, 0x44120uLL);
    *(v12 + 139416) = a1 == 0;
    if (a2)
    {
      v14 = 0;
      *(v12 + 17424) = a2;
    }

    else
    {
      v15 = malloc_type_malloc((4 * a3), 0x100004052888210uLL);
      *(v12 + 17424) = v15;
      if (!v15)
      {
        free(v12);
        return 0;
      }

      a2 = v15;
      v14 = 1;
    }

    *(v12 + 139417) = v14;
    if (a6)
    {
      *v12 = xmmword_195481A30;
      v12[1] = xmmword_195481A40;
      v16 = 288;
    }

    else
    {
      v16 = 32;
    }

    *(v12 + 34853) = v16;
    v17 = vdupq_n_s32(a4);
    v18 = 4 * v16;
    do
    {
      *&a2[v18 - 16] = v17;
      v18 -= 16;
    }

    while (v18);
    *(v12 + 34850) = a5;
    *(v12 + 34851) = 34816;
    *(v12 + 34852) = a3;
    *(v12 + 139418) = a6;
    *(v12 + 139419) = 0;
  }

  return v12;
}

void **utrie_clone(_OWORD *a1, uint64_t a2, char *a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a2 + 139264;
  v6 = *(a2 + 139392);
  if (!v6 || *(a2 + 139419))
  {
    return 0;
  }

  v9 = a3;
  v11 = *(a2 + 139408);
  if (a3 && v11 <= a4)
  {
    v12 = 0;
  }

  else
  {
    v13 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
    if (!v13)
    {
      return 0;
    }

    v9 = v13;
    v6 = *(v5 + 128);
    v12 = 1;
    a4 = v11;
  }

  v14 = utrie_open(a1, v9, a4, *v6, *(v5 + 136), *(v5 + 154));
  v7 = v14;
  if (v14)
  {
    memcpy(v14, a2, 0x22080uLL);
    memcpy(v7[17424], *(v5 + 128), 4 * *(v5 + 148));
    *(v7 + 34853) = *(v5 + 148);
    *(v7 + 139417) = v12;
  }

  else
  {
    free(v9);
  }

  return v7;
}

void utrie_close(void **a1)
{
  if (a1)
  {
    v2 = (a1 + 17408);
    if (*(a1 + 139417))
    {
      free(a1[17424]);
      *(v2 + 16) = 0;
    }

    if (v2[152])
    {

      free(a1);
    }
  }
}

uint64_t utrie_getData(uint64_t a1, _DWORD *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = a1 + 139264;
      *a2 = *(v4 + 148);
      return *(v4 + 128);
    }
  }

  return result;
}

uint64_t utrie_set32(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (HIWORD(a2) <= 0x10u && !*(a1 + 139419))
  {
    v4 = *(a1 + 4 * (a2 >> 5));
    LODWORD(v5) = v4;
    if (v4 > 0)
    {
LABEL_5:
      *(*(a1 + 139392) + 4 * (v5 + (a2 & 0x1F))) = a3;
      return 1;
    }

    v5 = *(a1 + 139412);
    if (v5 + 32 <= *(a1 + 139408))
    {
      *(a1 + 139412) = v5 + 32;
      if ((v5 & 0x80000000) == 0)
      {
        *(a1 + 4 * (a2 >> 5)) = v5;
        v6 = *(a1 + 139392);
        v7 = (v6 - 4 * v4);
        v8 = *v7;
        v10 = v7[2];
        v9 = v7[3];
        v11 = (v6 + 4 * v5);
        v11[1] = v7[1];
        v11[2] = v10;
        *v11 = v8;
        v12 = v7[4];
        v13 = v7[5];
        v14 = v7[7];
        v11[6] = v7[6];
        v11[7] = v14;
        v11[4] = v12;
        v11[5] = v13;
        v11[3] = v9;
        goto LABEL_5;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t utrie_get32(uint64_t a1, unsigned int a2, BOOL *a3)
{
  if (!a1 || HIWORD(a2) > 0x10u || *(a1 + 139419))
  {
    result = 0;
    if (a3)
    {
      *a3 = 1;
    }
  }

  else
  {
    v3 = *(a1 + 4 * (a2 >> 5));
    if (a3)
    {
      *a3 = v3 == 0;
    }

    if (v3 < 0)
    {
      v3 = -v3;
    }

    return *(*(a1 + 139392) + 4 * (v3 + (a2 & 0x1F)));
  }

  return result;
}

uint64_t utrie_setRange32(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = 0;
  if (!a1 || a2 > a3 || a3 > 0x110000 || WORD1(a2) > 0x10u || *(a1 + 139419))
  {
    return v5;
  }

  if (a2 == a3)
  {
    return 1;
  }

  v7 = *(a1 + 139392);
  v8 = *v7;
  v9 = a2 & 0x1F;
  if ((a2 & 0x1F) == 0)
  {
    goto LABEL_42;
  }

  v10 = *(a1 + 4 * (a2 >> 5));
  LODWORD(v11) = v10;
  if (v10 <= 0)
  {
    v11 = *(a1 + 139412);
    if (v11 + 32 > *(a1 + 139408))
    {
      return 0;
    }

    *(a1 + 139412) = v11 + 32;
    if ((v11 & 0x80000000) != 0)
    {
      return 0;
    }

    *(a1 + 4 * (a2 >> 5)) = v11;
    v26 = &v7[-v10];
    v27 = *v26;
    v28 = *(v26 + 1);
    v29 = *(v26 + 3);
    v30 = &v7[v11];
    *(v30 + 2) = *(v26 + 2);
    *(v30 + 3) = v29;
    *v30 = v27;
    *(v30 + 1) = v28;
    v31 = *(v26 + 4);
    v32 = *(v26 + 5);
    v33 = *(v26 + 7);
    *(v30 + 6) = *(v26 + 6);
    *(v30 + 7) = v33;
    *(v30 + 4) = v31;
    *(v30 + 5) = v32;
  }

  LODWORD(a2) = (a2 + 32) & 0x3FFFE0;
  v7 = *(a1 + 139392);
  v12 = v11;
  v13 = &v7[v11];
  if (a2 <= a3)
  {
    v34 = (4 * v9);
    if (a5)
    {
      v35 = 0;
      v36 = vdupq_n_s64((v34 >> 2) ^ 0x1F);
      v37 = (&v7[v12 + 2] + v34);
      do
      {
        v38 = vdupq_n_s64(v35);
        v39 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_19544D5F0)));
        if (vuzp1_s16(v39, *v36.i8).u8[0])
        {
          *(v37 - 2) = a4;
        }

        if (vuzp1_s16(v39, *&v36).i8[2])
        {
          *(v37 - 1) = a4;
        }

        if (vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_19544D5E0)))).i32[1])
        {
          *v37 = a4;
          v37[1] = a4;
        }

        v35 += 4;
        v37 += 4;
      }

      while (((35 - (v34 >> 2)) & 0x3C) != v35);
    }

    else
    {
      do
      {
        if (*(v13 + v34) == v8)
        {
          *(v13 + v34) = a4;
        }

        v40 = v34 >= 0x7C;
        v34 += 4;
      }

      while (!v40);
    }

LABEL_42:
    if (a2 < (a3 & 0x1FFFE0))
    {
      if (v8 == a4)
      {
        LODWORD(v41) = 0;
      }

      else
      {
        LODWORD(v41) = -1;
      }

      a2 = a2;
      v42 = vdupq_n_s32(a4);
      v43 = vdupq_n_s32(v8);
      do
      {
        v44 = a2 >> 5;
        v45 = *(a1 + 4 * (a2 >> 5));
        if (v45 < 1)
        {
          v48 = v45;
          v49 = v7[-v45];
          if (a5)
          {
            v50 = 1;
          }

          else
          {
            v50 = v45 == 0;
          }

          v51 = v50;
          if (v49 != a4 && v51 != 0)
          {
            if ((v41 & 0x80000000) != 0)
            {
              v41 = *(a1 + 139412);
              if (v41 + 32 > *(a1 + 139408))
              {
                return 0;
              }

              *(a1 + 139412) = v41 + 32;
              if ((v41 & 0x80000000) != 0)
              {
                return 0;
              }

              v55 = 0;
              *(a1 + 4 * v44) = v41;
              v56 = &v7[-v48];
              v57 = &v7[v41];
              v58 = *v56;
              v59 = *(v56 + 1);
              v60 = *(v56 + 3);
              *(v57 + 2) = *(v56 + 2);
              *(v57 + 3) = v60;
              *v57 = v58;
              *(v57 + 1) = v59;
              v61 = *(v56 + 4);
              v62 = *(v56 + 5);
              v63 = *(v56 + 7);
              *(v57 + 6) = *(v56 + 6);
              *(v57 + 7) = v63;
              *(v57 + 4) = v61;
              *(v57 + 5) = v62;
              *(a1 + 4 * v44) = -v41;
              v7 = *(a1 + 139392);
              do
              {
                *&v7[v41 + v55] = v42;
                v55 += 4;
              }

              while (v55 != 32);
            }

            else
            {
              *(a1 + 4 * v44) = -v41;
            }
          }
        }

        else
        {
          v46 = &v7[v45];
          if (a5)
          {
            for (i = 0; i != 8; ++i)
            {
              v46[i] = v42;
            }
          }

          else
          {
            v53 = 32;
            do
            {
              v54 = vmovn_s32(vceqq_s32(*v46, v43));
              if (v54.i8[0])
              {
                v46->i32[0] = a4;
              }

              if (v54.i8[2])
              {
                v46->i32[1] = a4;
              }

              if (v54.i8[4])
              {
                v46->i32[2] = a4;
              }

              if (v54.i8[6])
              {
                v46->i32[3] = a4;
              }

              ++v46;
              v53 -= 4;
            }

            while (v53);
          }
        }

        a2 += 32;
      }

      while ((a3 & 0x1FFFE0) > a2);
    }

    if ((a3 & 0x1F) == 0)
    {
      return 1;
    }

    v64 = *(a1 + 4 * (a2 >> 5));
    if (v64 >= 1)
    {
      goto LABEL_82;
    }

    v74 = *(a1 + 139412);
    if (v74 + 32 <= *(a1 + 139408))
    {
      *(a1 + 139412) = v74 + 32;
      if ((v74 & 0x80000000) == 0)
      {
        *(a1 + 4 * (a2 >> 5)) = v74;
        v75 = &v7[v74];
        v76 = &v7[-v64];
        v77 = *v76;
        v78 = *(v76 + 1);
        v79 = *(v76 + 3);
        *(v75 + 2) = *(v76 + 2);
        *(v75 + 3) = v79;
        *v75 = v77;
        *(v75 + 1) = v78;
        v80 = *(v76 + 4);
        v81 = *(v76 + 5);
        v82 = *(v76 + 7);
        *(v75 + 6) = *(v76 + 6);
        *(v75 + 7) = v82;
        *(v75 + 4) = v80;
        *(v75 + 5) = v81;
        v7 = *(a1 + 139392);
        v64 = v74;
LABEL_82:
        v65 = &v7[v64];
        if (a5)
        {
          v66 = 0;
          v67 = &v65[a3 & 0x1F];
          if (v67 <= (v65 + 1))
          {
            v67 = (v65 + 1);
          }

          v68 = (v67 + ~v7 - 4 * v64) >> 2;
          v69 = vdupq_n_s64(v68);
          v70 = (v68 + 4) & 0x7FFFFFFFFFFFFFFCLL;
          v71 = v65 + 2;
          do
          {
            v72 = vdupq_n_s64(v66);
            v73 = vmovn_s64(vcgeq_u64(v69, vorrq_s8(v72, xmmword_19544D5F0)));
            if (vuzp1_s16(v73, *v69.i8).u8[0])
            {
              *(v71 - 2) = a4;
            }

            if (vuzp1_s16(v73, *&v69).i8[2])
            {
              *(v71 - 1) = a4;
            }

            if (vuzp1_s16(*&v69, vmovn_s64(vcgeq_u64(v69, vorrq_s8(v72, xmmword_19544D5E0)))).i32[1])
            {
              *v71 = a4;
              v71[1] = a4;
            }

            v66 += 4;
            v71 += 4;
            v5 = 1;
          }

          while (v70 != v66);
        }

        else
        {
          v83 = &v65[a3 & 0x1F];
          do
          {
            if (*v65 == v8)
            {
              *v65 = a4;
            }

            ++v65;
            v5 = 1;
          }

          while (v65 < v83);
        }

        return v5;
      }
    }

    return 0;
  }

  v14 = a3 & 0x1F;
  if (a5)
  {
    if (v9 >= v14)
    {
      return 1;
    }

    v15 = 0;
    v16 = &v7[v12];
    v17 = &v16[v14];
    v18 = &v16[v9 + 1];
    if (v18 > v17)
    {
      v17 = v18;
    }

    v19 = v17 + ~v7;
    v20 = 4 * v12 + 4 * v9;
    v21 = vdupq_n_s64((v19 - v20) >> 2);
    v22 = (((v19 - 4 * v12 - 4 * v9) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v23 = (v7 + v20 + 8);
    do
    {
      v24 = vdupq_n_s64(v15);
      v25 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_19544D5F0)));
      if (vuzp1_s16(v25, *v21.i8).u8[0])
      {
        *(v23 - 2) = a4;
      }

      if (vuzp1_s16(v25, *&v21).i8[2])
      {
        *(v23 - 1) = a4;
      }

      if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_19544D5E0)))).i32[1])
      {
        *v23 = a4;
        v23[1] = a4;
      }

      v15 += 4;
      v23 += 4;
      v5 = 1;
    }

    while (v22 != v15);
  }

  else
  {
    if (v9 >= v14)
    {
      return 1;
    }

    v84 = &v13[v9];
    do
    {
      if (*v84 == v8)
      {
        *v84 = a4;
      }

      ++v84;
      v5 = 1;
    }

    while (v84 < &v13[a3 & 0x1F]);
  }

  return v5;
}

uint64_t utrie_serialize(_BYTE *a1, _DWORD *a2, int a3, uint64_t (*a4)(uint64_t a1, unsigned int a2, uint64_t a3), int a5, int *a6)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a6 || *a6 > 0)
  {
    goto LABEL_3;
  }

  v10 = a1;
  if (!a1 || a3 < 0 || !a2 && a3)
  {
    v7 = 0;
    *a6 = 1;
    goto LABEL_4;
  }

  v14 = a1 + 139264;
  if (!a1[139419])
  {
    if (a4)
    {
      v25 = a4;
    }

    else
    {
      v25 = sub_1952A71DC;
    }

    v50 = v25;
    sub_1952A7254(a1, 0, a6);
    v26 = 0;
    v55 = *(v10 + 6976);
    v56 = *(v10 + 6992);
    v57 = *(v10 + 7008);
    v58 = *(v10 + 7024);
    v51 = *(v10 + 6912);
    v52 = *(v10 + 6928);
    v27 = *(v10 + 6944);
    v53 = v27;
    v54 = *(v10 + 6960);
    v28 = *(v10 + 139400);
    v29 = *(v10 + 139392);
    if (v28 != *v29)
    {
      v30 = *(v10 + 139412);
      if (v30 + 32 > *(v10 + 139408) || (*(v10 + 139412) = v30 + 32, (v30 & 0x80000000) != 0))
      {
        *a6 = 7;
        goto LABEL_75;
      }

      v31 = 0;
      v32 = &v29[v30];
      v33 = vdupq_n_s32(v28);
      do
      {
        *&v32[v31] = v33;
        v31 += 4;
      }

      while (v31 != 32);
      v26 = -v30;
    }

    v34 = vdupq_n_s32(v26);
    v35 = -128;
    do
    {
      *(v10 + v35 + 7040) = v34;
      v35 += 16;
    }

    while (v35);
    v36 = 0x10000;
    v37 = 2048;
    do
    {
      if (*(v10 + 4 * (v36 >> 5)))
      {
        v38 = (v36 & 0xFFFFFC00) >> 5;
        LODWORD(i) = v37;
        if (v37 >= 2049)
        {
          v40 = v10 + 0x2000;
          for (i = 2048; i < v37; i += 32)
          {
            v41 = 0;
            while (*(v40 + v41) == *(v10 + 4 * v38 + v41))
            {
              v41 += 4;
              if (v41 == 128)
              {
                goto LABEL_53;
              }
            }

            v40 += 128;
          }

          LODWORD(i) = v37;
        }

LABEL_53:
        v42 = v50(v10, v36 & 0xFFFFFC00, (i + 32));
        v43 = ((v36 >> 10) - 10304);
        if (*(v10 + 139419))
        {
          v44 = 0;
        }

        else
        {
          v45 = *(v10 + 4 * (v43 >> 5));
          if (v45 < 0)
          {
            v45 = -v45;
          }

          v44 = *(*(v10 + 139392) + 4 * (v45 + ((v36 >> 10) & 0x1F)));
        }

        if (v42 != v44)
        {
          if (!utrie_set32(v10, v43, v42))
          {
            v46 = 7;
            goto LABEL_74;
          }

          if (i == v37)
          {
            memmove((v10 + 4 * v37), (v10 + 4 * v38), 0x80uLL);
            v37 += 32;
          }
        }

        v36 = (v36 & 0xFFFFFC00) + 1024;
      }

      else
      {
        v36 += 32;
      }
    }

    while (v36 < 1114112);
    if (v37 < 34816)
    {
      memmove((v10 + 8320), (v10 + 0x2000), 4 * v37 - 0x2000);
      *(v10 + 8256) = v55;
      *(v10 + 8272) = v56;
      *(v10 + 8288) = v57;
      *(v10 + 8304) = v58;
      *(v10 + 0x2000) = v51;
      *(v10 + 8208) = v52;
      *(v10 + 8224) = v53;
      *(v10 + 8240) = v54;
      v49 = v37 + 32;
      v14 = (v10 + 139264);
      *(v10 + 139404) = v49;
      goto LABEL_75;
    }

    v46 = 8;
LABEL_74:
    *a6 = v46;
    v14 = (v10 + 139264);
LABEL_75:
    sub_1952A7254(v10, 1, a6);
    v14[155] = 1;
    if (*a6 > 0)
    {
LABEL_3:
      v7 = 0;
      goto LABEL_4;
    }
  }

  v15 = *(v14 + 37);
  v16 = v15;
  if (a5)
  {
    v16 = *(v14 + 35) + v15;
  }

  if (v16 >= 0x40000)
  {
    *a6 = 8;
  }

  v17 = *(v14 + 35);
  if (a5)
  {
    v7 = (2 * (v15 + v17) + 16);
  }

  else
  {
    v7 = (2 * v17 + 4 * v15 + 16);
  }

  if (v7 <= a3)
  {
    v18 = a2 + 4;
    if (a5)
    {
      v19 = 37;
    }

    else
    {
      v19 = 293;
    }

    *a2 = 1416784229;
    a2[1] = v19;
    if (v14[154])
    {
      a2[1] = v19 | 0x200;
    }

    a2[2] = v17;
    a2[3] = v15;
    if (a5)
    {
      if (v17 >= 1)
      {
        v20 = v17 + 1;
        do
        {
          v21 = *v10;
          v10 += 4;
          *v18++ = (v21 + v17) >> 2;
          --v20;
        }

        while (v20 > 1);
      }

      if (v15 >= 1)
      {
        v22 = *(v14 + 16);
        v23 = v15 + 1;
        do
        {
          v24 = *v22++;
          *v18++ = v24;
          --v23;
        }

        while (v23 > 1);
      }
    }

    else
    {
      if (v17 >= 1)
      {
        v47 = v17 + 1;
        do
        {
          v48 = *v10;
          v10 += 4;
          *v18++ = v48 >> 2;
          --v47;
        }

        while (v47 > 1);
      }

      memcpy(v18, *(v14 + 16), 4 * v15);
    }
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1952A71DC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a2 + 1024;
  do
  {
    if (!a1)
    {
LABEL_10:
      v4 = 32;
      goto LABEL_11;
    }

    v4 = 32;
    if (HIWORD(a2) <= 0x10u && !*(a1 + 139419))
    {
      v5 = *(a1 + 4 * (a2 >> 5));
      if (!v5)
      {
        goto LABEL_10;
      }

      if (v5 < 0)
      {
        v5 = -v5;
      }

      if (*(*(a1 + 139392) + 4 * (v5 + (a2 & 0x1F))) != **(a1 + 139392))
      {
        return a3;
      }

      v4 = 1;
    }

LABEL_11:
    a2 += v4;
  }

  while (a2 < v3);
  return 0;
}

void *sub_1952A7254(void *result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    v3 = result;
    v4 = result + 139264;
    if (!*(result + 139419))
    {
      v6 = result + 139420;
      result = memset(result + 139420, 255, 0x22084uLL);
      v7 = *(v4 + 35);
      if (v7 >= 1)
      {
        v8 = v3;
        do
        {
          v10 = *v8++;
          v9 = v10;
          if (v10 < 0)
          {
            v9 = -v9;
          }

          *&v6[4 * (v9 >> 5)] = 0;
          --v7;
        }

        while (v7);
      }

      *(v4 + 39) = 0;
      v11 = 32;
      if (v4[154])
      {
        v12 = 288;
      }

      else
      {
        v12 = 32;
      }

      v13 = *(v4 + 37);
      if (v13 >= 33)
      {
        if (a2)
        {
          v14 = 4;
        }

        else
        {
          v14 = 32;
        }

        v15 = 32;
        v11 = 32;
        do
        {
          v16 = 4 * v15;
          while ((*&v6[4 * (v15 >> 5)] & 0x80000000) != 0)
          {
LABEL_27:
            v15 += 32;
            v16 += 128;
            if (v15 >= v13)
            {
              goto LABEL_47;
            }
          }

          v17 = v15 >> 5;
          if (v15 >= v12)
          {
            v18 = *(v4 + 16);
            if (v11 >= 32)
            {
              v19 = 0;
              do
              {
                result = (v18 + 4 * v19);
                v20 = 33;
                v21 = (v18 + 4 * v15);
                while (*result == *v21)
                {
                  result = result + 4;
                  ++v21;
                  if (--v20 <= 1)
                  {
                    *&v6[4 * v17] = v19;
                    v13 = *(v4 + 37);
                    goto LABEL_27;
                  }
                }

                v19 += v14;
              }

              while (v19 <= (v11 - 32));
            }

            if (a2)
            {
              result = v11;
              v22 = v15 + 28;
              v23 = 29;
              v24 = 5;
              v25 = 28;
              while (2)
              {
                v26 = (v18 + 4 * (v11 - v25));
                v27 = v23;
                v28 = (v18 + 4 * v15);
                while (*v26 == *v28)
                {
                  ++v26;
                  ++v28;
                  if (--v27 <= 1)
                  {
                    *&v6[4 * v17] = v11 - v25;
                    if (v25 > 31)
                    {
                      v15 += v25;
                    }

                    else
                    {
                      v37 = 0;
                      v38 = (v18 + 4 * v22);
                      v39 = (v18 + 4 * v11);
                      do
                      {
                        v40 = *v38++;
                        *v39++ = v40;
                        --v37;
                        --v24;
                      }

                      while (v24 > 1);
                      v15 = v22 - v37;
                      v11 -= v37;
                    }

                    goto LABEL_46;
                  }
                }

                v22 -= 4;
                v23 -= 4;
                v24 += 4;
                v29 = v25 > 4;
                v25 -= 4;
                if (v29)
                {
                  continue;
                }

                break;
              }
            }
          }

          if (v11 >= v15)
          {
            *&v6[4 * v17] = v15;
            v15 = v11 + 32;
            v11 += 32;
          }

          else
          {
            v30 = 0;
            *&v6[4 * v17] = v11;
            v31 = *(v4 + 16);
            v32 = (v31 + v16);
            v33 = (v31 + 4 * v11);
            do
            {
              v34 = *v32++;
              *v33++ = v34;
              v35 = v30 - 1;
              v36 = v30 + 32;
              --v30;
            }

            while (v36 > 1);
            v15 -= v35;
            v11 -= v35;
          }

LABEL_46:
          v13 = *(v4 + 37);
        }

        while (v15 < v13);
      }

LABEL_47:
      if (*(v4 + 35) >= 1)
      {
        v41 = 0;
        do
        {
          v42 = v3[v41];
          if (v42 < 0)
          {
            v42 = -v42;
          }

          v3[v41++] = *&v6[4 * (v42 >> 5)];
        }

        while (v41 < *(v4 + 35));
      }

      *(v4 + 37) = v11;
    }
  }

  return result;
}

uint64_t utrie_unserialize(uint64_t a1, _DWORD *a2, int a3, int *a4)
{
  if (!a4 || *a4 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 > 15 && *a2 == 1416784229)
  {
    v4 = a2[1];
    if (v4 == 37)
    {
      *(a1 + 36) = (v4 & 0x200) != 0;
      v5 = a2[3];
      v6 = a2[2];
      *(a1 + 24) = v6;
      *(a1 + 28) = v5;
      if (a3 - 16 >= 2 * v6)
      {
        *a1 = a2 + 4;
        v9 = (a2 + 2 * v6 + 16);
        v10 = a3 - 16 - 2 * v6;
        if ((v4 & 0x100) != 0)
        {
          if (v10 < 4 * v5)
          {
            goto LABEL_7;
          }

          *(a1 + 8) = v9;
          *(a1 + 32) = *v9;
          v11 = 2 * v6 + 4 * v5;
        }

        else
        {
          if (v10 < 2 * v5)
          {
            goto LABEL_7;
          }

          *(a1 + 8) = 0;
          *(a1 + 32) = *v9;
          v11 = 2 * (v5 + v6);
        }

        v7 = (v11 + 16);
        *(a1 + 16) = utrie_defaultGetFoldingOffset;
        return v7;
      }
    }
  }

LABEL_7:
  *a4 = 3;
  return 0xFFFFFFFFLL;
}

uint64_t utrie_unserializeDummy(uint64_t a1, int16x8_t *__b, int a3, unsigned int a4, unsigned int a5, int a6, int *a7)
{
  if (a7 && *a7 <= 0)
  {
    if (a5 == a4)
    {
      v13 = 256;
    }

    else
    {
      v13 = 288;
    }

    *(a1 + 24) = 2080;
    *(a1 + 28) = v13;
    if (a6)
    {
      v7 = (2 * v13 + 4160);
      if (v7 <= a3)
      {
        *(a1 + 36) = 1;
        *(a1 + 32) = a4;
        *a1 = __b;
        memset_pattern16(__b, &unk_195481A50, 0x1040uLL);
        if (a5 != a4)
        {
          memset_pattern16(&__b[216], &unk_195481A60, 0x40uLL);
        }

        v14 = 0;
        *(a1 + 8) = 0;
        v15 = vdupq_n_s16(a4);
        do
        {
          __b[v14 + 260] = v15;
          ++v14;
        }

        while (v14 != 32);
        if (a5 != a4)
        {
          v16 = vdupq_n_s16(a5);
          __b[292] = v16;
          __b[293] = v16;
          __b[294] = v16;
          __b[295] = v16;
        }

LABEL_25:
        *(a1 + 16) = utrie_defaultGetFoldingOffset;
        return v7;
      }
    }

    else
    {
      v7 = (4 * v13) | 0x1040u;
      if (v7 <= a3)
      {
        *(a1 + 36) = 1;
        *(a1 + 32) = a4;
        *a1 = __b;
        bzero(__b, 0x1040uLL);
        if (a5 != a4)
        {
          memset_pattern16(&__b[216], asc_195481A70, 0x40uLL);
        }

        v17 = 0;
        v18 = &__b->i8[2 * *(a1 + 24)];
        *(a1 + 8) = v18;
        v19 = vdupq_n_s32(a4);
        do
        {
          *&v18[v17] = v19;
          v17 += 16;
        }

        while (v17 != 1024);
        if (a5 != a4)
        {
          v20 = 0;
          v21 = vdupq_n_s32(a5);
          v22 = v18 + 1024;
          do
          {
            *&v22[v20] = v21;
            v20 += 16;
          }

          while (v20 != 128);
        }

        goto LABEL_25;
      }
    }

    *a7 = 15;
    return v7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t utrie_enum(uint64_t result, uint64_t (*a2)(uint64_t a1, uint64_t a2), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v54 = result;
  if (result)
  {
    result = a3;
    if (a3)
    {
      v56 = *v54;
      if (*v54)
      {
        if (a2)
        {
          v5 = a2;
        }

        else
        {
          v5 = sub_1952A7CAC;
        }

        v6 = *(v54 + 8);
        v62 = v5;
        v57 = v5(a4, *(v54 + 32));
        if (v6)
        {
          v7 = 0;
        }

        else
        {
          v7 = *(v54 + 24);
        }

        v8 = 0;
        v9 = 0;
        LODWORD(v10) = 0;
        v11 = v7;
        v12 = v57;
        v13 = v56;
        v61 = v6;
        v55 = v7;
        do
        {
          if (v10 == 56320)
          {
            v8 = 1760;
          }

          if (v10 == 55296)
          {
            v14 = 2048;
          }

          else
          {
            v14 = v8;
          }

          v15 = *(v13 + 2 * v14);
          v16 = 4 * v15;
          if (4 * v15 == v11)
          {
            v10 = (v10 + 32);
          }

          else
          {
            v58 = v10;
            if (v16 == v7)
            {
              v17 = v14;
              if (v12 == v57)
              {
                v18 = v9;
              }

              else
              {
                v18 = v10;
                v11 = v7;
                if (v9 < v10)
                {
                  v18 = v10;
                  result = a3(a4, v9, v10, v12);
                  v11 = v55;
                  if (!result)
                  {
                    return result;
                  }
                }
              }

              v12 = v57;
              v10 = (v10 + 32);
              v9 = v18;
              v13 = v56;
              v6 = v61;
              v7 = v55;
              v14 = v17;
            }

            else
            {
              v52 = v14;
              v19 = 0;
              v20 = v6 + 16 * v15;
              v21 = v13 + 8 * v15;
              do
              {
                if (v6)
                {
                  v22 = *(v20 + 4 * v19);
                }

                else
                {
                  v22 = *(v21 + 2 * v19);
                }

                v23 = v62(a4, v22);
                if (v23 != v12)
                {
                  v24 = v23;
                  if (v9 < (v58 + v19))
                  {
                    result = a3(a4, v9, v58 + v19, v12);
                    if (!result)
                    {
                      return result;
                    }
                  }

                  if (v19)
                  {
                    v16 = -1;
                  }

                  v12 = v24;
                  v9 = v58 + v19;
                  v6 = v61;
                }

                ++v19;
              }

              while (v19 != 32);
              v10 = v58 + 32;
              v11 = v16;
              v13 = v56;
              v7 = v55;
              v14 = v52;
            }
          }

          v8 = v14 + 1;
        }

        while (v10 < 0x10000);
        v25 = 55296;
        do
        {
          v26 = 4 * *(v13 + 2 * (v25 >> 5));
          if (v26 == v7)
          {
            if (v12 == v57)
            {
              v27 = v10;
              v28 = v9;
            }

            else
            {
              v28 = v10;
              v11 = v7;
              v27 = v10;
              if (v9 < v10)
              {
                v28 = v10;
                result = a3(a4, v9, v10, v12);
                v11 = v55;
                if (!result)
                {
                  return result;
                }
              }
            }

            v25 += 32;
            v10 = (v27 + 0x8000);
            v12 = v57;
            v9 = v28;
            v13 = v56;
            v6 = v61;
            v7 = v55;
          }

          else
          {
            v29 = v26 + (v25 & 0x1F);
            if (v6)
            {
              v30 = *(v6 + 4 * v29);
            }

            else
            {
              v30 = *(v13 + 2 * v29);
            }

            v31 = (*(v54 + 16))(v30);
            v50 = v25;
            if (v31 >= 1)
            {
              v32 = v31 + 31;
              v33 = v31;
              v53 = v31 + 31;
              while (1)
              {
                v34 = *(v13 + 2 * v33);
                v35 = 4 * v34;
                if (4 * v34 == v11)
                {
                  v10 = (v10 + 32);
                }

                else if (v35 == v7)
                {
                  v36 = v33;
                  if (v12 == v57)
                  {
                    v37 = v10;
                    v38 = v9;
                  }

                  else
                  {
                    v38 = v10;
                    v11 = v7;
                    v37 = v10;
                    if (v9 < v10)
                    {
                      v38 = v10;
                      result = a3(a4, v9, v10, v12);
                      v11 = v55;
                      if (!result)
                      {
                        return result;
                      }
                    }
                  }

                  v10 = (v37 + 32);
                  v12 = v57;
                  v9 = v38;
                  v13 = v56;
                  v6 = v61;
                  v7 = v55;
                  v32 = v53;
                  v33 = v36;
                }

                else
                {
                  v51 = v33;
                  v39 = v10;
                  v40 = 0;
                  v41 = v6 + 4 * v35;
                  v42 = v13 + 2 * v35;
                  v59 = v39;
                  v43 = v39;
                  do
                  {
                    if (v6)
                    {
                      v44 = *(v41 + 4 * v40);
                    }

                    else
                    {
                      v44 = *(v42 + 2 * v40);
                    }

                    v45 = v62(a4, v44);
                    if (v45 != v12)
                    {
                      v46 = v45;
                      if (v9 < v43 + v40)
                      {
                        result = a3(a4, v9, v43 + v40, v12);
                        if (!result)
                        {
                          return result;
                        }
                      }

                      if (v40)
                      {
                        LODWORD(v35) = -1;
                      }

                      v12 = v46;
                      v9 = v43 + v40;
                      v6 = v61;
                    }

                    ++v40;
                  }

                  while (v40 != 32);
                  v10 = v59 + 32;
                  v11 = v35;
                  v13 = v56;
                  v7 = v55;
                  v32 = v53;
                  v33 = v51;
                }

                if (v32 <= v33++)
                {
                  goto LABEL_77;
                }
              }
            }

            if (v12 == v57)
            {
              v48 = v10;
              v49 = v9;
            }

            else
            {
              v49 = v10;
              v11 = v7;
              v48 = v10;
              if (v9 < v10)
              {
                v49 = v10;
                result = a3(a4, v9, v10, v12);
                v11 = v55;
                if (!result)
                {
                  return result;
                }
              }
            }

            v10 = (v48 + 1024);
            v12 = v57;
            v9 = v49;
            v13 = v56;
            v6 = v61;
            v7 = v55;
LABEL_77:
            v25 = v50 + 1;
          }
        }

        while (v25 < 56320);

        return a3(a4, v9, v10, v12);
      }
    }
  }

  return result;
}

uint64_t utrie2_get32(uint64_t *a1, unsigned int a2)
{
  if (a1[1])
  {
    v2 = *a1;
    if (a2 >> 11 > 0x1A)
    {
      if (HIWORD(a2))
      {
        if (a2 >= 0x110000)
        {
          v8 = *(a1 + 6) + 128;
          return *(v2 + 2 * v8);
        }

        if (*(a1 + 11) <= a2)
        {
          v8 = *(a1 + 12);
          return *(v2 + 2 * v8);
        }

        v3 = ((a2 >> 5) & 0x3F) + *(v2 + 2 * (a2 >> 11) + 4160);
      }

      else
      {
        if (a2 >> 10 >= 0x37)
        {
          v7 = 0;
        }

        else
        {
          v7 = 320;
        }

        v3 = v7 + (a2 >> 5);
      }
    }

    else
    {
      v3 = a2 >> 5;
    }

    v8 = (a2 & 0x1F) + 4 * *(v2 + 2 * v3);
    return *(v2 + 2 * v8);
  }

  v4 = a1[2];
  if (v4)
  {
    if (a2 >> 11 > 0x1A)
    {
      if (HIWORD(a2))
      {
        if (HIWORD(a2) > 0x10u)
        {
          v12 = 128;
          return *(v4 + 4 * v12);
        }

        if (*(a1 + 11) <= a2)
        {
          v12 = *(a1 + 12);
          return *(v4 + 4 * v12);
        }

        v11 = *(*a1 + 2 * (((a2 >> 5) & 0x3F) + *(*a1 + 2 * (a2 >> 11) + 4160)));
LABEL_24:
        v12 = (a2 & 0x1F) + 4 * v11;
        return *(v4 + 4 * v12);
      }

      v5 = *a1;
      if (a2 >> 10 >= 0x37)
      {
        v10 = 0;
      }

      else
      {
        v10 = 320;
      }

      v6 = v10 + (a2 >> 5);
    }

    else
    {
      v5 = *a1;
      v6 = a2 >> 5;
    }

    v11 = *(v5 + 2 * v6);
    goto LABEL_24;
  }

  if (a2 < 0x110000)
  {
    return sub_1952A7DF0(a1[9], a2, 1);
  }

  else
  {
    return *(a1 + 10);
  }
}