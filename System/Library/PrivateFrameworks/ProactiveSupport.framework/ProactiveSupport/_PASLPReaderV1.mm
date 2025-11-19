@interface _PASLPReaderV1
- (CFTypeRef)_stringForMappedUTF8CString:(CFTypeRef *)a1;
- (_PASLPReaderV1)initWithData:(id)a3 sourcedFromPath:(id)a4 needsValidation:(BOOL)a5 error:(id *)a6;
- (id)_objectForValue:(uint64_t)a1;
- (id)_objectForValue:(void *)a3 errMsg:;
- (id)keyAtIndex:(unint64_t)a3 usingDictionaryContext:(id)a4;
- (id)objectAtIndex:(unint64_t)a3 usingArrayContext:(id)a4;
- (id)objectAtIndex:(unint64_t)a3 usingDictionaryContext:(id)a4;
- (id)objectForKey:(id)a3 usingDictionaryContext:(id)a4;
- (uint64_t)_decodeDictionaryKeyValue:(void *)a3 errMsg:(void *)a4 handleString:;
- (uint64_t)_decodeValue:(void *)a3 errMsg:(void *)a4 handleBoolean:(void *)a5 handleTaggedInt:(void *)a6 handleBoxedInt:(void *)a7 handleTaggedFloat:(void *)a8 handleBoxedFloat:(void *)a9 handleDate:(void *)a10 handleData:(void *)a11 handleString:(void *)a12 handleDict:(void *)a13 handleArray:;
- (uint64_t)_validateObjectGraphWithFilename:(unint64_t)a3 rootValue:(unint64_t)a4 recursionDepth:(uint64_t)a5 stats:(void *)a6 error:;
- (void)dealloc;
- (void)decodeDictionaryKeyForValue:(void *)a3 handleString:;
@end

@implementation _PASLPReaderV1

- (void)dealloc
{
  releaseReaderDeallocator = self->_releaseReaderDeallocator;
  if (releaseReaderDeallocator)
  {
    CFRelease(releaseReaderDeallocator);
  }

  v4.receiver = self;
  v4.super_class = _PASLPReaderV1;
  [(_PASLPReaderV1 *)&v4 dealloc];
}

- (id)objectAtIndex:(unint64_t)a3 usingArrayContext:(id)a4
{
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    v8 = v7;
    if (v6[2] <= a3)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"Index out of range", 0}];
    }

    v9 = [(_PASLPReaderV1 *)self _objectForValue:?];
    objc_autoreleasePoolPop(v8);

    return v9;
  }

  else
  {
    result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"Index out of range", 0}];
    __break(1u);
  }

  return result;
}

