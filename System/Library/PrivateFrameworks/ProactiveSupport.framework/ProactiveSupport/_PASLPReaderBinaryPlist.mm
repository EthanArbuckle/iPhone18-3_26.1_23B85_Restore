@interface _PASLPReaderBinaryPlist
- (_PASLPReaderBinaryPlist)initWithData:(id)a3 sourcedFromPath:(id)a4 needsValidation:(BOOL)a5 error:(id *)a6;
- (char)_decodeOffset:(id *)a3 decodedObject:(void *)a4 ifEqualToReferenceObject:(int)a5 validationDepth:(void *)a6 unlazyCopyCache:;
- (id)_unlazyCopyForArrayWithCount:(uint64_t)a3 storage:(void *)a4 unlazyCopyCache:;
- (id)_unlazyCopyForDictionaryWithCount:(uint64_t)a3 storage:(void *)a4 unlazyCopyCache:;
- (id)keyAtIndex:(unint64_t)a3 usingDictionaryContext:(id)a4;
- (id)objectAtIndex:(unint64_t)a3 usingArrayContext:(id)a4;
- (id)objectAtIndex:(unint64_t)a3 usingDictionaryContext:(id)a4;
- (id)objectForKey:(id)a3 usingDictionaryContext:(id)a4;
- (id)rootObjectWithErrMsg:(id *)a3;
- (id)unlazyCopyForArrayWithContext:(id)a3;
- (id)unlazyCopyForDictionaryWithContext:(id)a3;
- (uint64_t)_decodeUnsignedIntegerValue:(void *)a3 usingCursor:;
- (uint64_t)_offsetForRecord:(uint64_t)result;
- (uint64_t)_validateCollectionMembers:(int)a3 validationDepth:(uint64_t)a4 count:;
- (void)dealloc;
@end

@implementation _PASLPReaderBinaryPlist

- (void)dealloc
{
  releaseReaderDeallocator = self->_releaseReaderDeallocator;
  if (releaseReaderDeallocator)
  {
    CFRelease(releaseReaderDeallocator);
  }

  v4.receiver = self;
  v4.super_class = _PASLPReaderBinaryPlist;
  [(_PASLPReaderBinaryPlist *)&v4 dealloc];
}

- (id)unlazyCopyForArrayWithContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4[1];
    v5 = v4[2];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return [(_PASLPReaderBinaryPlist *)self _unlazyCopyForArrayWithCount:v5 storage:v6 unlazyCopyCache:0];
}

