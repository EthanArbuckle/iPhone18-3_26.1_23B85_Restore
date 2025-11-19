void _destroyIcuTransformCache()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _getIcuTransformCache();
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [v0 objectEnumerator];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5) pointerValue];
        utrans_close();
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  [v0 removeAllObjects];
  v6 = *MEMORY[0x1E69E9840];
}

const char *__CFStringReplaceableCopy(uint64_t a1, int a2, int a3, int a4)
{
  v11.length = a3 - a2;
  v11.location = a2;
  v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E4A8], *a1, v11);
  CFStringInsert(*a1, a4, v6);
  CFRelease(v6);
  Length = CFStringGetLength(*a1);
  *(a1 + 8) = Length;
  v8 = *a1;
  *(a1 + 144) = *a1;
  *(a1 + 168) = 0;
  *(a1 + 176) = Length;
  CharactersPtr = CFStringGetCharactersPtr(v8);
  result = 0;
  *(a1 + 152) = CharactersPtr;
  if (!CharactersPtr)
  {
    result = CFStringGetCStringPtr(v8, 0x600u);
  }

  *(a1 + 160) = result;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return result;
}

void __CFStringReplaceableExtract(void *a1, int a2, int a3, UniChar *__dst)
{
  v4 = __dst;
  v6 = a2;
  v7 = a3 - a2;
  v8 = a1[19];
  if (v8)
  {
    v9 = (v8 + 2 * a1[21] + 2 * a2);

    memmove(__dst, v9, 2 * v7);
  }

  else
  {
    v10 = (a1 + 2);
    v11 = a1[23];
    v12 = v11 - v6;
    if (v11 > v6 || (v13 = a1[24], v14 = v13 <= v6, v15 = v13 - v6, v14))
    {
      v17 = __OFSUB__(v7 + v6, v11);
      v18 = v7 + v6 - v11;
      if (!((v18 < 0) ^ v17 | (v18 == 0)) && v7 + v6 < a1[24])
      {
        memmove(&__dst[v12], v10, 2 * v18);
        v7 = v12;
      }
    }

    else
    {
      if (v7 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v7;
      }

      memmove(__dst, &v10[2 * (v6 - v11)], 2 * v16);
      v4 += v16;
      v6 += v16;
      v7 -= v16;
    }

    if (v7 >= 1)
    {
      v19 = a1[20];
      v20.location = a1[21] + v6;
      if (v19)
      {
        v21 = (v19 + v20.location);
        do
        {
          v22 = *v21++;
          *v4++ = v22;
          --v7;
        }

        while (v7);
      }

      else
      {
        v23 = a1[18];
        v20.length = v7;

        CFStringGetCharacters(v23, v20, v4);
      }
    }
  }
}

const char *__CFStringReplaceableReplace(uint64_t a1, int a2, int a3, UniChar *chars, int a5)
{
  v8 = *(a1 + 200);
  if (v8)
  {
    CFStringSetExternalCharactersNoCopy(v8, chars, a5, a5);
    MutableWithExternalCharactersNoCopy = *(a1 + 200);
  }

  else
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(*MEMORY[0x1E695E4A8], chars, a5, a5, *MEMORY[0x1E695E498]);
    *(a1 + 200) = MutableWithExternalCharactersNoCopy;
  }

  v14.location = a2;
  v14.length = a3 - a2;
  CFStringReplace(*a1, v14, MutableWithExternalCharactersNoCopy);
  Length = CFStringGetLength(*a1);
  *(a1 + 8) = Length;
  v11 = *a1;
  *(a1 + 144) = *a1;
  *(a1 + 168) = 0;
  *(a1 + 176) = Length;
  CharactersPtr = CFStringGetCharactersPtr(v11);
  result = 0;
  *(a1 + 152) = CharactersPtr;
  if (!CharactersPtr)
  {
    result = CFStringGetCStringPtr(v11, 0x600u);
  }

  *(a1 + 160) = result;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return result;
}

uint64_t __CFStringReplaceableChar32At(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    return 0xFFFFLL;
  }

  if (a2 < 0)
  {
    return 0;
  }

  v3 = a2;
  v4 = *(a1 + 176);
  if (v4 <= a2)
  {
    return 0;
  }

  v5 = a1 + 16;
  v6 = *(a1 + 152);
  if (v6)
  {
    v7 = *(v6 + 2 * *(a1 + 168) + 2 * a2);
  }

  else
  {
    v10 = *(a1 + 160);
    if (v10)
    {
      v7 = *(v10 + *(a1 + 168) + a2);
    }

    else
    {
      if (*(a1 + 192) <= a2 || (v11 = *(a1 + 184), v11 > a2))
      {
        v12 = a2 - 4;
        if (a2 < 4)
        {
          v12 = 0;
        }

        if (v12 + 64 < v4)
        {
          v4 = v12 + 64;
        }

        *(a1 + 184) = v12;
        *(a1 + 192) = v4;
        v20.length = v4 - v12;
        v20.location = *(a1 + 168) + v12;
        CFStringGetCharacters(*(a1 + 144), v20, (a1 + 16));
        v11 = *(a1 + 184);
      }

      v7 = *(v5 + 2 * (v3 - v11));
    }
  }

  if (v7 >> 10 != 54 || *(a1 + 8) - 1 <= v3)
  {
    return v7;
  }

  v8 = v7;
  v13 = v3 + 1;
  v14 = *(a1 + 176);
  if (v14 > v13)
  {
    v15 = *(a1 + 152);
    if (v15)
    {
      v16 = *(v15 + 2 * *(a1 + 168) + 2 * v13);
    }

    else
    {
      v17 = *(a1 + 160);
      if (v17)
      {
        v16 = *(v17 + *(a1 + 168) + v13);
      }

      else
      {
        if (*(a1 + 192) <= v13 || (v18 = *(a1 + 184), v18 > v13))
        {
          v19 = v13 - 4;
          if (v13 < 4)
          {
            v19 = 0;
          }

          if (v19 + 64 < v14)
          {
            v14 = v19 + 64;
          }

          *(a1 + 184) = v19;
          *(a1 + 192) = v14;
          v21.length = v14 - v19;
          v21.location = *(a1 + 168) + v19;
          CFStringGetCharacters(*(a1 + 144), v21, (a1 + 16));
          v18 = *(a1 + 184);
        }

        v16 = *(v5 + 2 * (v13 - v18));
      }
    }

    if (v16 >> 10 == 55)
    {
      return (v8 << 10) + v16 - 56613888;
    }
  }

  return v8;
}

uint64_t __CFStringReplaceableCharAt(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    return -1;
  }

  else if (a2 < 0)
  {
    return 0;
  }

  else
  {
    v3 = a2;
    v4 = *(a1 + 176);
    if (v4 <= a2)
    {
      return 0;
    }

    else
    {
      v5 = *(a1 + 152);
      if (v5)
      {
        return *(v5 + 2 * *(a1 + 168) + 2 * a2);
      }

      else
      {
        v8 = *(a1 + 160);
        if (v8)
        {
          return *(v8 + *(a1 + 168) + a2);
        }

        else
        {
          if (*(a1 + 192) <= a2 || (v9 = *(a1 + 184), v9 > a2))
          {
            v10 = a2 - 4;
            if (a2 < 4)
            {
              v10 = 0;
            }

            if (v10 + 64 < v4)
            {
              v4 = v10 + 64;
            }

            *(a1 + 184) = v10;
            *(a1 + 192) = v4;
            v11.length = v4 - v10;
            v11.location = *(a1 + 168) + v10;
            CFStringGetCharacters(*(a1 + 144), v11, (a1 + 16));
            v9 = *(a1 + 184);
          }

          return *(a1 + 16 + 2 * (v3 - v9));
        }
      }
    }
  }
}

void ___getIcuTransformCache_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = _getIcuTransformCache__pasExprOnceResult;
  _getIcuTransformCache__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void ___getIcuTransformResultCache_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[_PASLazyPurgeableResult alloc] initWithBlock:&__block_literal_global_49];
  v2 = _getIcuTransformResultCache__pasExprOnceResult;
  _getIcuTransformResultCache__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id ___getIcuTransformResultCache_block_invoke_2()
{
  v0 = objc_opt_new();

  return v0;
}

id _PASCharacterSetWithCharactersInString(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___PASCharacterSetWithCharactersInString_block_invoke;
  v7[3] = &unk_1E77F17A0;
  v8 = v3;
  v4 = v3;
  _PASIterateLongChars(v1, v7);
  v5 = [v4 copy];

  objc_autoreleasePoolPop(v2);

  return v5;
}

__CFString *_PASCollapseWhitespaceAndStrip(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  if (v2)
  {
    v3 = v2;
    if (v2 > 0x1FF)
    {
      v5 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
      if (!v5)
      {
        goto LABEL_67;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v2);
      v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v5, v4);
    }

    v1 = v1;
    v6 = objc_opt_self();

    if (v6)
    {
      memset(buffer, 0, sizeof(buffer));
      Length = CFStringGetLength(v1);
      v36 = v1;
      v39 = 0;
      v40 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v1);
      CStringPtr = 0;
      v37 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
      }

      v34 = v3;
      v41 = 0;
      v42 = 0;
      v38 = CStringPtr;
      if (Length >= 1)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 64;
        v16 = 1;
        while (1)
        {
          if (v12 >= 4)
          {
            v17 = 4;
          }

          else
          {
            v17 = v12;
          }

          v18 = v40;
          if (v40 <= v12)
          {
            v20 = 0;
            goto LABEL_22;
          }

          if (v37)
          {
            v19 = &v37[v39];
          }

          else
          {
            if (v38)
            {
              v20 = v38[v39 + v12];
              goto LABEL_20;
            }

            if (v42 <= v12 || v11 > v12)
            {
              v22 = v17 + v10;
              v23 = v15 - v17;
              v24 = v12 - v17;
              v25 = v24 + 64;
              if (v24 + 64 >= v40)
              {
                v25 = v40;
              }

              v41 = v24;
              v42 = v25;
              if (v40 >= v23)
              {
                v18 = v23;
              }

              v44.location = v24 + v39;
              v44.length = v18 + v22;
              CFStringGetCharacters(v36, v44, buffer);
              v11 = v41;
            }

            v19 = buffer - v11;
          }

          v20 = v19[v12];
LABEL_20:
          if (v20 == 10 || v20 == 32)
          {
            goto LABEL_47;
          }

LABEL_22:
          if ((v20 - 48) >= 0xAu && ((v20 & 0xFFDF) - 65) >= 0x1Au)
          {
            if (v20 > 0x9Fu)
            {
              if (v20 == 160 || v20 == 5760)
              {
                goto LABEL_47;
              }
            }

            else if (v20 == 9 || v20 == 32)
            {
              goto LABEL_47;
            }

            if ((v20 - 0x2000) < 0xCu)
            {
              goto LABEL_47;
            }

            if (v20 > 0x2027u)
            {
              if (v20 - 8232 <= 0x37 && ((1 << (v20 - 40)) & 0x80000000000083) != 0 || v20 == 12288)
              {
LABEL_47:
                if ((v16 & 1) == 0)
                {
                  *&v5[2 * v13++] = 32;
                  v14 |= v20 != 32;
                }

                v16 = 1;
                goto LABEL_52;
              }
            }

            else if (v20 - 10 < 4 || v20 == 133)
            {
              goto LABEL_47;
            }
          }

          v16 = 0;
          *&v5[2 * v13++] = v20;
LABEL_52:
          ++v12;
          --v10;
          ++v15;
          if (Length == v12)
          {
            goto LABEL_56;
          }
        }
      }

      v14 = 0;
      v13 = 0;
LABEL_56:
      v3 = v34;
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v26 = v13 - 1;
    while (v26 != -1)
    {
      v27 = *&v5[2 * v26--];
      if (v27 != 32)
      {
        v28 = v26 + 2;
        if (v14)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }
    }

    v28 = 0;
    if (v14)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (v28 >= [(__CFString *)v1 length])
    {
      goto LABEL_65;
    }

LABEL_64:
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v5 length:v28];

    v1 = v29;
LABEL_65:
    if (v3 >= 0x200)
    {
      free(v5);
    }
  }

LABEL_67:
  v30 = v1;

  v31 = *MEMORY[0x1E69E9840];
  return v1;
}

id _PASRemoveCharacterSet(void *a1, const __CFCharacterSet *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
    v7 = v3;
    v8 = objc_opt_self();

    if (v8)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *buffer = 0u;
      v31 = 0u;
      Length = CFStringGetLength(v7);
      theString = v7;
      v41 = 0;
      v42 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v7);
      CStringPtr = 0;
      v39 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
      }

      v29 = v3;
      v43 = 0;
      v44 = 0;
      v40 = CStringPtr;
      if (Length >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 64;
        while (1)
        {
          if (v13 >= 4)
          {
            v16 = 4;
          }

          else
          {
            v16 = v13;
          }

          v17 = v42;
          if (v42 <= v13)
          {
            v19 = 0;
          }

          else
          {
            if (v39)
            {
              v18 = &v39[v41];
            }

            else
            {
              if (v40)
              {
                v19 = v40[v41 + v13];
                goto LABEL_15;
              }

              v20 = v43;
              if (v44 <= v13 || v43 > v13)
              {
                v22 = v16 + v12;
                v23 = v15 - v16;
                v24 = v13 - v16;
                v25 = v24 + 64;
                if (v24 + 64 >= v42)
                {
                  v25 = v42;
                }

                v43 = v24;
                v44 = v25;
                if (v42 >= v23)
                {
                  v17 = v23;
                }

                v46.location = v24 + v41;
                v46.length = v17 + v22;
                CFStringGetCharacters(theString, v46, buffer);
                v20 = v43;
              }

              v18 = &buffer[-v20];
            }

            v19 = v18[v13];
          }

LABEL_15:
          if (!CFCharacterSetIsCharacterMember(a2, v19))
          {
            v6[v14++] = v19;
          }

          ++v13;
          --v12;
          ++v15;
          if (Length == v13)
          {
            goto LABEL_34;
          }
        }
      }

      v14 = 0;
LABEL_34:
      v3 = v29;
    }

    else
    {
      v14 = 0;
    }

    if (v14 == v5)
    {
      free(v6);
      v26 = [(__CFString *)v7 copy];
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:v6 length:v14 freeWhenDone:1];
    }
  }

  else
  {
    v26 = v3;
  }

  v27 = v26;

  return v27;
}

uint64_t _PASGetNameCharacterSet()
{
  if (_PASGetNameCharacterSet_onceToken != -1)
  {
    dispatch_once(&_PASGetNameCharacterSet_onceToken, &__block_literal_global);
  }

  return _PASGetNameCharacterSet_charset;
}

id _PASRemoveWhitespace(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2)
  {
    v3 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
    v4 = v1;
    v5 = objc_opt_self();

    if (v5)
    {
      memset(v26, 0, sizeof(v26));
      Length = CFStringGetLength(v4);
      theString = v4;
      v30 = 0;
      v31 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v4);
      CStringPtr = 0;
      v28 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
      }

      v32 = 0;
      v33 = 0;
      v29 = CStringPtr;
      if (Length >= 1)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 64;
        while (1)
        {
          if (v11 >= 4)
          {
            v14 = 4;
          }

          else
          {
            v14 = v11;
          }

          v15 = v31;
          if (v31 <= v11)
          {
            v17 = 0;
            goto LABEL_19;
          }

          if (v28)
          {
            v16 = &v28[v30];
          }

          else
          {
            if (v29)
            {
              v17 = v29[v30 + v11];
              goto LABEL_17;
            }

            if (v33 <= v11 || v10 > v11)
            {
              v19 = v14 + v9;
              v20 = v13 - v14;
              v21 = v11 - v14;
              v22 = v21 + 64;
              if (v21 + 64 >= v31)
              {
                v22 = v31;
              }

              v32 = v21;
              v33 = v22;
              if (v31 >= v20)
              {
                v15 = v20;
              }

              v35.location = v21 + v30;
              v35.length = v15 + v19;
              CFStringGetCharacters(theString, v35, v26);
              v10 = v32;
            }

            v16 = v26 - v10;
          }

          v17 = v16[v11];
LABEL_17:
          if (v17 == 10 || v17 == 32)
          {
            goto LABEL_46;
          }

LABEL_19:
          if ((v17 - 48) < 0xAu || ((v17 & 0xFFDF) - 65) < 0x1Au)
          {
            goto LABEL_45;
          }

          if (v17 > 0x9Fu)
          {
            if (v17 == 160 || v17 == 5760)
            {
              goto LABEL_46;
            }
          }

          else if (v17 == 9 || v17 == 32)
          {
            goto LABEL_46;
          }

          if ((v17 - 0x2000) >= 0xCu)
          {
            if (v17 > 0x2027u)
            {
              if (v17 - 8232 <= 0x37 && ((1 << (v17 - 40)) & 0x80000000000083) != 0 || v17 == 12288)
              {
                goto LABEL_46;
              }
            }

            else if (v17 - 10 < 4 || v17 == 133)
            {
              goto LABEL_46;
            }

LABEL_45:
            v3[v12++] = v17;
          }

LABEL_46:
          ++v11;
          --v9;
          ++v13;
          if (Length == v11)
          {
            goto LABEL_49;
          }
        }
      }
    }

    v12 = 0;
LABEL_49:

    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:v3 length:v12 freeWhenDone:1];
  }

  else
  {
    v23 = v1;
  }

  v24 = v23;

  return v24;
}

id _PASRemoveSomePunctuation(void *a1)
{
  v1 = _PASRemoveSomePunctuation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_PASRemoveSomePunctuation_onceToken, &__block_literal_global_8);
  }

  v3 = _PASRemoveCharacterSet(v2, _PASRemoveSomePunctuation_charset);

  return v3;
}

id _PASStripQuotationMarks(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (_PASGetQuotationMarkCharacterSet_onceToken != -1)
    {
      dispatch_once(&_PASGetQuotationMarkCharacterSet_onceToken, &__block_literal_global_38);
    }

    v2 = _PASGetQuotationMarkCharacterSet_quotationMarks;
    v3 = [v1 characterAtIndex:0];
    v4 = [v1 characterAtIndex:{objc_msgSend(v1, "length") - 1}];
    if ([v2 characterIsMember:v3] && objc_msgSend(v2, "characterIsMember:", v4))
    {
      v5 = [v1 stringByTrimmingCharactersInSet:v2];
    }

    else
    {
      v5 = v1;
    }

    v6 = v5;
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

uint64_t _PASGetQuotationMarkCharacterSet()
{
  if (_PASGetQuotationMarkCharacterSet_onceToken != -1)
  {
    dispatch_once(&_PASGetQuotationMarkCharacterSet_onceToken, &__block_literal_global_38);
  }

  return _PASGetQuotationMarkCharacterSet_quotationMarks;
}

__CFString *_PASTrimTrailingWhitespace(void *a1)
{
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  if (!v2)
  {
    goto LABEL_46;
  }

  v3 = v2;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  theString = v1;
  v35 = 0;
  v36 = v2;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  CStringPtr = 0;
  v33 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v6 = 0;
  v37 = 0;
  v38 = 0;
  v7 = v3 - 1;
  v34 = CStringPtr;
  v8 = 1 - v3;
  v9 = v3 + 63;
  v10 = v3;
  do
  {
    v11 = v10;
    if (v7 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v7;
    }

    v13 = v10-- < 1;
    if (v13 || v36 < v11)
    {
      v14 = 0;
    }

    else
    {
      if (v33)
      {
        v14 = v33[v35 - 1 + v11];
      }

      else if (v34)
      {
        v14 = v34[v35 - 1 + v11];
      }

      else
      {
        if (v38 < v11 || v6 >= v11)
        {
          v15 = v9 - v12;
          v16 = -v12;
          v17 = v12 + v8;
          v18 = v11 + v16;
          v19 = v18 - 1;
          v20 = v18 + 63;
          if (v20 >= v36)
          {
            v20 = v36;
          }

          v37 = v19;
          v38 = v20;
          if (v36 < v15)
          {
            v15 = v36;
          }

          v40.location = v19 + v35;
          v40.length = v15 + v17;
          CFStringGetCharacters(theString, v40, &v24);
          v6 = v37;
        }

        v14 = *(&v24 + v11 - v6 - 1);
      }

      if (v14 == 10 || v14 == 32)
      {
        goto LABEL_41;
      }
    }

    if ((v14 - 48) < 0xAu || ((v14 & 0xFFDF) - 65) < 0x1Au)
    {
      goto LABEL_44;
    }

    if (v14 > 0x9Fu)
    {
      if (v14 == 160 || v14 == 5760)
      {
        goto LABEL_41;
      }
    }

    else if (v14 == 9 || v14 == 32)
    {
      goto LABEL_41;
    }

    if ((v14 - 0x2000) >= 0xCu)
    {
      if (v14 > 0x2027u)
      {
        if ((v14 - 8232 > 0x37 || ((1 << (v14 - 40)) & 0x80000000000083) == 0) && v14 != 12288)
        {
          goto LABEL_44;
        }
      }

      else if (v14 - 10 >= 4 && v14 != 133)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    --v7;
    ++v8;
    --v9;
  }

  while (v10);
  v11 = 0;
LABEL_44:
  if (v11 < v3)
  {
    v21 = [(__CFString *)v1 substringToIndex:v11, v24, v25, v26, v27, v28, v29, v30, v31];
    goto LABEL_47;
  }

LABEL_46:
  v21 = v1;
LABEL_47:
  v22 = v21;

  return v22;
}

void _PASUtfNCursorInit(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    theString = v3;
    Length = CFStringGetLength(v3);
    a1[23] = Length;
    a1[16] = theString;
    a1[19] = 0;
    a1[20] = Length;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    CStringPtr = 0;
    a1[17] = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    a1[18] = CStringPtr;
    a1[21] = 0;
    a1[22] = 0;
    a1[24] = 0;
    a1[25] = 0;
    v3 = theString;
  }
}

BOOL _PASUtfNCursorAdvance(UniChar *buffer)
{
  v1 = *(buffer + 25);
  v2 = *(buffer + 23);
  if (v1 >= v2)
  {
    return v1 < v2;
  }

  *(buffer + 25) = v1 + 1;
  if ((v1 & 0x8000000000000000) != 0 || (v4 = *(buffer + 20), v4 <= v1))
  {
    ++*(buffer + 24);
    return v1 < v2;
  }

  v5 = *(buffer + 17);
  if (v5)
  {
    v6 = *(v5 + 2 * *(buffer + 19) + 2 * v1);
  }

  else
  {
    v8 = *(buffer + 18);
    if (v8)
    {
      v6 = *(v8 + *(buffer + 19) + v1);
    }

    else
    {
      if (*(buffer + 22) <= v1 || (v9 = *(buffer + 21), v9 > v1))
      {
        v10 = v1 - 4;
        if (v1 < 4)
        {
          v10 = 0;
        }

        if (v10 + 64 < v4)
        {
          v4 = v10 + 64;
        }

        *(buffer + 21) = v10;
        *(buffer + 22) = v4;
        v24.length = v4 - v10;
        v24.location = *(buffer + 19) + v10;
        CFStringGetCharacters(*(buffer + 16), v24, buffer);
        v9 = *(buffer + 21);
      }

      v6 = buffer[v1 - v9];
    }
  }

  if ((v6 & 0xFC00) == 0xDC00)
  {
    goto LABEL_39;
  }

  if ((v6 & 0xFC00) == 0xD800)
  {
    v11 = *(buffer + 25);
    if (v11 < *(buffer + 23))
    {
      *(buffer + 25) = v11 + 1;
      if ((v11 & 0x8000000000000000) == 0)
      {
        v12 = *(buffer + 20);
        if (v12 > v11)
        {
          v13 = *(buffer + 17);
          if (v13)
          {
            v14 = *(v13 + 2 * *(buffer + 19) + 2 * v11);
          }

          else
          {
            v20 = *(buffer + 18);
            if (v20)
            {
              v14 = *(v20 + *(buffer + 19) + v11);
            }

            else
            {
              if (*(buffer + 22) <= v11 || (v21 = *(buffer + 21), v21 > v11))
              {
                v22 = v11 - 4;
                if (v11 < 4)
                {
                  v22 = 0;
                }

                if (v22 + 64 < v12)
                {
                  v12 = v22 + 64;
                }

                *(buffer + 21) = v22;
                *(buffer + 22) = v12;
                v25.length = v12 - v22;
                v25.location = *(buffer + 19) + v22;
                CFStringGetCharacters(*(buffer + 16), v25, buffer);
                v21 = *(buffer + 21);
              }

              v14 = buffer[v11 - v21];
            }
          }

          if (v14 >> 10 == 55)
          {
            v15 = (v6 << 10) + v14 - 56613888;
LABEL_40:
            v23 = *(buffer + 24);
            v17 = buffer + 96;
            v16 = v23;
            goto LABEL_41;
          }
        }
      }
    }

LABEL_39:
    v15 = 65533;
    goto LABEL_40;
  }

  v15 = v6;
  v18 = *(buffer + 24);
  v17 = buffer + 96;
  v16 = v18;
  if (v6 >= 0x80u)
  {
LABEL_41:
    v19 = v16 + 2;
    goto LABEL_42;
  }

  v19 = v16 + 1;
LABEL_42:
  *v17 = v19;
  if (v15 >= 0x800)
  {
    *v17 = v19 + 1;
    if (v15 >= 0x10000)
    {
      *v17 = v19 + 2;
    }
  }

  return v1 < v2;
}

void _PASConvertUtf8ByteOffsetsToUtf16WordOffsets(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && v5 && !CFStringGetCStringPtr(v5, 0x600u))
  {
    v9 = 0u;
    memset(v8, 0, sizeof(v8));
    _PASUtfNCursorInit(v8, v6);
    v7 = 0;
    do
    {
        ;
      }

      *(a1 + 8 * v7++) = *(&v9 + 1);
    }

    while (v7 != a2);
  }
}

uint64_t _PASSimpleICUClearCache()
{
  pthread_mutex_lock(&icuLock);
  _destroyIcuTransformCache();
  v0 = _getIcuTransformResultCache();
  [v0 removeAllObjects];

  return pthread_mutex_unlock(&icuLock);
}

id _PASNormalizeUnicodeStringMinimally(void *a1, int a2)
{
  v3 = a1;
  v4 = fastNormalizeUnicodeStringMinimally(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _PASSimpleICUTransform(@"[^…] NFKC Fullwidth-Halfwidth; [､｡‘’“”،] Latin-ASCII", v3, a2);;
  }

  v7 = v6;

  return v7;
}