- (id)_objectForValue:(uint64_t)a1
{
  if (a1)
  {
    v6 = 0;
    v2 = [(_PASLPReaderV1 *)a1 _objectForValue:a2 errMsg:&v6];
    if (!v2)
    {
      v5 = [_PASLazyPlistCorruptException alloc];
      objc_exception_throw([(_PASLazyPlistCorruptException *)v5 initWithName:@"_PASLazyPlistCorruptException" reason:v6 userInfo:0]);
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_objectForValue:(void *)a3 errMsg:
{
  if (a1)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy_;
    v27 = __Block_byref_object_dispose_;
    v28 = 0;
    v6 = *(a1 + 8);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke;
    v22[3] = &unk_1E77F1638;
    v22[4] = &v29;
    v20[4] = &v29;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_2;
    v21[3] = &unk_1E77F1660;
    v21[4] = &v29;
    v19[4] = &v29;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_3;
    v20[3] = &unk_1E77F1688;
    v18[4] = &v29;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_4;
    v19[3] = &unk_1E77F16B0;
    v17[4] = &v29;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_5;
    v18[3] = &unk_1E77F16D8;
    v16 = &v29;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_6;
    v17[3] = &unk_1E77F16D8;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_7;
    v14[3] = &unk_1E77F2568;
    v7 = v6;
    v15 = v7;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_9;
    v13[3] = &unk_1E77F1728;
    v13[4] = a1;
    v13[5] = &v29;
    v13[6] = &v23;
    v11[5] = &v29;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_10;
    v12[3] = &unk_1E77F1750;
    v12[4] = a1;
    v12[5] = &v29;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_11;
    v11[3] = &unk_1E77F1750;
    v11[4] = a1;
    [(_PASLPReaderV1 *)a1 _decodeValue:a2 errMsg:a3 handleBoolean:v22 handleTaggedInt:v21 handleBoxedInt:v20 handleTaggedFloat:v19 handleBoxedFloat:v18 handleDate:v17 handleData:v14 handleString:v13 handleDict:v12 handleArray:v11];
    v8 = v24[5];
    if (v8)
    {
      objc_storeStrong(a3, v8);
    }

    v9 = v30[5];

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)_decodeValue:(void *)a3 errMsg:(void *)a4 handleBoolean:(void *)a5 handleTaggedInt:(void *)a6 handleBoxedInt:(void *)a7 handleTaggedFloat:(void *)a8 handleBoxedFloat:(void *)a9 handleDate:(void *)a10 handleData:(void *)a11 handleString:(void *)a12 handleDict:(void *)a13 handleArray:
{
  v112 = *MEMORY[0x1E69E9840];
  v109 = a4;
  v18 = a5;
  v108 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v106 = a11;
  v23 = a12;
  v24 = a13;
  v26 = v24;
  v27 = a2 >> 29;
  if (a2 >> 29 > 3)
  {
    if (a2 >> 29 > 5)
    {
      if (v27 != 6)
      {
        v61 = HIDWORD(a2);
        v62 = a2 & 0x1FFFFFFF;
        v63 = *(a1 + 24);
        if (v62 + 4 > v63)
        {
          v35 = v21;
          v40 = v24;
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Array pointer 0x%lx at ofs 0x%lx references address outside of mmap range", a2 & 0x1FFFFFFF, HIDWORD(a2), v100, v101];
          goto LABEL_32;
        }

        v102 = v24;
        v35 = v21;
        v79 = *(a1 + 16);
        v80 = *(v79 + v62);
        v33 = v108;
        if (v62 + 4 + 4 * v80 <= v63)
        {
          if (((v62 + v79) & 3) == 0)
          {
            v26 = v24;
            if (v24)
            {
              (*(v24 + 2))(v24, v62 + v79 + 4);
              v26 = v102;
            }

            v60 = 1;
            v29 = v109;
            goto LABEL_34;
          }

          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Array pointer 0x%lx at ofs 0x%lx references region at byte address 0x%lx which is not quad-aligned", v62, v61, v62 + v79 + 4];
        }

        else
        {
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Array pointer 0x%lx at ofs 0x%lx references region with size 0x%lx exceeding mmap range", v62, v61, 4 * v80];
        }

        v88 = *a3;
        *a3 = v81;

        v60 = 0;
        v29 = v109;
        v28 = v19;
        v30 = v20;
        v32 = v106;
LABEL_83:
        v26 = v102;
        goto LABEL_84;
      }

      v47 = HIDWORD(a2);
      v48 = a2 & 0x1FFFFFFF;
      v49 = *(a1 + 24);
      v28 = v19;
      v35 = v21;
      if (v48 + 4 <= v49)
      {
        v73 = *(a1 + 16);
        v74 = 2 * *(v73 + v48);
        v30 = v20;
        if (v48 + 4 + 4 * v74 > v49)
        {
          v45 = v24;
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Dictionary pointer 0x%lx at ofs 0x%lx references region with size 0x%lx exceeding mmap range", v48, v47, 4 * v74];
          goto LABEL_44;
        }

        v32 = v106;
        if (((v48 + v73) & 3) == 0)
        {
          if (!v23)
          {
            goto LABEL_72;
          }

          v78 = v24;
          v23[2](v23, v48 + v73 + 4);
          goto LABEL_55;
        }

        v103 = v24;
        v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Dictionary pointer 0x%lx at ofs 0x%lx references region at byte address 0x%lx which is not quad-aligned", v48, v47, v48 + v73 + 4];
        v87 = *a3;
        *a3 = v86;

        v26 = v103;
        goto LABEL_67;
      }

      v50 = v24;
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Dictionary pointer 0x%lx at ofs 0x%lx references address outside of mmap range", v48, v47];
    }

    else
    {
      v35 = v21;
      v36 = HIDWORD(a2);
      v37 = a2 & 0x1FFFFFFF;
      if (v27 == 4)
      {
        v38 = v37 + 4;
        v39 = *(a1 + 24);
        if (v37 + 4 <= v39)
        {
          v66 = *(a1 + 16);
          v67 = *(v66 + v37);
          if (v38 + v67 > v39)
          {
            v68 = v24;
            v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Byte array pointer 0x%lx at ofs 0x%lx points to region with size 0x%lx exceeding mmap range", v37, v36, v67];
            v70 = *a3;
            *a3 = v69;

            v26 = v68;
            goto LABEL_33;
          }

          if (v67)
          {
            if ((v38 & 0x1F) != 0)
            {
              v40 = v24;
              v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Byte array pointer 0x%lx at ofs 0x%lx points to byte array at offset 0x%lx which is not %zu-byte aligned", v37, v36, v37 + 4, 32];
              goto LABEL_32;
            }

            v94 = v38 + v66;
            if ((v66 & 0x1F) != 0)
            {
              v97 = v38 + v66;
              v98 = v24;
              v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
              v94 = v97;
              v26 = v98;
              if (v99)
              {
                *buf = 138412290;
                v111 = @"Warning: Data region byte offset is not 32-byte aligned, because backing NSData is not 32-byte aligned.";
                _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PASLazyPlist: %@", buf, 0xCu);
                v94 = v97;
                v26 = v98;
              }
            }
          }

          else
          {
            v94 = *(a1 + 16);
          }

          v33 = v108;
          v29 = v109;
          v28 = v19;
          v30 = v20;
          if (v22)
          {
            v95 = v67;
            v96 = v26;
            v22[2](v22, v94, v95);
            v26 = v96;
          }

          v60 = 1;
          goto LABEL_51;
        }

        v40 = v24;
        v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Byte array pointer 0x%lx at ofs 0x%lx references address out of mmap range", v37, v36, v100, v101];
LABEL_32:
        v64 = *a3;
        *a3 = v41;

        v26 = v40;
LABEL_33:
        v60 = 0;
        v33 = v108;
        v29 = v109;
LABEL_34:
        v28 = v19;
LABEL_50:
        v30 = v20;
        goto LABEL_51;
      }

      v53 = *(a1 + 24);
      v54 = v53 - v37;
      v28 = v19;
      if (v53 > v37)
      {
        v55 = *(a1 + 16);
        v56 = (v55 + v37);
        v57 = *(v55 + 4);
        v30 = v20;
        if (v37 < v57)
        {
          v58 = 0;
          v32 = v106;
LABEL_24:
          v107 = v58;
          v102 = v24;
          v59 = memchr(v56, 0, v54);
          if (v59)
          {
            v29 = v109;
            if (v32)
            {
              (v32)[2](v32, v56, v59 - v56, v107);
            }

            v60 = 1;
          }

          else
          {
            v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"String pointer 0x%lx at ofs 0x%lx is not 0-terminated before EOF", v37, v37];
            v91 = *a3;
            *a3 = v90;

            v60 = 0;
            v29 = v109;
          }

          v33 = v108;
          goto LABEL_83;
        }

        v82 = *(v55 + 8);
        v58 = v37 < v82;
        v32 = v106;
        if (v37 <= v57 || v37 >= v82)
        {
          goto LABEL_24;
        }

        if (!*(v56 - 1))
        {
          v58 = 1;
          goto LABEL_24;
        }

        v83 = v24;
        v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"String pointer 0x%lx at ofs 0x%lx does not correspond to the start of a string", v37, v36];
        v85 = *a3;
        *a3 = v84;

        v26 = v83;
LABEL_67:
        v60 = 0;
LABEL_73:
        v33 = v108;
        v29 = v109;
        goto LABEL_84;
      }

      v50 = v24;
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"String pointer 0x%lx at ofs 0x%lx references address out of mmap range", v37, v36];
    }

    v77 = *a3;
    *a3 = v51;

    v26 = v50;
    v60 = 0;
    v33 = v108;
    v29 = v109;
    goto LABEL_50;
  }

  if (a2 >> 29 > 1)
  {
    v42 = v27 == 2;
    v28 = v19;
    v43 = a2 & 0x1FFFFFFF;
    v44 = v43 + 8;
    if (v42)
    {
      v30 = v20;
      v35 = v21;
      if (v44 > *(a1 + 24))
      {
        v45 = v24;
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Float64 pointer 0x%lx at ofs 0x%lx references address out of mmap range", a2 & 0x1FFFFFFF, HIDWORD(a2), v100];
LABEL_44:
        v75 = *a3;
        *a3 = v46;

        v26 = v45;
        v60 = 0;
        v33 = v108;
        v29 = v109;
LABEL_51:
        v32 = v106;
        goto LABEL_84;
      }

      v32 = v106;
      if (!v30)
      {
        goto LABEL_72;
      }

      v25.n128_u64[0] = *(*(a1 + 16) + v43);
      v71 = v30[2];
      v72 = v30;
    }

    else
    {
      v30 = v20;
      if (v44 > *(a1 + 24))
      {
        v35 = v21;
        v45 = v24;
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NSTimeInterval pointer 0x%lx at ofs 0x%lx references address out of mmap range", a2 & 0x1FFFFFFF, HIDWORD(a2), v100];
        goto LABEL_44;
      }

      v32 = v106;
      if (!v21)
      {
        v35 = 0;
        goto LABEL_72;
      }

      v25.n128_u64[0] = *(*(a1 + 16) + v43);
      v71 = *(v21 + 2);
      v35 = v21;
      v72 = v21;
    }

    v78 = v26;
    v71(v72, v25);
LABEL_55:
    v26 = v78;
LABEL_72:
    v60 = 1;
    goto LABEL_73;
  }

  v28 = v19;
  if (v27)
  {
    v52 = a2 & 0x1FFFFFFF;
    v30 = v20;
    v35 = v21;
    if ((v52 + 8) <= *(a1 + 24))
    {
      v32 = v106;
      v33 = v108;
      if (v108)
      {
        v76 = v24;
        (*(v108 + 2))(v108, *(*(a1 + 16) + v52));
        v26 = v76;
      }

      v60 = 1;
      v29 = v109;
      goto LABEL_84;
    }

    v45 = v24;
    v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Int64 pointer 0x%lx at ofs 0x%lx references address out of mmap range", a2 & 0x1FFFFFFF, HIDWORD(a2), v100];
    goto LABEL_44;
  }

  v29 = v109;
  v30 = v20;
  if ((a2 & 0x10000000) == 0)
  {
    v31 = a2 & 0xFFFFFFF;
    v32 = v106;
    if ((a2 & 0xFFFFFFF) == 0xFFFFFFF)
    {
      v34 = 1;
      v33 = v108;
    }

    else
    {
      v33 = v108;
      if (v31 != 268435454)
      {
        v35 = v21;
        if (v18)
        {
          v89 = v24;
          v18[2](v18, (v31 - 0x7FFFFFF));
          goto LABEL_79;
        }

LABEL_80:
        v60 = 1;
        goto LABEL_84;
      }

      v34 = 0;
    }

    v35 = v21;
    if (v109)
    {
      v89 = v24;
      (*(v109 + 2))(v109, v34);
LABEL_79:
      v26 = v89;
      goto LABEL_80;
    }

    goto LABEL_80;
  }

  v35 = v21;
  v32 = v106;
  if (v28)
  {
    v65 = v24;
    v28[2](v28, COERCE_FLOAT(16 * a2));
    v26 = v65;
  }

  v60 = 1;
  v33 = v108;
LABEL_84:

  v92 = *MEMORY[0x1E69E9840];
  return v60;
}

