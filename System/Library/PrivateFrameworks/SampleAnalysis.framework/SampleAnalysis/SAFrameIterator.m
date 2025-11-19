@interface SAFrameIterator
- (BOOL)hasStack;
- (NSString)debugDescription;
- (SAFrameIterator)init;
- (uint64_t)addressForStackDepth:(uint64_t *)a3 frames:(unsigned int)a4 numFrames:(int)a5 isUserspace:(int)a6 isSwiftAsync:(BOOL *)a7 isLeaf:(unsigned int *)a8 frameIndexUsed:;
- (uint64_t)translatedAddressForNativeAddress:(uint64_t)a1;
- (void)binaryLoadInfoForUserAddress:(void *)a1;
- (void)clearTaskData;
- (void)clearThreadData;
- (void)dealloc;
- (void)iterateFramesWithBacktraceStyle:(unint64_t)a3 block:(id)a4;
@end

@implementation SAFrameIterator

- (SAFrameIterator)init
{
  v9.receiver = self;
  v9.super_class = SAFrameIterator;
  v2 = [(SAFrameIterator *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(SAFrame);
    frame = v2->_frame;
    v2->_frame = v3;

    v5 = [[SAExclaveFrame alloc] initWithExclave:?];
    exclaveFrame = v2->_exclaveFrame;
    v2->_exclaveFrame = v5;

    v7 = v2->_exclaveFrame;
    if (v7)
    {
      v7->super._BOOLs.bits |= 8u;
    }

    v2->_exclaveInsertionIndex = -1;
  }

  return v2;
}

- (void)clearThreadData
{
  userFrames = self->_userFrames;
  if (userFrames)
  {
    free(userFrames);
  }

  self->_userFrames = 0;
  self->_numUserFrames = 0;
  self->_isUserStackTruncated = 0;
  swiftAsyncFrames = self->_swiftAsyncFrames;
  if (swiftAsyncFrames)
  {
    free(swiftAsyncFrames);
  }

  self->_swiftAsyncFrames = 0;
  *&self->_numSwiftAsyncFrames = 0;
  self->_isSwiftAsyncStackTruncated = 0;
  kernelFrames = self->_kernelFrames;
  if (kernelFrames)
  {
    free(kernelFrames);
  }

  self->_kernelFrames = 0;
  self->_continuation = 0;
  *&self->_numKernelFrames = 0xFFFFFFFF00000000;
  *&self->_isKernelStackTruncated = 0;
}

- (void)clearTaskData
{
  userBinaryLoadInfos = self->_userBinaryLoadInfos;
  self->_userBinaryLoadInfos = 0;

  self->_assumeUserBinaryLoadInfosContainMainBinary = 0;
  sharedCache = self->_sharedCache;
  self->_sharedCache = 0;

  addressTranslations = self->_addressTranslations;
  self->_addressTranslations = 0;
}

- (void)dealloc
{
  [(SAFrameIterator *)self clearThreadData];
  v3.receiver = self;
  v3.super_class = SAFrameIterator;
  [(SAFrameIterator *)&v3 dealloc];
}

- (void)binaryLoadInfoForUserAddress:(void *)a1
{
  if (a1)
  {
    a1 = [SABinaryLoadInfo binaryLoadInfoForAddress:a2 inBinaryLoadInfos:a1[8] libraryCache:a1[10]];
    v2 = vars8;
  }

  return a1;
}

- (uint64_t)translatedAddressForNativeAddress:(uint64_t)a1
{
  v2 = a2;
  v3 = *(a1 + 120);
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v6 = [v3 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [v6 unsignedLongLongValue];
      if (v7)
      {
LABEL_7:

        return v7;
      }
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
      v9 = *(a1 + 120);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2];
      [v9 setObject:v8 forKeyedSubscript:v10];
    }

    v7 = v2;
    goto LABEL_7;
  }

  return v2;
}

- (uint64_t)addressForStackDepth:(uint64_t *)a3 frames:(unsigned int)a4 numFrames:(int)a5 isUserspace:(int)a6 isSwiftAsync:(BOOL *)a7 isLeaf:(unsigned int *)a8 frameIndexUsed:
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_50;
  }

  if (!a3 || (v9 = a4) == 0)
  {
    v29 = *__error();
    v30 = _sa_logt();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "No frames", buf, 2u);
    }

    *__error() = v29;
    _SASetCrashLogMessage(646, "No frames", v31, v32, v33, v34, v35, v36, v45);
    _os_crash();
    __break(1u);