- (id)_unlazyCopyForArrayWithCount:(uint64_t)a3 storage:(void *)a4 unlazyCopyCache:
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (!a1)
  {
    v22 = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:0];
    v7 = [v8 setCount:*(a1 + 40)];
  }

  v9 = (8 * a2) | 7;
  memptr = 0;
  v28 = 0;
  if (v9 > 0x80)
  {
    v21 = malloc_type_posix_memalign(&memptr, 8uLL, 8 * a2, 0x80040B8603338uLL);
    LOBYTE(v28) = 0;
    if (v21)
    {
      v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v25);
    }

    v10 = memptr;
    if (!a2)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, (8 * a2) | 7);
  if (a2)
  {
LABEL_6:
    v11 = 0;
    do
    {
      v12 = *(a1 + 49);
      if (*(a1 + 49))
      {
        v13 = 0;
        v14 = (a3 + v11 * v12);
        do
        {
          v15 = *v14++;
          v13 = v15 | (v13 << 8);
          --v12;
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      v16 = [v8 pointerAtIndex:v13];
      memptr = v16;
      if (!v16)
      {
        if (*(a1 + 40) <= v13)
        {
          goto LABEL_25;
        }

        v17 = *(a1 + 48);
        if (*(a1 + 48))
        {
          v18 = 0;
          v19 = (*(a1 + 56) + v13 * v17);
          do
          {
            v20 = *v19++;
            v18 = v20 | (v18 << 8);
            --v17;
          }

          while (v17);
        }

        else
        {
          v18 = 0;
        }

        if (v18 >= *(a1 + 24))
        {
LABEL_25:
          v26 = [MEMORY[0x1E696AAA8] currentHandler];
          [v26 handleFailureInMethod:sel__unlazyCopyForArrayWithCount_storage_unlazyCopyCache_ object:a1 file:@"_PASLPReaderBinaryPlist.m" lineNumber:1067 description:{@"_unlazyCopyForArray error loading array member, this should have been caught during validation"}];

          v18 = -1;
        }

        [(_PASLPReaderBinaryPlist *)a1 _decodeOffset:v18 decodedObject:&memptr ifEqualToReferenceObject:0 validationDepth:-1 unlazyCopyCache:v8];
        if (!memptr)
        {
          v26 = [MEMORY[0x1E696AAA8] currentHandler];
          [v26 handleFailureInMethod:sel__unlazyCopyForArrayWithCount_storage_unlazyCopyCache_ object:a1 file:@"_PASLPReaderBinaryPlist.m" lineNumber:1073 description:{@"Invalid parameter not satisfying: %@", @"member"}];
        }

        [v8 replacePointerAtIndex:v13 withPointer:?];
        v16 = memptr;
      }

      *&v10[8 * v11] = v16;

      ++v11;
    }

    while (v11 != a2);
  }

LABEL_28:
  v22 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v10 count:a2];
  if (v9 >= 0x81)
  {
    free(v10);
  }

LABEL_30:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (char)_decodeOffset:(id *)a3 decodedObject:(void *)a4 ifEqualToReferenceObject:(int)a5 validationDepth:(void *)a6 unlazyCopyCache:
{
  v101[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (!a1)
  {
    goto LABEL_163;
  }

  v14 = *(a1 + 16);
  v15 = (v14 + a2);
  if (__CFADD__(v14, a2))
  {
    goto LABEL_163;
  }

  v93 = a2;
  v16 = *(a1 + 24) + v14;
  if (v15 >= v16 || v14 == 0)
  {
    goto LABEL_163;
  }

  v18 = v15 + 1;
  if ((v15 + 1) >= v16)
  {
    goto LABEL_163;
  }

  v101[0] = v15 + 1;
  if (!v15)
  {
    goto LABEL_163;
  }

  v19 = 0;
  v20 = *v15;
  v21 = v20 >> 4;
  if (v20 >> 4 > 3)
  {
    if (v20 >> 4 > 5)
    {
      if (v21 != 6)
      {
        if (v21 != 10)
        {
          if (v21 == 13)
          {
            v22 = v20 & 0xF;
            valuePtr = v22;
            if ((v20 & 0xF) == 0xF)
            {
              if (![(_PASLPReaderBinaryPlist *)a1 _decodeUnsignedIntegerValue:v101 usingCursor:?])
              {
                goto LABEL_163;
              }

              v22 = valuePtr;
              v18 = v101[0];
            }

            v19 = 0;
            v23 = v22 * *(a1 + 49);
            v24 = v18 + v23;
            v25 = __CFADD__(v18, v23);
            if (v24 < v16 && !v25)
            {
              if (!v18)
              {
                goto LABEL_163;
              }

              v19 = 0;
              v26 = &v24[v23];
              v27 = __CFADD__(v24, v23);
              if (v26 < v16 && !v27 && v24)
              {
                if (a5 < 0 || [(_PASLPReaderBinaryPlist *)a1 _validateCollectionMembers:v18 validationDepth:a5 count:2 * v22])
                {
                  if (!(a3 | v11))
                  {
                    v70 = *(a1 + 16) + v93;
                    goto LABEL_153;
                  }

                  v28 = v93;
                  if (!v11)
                  {
                    if (!v22)
                    {
                      v75 = v13;
                      v76 = MEMORY[0x1E695E0F8];
                      goto LABEL_207;
                    }

                    goto LABEL_184;
                  }

                  v29 = CFGetTypeID(v11);
                  if (v29 == CFDictionaryGetTypeID() && CFDictionaryGetCount(v11) == v22)
                  {
                    if (!v22)
                    {
                      if (a3)
                      {
                        v30 = *a3;
                        v31 = MEMORY[0x1E695E0F8];
LABEL_148:
                        *a3 = v31;

                        goto LABEL_149;
                      }

                      goto LABEL_149;
                    }

LABEL_184:
                    if (v13)
                    {
                      v75 = v13;
                      v76 = [(_PASLPReaderBinaryPlist *)a1 _unlazyCopyForDictionaryWithCount:v22 storage:v18 unlazyCopyCache:v13];
                      v28 = v93;
                    }

                    else
                    {
                      v75 = 0;
                      v81 = [[_PASLPDictionaryContext alloc] initWithStorage:v18 count:v22];
                      v76 = [[_PASLPDictionary alloc] initWithLazyPlistReader:a1 context:v81];
                    }

                    if (!v11 || CFEqual(v76, v11))
                    {
LABEL_207:
                      if (a3)
                      {
LABEL_208:
                        objc_storeStrong(a3, v76);
                        v28 = v93;
                      }

LABEL_209:
                      v19 = &v26[-*(a1 + 16) - v28];
LABEL_210:

                      v13 = v75;
                      goto LABEL_242;
                    }

LABEL_211:
                    v19 = 0;
                    goto LABEL_210;
                  }
                }

LABEL_163:
                v19 = 0;
                goto LABEL_242;
              }
            }
          }

          goto LABEL_242;
        }

        v66 = v20 & 0xF;
        valuePtr = v66;
        if ((v20 & 0xF) == 0xF)
        {
          if (![(_PASLPReaderBinaryPlist *)a1 _decodeUnsignedIntegerValue:v101 usingCursor:?])
          {
            goto LABEL_163;
          }

          v66 = valuePtr;
          v18 = v101[0];
        }

        v19 = 0;
        v67 = v66 * *(a1 + 49);
        v26 = v18 + v67;
        v68 = __CFADD__(v18, v67);
        if (v26 >= v16)
        {
          goto LABEL_242;
        }

        v28 = v93;
        if (v68)
        {
          goto LABEL_242;
        }

        if (!v18 || (a5 & 0x80000000) == 0 && ![(_PASLPReaderBinaryPlist *)a1 _validateCollectionMembers:v18 validationDepth:a5 count:v66])
        {
          goto LABEL_163;
        }

        if (!(a3 | v11))
        {
          goto LABEL_149;
        }

        if (v11)
        {
          v69 = CFGetTypeID(v11);
          if (v69 != CFArrayGetTypeID() || CFArrayGetCount(v11) != v66)
          {
            goto LABEL_163;
          }

          if (!v66)
          {
            if (a3)
            {
              v30 = *a3;
              v31 = MEMORY[0x1E695E0F0];
              goto LABEL_148;
            }

LABEL_149:
            v70 = *(a1 + 16) + v28;
LABEL_153:
            v19 = &v26[-v70];
            goto LABEL_242;
          }
        }

        else if (!v66)
        {
          v75 = v13;
          v76 = MEMORY[0x1E695E0F0];
          goto LABEL_202;
        }

        if (v13)
        {
          v75 = v13;
          v76 = [(_PASLPReaderBinaryPlist *)a1 _unlazyCopyForArrayWithCount:v66 storage:v18 unlazyCopyCache:v13];
          v28 = v93;
        }

        else
        {
          v75 = 0;
          v80 = [[_PASLPArrayContext alloc] initWithStorage:v18 count:v66];
          v76 = [[_PASLPArray alloc] initWithLazyPlistReader:a1 context:v80];
        }

        if (v11 && ![(_PASLPDictionary *)v76 isEqualToArray:v11])
        {
          goto LABEL_211;
        }

LABEL_202:
        if (a3)
        {
          goto LABEL_208;
        }

        goto LABEL_209;
      }

      v43 = 0;
LABEL_91:
      v50 = v20 & 0xF;
      v100 = v50;
      v92 = v12;
      if ((v20 & 0xF) == 0xF)
      {
        if (![(_PASLPReaderBinaryPlist *)a1 _decodeUnsignedIntegerValue:v101 usingCursor:?])
        {
          goto LABEL_151;
        }

        v50 = v100;
        v18 = v101[0];
      }

      v19 = 0;
      v51 = v50 << (v43 ^ 1u);
      v52 = v18 + v51;
      v53 = __CFADD__(v18, v51);
      v91 = v52;
      if (v52 >= v16)
      {
        goto LABEL_241;
      }

      v54 = v93;
      if (v53)
      {
        goto LABEL_241;
      }

      if (v18)
      {
        if (a3 | v11)
        {
          if (!v11)
          {
LABEL_227:
            if (!a3)
            {
LABEL_239:
              v19 = &v91[-*(a1 + 16) - v54];
              v56 = v11;
              goto LABEL_240;
            }

            if (!v43)
            {
              if (v50 > 0x1F)
              {
                v85 = [[_PASBigEndianUTF16String alloc] initWithLength:v50 buffer:v18 backingObject:a1];
              }

              else
              {
                v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v18 length:2 * v50 encoding:2415919360];
              }

              goto LABEL_237;
            }

LABEL_229:
            if (v50 > 0x1E)
            {
              CFRetain(*(a1 + 8));
              v85 = CFStringCreateWithBytesNoCopy(0, v18, v50, 0x600u, 0, *(a1 + 64));
              if (v85)
              {
LABEL_238:
                v86 = *a3;
                *a3 = v85;

                v54 = v93;
                goto LABEL_239;
              }

              CFAllocatorDeallocate(*(a1 + 64), v18);
LABEL_235:
              v85 = &stru_1F1B24B60;
              goto LABEL_238;
            }

            v85 = CFStringCreateWithBytes(0, v18, v50, 0x600u, 0);
LABEL_237:
            if (v85)
            {
              goto LABEL_238;
            }

            goto LABEL_235;
          }

          v55 = CFGetTypeID(v11);
          if (v55 == CFStringGetTypeID())
          {
            v56 = v11;
            Length = CFStringGetLength(v56);
            if (Length == v50)
            {
              if (!v50)
              {
                if (a3)
                {
                  v78 = *a3;
                  *a3 = &stru_1F1B24B60;
                }

                goto LABEL_195;
              }

              if (v43)
              {
                Length = [(__CFString *)v56 _fastCStringContents:0];
                if (Length)
                {
                  v58 = memcmp(Length, v18, v50);
                  if (a3 || v58)
                  {
                    if (!v58)
                    {
                      if (!a3)
                      {
                        goto LABEL_239;
                      }

                      goto LABEL_229;
                    }

                    goto LABEL_155;
                  }

LABEL_195:
                  v19 = &v91[-*(a1 + 16) - v54];
                  goto LABEL_240;
                }

                v79 = 1;
              }

              else
              {
                v79 = 2415919360;
              }

              v90 = v79;
              MEMORY[0x1EEE9AC00](Length);
              bzero(v89, 0x1000uLL);
              valuePtr = 0;
              p_valuePtr = v50;
              v82 = v50;
              while (1)
              {
                v83 = valuePtr;
                v94 = 0;
                v84 = valuePtr ? 4096 : 64;
                if (([(__CFString *)v56 getBytes:v89 maxLength:v84 usedLength:&v94 encoding:v90 options:0 range:valuePtr remainingRange:v82, &valuePtr]& 1) == 0 || memcmp(v18 + (v83 << (v43 ^ 1u)), v89, v94))
                {
                  break;
                }

                v82 = p_valuePtr;
                if (!p_valuePtr)
                {
                  v54 = v93;
                  goto LABEL_227;
                }
              }
            }
          }

          else
          {
            v56 = 0;
          }

LABEL_155:
          v19 = 0;
LABEL_240:

          goto LABEL_241;
        }

        v19 = (v91 - v15);
LABEL_241:
        v13 = v92;
        goto LABEL_242;
      }

LABEL_151:
      v19 = 0;
      goto LABEL_241;
    }

    if (v21 != 4)
    {
      if (v21 != 5)
      {
        goto LABEL_242;
      }

      v43 = 1;
      goto LABEL_91;
    }

    v59 = v20 & 0xF;
    v100 = v59;
    if ((v20 & 0xF) == 0xF)
    {
      if (![(_PASLPReaderBinaryPlist *)a1 _decodeUnsignedIntegerValue:v101 usingCursor:?])
      {
        goto LABEL_163;
      }

      v59 = v100;
      v18 = v101[0];
    }

    v19 = 0;
    v34 = v18 + v59;
    v60 = __CFADD__(v18, v59);
    if (v34 >= v16 || v60)
    {
      goto LABEL_242;
    }

    v101[0] = v18 + v59;
    if (!v18)
    {
      goto LABEL_163;
    }

    if (a3 | v11)
    {
      if (v11)
      {
        v61 = CFGetTypeID(v11);
        if (v61 != CFDataGetTypeID())
        {
          goto LABEL_163;
        }

        v62 = v11;
        if (CFDataGetLength(v62) == v59)
        {
          if (v59)
          {
            v63 = v13;
            valuePtr = 0;
            p_valuePtr = &valuePtr;
            v98 = 0x2020000000;
            v99 = 1;
            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 3221225472;
            v95[2] = __112___PASLPReaderBinaryPlist__decodeOffset_decodedObject_ifEqualToReferenceObject_validationDepth_unlazyCopyCache___block_invoke;
            v95[3] = &unk_1E77F1490;
            v95[4] = &valuePtr;
            v95[5] = v18;
            [v62 enumerateByteRangesUsingBlock:v95];
            v64 = *(p_valuePtr + 24);
            if (!a3 && *(p_valuePtr + 24))
            {
              v65 = *(a1 + 16);
              _Block_object_dispose(&valuePtr, 8);

LABEL_191:
              v19 = &v34[-v65 - v93];
LABEL_192:
              v13 = v63;
              goto LABEL_242;
            }

            _Block_object_dispose(&valuePtr, 8);

            if ((v64 & 1) == 0)
            {
              v19 = 0;
              goto LABEL_192;
            }

            goto LABEL_172;
          }

          if (a3)
          {
            objc_storeStrong(a3, &unk_1EE71B5D8);
          }

          v19 = &v34[-*(a1 + 16) - v93];
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_242;
      }

      v63 = v13;
      if (!v59)
      {
        v74 = &unk_1EE71B5D8;
        v77 = &unk_1EE71B5D8;
        goto LABEL_188;
      }

LABEL_172:
      CFRetain(*(a1 + 8));
      v74 = CFDataCreateWithBytesNoCopy(0, v18, v59, *(a1 + 64));
      if (!v74)
      {
        CFAllocatorDeallocate(*(a1 + 64), v18);
        if (a3)
        {
          __assert_rtn("[_PASLPReaderBinaryPlist _decodeOffset:decodedObject:ifEqualToReferenceObject:validationDepth:unlazyCopyCache:]", "_PASLPReaderBinaryPlist.m", 665, "decoded");
        }

        v74 = 0;
LABEL_190:
        v65 = *(a1 + 16);

        goto LABEL_191;
      }

LABEL_188:
      if (a3)
      {
        objc_storeStrong(a3, v74);
      }

      goto LABEL_190;
    }

LABEL_129:
    v19 = (v34 - v15);
    goto LABEL_242;
  }

  if (v20 >> 4 > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        goto LABEL_242;
      }

      if (v20 != 51)
      {
        goto LABEL_163;
      }

      v19 = 0;
      v34 = v15 + 9;
      if ((v15 + 9) >= v16 || v15 >= 0xFFFFFFFFFFFFFFF7)
      {
        goto LABEL_242;
      }

      if (a3 | v11)
      {
        v40 = CFDateCreate(0, COERCE_CFABSOLUTETIME(bswap64(*v18)));
        if (!v40)
        {
          __assert_rtn("[_PASLPReaderBinaryPlist _decodeOffset:decodedObject:ifEqualToReferenceObject:validationDepth:unlazyCopyCache:]", "_PASLPReaderBinaryPlist.m", 600, "decoded");
        }

        v41 = v40;
        v42 = v93;
        if (v11 && !CFEqual(v40, v11))
        {
          v19 = 0;
        }

        else
        {
          if (a3)
          {
            objc_storeStrong(a3, v41);
            v42 = v93;
          }

          v19 = &v34[-*(a1 + 16) - v42];
        }

        goto LABEL_242;
      }

      goto LABEL_129;
    }

    v47 = v20 & 0xF;
    if ((v47 - 4) < 0xFFFFFFFE)
    {
      goto LABEL_163;
    }

    v19 = 0;
    v34 = v18 + (1 << v47);
    v48 = __CFADD__(v18, 1 << v47);
    if (v34 >= v16 || v48)
    {
      goto LABEL_242;
    }

    if (!(a3 | v11))
    {
      goto LABEL_129;
    }

    if (v47 == 2)
    {
      LODWORD(valuePtr) = bswap32(*v18);
      v49 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
    }

    else
    {
      valuePtr = 0;
      __memcpy_chk();
      v100 = bswap64(0);
      v49 = CFNumberCreate(0, kCFNumberFloat64Type, &v100);
    }

    v39 = v49;
    if (!v49)
    {
      __assert_rtn("[_PASLPReaderBinaryPlist _decodeOffset:decodedObject:ifEqualToReferenceObject:validationDepth:unlazyCopyCache:]", "_PASLPReaderBinaryPlist.m", 572, "decoded != nil");
    }

    if (v11 && !CFEqual(v49, v11))
    {
      v19 = 0;
    }

    else
    {
      if (a3)
      {
        objc_storeStrong(a3, v39);
      }

      v19 = &v34[-*(a1 + 16) - v93];
    }

LABEL_176:

    goto LABEL_242;
  }

  if (!v21)
  {
    if (v20 == 9)
    {
      v71 = MEMORY[0x1E695E4D0];
      v44 = v93;
    }

    else
    {
      v44 = v93;
      if (v20 != 8)
      {
        if (*v15)
        {
          goto LABEL_163;
        }

        v45 = *MEMORY[0x1E695E738];
        if (v11)
        {
          if (v45 != v11)
          {
            goto LABEL_163;
          }
        }

        if (a3)
        {
          v46 = *a3;
          *a3 = v45;

          v15 = (*(a1 + 16) + v44);
        }

        v19 = (v18 - v15);
        goto LABEL_242;
      }

      v71 = MEMORY[0x1E695E4C0];
    }

    v72 = *v71;
    if (v11 && !CFEqual(*v71, v11))
    {
      goto LABEL_163;
    }

    if (a3)
    {
      v73 = *a3;
      *a3 = v72;
    }

    v19 = v18 - *(a1 + 16) - v44;
    goto LABEL_242;
  }

  if (v21 == 1)
  {
    v32 = v20 & 0xF;
    if (v32 > 4)
    {
      goto LABEL_163;
    }

    v19 = 0;
    v33 = 1 << v32;
    v34 = v18 + (1 << v32);
    v35 = __CFADD__(v18, 1 << v32);
    if (v34 < v16 && !v35)
    {
      if (!(a3 | v11))
      {
        goto LABEL_129;
      }

      if (v32 == 4)
      {
        v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:bswap64(*v18)];
      }

      else
      {
        v36 = 0;
        do
        {
          v37 = *v18;
          v18 = (v18 + 1);
          v36 = v37 | (v36 << 8);
          --v33;
        }

        while (v33);
        valuePtr = v36;
        v38 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      }

      v39 = v38;
      if (v11 && !CFEqual(v38, v11))
      {
        v19 = 0;
      }

      else
      {
        if (a3)
        {
          if (!v39)
          {
            __assert_rtn("[_PASLPReaderBinaryPlist _decodeOffset:decodedObject:ifEqualToReferenceObject:validationDepth:unlazyCopyCache:]", "_PASLPReaderBinaryPlist.m", 541, "decoded != nil");
          }

          objc_storeStrong(a3, v39);
        }

        v19 = &v34[-v93 - *(a1 + 16)];
      }

      goto LABEL_176;
    }
  }