- (CFTypeRef)_stringForMappedUTF8CString:(CFTypeRef *)a1
{
  if (a1)
  {
    v4 = a1;
    CFRetain(a1[1]);
    a1 = CFStringCreateWithCStringNoCopy(0, a2, 0x8000100u, v4[4]);
    if (!a1)
    {
      CFAllocatorDeallocate(v4[4], a2);
      a1 = 0;
    }

    v2 = vars8;
  }

  return a1;
}

- (id)objectAtIndex:(unint64_t)a3 usingDictionaryContext:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7[2];
    if (v9 > a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_PASLPReaderV1.m" lineNumber:1161 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"_PASLPReaderV1.m" lineNumber:1162 description:{@"Invalid parameter not satisfying: %@", @"index < context.count"}];

  v9 = v8[2];
LABEL_3:
  v10 = (v8[1] + 4 * v9 + 4 * a3);
  v11 = [(_PASLPReaderV1 *)self _objectForValue:?];

  return v11;
}

- (id)keyAtIndex:(unint64_t)a3 usingDictionaryContext:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (v7[2] > a3)
    {
LABEL_3:
      v9 = v8[1];
      goto LABEL_4;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_PASLPReaderV1.m" lineNumber:1123 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"_PASLPReaderV1.m" lineNumber:1124 description:{@"Invalid parameter not satisfying: %@", @"index < context.count"}];

  if (v8)
  {
    goto LABEL_3;
  }

  v9 = 0;
LABEL_4:
  v10 = (v9 + 4 * a3);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __52___PASLPReaderV1_keyAtIndex_usingDictionaryContext___block_invoke;
  v23[3] = &unk_1E77F1778;
  v23[4] = &v25;
  v23[5] = v24;
  v11 = MEMORY[0x1AC566DD0](v23);
  [(_PASLPReaderV1 *)self decodeDictionaryKeyForValue:v11 handleString:?];
  v12 = v26[3];
  if (!v12)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_PASLPReaderV1.m" lineNumber:1138 description:{@"Invalid parameter not satisfying: %@", @"keyBytes"}];

    v12 = v26[3];
  }

  v13 = [(_PASLPReaderV1 *)&self->super.isa _stringForMappedUTF8CString:v12];
  if (!v13)
  {
    objc_exception_throw([[_PASLazyPlistCorruptException alloc] initWithName:@"_PASLazyPlistCorruptException" reason:@"String table contains non-UTF-8 content" userInfo:0]);
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v25, 8);
  v14 = [v8 enumerationCache];
  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    if (v8)
    {
      v16 = v8[1];
      v17 = v8[2];
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v18 = [MEMORY[0x1E696B098] valueWithPointer:v16 + 4 * v17 + 4 * a3];
    objc_autoreleasePoolPop(v15);
    [v14 setObject:v18 forKey:v13];
  }

  return v13;
}