id fastNormalizeUnicodeStringMinimally(void *a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (CFStringGetFastestEncoding(v1) == 1536)
  {
    v2 = v1;
LABEL_125:
    v58 = v2;
    goto LABEL_126;
  }

  v3 = [(__CFString *)v1 length];
  v4 = v1;
  v5 = objc_opt_self();

  if (!v5)
  {
    goto LABEL_123;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  buffer = 0u;
  Length = CFStringGetLength(v4);
  v74 = v4;
  v77 = 0;
  v78 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v4);
  CStringPtr = 0;
  v75 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
  }

  v79 = 0;
  v80 = 0;
  v76 = CStringPtr;
  if (Length <= 0)
  {
LABEL_123:

    goto LABEL_124;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 64;
  v14 = 0x5048002000800000;
  do
  {
    if (v12 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v12;
    }

    v16 = v78;
    if (v78 <= v12)
    {
      goto LABEL_46;
    }

    if (v75)
    {
      v17 = &v75[v77];
LABEL_14:
      v18 = v17[v12];
      goto LABEL_17;
    }

    if (!v76)
    {
      if (v80 <= v12 || v10 > v12)
      {
        v21 = v15 + v9;
        v22 = v13 - v15;
        v23 = v12 - v15;
        v24 = v23 + 64;
        if (v23 + 64 >= v78)
        {
          v24 = v78;
        }

        v79 = v23;
        v80 = v24;
        v65 = v4;
        v25 = v1;
        v26 = v14;
        if (v78 >= v22)
        {
          v16 = v22;
        }

        v83.location = v23 + v77;
        v83.length = v16 + v21;
        CFStringGetCharacters(v74, v83, &buffer);
        v14 = v26;
        v1 = v25;
        v4 = v65;
        v10 = v79;
      }

      v17 = &buffer - v10;
      goto LABEL_14;
    }

    v18 = v76[v77 + v12];
LABEL_17:
    if (v18 >= 0x100u && (v18 - 0x2000) > 0x6Fu)
    {

      v58 = 0;
      goto LABEL_126;
    }

    if (v18 <= 0x2046u)
    {
      if (v18 - 0x2000 > 0x3E)
      {
        goto LABEL_26;
      }

      if (((1 << v18) & 0x8010330207FFLL) == 0)
      {
        if (((1 << v18) & v14) != 0)
        {
          goto LABEL_21;
        }

        if (((1 << v18) & 0x90000000000000) != 0)
        {
          goto LABEL_30;
        }

LABEL_26:
        if (v18 - 160 > 0x1E)
        {
          goto LABEL_46;
        }

        v19 = 1 << (v18 + 96);
        if ((v19 & 0x62C0401) != 0)
        {
          goto LABEL_45;
        }

        if ((v19 & 0x1108100) != 0)
        {
LABEL_21:
          ++v3;
        }

        else
        {
          if ((v19 & 0x70000000) == 0)
          {
            goto LABEL_46;
          }

LABEL_30:
          v3 += 2;
        }
      }

LABEL_45:
      v11 = 1;
      goto LABEL_46;
    }

    if (v18 - 8263 < 3)
    {
      goto LABEL_21;
    }

    if (v18 == 8279)
    {
      v3 += 3;
      goto LABEL_45;
    }

    if (v18 == 8287)
    {
      goto LABEL_45;
    }

LABEL_46:
    ++v12;
    --v9;
    ++v13;
  }

  while (Length != v12);

  if ((v11 & 1) == 0)
  {
LABEL_124:
    v2 = v4;
    goto LABEL_125;
  }

  v28 = 2 * v3;
  buffer = 0uLL;
  if (((2 * v3) | 1uLL) > 0x400)
  {
    v62 = malloc_type_posix_memalign(&buffer, 8uLL, 2 * v3, 0xCFF93DAEuLL);
    BYTE8(buffer) = 0;
    if (v62)
    {
      v63 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v63);
    }

    v30 = buffer;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v27);
    v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v30, v29);
    *&buffer = v30;
    BYTE8(buffer) = 1;
  }

  v31 = *(&buffer + 1);
  v32 = v4;
  v33 = objc_opt_self();

  if (v33)
  {
    v64 = v31;
    v65 = v28;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    buffer = 0u;
    v34 = CFStringGetLength(v32);
    v74 = v32;
    v77 = 0;
    v78 = v34;
    v35 = CFStringGetCharactersPtr(v32);
    v36 = 0;
    v75 = v35;
    if (!v35)
    {
      v36 = CFStringGetCStringPtr(v32, 0x600u);
    }

    v79 = 0;
    v80 = 0;
    v76 = v36;
    if (v34 >= 1)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 64;
      v41 = vdup_n_s16(0x2032u);
      while (1)
      {
        if (v38 >= 4)
        {
          v42 = 4;
        }

        else
        {
          v42 = v38;
        }

        v43 = v78;
        if (v78 <= v38)
        {
          v45 = 0;
          goto LABEL_63;
        }

        if (v75)
        {
          break;
        }

        if (!v76)
        {
          v46 = v79;
          if (v80 <= v38 || v79 > v38)
          {
            v48 = v42 + v37;
            v49 = v40 - v42;
            v50 = v38 - v42;
            v51 = v50 + 64;
            if (v50 + 64 >= v78)
            {
              v51 = v78;
            }

            v79 = v50;
            v80 = v51;
            if (v78 >= v49)
            {
              v43 = v49;
            }

            v84.location = v50 + v77;
            v84.length = v43 + v48;
            CFStringGetCharacters(v74, v84, &buffer);
            v46 = v79;
          }

          v44 = &buffer - v46;
          goto LABEL_61;
        }

        v45 = v76[v77 + v38];
LABEL_67:
        if (v45 <= 0x2046u)
        {
          switch(v45)
          {
            case 0x2000u:
            case 0x2001u:
            case 0x2002u:
            case 0x2003u:
            case 0x2004u:
            case 0x2005u:
            case 0x2006u:
            case 0x2007u:
            case 0x2008u:
            case 0x2009u:
            case 0x200Au:
            case 0x202Fu:
              goto LABEL_74;
            case 0x200Bu:
            case 0x200Cu:
            case 0x200Du:
            case 0x200Eu:
            case 0x200Fu:
            case 0x2010u:
            case 0x2012u:
            case 0x2013u:
            case 0x2014u:
            case 0x2015u:
            case 0x2016u:
            case 0x201Au:
            case 0x201Bu:
            case 0x201Eu:
            case 0x201Fu:
            case 0x2020u:
            case 0x2021u:
            case 0x2022u:
            case 0x2023u:
            case 0x2026u:
            case 0x2027u:
            case 0x2028u:
            case 0x2029u:
            case 0x202Au:
            case 0x202Bu:
            case 0x202Cu:
            case 0x202Du:
            case 0x202Eu:
            case 0x2030u:
            case 0x2031u:
            case 0x2032u:
            case 0x2035u:
            case 0x2038u:
            case 0x2039u:
            case 0x203Au:
            case 0x203Bu:
            case 0x203Du:
              goto LABEL_63;
            case 0x2011u:
              v45 = 8208;
              goto LABEL_63;
            case 0x2017u:
              v53 = 2 * v39;
              v54 = 53674016;
              goto LABEL_115;
            case 0x2018u:
            case 0x2019u:
              v45 = 39;
              goto LABEL_63;
            case 0x201Cu:
            case 0x201Du:
              v45 = 34;
              goto LABEL_63;
            case 0x2024u:
              v45 = 46;
              goto LABEL_63;
            case 0x2025u:
              v53 = 2 * v39;
              v54 = 3014702;
              goto LABEL_115;
            case 0x2033u:
              v53 = 2 * v39;
              v54 = 540155954;
              goto LABEL_115;
            case 0x2034u:
              v55 = &v30[2 * v39];
              *v55 = 540155954;
              v39 += 3;
              v56 = 8242;
              goto LABEL_122;
            case 0x2036u:
              v53 = 2 * v39;
              v54 = 540352565;
              goto LABEL_115;
            case 0x2037u:
              v55 = &v30[2 * v39];
              *v55 = 540352565;
              v39 += 3;
              v56 = 8245;
              goto LABEL_122;
            case 0x203Cu:
              v53 = 2 * v39;
              v54 = 2162721;
              goto LABEL_115;
            case 0x203Eu:
              v53 = 2 * v39;
              v54 = 50659360;
LABEL_115:
              *&v30[v53] = v54;
              goto LABEL_116;
            default:
              switch(v45)
              {
                case 0xA0u:
                  goto LABEL_74;
                case 0xA8u:
                  v53 = 2 * v39;
                  v54 = 50855968;
                  goto LABEL_115;
                case 0xAAu:
                  v45 = 97;
                  goto LABEL_63;
                case 0xAFu:
                  v53 = 2 * v39;
                  v54 = 50593824;
                  goto LABEL_115;
                case 0xB2u:
                  v45 = 50;
                  goto LABEL_63;
                case 0xB3u:
                  v45 = 51;
                  goto LABEL_63;
                case 0xB4u:
                  v53 = 2 * v39;
                  v54 = 50397216;
                  goto LABEL_115;
                case 0xB5u:
                  v45 = 956;
                  goto LABEL_63;
                case 0xB8u:
                  v53 = 2 * v39;
                  v54 = 52887584;
                  goto LABEL_115;
                case 0xB9u:
                  v45 = 49;
                  goto LABEL_63;
                case 0xBAu:
                  v45 = 111;
                  goto LABEL_63;
                case 0xBCu:
                  v55 = &v30[2 * v39];
                  v57 = 49;
                  break;
                case 0xBDu:
                  v55 = &v30[2 * v39];
                  *v55 = 541327409;
                  v39 += 3;
                  v56 = 50;
                  goto LABEL_122;
                case 0xBEu:
                  v55 = &v30[2 * v39];
                  v57 = 51;
                  break;
                default:
                  goto LABEL_63;
              }

              *v55 = v57 | 0x20440000;
              v39 += 3;
              v56 = 52;
LABEL_122:
              *(v55 + 2) = v56;
              goto LABEL_117;
          }
        }

        if (v45 <= 0x2048u)
        {
          if (v45 == 8263)
          {
            *&v30[2 * v39] = 4128831;
            goto LABEL_116;
          }

          if (v45 == 8264)
          {
            *&v30[2 * v39] = 2162751;
LABEL_116:
            v39 += 2;
            goto LABEL_117;
          }
        }

        else
        {
          switch(v45)
          {
            case 0x2049u:
              *&v30[2 * v39] = 4128801;
              goto LABEL_116;
            case 0x2057u:
              v52 = 2 * v39;
              v39 += 4;
              *&v30[v52] = v41;
              goto LABEL_117;
            case 0x205Fu:
LABEL_74:
              *&v30[2 * v39] = 32;
              goto LABEL_64;
          }
        }

LABEL_63:
        *&v30[2 * v39] = v45;
LABEL_64:
        ++v39;
LABEL_117:
        ++v38;
        --v37;
        ++v40;
        if (v34 == v38)
        {
          goto LABEL_130;
        }
      }

      v44 = &v75[v77];
LABEL_61:
      v45 = v44[v38];
      goto LABEL_67;
    }

LABEL_130:
    v28 = v65;
    v31 = v64;
  }

  v61 = objc_autoreleasePoolPush();
  v58 = [MEMORY[0x1E696AEC0] _pas_stringWithConsumedAllocaDescrNoCopy:v30 bufferSize:v31 encoding:v28 nullTerminated:2483028224 isExternalRepresentation:{0, 0}];
  objc_autoreleasePoolPop(v61);
LABEL_126:

  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

id _PASGetNounsAndNames(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  if (_PASGetNounsAndNames__pasOnceToken26 != -1)
  {
    dispatch_once(&_PASGetNounsAndNames__pasOnceToken26, &__block_literal_global_19);
  }

  v3 = _PASGetNounsAndNames__pasExprOnceResult;
  v4 = [v1 length];
  v5 = *MEMORY[0x1E696A540];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___PASGetNounsAndNames_block_invoke_2;
  v12[3] = &unk_1E77F17C8;
  v13 = v3;
  v6 = v2;
  v14 = v6;
  v15 = v1;
  v7 = v1;
  v8 = v3;
  [v7 enumerateLinguisticTagsInRange:0 scheme:v4 options:v5 orthography:22 usingBlock:{0, v12}];
  v9 = v15;
  v10 = v6;

  return v6;
}

uint64_t _PASMurmur3_x86_32_init(uint64_t result, int a2)
{
  *result = a2;
  *(result + 4) = 0;
  *(result + 11) = 0;
  return result;
}

unsigned __int8 *_PASMurmur3_x86_32_update(unsigned __int8 *result, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  v5 = result[11];
  v6 = v5 + a3;
  if ((v5 + a3) < 4)
  {
    v7 = a3;
    if ((a3 - 1) <= 2u)
    {
      result = memcpy(&result[v5 + 8], a2, a3);
      LOBYTE(v5) = v4[11];
    }

    LOBYTE(v8) = v5 + v7;
    goto LABEL_19;
  }

  LOBYTE(v9) = 0;
  if (result[11] > 1u)
  {
    if (v5 != 2)
    {
      LOBYTE(v10) = 0;
      LOBYTE(v11) = 0;
      v12 = 0;
      if (v5 == 3)
      {
        v10 = *(result + 4);
        v9 = v10 >> 8;
        LOBYTE(v11) = result[10];
        v12 = *a2;
      }

      goto LABEL_14;
    }

    v10 = *(result + 4);
    v9 = v10 >> 8;
    v11 = *a2;
    goto LABEL_13;
  }

  if (result[11])
  {
    LOBYTE(v10) = result[8];
    LOBYTE(v9) = *a2;
    v11 = *(a2 + 1);
LABEL_13:
    v12 = v11 >> 8;
    goto LABEL_14;
  }

  v10 = *a2;
  v9 = *a2 >> 8;
  v11 = HIWORD(*a2);
  v12 = HIBYTE(*a2);
LABEL_14:
  v8 = v6 & 3;
  v13 = (v11 << 16) | (v12 << 24) | v10 | (v9 << 8);
  HIDWORD(v14) = (461845907 * ((380141568 * v13) | ((-862048943 * v13) >> 17))) ^ *result;
  LODWORD(v14) = HIDWORD(v14);
  v15 = 5 * (v14 >> 19) - 430675100;
  *result = v15;
  v16 = &a2[-v5 + 4];
  v17 = &v16[(v6 & 0xFFFFFFFFFFFFFFFCLL) - 4];
  while (v16 < v17)
  {
    v18 = *v16;
    v16 += 4;
    HIDWORD(v19) = (461845907 * ((380141568 * v18) | ((-862048943 * v18) >> 17))) ^ v15;
    LODWORD(v19) = HIDWORD(v19);
    v15 = 5 * (v19 >> 19) - 430675100;
    *result = v15;
  }

  if (v8 - 1 <= 2)
  {
    result = memcpy(result + 8, v17, v8);
  }

LABEL_19:
  v4[11] = v8;
  *(v4 + 1) += v3;
  return result;
}

uint64_t _PASMurmur3_x86_32_final(uint64_t a1)
{
  v1 = *(a1 + 11);
  switch(v1)
  {
    case 1:
      v2 = *(a1 + 8);
      break;
    case 2:
      v2 = *(a1 + 8);
      break;
    case 3:
      v2 = *(a1 + 8) | (*(a1 + 10) << 16);
      break;
    default:
      v3 = *a1;
      goto LABEL_9;
  }

  v3 = (461845907 * ((380141568 * v2) | ((-862048943 * v2) >> 17))) ^ *a1;
LABEL_9:
  v4 = -2048144789 * (v3 ^ *(a1 + 4) ^ ((v3 ^ *(a1 + 4)) >> 16));
  v5 = (-1028477387 * (v4 ^ (v4 >> 13))) ^ ((-1028477387 * (v4 ^ (v4 >> 13))) >> 16);
  *a1 = v5;
  return v5;
}

int32x4_t _PASMurmur3_x86_128_init(int32x4_t *a1, unsigned int a2)
{
  result = vdupq_n_s32(a2);
  *a1 = result;
  a1[1].i32[0] = 0;
  a1[2].i8[3] = 0;
  return result;
}

int8x8_t *_PASMurmur3_x86_128_update(int8x8_t *result, unsigned __int8 *a2, uint64_t a3)
{
  v8 = a3;
  v9 = result;
  v10 = result[4].u8[3];
  v11 = v10 + a3;
  if ((v10 + a3) >= 0x10)
  {
    switch(result[4].i8[3])
    {
      case 0:
        v3 = *a2;
        v4 = *(a2 + 1);
        v5 = *a2 >> 8;
        v6 = *a2 >> 16;
        v7 = HIDWORD(*a2);
        break;
      case 1:
        LOBYTE(v3) = result[2].i8[4];
        LOBYTE(v5) = *a2;
        LOWORD(v6) = *(a2 + 1);
        LODWORD(v7) = *(a2 + 3);
        v4 = *(a2 + 7);
        break;
      case 2:
        LODWORD(v3) = result[2].u16[2];
        LODWORD(v5) = v3 >> 8;
        LOWORD(v6) = *a2;
        LODWORD(v7) = *(a2 + 2);
        v4 = *(a2 + 6);
        break;
      case 3:
        LODWORD(v3) = result[2].u16[2];
        LODWORD(v5) = v3 >> 8;
        LOWORD(v6) = result[2].u8[6] | (*a2 << 8);
        LODWORD(v7) = *(a2 + 1);
        v4 = *(a2 + 5);
        break;
      case 4:
        LODWORD(v3) = result[2].i32[1];
        LODWORD(v5) = v3 >> 8;
        LODWORD(v6) = WORD1(v3);
        LODWORD(v7) = *a2;
        v4 = *(a2 + 4);
        break;
      case 5:
        LODWORD(v3) = result[2].i32[1];
        LODWORD(v5) = v3 >> 8;
        LODWORD(v6) = WORD1(v3);
        LODWORD(v7) = (*a2 << 8) | (a2[2] << 24) | result[3].u8[0];
        v4 = *(a2 + 3);
        break;
      case 6:
        LODWORD(v3) = result[2].i32[1];
        LODWORD(v5) = v3 >> 8;
        LODWORD(v6) = WORD1(v3);
        LODWORD(v7) = result[3].u16[0] | (*a2 << 16);
        v4 = *(a2 + 2);
        break;
      case 7:
        LODWORD(v3) = result[2].i32[1];
        LODWORD(v5) = v3 >> 8;
        LODWORD(v6) = WORD1(v3);
        LODWORD(v7) = result[3].u16[0] | (result[3].u8[2] << 16) | (*a2 << 24);
        v4 = *(a2 + 1);
        break;
      case 8:
        v3 = *(&result[2] + 4);
        v5 = v3 >> 8;
        v6 = v3 >> 16;
        v7 = HIDWORD(v3);
        v4 = *a2;
        break;
      case 9:
        v3 = *(&result[2] + 4);
        v5 = v3 >> 8;
        v6 = v3 >> 16;
        v7 = HIDWORD(v3);
        v14 = (*a2 << 8) | ((*(a2 + 2) | (a2[6] << 16)) << 40);
        v15 = result[3].u8[4];
        goto LABEL_22;
      case 0xA:
        v3 = *(&result[2] + 4);
        v5 = v3 >> 8;
        v6 = v3 >> 16;
        v7 = HIDWORD(v3);
        v14 = (*a2 << 16) | (*(a2 + 2) << 48);
        v15 = result[3].u16[2];
LABEL_22:
        v4 = v14 | v15;
        break;
      case 0xB:
        v3 = *(&result[2] + 4);
        v5 = v3 >> 8;
        v6 = v3 >> 16;
        v4 = (*a2 << 24) | (a2[4] << 56) | result[3].u16[2] | (result[3].u8[6] << 16);
        v7 = HIDWORD(v3);
        break;
      case 0xC:
        v3 = *(&result[2] + 4);
        v5 = v3 >> 8;
        v6 = v3 >> 16;
        v4 = result[3].u32[1] | (*a2 << 32);
        goto LABEL_19;
      case 0xD:
        v3 = *(&result[2] + 4);
        v5 = v3 >> 8;
        v6 = v3 >> 16;
        v4 = result[3].u32[1] | (result[4].u8[0] << 32) | ((*a2 | (a2[2] << 16)) << 40);
        goto LABEL_19;
      case 0xE:
        v3 = *(&result[2] + 4);
        v5 = v3 >> 8;
        v6 = v3 >> 16;
        v4 = result[3].u32[1] | (result[4].u16[0] << 32) | (*a2 << 48);
        goto LABEL_19;
      case 0xF:
        v3 = *(&result[2] + 4);
        v5 = v3 >> 8;
        v6 = v3 >> 16;
        v4 = result[3].u32[1] | ((result[4].u16[0] | (result[4].u8[2] << 16)) << 32) | (*a2 << 56);
LABEL_19:
        v7 = HIDWORD(v3);
        break;
      default:
        break;
    }

    v13 = v11 & 0xF;
    v17 = result[1];
    v16.i8[0] = v3;
    v16.i8[1] = v5;
    v16.i8[2] = v6;
    v16.i8[3] = BYTE1(v6);
    v16.i32[1] = v7;
    v18 = veor_s8(vmul_s32(vorr_s8(vshl_u32(vmul_s32(v16, 0xAB0E9789239B961BLL), 0xFFFFFFF0FFFFFFEFLL), vmul_s32(v16, 0x97890000CB0D8000)), 0x38B34AE5AB0E9789), *result);
    v19 = vrev64_s32(v17);
    v20.i32[1] = v19.i32[1];
    v20.i32[0] = HIDWORD(*result);
    v21 = vmla_s32(0xBCAA747561CCD1BLL, vadd_s32(vorr_s8(vshl_u32(v18, 0x1100000013), vshl_u32(v18, 0xFFFFFFF1FFFFFFF3)), v20), 0x500000005);
    v22 = veor_s8(v17, vmul_s32(vorr_s8(vshl_u32(vmul_s32(v4, 0xA1E38B9338B34AE5), 0xFFFFFFF2FFFFFFF1), vmul_s32(v4, 0x2E4C000095CA0000)), 0x239B961BA1E38B93));
    v23 = vmla_s32(0x32AC3B1796CD1C35, vadd_s32(vzip1_s32(v19, v21), vorr_s8(vshl_u32(v22, 0xD0000000FLL), vshl_u32(v22, 0xFFFFFFEDFFFFFFEFLL))), 0x500000005);
    *result = v21;
    result[1] = v23;
    v24 = &a2[-v10 + 16];
    v25 = (v24 + (v11 & 0xFFFFFFFFFFFFFFF0) - 16);
    if (v24 < v25)
    {
      v26 = v21.i32[0];
      v27 = v21.i32[1];
      do
      {
        v28 = *(v24 + 12);
        HIDWORD(v29) = v26 ^ (-1425107063 * ((-888307712 * *v24) | ((597399067 * *v24) >> 17)));
        LODWORD(v29) = HIDWORD(v29);
        v26 = 5 * ((v29 >> 13) + v27) + 1444728091;
        v30 = *(v24 + 4);
        v9->i32[0] = v26;
        v31 = vdup_lane_s32(v23, 0);
        v31.i32[0] = v27;
        v32 = veor_s8(v31, vmul_s32(vorr_s8(vshl_u32(vmul_s32(v30, 0x38B34AE5AB0E9789), 0xFFFFFFF1FFFFFFF0), vmul_s32(v30, 0x95CA000097890000)), 0xA1E38B9338B34AE5));
        v33 = vmla_s32(0x96CD1C350BCAA747, vadd_s32(v23, vorr_s8(vshl_u32(v32, 0xF00000011), vshl_u32(v32, 0xFFFFFFEFFFFFFFF1))), 0x500000005);
        result = v23.u32[1];
        HIDWORD(v29) = v23.i32[1] ^ (597399067 * ((776732672 * v28) | ((-1578923117 * v28) >> 14)));
        LODWORD(v29) = HIDWORD(v29);
        *(v9 + 4) = v33;
        v9[1].i32[1] = 5 * ((v29 >> 19) + v26) + 850148119;
        v24 += 16;
        v23.i32[0] = vdup_lane_s32(v33, 1).u32[0];
        v23.i32[1] = 5 * ((v29 >> 19) + v26) + 850148119;
        v27 = v33.i32[0];
      }

      while (v24 < v25);
    }

    if (v13 - 1 <= 0xE)
    {
      result = memcpy(&v9[2] + 4, v25, v13);
    }
  }

  else
  {
    v12 = a3;
    if ((a3 - 1) <= 0xEu)
    {
      result = memcpy(&result[2] + v10 + 4, a2, a3);
      LOBYTE(v10) = v9[4].i8[3];
    }

    LOBYTE(v13) = v10 + v12;
  }

  v9[4].i8[3] = v13;
  v9[2].i32[0] += v8;
  return result;
}

unint64_t _PASMurmur3_x86_128_final(int8x8_t *a1)
{
  v1 = a1[4].u8[3];
  if (v1 <= 3)
  {
    switch(v1)
    {
      case 1:
        v5 = a1[2].u8[4];
        break;
      case 2:
        v5 = a1[2].u16[2];
        break;
      case 3:
        v5 = a1[2].u16[2] | (a1[2].u8[6] << 16);
        break;
      default:
        goto LABEL_35;
    }

    v2 = (-1425107063 * ((-888307712 * v5) | ((597399067 * v5) >> 17))) ^ a1->i32[0];
    a1->i32[0] = v2;
    goto LABEL_39;
  }

  if (v1 > 0xF)
  {
LABEL_35:
    v2 = a1->i32[0];
    goto LABEL_39;
  }

  if (((1 << v1) & 0xF0) != 0)
  {
    goto LABEL_8;
  }

  if (((1 << v1) & 0xF00) == 0)
  {
    if (((1 << v1) & 0xF000) != 0)
    {
      a1[1].i32[0] ^= -1578923117 * ((-1781923840 * a1[3].i32[1]) | ((951274213 * a1[3].i32[1]) >> 15));
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_7:
  a1->i32[1] ^= 951274213 * ((-1752629248 * a1[3].i32[0]) | ((-1425107063 * a1[3].i32[0]) >> 16));
LABEL_8:
  v2 = (-1425107063 * ((-888307712 * a1[2].i32[1]) | ((597399067 * a1[2].i32[1]) >> 17))) ^ a1->i32[0];
  if (v1 <= 9)
  {
    if (v1 > 6)
    {
      if (v1 != 7)
      {
        if (v1 != 9)
        {
          goto LABEL_39;
        }

        v6 = a1[3].u8[4];
LABEL_32:
        a1[1].i32[0] ^= -1578923117 * ((-1781923840 * v6) | ((951274213 * v6) >> 15));
        goto LABEL_39;
      }

      v4 = a1[3].u16[0] | (a1[3].u8[2] << 16);
    }

    else if (v1 == 5)
    {
      v4 = a1[3].u8[0];
    }

    else
    {
      if (v1 != 6)
      {
        goto LABEL_39;
      }

      v4 = a1[3].u16[0];
    }

    a1->i32[1] ^= 951274213 * ((-1752629248 * v4) | ((-1425107063 * v4) >> 16));
    goto LABEL_39;
  }

  if (v1 <= 12)
  {
    if (v1 == 10)
    {
      v6 = a1[3].u16[2];
    }

    else
    {
      if (v1 != 11)
      {
        goto LABEL_39;
      }

      v6 = a1[3].u16[2] | (a1[3].u8[6] << 16);
    }

    goto LABEL_32;
  }

  if (v1 == 13)
  {
    v3 = a1[4].u8[0];
  }

  else if (v1 == 14)
  {
    v3 = a1[4].u16[0];
  }

  else
  {
    v3 = a1[4].u16[0] | (a1[4].u8[2] << 16);
  }

  a1[1].i32[1] ^= 597399067 * ((776732672 * v3) | ((-1578923117 * v3) >> 14));
LABEL_39:
  v7 = a1[2].u32[0];
  v8 = a1->i32[1] ^ v7;
  v9 = veor_s8(a1[1], vdup_n_s32(v7));
  v10 = v8 + (v2 ^ v7) + v9.i32[0] + v9.i32[1];
  v11.i32[0] = v10 + v8;
  v11.i32[1] = v10;
  v11.u64[1] = vadd_s32(vdup_n_s32(v10), v9);
  v12 = vmulq_s32(veorq_s8(vshrq_n_u32(v11, 0x10uLL), v11), vdupq_n_s32(0x85EBCA6B));
  v13 = vmulq_s32(veorq_s8(vshrq_n_u32(v12, 0xDuLL), v12), vdupq_n_s32(0xC2B2AE35));
  v14 = veorq_s8(vshrq_n_u32(v13, 0x10uLL), v13);
  v11.i32[0] = vaddvq_s32(v14);
  v15 = v11.u32[0];
  a1->i32[0] = v11.i32[0];
  *v11.i8 = vadd_s32(vdup_n_s32(v11.u32[0]), vzip1_s32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)));
  *(a1 + 4) = *v11.i8;
  a1[1].i32[1] = v15 + v14.i32[3];
  return v15 | (v11.u32[0] << 32);
}