LABEL_242:

  v87 = *MEMORY[0x1E69E9840];
  return v19;
}

- (uint64_t)_decodeUnsignedIntegerValue:(void *)a3 usingCursor:
{
  v3 = *a3;
  v4 = (*a3 + 1);
  if ((**a3 & 0xF0) != 0x10)
  {
    return 0;
  }

  v5 = **a3 & 0xF;
  if (v5 > 4)
  {
    return 0;
  }

  result = 0;
  v8 = *(a1 + 24) + *(a1 + 16);
  v9 = 1 << v5;
  v10 = v4 + (1 << v5);
  v11 = __CFADD__(v4, 1 << v5);
  if (v10 < v8 && !v11)
  {
    if (*a3 == -1)
    {
      return 0;
    }

    if (v5 == 4)
    {
      v12 = bswap64(*v4);
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = v12;
        v14 = *v4;
        v4 = (v4 + 1);
        v12 = v14 | (v12 << 8);
        --v9;
      }

      while (v9);
      if (v5 == 3 && ((v13 << 8) & 0x8000000000000000) != 0)
      {
        return 0;
      }
    }

    *a2 = v12;
    *a3 = v10;
    return v10 - v3;
  }

  return result;
}

- (uint64_t)_validateCollectionMembers:(int)a3 validationDepth:(uint64_t)a4 count:
{
  if (!a3)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(a1 + 49);
    if (*(a1 + 49))
    {
      v9 = 0;
      v10 = (a2 + v7 * v8);
      do
      {
        v11 = *v10++;
        v9 = v11 | (v9 << 8);
        --v8;
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if (*(a1 + 40) <= v9)
    {
      break;
    }

    v12 = *(a1 + 48);
    if (*(a1 + 48))
    {
      v13 = 0;
      v14 = (*(a1 + 56) + v9 * v12);
      do
      {
        v15 = *v14++;
        v13 = v15 | (v13 << 8);
        --v12;
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    if (v13 >= *(a1 + 24))
    {
      break;
    }

    result = [_PASLPReaderBinaryPlist _decodeOffset:a1 decodedObject:? ifEqualToReferenceObject:? validationDepth:? unlazyCopyCache:?];
    if (!result)
    {
      return result;
    }

    if (++v7 == a4)
    {
      return 1;
    }
  }

  return 0;
}

- (id)_unlazyCopyForDictionaryWithCount:(uint64_t)a3 storage:(void *)a4 unlazyCopyCache:
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    if (!v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:0];
      v7 = [v8 setCount:*(a1 + 40)];
    }

    v9 = (16 * a2) | 7;
    memptr = 0;
    v29 = 0;
    if (v9 > 0x80)
    {
      v25 = malloc_type_posix_memalign(&memptr, 8uLL, 16 * a2, 0x80040B8603338uLL);
      LOBYTE(v29) = 0;
      if (v25)
      {
        v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v26);
      }

      v10 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v7);
      v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v10, (16 * a2) | 7);
    }

    if (2 * a2)
    {
      v11 = 0;
      do
      {
        v12 = *(a1 + 49);
        if (*(a1 + 49))
        {
          v13 = 0;
          v14 = (a3 + v11 * v12);
          do
          {
            v15 = *v14++;
            v13 = v15 | (v13 << 8);
            --v12;
          }

          while (v12);
        }

        else
        {
          v13 = 0;
        }

        v16 = [v8 pointerAtIndex:v13];
        memptr = v16;
        if (!v16)
        {
          if (*(a1 + 40) <= v13)
          {
            goto LABEL_25;
          }

          v17 = *(a1 + 48);
          if (*(a1 + 48))
          {
            v18 = 0;
            v19 = (*(a1 + 56) + v13 * v17);
            do
            {
              v20 = *v19++;
              v18 = v20 | (v18 << 8);
              --v17;
            }

            while (v17);
          }

          else
          {
            v18 = 0;
          }

          if (v18 >= *(a1 + 24))
          {
LABEL_25:
            v27 = [MEMORY[0x1E696AAA8] currentHandler];
            [v27 handleFailureInMethod:sel__unlazyCopyForDictionaryWithCount_storage_unlazyCopyCache_ object:a1 file:@"_PASLPReaderBinaryPlist.m" lineNumber:1009 description:{@"_unlazyCopyForDictionary error loading dictionary member, this should have been caught during validation"}];
          }

          [_PASLPReaderBinaryPlist _decodeOffset:a1 decodedObject:? ifEqualToReferenceObject:? validationDepth:? unlazyCopyCache:?];
          [v8 replacePointerAtIndex:v13 withPointer:memptr];
          v16 = memptr;
          if (!memptr)
          {
            v21 = [MEMORY[0x1E696AAA8] currentHandler];
            [v21 handleFailureInMethod:sel__unlazyCopyForDictionaryWithCount_storage_unlazyCopyCache_ object:a1 file:@"_PASLPReaderBinaryPlist.m" lineNumber:1017 description:{@"Invalid parameter not satisfying: %@", @"materializedDictionaryMember"}];

            v16 = memptr;
          }
        }

        *&v10[8 * v11] = v16;

        ++v11;
      }

      while (v11 != 2 * a2);
    }

    v22 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:&v10[8 * a2] forKeys:v10 count:a2];
    if (v9 >= 0x81)
    {
      free(v10);
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)objectAtIndex:(unint64_t)a3 usingArrayContext:(id)a4
{
  if (self && (!a4 ? (v7 = 0) : (v7 = *(a4 + 1)), (objectRefSize = self->_objectRefSize) != 0))
  {
    v9 = 0;
    v10 = (v7 + objectRefSize * a3);
    do
    {
      v11 = *v10++;
      v9 = v11 | (v9 << 8);
      --objectRefSize;
    }

    while (objectRefSize);
  }

  else
  {
    v9 = 0;
  }

  v12 = [(_PASLPReaderBinaryPlist *)self _offsetForRecord:v9];
  v13 = v12;
  if (v12 == -1)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_PASLPReaderBinaryPlist.m" lineNumber:1042 description:{@"Invalid parameter not satisfying: %@", @"offset != UINT64_MAX"}];

    v14 = -1;
  }

  else
  {
    v14 = v12;
  }

  v20 = 0;
  [(_PASLPReaderBinaryPlist *)self _decodeOffset:v14 decodedObject:&v20 ifEqualToReferenceObject:0 validationDepth:-1 unlazyCopyCache:0];
  v15 = v20;
  if (!v20)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_PASLPReaderBinaryPlist.m" lineNumber:1046 description:{@"Unexpected validation failure (index=%tu, offset=%llu)", a3, v13}];

    v15 = v20;
  }

  v16 = v15;

  return v16;
}