LABEL_66:
    v37 = *__error();
    v38 = _sa_logt();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v47 = v8;
      v48 = 1024;
      v49 = v9;
      _os_log_error_impl(&dword_1E0E2F000, v38, OS_LOG_TYPE_ERROR, "stack depth %d, but only %d frames", buf, 0xEu);
    }

    *__error() = v37;
    _SASetCrashLogMessage(647, "stack depth %d, but only %d frames", v39, v40, v41, v42, v43, v44, v8);
    _os_crash();
    __break(1u);
  }

  v8 = a2;
  if (a2 >= a4)
  {
    goto LABEL_66;
  }

  if (a6)
  {
    v13 = ~a2 + a4;
    if (!a8)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v16 = *(a1 + 56);
  if (v16 > 1)
  {
    if (v16 != 3)
    {
      if (v16 != 2)
      {
        goto LABEL_35;
      }

      v13 = ~a2 + a4;
      *a7 = v13 == 0;
      if (a8)
      {
        *a8 = v13;
      }

      if (!a5 || v13 || !*(a1 + 120))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (a5)
    {
      if (*(a1 + 120))
      {
        v21 = a4 - 2;
        v22 = a4 - 1;
        if (a4 - 2 == a2 || v22 == a2)
        {
          v10 = *a3;
          v27 = [(SAFrameIterator *)a1 translatedAddressForNativeAddress:?];
          if (v27 == v10)
          {
            if (v22 == v8)
            {
LABEL_48:
              if (a8)
              {
                v10 = 0;
                *a8 = -1;
                goto LABEL_35;
              }

LABEL_50:
              v10 = 0;
              goto LABEL_35;
            }

            *a7 = 1;
            v28 = a3[1];
            v27 = [(SAFrameIterator *)a1 translatedAddressForNativeAddress:v28];
            if (v27 == v28)
            {
              if (a8)
              {
                *a8 = 0;
              }

              goto LABEL_35;
            }

            if (a8)
            {
              *a8 = 1;
            }
          }

          else
          {
            if (v21 == v8)
            {
              *a7 = 0;
              if (a8)
              {
                *a8 = 1;
              }

              v10 = a3[1];
              goto LABEL_35;
            }

            *a7 = 1;
            if (a8)
            {
              *a8 = 0;
            }
          }

          v10 = v27;
          goto LABEL_35;
        }
      }
    }

LABEL_32:
    v13 = ~a2 + a4;
    *a7 = v13 == 0;
    if (!a8)
    {
LABEL_34:
      v10 = a3[v13];
      goto LABEL_35;
    }

LABEL_33:
    *a8 = v13;
    goto LABEL_34;
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  if (v16 != 1)
  {
LABEL_35:
    v23 = *MEMORY[0x1E69E9840];
    return v10;
  }

  v17 = a4 - 1;
  if (a4 - 1 != a2)
  {
    v13 = a4 - 2 - a2;
    *a7 = a4 - 2 == a2;
    if (a8)
    {
      *a8 = v13;
    }

    if (a5 && a4 - 2 == a2 && *(a1 + 120))
    {
      v24 = *a3;
      v10 = [(SAFrameIterator *)a1 translatedAddressForNativeAddress:?];
      if (v10 == v24)
      {
        v10 = v24;
        if (*(a1 + 28) == 1)
        {
          v25 = a3[v17];
          v26 = [(SAFrameIterator *)a1 translatedAddressForNativeAddress:v25];
          if (v26 == v25)
          {
            v10 = v24;
          }

          else
          {
            v10 = v26;
          }
        }
      }

      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (a4 != 1)
  {
    goto LABEL_48;
  }

  *a7 = 1;
  if (a8)
  {
    *a8 = 0;
  }

  if (!a5 || !*(a1 + 120))
  {
    v10 = *a3;
    goto LABEL_35;
  }

LABEL_25:
  v18 = *a3;
  v19 = *MEMORY[0x1E69E9840];

  return [(SAFrameIterator *)a1 translatedAddressForNativeAddress:v18];
}

- (void)iterateFramesWithBacktraceStyle:(unint64_t)a3 block:(id)a4
{
  v7 = a3;
  v8 = self;
  v119 = *MEMORY[0x1E69E9840];
  if ((a3 & 2) != 0)
  {
    goto LABEL_70;
  }

  if ((a3 & 8) != 0 && (a3 & 0x14) != 0)
  {
    v65 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v116 = v7;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "backtrace style specified both swift async only and prefer/only C root frames: 0x%llx", buf, 0xCu);
    }

    *__error() = v65;
    _SASetCrashLogMessage(853, "backtrace style specified both swift async only and prefer/only C root frames: 0x%llx", v66, v67, v68, v69, v70, v71, v7);
    _os_crash();
    __break(1u);
LABEL_115:
    v72 = *__error();
    v73 = _sa_logt();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = *(v8 + 44);
      *buf = 67109120;
      *v116 = v74;
      _os_log_error_impl(&dword_1E0E2F000, v73, OS_LOG_TYPE_ERROR, "%d _numKernelFrames", buf, 8u);
    }

    *__error() = v72;
    _SASetCrashLogMessage(954, "%d _numKernelFrames", v75, v76, v77, v78, v79, v80, *(v8 + 44));
    _os_crash();
    __break(1u);
    goto LABEL_118;
  }

  numUserFrames = self->_numUserFrames;
  backtracer = self->_backtracer;
  if (backtracer - 2 < 2)
  {
    goto LABEL_7;
  }

  if (backtracer == 1)
  {
    v11 = numUserFrames >= 2;
    v12 = numUserFrames - 2;
LABEL_9:
    if (v11)
    {
      LODWORD(v4) = v12;
    }

    else
    {
      LODWORD(v4) = 0;
    }

    goto LABEL_12;
  }

  if (!backtracer)
  {
LABEL_7:
    v11 = numUserFrames != 0;
    v12 = numUserFrames - 1;
    goto LABEL_9;
  }

LABEL_12:
  if (self->_numSwiftAsyncFrames)
  {
    isSwiftAsyncStackTruncated = 1;
  }

  else
  {
    isSwiftAsyncStackTruncated = self->_isSwiftAsyncStackTruncated;
  }

  v5 = v4 + 1;
  if ((a3 & 0x10) != 0 || !isSwiftAsyncStackTruncated)
  {
    v14 = a3 & 0x18;
LABEL_35:
    v25 = 1;
    goto LABEL_36;
  }

  v14 = a3 & 8;
  if ((a3 & 4) != 0 && v5 > self->_swiftAsyncStitchIndex)
  {
    goto LABEL_35;
  }

  [(SAFrame *)self->_frame reset];
  v15 = *(v8 + 8);
  if (v15)
  {
    *(v15 + 8) |= 2u;
  }

  if (*(v8 + 26) == 1)
  {
    v16 = *(v8 + 8);
    if (v16)
    {
      *(v16 + 8) |= 8u;
      v17 = *(v8 + 8);
    }

    else
    {
      v17 = 0;
    }

    (*(a4 + 2))(a4, v17);
    v18 = *(v8 + 8);
    if (v18)
    {
      *(v18 + 8) &= ~8u;
    }
  }

  v19 = *(v8 + 36);
  if (v19)
  {
    for (i = 0; i < v19; ++i)
    {
      v21 = [(SAFrameIterator *)v8 addressForStackDepth:*(v8 + 96) frames:v19 numFrames:1 isUserspace:1 isSwiftAsync:buf isLeaf:0 frameIndexUsed:?];
      v22 = *(v8 + 8);
      if (v22)
      {
        *(v22 + 16) = v21;
      }

      v23 = [(SAFrameIterator *)v8 binaryLoadInfoForUserAddress:v21];
      v24 = *(v8 + 8);
      if (v24)
      {
        objc_storeWeak((v24 + 24), v23);
      }

      (*(a4 + 2))(a4, *(v8 + 8));
      v19 = *(v8 + 36);
    }
  }

  v25 = 0;
LABEL_36:
  v26 = isSwiftAsyncStackTruncated && v14 != 0;
  if (*(v8 + 40) > v5)
  {
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      v62 = *(v8 + 40);
      v112 = *(v8 + 40);
      v113 = *(v8 + 32);
      v63 = [v8 debugDescription];
      v64 = [v63 UTF8String];
      *buf = 67109890;
      *v116 = v112;
      *&v116[4] = 1024;
      *&v116[6] = v113;
      v117 = 1024;
      *v118 = v4;
      *&v118[4] = 2080;
      *&v118[6] = v64;
      _os_log_fault_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_FAULT, "_swiftAsyncStitchIndex %u, _numUserFrames %u, maxDepth %u: %s", buf, 0x1Eu);
    }

    *__error() = v27;
    *(v8 + 40) = v5;
  }

  if ((v25 | v26 ^ 1) != 1)
  {
    goto LABEL_70;
  }

  [*(v8 + 8) reset];
  if ((v25 & *(v8 + 25)) == 1)
  {
    v29 = *(v8 + 8);
    if (v29)
    {
      *(v29 + 8) |= 8u;
      v30 = *(v8 + 8);
    }

    else
    {
      v30 = 0;
    }

    (*(a4 + 2))(a4, v30);
    v31 = *(v8 + 8);
    if (v31)
    {
      *(v31 + 8) &= ~8u;
    }
  }

  v32 = *(v8 + 88);
  if (!v32)
  {
    goto LABEL_70;
  }

  if (!*(v8 + 32))
  {
LABEL_118:
    v7 = *__error();
    v81 = _sa_logt();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v82 = *(v8 + 32);
      *buf = 67109120;
      *v116 = v82;
      _os_log_error_impl(&dword_1E0E2F000, v81, OS_LOG_TYPE_ERROR, "%d _numUserFrames", buf, 8u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(906, "%d _numUserFrames", v83, v84, v85, v86, v87, v88, *(v8 + 32));
    _os_crash();
    __break(1u);
    goto LABEL_121;
  }

  if (*(v8 + 24) != 1)
  {
    goto LABEL_52;
  }

  v33 = [*(v8 + 64) firstObject];
  v34 = [v33 loadAddress];

  if (!v34)
  {
    v32 = *(v8 + 88);
LABEL_52:
    if (*(v32 + 4))
    {
      v36 = 0x100000000;
    }

    else
    {
      v36 = *MEMORY[0x1E69E9AC8];
    }

    goto LABEL_55;
  }

  v35 = [*(v8 + 64) firstObject];
  v36 = [v35 loadAddress];

LABEL_55:
  v37 = *(v8 + 40);
  if (v37 > v5)
  {
LABEL_121:
    v89 = *__error();
    v90 = _sa_logt();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      v91 = *(v8 + 40);
      v7 = [v8 debugDescription];
      v92 = [v7 UTF8String];
      *buf = 67109634;
      *v116 = v91;
      *&v116[4] = 1024;
      *&v116[6] = v4;
      v117 = 2080;
      *v118 = v92;
      _os_log_error_impl(&dword_1E0E2F000, v90, OS_LOG_TYPE_ERROR, "_swiftAsyncStitchIndex %u, maxDepth %u: %s", buf, 0x18u);
    }

    *__error() = v89;
    v93 = *(v8 + 40);
    v8 = [v8 debugDescription];
    [v8 UTF8String];
    _SASetCrashLogMessage(921, "_swiftAsyncStitchIndex %u, maxDepth %u: %s", v94, v95, v96, v97, v98, v99, v93);

    _os_crash();
    __break(1u);
LABEL_124:
    v100 = *__error();
    v101 = _sa_logt();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      v102 = *(v8 + 32);
      v103 = *(v8 + 40);
      *buf = 67109888;
      *v116 = v5;
      *&v116[4] = 1024;
      *&v116[6] = v102;
      v117 = 2048;
      *v118 = v7;
      *&v118[8] = 1024;
      *&v118[10] = v103;
      _os_log_error_impl(&dword_1E0E2F000, v101, OS_LOG_TYPE_ERROR, "endingDepth %u, numUserFrames %u, backtraceStyle 0x%llx, stitchIndex %u", buf, 0x1Eu);
    }

    *__error() = v100;
    v111 = *(v8 + 40);
    v110 = *(v8 + 32);
    _SASetCrashLogMessage(926, "endingDepth %u, numUserFrames %u, backtraceStyle 0x%llx, stitchIndex %u", v104, v105, v106, v107, v108, v109, v5);
    _os_crash();
    __break(1u);
  }

  v38 = v4 - v37;
  if (v25)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38 + 1;
  }

  v5 = *(v8 + 32);
  if (v26)
  {
    v5 = v38 + 1;
    if (v38 + 1 > *(v8 + 32))
    {
      goto LABEL_124;
    }
  }

  if (v39 < v5)
  {
    do
    {
      buf[0] = 0;
      v40 = [(SAFrameIterator *)v8 addressForStackDepth:v39 frames:*(v8 + 88) numFrames:*(v8 + 32) isUserspace:1 isSwiftAsync:0 isLeaf:buf frameIndexUsed:0];
      LOBYTE(v25) = v25 & (v40 < v36);
      if ((v25 & 1) == 0)
      {
        v41 = buf[0];
        v42 = *(v8 + 8);
        if (v42)
        {
          *(v42 + 8) = *(v42 + 8) & 0xFE | buf[0] ^ 1;
          v43 = *(v8 + 8);
          if (v43)
          {
            *(v43 + 16) = v40;
          }
        }

        v4 = [(SAFrameIterator *)v8 binaryLoadInfoForUserAddress:v40];
        v44 = *(v8 + 8);
        if (v44)
        {
          objc_storeWeak((v44 + 24), v4);
        }

        (*(a4 + 2))(a4, *(v8 + 8));
        if (v41)
        {
          break;
        }
      }

      ++v39;
    }

    while (v5 != v39);
  }

