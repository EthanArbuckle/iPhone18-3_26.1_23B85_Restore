@interface _PASLPWriterV1
+ (dispatch_data_t)_mappedDataWithPlist:(int)plist fd:(unint64_t)fd ofs:(id *)ofs error:;
+ (id)dataWithPropertyList:(id)list error:(id *)error;
+ (id)fileBackedDataWithPropertyList:(id)list appendedToFd:(int)fd startOfs:(int64_t *)ofs error:(id *)error;
+ (id)fileBackedDataWithPropertyList:(id)list writtenToPath:(id)path error:(id *)error;
+ (uint64_t)_scanPlist:(unint64_t)plist recursionDepth:(uint64_t *)depth sizeUpperBound:(void *)bound allDictionaryKeys:(id *)keys error:;
+ (uint64_t)_valueWordForObjectGraph:(uint64_t)graph allocContext:(unint64_t)context recursionDepth:;
+ (uint64_t)_visitObject:(uint64_t)object context:(void *)context handleBoolean:(void *)boolean handleInt64:(void *)int64 handleFloat64:(void *)float64 handleTimeInterval:(void *)interval handleData:(void *)data handleString:(void *)self0 handleDict:(void *)self1 handleArray:(void *)self2 handleOther:;
@end

@implementation _PASLPWriterV1