- (uint64_t)_offsetForRecord:(uint64_t)result
{
  if (result)
  {
    if (*(result + 40) <= a2)
    {
      return -1;
    }

    else
    {
      v2 = *(result + 48);
      if (*(result + 48))
      {
        v3 = 0;
        v4 = (*(result + 56) + v2 * a2);
        do
        {
          v5 = *v4++;
          v3 = v5 | (v3 << 8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v3 = 0;
      }

      if (v3 >= *(result + 24))
      {
        return -1;
      }

      else
      {
        return v3;
      }
    }
  }

  return result;
}

- (id)unlazyCopyForDictionaryWithContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4[1];
    v5 = v4[2];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return [(_PASLPReaderBinaryPlist *)self _unlazyCopyForDictionaryWithCount:v5 storage:v6 unlazyCopyCache:0];
}

- (id)objectAtIndex:(unint64_t)a3 usingDictionaryContext:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (self && (!v7 ? (v9 = 0, v10 = 0) : (v10 = *(v7 + 1), v9 = *(v7 + 2)), (objectRefSize = self->_objectRefSize) != 0))
  {
    v12 = 0;
    v13 = (v10 + (v9 + a3) * objectRefSize);
    do
    {
      v14 = *v13++;
      v12 = v14 | (v12 << 8);
      --objectRefSize;
    }

    while (objectRefSize);
  }

  else
  {
    v12 = 0;
  }

  v15 = [(_PASLPReaderBinaryPlist *)self _offsetForRecord:v12];
  v16 = v15;
  if (v15 == -1)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_PASLPReaderBinaryPlist.m" lineNumber:983 description:{@"Invalid parameter not satisfying: %@", @"offset != UINT64_MAX"}];

    v17 = -1;
  }

  else
  {
    v17 = v15;
  }

  v23 = 0;
  [(_PASLPReaderBinaryPlist *)self _decodeOffset:v17 decodedObject:&v23 ifEqualToReferenceObject:0 validationDepth:-1 unlazyCopyCache:0];
  v18 = v23;
  if (!v23)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_PASLPReaderBinaryPlist.m" lineNumber:987 description:{@"Unexpected validation failure (index=%tu, offset=%llu)", a3, v16}];

    v18 = v23;
  }

  v19 = v18;

  return v19;
}

