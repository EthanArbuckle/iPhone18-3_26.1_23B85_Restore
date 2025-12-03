@interface VFXNSZipFileArchive
- (BOOL)writeContentsForEntryName:(id)name toFile:(id)file options:(unint64_t)options error:(id *)error;
- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error;
- (VFXNSZipFileArchive)initWithData:(id)data options:(unint64_t)options error:(id *)error;
- (VFXNSZipFileArchive)initWithEntryNames:(id)names contents:(id)contents properties:(id)properties options:(unint64_t)options;
- (VFXNSZipFileArchive)initWithEntryNames:(id)names dataProvider:(id)provider options:(unint64_t)options;
- (VFXNSZipFileArchive)initWithPath:(id)path options:(unint64_t)options error:(id *)error;
- (id)archiveData;
- (id)archiveStream;
- (id)contentsForEntryName:(id)name;
- (id)propertiesForEntryName:(id)name;
- (id)streamForEntryName:(id)name;
- (void)dealloc;
- (void)invalidate;
@end

@implementation VFXNSZipFileArchive

- (VFXNSZipFileArchive)initWithPath:(id)path options:(unint64_t)options error:(id *)error
{
  v18.receiver = self;
  v18.super_class = VFXNSZipFileArchive;
  v8 = [(VFXNSZipFileArchive *)&v18 init];
  v12 = v8;
  if (!path || !v8)
  {
    if (!v8)
    {
      return v12;
    }

    goto LABEL_8;
  }

  if (!objc_msgSend_length(path, v9, v10, v11))
  {
    goto LABEL_8;
  }

  if ((options & 3) <= 1)
  {
    if ((options & 3) != 0)
    {
      v15 = sub_1AF1D6724(path, v9, v10, v11);
      *(v12 + 32) = v15;
      if ((v15 & 0x8000000000000000) == 0)
      {
        *(v12 + 80) |= 0x10u;
        goto LABEL_17;
      }

LABEL_8:
      objc_msgSend_dealloc(v12, v9, v10, v11);
      return 0;
    }

    v13 = objc_msgSend_dataWithContentsOfFile_options_error_(MEMORY[0x1E695DEF0], v9, path, 0, error);
LABEL_12:
    if (v13)
    {
      v12 = objc_msgSend_initWithData_options_error_(v12, v9, v13, options, error);
      if (!v12)
      {
        return v12;
      }

LABEL_17:
      if ((options & 4) != 0)
      {
        goto LABEL_21;
      }

      return v12;
    }

    goto LABEL_8;
  }

  if ((options & 3) == 2)
  {
    v13 = objc_msgSend_dataWithContentsOfFile_options_error_(MEMORY[0x1E695DEF0], v9, path, 1, error);
    goto LABEL_12;
  }

  v16 = sub_1AF1D6724(path, v9, v10, v11);
  if (v16 < 0)
  {
    goto LABEL_8;
  }

  v17 = v16;
  *(v12 + 40) = objc_msgSend_copy(path, v9, v10, v11);
  close(v17);
  if ((options & 4) != 0)
  {
LABEL_21:
    *(v12 + 80) |= 8u;
  }

  return v12;
}