+ (id)fileBackedDataWithPropertyList:(id)list appendedToFd:(int)fd startOfs:(int64_t *)ofs error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  if (listCopy)
  {
    if ((fd & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPWriterV1.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"plist"}];

    if ((fd & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASLPWriterV1.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"fd >= 0"}];

LABEL_3:
  v28 = 0;
  v12 = objc_autoreleasePoolPush();
  memset(&v27, 0, sizeof(v27));
  if (fstat(fd, &v27))
  {
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A798];
    v15 = *__error();
    v31 = *MEMORY[0x1E696A578];
    v16 = objc_alloc(MEMORY[0x1E696AEC0]);
    v17 = __error();
    v18 = strerror(*v17);
    v19 = [v16 initWithFormat:@"stat() failure: %s (%d)", v18, *__error()];
    v32[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v28 = [v13 initWithDomain:v14 code:v15 userInfo:v20];

    v21 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      st_size = v27.st_size;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASLazyPlist: Appending to fd beginning at file offset %lld", buf, 0xCu);
    }

    v22 = v27.st_size;
    if (ofs)
    {
      *ofs = v27.st_size;
    }

    v21 = [(_PASLPWriterV1 *)self _mappedDataWithPlist:listCopy fd:fd ofs:v22 error:&v28];
  }

  objc_autoreleasePoolPop(v12);
  if (error && !v21)
  {
    *error = v28;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (dispatch_data_t)_mappedDataWithPlist:(int)plist fd:(unint64_t)fd ofs:(id *)ofs error:
{
  v153 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_self();
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__mappedDataWithPlist_fd_ofs_error_ object:v9 file:@"_PASLPWriterV1.m" lineNumber:939 description:{@"Invalid parameter not satisfying: %@", @"plist"}];
  }

  plistCopy = plist;
  if (plist <= -2)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__mappedDataWithPlist_fd_ofs_error_ object:v9 file:@"_PASLPWriterV1.m" lineNumber:940 description:{@"Invalid parameter not satisfying: %@", @"fd >= -1"}];

    if ((fd & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((fd & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:sel__mappedDataWithPlist_fd_ofs_error_ object:v9 file:@"_PASLPWriterV1.m" lineNumber:941 description:{@"Invalid parameter not satisfying: %@", @"ofs >= 0"}];

LABEL_5:
  v119 = 0;
  v114 = v9;
  v117 = objc_opt_new();
  v118 = v8;
  ofsCopy = ofs;
  if (([(_PASLPWriterV1 *)v9 _scanPlist:v8 recursionDepth:0 sizeUpperBound:&v119 allDictionaryKeys:v117 error:ofs]& 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

LABEL_81:
    v76 = *ofsCopy;
    *buf = 138412290;
    *&buf[4] = v76;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", buf, 0xCu);
    goto LABEL_12;
  }

  v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
  v11 = v119;
  if (v10)
  {
    *buf = 134217984;
    *&buf[4] = v119;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASLazyPlist: _mappedDataWithPlist: _PASLazyPlist size over-estimate: %zu bytes", buf, 0xCu);
  }

  if (v11 >> 29)
  {
    v12 = objc_opt_new();
    [v12 setObject:@"The object is too large to serialize as _PASLazyPlist." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v12 setObject:0 forKeyedSubscript:*MEMORY[0x1E696A588]];
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = [v12 copy];
    v15 = [v13 initWithDomain:@"_PASLazyPlistErrorDomain" code:7 userInfo:v14];

    v16 = *ofsCopy;
    *ofsCopy = v15;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_81;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v20 = fd / *MEMORY[0x1E69E9AC8] * *MEMORY[0x1E69E9AC8];
  v110 = fd % *MEMORY[0x1E69E9AC8];
  v111 = v11;
  v113 = v110 + v11;
  if (plistCopy == -1)
  {
    if (fd)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:sel__mappedDataWithPlist_fd_ofs_error_ object:v9 file:@"_PASLPWriterV1.m" lineNumber:969 description:{@"Invalid parameter not satisfying: %@", @"ofs == 0"}];
    }

    v112 = mmap(0, v113, 3, 4098, -1, v20);
  }

  else
  {
    v21 = v11 + fd;
    if (ftruncate(plistCopy, v11 + fd))
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *__error();
      v136 = *MEMORY[0x1E696A578];
      v24 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = __error();
      v26 = strerror(*v25);
      v27 = [v24 initWithFormat:@"Failed to ftruncate file to size %zu bytes: %s (%d)", v21, v26, *__error()];
      v137 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
      v29 = [v22 initWithDomain:*MEMORY[0x1E696A798] code:v23 userInfo:v28];
      v30 = *ofs;
      *ofs = v29;

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_81;
      }

      goto LABEL_12;
    }

    v112 = mmap(0, v113, 3, 1, plistCopy, v20);
  }

  if (v112 == -1)
  {
    v67 = objc_alloc(MEMORY[0x1E696ABC0]);
    v68 = *__error();
    v134 = *MEMORY[0x1E696A578];
    v69 = objc_alloc(MEMORY[0x1E696AEC0]);
    v70 = __error();
    v71 = strerror(*v70);
    v72 = [v69 initWithFormat:@"Failed to map buffer of size %zu bytes: %s (%d)", v111, v71, *__error()];
    v135 = v72;
    v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
    v74 = [v67 initWithDomain:*MEMORY[0x1E696A798] code:v68 userInfo:v73];
    v75 = *ofs;
    *ofs = v74;

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_81;
  }

  v109 = v8;
  v31 = v117;
  v107 = objc_opt_self();
  Mutable = CFSetCreateMutable(0, 0, &bufferDescrCallbacks);
  if (!Mutable)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:sel__writePlist_allDictionaryKeys_toBuffer_size_actSize_ object:v107 file:@"_PASLPWriterV1.m" lineNumber:857 description:@"Failed to allocate buffer set"];
  }

  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __70___PASLPWriterV1__writePlist_allDictionaryKeys_toBuffer_size_actSize___block_invoke;
  v129[3] = &__block_descriptor_40_e5_v8__0l;
  v129[4] = Mutable;
  v108 = MEMORY[0x1AC566DD0](v129);
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  memset(buf, 0, sizeof(buf));
  *buf = [v31 count];
  v125[0] = &v112[v110];
  v125[1] = &v112[v110 + v111];
  theSet = Mutable;
  v127 = &v112[v110];
  buffer = &v112[v110];
  v128 = buf;
  v33 = bumpChecked(v125, 16);
  *v33 = 22039632;
  *(v33 + 8) = 0;
  *(v33 + 4) = 0;
  context = objc_autoreleasePoolPush();
  v34 = malloc_type_malloc(8 * [v31 count], 0x50040EE9192B6uLL);
  v35 = v34;
  if (!v34)
  {
    v103 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v103);
  }

  v124[0] = MEMORY[0x1E69E9820];
  v124[1] = 3221225472;
  v124[2] = __70___PASLPWriterV1__writePlist_allDictionaryKeys_toBuffer_size_actSize___block_invoke_2;
  v124[3] = &__block_descriptor_40_e5_v8__0l;
  v124[4] = v34;
  v105 = MEMORY[0x1AC566DD0](v124);
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v36 = v31;
  v37 = [v36 countByEnumeratingWithState:&v120 objects:v145 count:16];
  if (v37)
  {
    v38 = 0;
    v39 = *v121;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v121 != v39)
        {
          objc_enumerationMutation(v36);
        }

        uTF8String = [*(*(&v120 + 1) + 8 * i) UTF8String];
        if (!uTF8String)
        {
          currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler6 handleFailureInMethod:sel__writePlist_allDictionaryKeys_toBuffer_size_actSize_ object:v107 file:@"_PASLPWriterV1.m" lineNumber:886 description:@"dictionary key is not Unicode"];
        }

        v35[v38++] = uTF8String;
      }

      v37 = [v36 countByEnumeratingWithState:&v120 objects:v145 count:16];
    }

    while (v37);
  }

  qsort_b(v35, [v36 count], 8uLL, &__block_literal_global_149);
  v43 = 0;
  *(v33 + 4) = v127 - LODWORD(v125[0]);
  while (v43 < [v36 count])
  {
    v44 = strlen(v35[v43]) + 1;
    v45 = bumpChecked(v125, v44);
    memcpy(v45, v35[v43], v44);
    *value = v45;
    *&value[8] = v44 | 0x100000000;
    v46 = theSet;
    ++*(v128 + 15);
    CFSetAddValue(v46, value);
    ++v43;
  }

  *(v33 + 8) = v127 - LODWORD(v125[0]);
  if (v105)
  {
    v105[2](v105);
  }

  objc_autoreleasePoolPop(context);
  v47 = [(_PASLPWriterV1 *)v107 _valueWordForObjectGraph:v109 allocContext:v125 recursionDepth:0];
  alignChecked(v125, 4uLL);
  v48 = bumpChecked(v125, 4);
  *v48 = v47;
  v49 = v125[0];
  *(v33 + 12) = v48 - LODWORD(v125[0]);
  v50 = &v127[-v49];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = v50;
    *&value[12] = 2048;
    *&value[14] = &v112[v110];
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Successfully constructed _PASLazyPlist of size %zu bytes in buffer %p .  Object graph statistics:", value, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = *&buf[8];
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boolean:        %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = *&buf[16];
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Tagged integer: %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = *&buf[24];
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boxed integer:  %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = v147;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Tagged real:    %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = *(&v147 + 1);
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boxed real:     %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = v148;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Date:           %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = *(&v148 + 1);
    *&value[12] = 2048;
    *&value[14] = *buf;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: String:         %tu (%tu unique dictionary keys)", value, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = v149;
    *&value[12] = 2048;
    *&value[14] = *(&v149 + 1);
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Data:           %tu (%tu total bytes)", value, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = v151;
    *&value[12] = 2048;
    *&value[14] = *(&v151 + 1);
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Dictionary:     %tu (%tu total key/value mappings)", value, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = v150;
    *&value[12] = 2048;
    *&value[14] = *(&v150 + 1);
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Array:          %tu (%tu total elements)", value, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = v152;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Object graph maximum depth: %tu", value, 0xCu);
  }

  v51 = *(&v152 + 1);
  if (*(&v152 + 1) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = v51;
    *&value[12] = 2048;
    *&value[14] = v151 + v150 + v149 + *(&v148 + 1) + v148 + *(&v147 + 1) + *&buf[24];
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boxed allocations: %tu (referenced by %tu total pointers)", value, 0x16u);
  }

  v52 = +[_PASLazyPlist serializationStatsHandler];
  v53 = v52;
  if (v52)
  {
    v54 = *(v52 + 16);
    v141 = v149;
    v142 = v150;
    v143 = v151;
    v144 = v152;
    *value = *buf;
    *&value[16] = *&buf[16];
    v139 = v147;
    v140 = v148;
    v54(v52, value);
  }

  v55 = v108;
  if (v108)
  {
    (*(v108 + 2))();
    v55 = v108;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v50;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASLazyPlist: _mappedDataWithPlist: _PASLazyPlist actual size: %zu bytes", buf, 0xCu);
  }

  v56 = v111;
  v57 = plistCopy;
  if (v50 > v111)
  {
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler7 handleFailureInMethod:sel__mappedDataWithPlist_fd_ofs_error_ object:v114 file:@"_PASLPWriterV1.m" lineNumber:1009 description:{@"Invalid parameter not satisfying: %@", @"actSize <= sizeUpperBound"}];

    v57 = plistCopy;
    v56 = v111;
    if (plistCopy < 0)
    {
      goto LABEL_85;
    }
  }

  else if (plistCopy < 0)
  {
    goto LABEL_85;
  }

  v57 = plistCopy;
  if (msync(v112, v113, 16))
  {
    v58 = objc_alloc(MEMORY[0x1E696ABC0]);
    v59 = *__error();
    v132 = *MEMORY[0x1E696A578];
    v60 = objc_alloc(MEMORY[0x1E696AEC0]);
    v61 = __error();
    v62 = strerror(*v61);
    v63 = [v60 initWithFormat:@"Failed to msync file content of size %zu bytes: %s (%d)", v50, v62, *__error()];
    v133 = v63;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
    v65 = [v58 initWithDomain:*MEMORY[0x1E696A798] code:v59 userInfo:v64];
    v66 = *ofsCopy;
    *ofsCopy = v65;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_99;
    }

    goto LABEL_92;
  }