double _PASMurmur3_x86_128(unint64_t a1, uint64_t a2, unsigned int a3)
{
  LOBYTE(v3) = 0;
  LOBYTE(v4) = 0;
  LOBYTE(v5) = 0;
  LOWORD(v6) = 0;
  v7 = 0;
  v8 = 8;
  v9 = 4;
  v10 = a3;
  v11 = a3;
  v12 = a3;
  switch(a2)
  {
    case 1:
      v13 = *a1;
      goto LABEL_6;
    case 2:
      v13 = *a1;
      goto LABEL_6;
    case 3:
      v13 = *a1 | (*(a1 + 2) << 16);
LABEL_6:
      a3 ^= -1425107063 * ((-888307712 * v13) | ((597399067 * v13) >> 17));
      goto LABEL_49;
    case 4:
      goto LABEL_22;
    case 5:
      LOWORD(v6) = 0;
      v7 = 0;
      LOBYTE(v3) = *(a1 + 4);
      v9 = 5;
      goto LABEL_16;
    case 6:
      v7 = 0;
      LODWORD(v3) = *(a1 + 4);
      LODWORD(v6) = v3 >> 8;
      v9 = 6;
      goto LABEL_16;
    case 7:
      LODWORD(v3) = *(a1 + 4) | (*(a1 + 6) << 16);
      LODWORD(v6) = v3 >> 8;
      v7 = v3 & 0xFF0000;
      v9 = 7;
LABEL_16:
      v10 = a3;
      v11 = a3;
      v12 = a3;
LABEL_22:
      v16 = 0;
      v17 = 0;
      v14 = 0;
      v21 = 0;
      v23 = 0;
      v22 = 0;
      LODWORD(a1) = *a1;
      LODWORD(v20) = BYTE3(a1);
      LODWORD(v19) = WORD1(a1);
      LODWORD(v18) = a1 >> 8;
      LOWORD(v6) = v6 << 8;
      goto LABEL_23;
    case 8:
      goto LABEL_20;
    case 9:
      LOBYTE(v4) = 0;
      LOBYTE(v5) = 0;
      LOBYTE(v3) = *(a1 + 8);
      v8 = 9;
      goto LABEL_19;
    case 10:
      LOBYTE(v5) = 0;
      LODWORD(v3) = *(a1 + 8);
      v4 = v3 >> 8;
      v8 = 10;
      goto LABEL_19;
    case 11:
      LODWORD(v3) = *(a1 + 8) | (*(a1 + 10) << 16);
      v4 = v3 >> 8;
      LOBYTE(v5) = *(a1 + 10);
      v8 = 11;
LABEL_19:
      v10 = a3;
      v11 = a3;
      v12 = a3;
LABEL_20:
      v16 = 0;
      v17 = 0;
      v14 = 0;
      goto LABEL_21;
    case 12:
      LOBYTE(v14) = 0;
      LOBYTE(v15) = 0;
      v16 = 0;
      v3 = (a1 + 8);
      v8 = 12;
      goto LABEL_14;
    case 13:
      LOBYTE(v15) = 0;
      v16 = 0;
      v3 = (a1 + 8);
      LOBYTE(v14) = *(a1 + 12);
      v8 = 13;
      goto LABEL_14;
    case 14:
      v16 = 0;
      v3 = (a1 + 8);
      v14 = *(a1 + 12);
      v15 = v14 >> 8;
      v8 = 14;
      goto LABEL_14;
    case 15:
      v3 = (a1 + 8);
      v14 = *(a1 + 12) | (*(a1 + 14) << 16);
      v15 = v14 >> 8;
      v16 = v14 & 0xFF0000;
      v8 = 15;
LABEL_14:
      v10 = a3;
      v12 = a3;
      LODWORD(v3) = *v3;
      v5 = v3 >> 16;
      v4 = v3 >> 8;
      v11 = (-1578923117 * ((-1781923840 * v3) | ((951274213 * v3) >> 15))) ^ a3;
      v14 = v14;
      v17 = v15 << 8;
LABEL_21:
      a1 = *a1;
      v18 = a1 >> 8;
      v19 = a1 >> 16;
      v20 = a1 >> 24;
      v6 = HIDWORD(a1);
      v7 = HIDWORD(a1) & 0xFF0000;
      v10 ^= 951274213 * ((-1752629248 * HIDWORD(a1)) | ((-1425107063 * HIDWORD(a1)) >> 16));
      v21 = v3;
      v22 = v4 << 8;
      v23 = v5 << 16;
      v9 = v8;
      v3 = HIDWORD(a1);
LABEL_23:
      v24 = a1 | (v18 << 8) | (v19 << 16) | (v20 << 24);
      a3 ^= -1425107063 * ((-888307712 * v24) | ((597399067 * v24) >> 17));
      if (v9 <= 9)
      {
        v25 = v6 & 0xFF00;
        if (v9 > 6)
        {
          if (v9 != 7)
          {
            if (v9 != 9)
            {
              goto LABEL_49;
            }

            v27 = -1578923117 * ((-1781923840 * v21) | ((951274213 * v21) >> 15));
LABEL_46:
            v11 ^= v27;
            goto LABEL_49;
          }

          v26 = v7 | v3 | v25;
        }

        else
        {
          if (v9 == 5)
          {
            v28 = (-1752629248 * v3) | ((-1425107063 * v3) >> 16);
LABEL_44:
            v10 ^= 951274213 * v28;
            goto LABEL_49;
          }

          if (v9 != 6)
          {
            goto LABEL_49;
          }

          v26 = v25 | v3;
        }

        v28 = (-1752629248 * v26) | ((-1425107063 * v26) >> 16);
        goto LABEL_44;
      }

      if (v9 <= 12)
      {
        if (v9 == 10)
        {
          v31 = v22 | v21;
        }

        else
        {
          if (v9 != 11)
          {
            goto LABEL_49;
          }

          v31 = v21 | v23 | v22;
        }

        v27 = -1578923117 * ((-1781923840 * v31) | ((951274213 * v31) >> 15));
        goto LABEL_46;
      }

      if (v9 == 13)
      {
        v29 = -1578923117 * v14;
        v30 = 776732672 * v14;
      }

      else
      {
        if (v9 == 14)
        {
          v32 = v17 | v14;
        }

        else
        {
          v32 = v14 | v16 | v17;
        }

        v29 = -1578923117 * v32;
        v30 = 776732672 * v32;
      }

      v12 ^= 597399067 * (v30 & 0xFFFC0000 | (v29 >> 14));
LABEL_49:
      v33 = v10 ^ a2;
      v34 = v33 + (a3 ^ a2) + (v11 ^ a2) + (v12 ^ a2);
      v35.i32[0] = v34 + v33;
      v35.i32[1] = v34;
      v35.i32[2] = v34 + (v11 ^ a2);
      v35.i32[3] = v34 + (v12 ^ a2);
      v36 = vmulq_s32(veorq_s8(vshrq_n_u32(v35, 0x10uLL), v35), vdupq_n_s32(0x85EBCA6B));
      v37 = vmulq_s32(veorq_s8(vshrq_n_u32(v36, 0xDuLL), v36), vdupq_n_s32(0xC2B2AE35));
      v38 = veorq_s8(vshrq_n_u32(v37, 0x10uLL), v37);
      v39 = vaddvq_s32(v38);
      v40 = vdup_n_s32(v39);
      v38.i32[1] = vextq_s8(*&v38, *&v38, 8uLL).i32[1];
      v41.i64[0] = v40.u32[0];
      v41.i64[1] = v39 + v38.i32[2];
      *&result = vorrq_s8(vshll_n_s32(vadd_s32(v40, *v38.i8), 0x20uLL), v41).u64[0];
      return result;
    default:
      v10 = a3;
      v11 = a3;
      v12 = a3;
      goto LABEL_49;
  }
}

uint64_t _PASMurmur3_x64_128_init(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 35) = 0;
  return result;
}

uint64_t _PASMurmur3_x64_128_update(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v8 = a3;
  v9 = result;
  v10 = *(result + 35);
  v11 = v10 + a3;
  if ((v10 + a3) >= 0x10)
  {
    switch(*(result + 35))
    {
      case 0:
        v3 = *a2;
        v5 = *(a2 + 1);
        v4 = *a2 >> 8;
        v6 = *a2 >> 16;
        goto LABEL_19;
      case 1:
        LOBYTE(v3) = *(result + 20);
        LOBYTE(v4) = *a2;
        LOWORD(v6) = *(a2 + 1);
        v7 = *(a2 + 3);
        v5 = *(a2 + 7);
        break;
      case 2:
        LODWORD(v3) = *(result + 20);
        LODWORD(v4) = v3 >> 8;
        LOWORD(v6) = *a2;
        v7 = *(a2 + 2);
        v5 = *(a2 + 6);
        break;
      case 3:
        LODWORD(v3) = *(result + 20);
        LODWORD(v4) = v3 >> 8;
        LOWORD(v6) = *(result + 22) | (*a2 << 8);
        v7 = *(a2 + 1);
        v5 = *(a2 + 5);
        break;
      case 4:
        LODWORD(v3) = *(result + 20);
        LODWORD(v4) = v3 >> 8;
        LODWORD(v6) = WORD1(v3);
        v7 = *a2;
        v5 = *(a2 + 4);
        break;
      case 5:
        LODWORD(v3) = *(result + 20);
        LODWORD(v4) = v3 >> 8;
        LODWORD(v6) = WORD1(v3);
        v7 = (*a2 << 8) | (a2[2] << 24) | *(result + 24);
        v5 = *(a2 + 3);
        break;
      case 6:
        LODWORD(v3) = *(result + 20);
        LODWORD(v4) = v3 >> 8;
        LODWORD(v6) = WORD1(v3);
        v7 = *(result + 24) | (*a2 << 16);
        v5 = *(a2 + 2);
        break;
      case 7:
        LODWORD(v3) = *(result + 20);
        LODWORD(v4) = v3 >> 8;
        LODWORD(v6) = WORD1(v3);
        v7 = *(result + 24) | (*(result + 26) << 16) | (*a2 << 24);
        v5 = *(a2 + 1);
        break;
      case 8:
        v3 = *(result + 20);
        v4 = v3 >> 8;
        v6 = v3 >> 16;
        v7 = HIDWORD(v3);
        v5 = *a2;
        break;
      case 9:
        v3 = *(result + 20);
        v4 = v3 >> 8;
        v6 = v3 >> 16;
        v7 = HIDWORD(v3);
        v14 = (*a2 << 8) | ((*(a2 + 2) | (a2[6] << 16)) << 40);
        v15 = *(result + 28);
        goto LABEL_22;
      case 0xA:
        v3 = *(result + 20);
        v4 = v3 >> 8;
        v6 = v3 >> 16;
        v7 = HIDWORD(v3);
        v14 = (*a2 << 16) | (*(a2 + 2) << 48);
        v15 = *(result + 28);
LABEL_22:
        v5 = v14 | v15;
        break;
      case 0xB:
        v3 = *(result + 20);
        v4 = v3 >> 8;
        v6 = v3 >> 16;
        v5 = (*a2 << 24) | (a2[4] << 56) | *(result + 28) | (*(result + 30) << 16);
        v7 = HIDWORD(v3);
        break;
      case 0xC:
        v3 = *(result + 20);
        v4 = v3 >> 8;
        v6 = v3 >> 16;
        v5 = *(result + 28) | (*a2 << 32);
        goto LABEL_19;
      case 0xD:
        v3 = *(result + 20);
        v4 = v3 >> 8;
        v6 = v3 >> 16;
        v5 = *(result + 28) | (*(result + 32) << 32) | ((*a2 | (a2[2] << 16)) << 40);
        goto LABEL_19;
      case 0xE:
        v3 = *(result + 20);
        v4 = v3 >> 8;
        v6 = v3 >> 16;
        v5 = *(result + 28) | (*(result + 32) << 32) | (*a2 << 48);
        goto LABEL_19;
      case 0xF:
        v3 = *(result + 20);
        v4 = v3 >> 8;
        v6 = v3 >> 16;
        v5 = *(result + 28) | ((*(result + 32) | (*(result + 34) << 16)) << 32) | (*a2 << 56);
LABEL_19:
        v7 = HIDWORD(v3);
        break;
      default:
        break;
    }

    v13 = v11 & 0xF;
    result = 0x4CF5AD432745937FLL;
    v16 = v3 | (v4 << 8) | (v6 << 16) | (v7 << 32);
    v17 = *(v9 + 8);
    v18 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v16) | ((0x87C37B91114253D5 * v16) >> 33))) ^ *v9, 37) + v17) + 1390208809;
    v19 = 5 * (v18 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * v5) | ((0x4CF5AD432745937FLL * v5) >> 31))) ^ v17, 33)) + 944331445;
    *v9 = v18;
    *(v9 + 8) = v19;
    v20 = &a2[-v10 + 16];
    v21 = &v20[(v11 & 0xFFFFFFFFFFFFFFF0) - 16];
    while (v20 < v21)
    {
      v22 = *v20;
      v23 = *(v20 + 1);
      v20 += 16;
      v18 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v22) | ((0x87C37B91114253D5 * v22) >> 33))) ^ v18, 37) + v19) + 1390208809;
      v19 = 5 * (v18 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * v23) | ((0x4CF5AD432745937FLL * v23) >> 31))) ^ v19, 33)) + 944331445;
      *v9 = v18;
      *(v9 + 8) = v19;
    }

    if (v13 - 1 <= 0xE)
    {
      result = memcpy((v9 + 20), v21, v13);
    }
  }

  else
  {
    v12 = a3;
    if ((a3 - 1) <= 0xEu)
    {
      result = memcpy((result + v10 + 20), a2, a3);
      LOBYTE(v10) = *(v9 + 35);
    }

    LOBYTE(v13) = v10 + v12;
  }

  *(v9 + 35) = v13;
  *(v9 + 16) += v8;
  return result;
}

unint64_t _PASMurmur3_x64_128_final(uint64_t a1)
{
  v1 = *(a1 + 35);
  if ((v1 & 0xF8) == 8)
  {
    *a1 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(a1 + 20)) | ((0x87C37B91114253D5 * *(a1 + 20)) >> 33));
  }

  switch(v1)
  {
    case 1:
      v2 = *(a1 + 20);
      goto LABEL_17;
    case 2:
      v2 = *(a1 + 20);
      goto LABEL_17;
    case 3:
      v2 = *(a1 + 20) | (*(a1 + 22) << 16);
      goto LABEL_17;
    case 4:
      v2 = *(a1 + 20);
      goto LABEL_17;
    case 5:
      v5 = *(a1 + 24);
      goto LABEL_16;
    case 6:
      v5 = *(a1 + 24);
      goto LABEL_16;
    case 7:
      v5 = *(a1 + 24) | (*(a1 + 26) << 16);
LABEL_16:
      v2 = *(a1 + 20) | (v5 << 32);
LABEL_17:
      v6 = 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v2) | ((0x87C37B91114253D5 * v2) >> 33));
      v7 = a1;
      goto LABEL_22;
    case 9:
      v4 = *(a1 + 28);
      goto LABEL_21;
    case 10:
      v4 = *(a1 + 28);
      goto LABEL_21;
    case 11:
      v4 = *(a1 + 28) | (*(a1 + 30) << 16);
      goto LABEL_21;
    case 12:
      v4 = *(a1 + 28);
      goto LABEL_21;
    case 13:
      v3 = *(a1 + 32);
      goto LABEL_11;
    case 14:
      v3 = *(a1 + 32);
      goto LABEL_11;
    case 15:
      v3 = *(a1 + 32) | (*(a1 + 34) << 16);
LABEL_11:
      v4 = *(a1 + 28) | (v3 << 32);
LABEL_21:
      v6 = 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * v4) | ((0x4CF5AD432745937FLL * v4) >> 31));
      v7 = (a1 + 8);
LABEL_22:
      *v7 ^= v6;
      break;
    default:
      break;
  }

  v8 = *(a1 + 16);
  v9 = *a1 ^ v8;
  v10 = *(a1 + 8) ^ v8;
  v11 = v10 + v9;
  v12 = v11 + v10;
  v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
  v14 = v13 ^ (v13 >> 33);
  v15 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
  v16 = v15 ^ (v15 >> 33);
  *a1 = v16 + v14;
  *(a1 + 8) = v16 + v14 + v16;
  return v16 + v14;
}

unint64_t _PASMurmur3_x64_128(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = 0;
  LOBYTE(v5) = 0;
  LOBYTE(v6) = 0;
  LOBYTE(v7) = 0;
  LOBYTE(v8) = 0;
  LOBYTE(v9) = 0;
  LOBYTE(v10) = 0;
  v11 = 8;
  v12 = a3;
  switch(a2)
  {
    case 1:
      LOBYTE(v13) = 0;
      LOBYTE(v14) = 0;
      LOBYTE(v15) = 0;
      LOBYTE(v16) = 0;
      LOBYTE(v17) = 0;
      LOBYTE(v18) = 0;
      LOBYTE(v5) = *a1;
      v19 = 1;
      goto LABEL_16;
    case 2:
      LOBYTE(v14) = 0;
      LOBYTE(v15) = 0;
      LOBYTE(v16) = 0;
      LOBYTE(v17) = 0;
      LOBYTE(v18) = 0;
      LODWORD(v5) = *a1;
      LODWORD(v13) = v5 >> 8;
      v19 = 2;
      goto LABEL_16;
    case 3:
      LOBYTE(v15) = 0;
      LOBYTE(v16) = 0;
      LOBYTE(v17) = 0;
      LOBYTE(v18) = 0;
      LODWORD(v5) = *a1 | (a1[2] << 16);
      LODWORD(v13) = v5 >> 8;
      LOBYTE(v14) = a1[2];
      v19 = 3;
      goto LABEL_16;
    case 4:
      LOBYTE(v16) = 0;
      LOBYTE(v17) = 0;
      LOBYTE(v18) = 0;
      LODWORD(v5) = *a1;
      LODWORD(v13) = *a1 >> 8;
      LODWORD(v14) = HIWORD(*a1);
      LODWORD(v15) = HIBYTE(*a1);
      v19 = 4;
      goto LABEL_16;
    case 5:
      LOBYTE(v17) = 0;
      LOBYTE(v18) = 0;
      v16 = a1[4];
      v5 = *a1;
      v22 = v5 | (v16 << 32);
      v13 = v22 >> 8;
      v14 = v22 >> 16;
      v15 = v22 >> 24;
      v19 = 5;
      goto LABEL_16;
    case 6:
      LOBYTE(v18) = 0;
      v5 = *a1;
      LODWORD(v16) = *(a1 + 2);
      v25 = v5 & 0xFFFF0000FFFFFFFFLL | (*(a1 + 2) << 32);
      v13 = v25 >> 8;
      v14 = v25 >> 16;
      v15 = v25 >> 24;
      LODWORD(v17) = v16 >> 8;
      v19 = 6;
      goto LABEL_16;
    case 7:
      LODWORD(v16) = *(a1 + 2) | (a1[6] << 16);
      v5 = *a1;
      v27 = v5 & 0xFF000000FFFFFFFFLL | ((v16 & 0xFFFFFF) << 32);
      v13 = v27 >> 8;
      v14 = v27 >> 16;
      v15 = v27 >> 24;
      LODWORD(v17) = v16 >> 8;
      LOBYTE(v18) = a1[6];
      v19 = 7;
LABEL_16:
      v24 = v3;
      goto LABEL_21;
    case 8:
      goto LABEL_20;
    case 9:
      LOBYTE(v6) = 0;
      LOBYTE(v7) = 0;
      LOBYTE(v8) = 0;
      LOBYTE(v9) = 0;
      LOBYTE(v10) = 0;
      v4 = 0;
      LOBYTE(v5) = a1[8];
      v11 = 9;
      goto LABEL_19;
    case 10:
      LOBYTE(v7) = 0;
      LOBYTE(v8) = 0;
      LOBYTE(v9) = 0;
      LOBYTE(v10) = 0;
      v4 = 0;
      LOWORD(v5) = *(a1 + 4);
      LOBYTE(v6) = BYTE1(v5);
      v11 = 10;
      goto LABEL_19;
    case 11:
      LOBYTE(v8) = 0;
      LOBYTE(v9) = 0;
      LOBYTE(v10) = 0;
      v4 = 0;
      LODWORD(v5) = *(a1 + 4) | (a1[10] << 16);
      LODWORD(v6) = v5 >> 8;
      LOBYTE(v7) = a1[10];
      v11 = 11;
      goto LABEL_19;
    case 12:
      LOBYTE(v9) = 0;
      LOBYTE(v10) = 0;
      v4 = 0;
      v5 = *(a1 + 2);
      v6 = v5 >> 8;
      v7 = v5 >> 16;
      v8 = v5 >> 24;
      v11 = 12;
      goto LABEL_19;
    case 13:
      LOBYTE(v10) = 0;
      v4 = 0;
      LODWORD(v5) = *(a1 + 2);
      v23 = v5 | (a1[12] << 32);
      v6 = v23 >> 8;
      v7 = v23 >> 16;
      v8 = v23 >> 24;
      LOBYTE(v9) = a1[12];
      v11 = 13;
      goto LABEL_19;
    case 14:
      v4 = 0;
      LODWORD(v5) = *(a1 + 2);
      v26 = v5 | (*(a1 + 6) << 32);
      v6 = v26 >> 8;
      v7 = v26 >> 16;
      v8 = v26 >> 24;
      LOBYTE(v9) = *(a1 + 6);
      v10 = HIBYTE(*(a1 + 6));
      v11 = 14;
      goto LABEL_19;
    case 15:
      v20 = *(a1 + 6) | (a1[14] << 16);
      LODWORD(v5) = *(a1 + 2);
      v21 = v5 | ((*&v20 & 0xFFFFFFLL) << 32);
      v6 = v21 >> 8;
      v7 = v21 >> 16;
      v8 = v21 >> 24;
      v9 = *(a1 + 6);
      v10 = v20 >> 8;
      v4 = ((*&v20 & 0xFFFFFFLL) << 32) & 0xFF000000000000;
      v11 = 15;
LABEL_19:
      v12 = a3;
LABEL_20:
      v28 = v5;
      v5 = *a1;
      v29 = v6 << 8;
      v18 = HIWORD(v5);
      v17 = v5 >> 40;
      v16 = HIDWORD(v5);
      v15 = v5 >> 24;
      v14 = v5 >> 16;
      v13 = v5 >> 8;
      v24 = (0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v5) | ((0x87C37B91114253D5 * v5) >> 33))) ^ v12;
      v30 = v7 << 16;
      v31 = v8 << 24;
      v32 = v9 << 32;
      v33 = v10 << 40;
      v19 = v11;
      break;
    default:
      LOBYTE(v13) = 0;
      LOBYTE(v14) = 0;
      LOBYTE(v15) = 0;
      LOBYTE(v16) = 0;
      LOBYTE(v17) = 0;
      LOBYTE(v18) = 0;
      v24 = v3;
      v19 = 0;
LABEL_21:
      v4 = 0;
      v33 = 0;
      v32 = 0;
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v28 = 0;
      break;
  }

  switch(v19)
  {
    case 1:
      v34 = v5;
      goto LABEL_35;
    case 2:
      v34 = v5 | (v13 << 8);
      goto LABEL_35;
    case 3:
      v34 = v5 | (v13 << 8) | (v14 << 16);
      goto LABEL_35;
    case 4:
      v34 = v5 | (v13 << 8) | (v14 << 16) & 0xFFFFFFFF00FFFFFFLL | (v15 << 24);
      goto LABEL_35;
    case 5:
      v34 = v5 | (v13 << 8) | (v14 << 16) & 0xFFFFFFFF00FFFFFFLL | (v15 << 24) | (v16 << 32);
      goto LABEL_35;
    case 6:
      v34 = v5 | (v13 << 8) | (v14 << 16) & 0xFFFFFFFF00FFFFFFLL | (v15 << 24) | (v16 << 32) | (v17 << 40);
      goto LABEL_35;
    case 7:
      v34 = (v18 << 48) | v5 | (v13 << 8) | (v14 << 16) & 0xFFFFFFFF00FFFFFFLL | (v15 << 24) | (v16 << 32) | (v17 << 40);
LABEL_35:
      v24 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v34) | ((0x87C37B91114253D5 * v34) >> 33));
      break;
    case 9:
      v38 = 0x4CF5AD432745937FLL * v28;
      v39 = 0x4E8B26FE00000000 * v28;
      goto LABEL_40;
    case 10:
      v35 = v29 | v28;
      goto LABEL_39;
    case 11:
      v35 = v30 | v29 | v28;
      goto LABEL_39;
    case 12:
      v36 = v29 | v28;
      v37 = v31 | v30;
      goto LABEL_28;
    case 13:
      v35 = v32 | v31 | v30 | v29 | v28;
      goto LABEL_39;
    case 14:
      v36 = v31 | v30 | v29 | v28;
      v37 = v33 | v32;
LABEL_28:
      v35 = v37 | v36;
      goto LABEL_39;
    case 15:
      v35 = v28 | v4 | v29 | v30 | v31 | v32 | v33;