- (VFXNSZipFileArchive)initWithData:(id)data options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v95.receiver = self;
  v95.super_class = VFXNSZipFileArchive;
  v7 = [(VFXNSZipFileArchive *)&v95 init:data];
  v11 = v7;
  if (!data || !v7)
  {
    goto LABEL_73;
  }

  v85 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
  v84 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v12, v13, v14);
  v18 = objc_msgSend_bytes(data, v15, v16, v17);
  v22 = objc_msgSend_length(data, v19, v20, v21);
  if (v22 < 0x15)
  {
    goto LABEL_74;
  }

  v23 = v22;
  v9 = 0;
  v24 = 0;
  v25 = -20;
  v26 = 20;
  v27 = v18;
  v8 = v18;
  do
  {
    v28 = *(v27 + v22 - 20);
    if (v28 == 117853008)
    {
      v29 = 0;
      if (v22 >= 0x39)
      {
        v30 = *(v27 + v22 - 12);
        if (v30 <= v22 - 56)
        {
          v31 = v18 + v30;
          if (*(v18 + v30) == 101075792)
          {
            v9 = *(v31 + 24);
            v24 = *(v31 + 48);
            v29 = *(v27 + v22 - 12);
          }

          else
          {
            v29 = 0;
          }
        }
      }
    }

    else if (v28 == 101010256)
    {
      v29 = v22 - v26;
      v9 = *(v27 + v22 - 12);
      v24 = *(v27 + v22 - 4);
    }

    else
    {
      v29 = 0;
      if (v26 >= 0x38 && v28 == 101075792)
      {
        v29 = v22 + v25;
        v9 = *(v27 + v22 + 4);
        v24 = *(v27 + v22 + 28);
      }
    }

    if (v26 > 0x101CE)
    {
      break;
    }

    if (v29)
    {
      break;
    }

    ++v26;
    --v25;
    --v27;
  }

  while (v26 < v22);
  if (!v9)
  {
    goto LABEL_73;
  }

  dataCopy = data;
  v80 = optionsCopy;
  v86 = 0;
  v32 = 0;
  v83 = v18 + 8;
  v81 = v11;
  v82 = v18 + 16;
  v33 = v24;
  v94 = v18;
  do
  {
    if (v33 < v24)
    {
      break;
    }

    if (v33 >= v23)
    {
      break;
    }

    v34 = v33 + 46;
    if (v33 + 46 <= v24)
    {
      break;
    }

    if (v34 > v23)
    {
      break;
    }

    v35 = &v8[v33];
    if (*v35 != 33639248)
    {
      break;
    }

    v92 = v9;
    v37 = *(v35 + 5);
    v36 = *(v35 + 6);
    v38 = *(v35 + 14);
    v39 = *(v35 + 42);
    v40 = v37 == 0xFFFFFFFFLL || v36 == -1;
    v41 = v40 || v39 == -1;
    v42 = v41;
    v43 = v34 + v38;
    if (v34 + v38 <= v24 || v43 > v23)
    {
      break;
    }

    v44 = 0;
    v88 = *(v35 + 5);
    v45 = *(v35 + 15);
    v90 = *(v35 + 4);
    v91 = *(v35 + 16);
    v93 = v45;
    if (*(v35 + 14))
    {
      if (v24 > v39)
      {
        v46 = objc_alloc(MEMORY[0x1E696AEC0]);
        v44 = objc_msgSend_initWithBytes_length_encoding_(v46, v47, &v94[v34], v38, 4);
        v45 = v93;
        if (!v44)
        {
          v48 = objc_alloc(MEMORY[0x1E696AEC0]);
          v44 = objc_msgSend_initWithBytes_length_encoding_(v48, v49, &v94[v34], v38, 12);
          v45 = v93;
        }
      }
    }

    if (v45 > 4u && v42)
    {
      v51 = v43 + v45;
      v8 = v94;
      if (v43 < v43 + v45 && v51 > v24 && v51 <= v23)
      {
        v52 = v34 + v38;
        do
        {
          v53 = &v94[v52];
          v54 = *&v94[v52 + 2];
          v55 = v52 + 4;
          v52 += 4 + v54;
          if (v52 <= v55 || v52 > v51)
          {
            break;
          }

          v57 = *v53;
          if (v54 >= 0x18 && v57 == 1)
          {
            if (v36 == 0xFFFFFFFFLL)
            {
              v36 = *&v94[v55];
            }

            if (v37 == 0xFFFFFFFFLL)
            {
              v37 = *(v83 + v55);
            }

            if (v39 == 0xFFFFFFFF)
            {
              v39 = *(v82 + v55);
            }
          }
        }

        while (v52 < v51);
      }
    }

    else
    {
      v8 = v94;
    }

    if (v44)
    {
      v87 = MEMORY[0x1E695DF20];
      v59 = v44;
      v89 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v8, v88, v10);
      v62 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v60, v39, v61);
      v65 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v63, v90, v64);
      v68 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v66, v37, v67);
      v71 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v69, v36, v70);
      v74 = objc_msgSend_dictionaryWithObjectsAndKeys_(v87, v72, v89, v73, @"NSZipFileArchiveCompressionType", v62, @"NSZipFileArchiveHeaderOffset", v65, @"NSZipFileArchiveCRC", v68, @"NSZipFileArchiveCompressedLength", v71, @"NSZipFileArchiveUncompressedLength", 0);
      objc_msgSend_addObject_(v85, v75, v59, v76);
      objc_msgSend_setObject_forKey_(v84, v77, v74, v59);
      v45 = v93;
      v8 = v94;
      v86 = 1;
    }

    v9 = v92;
    v33 = v43 + v45 + v91;
    ++v32;
  }

  while (v32 != v92);
  v11 = v81;
  if ((v86 & 1) == 0)
  {
LABEL_73:
    if (!v11)
    {
      return v11;
    }

LABEL_74:
    objc_msgSend_dealloc(v11, v8, v9, v10);
    return 0;
  }

  v81->_data = dataCopy;
  v81->_names = v85;
  v81->_properties = v84;
  if ((v80 & 4) != 0)
  {
    *&v81->_zFlags |= 8u;
  }

  return v11;
}