- (void)decodeDictionaryKeyForValue:(void *)a3 handleString:
{
  v5 = a3;
  if (a1)
  {
    v7 = 0;
    if (([(_PASLPReaderV1 *)a1 _decodeDictionaryKeyValue:a2 errMsg:&v7 handleString:v5]& 1) == 0)
    {
      v6 = [_PASLazyPlistCorruptException alloc];
      objc_exception_throw([(_PASLazyPlistCorruptException *)v6 initWithName:@"_PASLazyPlistCorruptException" reason:v7 userInfo:0]);
    }
  }
}

- (uint64_t)_decodeDictionaryKeyValue:(void *)a3 errMsg:(void *)a4 handleString:
{
  v7 = a4;
  if (!a1)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64___PASLPReaderV1__decodeDictionaryKeyValue_errMsg_handleString___block_invoke;
  v13[3] = &unk_1E77F1610;
  v13[4] = &v18;
  v13[5] = &v14;
  v13[6] = a3;
  v13[7] = a2;
  if (([(_PASLPReaderV1 *)a1 _decodeValue:a2 errMsg:a3 handleBoolean:0 handleTaggedInt:0 handleBoxedInt:0 handleTaggedFloat:0 handleBoxedFloat:0 handleDate:0 handleData:0 handleString:v13 handleDict:0 handleArray:0]& 1) != 0)
  {
    if (v19[3])
    {
      if (v7)
      {
        v8 = v15[3];
        v7[2](v7);
      }

      v9 = 1;
      goto LABEL_10;
    }

    if (!*a3)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Dictionary key 0x%lx at ofs 0x%lx is not of string type", a2, HIDWORD(a2)];
      v11 = *a3;
      *a3 = v10;
    }
  }

  v9 = 0;