LABEL_39:
      v38 = 0x4CF5AD432745937FLL * v35;
      v39 = 0x4E8B26FE00000000 * v35;
LABEL_40:
      v3 ^= 0x87C37B91114253D5 * (v39 & 0xFFFFFFFE00000000 | (v38 >> 31));
      break;
    default:
      break;
  }

  v40 = v3 ^ a2;
  v41 = v40 + (v24 ^ a2);
  v42 = v41 + v40;
  v43 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v41 ^ (v41 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v41 ^ (v41 >> 33))) >> 33));
  v44 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v42 ^ (v42 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v42 ^ (v42 >> 33))) >> 33));
  return (v44 ^ (v44 >> 33)) + (v43 ^ (v43 >> 33));
}

unsigned __int16 *_PAS_MurmurHash3_x86_32(unsigned __int16 *result, unsigned int a2, int a3, unsigned int *a4)
{
  if (a2 >= 4)
  {
    v5 = a2 & 3;
    v6 = *result;
    result += 2;
    HIDWORD(v7) = (461845907 * ((380141568 * v6) | ((-862048943 * v6) >> 17))) ^ a3;
    LODWORD(v7) = HIDWORD(v7);
    a3 = 5 * (v7 >> 19) - 430675100;
    v4 = (result + (a2 & 0xFFFFFFFFFFFFFFFCLL) - 4);
    while (result < v4)
    {
      v8 = *result;
      result += 2;
      HIDWORD(v9) = (461845907 * ((380141568 * v8) | ((-862048943 * v8) >> 17))) ^ a3;
      LODWORD(v9) = HIDWORD(v9);
      a3 = 5 * (v9 >> 19) - 430675100;
    }

    if ((a2 & 3uLL) > 1)
    {
      if (v5 == 2)
      {
        v11 = 0;
        LODWORD(v4) = *v4;
        v10 = v4 >> 8;
      }

      else
      {
        LOWORD(v11) = *(v4 + 2);
        LODWORD(v4) = *v4 | (*(v4 + 2) << 16);
        v10 = v4 >> 8;
        v11 = v11;
      }
    }

    else if (v5)
    {
      LOBYTE(v10) = 0;
      v11 = 0;
      LOBYTE(v4) = *v4;
    }

    else
    {
      LOBYTE(v4) = 0;
      LOBYTE(v10) = 0;
      v11 = 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 3u:
        LODWORD(v4) = *result | (*(result + 2) << 16);
        v10 = v4 >> 8;
        v11 = *(result + 2);
LABEL_22:
        v12 = v4 | (v10 << 8) | (v11 << 16);
LABEL_25:
        a3 ^= 461845907 * ((380141568 * v12) | ((-862048943 * v12) >> 17));
        goto LABEL_26;
      case 2u:
        LODWORD(v4) = *result;
        v10 = v4 >> 8;
LABEL_23:
        v12 = v4 | (v10 << 8);
        goto LABEL_25;
      case 1u:
        LOBYTE(v4) = *result;
LABEL_24:
        v12 = v4;
        goto LABEL_25;
    }

    LOBYTE(v4) = 0;
    LOBYTE(v10) = 0;
    v11 = 0;
    LOBYTE(v5) = a2;
  }

  switch(v5)
  {
    case 1u:
      goto LABEL_24;
    case 2u:
      goto LABEL_23;
    case 3u:
      goto LABEL_22;
  }

LABEL_26:
  v13 = -2048144789 * (a3 ^ a2 ^ ((a3 ^ a2) >> 16));
  *a4 = (-1028477387 * (v13 ^ (v13 >> 13))) ^ ((-1028477387 * (v13 ^ (v13 >> 13))) >> 16);
  return result;
}

__n128 _PAS_MurmurHash3_x86_128(int32x2_t *a1, unsigned int a2, unsigned int a3, __n128 *a4, int8x16_t a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  *a5.i8 = vdup_n_s32(a3);
  if (a2 < 0x10)
  {
    switch(a2)
    {
      case 1u:
        v10.i8[0] = a1->i8[0];
        v11 = a3;
        v12 = a3;
        v13 = a3;
        goto LABEL_69;
      case 2u:
        v10.i32[0] = a1->u16[0];
        LODWORD(v28) = v10.i32[0] >> 8;
        v11 = a3;
        v12 = a3;
        v13 = a3;
        goto LABEL_70;
      case 3u:
        v10.i32[0] = a1->u16[0] | (a1->u8[2] << 16);
        LODWORD(v28) = v10.i32[0] >> 8;
        LOBYTE(v29) = a1->i8[2];
        v11 = a3;
        v12 = a3;
        v13 = a3;
        goto LABEL_56;
      case 4u:
        LOBYTE(v31) = 0;
        LOBYTE(v32) = 0;
        LOBYTE(v33) = 0;
        LOBYTE(v35) = 0;
        LOBYTE(v36) = 0;
        LOBYTE(v37) = 0;
        LOBYTE(v39) = 0;
        LOBYTE(v40) = 0;
        v41 = 0;
        v10.i32[0] = a1->i32[0];
        LODWORD(v28) = a1->i32[0] >> 8;
        LODWORD(v29) = HIWORD(a1->i32[0]);
        LODWORD(v30) = HIBYTE(a1->i32[0]);
        goto LABEL_34;
      case 5u:
        LOBYTE(v32) = 0;
        LOBYTE(v33) = 0;
        LOBYTE(v35) = 0;
        LOBYTE(v36) = 0;
        LOBYTE(v37) = 0;
        LOBYTE(v39) = 0;
        LOBYTE(v40) = 0;
        v41 = 0;
        v10.i32[0] = a1->i32[0];
        LODWORD(v28) = a1->i32[0] >> 8;
        LODWORD(v29) = HIWORD(a1->i32[0]);
        LODWORD(v30) = HIBYTE(a1->i32[0]);
        LOBYTE(v31) = a1->i8[4];
        goto LABEL_34;
      case 6u:
        LOBYTE(v33) = 0;
        LOBYTE(v35) = 0;
        LOBYTE(v36) = 0;
        LOBYTE(v37) = 0;
        LOBYTE(v39) = 0;
        LOBYTE(v40) = 0;
        v41 = 0;
        v10.i32[0] = a1->i32[0];
        LODWORD(v28) = a1->i32[0] >> 8;
        LODWORD(v29) = HIWORD(a1->i32[0]);
        LODWORD(v30) = HIBYTE(a1->i32[0]);
        LODWORD(v31) = a1->u16[2];
        LODWORD(v32) = v31 >> 8;
        goto LABEL_34;
      case 7u:
        LOBYTE(v35) = 0;
        LOBYTE(v36) = 0;
        LOBYTE(v37) = 0;
        LOBYTE(v39) = 0;
        LOBYTE(v40) = 0;
        v41 = 0;
        v10.i32[0] = a1->i32[0];
        LODWORD(v28) = a1->i32[0] >> 8;
        LODWORD(v29) = HIWORD(a1->i32[0]);
        LODWORD(v30) = HIBYTE(a1->i32[0]);
        LODWORD(v31) = a1->u16[2] | (a1->u8[6] << 16);
        LODWORD(v32) = v31 >> 8;
        LOBYTE(v33) = a1->i8[6];
LABEL_34:
        LOBYTE(v14) = a2;
        v11 = a3;
        goto LABEL_50;
      case 8u:
        LOBYTE(v35) = 0;
        LOBYTE(v36) = 0;
        LOBYTE(v37) = 0;
        LOBYTE(v39) = 0;
        LOBYTE(v40) = 0;
        v41 = 0;
        v10 = *a1;
        v28 = *a1 >> 8;
        v29 = *a1 >> 16;
        v30 = *a1 >> 24;
        v31 = HIDWORD(*a1);
        v32 = *a1 >> 40;
        v33 = HIWORD(*a1);
        v34 = HIBYTE(*a1);
        goto LABEL_47;
      case 9u:
        LOBYTE(v36) = 0;
        LOBYTE(v37) = 0;
        LOBYTE(v39) = 0;
        LOBYTE(v40) = 0;
        v41 = 0;
        v10 = *a1;
        v28 = *a1 >> 8;
        v29 = *a1 >> 16;
        v30 = *a1 >> 24;
        v31 = HIDWORD(*a1);
        v32 = *a1 >> 40;
        v33 = HIWORD(*a1);
        v42 = HIBYTE(*a1);
        LOBYTE(v35) = a1[1].i8[0];
        goto LABEL_46;
      case 0xAu:
        LOBYTE(v37) = 0;
        LOBYTE(v39) = 0;
        LOBYTE(v40) = 0;
        v41 = 0;
        v10 = *a1;
        v28 = *a1 >> 8;
        v29 = *a1 >> 16;
        v30 = *a1 >> 24;
        v31 = HIDWORD(*a1);
        v32 = *a1 >> 40;
        v33 = HIWORD(*a1);
        v42 = HIBYTE(*a1);
        v35 = a1[1].u16[0];
        v36 = v35 >> 8;
        goto LABEL_46;
      case 0xBu:
        LOBYTE(v39) = 0;
        LOBYTE(v40) = 0;
        v41 = 0;
        v10 = *a1;
        v28 = *a1 >> 8;
        v29 = *a1 >> 16;
        v30 = *a1 >> 24;
        v31 = HIDWORD(*a1);
        v32 = *a1 >> 40;
        v33 = HIWORD(*a1);
        v42 = HIBYTE(*a1);
        v35 = a1[1].u16[0] | (a1[1].u8[2] << 16);
        v36 = v35 >> 8;
        LOBYTE(v37) = a1[1].i8[2];
LABEL_46:
        LODWORD(v34) = v42;
LABEL_47:
        LOBYTE(v14) = a2;
        v12 = a3;
        goto LABEL_48;
      case 0xCu:
        LOBYTE(v39) = 0;
        LOBYTE(v40) = 0;
        v41 = 0;
        v10 = *a1;
        v28 = *a1 >> 8;
        v29 = *a1 >> 16;
        v30 = *a1 >> 24;
        v31 = HIDWORD(*a1);
        v32 = *a1 >> 40;
        v33 = HIWORD(*a1);
        v14 = HIBYTE(*a1);
        v35 = a1[1].u32[0];
        v36 = v35 >> 8;
        v37 = HIWORD(v35);
        v38 = HIBYTE(v35);
        goto LABEL_31;
      case 0xDu:
        LOBYTE(v40) = 0;
        v41 = 0;
        v10 = *a1;
        v28 = *a1 >> 8;
        v29 = *a1 >> 16;
        v30 = *a1 >> 24;
        v31 = HIDWORD(*a1);
        v32 = *a1 >> 40;
        v33 = HIWORD(*a1);
        v14 = HIBYTE(*a1);
        v35 = a1[1].u32[0];
        v36 = v35 >> 8;
        v37 = HIWORD(v35);
        v38 = HIBYTE(v35);
        LOBYTE(v39) = a1[1].i8[4];
        goto LABEL_31;
      case 0xEu:
        v41 = 0;
        v10 = *a1;
        v28 = *a1 >> 8;
        v29 = *a1 >> 16;
        v30 = *a1 >> 24;
        v31 = HIDWORD(*a1);
        v32 = *a1 >> 40;
        v33 = HIWORD(*a1);
        v14 = HIBYTE(*a1);
        v35 = a1[1].u32[0];
        v36 = v35 >> 8;
        v37 = HIWORD(v35);
        v38 = HIBYTE(v35);
        v39 = a1[1].u16[2];
        v40 = v39 >> 8;
LABEL_31:
        LODWORD(v34) = v14;
        LOBYTE(v14) = a2;
        v19 = *a5.i8;
        break;
      case 0xFu:
        v10 = *a1;
        v28 = *a1 >> 8;
        v29 = *a1 >> 16;
        v30 = *a1 >> 24;
        v31 = HIDWORD(*a1);
        v32 = *a1 >> 40;
        v33 = HIWORD(*a1);
        v35 = a1[1].u32[0];
        v36 = v35 >> 8;
        v37 = HIWORD(v35);
        v38 = HIBYTE(v35);
        LOWORD(v41) = a1[1].u8[6];
        v39 = a1[1].u16[2] | (a1[1].u8[6] << 16);
        v40 = v39 >> 8;
        v34 = HIBYTE(*a1);
        LOBYTE(v14) = a2;
        v19 = *a5.i8;
        v41 = v41;
        goto LABEL_43;
      default:
        v10.i8[0] = 0;
        LOBYTE(v28) = 0;
        LOBYTE(v29) = 0;
        LODWORD(v30) = 0;
        LOBYTE(v31) = 0;
        LOBYTE(v32) = 0;
        LOBYTE(v33) = 0;
        LODWORD(v34) = 0;
        LOBYTE(v35) = 0;
        LOBYTE(v36) = 0;
        LOBYTE(v37) = 0;
        v38 = 0;
        LOBYTE(v39) = 0;
        LOBYTE(v40) = 0;
        v41 = 0;
        LOBYTE(v14) = a2;
        v19 = *a5.i8;
        goto LABEL_39;
    }

    goto LABEL_43;
  }

  v14 = a2 & 0xFLL;
  v15 = a2 & 0xFFFFFFFFFFFFFFF0;
  v16 = veor_s8(vmul_s32(vorr_s8(vshl_u32(vmul_s32(*a1, 0xAB0E9789239B961BLL), 0xFFFFFFF0FFFFFFEFLL), vmul_s32(*a1, 0x97890000CB0D8000)), 0x38B34AE5AB0E9789), *a5.i8);
  *a10.i8 = vmla_s32(0xBCAA747561CCD1BLL, vadd_s32(vorr_s8(vshl_u32(v16, 0x1100000013), vshl_u32(v16, 0xFFFFFFF1FFFFFFF3)), *a5.i8), 0x500000005);
  v17 = veor_s8(vmul_s32(vorr_s8(vshl_u32(vmul_s32(a1[1], 0xA1E38B9338B34AE5), 0xFFFFFFF2FFFFFFF1), vmul_s32(a1[1], 0x2E4C000095CA0000)), 0x239B961BA1E38B93), *a5.i8);
  v18 = vdup_lane_s32(*a10.i8, 0);
  v18.i32[0] = a3;
  v19 = vmla_s32(0x32AC3B1796CD1C35, vadd_s32(v18, vorr_s8(vshl_u32(v17, 0xD0000000FLL), vshl_u32(v17, 0xFFFFFFEDFFFFFFEFLL))), 0x500000005);
  v20 = a1 + 2;
  v21 = &a1[2] + v15;
  v22 = (a1 + v15);
  while (v20 < v22)
  {
    v23 = *v20;
    v24 = v20[1];
    v20 += 2;
    v25 = veor_s8(*a10.i8, vmul_s32(vorr_s8(vshl_u32(vmul_s32(v23, 0xAB0E9789239B961BLL), 0xFFFFFFF0FFFFFFEFLL), vmul_s32(v23, 0x97890000CB0D8000)), 0x38B34AE5AB0E9789));
    *a10.i8 = vmla_s32(0xBCAA747561CCD1BLL, vadd_s32(vorr_s8(vshl_u32(v25, 0x1100000013), vshl_u32(v25, 0xFFFFFFF1FFFFFFF3)), vzip1_s32(vdup_lane_s32(*a10.i8, 1), v19)), 0x500000005);
    v26 = veor_s8(v19, vmul_s32(vorr_s8(vshl_u32(vmul_s32(v24, 0xA1E38B9338B34AE5), 0xFFFFFFF2FFFFFFF1), vmul_s32(v24, 0x2E4C000095CA0000)), 0x239B961BA1E38B93));
    v27 = vdup_lane_s32(*a10.i8, 0);
    v27.i32[0] = v19.i32[1];
    v19 = vmla_s32(0x32AC3B1796CD1C35, vadd_s32(v27, vorr_s8(vshl_u32(v26, 0xD0000000FLL), vshl_u32(v26, 0xFFFFFFEDFFFFFFEFLL))), 0x500000005);
  }

  a5 = a10;
  a5.i32[1] = v19.i32[1];
  v19.i32[1] = a10.i32[1];
  v10.i8[0] = 0;
  LOBYTE(v28) = 0;
  LOBYTE(v29) = 0;
  LODWORD(v30) = 0;
  LOBYTE(v31) = 0;
  LOBYTE(v32) = 0;
  LOBYTE(v33) = 0;
  LODWORD(v34) = 0;
  LOBYTE(v35) = 0;
  LOBYTE(v36) = 0;
  LOBYTE(v37) = 0;
  v38 = 0;
  LOBYTE(v39) = 0;
  LOBYTE(v40) = 0;
  v41 = 0;
  switch(v14)
  {
    case 1uLL:
      LOBYTE(v28) = 0;
      LOBYTE(v29) = 0;
      LODWORD(v30) = 0;
      LOBYTE(v31) = 0;
      LOBYTE(v32) = 0;
      LOBYTE(v33) = 0;
      LODWORD(v34) = 0;
      LOBYTE(v35) = 0;
      LOBYTE(v36) = 0;
      LOBYTE(v37) = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10.i8[0] = v22->i8[0];
      break;
    case 2uLL:
      LOBYTE(v29) = 0;
      LODWORD(v30) = 0;
      LOBYTE(v31) = 0;
      LOBYTE(v32) = 0;
      LOBYTE(v33) = 0;
      LODWORD(v34) = 0;
      LOBYTE(v35) = 0;
      LOBYTE(v36) = 0;
      LOBYTE(v37) = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10.i32[0] = v22->u16[0];
      LODWORD(v28) = v10.i32[0] >> 8;
      break;
    case 3uLL:
      LODWORD(v30) = 0;
      LOBYTE(v31) = 0;
      LOBYTE(v32) = 0;
      LOBYTE(v33) = 0;
      LODWORD(v34) = 0;
      LOBYTE(v35) = 0;
      LOBYTE(v36) = 0;
      LOBYTE(v37) = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10.i32[0] = v22->u16[0] | (v22->u8[2] << 16);
      LODWORD(v28) = v10.i32[0] >> 8;
      LOBYTE(v29) = v22->i8[2];
      break;
    case 4uLL:
      LOBYTE(v31) = 0;
      LOBYTE(v32) = 0;
      LOBYTE(v33) = 0;
      LODWORD(v34) = 0;
      LOBYTE(v35) = 0;
      LOBYTE(v36) = 0;
      LOBYTE(v37) = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10.i32[0] = v22->i32[0];
      LODWORD(v28) = v22->i32[0] >> 8;
      LODWORD(v29) = HIWORD(v22->i32[0]);
      LODWORD(v30) = HIBYTE(v22->i32[0]);
      break;
    case 5uLL:
      LOBYTE(v32) = 0;
      LOBYTE(v33) = 0;
      LODWORD(v34) = 0;
      LOBYTE(v35) = 0;
      LOBYTE(v36) = 0;
      LOBYTE(v37) = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10.i32[0] = *(v21 - 4);
      LODWORD(v28) = v10.i32[0] >> 8;
      LODWORD(v29) = HIWORD(v10.i32[0]);
      LODWORD(v30) = HIBYTE(v10.i32[0]);
      LOBYTE(v31) = *(v21 - 12);
      break;
    case 6uLL:
      LOBYTE(v33) = 0;
      LODWORD(v34) = 0;
      LOBYTE(v35) = 0;
      LOBYTE(v36) = 0;
      LOBYTE(v37) = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10.i32[0] = *(v21 - 4);
      LODWORD(v28) = v10.i32[0] >> 8;
      LODWORD(v29) = HIWORD(v10.i32[0]);
      LODWORD(v30) = HIBYTE(v10.i32[0]);
      LODWORD(v31) = *(v21 - 6);
      LODWORD(v32) = v31 >> 8;
      break;
    case 7uLL:
      LODWORD(v34) = 0;
      LOBYTE(v35) = 0;
      LOBYTE(v36) = 0;
      LOBYTE(v37) = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10.i32[0] = *(v21 - 4);
      LODWORD(v28) = v10.i32[0] >> 8;
      LODWORD(v29) = HIWORD(v10.i32[0]);
      LODWORD(v30) = HIBYTE(v10.i32[0]);
      LODWORD(v31) = *(v21 - 6) | (*(v21 - 10) << 16);
      LODWORD(v32) = v31 >> 8;
      LOBYTE(v33) = *(v21 - 10);
      break;
    case 8uLL:
      LOBYTE(v35) = 0;
      LOBYTE(v36) = 0;
      LOBYTE(v37) = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10 = *v22;
      v28 = *v22 >> 8;
      v29 = *v22 >> 16;
      v30 = *v22 >> 24;
      v31 = HIDWORD(*v22);
      v32 = *v22 >> 40;
      v33 = HIWORD(*v22);
      v34 = HIBYTE(*v22);
      break;
    case 9uLL:
      LOBYTE(v36) = 0;
      LOBYTE(v37) = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10 = *(v21 - 16);
      v28 = *&v10 >> 8;
      v29 = *&v10 >> 16;
      v30 = *&v10 >> 24;
      v31 = HIDWORD(*&v10);
      v32 = *&v10 >> 40;
      v33 = HIWORD(*&v10);
      v34 = HIBYTE(*&v10);
      LOBYTE(v35) = *(v21 - 8);
      break;
    case 0xAuLL:
      LOBYTE(v37) = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10 = *(v21 - 16);
      v28 = *&v10 >> 8;
      v29 = *&v10 >> 16;
      v30 = *&v10 >> 24;
      v31 = HIDWORD(*&v10);
      v32 = *&v10 >> 40;
      v33 = HIWORD(*&v10);
      v34 = HIBYTE(*&v10);
      v35 = *(v21 - 4);
      v36 = v35 >> 8;
      break;
    case 0xBuLL:
      v38 = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10 = *(v21 - 16);
      v28 = *&v10 >> 8;
      v29 = *&v10 >> 16;
      v30 = *&v10 >> 24;
      v31 = HIDWORD(*&v10);
      v32 = *&v10 >> 40;
      v33 = HIWORD(*&v10);
      v34 = HIBYTE(*&v10);
      v35 = *(v21 - 4) | (*(v21 - 6) << 16);
      v36 = v35 >> 8;
      LOBYTE(v37) = *(v21 - 6);
      break;
    case 0xCuLL:
      LOBYTE(v39) = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      v10 = *(v21 - 16);
      v28 = *&v10 >> 8;
      v29 = *&v10 >> 16;
      v30 = *&v10 >> 24;
      v31 = HIDWORD(*&v10);
      v32 = *&v10 >> 40;
      v33 = HIWORD(*&v10);
      v34 = HIBYTE(*&v10);
      v35 = *(v21 - 2);
      v36 = v35 >> 8;
      v37 = HIWORD(v35);
      v38 = HIBYTE(v35);
      break;
    case 0xDuLL:
      LOBYTE(v40) = 0;
      v41 = 0;
      v10 = *(v21 - 16);
      v28 = *&v10 >> 8;
      v29 = *&v10 >> 16;
      v30 = *&v10 >> 24;
      v31 = HIDWORD(*&v10);
      v32 = *&v10 >> 40;
      v33 = HIWORD(*&v10);
      v34 = HIBYTE(*&v10);
      v35 = *(v21 - 2);
      v36 = v35 >> 8;
      v37 = HIWORD(v35);
      v38 = HIBYTE(v35);
      LOBYTE(v39) = *(v21 - 4);
      break;
    case 0xEuLL:
      v41 = 0;
      v10 = *(v21 - 16);
      v28 = *&v10 >> 8;
      v29 = *&v10 >> 16;
      v30 = *&v10 >> 24;
      v31 = HIDWORD(*&v10);
      v32 = *&v10 >> 40;
      v33 = HIWORD(*&v10);
      v34 = HIBYTE(*&v10);
      v35 = *(v21 - 2);
      v36 = v35 >> 8;
      v37 = HIWORD(v35);
      v38 = HIBYTE(v35);
      v39 = *(v21 - 2);
      v40 = v39 >> 8;
      break;
    case 0xFuLL:
      v10 = *(v21 - 16);
      v28 = *&v10 >> 8;
      v29 = *&v10 >> 16;
      v30 = *&v10 >> 24;
      v31 = HIDWORD(*&v10);
      v32 = *&v10 >> 40;
      v33 = HIWORD(*&v10);
      v34 = HIBYTE(*&v10);
      v35 = *(v21 - 2);
      v36 = v35 >> 8;
      v37 = HIWORD(v35);
      v38 = HIBYTE(v35);
      v39 = *(v21 - 2) | (*(v21 - 2) << 16);
      v40 = v39 >> 8;
      v41 = *(v21 - 2);
      break;
    default:
      break;
  }

LABEL_39:
  v13 = a5.u32[1];
  a3 = a5.i32[0];
  v12 = v19.i32[0];
  v11 = v19.u32[1];
  if (v14 <= 0xFu)
  {
    if (((1 << v14) & 0xF0) != 0)
    {
      goto LABEL_49;
    }

    if (((1 << v14) & 0xF00) != 0)
    {
      a3 = v19.u32[1];
      goto LABEL_48;
    }

    if (((1 << v14) & 0xF000) == 0)
    {
      goto LABEL_51;
    }

LABEL_43:
    v43 = v35 | (v36 << 8) | (v37 << 16) | (v38 << 24);
    v12 = (-1578923117 * ((-1781923840 * v43) | ((951274213 * v43) >> 15))) ^ v19.i32[0];
    a3 = v19.u32[1];
LABEL_48:
    v44 = v31 | (v32 << 8) | (v33 << 16) | (v34 << 24);
    v11 = (951274213 * ((-1752629248 * v44) | ((-1425107063 * v44) >> 16))) ^ a3;
LABEL_49:
    a3 = v12;
LABEL_50:
    v45 = v10.u8[0] | (v28 << 8) | (v29 << 16) | (v30 << 24);
    v46 = -1425107063 * ((-888307712 * v45) | ((597399067 * v45) >> 17));
    v12 = a3;
    a3 = v46 ^ a5.i32[0];
    v13 = a5.u32[1];
  }

LABEL_51:
  if (v14 > 8u)
  {
    if (v14 <= 0xCu)
    {
      switch(v14)
      {
        case 9u:
          v48 = v35;
          break;
        case 0xAu:
          v48 = v35 | (v36 << 8);
          break;
        case 0xBu:
          v48 = v35 | (v36 << 8) | (v37 << 16);
          break;
        default:
          goto LABEL_81;
      }

      v12 ^= -1578923117 * ((-1781923840 * v48) | ((951274213 * v48) >> 15));
      goto LABEL_81;
    }

    if (v14 == 13)
    {
      v50 = v39;
    }

    else if (v14 == 14)
    {
      v50 = v39 | (v40 << 8);
    }

    else
    {
      v50 = v39 | (v40 << 8) | (v41 << 16);
    }

    v13 ^= 597399067 * ((776732672 * v50) | ((-1578923117 * v50) >> 14));
  }

  else
  {
    if (v14 > 4u)
    {
      switch(v14)
      {
        case 5u:
          v49 = v31;
          break;
        case 6u:
          v49 = v31 | (v32 << 8);
          break;
        case 7u:
          v49 = v31 | (v32 << 8) | (v33 << 16);
          break;
        default:
          goto LABEL_81;
      }

      v11 ^= 951274213 * ((-1752629248 * v49) | ((-1425107063 * v49) >> 16));
      goto LABEL_81;
    }

    switch(v14)
    {
      case 1u:
LABEL_69:
        v47 = v10.u8[0];
        goto LABEL_71;
      case 2u:
LABEL_70:
        v47 = v10.u8[0] | (v28 << 8);
        goto LABEL_71;
      case 3u:
LABEL_56:
        v47 = v10.u8[0] | (v28 << 8) | (v29 << 16);
LABEL_71:
        a3 ^= -1425107063 * ((-888307712 * v47) | ((597399067 * v47) >> 17));
        break;
    }
  }

LABEL_81:
  *a5.i8 = veor_s8(__PAIR64__(v12, v11), vdup_n_s32(a2));
  v51 = a5.i32[0] + a5.i32[1] + (v13 ^ a2) + (a3 ^ a2);
  v52 = -1028477387 * ((-2048144789 * (v51 ^ HIWORD(v51))) ^ ((-2048144789 * (v51 ^ HIWORD(v51))) >> 13));
  v53 = -2048144789 * ((v51 + (v13 ^ a2)) ^ ((v51 + (v13 ^ a2)) >> 16));
  v54 = vdup_n_s32(v51);
  v55 = (-1028477387 * (v53 ^ (v53 >> 13))) ^ ((-1028477387 * (v53 ^ (v53 >> 13))) >> 16);
  *a5.i8 = vadd_s32(v54, *a5.i8);
  *a5.i8 = vmul_s32(veor_s8(vshr_n_u32(*a5.i8, 0x10uLL), *a5.i8), vdup_n_s32(0x85EBCA6B));
  *a5.i8 = vmul_s32(veor_s8(vshr_n_u32(*a5.i8, 0xDuLL), *a5.i8), vdup_n_s32(0xC2B2AE35));
  *a5.i8 = veor_s8(vshr_n_u32(*a5.i8, 0x10uLL), *a5.i8);
  v56 = a5.i32[0] + (v52 ^ HIWORD(v52)) + v55 + a5.i32[1];
  *a5.i8 = vadd_s32(vdup_n_s32(v56), *a5.i8);
  result = vextq_s8(a5, a5, 0xCuLL);
  result.n128_u32[0] = v56;
  result.n128_u32[3] = v56 + v55;
  *a4 = result;
  return result;
}