- (id)keyAtIndex:(unint64_t)a3 usingDictionaryContext:(id)a4
{
  if (self && (!a4 ? (v7 = 0) : (v7 = *(a4 + 1)), (objectRefSize = self->_objectRefSize) != 0))
  {
    v9 = 0;
    v10 = (v7 + objectRefSize * a3);
    do
    {
      v11 = *v10++;
      v9 = v11 | (v9 << 8);
      --objectRefSize;
    }

    while (objectRefSize);
  }

  else
  {
    v9 = 0;
  }

  v12 = [(_PASLPReaderBinaryPlist *)self _offsetForRecord:v9];
  v13 = v12;
  if (v12 == -1)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_PASLPReaderBinaryPlist.m" lineNumber:970 description:{@"Invalid parameter not satisfying: %@", @"offset != UINT64_MAX"}];

    v14 = -1;
  }

  else
  {
    v14 = v12;
  }

  v20 = 0;
  [(_PASLPReaderBinaryPlist *)self _decodeOffset:v14 decodedObject:&v20 ifEqualToReferenceObject:0 validationDepth:-1 unlazyCopyCache:0];
  v15 = v20;
  if (!v20)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_PASLPReaderBinaryPlist.m" lineNumber:974 description:{@"Unexpected validation failure (index=%tu, offset=%llu)", a3, v13}];

    v15 = v20;
  }

  v16 = v15;

  return v16;
}

