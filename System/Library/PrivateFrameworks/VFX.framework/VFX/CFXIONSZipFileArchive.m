@interface CFXIONSZipFileArchive
- (BOOL)writeContentsForEntryName:(id)a3 toFile:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (CFXIONSZipFileArchive)initWithData:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (CFXIONSZipFileArchive)initWithEntryNames:(id)a3 contents:(id)a4 properties:(id)a5 options:(unint64_t)a6;
- (CFXIONSZipFileArchive)initWithEntryNames:(id)a3 dataProvider:(id)a4 options:(unint64_t)a5;
- (CFXIONSZipFileArchive)initWithPath:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)archiveData;
- (id)archiveStream;
- (id)contentsForEntryName:(id)a3;
- (id)propertiesForEntryName:(id)a3;
- (id)streamForEntryName:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CFXIONSZipFileArchive

- (CFXIONSZipFileArchive)initWithPath:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (!a3 || !objc_msgSend_length(a3, a2, a3, a4))
  {
    return 0;
  }

  v23.receiver = self;
  v23.super_class = CFXIONSZipFileArchive;
  v9 = [(CFXIONSZipFileArchive *)&v23 init];
  v13 = v9;
  if (v9)
  {
    *(v9 + 9) = 0;
    *(v9 + 88) = 0u;
    *(v9 + 104) = 0u;
    *(v9 + 15) = 0;
    if ((a4 & 3) > 1)
    {
      if ((a4 & 3) == 2)
      {
        v14 = objc_msgSend_dataWithContentsOfFile_options_error_(MEMORY[0x1E695DEF0], v10, a3, 1, a5);
        goto LABEL_9;
      }

      v17 = sub_1AF1D6724(a3, v10, v11, v12);
      if ((v17 & 0x8000000000000000) == 0)
      {
        v21 = v17;
        *(v13 + 40) = objc_msgSend_copy(a3, v18, v19, v20);
        close(v21);
LABEL_16:
        if ((a4 & 4) != 0)
        {
          *(v13 + 80) |= 8u;
        }

        return v13;
      }
    }

    else
    {
      if ((a4 & 3) == 0)
      {
        v14 = objc_msgSend_dataWithContentsOfFile_options_error_(MEMORY[0x1E695DEF0], v10, a3, 0, a5);
LABEL_9:
        if (!v14)
        {
          goto LABEL_18;
        }

        v13 = objc_msgSend_initWithData_options_error_(v13, v15, v14, a4, a5);
        if (!v13)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v16 = sub_1AF1D6724(a3, v10, v11, v12);
      *(v13 + 32) = v16;
      if ((v16 & 0x8000000000000000) == 0)
      {
        *(v13 + 80) |= 0x10u;
        goto LABEL_16;
      }
    }

LABEL_18:

    return 0;
  }

  return v13;
}