unint64_t _PAS_MurmurHash3_x64_128(unsigned __int8 *a1, unsigned int a2, unsigned int a3, unint64_t *a4)
{
  v4 = a3;
  if (a2 < 0x10)
  {
    LODWORD(v5) = a2;
    switch(a2)
    {
      case 1u:
        result = *a1;
        v7 = a3;
LABEL_44:
        v43 = result;
        goto LABEL_51;
      case 2u:
        result = *a1;
        LODWORD(v15) = result >> 8;
        v7 = a3;
LABEL_49:
        v43 = result | (v15 << 8);
        goto LABEL_51;
      case 3u:
        v33 = a1[2];
        result = *a1 | (v33 << 16);
        LODWORD(v15) = result >> 8;
        LOBYTE(v16) = v33;
        v7 = a3;
LABEL_48:
        v43 = result | (v15 << 8) | (v16 << 16);
        goto LABEL_51;
      case 4u:
        result = *a1;
        LODWORD(v15) = result >> 8;
        LODWORD(v16) = WORD1(result);
        LODWORD(v17) = BYTE3(result);
        v7 = a3;
LABEL_46:
        v43 = result | (v15 << 8) | (v16 << 16) & 0xFFFFFFFF00FFFFFFLL | (v17 << 24);
        goto LABEL_51;
      case 5u:
        v18 = a1[4];
        result = *a1;
        v31 = result | (v18 << 32);
        v15 = v31 >> 8;
        v16 = v31 >> 16;
        v17 = v31 >> 24;
        v7 = a3;
LABEL_45:
        v43 = result | (v15 << 8) | (v16 << 16) & 0xFFFFFFFF00FFFFFFLL | (v17 << 24) | (v18 << 32);
        goto LABEL_51;
      case 6u:
        LODWORD(v18) = *(a1 + 2);
        result = *a1;
        v36 = result & 0xFFFF0000FFFFFFFFLL | (v18 << 32);
        v15 = v36 >> 8;
        v16 = v36 >> 16;
        v17 = v36 >> 24;
        LODWORD(v19) = v18 >> 8;
        v7 = a3;
LABEL_47:
        v43 = result | (v15 << 8) | (v16 << 16) & 0xFFFFFFFF00FFFFFFLL | (v17 << 24) | (v18 << 32) | (v19 << 40);
        goto LABEL_51;
      case 7u:
        LODWORD(v18) = *(a1 + 2) | (a1[6] << 16);
        result = *a1;
        v40 = result & 0xFF000000FFFFFFFFLL | ((v18 & 0xFFFFFF) << 32);
        v15 = v40 >> 8;
        v16 = v40 >> 16;
        v17 = v40 >> 24;
        LODWORD(v19) = v18 >> 8;
        LOBYTE(v20) = BYTE2(v18);
        v7 = a3;
LABEL_50:
        v43 = result | (v15 << 8) | (v16 << 16) & 0xFFFFFFFF00FFFFFFLL | (v17 << 24) | (v18 << 32) | (v19 << 40) | (v20 << 48);
LABEL_51:
        v4 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v43) | ((0x87C37B91114253D5 * v43) >> 33));
        goto LABEL_60;
      case 8u:
        LOBYTE(v22) = 0;
        LOBYTE(v23) = 0;
        LOBYTE(v24) = 0;
        LOBYTE(v25) = 0;
        LOBYTE(v26) = 0;
        LOBYTE(v27) = 0;
        v28 = 0;
        v21 = *a1;
        v15 = *a1 >> 8;
        v16 = *a1 >> 16;
        v17 = *a1 >> 24;
        v18 = HIDWORD(*a1);
        v19 = *a1 >> 40;
        v20 = HIWORD(*a1);
        goto LABEL_37;
      case 9u:
        LOBYTE(v23) = 0;
        LOBYTE(v24) = 0;
        LOBYTE(v25) = 0;
        LOBYTE(v26) = 0;
        LOBYTE(v27) = 0;
        v28 = 0;
        v21 = *a1;
        v15 = *a1 >> 8;
        v16 = *a1 >> 16;
        v17 = *a1 >> 24;
        v18 = HIDWORD(*a1);
        v19 = *a1 >> 40;
        v20 = HIWORD(*a1);
        LOBYTE(v22) = a1[8];
        goto LABEL_37;
      case 0xAu:
        LOBYTE(v24) = 0;
        LOBYTE(v25) = 0;
        LOBYTE(v26) = 0;
        LOBYTE(v27) = 0;
        v28 = 0;
        v21 = *a1;
        v15 = *a1 >> 8;
        v16 = *a1 >> 16;
        v17 = *a1 >> 24;
        v18 = HIDWORD(*a1);
        v19 = *a1 >> 40;
        v20 = HIWORD(*a1);
        LODWORD(v22) = *(a1 + 4);
        LODWORD(v23) = v22 >> 8;
        goto LABEL_37;
      case 0xBu:
        LOBYTE(v25) = 0;
        LOBYTE(v26) = 0;
        LOBYTE(v27) = 0;
        v28 = 0;
        v21 = *a1;
        v15 = *a1 >> 8;
        v16 = *a1 >> 16;
        v17 = *a1 >> 24;
        v18 = HIDWORD(*a1);
        v19 = *a1 >> 40;
        v20 = HIWORD(*a1);
        LODWORD(v22) = *(a1 + 4) | (a1[10] << 16);
        LODWORD(v23) = v22 >> 8;
        LOBYTE(v24) = a1[10];
        goto LABEL_37;
      case 0xCu:
        LOBYTE(v26) = 0;
        LOBYTE(v27) = 0;
        v28 = 0;
        v21 = *a1;
        v15 = *a1 >> 8;
        v16 = *a1 >> 16;
        v17 = *a1 >> 24;
        v18 = HIDWORD(*a1);
        v19 = *a1 >> 40;
        v20 = HIWORD(*a1);
        LODWORD(v22) = *(a1 + 2);
        LODWORD(v23) = v22 >> 8;
        LODWORD(v24) = WORD1(v22);
        LODWORD(v25) = BYTE3(v22);
LABEL_37:
        result = v21;
        break;
      case 0xDu:
        LOBYTE(v27) = 0;
        v28 = 0;
        v26 = a1[12];
        v22 = *(a1 + 2);
        v32 = v22 | (v26 << 32);
        v21 = *a1;
        v15 = *a1 >> 8;
        v16 = *a1 >> 16;
        v17 = *a1 >> 24;
        v18 = HIDWORD(*a1);
        v19 = *a1 >> 40;
        v20 = HIWORD(*a1);
        v23 = v32 >> 8;
        v24 = v32 >> 16;
        v25 = v32 >> 24;
        result = *a1;
        break;
      case 0xEu:
        v28 = 0;
        v21 = *a1;
        v15 = *a1 >> 8;
        v16 = *a1 >> 16;
        v17 = *a1 >> 24;
        v18 = HIDWORD(*a1);
        v19 = *a1 >> 40;
        v20 = HIWORD(*a1);
        v22 = *(a1 + 2);
        LODWORD(v26) = *(a1 + 6);
        v38 = v22 & 0xFFFF0000FFFFFFFFLL | (*(a1 + 6) << 32);
        v23 = v38 >> 8;
        v24 = v38 >> 16;
        v25 = v38 >> 24;
        v27 = v26 >> 8;
        result = *a1;
        break;
      case 0xFu:
        v21 = *a1;
        v15 = *a1 >> 8;
        v16 = *a1 >> 16;
        v17 = *a1 >> 24;
        v18 = HIDWORD(*a1);
        v19 = *a1 >> 40;
        v20 = HIWORD(*a1);
        LODWORD(v26) = *(a1 + 6) | (a1[14] << 16);
        v22 = *(a1 + 2);
        v29 = v22 & 0xFF000000FFFFFFFFLL | ((v26 & 0xFFFFFF) << 32);
        v23 = v29 >> 8;
        v24 = v29 >> 16;
        v25 = v29 >> 24;
        v27 = v26 >> 8;
        v28 = a1[14];
        result = *a1;
        break;
      default:
        result = 0;
        LOBYTE(v15) = 0;
        LOBYTE(v16) = 0;
        LOBYTE(v17) = 0;
        LOBYTE(v18) = 0;
        LOBYTE(v19) = 0;
        LOBYTE(v20) = 0;
        v21 = 0;
        LOBYTE(v22) = 0;
        LOBYTE(v23) = 0;
        LOBYTE(v24) = 0;
        LOBYTE(v25) = 0;
        LOBYTE(v26) = 0;
        LOBYTE(v27) = 0;
        v28 = 0;
        v9 = v4;
        goto LABEL_41;
    }

    v7 = v4;
LABEL_42:
    v42 = v21 & 0xFF00000000000000 | result | (v15 << 8) | (v16 << 16) & 0xFFFFFFFF00FFFFFFLL | (v17 << 24) | (v18 << 32) | (v19 << 40) | (v20 << 48);
    v4 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v42) | ((0x87C37B91114253D5 * v42) >> 33));
    goto LABEL_43;
  }

  v5 = a2 & 0xFLL;
  v8 = a2 & 0xFFFFFFFFFFFFFFF0;
  v9 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *a1) | ((0x87C37B91114253D5 * *a1) >> 33))) ^ a3, 37) + a3) + 1390208809;
  v4 = 5 * (v9 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *(a1 + 1)) | ((0x4CF5AD432745937FLL * *(a1 + 1)) >> 31))) ^ a3, 33)) + 944331445;
  v10 = a1 + 16;
  v11 = &a1[v8 + 16];
  v12 = &a1[v8];
  while (v10 < v12)
  {
    v14 = *v10;
    v13 = *(v10 + 1);
    v10 += 16;
    v9 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v14) | ((0x87C37B91114253D5 * v14) >> 33))) ^ v9, 37) + v4) + 1390208809;
    v4 = 5 * (v9 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * v13) | ((0x4CF5AD432745937FLL * v13) >> 31))) ^ v4, 33)) + 944331445;
  }

  result = 0;
  LOBYTE(v15) = 0;
  LOBYTE(v16) = 0;
  LOBYTE(v17) = 0;
  LOBYTE(v18) = 0;
  LOBYTE(v19) = 0;
  LOBYTE(v20) = 0;
  v21 = a2 & 0xFLL;
  LOBYTE(v22) = 0;
  LOBYTE(v23) = 0;
  LOBYTE(v24) = 0;
  LOBYTE(v25) = 0;
  LOBYTE(v26) = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  switch(v5)
  {
    case 1:
      LOBYTE(v15) = 0;
      LOBYTE(v16) = 0;
      LOBYTE(v17) = 0;
      LOBYTE(v18) = 0;
      LOBYTE(v19) = 0;
      LOBYTE(v20) = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      result = *v12;
      break;
    case 2:
      LOBYTE(v16) = 0;
      LOBYTE(v17) = 0;
      LOBYTE(v18) = 0;
      LOBYTE(v19) = 0;
      LOBYTE(v20) = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      result = *v12;
      LODWORD(v15) = result >> 8;
      break;
    case 3:
      LOBYTE(v17) = 0;
      LOBYTE(v18) = 0;
      LOBYTE(v19) = 0;
      LOBYTE(v20) = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      result = *v12 | (v12[2] << 16);
      LODWORD(v15) = result >> 8;
      LOBYTE(v16) = v12[2];
      break;
    case 4:
      LOBYTE(v18) = 0;
      LOBYTE(v19) = 0;
      LOBYTE(v20) = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      result = *v12;
      LODWORD(v15) = result >> 8;
      LODWORD(v16) = WORD1(result);
      LODWORD(v17) = BYTE3(result);
      break;
    case 5:
      LOBYTE(v19) = 0;
      LOBYTE(v20) = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      v18 = v12[4];
      result = *v12;
      v37 = result | (v18 << 32);
      v15 = v37 >> 8;
      v16 = v37 >> 16;
      v17 = v37 >> 24;
      break;
    case 6:
      LOBYTE(v20) = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      LODWORD(v18) = *(v12 + 2);
      result = *v12;
      v41 = result & 0xFFFF0000FFFFFFFFLL | (*(v12 + 2) << 32);
      v15 = v41 >> 8;
      v16 = v41 >> 16;
      v17 = v41 >> 24;
      LODWORD(v19) = v18 >> 8;
      break;
    case 7:
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      LODWORD(v18) = *(v12 + 2) | (v12[6] << 16);
      result = *v12;
      v35 = result & 0xFF000000FFFFFFFFLL | ((v18 & 0xFFFFFF) << 32);
      v15 = v35 >> 8;
      v16 = v35 >> 16;
      v17 = v35 >> 24;
      LODWORD(v19) = v18 >> 8;
      LOBYTE(v20) = v12[6];
      break;
    case 8:
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      v21 = *v12;
      v15 = *v12 >> 8;
      v16 = *v12 >> 16;
      v17 = *v12 >> 24;
      v18 = HIDWORD(*v12);
      v19 = *v12 >> 40;
      v20 = HIWORD(*v12);
      goto LABEL_40;
    case 9:
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      v21 = *(v11 - 2);
      v15 = v21 >> 8;
      v16 = v21 >> 16;
      v17 = v21 >> 24;
      v18 = HIDWORD(v21);
      v19 = v21 >> 40;
      v20 = HIWORD(v21);
      LOBYTE(v22) = *(v11 - 8);
      goto LABEL_40;
    case 10:
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      v21 = *(v11 - 2);
      v15 = v21 >> 8;
      v16 = v21 >> 16;
      v17 = v21 >> 24;
      v18 = HIDWORD(v21);
      v19 = v21 >> 40;
      v20 = HIWORD(v21);
      LODWORD(v22) = *(v11 - 4);
      LODWORD(v23) = v22 >> 8;
      goto LABEL_40;
    case 11:
      LOBYTE(v25) = 0;
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      v21 = *(v11 - 2);
      v15 = v21 >> 8;
      v16 = v21 >> 16;
      v17 = v21 >> 24;
      v18 = HIDWORD(v21);
      v19 = v21 >> 40;
      v20 = HIWORD(v21);
      LODWORD(v22) = *(v11 - 4) | (*(v11 - 6) << 16);
      LODWORD(v23) = v22 >> 8;
      LOBYTE(v24) = *(v11 - 6);
      goto LABEL_40;
    case 12:
      LOBYTE(v26) = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      v21 = *(v11 - 2);
      v15 = v21 >> 8;
      v16 = v21 >> 16;
      v17 = v21 >> 24;
      v18 = HIDWORD(v21);
      v19 = v21 >> 40;
      v20 = HIWORD(v21);
      LODWORD(v22) = *(v11 - 2);
      LODWORD(v23) = v22 >> 8;
      LODWORD(v24) = WORD1(v22);
      LODWORD(v25) = BYTE3(v22);
      goto LABEL_40;
    case 13:
      LOBYTE(v27) = 0;
      v28 = 0;
      v21 = *(v11 - 2);
      v15 = v21 >> 8;
      v26 = *(v11 - 4);
      v22 = *(v11 - 2);
      v39 = v22 | (v26 << 32);
      v16 = v21 >> 16;
      v17 = v21 >> 24;
      v18 = HIDWORD(v21);
      v19 = v21 >> 40;
      v20 = HIWORD(v21);
      v23 = v39 >> 8;
      v24 = v39 >> 16;
      v25 = v39 >> 24;
LABEL_40:
      result = v21;
      break;
    case 14:
      v28 = 0;
      v21 = *(v11 - 2);
      v15 = v21 >> 8;
      v16 = v21 >> 16;
      v17 = v21 >> 24;
      v18 = HIDWORD(v21);
      v19 = v21 >> 40;
      v20 = HIWORD(v21);
      v22 = *(v11 - 2);
      LODWORD(v26) = *(v11 - 2);
      v30 = v22 & 0xFFFF0000FFFFFFFFLL | (*(v11 - 2) << 32);
      v23 = v30 >> 8;
      v24 = v30 >> 16;
      v25 = v30 >> 24;
      v27 = v26 >> 8;
      result = v21;
      break;
    case 15:
      v21 = *(v11 - 2);
      v15 = v21 >> 8;
      v16 = v21 >> 16;
      v17 = v21 >> 24;
      v18 = HIDWORD(v21);
      v19 = v21 >> 40;
      v20 = HIWORD(v21);
      LODWORD(v26) = *(v11 - 2) | (*(v11 - 2) << 16);
      v22 = *(v11 - 2);
      v34 = v22 & 0xFF000000FFFFFFFFLL | ((v26 & 0xFFFFFF) << 32);
      v23 = v34 >> 8;
      v24 = v34 >> 16;
      v25 = v34 >> 24;
      v27 = v26 >> 8;
      v28 = *(v11 - 2);
      result = v21;
      break;
    default:
      break;
  }

LABEL_41:
  v7 = v4;
  v4 = v9;
  if ((v5 & 0xF8) == 8)
  {
    goto LABEL_42;
  }

LABEL_43:
  switch(v5)
  {
    case 1:
      goto LABEL_44;
    case 2:
      goto LABEL_49;
    case 3:
      goto LABEL_48;
    case 4:
      goto LABEL_46;
    case 5:
      goto LABEL_45;
    case 6:
      goto LABEL_47;
    case 7:
      goto LABEL_50;
    case 9:
      v44 = v22;
      goto LABEL_59;
    case 10:
      v44 = v22 | (v23 << 8);
      goto LABEL_59;
    case 11:
      v44 = v22 | (v23 << 8) | (v24 << 16);
      goto LABEL_59;
    case 12:
      v44 = v22 | (v23 << 8) | (v24 << 16) & 0xFFFFFFFF00FFFFFFLL | (v25 << 24);
      goto LABEL_59;
    case 13:
      v44 = v22 | (v23 << 8) | (v24 << 16) & 0xFFFFFFFF00FFFFFFLL | (v25 << 24) | (v26 << 32);
      goto LABEL_59;
    case 14:
      v44 = v22 | (v23 << 8) | (v24 << 16) & 0xFFFFFFFF00FFFFFFLL | (v25 << 24) | (v26 << 32) | (v27 << 40);
      goto LABEL_59;
    case 15:
      v44 = v22 | (v23 << 8) | (v24 << 16) & 0xFFFFFFFF00FFFFFFLL | (v25 << 24) | (v26 << 32) | (v27 << 40) | (v28 << 48);
LABEL_59:
      v7 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * v44) | ((0x4CF5AD432745937FLL * v44) >> 31));
      break;
    default:
      break;
  }

LABEL_60:
  v45 = v7 ^ a2;
  v46 = v45 + (v4 ^ a2);
  v47 = v46 + v45;
  v48 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v46 ^ (v46 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v46 ^ (v46 >> 33))) >> 33));
  v49 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v47 ^ (v47 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v47 ^ (v47 >> 33))) >> 33));
  v50 = v49 ^ (v49 >> 33);
  v51 = v50 + (v48 ^ (v48 >> 33));
  *a4 = v51;
  a4[1] = v51 + v50;
  return result;
}

void sub_1A7F6F97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id procNameForPid(int a1, int *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *__error() = 0;
  getpid();
  v4 = *MEMORY[0x1E69E9BD0];
  v5 = sandbox_check();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 0;
      *a2 = 0;
    }

    else
    {
      v8 = __error();
      v6 = 0;
      *a2 = *v8;
    }
  }

  else
  {
    *__error() = 0;
    v7 = proc_name(a1, buffer, 0x400u);
    if (a2)
    {
      *a2 = *__error();
    }

    if ((v7 & 0x80000000) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v7 encoding:4];
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1A7F712C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F71E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F73C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F73D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F75790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__812(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E77F13F8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void _PASCompactStringArrayMinimizeSpace(char **a1)
{
  if (!a1)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASCompactStringArrayMinimizeSpace(struct _PASCompactStringArray * _Nonnull)"];
    [v1 handleFailureInFunction:v2 file:@"_PASCompactStringArray.mm" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"array"}];

    a1 = 0;
  }

  std::vector<unsigned char>::shrink_to_fit(a1);
}

uint64_t _PASCompactStringArrayFindString(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);

  return _PASCompactStringArrayFindStringWithSize(a1, __s, v4);
}

uint64_t *std::unique_ptr<proactive::pas::SynchronizedObject<anonymous namespace::HDGuardedData,proactive::pas::detail::RecursiveMutex>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    pthread_mutex_destroy((v2 + 8));

    JUMPOUT(0x1AC566470);
  }

  return result;
}

void sub_1A7F75EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  pthread_mutex_unlock((v11 + 8));
  _Unwind_Resume(a1);
}

void sub_1A7F761D0(_Unwind_Exception *a1)
{
  pthread_mutex_unlock((v5 + 8));

  _Unwind_Resume(a1);
}

void _ZN12_GLOBAL__N_110SimdVectorIDv8_ffE6resizeEm(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = (a2 + 7) >> 3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (v7 - *a1) >> 5;
  if (v5 <= v8)
  {
    if (v5 >= v8)
    {
      goto LABEL_15;
    }

    v18 = &v6[32 * v5];
    goto LABEL_14;
  }

  v9 = v5 - v8;
  v10 = *(a1 + 16);
  if (v5 - v8 <= (v10 - v7) >> 5)
  {
    bzero(*(a1 + 8), 32 * v9);
    v18 = (v7 + 32 * v9);
LABEL_14:
    *(a1 + 8) = v18;
    goto LABEL_15;
  }

  if ((a2 + 7) >> 62)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = v10 - v6;
  if (v11 >> 4 > v5)
  {
    v5 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v5;
  }

  _ZNSt3__114__split_bufferIDv8_fRN12_GLOBAL__N_120SimdAlignedAllocatorIS1_EEEC1EmmS5_(&v26, v12, v8, a1);
  v13 = v28[0];
  bzero(v28[0], 32 * v9);
  v28[0] = &v13[32 * v9];
  v14 = *(a1 + 8) - *a1;
  v15 = &v27[-v14];
  memcpy(&v27[-v14], *a1, v14);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  *(a1 + 8) = *v28;
  v28[0] = v16;
  v28[1] = v17;
  v26 = v16;
  v27 = v16;
  if (v16)
  {
    free(v16);
  }

LABEL_15:
  *(a1 + 24) = a2;
  if (v4 > a2)
  {
    v19 = *(a1 + 8) - *a1;
    if (*(a1 + 16) - *a1 > v19)
    {
      _ZNSt3__114__split_bufferIDv8_fRN12_GLOBAL__N_120SimdAlignedAllocatorIS1_EEEC1EmmS5_(&v26, v19 >> 5, v19 >> 5, a1);
      v20 = v26;
      v21 = *a1;
      if (v28[1] - v26 >= *(a1 + 16) - *a1)
      {
        if (v28[0] != v27)
        {
          v28[0] = v28[0] + ((v27 - v28[0] + 31) & 0xFFFFFFFFFFFFFFE0);
        }
      }

      else
      {
        v22 = *(a1 + 8) - v21;
        v23 = &v27[-v22];
        memcpy(&v27[-v22], v21, v22);
        v20 = *a1;
        *a1 = v23;
        v24 = *(a1 + 16);
        *(a1 + 8) = *v28;
        v28[0] = v20;
        v28[1] = v24;
        v26 = v20;
        v27 = v20;
      }

      if (v20)
      {
        free(v20);
      }
    }

    v25 = *(a1 + 24);
    if (v25)
    {
      bzero((*a1 + 4 * v25), *(a1 + 8) - (*a1 + 4 * v25));
    }
  }
}

void sub_1A7F76424(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A7F763F0);
}