LABEL_70:
  if ((v7 & 0x19) != 0)
  {
    goto LABEL_111;
  }

  v45 = (v8 + 8);
  [*(v8 + 8) reset];
  if (*(v8 + 8))
  {
    *(*(v8 + 8) + 8) |= 4u;
  }

  if (*(v8 + 104))
  {
    if (*(v8 + 44))
    {
      if (*(v8 + 27) == 1)
      {
        if (*v45)
        {
          *(*v45 + 8) |= 8u;
          v46 = *v45;
        }

        else
        {
          v46 = 0;
        }

        (*(a4 + 2))(a4, v46);
        if (*v45)
        {
          *(*v45 + 8) &= ~8u;
        }
      }

      v47 = *(v8 + 44);
      if (*(v8 + 48) == -1)
      {
        v48 = 1;
      }

      else
      {
        v48 = (v7 >> 5) & 1;
      }

      if (*(*(v8 + 104) + 4))
      {
        v49 = 0xFFFFFFFFLL;
      }

      else
      {
        v49 = *MEMORY[0x1E69E9AC8] - 1;
      }

      if (v47)
      {
        v50 = 0;
        v51 = 0;
        v52 = 1;
        do
        {
          v114 = 0;
          *buf = -1;
          v53 = [(SAFrameIterator *)v8 addressForStackDepth:v50 frames:*(v8 + 104) numFrames:v47 isUserspace:0 isSwiftAsync:0 isLeaf:&v114 frameIndexUsed:buf];
          if (((v48 | v51) & 1) == 0)
          {
            if (*buf >= *(v8 + 48))
            {
              v51 = 0;
            }

            else
            {
              (*(a4 + 2))(a4, *(v8 + 16));
              v51 = 1;
            }
          }

          v52 &= v53 < v49;
          if ((v52 & 1) == 0)
          {
            v54 = v114;
            if (*v45)
            {
              *(*v45 + 8) = *(*v45 + 8) & 0xFE | !v114;
              if (*v45)
              {
                *(*v45 + 16) = v53;
              }
            }

            v55 = [SABinaryLoadInfo binaryLoadInfoForAddress:v53 inBinaryLoadInfos:*(v8 + 72) libraryCache:0];
            v56 = *(v8 + 8);
            if (v56)
            {
              objc_storeWeak((v56 + 24), v55);
            }

            (*(a4 + 2))(a4, *v45);
            if (v54)
            {
              break;
            }
          }

          ++v50;
          v47 = *(v8 + 44);
        }

        while (v50 < v47);
      }

      else
      {
        v51 = 0;
      }

      if (((v48 | v51) & 1) == 0)
      {
        v45 = (v8 + 16);
LABEL_110:
        (*(a4 + 2))(a4, *v45);
        goto LABEL_111;
      }

      goto LABEL_111;
    }

    goto LABEL_115;
  }

  v57 = *(v8 + 112);
  if (v57)
  {
    if (*v45)
    {
      *(*v45 + 16) = v57;
    }

    v58 = *(v8 + 72);
    v59 = [SABinaryLoadInfo binaryLoadInfoForAddress:"binaryLoadInfoForAddress:inBinaryLoadInfos:libraryCache:" inBinaryLoadInfos:? libraryCache:?];
    v60 = *(v8 + 8);
    if (v60)
    {
      objc_storeWeak((v60 + 24), v59);
    }

    goto LABEL_110;
  }

LABEL_111:
  v61 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasStack
{
  if ([(SAFrameIterator *)self hasUserStack])
  {
    return 1;
  }

  return [(SAFrameIterator *)self hasKernelStack];
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  numKernelFrames = self->_numKernelFrames;
  if (numKernelFrames)
  {
    v5 = *self->_kernelFrames;
  }

  else
  {
    v5 = 0;
  }

  numUserFrames = self->_numUserFrames;
  if (numUserFrames)
  {
    v7 = *self->_userFrames;
  }

  else
  {
    v7 = 0;
  }

  numSwiftAsyncFrames = self->_numSwiftAsyncFrames;
  if (numSwiftAsyncFrames)
  {
    v9 = *self->_swiftAsyncFrames;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 initWithFormat:@"stack with %d kernel frames (leaf 0x%llx), %d user (leaf 0x%llx), %d swift async (leaf 0x%llx), backtracer %llu, exclave@%u", numKernelFrames, v5, numUserFrames, v7, numSwiftAsyncFrames, v9, self->_backtracer, self->_exclaveInsertionIndex];

  return v10;
}

@end