- (CFXIONSZipFileArchive)initWithData:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v5 = a4;
  v96[5] = *MEMORY[0x1E69E9840];
  v94.receiver = self;
  v94.super_class = CFXIONSZipFileArchive;
  v7 = [(CFXIONSZipFileArchive *)&v94 init:a3];
  v11 = v7;
  if (!a3)
  {
    goto LABEL_75;
  }

  if (!v7)
  {
    goto LABEL_75;
  }

  v82 = v5;
  v87 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
  v86 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v12, v13, v14);
  v18 = objc_msgSend_bytes(a3, v15, v16, v17);
  v81 = a3;
  v22 = objc_msgSend_length(a3, v19, v20, v21);
  if (v22 < 0x15)
  {
    goto LABEL_75;
  }

  v24 = v22;
  v25 = 0;
  v26 = 0;
  v27 = -20;
  v28 = 20;
  v29 = v18;
  do
  {
    v30 = *(v29 + v22 - 20);
    if (v30 == 117853008)
    {
      v31 = 0;
      if (v22 >= 0x39)
      {
        v32 = *(v29 + v22 - 12);
        if (v32 <= v22 - 56)
        {
          v33 = v18 + v32;
          if (*(v18 + v32) == 101075792)
          {
            v25 = *(v33 + 24);
            v26 = *(v33 + 48);
            v31 = *(v29 + v22 - 12);
          }

          else
          {
            v31 = 0;
          }
        }
      }
    }

    else if (v30 == 101010256)
    {
      v31 = v22 - v28;
      v25 = *(v29 + v22 - 12);
      v26 = *(v29 + v22 - 4);
    }

    else
    {
      v31 = 0;
      if (v28 >= 0x38 && v30 == 101075792)
      {
        v31 = v22 + v27;
        v25 = *(v29 + v22 + 4);
        v26 = *(v29 + v22 + 28);
      }
    }

    if (v28 > 0x101CE)
    {
      break;
    }

    if (v31)
    {
      break;
    }

    ++v28;
    --v27;
    --v29;
  }

  while (v28 < v22);
  if (!v25)
  {
    goto LABEL_75;
  }

  v80 = v11;
  v83 = 0;
  v34 = 0;
  v84 = v18 + 16;
  v85 = v18 + 8;
  v35 = v26;
  do
  {
    if (v35 < v26)
    {
      break;
    }

    if (v35 >= v24)
    {
      break;
    }

    v36 = v35 + 46;
    if (v35 + 46 <= v26)
    {
      break;
    }

    if (v36 > v24)
    {
      break;
    }

    v37 = v18 + v35;
    if (*v37 != 33639248)
    {
      break;
    }

    v38 = v34;
    v91 = v25;
    v39 = v18;
    v41 = *(v37 + 20);
    v40 = *(v37 + 24);
    v42 = *(v37 + 28);
    v43 = *(v37 + 42);
    v44 = v41 == 0xFFFFFFFFLL || v40 == -1;
    v45 = v44 || v43 == -1;
    v46 = v45;
    v47 = v36 + v42;
    if (v36 + v42 <= v26 || v47 > v24)
    {
      break;
    }

    v48 = 0;
    v88 = *(v37 + 10);
    v49 = *(v37 + 30);
    v89 = *(v37 + 16);
    v90 = *(v37 + 32);
    v92 = v49;
    v93 = v26;
    if (*(v37 + 28))
    {
      if (v26 > v43)
      {
        v50 = objc_alloc(MEMORY[0x1E696AEC0]);
        v48 = objc_msgSend_initWithBytes_length_encoding_(v50, v51, v39 + v36, v42, 4);
        v49 = v92;
        v26 = v93;
        if (!v48)
        {
          v52 = objc_alloc(MEMORY[0x1E696AEC0]);
          v48 = objc_msgSend_initWithBytes_length_encoding_(v52, v53, v39 + v36, v42, 12);
          v49 = v92;
          v26 = v93;
        }
      }
    }

    if (v49 <= 4u || !v46)
    {
      v18 = v39;
LABEL_67:
      v56 = v38;
      goto LABEL_68;
    }

    v55 = v47 + v49;
    v18 = v39;
    if (v47 >= v47 + v49)
    {
      goto LABEL_67;
    }

    v56 = v38;
    if (v55 > v26)
    {
      v57 = v90;
      if (v55 <= v24)
      {
        v58 = v36 + v42;
        do
        {
          v59 = (v18 + v58);
          v60 = *(v18 + v58 + 2);
          v61 = v58 + 4;
          v58 += 4 + v60;
          if (v58 <= v61 || v58 > v55)
          {
            break;
          }

          v63 = *v59;
          if (v60 >= 0x18 && v63 == 1)
          {
            if (v40 == 0xFFFFFFFFLL)
            {
              v40 = *(v18 + v61);
            }

            if (v41 == 0xFFFFFFFFLL)
            {
              v41 = *(v85 + v61);
            }

            if (v43 == 0xFFFFFFFF)
            {
              v43 = *(v84 + v61);
            }
          }
        }

        while (v58 < v55);
      }

      goto LABEL_69;
    }

LABEL_68:
    v57 = v90;
LABEL_69:
    if (v48)
    {
      v95[0] = @"CFXIONSZipFileArchiveCompressionType";
      v65 = v48;
      v96[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v25, v88, v23);
      v95[1] = @"CFXIONSZipFileArchiveHeaderOffset";
      v96[1] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v66, v43, v67);
      v95[2] = @"CFXIONSZipFileArchiveCRC";
      v96[2] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v68, v89, v69);
      v95[3] = @"CFXIONSZipFileArchiveCompressedLength";
      v96[3] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v70, v41, v71);
      v95[4] = @"CFXIONSZipFileArchiveUncompressedLength";
      v96[4] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v72, v40, v73);
      v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v74, v96, v95, 5);
      objc_msgSend_addObject_(v87, v76, v65, v77);
      objc_msgSend_setObject_forKey_(v86, v78, v75, v65);
      v49 = v92;
      v26 = v93;
      v83 = 1;
    }

    v35 = v47 + v49 + v57;
    v34 = v56 + 1;
    v25 = v91;
  }

  while (v34 != v91);
  v11 = v80;
  if (v83)
  {
    v80->_data = v81;
    v80->_names = v87;
    v80->_properties = v86;
    if ((v82 & 4) != 0)
    {
      *&v80->_zFlags |= 8u;
    }

    return v11;
  }