- (id)objectForKey:(id)a3 usingDictionaryContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8 && (v10 = *(v8 + 2)) != 0)
  {
    v11 = 0;
    v12 = *(v8 + 1);
    while (1)
    {
      if (self && (objectRefSize = self->_objectRefSize) != 0)
      {
        v14 = 0;
        v15 = (v12 + v11 * objectRefSize);
        do
        {
          v16 = *v15++;
          v14 = v16 | (v14 << 8);
          --objectRefSize;
        }

        while (objectRefSize);
      }

      else
      {
        v14 = 0;
      }

      v17 = [(_PASLPReaderBinaryPlist *)self _offsetForRecord:v14];
      if (v17 == -1)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"_PASLPReaderBinaryPlist.m" lineNumber:953 description:{@"objectForKey error loading key record, this should have been caught during validation"}];

        v17 = -1;
      }

      if ([(_PASLPReaderBinaryPlist *)self _decodeOffset:v17 decodedObject:0 ifEqualToReferenceObject:v7 validationDepth:-1 unlazyCopyCache:0])
      {
        break;
      }

      if (++v11 == v10)
      {
        goto LABEL_14;
      }
    }

    v18 = [(_PASLPReaderBinaryPlist *)self objectAtIndex:v11 usingDictionaryContext:v9];
  }

  else
  {
LABEL_14:
    v18 = 0;
  }

  return v18;
}