LABEL_10:
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
LABEL_11:

  return v9;
}

- (id)objectForKey:(id)a3 usingDictionaryContext:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"_PASLPReaderV1.m" lineNumber:1047 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_30:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"_PASLPReaderV1.m" lineNumber:1048 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    context = objc_autoreleasePoolPush();
LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_3:
  context = objc_autoreleasePoolPush();
  if (!v9[2])
  {
    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_31;
  }

  v33 = a2;
  v34 = [v9 enumerationCache];
  if (v34)
  {
    v10 = [v34 objectForKey:v7];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 pointerValue];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v12;
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: cache hit for object value at 0x%lx", &buf, 0xCu);
        if (v12)
        {
          goto LABEL_9;
        }
      }

      else if (v12)
      {
LABEL_9:
        v13 = [(_PASLPReaderV1 *)self _objectForValue:?];

        goto LABEL_23;
      }

      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"_PASLPReaderV1.m" lineNumber:1067 description:{@"Invalid parameter not satisfying: %@", @"valuePtr"}];

      goto LABEL_9;
    }
  }

  v14 = [v7 UTF8String];
  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"Rejecting non-Unicode key provided to objectForKey";
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", &buf, 0xCu);
    }

    goto LABEL_22;
  }

  v15 = v9[2];
  if (!v15)
  {
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  v16 = v14;
  v17 = 0;
  v18 = MEMORY[0x1E69E9820];
  while (1)
  {
    v19 = (v17 + v15) >> 1;
    v20 = (v9[1] + 4 * v19);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x2020000000;
    v39 = 0;
    v21 = *v20 | ((v20 - LODWORD(self->_mappedRegion.mmapBase)) << 32);
    v36[0] = v18;
    v36[1] = 3221225472;
    v36[2] = __54___PASLPReaderV1_objectForKey_usingDictionaryContext___block_invoke;
    v36[3] = &unk_1E77F1598;
    v36[4] = &buf;
    [(_PASLPReaderV1 *)self decodeDictionaryKeyForValue:v21 handleString:v36];
    v22 = *(*(&buf + 1) + 24);
    if (!v22)
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      [v32 handleFailureInMethod:v33 object:self file:@"_PASLPReaderV1.m" lineNumber:1095 description:{@"Invalid parameter not satisfying: %@", @"midCStr"}];

      v22 = *(*(&buf + 1) + 24);
    }

    v23 = strcmp(v16, v22);
    if (v23 < 0)
    {
      goto LABEL_18;
    }

    if (!v23)
    {
      break;
    }

    v17 = v19 + 1;
    v19 = v15;
LABEL_18:
    _Block_object_dispose(&buf, 8);
    v15 = v19;
    if (v17 >= v19)
    {
      goto LABEL_22;
    }
  }

  _Block_object_dispose(&buf, 8);
  v24 = v9[2];
  if (v19 >= v24)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:v33 object:self file:@"_PASLPReaderV1.m" lineNumber:1112 description:{@"Invalid parameter not satisfying: %@", @"keyOfs < context.count"}];

    v24 = v9[2];
  }

  v25 = (v9[1] + 4 * v24 + 4 * v19);
  v13 = [(_PASLPReaderV1 *)self _objectForValue:?];