LABEL_75:
  if (v11)
  {

    return 0;
  }

  return v11;
}

- (CFXIONSZipFileArchive)initWithEntryNames:(id)a3 contents:(id)a4 properties:(id)a5 options:(unint64_t)a6
{
  v10 = objc_msgSend_count(a3, a2, a3, a4, a5, a6);
  v29.receiver = self;
  v29.super_class = CFXIONSZipFileArchive;
  v14 = [(CFXIONSZipFileArchive *)&v29 init];
  if (v10)
  {
    v15 = 1;
    do
    {
      v16 = objc_msgSend_objectAtIndex_(a3, v11, v15 - 1, v13);
      v19 = objc_msgSend_objectForKey_(a4, v17, v16, v18);
      v20 = v19 != 0;
      if (v19)
      {
        v21 = v15 >= v10;
      }

      else
      {
        v21 = 1;
      }

      ++v15;
    }

    while (!v21);
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 1;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  if (a4 && v20 && v14 && v10)
  {
    v14->_contents = objc_msgSend_copy(a4, v11, v12, v13);
    v14->_names = objc_msgSend_copy(a3, v22, v23, v24);
    v14->_properties = objc_msgSend_copy(a5, v25, v26, v27);
    *&v14->_zFlags |= 8u;
    return v14;
  }

LABEL_16:
  if (v14)
  {

    return 0;
  }

  return v14;
}

- (CFXIONSZipFileArchive)initWithEntryNames:(id)a3 dataProvider:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v14.receiver = self;
  v14.super_class = CFXIONSZipFileArchive;
  v8 = [(CFXIONSZipFileArchive *)&v14 init];
  if (objc_opt_respondsToSelector())
  {
    *(v8 + 20) |= 1u;
  }

  if (objc_opt_respondsToSelector())
  {
    *(v8 + 20) |= 2u;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = *(v8 + 20) | 4;
    *(v8 + 20) = v12;
  }

  else
  {
    if (!v8)
    {
      return v8;
    }

    v12 = *(v8 + 20);
  }

  if ((v12 & 3) != 0)
  {
    *(v8 + 3) = a4;
    *(v8 + 6) = objc_msgSend_copy(a3, v9, v10, v11);
    if ((v5 & 4) != 0)
    {
      *(v8 + 20) |= 8u;
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = CFXIONSZipFileArchive;
  [(CFXIONSZipFileArchive *)&v5 dealloc];
}

- (id)contentsForEntryName:(id)a3
{
  contents = self->_contents;
  if (contents)
  {
    v7 = objc_msgSend_objectForKey_(contents, a2, a3, v3);
LABEL_3:
    v9 = v7;
    goto LABEL_4;
  }

  if (self->_data)
  {
    v11 = objc_msgSend_objectForKey_(self->_properties, a2, a3, v3);
    if (v11)
    {
      v14 = v11;
      v15 = objc_msgSend_objectForKey_(v11, v12, @"CFXIONSZipFileArchiveHeaderOffset", v13);
      v19 = objc_msgSend_unsignedIntegerValue(v15, v16, v17, v18);
      v22 = objc_msgSend_objectForKey_(v14, v20, @"CFXIONSZipFileArchiveCompressionType", v21);
      v26 = objc_msgSend_unsignedIntegerValue(v22, v23, v24, v25);
      v29 = objc_msgSend_objectForKey_(v14, v27, @"CFXIONSZipFileArchiveCRC", v28);
      v33 = objc_msgSend_unsignedIntegerValue(v29, v30, v31, v32);
      v36 = objc_msgSend_objectForKey_(v14, v34, @"CFXIONSZipFileArchiveCompressedLength", v35);
      v40 = objc_msgSend_unsignedIntegerValue(v36, v37, v38, v39);
      v43 = objc_msgSend_objectForKey_(v14, v41, @"CFXIONSZipFileArchiveUncompressedLength", v42);
      v47 = objc_msgSend_unsignedIntegerValue(v43, v44, v45, v46);
      data = self->_data;
      v52 = objc_msgSend_bytes(data, v49, v50, v51);
      v56 = objc_msgSend_length(data, v53, v54, v55);
      if (v56 > v19 && v19 <= 0xFFFFFFFFFFFFFFE1)
      {
        v9 = 0;
        if (!v47 || !v40 || v19 + 30 >= v56)
        {
          return v9;
        }

        v59 = (v52 + v19);
        if (*(v52 + v19) == 67324752 && v26 == v59[4])
        {
          v60 = v19 + 30 + v59[13] + v59[14];
          if (v60 < v56)
          {
            v9 = 0;
            v61 = v60 + v40;
            if (v60 + v40 >= v56 || v61 <= v60 || v61 <= v19)
            {
              return v9;
            }

            if (v26 == 8)
            {
              v70 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v57, v47, v58);
              v74 = objc_msgSend_mutableBytes(v70, v71, v72, v73);
              *&v78.avail_in = 0u;
              memset(&v78.total_out, 0, 72);
              v78.next_in = (v52 + v60);
              v78.avail_in = v40;
              v78.next_out = v74;
              *&v78.avail_out = v47;
              if (v70 && (v75 = v74, !inflateInit2_(&v78, -15, "1.2.12", 112)) && (v76 = inflate(&v78, 4), v77 = inflateEnd(&v78), v76 == 1))
              {
                v9 = 0;
                if (!v77 && v78.total_out == v47)
                {
                  if (v33 == sub_1AF1D79F0(v75, v47))
                  {
                    v9 = v70;
                  }

                  else
                  {
                    v9 = 0;
                  }
                }
              }

              else
              {
                v9 = 0;
              }

LABEL_4:
              if (!v9)
              {
                return v9;
              }

              goto LABEL_5;
            }

            if (!v26 && v33 == sub_1AF1D79F0((v52 + v60), v40))
            {
              v7 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v62, v52 + v60, v40);
              goto LABEL_3;
            }
          }
        }
      }
    }

    return 0;
  }

  if (!objc_msgSend_containsObject_(self->_names, a2, a3, v3))
  {
    return 0;
  }

  zFlags = self->_zFlags;
  if ((*&zFlags & 1) == 0)
  {
    if ((*&zFlags & 2) != 0)
    {
      objc_msgSend_archive_streamForEntryName_(self->_provider, v63, self, a3);
    }

    else if ((*&zFlags & 0x10) == 0)
    {
      path = self->_path;
      if (path)
      {
        v68 = sub_1AF1D6724(path, v63, v64, v65);
        if ((v68 & 0x8000000000000000) == 0)
        {
          close(v68);
        }
      }
    }

    return 0;
  }

  v9 = objc_msgSend_objectForKey_(self->_cachedContents, v63, a3, v65);
  if (!v9)
  {
    v7 = objc_msgSend_archive_contentsForEntryName_(self->_provider, v8, self, a3);
    goto LABEL_3;
  }

LABEL_5:
  if ((*&self->_zFlags & 8) == 0)
  {
    cachedContents = self->_cachedContents;
    if (!cachedContents)
    {
      cachedContents = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_cachedContents = cachedContents;
    }

    objc_msgSend_setObject_forKey_(cachedContents, v8, v9, a3, v78.next_in, *&v78.avail_in, *&v78.next_out);
  }

  return v9;
}