void _ZN12_GLOBAL__N_110SimdVectorIDv8_ijE6resizeEm(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = (a2 + 7) >> 3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (v7 - *a1) >> 5;
  if (v5 <= v8)
  {
    if (v5 >= v8)
    {
      goto LABEL_15;
    }

    v18 = &v6[32 * v5];
    goto LABEL_14;
  }

  v9 = v5 - v8;
  v10 = *(a1 + 16);
  if (v5 - v8 <= (v10 - v7) >> 5)
  {
    bzero(*(a1 + 8), 32 * v9);
    v18 = (v7 + 32 * v9);
LABEL_14:
    *(a1 + 8) = v18;
    goto LABEL_15;
  }

  if ((a2 + 7) >> 62)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = v10 - v6;
  if (v11 >> 4 > v5)
  {
    v5 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v5;
  }

  _ZNSt3__114__split_bufferIDv8_fRN12_GLOBAL__N_120SimdAlignedAllocatorIS1_EEEC1EmmS5_(&v26, v12, v8, a1);
  v13 = v28[0];
  bzero(v28[0], 32 * v9);
  v28[0] = &v13[32 * v9];
  v14 = *(a1 + 8) - *a1;
  v15 = &v27[-v14];
  memcpy(&v27[-v14], *a1, v14);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  *(a1 + 8) = *v28;
  v28[0] = v16;
  v28[1] = v17;
  v26 = v16;
  v27 = v16;
  if (v16)
  {
    free(v16);
  }

LABEL_15:
  *(a1 + 24) = a2;
  if (v4 > a2)
  {
    v19 = *(a1 + 8) - *a1;
    if (*(a1 + 16) - *a1 > v19)
    {
      _ZNSt3__114__split_bufferIDv8_fRN12_GLOBAL__N_120SimdAlignedAllocatorIS1_EEEC1EmmS5_(&v26, v19 >> 5, v19 >> 5, a1);
      v20 = v26;
      v21 = *a1;
      if (v28[1] - v26 >= *(a1 + 16) - *a1)
      {
        if (v28[0] != v27)
        {
          v28[0] = v28[0] + ((v27 - v28[0] + 31) & 0xFFFFFFFFFFFFFFE0);
        }
      }

      else
      {
        v22 = *(a1 + 8) - v21;
        v23 = &v27[-v22];
        memcpy(&v27[-v22], v21, v22);
        v20 = *a1;
        *a1 = v23;
        v24 = *(a1 + 16);
        *(a1 + 8) = *v28;
        v28[0] = v20;
        v28[1] = v24;
        v26 = v20;
        v27 = v20;
      }

      if (v20)
      {
        free(v20);
      }
    }

    v25 = *(a1 + 24);
    if (v25)
    {
      bzero((*a1 + 4 * v25), *(a1 + 8) - (*a1 + 4 * v25));
    }
  }
}

void sub_1A7F76624(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A7F765F0);
}

void *_ZNSt3__114__split_bufferIDv8_fRN12_GLOBAL__N_120SimdAlignedAllocatorIS1_EEEC1EmmS5_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x40uLL, 32 * a2, 0x1000040E0EAB150uLL))
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v11, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

    v7 = memptr;
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[32 * a3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v8;
  a1[3] = &v7[32 * a2];
  return a1;
}

void entropy(uint64_t ***a1, int a2, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2 != 0xFFFF && a3 != 0xFFFF)
  {
    goto LABEL_36;
  }

  v7 = (**a1)[1] - ***a1;
  v8 = v7 | 0xF;
  memptr = 0;
  v42 = 0;
  if ((v7 | 0xF) > 0x800)
  {
    v9 = malloc_type_posix_memalign(&memptr, 0x10uLL, v7, 0xDC845B6EuLL);
    LOBYTE(v42) = 0;
    if (v9)
    {
      v38 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v38);
    }

    v10 = memptr;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    bzero(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7 | 0xF);
    v10 = ((&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v11 = v7 | 3;
  memptr = 0;
  v42 = 0;
  if ((v7 | 3) > 0x800)
  {
    v37 = malloc_type_posix_memalign(&memptr, 8uLL, v7, 0x5639671EuLL);
    LOBYTE(v42) = 0;
    if (v37)
    {
      v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v39);
    }

    v12 = memptr;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v12, v11);
  }

  if ((a3 & a2) == 0xFFFF)
  {
    v13 = **a1;
    v14 = *v13;
    if (v13[1] == *v13)
    {
      v16 = 0uLL;
      v17 = 0uLL;
    }

    else
    {
      v15 = 0;
      v16 = 0uLL;
      v17 = 0uLL;
      do
      {
        v18 = (v14 + 32 * v15);
        v19 = *v18;
        v20 = v18[1];
        v17 = vaddq_f32(v17, v20);
        v16 = vaddq_f32(v16, *v18);
        v21 = &v10[8 * v15];
        *v21 = v19;
        v21[1] = v20;
        ++v15;
        v13 = **a1;
        v14 = *v13;
      }

      while (v15 < (v13[1] - *v13) >> 5);
    }

    v25 = *(v13 + 6);
    v34 = vaddq_f32(v16, v17);
    v27 = vaddv_f32(vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)));
LABEL_30:
    if (v25 >= 1)
    {
      v35 = v27;
      cblas_sscal(v25, 1.0 / v35, v10, 1);
      LODWORD(memptr) = (v25 + 7) & 0xFFFFFFF8;
      vvlog2f(v12, v10, &memptr);
      cblas_sdot(v25, v10, 1, v12, 1);
    }

    goto LABEL_32;
  }

  if (a2 == 0xFFFF)
  {
    v22 = **a1;
    v23 = v22[3];
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      v26 = v22[4];
      v27 = 0.0;
      do
      {
        if (*(v26 + 4 * v24) == a3)
        {
          v28 = *(*v22 + 4 * v24);
          v27 = v27 + v28;
          v10[v25++] = v28;
        }

        ++v24;
      }

      while (v23 > v24);
      goto LABEL_30;
    }
  }

  else
  {
    v29 = **a1;
    v30 = v29[3];
    if (v30)
    {
      v31 = 0;
      v25 = 0;
      v32 = v29[4];
      v27 = 0.0;
      do
      {
        if (*(v32 + 4 * v31 + 2) == a2)
        {
          v33 = *(*v29 + 4 * v31);
          v27 = v27 + v33;
          v10[v25++] = v33;
        }

        ++v31;
      }

      while (v30 > v31);
      goto LABEL_30;
    }
  }

LABEL_32:
  if (v11 >= 0x801)
  {
    free(v12);
  }

  if (v8 >= 0x801)
  {
    free(v10);
  }

LABEL_36:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1A7F7767C(_Unwind_Exception *a1)
{
  v2 = v1;
  pthread_mutex_unlock((v2 + 8));
  _Unwind_Resume(a1);
}

unint64_t *_PASRngSeed64(unint64_t *result, unint64_t a2)
{
  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((a2 | 1) ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * ((a2 | 1) ^ (a2 >> 30))) >> 27));
  v3 = 0x63660277528772BBLL * ((0x3CD0EB9D47532DFBLL * ((a2 | 1) ^ (a2 >> 29))) ^ ((0x3CD0EB9D47532DFBLL * ((a2 | 1) ^ (a2 >> 29))) >> 26));
  *result = v2 ^ (v2 >> 31);
  result[1] = v3 ^ (v3 >> 33);
  return result;
}

void _PASBuddyAllocatorCreateWithAlignedBuffer(char a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((a1 & 0xF) != 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"struct _PASBuddyAllocator *_PASBuddyAllocatorCreateWithAlignedBuffer(void * _Nonnull, size_t)"}];
    [v8 handleFailureInFunction:v9 file:@"_PASBuddyAllocator.mm" lineNumber:691 description:@"_PASBuddyAllocator buffer must be 16-byte aligned."];
  }

  LODWORD(v3) = -1;
  do
  {
    v4 = proactive::pas::buddyalloc::heapSizeForLevels((v3 + 2));
    v3 = (v3 + 1);
  }

  while (v4 <= a2);
  if (v3)
    v5 = {;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v11 = proactive::pas::buddyalloc::heapSizeForLevels(v3);
      v12 = 2048;
      v13 = a2;
      _os_log_debug_impl(&dword_1A7F47000, v5, OS_LOG_TYPE_DEBUG, "_PASBuddyAllocator selecting heap size %zu to fit in buffer of size %zu.", buf, 0x16u);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"struct _PASBuddyAllocator *_PASBuddyAllocatorCreateWithAlignedBuffer(void * _Nonnull, size_t)"}];
    [v6 handleFailureInFunction:v7 file:@"_PASBuddyAllocator.mm" lineNumber:694 description:{@"_PASBuddyAllocator can't create heap of size %zu bytes.", a2}];
  }

  operator new();
}

unint64_t proactive::pas::buddyalloc::heapSizeForLevels(proactive::pas::buddyalloc *this)
{
  if (this)
  {
    v1 = this - 1;
    v2 = 16 << (this - 1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::blockStorageSizeForLevels"];
    [v4 handleFailureInFunction:v5 file:@"_PASBuddyAllocatorPOD.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::bitmapSizeForLevels"];
    [v6 handleFailureInFunction:v7 file:@"_PASBuddyAllocatorPOD.h" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];

    v1 = -1;
  }

  return v2 + 2 * (((1 << v1) + 7) >> 3);
}

void sub_1A7F7AC00(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id anonymous namespace::logHandle(_anonymous_namespace_ *this)
{
  {
  }

  return v2;
}

void ___ZN12_GLOBAL__N_19logHandleEv_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "buddyalloc");

  objc_autoreleasePoolPop(v0);
}

uint64_t _PASBuddyAllocatorDestroy(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1)
    {
      MEMORY[0x1AC566450](v1, 0x20C8093837F09);
    }

    JUMPOUT(0x1AC566470);
  }

  return result;
}

uint64_t *anonymous namespace::BuddyAllocator::alloc(os_unfair_lock_s *this, unint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_23;
  }

  v4 = 0;
  os_unfair_lock_opaque = this[2]._os_unfair_lock_opaque;
  v6 = os_unfair_lock_opaque - 1;
  while (v6 != v4)
  {
    v7 = 16 << v4++;
    if (v7 >= a2)
    {
      v8 = os_unfair_lock_opaque - v4;
      v9 = os_unfair_lock_opaque - v4 + 1;
      goto LABEL_7;
    }
  }

  v8 = 0;
  v7 = 16 << v6;
  v9 = 1;
LABEL_7:
  if (v7 < a2)
    v10 = {;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = *&this->_os_unfair_lock_opaque;
      v21 = proactive::pas::buddyalloc::blockStorageSizeForLevels(this[2]._os_unfair_lock_opaque);
      *buf = 134218496;
      *&buf[4] = v20;
      v30 = 2048;
      v31 = a2;
      v32 = 2048;
      v33 = v21;
      _os_log_error_impl(&dword_1A7F47000, v10, OS_LOG_TYPE_ERROR, "_PASBuddyAllocator 0x%lx failed request to allocate %zu bytes on heap of size %zu", buf, 0x20u);
    }

LABEL_22:

LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  *buf = this + 16;
  os_unfair_lock_lock(this + 18);
  if (!v11)
  {
    v10 = os_unfair_lock_unlock(this + 18);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v22 = *&this->_os_unfair_lock_opaque;
      v23 = proactive::pas::buddyalloc::blockStorageSizeForLevels(this[2]._os_unfair_lock_opaque);
      *buf = 134218496;
      *&buf[4] = v22;
      v30 = 2048;
      v31 = a2;
      v32 = 2048;
      v33 = v23;
      _os_log_debug_impl(&dword_1A7F47000, v10, OS_LOG_TYPE_DEBUG, "_PASBuddyAllocator 0x%lx out of memory while requesting %zu bytes on heap of size %zu", buf, 0x20u);
    }

    goto LABEL_22;
  }

  v12 = this[2]._os_unfair_lock_opaque;
  v13 = *&this[16]._os_unfair_lock_opaque;
  v14 = v13[2];
  v15 = (16 << (v12 - v9)) + v14;
  if (v15 <= v13[3])
  {
    v16 = v13[3];
  }

  else
  {
    v16 = (16 << (v12 - v9)) + v14;
  }

  v13[2] = v15;
  v13[3] = v16;
  ++v13[4];
  if (!v12)
  {
    v28 = v15;
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::blockStorageSizeForLevels"];
    [v24 handleFailureInFunction:v25 file:@"_PASBuddyAllocatorPOD.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];

    LOBYTE(v12) = 0;
    v15 = v28;
  }

  if (v15 > 16 << (v12 - 1))
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *(anonymous namespace)::BuddyAllocator::allocBlock"];
    [v26 handleFailureInFunction:v27 file:@"_PASBuddyAllocator.mm" lineNumber:231 description:@"bytes allocated exceeded heap size"];
  }

  os_unfair_lock_unlock(this + 18);
LABEL_24:
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t proactive::pas::buddyalloc::blockStorageSizeForLevels(proactive::pas::buddyalloc *this)
{
  v1 = this;
  if (!this)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::blockStorageSizeForLevels"];
    [v3 handleFailureInFunction:v4 file:@"_PASBuddyAllocatorPOD.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];
  }

  return 16 << (v1 - 1);
}

uint64_t *anonymous namespace::BuddyAllocator::allocBlock_locked(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = *(*(**a2 + 40) + 8 * a3);
  if (v6)
  {
LABEL_2:
    return v6;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = a3 - 1;
  v6 = v9;
  if (v9)
  {
    v10 = **a2;
    v11 = *(a1 + 8);
    v12 = ~(-1 << v8);
    v13 = (((v9 - *a1) >> (v11 - a3 + 4)) + v12) >> 3;
    v14 = 1 << ((((v9 - *a1) >> (v11 - a3 + 4)) + ~(-1 << v8)) & 7);
    if ((v14 & *(*v10 + v13)) != 0)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void (anonymous namespace)::BuddyAllocator::splitBlock(SyncPtr &, void *, unsigned int)"}];
      [v19 handleFailureInFunction:v22 file:@"_PASBuddyAllocator.mm" lineNumber:177 description:@"splitBlock called on an already-split block"];

      v10 = **a2;
      v11 = *(a1 + 8);
      v20 = ((v6 - *a1) >> (v11 - a3 + 4)) + v12;
      v13 = v20 >> 3;
      v14 = 1 << (v20 & 7);
    }

    if ((v14 & *(v10[1] + v13)) != 0)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void (anonymous namespace)::BuddyAllocator::splitBlock(SyncPtr &, void *, unsigned int)"}];
      [v21 handleFailureInFunction:v23 file:@"_PASBuddyAllocator.mm" lineNumber:178 description:@"splitBlock called on a block with an allocated child"];

      v11 = *(a1 + 8);
    }

    v15 = (v6 + (16 << (v11 + ~a3)));
    *v15 = 0;
    v15[1] = 0;
    *(*(**a2 + 40) + 8 * a3) = v15;
    *v6 = 0;
    v6[1] = 0;
    *(*(**a2 + 40) + 8 * a3) = v6;
    v16 = (((v6 - *a1) >> (*(a1 + 8) - a3 + 4)) + v12) >> 3;
    *(***a2 + v16) |= 1 << ((((v6 - *a1) >> (*(a1 + 8) - a3 + 4)) + v12) & 7);
    v6 = *(*(**a2 + 40) + 8 * a3);
    if (!v6)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void *(anonymous namespace)::BuddyAllocator::allocBlock_locked(SyncPtr &, unsigned int)"}];
      [v17 handleFailureInFunction:v18 file:@"_PASBuddyAllocator.mm" lineNumber:212 description:@"allocBlock expected non-empty freeList"];

      v6 = *(*(**a2 + 40) + 8 * a3);
    }

    goto LABEL_2;
  }

  return v6;
}

void *anonymous namespace::insertAtHead(void *a1, void *a2)
{
  if (a2)
  {
    if (!a1)
    {
      return a2;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"balloc::FreeListNode *(anonymous namespace)::insertAtHead(balloc::FreeListNode *, balloc::FreeListNode *)"}];
    [v7 handleFailureInFunction:v8 file:@"_PASBuddyAllocator.mm" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"node"}];

    if (!a1)
    {
      return a2;
    }
  }

  if (*a1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"balloc::FreeListNode *(anonymous namespace)::insertAtHead(balloc::FreeListNode *, balloc::FreeListNode *)"}];
    [v9 handleFailureInFunction:v10 file:@"_PASBuddyAllocator.mm" lineNumber:58 description:@"insertAtHead: oldHead is not list head"];
  }

  if (*a2 || a2[1])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"balloc::FreeListNode *(anonymous namespace)::insertAtHead(balloc::FreeListNode *, balloc::FreeListNode *)"}];
    [v5 handleFailureInFunction:v6 file:@"_PASBuddyAllocator.mm" lineNumber:59 description:@"removeNode: unexpectedly inserting linked node"];
  }

  a2[1] = a1;
  *a1 = a2;
  return a2;
}

uint64_t *anonymous namespace::removeNode(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"balloc::FreeListNode *(anonymous namespace)::removeNode(balloc::FreeListNode *, balloc::FreeListNode *)"}];
    [v9 handleFailureInFunction:v10 file:@"_PASBuddyAllocator.mm" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"oldHead"}];

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"balloc::FreeListNode *(anonymous namespace)::removeNode(balloc::FreeListNode *, balloc::FreeListNode *)"}];
  [v11 handleFailureInFunction:v12 file:@"_PASBuddyAllocator.mm" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"node"}];

LABEL_3:
  if (*v3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"balloc::FreeListNode *(anonymous namespace)::removeNode(balloc::FreeListNode *, balloc::FreeListNode *)"}];
    [v13 handleFailureInFunction:v14 file:@"_PASBuddyAllocator.mm" lineNumber:70 description:@"removeNode: oldHead is not list head"];
  }

  if (v3 == a2)
  {
    v3 = v3[1];
  }

  else
  {
    v4 = *a2;
    if (*a2)
    {
      goto LABEL_11;
    }

    if (!a2[1])
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"balloc::FreeListNode *(anonymous namespace)::removeNode(balloc::FreeListNode *, balloc::FreeListNode *)"}];
      [v5 handleFailureInFunction:v6 file:@"_PASBuddyAllocator.mm" lineNumber:71 description:@"removeNode: unexpectedly removing unlinked node from nontrivial list"];
    }
  }

  v4 = *a2;
  if (!*a2)
  {
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = a2[1];
  *(v4 + 8) = v7;
  if (v7)
  {
LABEL_12:
    *v7 = v4;
  }

LABEL_13:
  *a2 = 0;
  a2[1] = 0;
  return v3;
}

uint64_t anonymous namespace::BuddyAllocator::toggleBuddyAllocationState(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = (((a3 - *result) >> (*(result + 8) - a4 + 4)) + ~(-1 << (a4 - 1))) >> 3;
    *(*(*a2 + 8) + v4) ^= 1 << ((((a3 - *result) >> (*(result + 8) - a4 + 4)) + ~(-1 << (a4 - 1))) & 7);
  }

  return result;
}

uint64_t *_PASBuddyAllocatorAllocZeros(os_unfair_lock_s *a1, unint64_t a2)
{
  v4 = v3;
  if (v3)
  {
    bzero(v3, a2);
  }

  return v4;
}

uint64_t *_PASBuddyAllocatorRealloc(os_unfair_lock_s *this, void *a2, unint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      if (v6)
      {
        if (v7 >= a3)
        {
          v8 = a3;
        }

        else
        {
          v8 = v7;
        }

        memcpy(v6, a2, v8);
      }
    }

    else
    {
      return 0;
    }

    return v6;
  }

  else
  {
  }
}

void anonymous namespace::BuddyAllocator::free(os_unfair_lock_s *this, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = *&this->_os_unfair_lock_opaque;
    if (*&this->_os_unfair_lock_opaque > a2)
    {
      goto LABEL_31;
    }

    os_unfair_lock_opaque = this[2]._os_unfair_lock_opaque;
    if (!os_unfair_lock_opaque)
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::blockStorageSizeForLevels"];
      [v38 handleFailureInFunction:v39 file:@"_PASBuddyAllocatorPOD.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];
    }

    if ((16 << (os_unfair_lock_opaque - 1)) + v4 <= v2)
    {
LABEL_31:
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void (anonymous namespace)::BuddyAllocator::free(const void *)"];
      [v32 handleFailureInFunction:v33 file:@"_PASBuddyAllocator.mm" lineNumber:600 description:{@"Attempt to free block %p which does not lie in the _PASBuddyAllocator heap at %p", v2, *&this->_os_unfair_lock_opaque}];
    }

    os_unfair_lock_lock(this + 18);
    v6 = 0;
    v7 = this[2]._os_unfair_lock_opaque;
    v8 = v7;
    while (1)
    {
      v9 = v8;
      v10 = v6;
      if (!--v8)
      {
        break;
      }

      ++v6;
      if ((*(**&this[16]._os_unfair_lock_opaque + ((((v2 - *&this->_os_unfair_lock_opaque) >> (v10 + 5)) + ~(-1 << (v9 - 2))) >> 3)) >> ((((v2 - *&this->_os_unfair_lock_opaque) >> (v10 + 5)) + ~(-1 << (v9 - 2))) & 7)))
      {
        v11 = v8 + 1;
        goto LABEL_12;
      }
    }

    v11 = 1;
LABEL_12:
    v42 = v11;
    v12 = v7 - 2;
    v13 = v7 - 1;
    v14 = 1 - v9;
    for (i = -v10; ; --i)
    {
      if (!(v13 + i))
      {
        v27 = 0;
        goto LABEL_24;
      }

      v16 = *&this[16]._os_unfair_lock_opaque;
      v17 = v2 - *&this->_os_unfair_lock_opaque;
      v18 = ~(-1 << (v12 + i));
      if ((*(*(v16 + 8) + (((v17 >> (v14 + LOBYTE(this[2]._os_unfair_lock_opaque) + 4)) + v18) >> 3)) >> (((v17 >> (v14 + LOBYTE(this[2]._os_unfair_lock_opaque) + 4)) + ~(-1 << (v12 + i))) & 7)))
      {
        break;
      }

      v19 = v14 + LOBYTE(this[2]._os_unfair_lock_opaque) - 1;
      v20 = ((v17 >> v19) & 0x10) == 0;
      v21 = 16;
      if (!v20)
      {
        v21 = -16;
      }

      v22 = (v2 + (v21 << v19));
      if (v22 < v2)
      {
        v2 = v22;
      }

      v23 = **&this[16]._os_unfair_lock_opaque;
      v24 = (((v2 - *&this->_os_unfair_lock_opaque) >> (v14 + this[2]._os_unfair_lock_opaque + 4)) + v18) >> 3;
      v25 = 1 << ((((v2 - *&this->_os_unfair_lock_opaque) >> (v14 + this[2]._os_unfair_lock_opaque + 4)) + v18) & 7);
      v26 = *(v23 + v24);
      if ((v25 & v26) == 0)
      {
        v41 = [MEMORY[0x1E696AAA8] currentHandler];
        v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void (anonymous namespace)::BuddyAllocator::freeBlock_locked(SyncPtr &, void *, unsigned int)"}];
        [v41 handleFailureInFunction:v40 file:@"_PASBuddyAllocator.mm" lineNumber:266 description:@"Merging a block which was not split."];

        v23 = **&this[16]._os_unfair_lock_opaque;
        v24 = (((v2 - *&this->_os_unfair_lock_opaque) >> (v14 + this[2]._os_unfair_lock_opaque + 4)) + v18) >> 3;
        v25 = 1 << ((((v2 - *&this->_os_unfair_lock_opaque) >> (v14 + this[2]._os_unfair_lock_opaque + 4)) + v18) & 7);
        LOBYTE(v26) = *(v23 + v24);
      }

      *(v23 + v24) = v26 & ~v25;
      ++v14;
    }

    v27 = v13 + i;
LABEL_24:
    *v2 = 0;
    v2[1] = 0;
    *(*(*&this[16]._os_unfair_lock_opaque + 40) + 8 * v27) = v2;
    v28 = *&this[16]._os_unfair_lock_opaque;
    v29 = *(v28 + 16);
    v30 = this[2]._os_unfair_lock_opaque - v42;
    if (v29 < 16 << (LOBYTE(this[2]._os_unfair_lock_opaque) - v42))
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void (anonymous namespace)::BuddyAllocator::freeBlock(const void *)"];
      [v34 handleFailureInFunction:v35 file:@"_PASBuddyAllocator.mm" lineNumber:284 description:@"freeing more bytes than were allocated"];

      v28 = *&this[16]._os_unfair_lock_opaque;
      v29 = *(v28 + 16);
      v30 = this[2]._os_unfair_lock_opaque - v42;
    }

    *(v28 + 16) = (-16 << v30) + v29;
    v31 = *(v28 + 32);
    if (!v31)
    {
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void (anonymous namespace)::BuddyAllocator::freeBlock(const void *)"];
      [v36 handleFailureInFunction:v37 file:@"_PASBuddyAllocator.mm" lineNumber:287 description:@"freeing more blocks than were allocated"];

      v28 = *&this[16]._os_unfair_lock_opaque;
      v31 = *(v28 + 32);
    }

    *(v28 + 32) = v31 - 1;

    os_unfair_lock_unlock(this + 18);
  }
}

uint64_t anonymous namespace::BuddyAllocator::sizeOfAllocatedRegion(os_unfair_lock_s *this, const void *a2)
{
  v4 = *&this->_os_unfair_lock_opaque;
  if (*&this->_os_unfair_lock_opaque > a2)
  {
    goto LABEL_11;
  }

  os_unfair_lock_opaque = this[2]._os_unfair_lock_opaque;
  if (!os_unfair_lock_opaque)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::blockStorageSizeForLevels"];
    [v14 handleFailureInFunction:v15 file:@"_PASBuddyAllocatorPOD.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];
  }

  if ((16 << (os_unfair_lock_opaque - 1)) + v4 <= a2)
  {
LABEL_11:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t (anonymous namespace)::BuddyAllocator::sizeOfAllocatedRegion(const void *)"];
    [v12 handleFailureInFunction:v13 file:@"_PASBuddyAllocator.mm" lineNumber:613 description:{@"Attempt to find size of block %p which does not lie in the _PASBuddyAllocator heap at %p", a2, *&this->_os_unfair_lock_opaque}];
  }

  os_unfair_lock_lock(this + 18);
  v6 = this[2]._os_unfair_lock_opaque + 1;
  v7 = 1;
  while (v6 != 2)
  {
    v8 = (((a2 - *&this->_os_unfair_lock_opaque) >> (v7 + 4)) + ~(-1 << (v6 - 3))) & 7;
    v9 = *(**&this[16]._os_unfair_lock_opaque + ((((a2 - *&this->_os_unfair_lock_opaque) >> (v7++ + 4)) + ~(-1 << (v6-- - 3))) >> 3));
    if ((v9 >> v8))
    {
      goto LABEL_10;
    }
  }

  v6 = 1;
LABEL_10:
  os_unfair_lock_unlock(this + 18);
  v10 = this[2]._os_unfair_lock_opaque - v6;
  return 16 << (LOBYTE(this[2]._os_unfair_lock_opaque) - v6);
}

uint64_t _PASBuddyAllocatorSizeOfBuffer(os_unfair_lock_s *this, void *a2)
{
  v2 = *&this->_os_unfair_lock_opaque;
  if (*&this->_os_unfair_lock_opaque > a2)
  {
    return 0;
  }

  os_unfair_lock_opaque = this[2]._os_unfair_lock_opaque;
  if (!os_unfair_lock_opaque)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::blockStorageSizeForLevels"];
    [v7 handleFailureInFunction:v8 file:@"_PASBuddyAllocatorPOD.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];
  }

  if ((16 << (os_unfair_lock_opaque - 1)) + v2 <= a2)
  {
    return 0;
  }
}

