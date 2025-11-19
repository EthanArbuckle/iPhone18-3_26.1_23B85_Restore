@interface TSPDistributableArchive
+ (BOOL)_checkFileHeader:(const char *)a3 length:(unint64_t)a4 dffVersion:(unsigned __int16 *)a5 archivedVersions:(id *)a6 defaultObjectVersion:(unsigned int *)a7 hasDescriptors:(BOOL *)a8 hasToc:(BOOL *)a9 otherDataLength:(unsigned int *)a10 closedCleanly:(BOOL *)a11;
+ (BOOL)readArchivedVersionsFromStream:(id)a3 versions:(id *)a4 error:(id *)a5;
+ (BOOL)readCheckCrcFromArchiveInputStream:(id)a3 crc:(unsigned int *)a4 error:(id *)a5;
+ (BOOL)streamDistributableArchive:(id)a3 estimatedDataLength:(int64_t)a4 toUnarchiver:(id)a5 supplementalDataBundle:(id)a6 closedCleanly:(BOOL *)a7 context:(id)a8 error:(id *)a9;
+ (id)_newStringFromUtf8DataInStream:(id)a3 length:(unint64_t)a4;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)archivedVersions;
- (BOOL)_readEntriesFromToc:(id)a3 error:(id *)a4;
- (BOOL)containsObjectWithIdentifier:(int64_t)a3;
- (TSPDistributableArchive)initWithDffData:(id)a3 error:(id *)a4;
- (id)_createInputStreamWithOffset:(int64_t)a3 length:(int64_t)a4;
- (id)createStreamForObject:(int64_t)a3 length:(int64_t *)a4;
- (int64_t)lengthOfObject:(int64_t)a3;
- (void)dealloc;
@end

@implementation TSPDistributableArchive