- (id)streamForEntryName:(id)a3
{
  contents = self->_contents;
  if (contents)
  {
    v7 = objc_msgSend_objectForKey_(contents, a2, a3, v3);
    if (v7)
    {
      v9 = v7;
      v10 = MEMORY[0x1E695DF48];
LABEL_4:

      return MEMORY[0x1EEE66B58](v10, sel_inputStreamWithData_, v9, v8);
    }

    return 0;
  }

  if (self->_data || !objc_msgSend_containsObject_(self->_names, a2, a3, v3))
  {
    return 0;
  }

  zFlags = self->_zFlags;
  if (*&zFlags)
  {
    v18 = objc_msgSend_objectForKey_(self->_cachedContents, v11, a3, v13);
    if (!v18)
    {
      v20 = objc_msgSend_archive_contentsForEntryName_(self->_provider, v17, self, a3);
      if (!v20)
      {
        return 0;
      }

      v18 = v20;
      if ((*&self->_zFlags & 8) == 0)
      {
        cachedContents = self->_cachedContents;
        if (!cachedContents)
        {
          cachedContents = objc_alloc_init(MEMORY[0x1E695DF90]);
          self->_cachedContents = cachedContents;
        }

        objc_msgSend_setObject_forKey_(cachedContents, v21, v18, a3);
      }
    }

    v10 = MEMORY[0x1E695DF48];
    v9 = v18;
    goto LABEL_4;
  }

  if ((*&zFlags & 2) == 0)
  {
    if ((*&zFlags & 0x10) == 0)
    {
      path = self->_path;
      if (path)
      {
        v16 = sub_1AF1D6724(path, v11, v12, v13);
        if ((v16 & 0x8000000000000000) == 0)
        {
          close(v16);
        }
      }
    }

    return 0;
  }

  provider = self->_provider;

  return objc_msgSend_archive_streamForEntryName_(provider, v11, self, a3);
}