LABEL_23:

LABEL_32:
  objc_autoreleasePoolPop(context);

  v29 = *MEMORY[0x1E69E9840];

  return v13;
}

- (_PASLPReaderV1)initWithData:(id)a3 sourcedFromPath:(id)a4 needsValidation:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v89 = *MEMORY[0x1E69E9840];
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
    v59 = [MEMORY[0x1E696AAA8] currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"_PASLPReaderV1.m" lineNumber:470 description:{@"Invalid parameter not satisfying: %@", @"data"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v60 = [MEMORY[0x1E696AAA8] currentHandler];
  [v60 handleFailureInMethod:a2 object:self file:@"_PASLPReaderV1.m" lineNumber:471 description:{@"Invalid parameter not satisfying: %@", @"path"}];

LABEL_3:
  v74.receiver = self;
  v74.super_class = _PASLPReaderV1;
  v15 = [(_PASLPReaderV1 *)&v74 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_backingData, a3);
    v17 = [*(v16 + 8) bytes];
    v18 = [*(v16 + 8) length];
    *(v16 + 16) = v17;
    *(v16 + 24) = v18;
    *&context = 0;
    *(&context + 1) = v12;
    *&context_32 = 0;
    context_16 = 0uLL;
    *(&context_32 + 1) = cfAllocateAlwaysFailing_120;
    *&context_48 = 0;
    *(&context_48 + 1) = cfDeallocateReleaseInfo_119;
    *&context_64 = 0;
    v19 = CFAllocatorCreate(0, &context);
    *(v16 + 32) = v19;
    if (!v19)
    {
      v68 = [MEMORY[0x1E696AAA8] currentHandler];
      [v68 handleFailureInMethod:a2 object:v16 file:@"_PASLPReaderV1.m" lineNumber:493 description:@"Failed to create _releaseReaderDeallocator"];
    }

    v73 = 0;
    if (*(v16 + 24) <= 0xFuLL)
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"rejecting file %@ because it is too small.", v14];
      v21 = notPLPlistError(v14, v20);
      v22 = v73;
      v73 = v21;

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(context) = 138412290;
        *(&context + 4) = v73;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", &context, 0xCu);
        if (!a6)
        {
          goto LABEL_10;
        }
      }

      else if (!a6)
      {
LABEL_10:

        goto LABEL_11;
      }

      *a6 = v73;
      goto LABEL_10;
    }

    v24 = *(v16 + 16);
    if (v7)
    {
      v25 = v14;
      v26 = v25;
      if (*v24 != 19536 || *(v24 + 2) != 80)
      {
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"rejecting file %@ because header has bad magic value", v25];
        v29 = notPLPlistError(v26, v28);
LABEL_36:
        v43 = v73;
        v73 = v29;
        goto LABEL_37;
      }

      if (*(v24 + 3) != 1)
      {
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"rejecting file %@ because header has unexpected version number (exp %u, act %u)", v25, 1, *(v24 + 3)];
        *buf = *MEMORY[0x1E696A578];
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The lazy plist file cannot be opened: %@", v28];
        v41 = *MEMORY[0x1E696A588];
        *&context = v40;
        *(&context + 1) = v28;
        v42 = *MEMORY[0x1E696A368];
        *&buf[8] = v41;
        *&buf[16] = v42;
        *&context_16 = v26;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&context forKeys:buf count:3];

        v44 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"_PASLazyPlistErrorDomain" code:3 userInfo:v43];
        v45 = v73;
        v73 = v44;