- (VFXNSZipFileArchive)initWithEntryNames:(id)names contents:(id)contents properties:(id)properties options:(unint64_t)options
{
  v10 = objc_msgSend_count(names, a2, names, contents, properties, options);
  v29.receiver = self;
  v29.super_class = VFXNSZipFileArchive;
  v14 = [(VFXNSZipFileArchive *)&v29 init];
  if (v10)
  {
    v15 = 1;
    do
    {
      v16 = objc_msgSend_objectAtIndex_(names, v11, v15 - 1, v13);
      v19 = objc_msgSend_objectForKey_(contents, v17, v16, v18);
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
    if (!names)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 1;
    if (!names)
    {
      goto LABEL_16;
    }
  }

  if (contents && v20 && v14 && v10)
  {
    v14->_contents = objc_msgSend_copy(contents, v11, v12, v13);
    v14->_names = objc_msgSend_copy(names, v22, v23, v24);
    v14->_properties = objc_msgSend_copy(properties, v25, v26, v27);
    *&v14->_zFlags |= 8u;
    return v14;
  }

LABEL_16:
  if (v14)
  {
    objc_msgSend_dealloc(v14, v11, v12, v13);
    return 0;
  }

  return v14;
}

- (VFXNSZipFileArchive)initWithEntryNames:(id)names dataProvider:(id)provider options:(unint64_t)options
{
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = VFXNSZipFileArchive;
  v8 = [(VFXNSZipFileArchive *)&v14 init];
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
    *(v8 + 3) = provider;
    *(v8 + 6) = objc_msgSend_copy(names, v9, v10, v11);
    if ((optionsCopy & 4) != 0)
    {
      *(v8 + 20) |= 8u;
    }
  }

  else
  {
    objc_msgSend_dealloc(v8, v9, v10, v11);
    return 0;
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = VFXNSZipFileArchive;
  [(VFXNSZipFileArchive *)&v5 dealloc];
}

- (id)contentsForEntryName:(id)name
{
  contents = self->_contents;
  if (contents)
  {
    v7 = objc_msgSend_objectForKey_(contents, a2, name, v3);
LABEL_3:
    v9 = v7;
    goto LABEL_4;
  }

  if (self->_data)
  {
    v11 = objc_msgSend_objectForKey_(self->_properties, a2, name, v3);
    if (v11)
    {
      v14 = v11;
      v15 = objc_msgSend_objectForKey_(v11, v12, @"NSZipFileArchiveHeaderOffset", v13);
      v19 = objc_msgSend_unsignedIntegerValue(v15, v16, v17, v18);
      v22 = objc_msgSend_objectForKey_(v14, v20, @"NSZipFileArchiveCompressionType", v21);
      v26 = objc_msgSend_unsignedIntegerValue(v22, v23, v24, v25);
      v29 = objc_msgSend_objectForKey_(v14, v27, @"NSZipFileArchiveCRC", v28);
      v33 = objc_msgSend_unsignedIntegerValue(v29, v30, v31, v32);
      v36 = objc_msgSend_objectForKey_(v14, v34, @"NSZipFileArchiveCompressedLength", v35);
      v40 = objc_msgSend_unsignedIntegerValue(v36, v37, v38, v39);
      v43 = objc_msgSend_objectForKey_(v14, v41, @"NSZipFileArchiveUncompressedLength", v42);
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
                  if (v33 == sub_1AF3782CC(v75, v47))
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

            if (!v26 && v33 == sub_1AF3782CC((v52 + v60), v40))
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

  if (!objc_msgSend_containsObject_(self->_names, a2, name, v3))
  {
    return 0;
  }

  zFlags = self->_zFlags;
  if ((*&zFlags & 1) == 0)
  {
    if ((*&zFlags & 2) != 0)
    {
      objc_msgSend_archive_streamForEntryName_(self->_provider, v63, self, name);
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

  v9 = objc_msgSend_objectForKey_(self->_cachedContents, v63, name, v65);
  if (!v9)
  {
    v7 = objc_msgSend_archive_contentsForEntryName_(self->_provider, v8, self, name);
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

    objc_msgSend_setObject_forKey_(cachedContents, v8, v9, name, v78.next_in, *&v78.avail_in, *&v78.next_out);
  }

  return v9;
}

- (id)streamForEntryName:(id)name
{
  contents = self->_contents;
  if (contents)
  {
    v7 = objc_msgSend_objectForKey_(contents, a2, name, v3);
    if (v7)
    {
      v9 = v7;
      v10 = MEMORY[0x1E695DF48];
LABEL_4:

      return MEMORY[0x1EEE66B58](v10, sel_inputStreamWithData_, v9, v8);
    }

    return 0;
  }

  if (self->_data || !objc_msgSend_containsObject_(self->_names, a2, name, v3))
  {
    return 0;
  }

  zFlags = self->_zFlags;
  if (*&zFlags)
  {
    v18 = objc_msgSend_objectForKey_(self->_cachedContents, v11, name, v13);
    if (!v18)
    {
      v20 = objc_msgSend_archive_contentsForEntryName_(self->_provider, v17, self, name);
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

        objc_msgSend_setObject_forKey_(cachedContents, v21, v18, name);
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

  return objc_msgSend_archive_streamForEntryName_(provider, v11, self, name);
}

- (BOOL)writeContentsForEntryName:(id)name toFile:(id)file options:(unint64_t)options error:(id *)error
{
  v8 = objc_msgSend_contentsForEntryName_(self, a2, name, file);
  if (v8)
  {

    LOBYTE(v8) = MEMORY[0x1EEE66B58](v8, sel_writeToFile_options_error_, file, options);
  }

  return v8;
}

- (id)propertiesForEntryName:(id)name
{
  result = objc_msgSend_objectForKey_(self->_properties, a2, name, v3);
  if (!result)
  {
    if (objc_msgSend_containsObject_(self->_names, v7, name, v8))
    {
      if ((*&self->_zFlags & 4) == 0 || (result = objc_msgSend_archive_propertiesForEntryName_(self->_provider, v9, self, name)) == 0)
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
  v154 = objc_msgSend_data(MEMORY[0x1E695DF88], a2, v2, v3);
  v155 = objc_msgSend_data(MEMORY[0x1E695DF88], v5, v6, v7);
  selfCopy = self;
  v11 = objc_msgSend_count(self->_names, v8, v9, v10);
  v12 = objc_alloc(MEMORY[0x1E695DEE8]);
  v15 = objc_msgSend_initWithCalendarIdentifier_(v12, v13, *MEMORY[0x1E695D850], v14);
  v19 = objc_msgSend_date(MEMORY[0x1E695DF00], v16, v17, v18);
  v21 = objc_msgSend_components_fromDate_(v15, v20, 252, v19);
  v25 = objc_msgSend_year(v21, v22, v23, v24);
  v29 = objc_msgSend_month(v21, v26, v27, v28);
  v33 = objc_msgSend_day(v21, v30, v31, v32);
  v37 = objc_msgSend_hour(v21, v34, v35, v36);
  v41 = objc_msgSend_minute(v21, v38, v39, v40);
  v45 = objc_msgSend_second(v21, v42, v43, v44);
  v48 = (v25 << 9) - 30720;
  if (v25 < 0x7BC)
  {
    v48 = 0;
  }

  if (v11)
  {
    v49 = 0;
    v152 = (32 * v41) | (v37 << 11) | (v45 >> 1);
    v153 = v11;
    v50 = v33 | (32 * v29) | v48;
    do
    {
      v51 = objc_msgSend_objectAtIndex_(selfCopy->_names, v46, v49, v47);
      v55 = objc_msgSend_UTF8String(v51, v52, v53, v54);
      v56 = strlen(v55);
      v59 = objc_msgSend_contentsForEntryName_(selfCopy, v57, v51, v58);
      v63 = objc_msgSend_length(v59, v60, v61, v62);
      if (v56)
      {
        v65 = v59 == 0;
      }

      else
      {
        v65 = 1;
      }

      if (!v65)
      {
        v159 = v63;
        v66 = objc_msgSend_bytes(v59, v46, v64, v47);
        v70 = objc_msgSend_length(v59, v67, v68, v69);
        v71 = crc32(0, 0, 0);
        v158 = crc32(v71, v66, v70);
        v75 = objc_msgSend_bytes(v59, v72, v73, v74);
        v79 = objc_msgSend_length(v59, v76, v77, v78);
        if (v79)
        {
          for (i = 0; i < v79; ++i)
          {
            v84 = *(v75 + i);
            v86 = v84 - 14 < 0xFFFFFFF9 && (v84 & 0x1E) != 26;
            if (v84 <= 0x1F)
            {
              v87 = v86;
            }

            else
            {
              v87 = 0;
            }

            if (v87)
            {
              break;
            }
          }

          v88 = v87 ^ 1;
        }

        else
        {
          v88 = 1;
        }

        v157 = v88;
        v89 = objc_msgSend_bytes(v59, v80, v81, v82);
        v93 = objc_msgSend_length(v59, v90, v91, v92);
        v97 = 0;
        if (v89)
        {
          v98 = v93;
          if (v93)
          {
            v99 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v94, v93 - 1, v96);
            memset(&strm.avail_in, 0, 104);
            strm.next_in = v89;
            strm.avail_in = v98;
            strm.next_out = objc_msgSend_mutableBytes(v99, v100, v101, v102);
            strm.avail_out = v98 - 1;
            if (v99 && !deflateInit2_(&strm, 6, 8, -15, 8, 0, "1.2.12", 112) && (v103 = deflate(&strm, 4), v104 = deflateEnd(&strm), v103 == 1))
            {
              v97 = 0;
              if (!v104 && v98 == strm.total_in)
              {
                objc_msgSend_setLength_(v99, v94, strm.total_out, v96);
                v97 = v99;
              }
            }

            else
            {
              v97 = 0;
            }
          }
        }

        v105 = 8 * (v97 != 0);
        if (v97)
        {
          v106 = v97;
        }

        else
        {
          v106 = v59;
        }

        v156 = v106;
        v107 = objc_msgSend_length(v106, v94, v95, v96);
        v110 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v108, v56 + 30, v109);
        objc_msgSend_replaceBytesInRange_withBytes_(v110, v111, 0, 30, &unk_1AFE47D90);
        objc_msgSend_replaceBytesInRange_withBytes_(v110, v112, 30, v56, v55);
        v116 = objc_msgSend_mutableBytes(v110, v113, v114, v115);
        *(v116 + 4) = 20;
        *(v116 + 8) = v105;
        *(v116 + 10) = v152;
        *(v116 + 12) = v50;
        *(v116 + 14) = v158;
        *(v116 + 18) = v107;
        *(v116 + 22) = v159;
        *(v116 + 26) = v56;
        v119 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v117, v56 + 46, v118);
        objc_msgSend_replaceBytesInRange_withBytes_(v119, v120, 0, 46, &unk_1AFE47DAE);
        objc_msgSend_replaceBytesInRange_withBytes_(v119, v121, 46, v56, v55);
        v125 = objc_msgSend_mutableBytes(v119, v122, v123, v124);
        *(v125 + 6) = 20;
        *(v125 + 10) = v105;
        *(v125 + 12) = v152;
        *(v125 + 14) = v50;
        *(v125 + 16) = v158;
        *(v125 + 20) = v107;
        *(v125 + 24) = v159;
        *(v125 + 28) = v56;
        *(v125 + 36) = v157;
        *(v125 + 42) = objc_msgSend_length(v155, v126, v127, v128);
        objc_msgSend_appendData_(v155, v129, v110, v130);
        objc_msgSend_appendData_(v155, v131, v156, v132);
        objc_msgSend_appendData_(v154, v133, v119, v134);
        v11 = v153;
      }

      ++v49;
    }

    while (v49 != v11);
  }

  v135 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v46, 22, v47);
  objc_msgSend_replaceBytesInRange_withBytes_(v135, v136, 0, 22, &unk_1AFE47DDC);
  v140 = objc_msgSend_mutableBytes(v135, v137, v138, v139);
  *(v140 + 8) = v11;
  *(v140 + 10) = v11;
  *(v140 + 12) = objc_msgSend_length(v154, v141, v142, v143);
  *(v140 + 16) = objc_msgSend_length(v155, v144, v145, v146);
  objc_msgSend_appendData_(v155, v147, v154, v148);
  objc_msgSend_appendData_(v155, v149, v135, v150);
  return v155;
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

- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error
{
  v7 = objc_msgSend_archiveData(self, a2, file, options);
  if (v7)
  {

    LOBYTE(v7) = MEMORY[0x1EEE66B58](v7, sel_writeToFile_options_error_, file, options);
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