- (id)rootObjectWithErrMsg:(id *)a3
{
  v4 = [(_PASLPReaderBinaryPlist *)self _offsetForRecord:?];
  if (v4 == -1)
  {
    __assert_rtn("[_PASLPReaderBinaryPlist rootObjectWithErrMsg:]", "_PASLPReaderBinaryPlist.m", 323, "offset != UINT64_MAX");
  }

  v8 = 0;
  if ([(_PASLPReaderBinaryPlist *)self _decodeOffset:v4 decodedObject:&v8 ifEqualToReferenceObject:0 validationDepth:-1 unlazyCopyCache:0])
  {
    v5 = v8 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    __assert_rtn("[_PASLPReaderBinaryPlist rootObjectWithErrMsg:]", "_PASLPReaderBinaryPlist.m", 330, "success && decoded");
  }

  v6 = v8;

  return v6;
}

- (_PASLPReaderBinaryPlist)initWithData:(id)a3 sourcedFromPath:(id)a4 needsValidation:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v61 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    [v55 handleFailureInMethod:a2 object:self file:@"_PASLPReaderBinaryPlist.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"data"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v56 = [MEMORY[0x1E696AAA8] currentHandler];
  [v56 handleFailureInMethod:a2 object:self file:@"_PASLPReaderBinaryPlist.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"path"}];

LABEL_3:
  v59.receiver = self;
  v59.super_class = _PASLPReaderBinaryPlist;
  v15 = [(_PASLPReaderBinaryPlist *)&v59 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_backingData, a3);
    v17 = [*(v16 + 8) bytes];
    v18 = [*(v16 + 8) length];
    *(v16 + 16) = v17;
    *(v16 + 24) = v18;
    context.version = 0;
    context.info = v12;
    memset(&context.retain, 0, 24);
    context.allocate = cfAllocateAlwaysFailing;
    context.reallocate = 0;
    context.deallocate = cfDeallocateReleaseInfo;
    context.preferredSize = 0;
    v19 = CFAllocatorCreate(0, &context);
    *(v16 + 64) = v19;
    if (!v19)
    {
      v58 = [MEMORY[0x1E696AAA8] currentHandler];
      [v58 handleFailureInMethod:a2 object:v16 file:@"_PASLPReaderBinaryPlist.m" lineNumber:205 description:@"Failed to create _releaseReaderDeallocator"];
    }

    v20 = v14;
    v21 = *(v16 + 24);
    if (v21 <= 7)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"file %@ not long enough for bplist header", v20];
LABEL_11:
      v24 = v22;
      v25 = corruptionError(v20, v22);
      goto LABEL_30;
    }

    if (v21 <= 0x1F)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"file %@ not long enough for bplist trailer", v20];
      goto LABEL_11;
    }

    v26 = *(v16 + 16);
    if (*v26 != 1768714338 || *(v26 + 4) != 29811)
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"file %@ is missing bplist magic", v20];
      v28 = v20;
      v29 = objc_opt_new();
      v30 = v29;
      if (v24)
      {
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The file is not a bplist archive: %@", v24];
        [v30 setObject:v31 forKeyedSubscript:*MEMORY[0x1E696A578]];
      }

      else
      {
        [v29 setObject:@"The file is not a bplist archive." forKeyedSubscript:*MEMORY[0x1E696A578]];
      }

      [v30 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696A588]];

      [v30 setObject:v28 forKeyedSubscript:*MEMORY[0x1E696A368]];
      v44 = objc_alloc(MEMORY[0x1E696ABC0]);
      v45 = [v30 copy];
      v46 = v44;
      v47 = 8;