+ (BOOL)readArchivedVersionsFromStream:(id)a3 versions:(id *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v15 = 0;
  if (objc_msgSend_readToOwnBuffer_size_(v7, v9, &v15, 36) == 36 && (v10 = v15, *v15 == 1179010153))
  {
    if (a4)
    {
      a4->var0 = *(v15 + 10);
      a4->var1 = *(v10 + 18);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v8);
  if (a5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    v13 = 0;
    *a5 = 0;
  }

  return v11;
}

+ (BOOL)readCheckCrcFromArchiveInputStream:(id)a3 crc:(unsigned int *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v14 = 0;
  if (objc_msgSend_readToOwnBuffer_size_(v7, v9, &v14, 36) == 36 && *v14 == 1179010153)
  {
    if (a4)
    {
      *a4 = v14[1];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);
  if (a5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v12 = 0;
    *a5 = 0;
  }

  return v10;
}

+ (BOOL)streamDistributableArchive:(id)a3 estimatedDataLength:(int64_t)a4 toUnarchiver:(id)a5 supplementalDataBundle:(id)a6 closedCleanly:(BOOL *)a7 context:(id)a8 error:(id *)a9
{
  v14 = a3;
  v133 = a5;
  v132 = a6;
  v15 = a8;
  context = objc_autoreleasePoolPush();
  v18 = a4 + 1023;
  v135 = a4;
  v136 = v15;
  if (a4 >= 0)
  {
    v18 = a4;
  }

  v137 = v14;
  objc_msgSend_createStageWithSteps_(v15, v16, v17, (v18 >> 10));
  v149[0] = 0;
  v148 = 0;
  v147 = 0;
  v146 = UnsafePointer;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  if (objc_msgSend_readToOwnBuffer_size_(v14, v19, v149, 36) == 36)
  {
    v22 = 1;
    v23 = objc_msgSend__checkFileHeader_length_dffVersion_archivedVersions_defaultObjectVersion_hasDescriptors_hasToc_otherDataLength_closedCleanly_(a1, v20, v149[0], 36, &v144, &v146, &v145, &v148, 0, &v147, &v143);
    v24 = v23 ^ 1;
    if (!a7)
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      *a7 = v143;
      goto LABEL_9;
    }

    if (v23)
    {
LABEL_9:
      v142 = 0;
      v25 = objc_msgSend_handleArchivedVersions_error_(v133, v20, v146, *(&v146 + 1), &v142);
      v138 = v142;
      if (v147)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      if (v26 == 1)
      {
        if (objc_msgSend_canSeek(v14, v20, v21))
        {
          v29 = objc_msgSend_offset(v14, v27, v28);
          objc_msgSend_seekToOffset_(v14, v30, v29 + v147);
        }

        else
        {
          while (1)
          {
            v31 = atomic_load(byte_280A52B10);
            if (v31)
            {
              break;
            }

            v32 = objc_msgSend_readToOwnBuffer_size_(v14, v27, v149, v147);
            if (!v32 || v147 == 0)
            {
              break;
            }

            v147 -= v32;
          }

          v22 = v147 == 0;
        }

        v34 = objc_msgSend_offset(v14, v27, v28);
        v37 = a4;
        if (v34 < a4)
        {
          v37 = v34;
        }

        objc_msgSend_setProgress_(v15, v35, v36, (v37 / 1024));
      }

      else
      {
        v22 = v25;
      }

      goto LABEL_29;
    }
  }

  if (v144 <= 1u)
  {
    v138 = 0;
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v138 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v20, 7);
  }

LABEL_29:
  v38 = (*" " - 4);
  while (1)
  {
    v39 = atomic_load(byte_280A52B10);
    v40 = v22 ^ 1;
    if ((v39 & 1) != 0 || (v40 & 1) != 0 || objc_msgSend_readToOwnBuffer_size_(v14, v20, v149, 4) != 4 || *"TocE " == *v149[0] || *"FdpE\b" == *v149[0])
    {
      v81 = atomic_load(byte_280A52B10);
      if (((v81 | v40) & 1) != 0 || v148 != 1 || (v82 = v149[0], *"FdpE\b" != *v149[0]) || *"ClsE\r" == *v149[0])
      {
LABEL_80:
        v83 = atomic_load(byte_280A52B10);
        if ((v83 & 1) == 0 && (v22 & 1) != 0 && v148 == 1)
        {
          v84 = v149[0];
          if (*"ClsE\r" == *v149[0] && *"TocE " != *v149[0])
          {
            while (*"ClsE\r" == *v84 && objc_msgSend_readToOwnBuffer_size_(v14, v20, v149, (*"\r" - 4)) == *"\r" - 4)
            {
              v85 = *v149[0];
              v86 = *(v149[0] + 4);
              v87 = *(v149[0] + 5);
              if (objc_msgSend_readToOwnBuffer_size_(v14, v20, v149, v87) == v87)
              {
                v89 = objc_alloc(MEMORY[0x277CCACA8]);
                v91 = objc_msgSend_initWithBytes_length_encoding_(v89, v90, v149[0], v87, 4);
                v139 = v138;
                isProtobufClass_error = objc_msgSend_handleClassInfoWithClassType_className_isProtobufClass_error_(v133, v92, v85, v91, v86 == 1, &v139);
                v94 = v139;

                v138 = v94;
                v22 = isProtobufClass_error;
              }

              else
              {
                v22 = 0;
                objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v88, 0);
                v138 = v91 = v138;
              }

              v97 = objc_msgSend_offset(v14, v95, v96);
              v100 = v135;
              if (v97 < v135)
              {
                v100 = v97;
              }

              objc_msgSend_setProgress_(v136, v98, v99, (v100 / 1024));
              v101 = atomic_load(byte_280A52B10);
              if ((v101 & 1) == 0 && ((v22 ^ 1) & 1) == 0 && objc_msgSend_readToOwnBuffer_size_(v14, v20, v149, 4) == 4)
              {
                v84 = v149[0];
                if (*"TocE " != *v149[0])
                {
                  continue;
                }
              }

              goto LABEL_99;
            }

            LOBYTE(v22) = 0;
          }
        }

        goto LABEL_99;
      }

      while (1)
      {
        if (*"FdpE\b" != *v82)
        {
          goto LABEL_98;
        }

        v22 = 1;
        if (objc_msgSend_readToOwnBuffer_size_(v14, v20, v149, (*"\b" - 4)) != *"\b" - 4)
        {
          goto LABEL_98;
        }

        v107 = *v149[0];
        v108 = objc_msgSend_offset(v14, v20, v21);
        v140 = v138;
        v110 = objc_msgSend_handleFileDescriptorProtoWithInputStream_length_error_(v133, v109, v14, v107, &v140);
        v111 = v140;

        if (!v110)
        {
          break;
        }

        v116 = v108 + v107;
        if (objc_msgSend_offset(v14, v112, v113) <= v116)
        {
          if (objc_msgSend_offset(v14, v114, v115) < v116)
          {
            if (objc_msgSend_canSeek(v14, v112, v113))
            {
              v118 = v111;
              objc_msgSend_seekToOffset_(v14, v112, v116);
              goto LABEL_116;
            }

            v124 = atomic_load(byte_280A52B10);
            if ((v124 & 1) == 0)
            {
              while (1)
              {
                v125 = objc_msgSend_readToOwnBuffer_size_(v14, v112, v149, v107);
                if (!v125 || v107 == 0)
                {
                  break;
                }

                LODWORD(v107) = v107 - v125;
                v127 = atomic_load(byte_280A52B10);
                v22 = 1;
                if (v127)
                {
                  goto LABEL_115;
                }
              }

              v22 = 1;
            }
          }

          goto LABEL_115;
        }

        v117 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v114, 0);

        v22 = 0;
        v118 = v117;
LABEL_116:
        v138 = v118;
        v119 = objc_msgSend_offset(v14, v112, v113);
        v122 = v135;
        if (v119 < v135)
        {
          v122 = v119;
        }

        objc_msgSend_setProgress_(v136, v120, v121, (v122 / 1024));
        v123 = atomic_load(byte_280A52B10);
        if ((v123 & 1) == 0 && ((v22 ^ 1) & 1) == 0 && objc_msgSend_readToOwnBuffer_size_(v14, v20, v149, 4) == 4)
        {
          v82 = v149[0];
          if (*"ClsE\r" != *v149[0])
          {
            continue;
          }
        }

        goto LABEL_80;
      }

      v22 = 0;
LABEL_115:
      v118 = v111;
      goto LABEL_116;
    }

    if (*"ObjE" != *v149[0] || objc_msgSend_readToOwnBuffer_size_(v14, v20, v149, v38) != v38)
    {
      break;
    }

    v42 = objc_autoreleasePoolPush();
    v43 = *v149[0];
    v44 = *(v149[0] + 8);
    v45 = *(v149[0] + 12);
    v46 = *(v149[0] + 16);
    v47 = *(v149[0] + 20);
    if (*(v149[0] + 14))
    {
      v48 = objc_msgSend__newStringFromUtf8DataInStream_length_(a1, v41, v14);
    }

    else
    {
      v48 = 0;
    }

    v50 = malloc_type_malloc(8 * v46, 0x100004000313F17uLL);
    if (!v50)
    {
      v53 = objc_msgSend_tsp_readPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v49, 12, 0);