void _PASBuddyAllocatorUsage(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v4 = *(a1 + 8);
    if (!v4)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::blockStorageSizeForLevels"];
      [v6 handleFailureInFunction:v7 file:@"_PASBuddyAllocatorPOD.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];
    }

    *a2 = 16 << (v4 - 1);
    os_unfair_lock_lock((a1 + 72));
    v5 = *(a1 + 64);
    *(a2 + 8) = *(v5 + 16);
    *(a2 + 24) = *(v5 + 32);

    os_unfair_lock_unlock((a1 + 72));
  }
}

uint64_t _PASBuddyAllocatorIntegrityCheck(os_unfair_lock_s *a1)
{
  *&v101[11] = *MEMORY[0x1E69E9840];
  v94 = 0;
  v95 = 0;
  v3 = os_unfair_lock_lock(a1 + 18);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v32 = *&a1->_os_unfair_lock_opaque;
    *buf = 134217984;
    v97 = v32;
    _os_log_debug_impl(&dword_1A7F47000, v3, OS_LOG_TYPE_DEBUG, "_PASBuddyAllocator 0x%lx integrityCheck: verifying freelist linkage", buf, 0xCu);
  }

  p_os_unfair_lock_opaque = &a1->_os_unfair_lock_opaque;

  v5 = a1;
  os_unfair_lock_opaque = a1[2]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(*(p_os_unfair_lock_opaque[8] + 40) + 8 * v7);
      if (v9)
      {
        break;
      }

LABEL_14:
      v8 = ++v7 >= os_unfair_lock_opaque;
      if (v7 == os_unfair_lock_opaque)
      {
        goto LABEL_19;
      }
    }

    v10 = *v9;
    if (*v9)
      v13 = {;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v33 = *&v5->_os_unfair_lock_opaque;
        *buf = 134218240;
        v97 = v33;
        v98 = 1024;
        *v99 = v7;
        _os_log_error_impl(&dword_1A7F47000, v13, OS_LOG_TYPE_ERROR, "_PASBuddyAllocator 0x%lx integrityCheck: list node at level %u is not a list head", buf, 0x12u);

LABEL_18:
        v5 = p_os_unfair_lock_opaque;
        if (!v8)
        {
          v49 = 0;
          goto LABEL_71;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v11 = (16 << (os_unfair_lock_opaque - 1)) >> (os_unfair_lock_opaque + ~v7 + 4);
      while (1)
      {
        v12 = v9[1];
        if (!v12)
        {
          break;
        }

        if (*v12 != v9)
          v13 = {;
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v36 = *&v5->_os_unfair_lock_opaque;
          *buf = 134218240;
          v97 = v36;
          v98 = 1024;
          *v99 = v7;
          _os_log_error_impl(&dword_1A7F47000, v13, OS_LOG_TYPE_ERROR, "_PASBuddyAllocator 0x%lx integrityCheck: list node at level %u has corrupt back link", buf, 0x12u);

          goto LABEL_18;
        }

        v10 = (v10 + 1);
        v9 = v9[1];
        if (v11 < v10)
        {
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1);
LABEL_13:
      if (v11 >= v10)
      {
        goto LABEL_14;
      }
      v13 = ;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v35 = *&v5->_os_unfair_lock_opaque;
        *buf = 134218240;
        v97 = v35;
        v98 = 1024;
        *v99 = v7;
        _os_log_error_impl(&dword_1A7F47000, v13, OS_LOG_TYPE_ERROR, "_PASBuddyAllocator 0x%lx integrityCheck: freelist at level %u does not terminate before maximum size", buf, 0x12u);

        goto LABEL_18;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v14 = LABEL_19:;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v34 = *&v5->_os_unfair_lock_opaque;
    *buf = 134217984;
    v97 = v34;
    _os_log_debug_impl(&dword_1A7F47000, v14, OS_LOG_TYPE_DEBUG, "_PASBuddyAllocator 0x%lx integrityCheck: verifying freelist nodes are valid blocks", buf, 0xCu);
  }

  v16 = *(p_os_unfair_lock_opaque + 2);
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v18 = *(*(p_os_unfair_lock_opaque[8] + 40) + 8 * v17);
      if (v18)
      {
        break;
      }

LABEL_32:
      if (++v17 >= v16)
      {
        goto LABEL_33;
      }
    }

    v19 = *p_os_unfair_lock_opaque;
    v20 = 16 << (v16 + ~v17);
    while (v19 <= v18)
    {
      v15 = *(p_os_unfair_lock_opaque + 2);
      v21 = v16 - 1;
      if (v20 + v18 > (16 << (v16 - 1)) + *p_os_unfair_lock_opaque)
      {
        break;
      }

      while (v20 != 16 << v21)
      {
        --v21;
        v15 = (v15 - 1);
        if (!v15)
        {
          goto LABEL_41;
        }
      }

      v15 = (v18 - v19);
      if (((v18 - v19) & (v20 - 1)) != 0)
      {
        break;
      }

      v18 = *(v18 + 8);
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    v27 = LABEL_41:;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
LABEL_63:

      v49 = 0;
      v5 = p_os_unfair_lock_opaque;
      goto LABEL_71;
    }

    v28 = *p_os_unfair_lock_opaque;
    *buf = 134218240;
    v97 = v28;
    v98 = 1024;
    *v99 = v17;
    v29 = "_PASBuddyAllocator 0x%lx integrityCheck: freelist node at level %u identifies an invalid block";
    v30 = v27;
    v31 = 18;
LABEL_43:
    _os_log_error_impl(&dword_1A7F47000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
    goto LABEL_63;
  }

  v22 = LABEL_33:;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v37 = *p_os_unfair_lock_opaque;
    *buf = 134217984;
    v97 = v37;
    _os_log_debug_impl(&dword_1A7F47000, v22, OS_LOG_TYPE_DEBUG, "_PASBuddyAllocator 0x%lx integrityCheck: verifying freelist blocks are pairwise disjoint", buf, 0xCu);
  }

  v94 = 0;
  v95 = 0;
  v24 = *(p_os_unfair_lock_opaque + 2);
  if (v24)
  {
    for (i = 0; i < v24; ++i)
    {
      if (*(*(p_os_unfair_lock_opaque[8] + 40) + 8 * i))
      {
        v26 = *(p_os_unfair_lock_opaque + 2);
        operator new();
      }
    }
  }
  v38 = ;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v82 = *p_os_unfair_lock_opaque;
    *buf = 134217984;
    v97 = v82;
    _os_log_debug_impl(&dword_1A7F47000, v38, OS_LOG_TYPE_DEBUG, "_PASBuddyAllocator 0x%lx integrityCheck: verifying freelist blocks are consistent with count of bytes allocated", buf, 0xCu);
  }

  v40 = p_os_unfair_lock_opaque;
  v41 = *(p_os_unfair_lock_opaque[8] + 16);
  v42 = *(p_os_unfair_lock_opaque + 2);
  if (!v42)
  {
    v89 = [MEMORY[0x1E696AAA8] currentHandler];
    v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::blockStorageSizeForLevels"];
    [v89 handleFailureInFunction:v90 file:@"_PASBuddyAllocatorPOD.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];

    v40 = p_os_unfair_lock_opaque;
  }
  v43 = ;
  v27 = v43;
  if (v41 != 16 << (v42 - 1))
  {
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    v84 = *v40;
    v85 = *(v40[8] + 16);
    v86 = *(v40 + 2);
    if (!v86)
    {
      v91 = [MEMORY[0x1E696AAA8] currentHandler];
      v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::blockStorageSizeForLevels"];
      [v91 handleFailureInFunction:v92 file:@"_PASBuddyAllocatorPOD.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];
    }

    *buf = 134218752;
    v97 = v84;
    v98 = 2048;
    *v99 = v85;
    *&v99[8] = 2048;
    *v100 = 0;
    *&v100[8] = 2048;
    *v101 = 16 << (v86 - 1);
    v29 = "_PASBuddyAllocator 0x%lx integrityCheck: inconsistent heap usage (%zu allocated, %zu free, %zu total size)";
    v30 = v27;
    v31 = 42;
    goto LABEL_43;
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v83 = *v40;
    *buf = 134217984;
    v97 = v83;
    _os_log_debug_impl(&dword_1A7F47000, v27, OS_LOG_TYPE_DEBUG, "_PASBuddyAllocator 0x%lx integrityCheck: verifying split blocks do not appear in the freelist", buf, 0xCu);
  }

  v45 = *(p_os_unfair_lock_opaque + 2);
  if (v45 != 1)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = 0;
      do
      {
        *(*p_os_unfair_lock_opaque[8] + (v47++ >> 3));
        ++v48;
      }

      while (!(v48 >> v46));
      ++v46;
    }

    while (v46 != v45 - 1);
  }
  v50 = ;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    v87 = *p_os_unfair_lock_opaque;
    *buf = 134217984;
    v97 = v87;
    _os_log_debug_impl(&dword_1A7F47000, v50, OS_LOG_TYPE_DEBUG, "_PASBuddyAllocator 0x%lx integrityCheck: verifying buddy pairs are not simultaneously in freelists", buf, 0xCu);
  }
  v52 = ;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    v88 = *p_os_unfair_lock_opaque;
    *buf = 134217984;
    v97 = v88;
    _os_log_debug_impl(&dword_1A7F47000, v52, OS_LOG_TYPE_DEBUG, "_PASBuddyAllocator 0x%lx integrityCheck: verifying half-allocation bitmap against freelists", buf, 0xCu);
  }

  v5 = p_os_unfair_lock_opaque;
  v53 = *(p_os_unfair_lock_opaque + 2);
  if (v53 == 1)
  {
    v49 = 1;
    goto LABEL_71;
  }

  v56 = 0;
  v57 = 0;
  v49 = 1;
  while (2)
  {
    v58 = 0;
    v59 = 16 << (v53 - 2 - v56);
    do
    {
      if (v94)
      {
        v60 = *p_os_unfair_lock_opaque + (16 << (v53 + ~v56)) * v58;
        v61 = v60 + v59;
        v62 = &v94;
        v63 = v94;
        do
        {
          v64 = v63;
          v65 = v62;
          v66 = v63[4];
          if (v66 >= v60)
          {
            v62 = v63;
          }

          v63 = v63[v66 < v60];
        }

        while (v63);
        if (v62 == &v94)
        {
          goto LABEL_84;
        }

        if (v66 < v60)
        {
          v64 = v65;
        }

        if (v64[4] != v60)
        {
LABEL_84:
          v67 = 0;
        }

        else
        {
          v67 = v62[5] == v59;
        }

        v68 = &v94;
        v69 = v94;
        do
        {
          v70 = v69;
          v71 = v68;
          v72 = v69[4];
          if (v72 >= v61)
          {
            v68 = v69;
          }

          v69 = v69[v72 < v61];
        }

        while (v69);
        if (v68 != &v94)
        {
          if (v72 < v61)
          {
            v70 = v71;
          }

          if (v70[4] == v61)
          {
            v73 = v68[5] == v59;
            goto LABEL_96;
          }
        }
      }

      else
      {
        v67 = 0;
      }

      v73 = 0;
LABEL_96:
      v74 = (*(*(p_os_unfair_lock_opaque[8] + 8) + (v57 >> 3)) >> (v57 & 7));
      if (v74)
      {
        if (v67 == v73)
          v27 = {;
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_63;
          }

          v76 = *p_os_unfair_lock_opaque;
          v77 = "allocated";
          *buf = 134219010;
          if (v67)
          {
            v78 = "free";
          }

          else
          {
            v78 = "allocated";
          }

          v97 = v76;
          v98 = 1024;
          if (v73)
          {
            v77 = "free";
          }

          *v99 = v58;
          *&v99[4] = 1024;
          *&v99[6] = v56;
          *v100 = 2080;
          *&v100[2] = v78;
          v101[0] = 2080;
          *&v101[1] = v77;
          v29 = "_PASBuddyAllocator 0x%lx integrityCheck: block %u in level %u has half-alloc set with left-child %s and right-child %s";
LABEL_117:
          v30 = v27;
          v31 = 44;
          goto LABEL_43;
        }
      }

      else if ((v67 | v73))
        v27 = {;
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        v79 = *p_os_unfair_lock_opaque;
        v80 = "allocated";
        *buf = 134219010;
        if (v67)
        {
          v81 = "free";
        }

        else
        {
          v81 = "allocated";
        }

        v97 = v79;
        v98 = 1024;
        if (v73)
        {
          v80 = "free";
        }

        *v99 = v58;
        *&v99[4] = 1024;
        *&v99[6] = v56;
        *v100 = 2080;
        *&v100[2] = v81;
        v101[0] = 2080;
        *&v101[1] = v80;
        v29 = "_PASBuddyAllocator 0x%lx integrityCheck: block %u in level %u has half-alloc bit clear with left-child %s and right-child %s";
        goto LABEL_117;
      }

      ++v57;
      ++v58;
    }

    while (!(v58 >> v56));
    if (++v56 != v53 - 1)
    {
      continue;
    }

    break;
  }

LABEL_71:
  os_unfair_lock_unlock(v5 + 18);
  v54 = *MEMORY[0x1E69E9840];
  return v49;
}

void sub_1A7F7D4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, os_unfair_lock_s *a11, uint64_t a12, void *a13)
{
  os_unfair_lock_unlock(a11 + 18);
  _Unwind_Resume(a1);
}

void std::__tree<anonymous namespace::BuddyAllocator::BlockRange>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

unint64_t _PASBuddyAllocatorBufferSizeForHeapOfSize(unint64_t a1)
{
  v2 = 1;
  while (16 << (v2 - 1) < a1)
  {
    v2 = (v2 + 1);
    if (!v2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t proactive::pas::buddyalloc::blockStorageSizeForLevels"];
      [v5 handleFailureInFunction:v3 file:@"_PASBuddyAllocatorPOD.h" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"numLevels > 0"}];
    }
  }

  return proactive::pas::buddyalloc::heapSizeForLevels(v2);
}

id makeOptionLongHelp(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  if ([v1 count])
  {
    [v2 appendString:@"\nOption Details:\n"];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = objc_alloc(MEMORY[0x1E696AEC0]);
        v9 = [v7 name];
        v10 = [v8 initWithFormat:@"--%@", v9];

        v11 = [v7 shortName];
        if (v11)
        {
          v12 = v11;
          v13 = [v7 shortName];
          v14 = [v13 length];

          if (v14)
          {
            v15 = objc_alloc(MEMORY[0x1E696AEC0]);
            v16 = [v7 shortName];
            v17 = [v7 name];
            v18 = [v15 initWithFormat:@"-%@, --%@", v16, v17];

            v10 = v18;
          }
        }

        v19 = [v7 argMetavar];

        if (v19)
        {
          v20 = [v7 argMetavar];
          v21 = [v7 helpDescription];
          [v2 appendFormat:@"  %@ %@ -- %@\n", v10, v20, v21];
        }

        else
        {
          v20 = [v7 helpDescription];
          [v2 appendFormat:@"  %@ -- %@\n", v10, v20];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v2;
}

id makeOptionShortHelp(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v22;
    do
    {
      v8 = 0;
      v9 = v5;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v8);
        v11 = [v10 argMetavar];

        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        v13 = [v10 name];
        v14 = v13;
        if (v11)
        {
          v15 = [v10 argMetavar];
          v16 = [v12 initWithFormat:@" --%@ %@ ", v14, v15];

          v6 = v16;
        }

        else
        {
          v15 = v6;
          v6 = [v12 initWithFormat:@" --%@ ", v13];
        }

        if ([v10 required])
        {
          v17 = v6;
        }

        else
        {
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" [%@] ", v6];
        }

        v5 = v17;

        [v2 appendString:v5];
        ++v8;
        v9 = v5;
      }

      while (v4 != v8);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v2;
}

BOOL _PASEvaluateLogFaultAndProbCrashCriteria()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(_PASLogFaultAndProbCrashArmed);
  if (v1)
  {
    os_unfair_lock_lock(&_PASEvaluateLogFaultAndProbCrashCriteria__PASProbCrashLock);
    v5 = _PASEvaluateLogFaultAndProbCrashCriteria_seenReturnAddresses;
    if (!_PASEvaluateLogFaultAndProbCrashCriteria_seenReturnAddresses)
    {
      v6 = arc4random_uniform(_PASLogFaultAndProbCrashWindowSize);
      v7 = v6;
      _PASEvaluateLogFaultAndProbCrashCriteria_seenReturnAddressesCount = v6;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 67109120;
        v11[1] = v7;
        _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PASEvaluateLogFaultAndProbCrashCriteria: Will skip %hhu unique callsite(s) before crashing", v11, 8u);
        v7 = _PASEvaluateLogFaultAndProbCrashCriteria_seenReturnAddressesCount;
      }

      if (!v7)
      {
        goto LABEL_15;
      }

      v5 = malloc_type_calloc(v7, 8uLL, 0x80040B8603338uLL);
      if (!v5)
      {
        v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v10);
      }

      _PASEvaluateLogFaultAndProbCrashCriteria_seenReturnAddresses = v5;
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria_seenReturnAddressesCount)
    {
      v8 = 0;
      do
      {
        v9 = v5[v8];
        v2 = v9 != v0;
        if (v9 == v0)
        {
          goto LABEL_17;
        }

        if (!v9)
        {
          v2 = 0;
          v5[v8] = v0;
          goto LABEL_17;
        }
      }

      while (_PASEvaluateLogFaultAndProbCrashCriteria_seenReturnAddressesCount != ++v8);
    }

LABEL_15:
    v2 = 1;
LABEL_17:
    os_unfair_lock_unlock(&_PASEvaluateLogFaultAndProbCrashCriteria__PASProbCrashLock);
    goto LABEL_3;
  }

  v2 = 0;
LABEL_3:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _pas_calculateGeoHash(unsigned int a1, double a2, double a3)
{
  if (a1 >= 0x20)
  {
    v3 = 32;
  }

  else
  {
    v3 = a1;
  }

  if (!a1)
  {
    return 0;
  }

  result = 0;
  v5 = 180.0;
  v6 = -90.0;
  v7 = -180.0;
  v8 = 90.0;
  do
  {
    v9 = (v8 + v6) * 0.5;
    v10 = (v7 + v5) * 0.5;
    if (v9 < a2)
    {
      v6 = (v8 + v6) * 0.5;
    }

    else
    {
      v8 = (v8 + v6) * 0.5;
    }

    if (v10 >= a3)
    {
      v5 = (v7 + v5) * 0.5;
    }

    else
    {
      v7 = (v7 + v5) * 0.5;
    }

    result = (v10 < a3) | (2 * (v9 >= a2)) | (4 * result);
    --v3;
  }

  while (v3);
  return result;
}

uint64_t advanceCursor(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = *a3;
  v5 = (a1 + (v4 >> 8));
  v10 = 0;
  RuneUtf8 = getRuneUtf8(v5, a2, &v10);
  v7 = v10;
  v8 = v10 - 1114112;
  if ((v4 & 0x80) != 0 || v8 < 0xFFF00000)
  {
    *a3 = (v4 + ((RuneUtf8 - v5) << 8)) & 0xFFFFFF7F;
    if (v8 >> 20 != 4095)
    {
      return v7;
    }

    if ((v4 & 0x80) != 0)
    {
      LOWORD(v7) = v7 & 0x3FF | 0xDC00;
      return v7;
    }
  }

  else
  {
    *a3 = v4 | 0x80;
  }

  return (((v7 + 67043328) >> 10) - 10240);
}

char *getRuneUtf8(char *a1, char *a2, int *a3)
{
  if (a1 == a2)
  {
    goto LABEL_19;
  }

  v4 = *a1;
  v3 = a1 + 1;
  v5 = v4;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = v3;
    goto LABEL_20;
  }

  if ((v5 & 0xE0) == 0xC0)
  {
    v7 = v5 & 0x1F;
    v8 = 1;
    goto LABEL_10;
  }

  if ((v5 & 0xF0) == 0xE0)
  {
    v7 = v5 & 0xF;
    v8 = 2;
    goto LABEL_10;
  }

  if ((v5 & 0xF8) == 0xF0)
  {
    v7 = v5 & 7;
    v8 = 3;
LABEL_10:
    v9 = v8 + 1;
    v6 = v3;
    while (v6 != a2)
    {
      v10 = *v6++;
      v5 = v10 & 0x3F | (v7 << 6);
      --v9;
      v7 = v5;
      if (v9 <= 1)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if (v3 == a2)
  {
LABEL_19:
    v5 = 0;
    v6 = 0;
    goto LABEL_20;
  }

  v8 = 0;
  while (*v3 < 0)
  {
    v5 = 0;
    v6 = 0;
    ++v8;
    if (++v3 == a2)
    {
      goto LABEL_20;
    }
  }

  v7 = 65533;
  v5 = 65533;
  v6 = v3;
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_20:
  *a3 = v5;
  return v6;
}

void sub_1A7F84BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A7F85210(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1A7F85350);
}

void sub_1A7F85218(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int buf, uint64_t a17, uint64_t a18, __CFString *a19, __CFString *a20, uint64_t a21, id a22)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(a1);
      JUMPOUT(0x1A7F85014);
    }

    v22 = objc_begin_catch(a1);
    if (+[_PASDeviceInfo isInternalBuild]|| (a15 & 1) == 0)
    {
      v26 = v22;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        buf = 138412290;
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "A bogus or corrupt journal file was found and has been cleaned up. Relaunching: %@", &buf, 0xCu);
      }

      v23 = MEMORY[0x1E695DF30];
      a19 = @"fullPath";
      a20 = @"originalException";
      a22 = v22;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a21 forKeys:&a19 count:2];
      v22 = [v23 exceptionWithName:@"_PASDatabaseJournalWillRecoverOnNextLaunch" reason:@"A bogus or corrupt journal file was found and has been cleaned up. Relaunching." userInfo:v24];
      v25 = v22;
    }

    objc_exception_throw(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1A7F8533C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1A7F85228);
  }

  _Unwind_Resume(a1);
}

BOOL _sqliteErrorIndicatesDeviceBecameLocked(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"sqliteCode"];

  if (v2)
  {
    v3 = [v2 integerValue] == 778;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1A7F85BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id wrongVersionError(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = v2;
  if (v1)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported format version: %@", v1];
    [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  else
  {
    [v2 setObject:@"Unsupported format version." forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  [v3 setObject:v1 forKeyedSubscript:*MEMORY[0x1E696A588]];

  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = [v3 copy];
  v7 = [v5 initWithDomain:@"_PASLazyPlistErrorDomain" code:3 userInfo:v6];

  return v7;
}

id fileAccessError(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v6 = v5;
  if (v3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The file cannot be opened: %@", v3];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  else
  {
    [v5 setObject:@"The file cannot be opened." forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  [v6 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696A588]];

  [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A368]];
  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = [v6 copy];
  v10 = [v8 initWithDomain:@"_PASLazyPlistErrorDomain" code:1 userInfo:v9];

  return v10;
}

void sub_1A7F88FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F89148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F89308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2105(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unsigned __int16 *computeHashes_MURMUR3_X86_32(int *a1, int a2, int a3, unsigned __int16 *a4, unsigned int a5)
{
  v16 = 0;
  result = _PAS_MurmurHash3_x86_32(a4, a5, a3, &v16);
  v10 = v16;
  *a1 = v16;
  if (a2 != 1)
  {
    v15 = 0;
    result = _PAS_MurmurHash3_x86_32(a4, a5, v10, &v15);
    v11 = v15;
    a1[1] = v15;
    if (a2 >= 3)
    {
      v12 = v11 + 1;
      v13 = v10 + v11;
      v14 = 2;
      do
      {
        v13 += v12;
        v12 += v14;
        a1[v14++] = v13;
      }

      while (a2 != v14);
    }
  }

  return result;
}

unint64_t computeHashes_MURMUR3_X64_128(void *a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  v38 = 0;
  v39 = 0;
  result = _PAS_MurmurHash3_x64_128(a4, a5, a3, &v38);
  v9 = v38;
  v8 = v39;
  *a1 = v38;
  a1[1] = v8;
  if (a2 >= 5)
  {
    v10 = 0;
    v11 = 0;
    v12 = HIDWORD(v9);
    v13 = a2;
    v14 = 6;
    if (a2 > 6uLL)
    {
      v14 = a2;
    }

    v15 = v14 - 5;
    v16 = vdupq_n_s64(v15 >> 1);
    v17 = (v15 & 0xFFFFFFFFFFFFFFF8) + 8;
    v18 = 8 * HIDWORD(v9);
    v19 = a1 + 3;
    result = (6 * HIDWORD(v9));
    do
    {
      v20 = vdupq_n_s64(v11);
      v21 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1A7FB1830)));
      if (vuzp1_s16(v21, 2).u8[0])
      {
        v22 = 715827883 * ((v10 + 4) * (v10 + 4) - 1) * (v10 + 4);
        *(v19 - 2) = 4 * v12 + v9 + HIDWORD(v22) + (v22 >> 63);
      }

      if (vuzp1_s16(v21, 2).i8[2])
      {
        v23 = 715827883 * ((v10 + 6) * (v10 + 6) - 1) * (v10 + 6);
        *v19 = result + v9 + HIDWORD(v23) + (v23 >> 63);
      }

      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1A7FB23B0)))).i32[1])
      {
        v24 = 715827883 * ((v10 + 8) * (v10 + 8) - 1) * (v10 + 8);
        v19[2] = v18 + v9 + HIDWORD(v24) + (v24 >> 63);
        v25 = 715827883 * ((v10 + 10) * (v10 + 10) - 1) * (v10 + 10);
        v19[4] = 10 * v12 + v9 + HIDWORD(v25) + (v25 >> 63);
      }

      v11 += 4;
      v10 += 8;
      LODWORD(v9) = v9 + v18;
      v19 += 8;
    }

    while (v17 != v10);
    if (a2 != 5)
    {
      v26 = 0;
      v27 = 0;
      if (a2 <= 7uLL)
      {
        v13 = 7;
      }

      v28 = v13 - 6;
      v29 = vdupq_n_s64(v28 >> 1);
      v30 = (v28 & 0xFFFFFFFFFFFFFFF8) + 8;
      v31 = a1 + 7;
      result = (7 * HIDWORD(v8));
      do
      {
        v32 = vdupq_n_s64(v27);
        v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_1A7FB1830)));
        if (vuzp1_s16(v33, 2).u8[0])
        {
          v34 = 715827883 * ((v26 + 5) * (v26 + 5) - 1) * (v26 + 5);
          *(v31 - 2) = 5 * HIDWORD(v8) + v8 + HIDWORD(v34) + (v34 >> 63);
        }

        if (vuzp1_s16(v33, 2).i8[2])
        {
          v35 = 715827883 * ((v26 + 7) * (v26 + 7) - 1) * (v26 + 7);
          *v31 = result + v8 + HIDWORD(v35) + (v35 >> 63);
        }

        if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_1A7FB23B0)))).i32[1])
        {
          v36 = 715827883 * ((v26 + 9) * (v26 + 9) - 1) * (v26 + 9);
          v31[2] = 9 * HIDWORD(v8) + v8 + HIDWORD(v36) + (v36 >> 63);
          v37 = 715827883 * ((v26 + 11) * (v26 + 11) - 1) * (v26 + 11);
          v31[4] = 11 * HIDWORD(v8) + v8 + HIDWORD(v37) + (v37 >> 63);
        }

        v27 += 4;
        v26 += 8;
        LODWORD(v8) = v8 + 8 * HIDWORD(v8);
        v31 += 8;
      }

      while (v30 != v26);
    }
  }

  return result;
}