LABEL_29:
      v25 = [v46 initWithDomain:@"_PASLazyPlistErrorDomain" code:v47 userInfo:v45];

      goto LABEL_30;
    }

    if (*(v26 + 6) != 48 || (*(v26 + 7) & 0xFE) != 0x30)
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"rejecting file %@ because header has unexpected version bplist%c%c", v20, *(v26 + 6), *(v26 + 7)];
      v42 = objc_opt_new();
      v30 = v42;
      if (v24)
      {
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported format version: %@", v24];
        [v30 setObject:v43 forKeyedSubscript:*MEMORY[0x1E696A578]];
      }

      else
      {
        [v42 setObject:@"Unsupported format version." forKeyedSubscript:*MEMORY[0x1E696A578]];
      }

      [v30 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696A588]];

      v48 = objc_alloc(MEMORY[0x1E696ABC0]);
      v45 = [v30 copy];
      v46 = v48;
      v47 = 3;
      goto LABEL_29;
    }

    v32 = *(v26 + v21 - 26);
    v33 = *(v26 + v21 - 25);
    v35 = *(v26 + v21 - 24);
    v34 = *(v26 + v21 - 16);
    v36 = *(v26 + v21 - 8);
    *(v16 + 48) = v32;
    *(v16 + 49) = v33;
    v37 = bswap64(v35);
    *(v16 + 40) = v37;
    v38 = bswap64(v36);
    v39 = __CFADD__(v26, v38);
    v40 = v26 + v38;
    if (v39)
    {
      v41 = @"mmapBase + indicated offsets table location overflows address space";
    }

    else if (is_mul_ok(v32, v37))
    {
      v52 = v32 * v37;
      v39 = __CFADD__(v40, v52);
      v53 = v40 + v52;
      if (v39)
      {
        v41 = @"purported last byte of offsets list exceeds address space";
      }

      else if (v53 - v26 <= v21)
      {
        *(v16 + 56) = v40;
        v54 = bswap64(v34);
        *(v16 + 32) = v54;
        if (v54 <= v37)
        {
          if (v7)
          {
            v57 = [(_PASLPReaderBinaryPlist *)v16 _offsetForRecord:v54];
            if (v57 == -1)
            {
              v41 = @"purported offset of serialized top-level record starts past end of buffer";
              goto LABEL_44;
            }

            if (![(_PASLPReaderBinaryPlist *)v16 _decodeOffset:v57 decodedObject:0 ifEqualToReferenceObject:0 validationDepth:128 unlazyCopyCache:0])
            {
              v41 = @"A disqualifying issue was found while performing a validation traversal of the bplist's object tree";
              goto LABEL_44;
            }
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            LODWORD(context.version) = 138412290;
            *(&context.version + 4) = v20;
            _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASLazyPlist: Loaded %@", &context, 0xCu);
          }

          v23 = v16;
          v25 = 0;
          goto LABEL_33;
        }

        v41 = @"offsets table is not large enough to contain the record number of the top-level object";
      }

      else
      {
        v41 = @"purported last byte of offsets list exceeds size of backing store";
      }
    }

    else
    {
      v41 = @"(size of offset table entry) * (number of offset table entries) overflows UINT64_MAX";
    }

LABEL_44:
    v25 = corruptionError(v20, v41);
    v24 = 0;
LABEL_30:

    if (a6)
    {
      v49 = v25;
      v23 = 0;
      *a6 = v25;
    }

    else
    {
      v23 = 0;
    }

LABEL_33:

    goto LABEL_34;
  }

  v23 = 0;
LABEL_34:

  v50 = *MEMORY[0x1E69E9840];
  return v23;
}

@end