LABEL_56:
      v54 = v42;
      v22 = 0;
      v55 = v138;
      v138 = v53;
      goto LABEL_70;
    }

    if (v46)
    {
      v51 = 0;
      while (objc_msgSend_readToOwnBuffer_size_(v14, v49, v149, 8) == 8)
      {
        v50[v51++] = *v149[0];
        if (v51 >= v46)
        {
          goto LABEL_45;
        }
      }

      v54 = v42;
      objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v49, 0);
      v22 = 0;
      v138 = v55 = v138;
    }

    else
    {
LABEL_45:
      if (v45)
      {
        if (objc_msgSend_readToOwnBuffer_size_(v14, v49, v149, 4) != 4)
        {
          v53 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v49, 0);
          goto LABEL_56;
        }

        v52 = v149[0];
      }

      else
      {
        v52 = &v145;
      }

      v54 = v42;
      v131 = *v52;
      v56 = v45 & 2;
      if (v56)
      {
        if (!v48 || (objc_msgSend_bufferedInputStreamForEntry_(v132, v49, v48), (v55 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v59 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v49, 0);
          v55 = 0;
LABEL_64:

          v22 = 0;
          v138 = v59;
          goto LABEL_70;
        }

        v47 = objc_msgSend_lengthOfEntry_(v132, v49, v48);
        v129 = v56;
      }

      else
      {
        v129 = 0;
        v55 = v137;
      }

      v60 = objc_msgSend_offset(v55, v57, v58);
      v141 = v138;
      LODWORD(v128) = v46;
      v22 = objc_msgSend_handleObjectWithIdentifier_fileStateIdentifier_version_classType_stream_length_relationshipTargets_relationshipCount_error_(v133, v61, v43, v48, v131, v44, v55, v47, v50, v128, &v141);
      v62 = v141;

      v138 = v62;
      v65 = v22 ^ 1;
      if (v129)
      {
        v65 = 1;
      }

      if (v65)
      {
        goto LABEL_70;
      }

      if (objc_msgSend_offset(v55, v63, v64) > v60 + v47)
      {
        v59 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v66, 0);
        goto LABEL_64;
      }

      if (objc_msgSend_offset(v55, v66, v67) >= v60 + v47)
      {
        goto LABEL_69;
      }

      if (objc_msgSend_canSeek(v55, v68, v69))
      {
        objc_msgSend_seekToOffset_(v55, v70, v60 + v47);
LABEL_69:
        v22 = 1;
        goto LABEL_70;
      }

      v71 = atomic_load(byte_280A52B10);
      if (v71)
      {
        goto LABEL_69;
      }

      do
      {
        v79 = objc_msgSend_readToOwnBuffer_size_(v55, v70, v149, v47);
        v22 = 1;
        if (!v79)
        {
          break;
        }

        if (v47 <= 0)
        {
          break;
        }

        v47 -= v79;
        v80 = atomic_load(byte_280A52B10);
      }

      while ((v80 & 1) == 0);
    }