- (BOOL)writeContentsForEntryName:(id)a3 toFile:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v8 = objc_msgSend_contentsForEntryName_(self, a2, a3, a4);
  if (v8)
  {

    LOBYTE(v8) = MEMORY[0x1EEE66B58](v8, sel_writeToFile_options_error_, a4, a5);
  }

  return v8;
}

- (id)propertiesForEntryName:(id)a3
{
  result = objc_msgSend_objectForKey_(self->_properties, a2, a3, v3);
  if (!result)
  {
    if (objc_msgSend_containsObject_(self->_names, v7, a3, v8))
    {
      if ((*&self->_zFlags & 4) == 0 || (result = objc_msgSend_archive_propertiesForEntryName_(self->_provider, v9, self, a3)) == 0)
      {
        v12 = MEMORY[0x1E695DF20];

        return objc_msgSend_dictionary(v12, v9, v10, v11);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)archiveData
{
  v118 = objc_msgSend_data(MEMORY[0x1E695DF88], a2, v2, v3);
  v119 = objc_msgSend_data(MEMORY[0x1E695DF88], v5, v6, v7);
  v11 = objc_msgSend_count(self->_names, v8, v9, v10);
  v14 = v11;
  if (v11)
  {
    v15 = 0;
    v116 = self;
    v117 = v11;
    do
    {
      v16 = objc_msgSend_objectAtIndex_(self->_names, v12, v15, v13, v116, v117);
      v20 = objc_msgSend_UTF8String(v16, v17, v18, v19);
      v21 = strlen(v20);
      v24 = objc_msgSend_contentsForEntryName_(self, v22, v16, v23);
      v28 = objc_msgSend_length(v24, v25, v26, v27);
      if (v21)
      {
        v30 = v24 == 0;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v121 = v28;
        v31 = objc_msgSend_bytes(v24, v12, v29, v13);
        v35 = objc_msgSend_length(v24, v32, v33, v34);
        v36 = crc32(0, 0, 0);
        v122 = crc32(v36, v31, v35);
        v40 = objc_msgSend_bytes(v24, v37, v38, v39);
        v44 = objc_msgSend_length(v24, v41, v42, v43);
        if (v44)
        {
          for (i = 0; i < v44; ++i)
          {
            v49 = *(v40 + i);
            v51 = v49 - 14 < 0xFFFFFFF9 && (v49 & 0x1E) != 26;
            if (v49 <= 0x1F)
            {
              v52 = v51;
            }

            else
            {
              v52 = 0;
            }

            if (v52)
            {
              break;
            }
          }

          v53 = v52 ^ 1;
        }

        else
        {
          v53 = 1;
        }

        v120 = v53;
        v54 = objc_msgSend_bytes(v24, v45, v46, v47);
        v58 = objc_msgSend_length(v24, v55, v56, v57);
        v62 = 0;
        if (v54)
        {
          v63 = v58;
          if (v58)
          {
            v64 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v59, v58 - 1, v61);
            memset(&strm.avail_in, 0, 104);
            strm.next_in = v54;
            strm.avail_in = v63;
            strm.next_out = objc_msgSend_mutableBytes(v64, v65, v66, v67);
            strm.avail_out = v63 - 1;
            if (v64 && !deflateInit2_(&strm, 6, 8, -15, 8, 0, "1.2.12", 112) && (v68 = deflate(&strm, 4), v69 = deflateEnd(&strm), v68 == 1))
            {
              v62 = 0;
              if (!v69 && v63 == strm.total_in)
              {
                objc_msgSend_setLength_(v64, v59, strm.total_out, v61);
                v62 = v64;
              }
            }

            else
            {
              v62 = 0;
            }
          }
        }

        v70 = 8 * (v62 != 0);
        if (v62)
        {
          v24 = v62;
        }

        v71 = objc_msgSend_length(v24, v59, v60, v61);
        v74 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v72, v21 + 30, v73);
        objc_msgSend_replaceBytesInRange_withBytes_(v74, v75, 0, 30, &unk_1AFE21E40);
        objc_msgSend_replaceBytesInRange_withBytes_(v74, v76, 30, v21, v20);
        v80 = objc_msgSend_mutableBytes(v74, v77, v78, v79);
        *(v80 + 4) = 20;
        *(v80 + 8) = v70;
        *(v80 + 10) = 0;
        *(v80 + 14) = v122;
        *(v80 + 18) = v71;
        *(v80 + 22) = v121;
        *(v80 + 26) = v21;
        v83 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v81, v21 + 46, v82);
        objc_msgSend_replaceBytesInRange_withBytes_(v83, v84, 0, 46, &unk_1AFE21E5E);
        objc_msgSend_replaceBytesInRange_withBytes_(v83, v85, 46, v21, v20);
        v89 = objc_msgSend_mutableBytes(v83, v86, v87, v88);
        *(v89 + 6) = 20;
        *(v89 + 10) = v70;
        *(v89 + 12) = 0;
        *(v89 + 16) = v122;
        *(v89 + 20) = v71;
        *(v89 + 24) = v121;
        *(v89 + 28) = v21;
        *(v89 + 36) = v120;
        *(v89 + 42) = objc_msgSend_length(v119, v90, v91, v92);
        objc_msgSend_appendData_(v119, v93, v74, v94);
        objc_msgSend_appendData_(v119, v95, v24, v96);
        objc_msgSend_appendData_(v118, v97, v83, v98);
        self = v116;
        v14 = v117;
      }

      ++v15;
    }

    while (v15 != v14);
  }

  v99 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v12, 22, v13);
  objc_msgSend_replaceBytesInRange_withBytes_(v99, v100, 0, 22, &unk_1AFE21E8C);
  v104 = objc_msgSend_mutableBytes(v99, v101, v102, v103);
  *(v104 + 8) = v14;
  *(v104 + 10) = v14;
  *(v104 + 12) = objc_msgSend_length(v118, v105, v106, v107);
  *(v104 + 16) = objc_msgSend_length(v119, v108, v109, v110);
  objc_msgSend_appendData_(v119, v111, v118, v112);
  objc_msgSend_appendData_(v119, v113, v99, v114);
  return v119;
}