LABEL_37:
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        LODWORD(context) = 138412290;
        *(&context + 4) = v73;
        v49 = MEMORY[0x1E69E9C10];
        p_context = &context;
        goto LABEL_43;
      }

      v37 = *(v24 + 4);
      v36 = *(v24 + 8);
      if (v37 <= 0xF && v37 != v36)
      {
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"rejecting file %@ because header has bad string table start 0x%lx", v25, *(v24 + 4)];
LABEL_35:
        v28 = v46;
        v29 = corruptionError(v26, v46);
        goto LABEL_36;
      }

      if (v36 < v37 || (v39 = *(v16 + 24), v39 < v36))
      {
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"rejecting file %@ because header has bad string table end 0x%lx", v25, *(v24 + 8)];
        goto LABEL_35;
      }

      v51 = *(v24 + 12);
      if ((v51 & 3) != 0 || v51 + 4 > v39)
      {
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"rejecting file %@ because header has bad root object offset 0x%lx", v25, *(v24 + 12)];
        goto LABEL_35;
      }

      v87 = 0u;
      v88 = 0u;
      context_64 = 0u;
      v86 = 0u;
      context_32 = 0u;
      context_48 = 0u;
      context = 0u;
      context_16 = 0u;
      v52 = v73;
      v73 = 0;

      v72 = v26;
      v53 = *(v16 + 16);
      v54 = *(v53 + 4);
      v55 = *(v53 + 8);
      if (v55 > v54)
      {
        if (*(v53 + v55 - 1))
        {
          v56 = v72;
          v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"rejecting file %@ because string table is not 0-terminated", v72];
          corruptionError(v72, v57);
          v73 = v58 = v73;
        }

        else
        {
          v61 = 0;
          v62 = (v53 + v54);
          while (1)
          {
            *&context = context + 1;
            v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v62];
            if (!v57)
            {
              v69 = @"rejecting file %@ because string table contains non-UTF-8 content";
              goto LABEL_91;
            }

            if (v61 && (strcmp(v61, v62) & 0x80000000) == 0)
            {
              break;
            }

            v63 = &v62[strlen(v62) + 1];

            v61 = v62;
            v62 = v63;
            if (v63 >= *(v16 + 16) + *(*(v16 + 16) + 8))
            {
              goto LABEL_57;
            }
          }

          v69 = @"rejecting file %@ because string table contains non-sorted or duplicate entries";
LABEL_91:
          v56 = v72;
          v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v69, v72];
          v70 = corruptionError(v72, v58);
          v71 = v73;
          v73 = v70;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v73;
          v49 = MEMORY[0x1E69E9C10];
          goto LABEL_94;
        }

        goto LABEL_38;
      }

LABEL_57:

      v64 = v73;
      v73 = 0;

      if (([(_PASLPReaderV1 *)v16 _validateObjectGraphWithFilename:v72 rootValue:*(*(*(v16 + 16) + 12) + *(v16 + 16)) | (*(*(v16 + 16) + 12) << 32) recursionDepth:0 stats:&context error:&v73]& 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v73;
          v49 = MEMORY[0x1E69E9C10];
LABEL_94:
          p_context = buf;
LABEL_43:
          _os_log_error_impl(&dword_1A7F47000, v49, OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", p_context, 0xCu);
        }

LABEL_38:
        if (a6)
        {
          v23 = 0;
          *a6 = v73;
          goto LABEL_40;
        }

LABEL_11:
        v23 = 0;
LABEL_40:

        goto LABEL_41;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v72;
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Successfully traversed object graph for lazy plist %@.  Object statistics:", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = *(&context + 1);
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boolean:        %tu", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = context_16;
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Tagged integer: %tu", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = *(&context_16 + 1);
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boxed integer:  %tu", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = context_32;
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Tagged real:    %tu", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = *(&context_32 + 1);
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boxed real:     %tu", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = context_48;
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Date:           %tu", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = *(&context_48 + 1);
        *&buf[12] = 2048;
        *&buf[14] = context;
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: String:         %tu (%tu unique dictionary keys)", buf, 0x16u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = context_64;
        *&buf[12] = 2048;
        *&buf[14] = *(&context_64 + 1);
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Data:           %tu (%tu total bytes)", buf, 0x16u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = v87;
        *&buf[12] = 2048;
        *&buf[14] = *(&v87 + 1);
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Dictionary:     %tu (%tu total key/value mappings)", buf, 0x16u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = v86;
        *&buf[12] = 2048;
        *&buf[14] = *(&v86 + 1);
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Array:          %tu (%tu total elements)", buf, 0x16u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = v88;
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Object graph maximum depth: %tu", buf, 0xCu);
      }

      v65 = *(&v88 + 1);
      if (*(&v88 + 1) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = v65;
        *&buf[12] = 2048;
        *&buf[14] = v87 + v86 + context_64 + *(&context_48 + 1) + context_48 + *(&context_32 + 1) + *(&context_16 + 1);
        _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boxed allocations: %tu (referenced by %tu total pointers)", buf, 0x16u);
      }

      v66 = +[_PASLazyPlist deserializationStatsHandler];
      v30 = v66;
      if (v66)
      {
        v67 = *(v66 + 16);
        v77 = context_64;
        v78 = v86;
        v79 = v87;
        v80 = v88;
        *buf = context;
        *&buf[16] = context_16;
        *v76 = context_32;
        *&v76[16] = context_48;
        v67(v66, buf);
      }
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
      context_64 = 0u;
      v86 = 0u;
      context_32 = 0u;
      context_48 = 0u;
      context = 0u;
      context_16 = 0u;
      v30 = 0;
      v73 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v31 = *(v16 + 16);
      v32 = *(v16 + 24);
      v33 = *(v24 + 4);
      v34 = *(v24 + 8);
      v35 = *(v24 + 12);
      *buf = 138413570;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      *&buf[22] = 2048;
      *&buf[24] = v32;
      *v76 = 2048;
      *&v76[2] = v33;
      *&v76[10] = 2048;
      *&v76[12] = v34;
      *&v76[20] = 2048;
      *&v76[22] = v35;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASLazyPlist: Loaded %@ (mapping %p, size %zu, string table [0x%lx, 0x%lx), root 0x%lx)", buf, 0x3Eu);
    }

    v23 = v16;
    goto LABEL_40;
  }

  v23 = 0;