LABEL_85:
  v82 = &buffer[v50 - 1 + *MEMORY[0x1E69E9AC8]] / *MEMORY[0x1E69E9AC8] * *MEMORY[0x1E69E9AC8];
  if (&buffer[v56] > v82)
  {
    v57 = plistCopy;
    if (munmap(v82, &buffer[v56 - v82]))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v83 = __error();
        v84 = strerror(*v83);
        v85 = *__error();
        *buf = 136315394;
        *&buf[4] = v84;
        *&buf[12] = 1024;
        *&buf[14] = v85;
        _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PASLazyPlist: Warning: failed to unmap unused tail: %s (%d)", buf, 0x12u);
        v57 = plistCopy;
      }
    }
  }

  v113 = v50 + v110;
  if ((v57 & 0x80000000) == 0 && ftruncate(v57, v50 + fd))
  {
    v86 = objc_alloc(MEMORY[0x1E696ABC0]);
    v87 = *__error();
    v130 = *MEMORY[0x1E696A578];
    v88 = objc_alloc(MEMORY[0x1E696AEC0]);
    v89 = __error();
    v90 = strerror(*v89);
    v91 = [v88 initWithFormat:@"Failed to ftruncate file to size %zu bytes: %s (%d)", v50, v90, *__error()];
    v131 = v91;
    v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
    v93 = [v86 initWithDomain:*MEMORY[0x1E696A798] code:v87 userInfo:v92];
    v94 = *ofsCopy;
    *ofsCopy = v93;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_99:
      v101 = *ofsCopy;
      *buf = 138412290;
      *&buf[4] = v101;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", buf, 0xCu);
    }