- (id)archiveStream
{
  result = objc_msgSend_archiveData(self, a2, v2, v3);
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x1E695DF48];

    return MEMORY[0x1EEE66B58](v7, sel_inputStreamWithData_, v6, v5);
  }

  return result;
}

- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v7 = objc_msgSend_archiveData(self, a2, a3, a4);
  if (v7)
  {

    LOBYTE(v7) = MEMORY[0x1EEE66B58](v7, sel_writeToFile_options_error_, a3, a4);
  }

  return v7;
}

- (void)invalidate
{
  contents = self->_contents;
  if (contents)
  {

    self->_contents = 0;
  }

  data = self->_data;
  if (data)
  {

    self->_data = 0;
  }

  self->_provider = 0;
  zFlags = self->_zFlags;
  self->_zFlags = (*&zFlags & 0xFFFFFFF8);
  if ((*&zFlags & 0x10) != 0)
  {
    close(self->_desc);
    *&self->_zFlags &= ~0x10u;
  }

  path = self->_path;
  if (path)
  {

    self->_path = 0;
  }

  names = self->_names;
  if (names)
  {

    self->_names = 0;
  }

  properties = self->_properties;
  if (properties)
  {

    self->_properties = 0;
  }

  cachedContents = self->_cachedContents;
  if (cachedContents)
  {

    self->_cachedContents = 0;
  }
}

@end