LABEL_70:

    free(v50);
    v74 = objc_msgSend_offset(v137, v72, v73);
    v77 = v135;
    if (v74 < v135)
    {
      v77 = v74;
    }

    objc_msgSend_setProgress_(v136, v75, v76, (v77 / 1024));
    v38 = (*" " - 4);
    v78 = v54;
    v14 = v137;
    objc_autoreleasePoolPop(v78);
  }

  atomic_load(byte_280A52B10);
LABEL_98:
  LOBYTE(v22) = 0;
  atomic_load(byte_280A52B10);
LABEL_99:
  objc_msgSend_endStage(v136, v20, v21);
  v102 = atomic_load(byte_280A52B10);
  if (v102)
  {
    LOBYTE(v22) = 0;
    atomic_store(0, byte_280A52B10);
  }

  objc_autoreleasePoolPop(context);
  if (!((a9 == 0) | v22 & 1))
  {
    v104 = atomic_load(byte_280A52B10);
    if ((v104 & 1) == 0)
    {
      if (v138)
      {
        v105 = v138;
      }

      else
      {
        v105 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v103, 0);
      }

      *a9 = v105;
    }
  }

  return v22 & 1;
}

- (TSPDistributableArchive)initWithDffData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = TSPDistributableArchive;
  if ([(TSPDistributableArchive *)&v8 init])
  {
    operator new();
  }

  v6 = 0;

  return v6;
}