LABEL_92:
    if (munmap(v112, v113) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v95 = __error();
      v96 = strerror(*v95);
      v97 = *__error();
      *buf = 136315394;
      *&buf[4] = v96;
      *&buf[12] = 1024;
      *&buf[14] = v97;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PASLazyPlist: Warning: failed to unmap in failure recovery: %s (%d)", buf, 0x12u);
    }

    goto LABEL_12;
  }

  if (mprotect(v112, v113, 1) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v98 = __error();
    v99 = strerror(*v98);
    v100 = *__error();
    *buf = 136315394;
    *&buf[4] = v99;
    *&buf[12] = 1024;
    *&buf[14] = v100;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PASLazyPlist: Warning: failed to mprotect mapping: %s (%d)", buf, 0x12u);
  }

  v17 = dispatch_data_create(buffer, v50, 0, *MEMORY[0x1E69E9650]);
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (uint64_t)_scanPlist:(unint64_t)plist recursionDepth:(uint64_t *)depth sizeUpperBound:(void *)bound allDictionaryKeys:(id *)keys error:
{
  v10 = a2;
  boundCopy = bound;
  v12 = objc_opt_self();
  if (!keys)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__scanPlist_recursionDepth_sizeUpperBound_allDictionaryKeys_error_ object:v12 file:@"_PASLPWriterV1.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  if (plist < 0x65)
  {
    v17 = *depth;
    plistCopy = plist;
    v29 = v17;
    v30 = boundCopy;
    obj = *keys;
    v18 = [(_PASLPWriterV1 *)v12 _visitObject:v10 context:&plistCopy handleBoolean:&__block_literal_global_4037 handleInt64:&__block_literal_global_46 handleFloat64:&__block_literal_global_49_4038 handleTimeInterval:&__block_literal_global_51 handleData:&__block_literal_global_54 handleString:&__block_literal_global_57_4039 handleDict:&__block_literal_global_63 handleArray:&__block_literal_global_74 handleOther:&__block_literal_global_78];
    if (v18)
    {
      v19 = obj;
      *depth = v29 + 19;
      objc_storeStrong(keys, v19);
      v20 = v30;
      v30 = 0;

      v21 = obj;
      obj = 0;
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"plist object graph exceeds maximum depth %tu, or contains a cycle", 100];
    v14 = objc_opt_new();
    v15 = v14;
    if (v13)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The object is too large to serialize as _PASLazyPlist: %@", v13];
      [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    else
    {
      [v14 setObject:@"The object is too large to serialize as _PASLazyPlist." forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    [v15 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A588]];

    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = [v15 copy];
    v24 = [v22 initWithDomain:@"_PASLazyPlistErrorDomain" code:7 userInfo:v23];

    v25 = *keys;
    *keys = v24;

    v18 = 0;
  }

  return v18;
}

+ (uint64_t)_valueWordForObjectGraph:(uint64_t)graph allocContext:(unint64_t)context recursionDepth:
{
  v6 = a2;
  v7 = objc_opt_self();
  v8 = v7;
  v9 = *(graph + 32);
  contextCopy = *(v9 + 112);
  if (contextCopy <= context)
  {
    contextCopy = context;
  }

  *(v9 + 112) = contextCopy;
  graphCopy = graph;
  v16 = 0;
  contextCopy2 = context;
  v11 = [(_PASLPWriterV1 *)v7 _visitObject:v6 context:&graphCopy handleBoolean:&__block_literal_global_88 handleInt64:&__block_literal_global_90 handleFloat64:&__block_literal_global_92 handleTimeInterval:&__block_literal_global_97 handleData:&__block_literal_global_99 handleString:&__block_literal_global_105 handleDict:&__block_literal_global_111 handleArray:&__block_literal_global_126 handleOther:0];

  if ((v11 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__valueWordForObjectGraph_allocContext_recursionDepth_ object:v8 file:@"_PASLPWriterV1.m" lineNumber:841 description:{@"Invalid parameter not satisfying: %@", @"ok"}];
  }

  if ((v16 & 0x100000000) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__valueWordForObjectGraph_allocContext_recursionDepth_ object:v8 file:@"_PASLPWriterV1.m" lineNumber:842 description:{@"Invalid parameter not satisfying: %@", @"valueWordContext.hasValueWord"}];
  }

  return v16;
}

+ (uint64_t)_visitObject:(uint64_t)object context:(void *)context handleBoolean:(void *)boolean handleInt64:(void *)int64 handleFloat64:(void *)float64 handleTimeInterval:(void *)interval handleData:(void *)data handleString:(void *)self0 handleDict:(void *)self1 handleArray:(void *)self2 handleOther:
{
  v17 = a2;
  contextCopy = context;
  booleanCopy = boolean;
  int64Copy = int64;
  float64Copy = float64;
  intervalCopy = interval;
  dataCopy = data;
  stringCopy = string;
  dictCopy = dict;
  arrayCopy = array;
  v25 = objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = CFGetTypeID(v17);
    if (v26 == CFBooleanGetTypeID())
    {
      v27 = booleanCopy;
      v28 = contextCopy;
      if (contextCopy)
      {
        v29 = CFBooleanGetValue(v17) != 0;
        v30 = (*(contextCopy + 2))(contextCopy, object, v29);
LABEL_34:
        v34 = v30;
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v27 = booleanCopy;
    if (CFNumberIsFloatType(v17))
    {
      if (int64Copy)
      {
        valuePtr = 0;
        if (!CFNumberGetValue(v17, kCFNumberDoubleType, &valuePtr))
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__visitObject_context_handleBoolean_handleInt64_handleFloat64_handleTimeInterval_handleData_handleString_handleDict_handleArray_handleOther_ object:v25 file:@"_PASLPWriterV1.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"convOk"}];

          v27 = booleanCopy;
        }

        v33.n128_u64[0] = valuePtr;
        v32 = int64Copy[2](int64Copy, object, v33);
        goto LABEL_13;
      }
    }

    else if (booleanCopy)
    {
      valuePtr = 0;
      if (!CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr))
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__visitObject_context_handleBoolean_handleInt64_handleFloat64_handleTimeInterval_handleData_handleString_handleDict_handleArray_handleOther_ object:v25 file:@"_PASLPWriterV1.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"convOk"}];

        v27 = booleanCopy;
      }

      v32 = v27[2](v27, object, valuePtr);
      goto LABEL_13;
    }

LABEL_24:
    v34 = 1;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v27 = booleanCopy;
    if (objc_opt_isKindOfClass())
    {
      v28 = contextCopy;
      if (intervalCopy)
      {
        v30 = intervalCopy[2](intervalCopy, object, v17);
        goto LABEL_34;
      }
    }

    else
    {
      objc_opt_class();
      v28 = contextCopy;
      if (objc_opt_isKindOfClass())
      {
        if (dataCopy)
        {
          v30 = dataCopy[2](dataCopy, object, v17);
          goto LABEL_34;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (stringCopy)
          {
            v30 = stringCopy[2](stringCopy, object, v17);
            goto LABEL_34;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (dictCopy)
            {
              v30 = dictCopy[2](dictCopy, object, v17);
              goto LABEL_34;
            }
          }

          else if (arrayCopy)
          {
            v30 = arrayCopy[2](arrayCopy, object, v17);
            goto LABEL_34;
          }
        }
      }
    }

LABEL_35:
    v34 = 1;
    goto LABEL_36;
  }

  v27 = booleanCopy;
  if (!float64Copy)
  {
    goto LABEL_24;
  }

  [v17 timeIntervalSinceReferenceDate];
  v32 = float64Copy[2](float64Copy, object, v31);