uint64_t levenshtein<char>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v5 = a3;
  v8 = 0;
  v9 = 0;
  v54 = *MEMORY[0x1E69E9840];
  if (a3 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a3;
  }

  if (a4 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a4;
  }

  while (*(a1 + v9) == *(a2 + v9))
  {
    ++v9;
    --v11;
    --v8;
    if (!(v10 + v8))
    {
      v12 = 0;
LABEL_14:
      if (a3 <= a4)
      {
        v18 = a4;
      }

      else
      {
        v18 = a3;
      }

      v19 = v18 - v10 + v12;
      goto LABEL_52;
    }
  }

  v13 = 0;
  v14 = a3 + v8;
  v15 = v10 + v8;
  v12 = -v15;
  v16 = a4 - 1;
  v17 = a3 - 1;
  while (*(a1 + v17) == *(a2 + v16))
  {
    --v14;
    ++v13;
    --v16;
    --v17;
    if (v15 == v13)
    {
      v10 = v9;
      goto LABEL_14;
    }
  }

  if (a3 <= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = a3;
  }

  v51 = v9 + v13;
  v21 = 4 * (v20 - (v9 + v13)) + 4;
  memptr = 0;
  v53 = 0;
  v49 = v20 - (v9 + v13);
  v50 = v21 | 3;
  v48 = v21;
  if ((v21 | 3) > 0x7D0)
  {
    v45 = malloc_type_posix_memalign(&memptr, 8uLL, v21, 0x699C460AuLL);
    LOBYTE(v53) = 0;
    if (v45)
    {
      v46 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v46);
    }

    v23 = memptr;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v23 = (&v47 - ((v22 + 15) & 0x1FFFFFFF0));
    bzero(v23, v22);
  }

  v24 = a4 + v8 - v13;
  bzero(v23, v48);
  v25 = 0;
  v26 = vdupq_n_s64(v49);
  v27 = xmmword_1A7FB23B0;
  v28 = xmmword_1A7FB1830;
  v29 = v23 + 2;
  v30 = vdupq_n_s64(4uLL);
  v31 = v51;
  do
  {
    v32 = vmovn_s64(vcgeq_u64(v26, v28));
    if (vuzp1_s16(v32, *v26.i8).u8[0])
    {
      *(v29 - 2) = v25;
    }

    if (vuzp1_s16(v32, *&v26).i8[2])
    {
      *(v29 - 1) = v25 + 1;
    }

    if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
    {
      *v29 = v25 + 2;
      v29[1] = v25 + 3;
    }

    v25 += 4;
    v27 = vaddq_s64(v27, v30);
    v28 = vaddq_s64(v28, v30);
    v29 += 4;
  }

  while (((v11 - v13 + 4) & 0x1FFFFFFFCLL) != v25);
  if (v31 != v5)
  {
    v33 = 0;
    if (v14 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v14;
    }

    if (v24 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = v24;
    }

    do
    {
      v36 = *(a1 + (v9 + v33));
      v37 = v33 + 1;
      *v23 = v33 + 1;
      if (v31 != a4)
      {
        v38 = v23 + 1;
        v39 = v35;
        v40 = v9;
        v41 = v33 + 1;
        do
        {
          if (*(a2 + v40) != v36)
          {
            LODWORD(v33) = v33 + 1;
          }

          v42 = *v38;
          if (*v38 + 1 >= v41 + 1)
          {
            ++v41;
          }

          else
          {
            v41 = v42 + 1;
          }

          if (v41 >= v33)
          {
            v41 = v33;
          }

          *v38++ = v41;
          ++v40;
          LODWORD(v33) = v42;
          --v39;
        }

        while (v39);
      }

      v33 = v37;
    }

    while (v37 != v34);
    v5 = v31;
  }

  v19 = v23[a4 - v5];
  if (v50 >= 0x7D1)
  {
    free(v23);
  }

LABEL_52:
  v43 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t levenshtein<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v5 = a3;
  v54 = *MEMORY[0x1E69E9840];
  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if (v6)
  {
    v9 = 0;
    v10 = 0;
    if (a4 <= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = a4;
    }

    while (*(a1 + 4 * v10) == *(a2 + 4 * v10))
    {
      ++v10;
      --v11;
      --v9;
      if (!(v6 + v9))
      {
        goto LABEL_10;
      }
    }

    v17 = 0;
    v18 = a3 + v9;
    v19 = v6 + v9;
    v12 = -v19;
    v20 = a4 - 1;
    v21 = a3 - 1;
    while (*(a1 + 4 * v21) == *(a2 + 4 * v20))
    {
      --v18;
      ++v17;
      --v20;
      --v21;
      if (v19 == v17)
      {
        v6 = v10;
        goto LABEL_11;
      }
    }

    if (a3 <= a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = a3;
    }

    v51 = v10 + v17;
    v49 = v22 - (v10 + v17);
    v23 = (4 * v49 + 4);
    memptr = 0;
    v53 = 0;
    v50 = v23 | 3;
    v48 = v23;
    if ((v23 | 3) > 0x7D0)
    {
      v45 = malloc_type_posix_memalign(&memptr, 8uLL, v23, 0x699C460AuLL);
      LOBYTE(v53) = 0;
      if (v45)
      {
        v46 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v46);
      }

      v25 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v25 = (&v47 - ((v24 + 15) & 0x1FFFFFFF0));
      bzero(v25, v24);
    }

    v26 = a4 + v9 - v17;
    bzero(v25, v48);
    v27 = 0;
    v28 = vdupq_n_s64(v49);
    v29 = xmmword_1A7FB23B0;
    v30 = xmmword_1A7FB1830;
    v31 = v25 + 2;
    v32 = vdupq_n_s64(4uLL);
    v33 = v51;
    do
    {
      v34 = vmovn_s64(vcgeq_u64(v28, v30));
      if (vuzp1_s16(v34, *v28.i8).u8[0])
      {
        *(v31 - 2) = v27;
      }

      if (vuzp1_s16(v34, *&v28).i8[2])
      {
        *(v31 - 1) = v27 + 1;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v29))).i32[1])
      {
        *v31 = v27 + 2;
        v31[1] = v27 + 3;
      }

      v27 += 4;
      v29 = vaddq_s64(v29, v32);
      v30 = vaddq_s64(v30, v32);
      v31 += 4;
    }

    while (((v11 - v17 + 4) & 0x1FFFFFFFCLL) != v27);
    if (v33 != v5)
    {
      v35 = 0;
      if (v18 <= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = v18;
      }

      if (v26 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v26;
      }

      do
      {
        v38 = *(a1 + 4 * (v10 + v35));
        v39 = v35 + 1;
        *v25 = v35 + 1;
        if (v33 != a4)
        {
          v40 = v25 + 1;
          v41 = v37;
          v42 = v10;
          v43 = v35 + 1;
          do
          {
            if (*(a2 + 4 * v42) != v38)
            {
              LODWORD(v35) = v35 + 1;
            }

            v44 = *v40;
            if (*v40 + 1 >= v43 + 1)
            {
              ++v43;
            }

            else
            {
              v43 = v44 + 1;
            }

            if (v43 >= v35)
            {
              v43 = v35;
            }

            *v40++ = v43;
            ++v42;
            LODWORD(v35) = v44;
            --v41;
          }

          while (v41);
        }

        v35 = v39;
      }

      while (v39 != v36);
      v5 = v33;
    }

    v14 = v25[a4 - v5];
    if (v50 >= 0x7D1)
    {
      free(v25);
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
LABEL_11:
    if (a3 <= a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = a3;
    }

    v14 = v13 - v6 + v12;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1A7F8C368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A7F8C4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2360(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7F8C824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A7F8C994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void _PASMemoryHeavyOperation(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASMemoryHeavyOperation(void (^__strong)(void))"];
    [v6 handleFailureInFunction:v7 file:@"_PASMemoryHeavyOperationLock.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  if (_PASMemoryHeavyOperation_onceToken != -1)
  {
    dispatch_once(&_PASMemoryHeavyOperation_onceToken, &__block_literal_global_2444);
  }

  if (pthread_getspecific(_PASMemoryHeavyOperation_tlKey))
  {
    v2 = objc_autoreleasePoolPush();
    v1[2](v1);
    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___PASMemoryHeavyOperation_block_invoke_2;
    v8[3] = &unk_1E77F2388;
    v9 = v1;
    v3 = MEMORY[0x1AC566DD0](v8);
    v4 = qos_class_self();
    v5 = _PASMemoryHeavyOperation_uiQueue;
    if (v4 <= 0x18)
    {
      dispatch_sync(_PASMemoryHeavyOperation_uiQueue, &__block_literal_global_12);
      v5 = _PASMemoryHeavyOperation_lowQueue;
    }

    dispatch_sync(v5, v3);
  }
}

void sub_1A7F8DD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2487(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7F8E1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F8EF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id posixError(int a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E696A588];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:strerror(a1)];
  v9[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = [v4 initWithDomain:*MEMORY[0x1E696A798] code:a1 userInfo:v3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __Block_byref_object_copy__2694(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7F93A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3005(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1AC566DD0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void registerOnceForFirstUnlock(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __registerOnceForFirstUnlock_block_invoke;
  block[3] = &unk_1E77F2388;
  v5 = v1;
  v2 = registerOnceForFirstUnlock_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&registerOnceForFirstUnlock_onceToken, block);
  }
}

void __registerOnceForFirstUnlock_block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v3 = *(a1 + 32);
  registerOnceForFirstUnlock_registrationToken = MKBEventsRegister();
}

void __registerOnceForFirstUnlock_block_invoke_2(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2 && MKBDeviceUnlockedSinceBoot() == 1)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v10) = 138412290;
      *(&v10 + 4) = v5;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Handler for MobileKeyBag class C unlock handler for system or user volume (handle call uuid:%@)", &v10, 0xCu);
    }

    *&v10 = MEMORY[0x1E69E9820];
    *(&v10 + 1) = 3221225472;
    v11 = __handleFirstUnlockEvent_block_invoke;
    v12 = &unk_1E77F23B0;
    v13 = v5;
    v14 = v3;
    v15 = &registerOnceForFirstUnlock_registrationToken;
    v6 = handleFirstUnlockEvent_onceTokenUnlocked;
    v7 = v5;
    v8 = v3;
    if (v6 != -1)
    {
      dispatch_once(&handleFirstUnlockEvent_onceTokenUnlocked, &v10);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __handleFirstUnlockEvent_block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    LODWORD(v9) = 138412290;
    *(&v9 + 4) = v2;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Running MobileKeyBag class C unlock (handle call uuid:%@)", &v9, 0xCu);
  }

  (*(a1[5] + 16))();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    LODWORD(v9) = 138412290;
    *(&v9 + 4) = v3;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Ran MobileKeyBag class C unlock (handle call uuid:%@)", &v9, 0xCu);
  }

  v4 = a1[6];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
  v7 = dispatch_queue_create("_PASDeviceState.firstUnlockUnregistration", v6);

  *&v9 = MEMORY[0x1E69E9820];
  *(&v9 + 1) = 3221225472;
  v10 = __unregisterForFirstUnlockEvents_block_invoke;
  v11 = &__block_descriptor_40_e5_v8__0l;
  v12 = v4;
  dispatch_async(v7, &v9);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __unregisterForFirstUnlockEvents_block_invoke(uint64_t a1)
{
  v2 = **(a1 + 32);
  result = MKBEventsUnregister();
  **(a1 + 32) = 0;
  return result;
}

void unregisterForLockStateChangesForDevice(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intValue];
    v4 = notify_cancel(v3);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67109376;
        v7[1] = v3;
        v8 = 1024;
        v9 = v5;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to unregister notify token %d with error %u", v7, 0xEu);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id registerForLockStateChangesForDevice(NSObject *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  out_token = -1;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __registerForLockStateChangesForDevice_block_invoke;
  v13 = &unk_1E77F2338;
  v14 = v3;
  v4 = v3;
  v5 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, a1, &v10);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v6;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to register for kMobileKeyBagLockStatusNotificationID with error %u", buf, 8u);
    }
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{out_token, v10, v11, v12, v13}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __registerForLockStateChangesForDevice_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MKBGetDeviceLockState();
  if (v2 >= 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = *(v1 + 16);

  return v4(v1, v3);
}

void unregisterForLockStateChanges(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intValue];
    v4 = notify_cancel(v3);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67109376;
        v7[1] = v3;
        v8 = 1024;
        v9 = v5;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to unregister notify token %d with error %u", v7, 0xEu);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id registerForLockStateChanges(NSObject *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  out_token = -1;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __registerForLockStateChanges_block_invoke;
  v13 = &unk_1E77F2338;
  v14 = v3;
  v4 = v3;
  v5 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, a1, &v10);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v6;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to register for kMobileKeyBagLockStatusNotificationID with error %u", buf, 8u);
    }
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{out_token, v10, v11, v12, v13}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id currentOsBuild()
{
  if (getCurrentOsBuild_once != -1)
  {
    dispatch_once(&getCurrentOsBuild_once, &__block_literal_global_42);
  }

  v1 = getCurrentOsBuild_build;

  return v1;
}

void __getCurrentOsBuild_block_invoke()
{
  v0 = _CFCopyServerVersionDictionary();
  if (v0 || (v0 = _CFCopySystemVersionDictionary()) != 0)
  {
    v1 = v0;
    v2 = CFDictionaryGetValue(v0, *MEMORY[0x1E695E1E8]);
    v3 = getCurrentOsBuild_build;
    getCurrentOsBuild_build = v2;

    CFRelease(v1);
  }
}

void __getAKSEventsNotificationsQueue_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("_PASDeviceState.AKSEventsNotifications", v0);
  v2 = getAKSEventsNotificationsQueue_queue;
  getAKSEventsNotificationsQueue_queue = v1;
}

id getLockStateChangedQueue()
{
  if (getLockStateChangedQueue_onceToken != -1)
  {
    dispatch_once(&getLockStateChangedQueue_onceToken, &__block_literal_global_57);
  }

  v1 = getLockStateChangedQueue_queue;

  return v1;
}

void __getLockStateChangedQueue_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("_PASDeviceState.lockStateChanged", v0);
  v2 = getLockStateChangedQueue_queue;
  getLockStateChangedQueue_queue = v1;
}

void _pas_registerSqliteCollections(sqlite3 *a1)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_self();
  v22[0] = v3;
  v4 = objc_opt_self();
  v22[1] = v4;
  v5 = objc_opt_self();
  v22[2] = v5;
  v6 = objc_opt_self();
  v22[3] = v6;
  v7 = objc_opt_self();
  v22[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        sqlite3_create_module(a1, [v14 sqliteMethodName], &_pas_collection_sqlite_module, v14);
        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t xRowId(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (([objc_opt_class() hasRowId] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int xRowId(sqlite3_vtab_cursor *, sqlite_int64 *)"}];
    [v5 handleFailureInFunction:v6 file:@"_PASSqliteCollections.m" lineNumber:1595 description:{@"Invalid parameter not satisfying: %@", @"[cursor.class hasRowId]"}];
  }

  *a2 = [v3 outputRowId];

  return 0;
}

BOOL __xFilter_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _PASSqliteGetValue(*(*(a1 + 48) + 8 * *(*(*(a1 + 40) + 8) + 24)));
  if (a2)
  {
    v7 = *(a1 + 32);
    if (*(a1 + 60) == 1)
    {
      [v7 applyKeyConstraint:a3 withArgument:v6];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        v18 = 67109634;
        v19 = a3;
        v20 = 2112;
        v21 = v6;
        v22 = 2112;
        v23 = objc_opt_class();
        v9 = MEMORY[0x1E69E9C10];
        v10 = "#passqlitecollections Using key->%d(%@) for %@";
LABEL_10:
        _os_log_debug_impl(&dword_1A7F47000, v9, OS_LOG_TYPE_DEBUG, v10, &v18, 0x1Cu);
      }
    }

    else
    {
      [v7 applyRowIdConstraint:a3 withArgument:v6];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 32);
        v18 = 67109634;
        v19 = a3;
        v20 = 2112;
        v21 = v6;
        v22 = 2112;
        v23 = objc_opt_class();
        v9 = MEMORY[0x1E69E9C10];
        v10 = "#passqlitecollections Using rowId->%d(%@) for %@";
        goto LABEL_10;
      }
    }
  }

  else
  {
    [*(a1 + 32) applyConstraint:a3 withArgument:v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v18 = 67109634;
      v19 = a3;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = objc_opt_class();
      v9 = MEMORY[0x1E69E9C10];
      v10 = "#passqlitecollections Using value->%d(%@) for %@";
      goto LABEL_10;
    }
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 24) + 1;
  *(v12 + 24) = v13;
  v14 = v13 < *(a1 + 56);

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t xConnect(sqlite3 *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sqlite3_malloc64(0x20uLL);
  v9 = v8;
  if (v8)
  {
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = a2;
    v10 = objc_opt_self();
    v11 = [a2 isSubclassOfClass:v10];

    if ((v11 & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int xConnect(sqlite3 *, void *, int, const char *const *, sqlite3_vtab **, char **)"}];
      [v13 handleFailureInFunction:v14 file:@"_PASSqliteCollections.m" lineNumber:1345 description:{@"Invalid parameter not satisfying: %@", @"[pVtab->pasCursorClass isSubclassOfClass:[_PASSqliteCollectionsCursor self]]"}];
    }

    result = sqlite3_declare_vtab(a1, [v9[3] sqliteCreateTableStatement]);
  }

  else
  {
    result = 7;
  }

  *a5 = v9;
  return result;
}

uint64_t __Block_byref_object_copy__3272(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1AC566DD0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A7F971E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  __destructor_8_s0_sb16_sb24(va);
  __destructor_8_s0_sb16_sb24(va1);
  _Unwind_Resume(a1);
}

void sub_1A7F9753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  __destructor_8_s0_sb16_sb24(va);
  __destructor_8_s0_sb16_sb24(va1);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_sb16_sb24(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_1A7F978D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  __destructor_8_s0_sb16_sb24(va);
  __destructor_8_s0_sb16_sb24(va1);
  _Unwind_Resume(a1);
}

void sub_1A7F9800C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F98BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F99070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3437(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7F9943C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      if (!v9)
      {
        JUMPOUT(0x1A7F993A8);
      }

      JUMPOUT(0x1A7F993E4);
    }

    v10 = objc_begin_catch(exc_buf);
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = [v10 debugDescription];
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v13;
      _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[_PASSqliteDatabase withDbLockExecuteBlock:] caught an exception during invocation of block.\n\nException: %@", &a9, 0xCu);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A7F994F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1A7F9944CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A7F99508(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x1A7F99510);
  }

  _Unwind_Resume(a1);
}

void sub_1A7F99518(uint64_t a1, int a2)
{
  if (!a2)
  {
    sub_1A7F9951C();
  }

  objc_terminate();
}

void sub_1A7F998D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F99A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F99C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F99F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F9A560(_Unwind_Exception *a1)
{
  objc_end_catch();
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A7F9A830(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1A7F9A6FCLL);
  }

  JUMPOUT(0x1A7F9A824);
}

void sub_1A7F9A9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_PASQMarksSeparatedByCommas(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = 2 * a1;
    v3 = (2 * a1) | 1;
    memptr = 0;
    v13 = 0;
    if (v3 > 0x100)
    {
      v9 = malloc_type_posix_memalign(&memptr, 8uLL, v2, 0x1D50AFF5uLL);
      LOBYTE(v13) = 0;
      if (v9)
      {
        v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v10);
      }

      v4 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v4, v3);
    }

    v5 = v4 + 1;
    do
    {
      *(v5 - 1) = 11327;
      v5 += 2;
      --v1;
    }

    while (v1);
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v4 length:v2 - 1 encoding:1];
    if (v3 >= 0x101)
    {
      free(v4);
    }
  }

  else
  {
    v6 = &stru_1F1B24B60;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t _PAS_sqlite3_bind_nssecurecoding(sqlite3_stmt *a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _PAS_sqlite3_bind_nssecurecoding(sqlite3_stmt * _Nonnull, int, __strong id<NSSecureCoding> _Nonnull)"}];
    [v13 handleFailureInFunction:v14 file:@"_PASSqliteDatabase.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"obj != nil"}];
  }

  v6 = objc_autoreleasePoolPush();
  v15 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {

    objc_autoreleasePoolPop(v6);
    v10 = _PAS_sqlite3_bind_nsdata(a1, a2, v7);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Can not archive data: %@", buf, 0xCu);
    }

    v10 = sqlite3_bind_null(a1, a2);

    objc_autoreleasePoolPop(v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1A7F9C234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *getQueryPlan(sqlite3 *a1, void *a2)
{
  v3 = a2;
  ppStmt = 0;
  if ([v3 hasPrefix:@"CREATE "] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"DROP "))
  {
    v4 = @"(no query plan for create and drop queries)";
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"EXPLAIN QUERY PLAN %@", v3];
    sqlite3_prepare_v2(a1, [v6 UTF8String], -1, &ppStmt, 0);

    if (ppStmt)
    {
      v7 = objc_opt_new();
      v8 = objc_opt_new();
      while (sqlite3_step(ppStmt) == 100)
      {
        v9 = sqlite3_column_int(ppStmt, 0);
        v10 = sqlite3_column_int(ppStmt, 1);
        v11 = sqlite3_column_text(ppStmt, 3);
        v12 = sqlite3_column_bytes(ppStmt, 3);
        if (v10 && ([MEMORY[0x1E696AD98] numberWithInteger:v10], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v13), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
        {
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          v16 = [v8 objectForKeyedSubscript:v15];
          v17 = [v16 integerValue] + 4;
        }

        else
        {
          v17 = 0;
        }

        v18 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
        [v8 setObject:v18 forKeyedSubscript:v19];

        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%4td %*s", v9, (v12 + v17), v11];
        [v7 addObject:v20];
      }

      sqlite3_finalize(ppStmt);
      if ([v7 count])
      {
        v4 = [v7 _pas_componentsJoinedByString:@"\n"];
      }

      else
      {
        v4 = @"(empty query plan)";
      }
    }

    else
    {
      v4 = @"(query plan could not be generated)";
    }
  }

  return v4;
}

void sub_1A7F9DBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7F9E050(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A7F9ED08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sqliteBlockFunction(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a2 >= 1 && sqlite3_value_pointer(*a3, "_pas_block"))
  {
    v7 = MEMORY[0x1AC566DD0]();
    Mutable = CFArrayCreateMutable(0, (a2 - 1), MEMORY[0x1E695E9C0]);
    v9 = objc_autoreleasePoolPush();
    if (a2 != 1)
    {
      v10 = a2 - 1;
      v11 = a3 + 1;
      do
      {
        v12 = *v11++;
        Value = _PASSqliteGetValue(v12);
        CFArrayAppendValue(Mutable, Value);
        --v10;
      }

      while (v10);
    }

    objc_autoreleasePoolPop(v9);
    v14 = (v7)[2](v7, Mutable);
    CFRelease(Mutable);
    if (v14)
    {
      _PASSqliteSetResult();
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      _PASSqliteSetResult();
    }
  }

  else
  {
    sqlite3_result_error_code(a1, 20);
  }

  objc_autoreleasePoolPop(v6);
}

id _PASSqliteGetValue(sqlite3_value *a1)
{
  result = sqlite3_value_type(a1);
  if (result <= 2)
  {
    if (result == 1)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:sqlite3_value_int64(a1)];
    }

    else
    {
      if (result != 2)
      {
        goto LABEL_17;
      }

      v7 = [MEMORY[0x1E696AD98] numberWithDouble:sqlite3_value_double(a1)];
    }

LABEL_13:
    v6 = v7;
    goto LABEL_14;
  }

  if (result == 3)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = sqlite3_value_text(a1);
    v6 = [v8 initWithBytes:v9 length:sqlite3_value_bytes(a1) encoding:4];
    if (v6)
    {
      goto LABEL_14;
    }

    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = sqlite3_value_text16(a1);
    v7 = [v10 initWithCharacters:v11 length:sqlite3_value_bytes16(a1) >> 1];
    goto LABEL_13;
  }

  if (result == 5)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_13;
  }

  if (result != 4)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v3 = objc_alloc(MEMORY[0x1E695DEF0]);
  v4 = sqlite3_value_blob(a1);
  v5 = [v3 initWithBytes:v4 length:sqlite3_value_bytes(a1)];
  v6 = [v5 _pas_dataWithNonnullBytes];

LABEL_14:

  return v6;
}

uint64_t runDebugCommandCallback(_BYTE *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((*a1 & 1) == 0)
  {
    v7 = (a2 - 1);
    if (a2 >= 1)
    {
      for (i = 0; i != a2; ++i)
      {
        printf("%s ", *(a4 + 8 * i));
        if (i < v7)
        {
          putchar(9);
        }
      }
    }

    putchar(10);
    v10 = 80;
    do
    {
      putchar(45);
      --v10;
    }

    while (v10);
    putchar(10);
    *a1 = 1;
  }

  if (a2 >= 1)
  {
    v11 = 0;
    do
    {
      printf("%s ", *(a3 + 8 * v11));
      if (v11 < (a2 - 1))
      {
        putchar(9);
      }

      ++v11;
    }

    while (a2 != v11);
  }

  putchar(10);
  fflush(*MEMORY[0x1E69E9858]);
  return 0;
}

void moveOrRemoveDbFile(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v6 = [v5 moveItemAtPath:v3 toPath:v4 error:&v10];
  v7 = v10;

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Corrupt database file moved to %@.", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to move corrupt database file to %@: %@", buf, 0x16u);
    }

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    [v8 removeItemAtPath:v3 error:0];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A7FA08A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _PAS_sqlite3_column_nssecurecoding(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3437;
  v16 = __Block_byref_object_dispose__3438;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___PAS_sqlite3_column_nssecurecoding_block_invoke;
  v9[3] = &unk_1E77F2568;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  _PAS_sqlite3_column_blob_bytes_block(a1, a2, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_1A7FA0AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FA4894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    (*(a18 + 16))();
  }

  _Unwind_Resume(exception_object);
}

void sub_1A7FA5F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FA60F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FA6E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4125(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FA6F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FA71B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FA79B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FA7CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FA8868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FA99FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FAA4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _PASSharedKeySetSupportLoadOnce()
{
  if (_PASSharedKeySetSupportLoadOnce__pasOnceToken2 != -1)
  {
    dispatch_once(&_PASSharedKeySetSupportLoadOnce__pasOnceToken2, &__block_literal_global_4186);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}