- (void)dealloc
{
  entries = self->_entries;
  if (entries)
  {
    sub_276A579A4(self->_entries, entries[1]);
    MEMORY[0x277C9F670](entries, 0x1020C4062D53EE8);
  }

  v4.receiver = self;
  v4.super_class = TSPDistributableArchive;
  [(TSPDistributableArchive *)&v4 dealloc];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)archivedVersions
{
  compatibleVersion = self->_archivedVersions.compatibleVersion;
  version = self->_archivedVersions.version;
  result.var1 = compatibleVersion;
  result.var0 = version;
  return result;
}

- (id)createStreamForObject:(int64_t)a3 length:(int64_t *)a4
{
  entries = self->_entries;
  v7 = entries[1];
  v5 = entries + 1;
  v6 = v7;
  if (!v7)
  {
    return 0;
  }

  v9 = v5;
  do
  {
    if (v6[4] >= a3)
    {
      v9 = v6;
    }

    v6 = v6[v6[4] < a3];
  }

  while (v6);
  if (v9 == v5 || v9[4] > a3)
  {
    return 0;
  }

  v11 = v9[6];
  result = objc_msgSend__createInputStreamWithOffset_length_(self, a2, v9[5], v11);
  if (a4)
  {
    *a4 = v11;
  }

  return result;
}

- (int64_t)lengthOfObject:(int64_t)a3
{
  entries = self->_entries;
  v7 = entries[1];
  v5 = (entries + 1);
  v6 = v7;
  if (v7)
  {
    v8 = v5;
    do
    {
      if (*(v6 + 4) >= a3)
      {
        v8 = v6;
      }

      v6 = *&v6[8 * (*(v6 + 4) < a3)];
    }

    while (v6);
    if (v8 != v5 && *(v8 + 4) <= a3)
    {
      return *(v8 + 6);
    }
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDistributableArchive lengthOfObject:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableArchive.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 563, 0, "Asked for length of missing object %llu", a3);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  return 0;
}

- (BOOL)containsObjectWithIdentifier:(int64_t)a3
{
  entries = self->_entries;
  v6 = entries[1];
  v4 = (entries + 1);
  v5 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v4;
  do
  {
    if (*(v5 + 4) >= a3)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 4) < a3)];
  }

  while (v5);
  if (v7 == v4 || *(v7 + 4) > a3)
  {
LABEL_8:
    v7 = v4;
  }

  return v7 != v4;
}

+ (BOOL)_checkFileHeader:(const char *)a3 length:(unint64_t)a4 dffVersion:(unsigned __int16 *)a5 archivedVersions:(id *)a6 defaultObjectVersion:(unsigned int *)a7 hasDescriptors:(BOOL *)a8 hasToc:(BOOL *)a9 otherDataLength:(unsigned int *)a10 closedCleanly:(BOOL *)a11
{
  if (*a3 != 1179010153)
  {
    return 0;
  }

  v11 = *(a3 + 4);
  if (a5)
  {
    *a5 = v11;
  }

  if (v11 != 1)
  {
    return 0;
  }

  if (a6)
  {
    *a6 = *(a3 + 10);
  }

  if (a7)
  {
    *a7 = *(a3 + 26);
  }

  v12 = *(a3 + 15);
  if (a8)
  {
    *a8 = (v12 & 1) != 0;
  }

  if (a9)
  {
    *a9 = (~v12 & 2) == 0;
  }

  if (a11)
  {
    *a11 = (~v12 & 4) == 0;
  }

  if (a10)
  {
    *a10 = *(a3 + 8);
  }

  return 1;
}

+ (id)_newStringFromUtf8DataInStream:(id)a3 length:(unint64_t)a4
{
  v5 = a3;
  if (a4 == -1 || (v6 = malloc_type_malloc(a4 + 1, 0x100004077774924uLL), (v8 = v6) == 0))
  {
    v13 = 0;
  }

  else
  {
    v9 = v6;
    if (a4)
    {
      v9 = v6;
      while (1)
      {
        __src = 0;
        v10 = objc_msgSend_readToOwnBuffer_size_(v5, v7, &__src, a4);
        if (!v10)
        {
          break;
        }

        memcpy(v9, __src, v10);
        v9 += v10;
        a4 -= v10;
        if (!a4)
        {
          goto LABEL_7;
        }
      }

      v13 = 0;
    }

    else
    {
LABEL_7:
      *v9 = 0;
      v11 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = objc_msgSend_initWithCString_encoding_(v11, v12, v8, 4);
    }

    free(v8);
  }

  return v13;
}