LABEL_13:
  v34 = v32;
LABEL_25:
  v28 = contextCopy;
LABEL_36:

  return v34;
}

+ (id)fileBackedDataWithPropertyList:(id)list writtenToPath:(id)path error:(id *)error
{
  listCopy = list;
  pathCopy = path;
  v11 = pathCopy;
  if (listCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPWriterV1.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"plist"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASLPWriterV1.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"path"}];

LABEL_3:
  v30 = 0;
  v12 = objc_autoreleasePoolPush();
  v13 = open([v11 fileSystemRepresentation], 1538, 420);
  if (v13 < 0)
  {
    v16 = objc_alloc(MEMORY[0x1E696AEC0]);
    v17 = __error();
    v18 = strerror(*v17);
    v19 = [v16 initWithFormat:@"Could not open file: %s (%d)", v18, *__error()];
    v20 = v11;
    v21 = objc_opt_new();
    v22 = v21;
    if (v19)
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The file cannot be opened: %@", v19];
      [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    else
    {
      [v21 setObject:@"The file cannot be opened." forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    [v22 setObject:v19 forKeyedSubscript:*MEMORY[0x1E696A588]];

    [v22 setObject:v20 forKeyedSubscript:*MEMORY[0x1E696A368]];
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = [v22 copy];
    v26 = [v24 initWithDomain:@"_PASLazyPlistErrorDomain" code:1 userInfo:v25];

    v30 = v26;
    v15 = 0;
  }

  else
  {
    v14 = v13;
    v15 = [(_PASLPWriterV1 *)self _mappedDataWithPlist:listCopy fd:v13 ofs:0 error:&v30];
    close(v14);
  }

  objc_autoreleasePoolPop(v12);
  if (error && !v15)
  {
    *error = v30;
  }

  return v15;
}

+ (id)dataWithPropertyList:(id)list error:(id *)error
{
  listCopy = list;
  if (listCopy)
  {
    v14 = 0;
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = listCopy;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPWriterV1.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"plist"}];

    v14 = 0;
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = 0;
  }

  v11 = [(_PASLPWriterV1 *)selfCopy2 _mappedDataWithPlist:v10 fd:-1 ofs:0 error:&v14];
  objc_autoreleasePoolPop(v8);
  if (error && !v11)
  {
    *error = v14;
  }

  return v11;
}

@end