LABEL_41:

  v47 = *MEMORY[0x1E69E9840];
  return v23;
}

- (uint64_t)_validateObjectGraphWithFilename:(unint64_t)a3 rootValue:(unint64_t)a4 recursionDepth:(uint64_t)a5 stats:(void *)a6 error:
{
  v11 = a2;
  v12 = v11;
  if (!a1)
  {
LABEL_7:
    v17 = 0;
    goto LABEL_12;
  }

  v13 = *(a5 + 112);
  if (v13 <= a4)
  {
    v13 = a4;
  }

  *(a5 + 112) = v13;
  if (a4 >= 0x65)
  {
    if (a6)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"object graph traversal exceeded maximum recursion depth %tu", 100];
      v15 = corruptionError(v12, v14);
      v16 = *a6;
      *a6 = v15;
    }

    goto LABEL_7;
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy_;
  v54 = __Block_byref_object_dispose_;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke;
  v45[3] = &__block_descriptor_40_e8_v12__0B8l;
  v45[4] = a5;
  v43[4] = a5;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_2;
  v44[3] = &__block_descriptor_40_e8_v12__0i8l;
  v44[4] = a5;
  v42[4] = a5;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_3;
  v43[3] = &__block_descriptor_40_e8_v16__0q8l;
  v41[4] = a5;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_4;
  v42[3] = &__block_descriptor_40_e8_v12__0f8l;
  v40[4] = a5;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_5;
  v41[3] = &__block_descriptor_40_e8_v16__0d8l;
  v39[4] = a5;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_6;
  v40[3] = &__block_descriptor_40_e8_v16__0d8l;
  v38[4] = a5;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_7;
  v39[3] = &__block_descriptor_40_e13_v24__0r_v8Q16l;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_8;
  v38[3] = &__block_descriptor_40_e15_v28__0r_8Q16B24l;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_9;
  v30[3] = &unk_1E77F15C0;
  v30[4] = a1;
  v34 = a5;
  v35 = sel__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error_;
  v32 = &v50;
  v33 = &v46;
  v23 = v11;
  v31 = v11;
  v36 = a4;
  v37 = a6;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_11;
  v24[3] = &unk_1E77F15E8;
  v26 = &v46;
  v27 = a5;
  v24[4] = a1;
  v18 = v31;
  v25 = v18;
  v28 = a4;
  v29 = a6;
  v19 = [(_PASLPReaderV1 *)a1 _decodeValue:a3 errMsg:&v55 handleBoolean:v45 handleTaggedInt:v44 handleBoxedInt:v43 handleTaggedFloat:v42 handleBoxedFloat:v41 handleDate:v40 handleData:v39 handleString:v38 handleDict:v30 handleArray:v24];
  v17 = (v19 & v47[3]);
  if ((v17 & 1) == 0 && !*a6)
  {
    v20 = corruptionError(v18, v51[5]);
    v21 = *a6;
    *a6 = v20;
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);

  v12 = v23;
LABEL_12:

  return v17;
}

@end