- (BOOL)_readEntriesFromToc:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_bufferedInputStream(v6, v8, v9);
  if (objc_msgSend_canSeek(v10, v11, v12))
  {
    v40 = 0;
    LOBYTE(v38[0]) = 0;
    if (objc_msgSend_readToOwnBuffer_size_(v10, v13, &v40, 36) == 36 && (v15 = objc_opt_class(), v17 = objc_msgSend__checkFileHeader_length_dffVersion_archivedVersions_defaultObjectVersion_hasDescriptors_hasToc_otherDataLength_closedCleanly_(v15, v16, v40, 36, 0, &self->_archivedVersions, 0, 0, v38, 0, 0), (v17 & v38[0] & 1) != 0) && (v19 = objc_msgSend_dataLength(v6, v14, v18), v19 >= 16) && (objc_msgSend_seekToOffset_(v10, v14, v19 - 16), objc_msgSend_readToOwnBuffer_size_(v10, v20, &v40, 16) == 16) && *v40 == 1381253964)
    {
      objc_msgSend_seekToOffset_(v10, v14, *(v40 + 4));
      while (objc_msgSend_readToOwnBuffer_size_(v10, v34, &v40, *" ") == *" ")
      {
        if (*"TocE " != *v40)
        {
          goto LABEL_9;
        }

        v35 = *(v40 + 4);
        v36 = *(v40 + 24);
        entries = self->_entries;
        v38[0] = *(v40 + 12) + *(v40 + 20);
        v38[1] = v36;
        v39 = v35;
        sub_276ADF7C4(entries, &v39);
      }

      v29 = 0;
      v30 = 1;
    }

    else
    {
LABEL_9:
      v29 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v14, 0);
      v30 = 0;
    }
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPDistributableArchive _readEntriesFromToc:error:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableArchive.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 673, 0, "Can't read random-access DFF from a stream that cannot seek");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    v29 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v28, 0);
    v30 = 0;
    v40 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    v31 = v30;
  }

  else
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    v32 = v29;
    *a4 = v29;
  }

  return v30;
}

- (id)_createInputStreamWithOffset:(int64_t)a3 length:(int64_t)a4
{
  if (self->_archiveMemoryRep)
  {
    v7 = objc_alloc(MEMORY[0x277D81120]);
    v10 = objc_msgSend_data(self->_archiveMemoryRep, v8, v9);
    v12 = objc_msgSend_initWithData_offset_length_(v7, v11, v10, a3, a4);
LABEL_7:
    v20 = v12;

    goto LABEL_8;
  }

  if (self->_archiveFileRep)
  {
    v13 = objc_alloc(MEMORY[0x277D81108]);
    v10 = objc_msgSend_path(self->_archiveFileRep, v14, v15);
    v12 = objc_msgSend_initWithPath_offset_length_(v13, v16, v10, a3, a4);
    goto LABEL_7;
  }

  archiveZipEntryRep = self->_archiveZipEntryRep;
  if (archiveZipEntryRep)
  {
    v10 = objc_msgSend_inputStream(archiveZipEntryRep, a2, a3);
    v18 = objc_alloc(MEMORY[0x277D81128]);
    v12 = objc_msgSend_initWithInputStream_initialOffset_(v18, v19, v10, a3);
    goto LABEL_7;
  }

  v22 = MEMORY[0x277D81150];
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDistributableArchive _createInputStreamWithOffset:length:]");
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableArchive.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 780, 0, "TSPDistributableArchive has no data rep.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  v20 = 0;
LABEL_8:

  return v20;
}

@end