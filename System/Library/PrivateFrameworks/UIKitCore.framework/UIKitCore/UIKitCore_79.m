void ui_archive_write_header(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getarchive_write_headerSymbolLoc_ptr;
  v11 = getarchive_write_headerSymbolLoc_ptr;
  if (!getarchive_write_headerSymbolLoc_ptr)
  {
    v5 = libarchiveLibrary();
    v9[3] = dlsym(v5, "archive_write_header");
    getarchive_write_headerSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int __ui_archive_write_header(struct ui_archive *, struct ui_archive_entry *)"}];
    [v6 handleFailureInFunction:v7 file:@"_UILibArchiveSoftLinking.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974B420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_write_finish_entry(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_write_finish_entrySymbolLoc_ptr;
  v9 = getarchive_write_finish_entrySymbolLoc_ptr;
  if (!getarchive_write_finish_entrySymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_write_finish_entry");
    getarchive_write_finish_entrySymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __ui_archive_write_finish_entry(struct ui_archive *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974B584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_entry_clone(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_entry_cloneSymbolLoc_ptr;
  v9 = getarchive_entry_cloneSymbolLoc_ptr;
  if (!getarchive_entry_cloneSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_entry_clone");
    getarchive_entry_cloneSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"struct ui_archive_entry *__ui_archive_entry_clone(struct ui_archive_entry *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974B6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_entry_free(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_entry_freeSymbolLoc_ptr;
  v9 = getarchive_entry_freeSymbolLoc_ptr;
  if (!getarchive_entry_freeSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_entry_free");
    getarchive_entry_freeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __ui_archive_entry_free(struct ui_archive_entry *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974B84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_entry_set_pathname(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fileSystemRepresentation];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = getarchive_entry_set_pathnameSymbolLoc_ptr;
  v12 = getarchive_entry_set_pathnameSymbolLoc_ptr;
  if (!getarchive_entry_set_pathnameSymbolLoc_ptr)
  {
    v6 = libarchiveLibrary();
    v10[3] = dlsym(v6, "archive_entry_set_pathname");
    getarchive_entry_set_pathnameSymbolLoc_ptr = v10[3];
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v5)
  {
    v5(a1, v4);
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __ui_archive_entry_set_pathname(struct ui_archive_entry *, const char *)"}];
    [v7 handleFailureInFunction:v8 file:@"_UILibArchiveSoftLinking.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974B9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_read_data_block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getarchive_read_data_blockSymbolLoc_ptr;
  v15 = getarchive_read_data_blockSymbolLoc_ptr;
  if (!getarchive_read_data_blockSymbolLoc_ptr)
  {
    v9 = libarchiveLibrary();
    v13[3] = dlsym(v9, "archive_read_data_block");
    getarchive_read_data_blockSymbolLoc_ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v8)
  {
    v8(a1, a2, a3, a4);
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int __ui_archive_read_data_block(struct ui_archive *, const void **, size_t *, off_t *)"}];
    [v10 handleFailureInFunction:v11 file:@"_UILibArchiveSoftLinking.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974BB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_write_data_block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getarchive_write_data_blockSymbolLoc_ptr;
  v15 = getarchive_write_data_blockSymbolLoc_ptr;
  if (!getarchive_write_data_blockSymbolLoc_ptr)
  {
    v9 = libarchiveLibrary();
    v13[3] = dlsym(v9, "archive_write_data_block");
    getarchive_write_data_blockSymbolLoc_ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v8)
  {
    v8(a1, a2, a3, a4);
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ssize_t __ui_archive_write_data_block(struct ui_archive *, const void *, size_t, off_t)"}];
    [v10 handleFailureInFunction:v11 file:@"_UILibArchiveSoftLinking.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974BCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ui_archive_error(uint64_t a1, void *a2, int a3, void *a4)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = MEMORY[0x1E696AEC0];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v10 = getarchive_error_stringSymbolLoc_ptr;
  v24 = getarchive_error_stringSymbolLoc_ptr;
  if (!getarchive_error_stringSymbolLoc_ptr)
  {
    v11 = libarchiveLibrary();
    v22[3] = dlsym(v11, "archive_error_string");
    getarchive_error_stringSymbolLoc_ptr = v22[3];
    v10 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v10)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const char *__ui_archive_error_string(struct ui_archive *)"];
    [v19 handleFailureInFunction:v20 file:@"_UILibArchiveSoftLinking.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v12 = v10(a1);
  if (v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v9 stringWithFormat:@"%@", v13];

  v15 = *MEMORY[0x1E696A588];
  v25[0] = *MEMORY[0x1E696A578];
  v25[1] = v15;
  v26[0] = v8;
  v26[1] = v14;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:v7 code:a3 userInfo:v16];

  return v17;
}

void sub_18974BF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getarchive_read_newSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_read_new");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_read_newSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libarchiveLibrary()
{
  v18 = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v0 = libarchiveLibraryCore_frameworkLibrary;
  v15 = libarchiveLibraryCore_frameworkLibrary;
  if (!libarchiveLibraryCore_frameworkLibrary)
  {
    v9[1] = MEMORY[0x1E69E9820];
    v9[2] = 3221225472;
    v9[3] = __libarchiveLibraryCore_block_invoke;
    v9[4] = &unk_1E7101790;
    v10 = &v12;
    v11 = v9;
    v16 = xmmword_1E7105748;
    v17 = 0;
    v13[3] = _sl_dlopen();
    libarchiveLibraryCore_frameworkLibrary = *(v10[1] + 24);
    v0 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *libarchiveLibrary(void)"];
    v5 = v3;
    v6 = v3;
    v7 = v4;
    [v5 handleFailureInFunction:v4 file:@"_UILibArchiveSoftLinking.m" lineNumber:14 description:{@"%s", v9[0]}];
    v8 = v7;
    v0 = v6;

    __break(1u);
    goto LABEL_7;
  }

  v1 = v9[0];
  if (v9[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_18974C170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libarchiveLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libarchiveLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_read_support_compression_allSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_read_support_compression_all");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_read_support_compression_allSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_read_support_format_allSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_read_support_format_all");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_read_support_format_allSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_read_open_filenameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_read_open_filename");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_read_open_filenameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_read_closeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_read_close");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_read_closeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_read_finishSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_read_finish");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_read_finishSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_format_nameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_format_name");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_format_nameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_formatSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_format");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_formatSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_read_next_headerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_read_next_header");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_read_next_headerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_entry_pathnameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_entry_pathname");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_entry_pathnameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_entry_filetypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_entry_filetype");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_entry_filetypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_entry_size_is_setSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_entry_size_is_set");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_entry_size_is_setSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_entry_sizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_entry_size");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_entry_sizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_write_disk_newSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_write_disk_new");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_write_disk_newSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_write_disk_set_standard_lookupSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_write_disk_set_standard_lookup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_write_disk_set_standard_lookupSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_write_disk_set_optionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_write_disk_set_options");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_write_disk_set_optionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_write_closeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_write_close");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_write_closeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_write_finishSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_write_finish");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_write_finishSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_write_headerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_write_header");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_write_headerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_write_finish_entrySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_write_finish_entry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_write_finish_entrySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_entry_cloneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_entry_clone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_entry_cloneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_entry_freeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_entry_free");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_entry_freeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_entry_set_pathnameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_entry_set_pathname");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_entry_set_pathnameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_read_data_blockSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_read_data_block");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_read_data_blockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_write_data_blockSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_write_data_block");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_write_data_blockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getarchive_error_stringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libarchiveLibrary();
  result = dlsym(v2, "archive_error_string");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getarchive_error_stringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18974E55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_18974EE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_189750654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_189751D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a48, 8);
  _Unwind_Resume(a1);
}

id _UIDocumentLog()
{
  if (qword_1ED49DA50 != -1)
  {
    dispatch_once(&qword_1ED49DA50, &__block_literal_global_177);
  }

  v1 = _MergedGlobals_1067;

  return v1;
}

void sub_189755F90(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_189756458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void _UIDocumentSetEditingDisabled(void *a1, int a2, int a3)
{
  v5 = a1;
  objc_sync_enter(v5);
  v6 = v5[96];
  v7 = v6 & 0x180;
  v8 = v7;
  if (a3)
  {
    if ((((v6 & 0x80) == 0) ^ a2))
    {
      goto LABEL_9;
    }

    v9 = -129;
    v10 = 128;
  }

  else
  {
    if ((((v6 & 0x100) == 0) ^ a2))
    {
      goto LABEL_9;
    }

    v9 = -257;
    v10 = 256;
  }

  if (!a2)
  {
    v10 = 0;
  }

  v11 = v9 & v6 | v10;
  v5[96] = v11;
  v8 = v11 & 0x180;
LABEL_9:
  v12 = v7 != 0;
  objc_sync_exit(v5);
  if (v12 != (v8 != 0))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___UIDocumentSetEditingDisabled_block_invoke;
    v13[3] = &unk_1E70F35E0;
    v15 = v8 != 0;
    v14 = v5;
    [v14 _performBlockSynchronouslyOnMainThread:v13];
  }
}

void sub_18975834C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1897592B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189759D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_18975B128(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_18975CC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18975E1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FileProviderLibraryCore()
{
  if (!FileProviderLibraryCore_frameworkLibrary_0)
  {
    FileProviderLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return FileProviderLibraryCore_frameworkLibrary_0;
}

uint64_t __FileProviderLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getFPUpdateLastUsedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FileProviderLibrary_0();
  result = dlsym(v2, "FPUpdateLastUsedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFPUpdateLastUsedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *FileProviderLibrary_0()
{
  v0 = FileProviderLibraryCore();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"UIDocument.m" lineNumber:63 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

Class __getDOCImportToDefaultLocationSupportClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49DA70)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DocumentManagerCoreLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7105C80;
    v8 = 0;
    qword_1ED49DA70 = _sl_dlopen();
  }

  if (!qword_1ED49DA70)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DocumentManagerCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDocument.m" lineNumber:48 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("DOCImportToDefaultLocationSupport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDOCImportToDefaultLocationSupportClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDocument.m" lineNumber:49 description:{@"Unable to find class %s", "DOCImportToDefaultLocationSupport"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49DA68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DocumentManagerCoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49DA70 = result;
  return result;
}

void *__getFPCreateBookmarkableStringFromDocumentURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FileProviderLibrary_0();
  result = dlsym(v2, "FPCreateBookmarkableStringFromDocumentURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFPCreateBookmarkableStringFromDocumentURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFPCreateDocumentURLFromBookmarkableStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FileProviderLibrary_0();
  result = dlsym(v2, "FPCreateDocumentURLFromBookmarkableString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFPCreateDocumentURLFromBookmarkableStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_189761C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189761F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_189762228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_189762E14(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_189763E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIShimSetIsContentManaged(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setIsContentManaged:a2];
  }

  else
  {
    [v3 setSourceIsManaged:a2];
  }
}

void _UIShimSetUnderbarIsContentManaged(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 _setIsContentManaged:a2];
  }

  else
  {
    [v3 _setSourceIsManaged:a2];
  }
}

void sub_189766DFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_18976B128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_18976B820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18976FA80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t _UISearchSuggestionNumberOfSuggestionsFromGroups(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v9 + 1) + 8 * i) suggestionItems];
        v4 += [v7 count];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _isDragInteractionGestureRecognizer(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (qword_1ED49DAD0 != -1)
  {
    dispatch_once(&qword_1ED49DAD0, &__block_literal_global_181);
  }

  v2 = _MergedGlobals_1070;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_opt_isKindOfClass())
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

void ___dragInteractionGestureRecognizerClasses_block_invoke()
{
  v0 = MEMORY[0x1E695DEC8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 arrayWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = _MergedGlobals_1070;
  _MergedGlobals_1070 = v3;
}

void sub_189771598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1897719DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _UISceneMainMenuKeyboardShortcutActionForNavigatingMenusWithHorizontalArrowKeyInput(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (qword_1ED49DAE0 != -1)
  {
    dispatch_once(&qword_1ED49DAE0, &__block_literal_global_183);
  }

  if ((_MergedGlobals_1071 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Process is not approved to use this."];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIAction * _Nonnull _UISceneMainMenuKeyboardShortcutActionForNavigatingMenusWithHorizontalArrowKeyInput(NSString * _Nonnull __strong, UIActionHandler  _Nonnull __strong)"}];
      v13 = 138544130;
      v14 = v10;
      v15 = 2114;
      v16 = @"_UISceneMainMenuHostComponent.m";
      v17 = 1024;
      v18 = 61;
      v19 = 2114;
      v20 = v9;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v13, 0x26u);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189776DECLL);
  }

  if (([v3 isEqualToString:@"UIKeyInputLeftArrow"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"UIKeyInputRightArrow") & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"horizontalArrowKeyInput was not a horizontal arrow key input"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIAction * _Nonnull _UISceneMainMenuKeyboardShortcutActionForNavigatingMenusWithHorizontalArrowKeyInput(NSString * _Nonnull __strong, UIActionHandler  _Nonnull __strong)"}];
      v13 = 138544130;
      v14 = v12;
      v15 = 2114;
      v16 = @"_UISceneMainMenuHostComponent.m";
      v17 = 1024;
      v18 = 62;
      v19 = 2114;
      v20 = v11;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v13, 0x26u);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189776EB4);
  }

  v5 = [UIAction actionWithHandler:v4];
  v6 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:0 keyEquivalent:v3];
  v7 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:v6];

  [v7 setAutomaticMirroringEnabled:0];
  [v5 _setKeyboardShortcut:v7];
  [v5 _setEnumerationPriority:-1];
  [v5 set_systemBehaviorsToOutPrioritize:3];

  return v5;
}

void sub_189777410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1897777F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189777BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189777EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1897780E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189779F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18977FF2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189782944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189783D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189783E70(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    v13 = [v8 floatAssistantViewLayout];
    v14 = *&v8[v9];
    *&v8[v9] = v13;

    objc_end_catch();
    JUMPOUT(0x189783E48);
  }

  _Unwind_Resume(a1);
}

void sub_189784030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189784140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189784250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189784968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t UIGetAssistantBarStyleFromPlacement(void *a1)
{
  v1 = a1;
  if ([v1 isCompactAssistantView])
  {
    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v2 = 3;
    }

    else if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = [v1 isFloatingAssistantView];
  }

  return v2;
}

BOOL UIShouldUseCustomBackground(void *a1)
{
  v1 = a1;
  v2 = [v1 _detachedBackgroundColor];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [v1 _detachedBackgroundEffect];
    v3 = v4 != 0;
  }

  return v3;
}

uint64_t __TextInputUILibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

void __getTUISystemInputAssistantLayoutFloatClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUISystemInputAssistantLayoutFloat");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUISystemInputAssistantLayoutFloatClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUISystemInputAssistantLayoutFloatClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISystemInputAssistantViewController.m" lineNumber:101 description:{@"Unable to find class %s", "TUISystemInputAssistantLayoutFloat"}];

    __break(1u);
  }
}

void __getTUISystemInputAssistantLayoutCompactClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUISystemInputAssistantLayoutCompact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUISystemInputAssistantLayoutCompactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUISystemInputAssistantLayoutCompactClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISystemInputAssistantViewController.m" lineNumber:102 description:{@"Unable to find class %s", "TUISystemInputAssistantLayoutCompact"}];

    __break(1u);
  }
}

void __getTUISystemInputAssistantLayoutSplitClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUISystemInputAssistantLayoutSplit");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUISystemInputAssistantLayoutSplitClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUISystemInputAssistantLayoutSplitClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISystemInputAssistantViewController.m" lineNumber:100 description:{@"Unable to find class %s", "TUISystemInputAssistantLayoutSplit"}];

    __break(1u);
  }
}

void __getTUISystemInputAssistantStyleFloatClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUISystemInputAssistantStyleFloat");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUISystemInputAssistantStyleFloatClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUISystemInputAssistantStyleFloatClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISystemInputAssistantViewController.m" lineNumber:105 description:{@"Unable to find class %s", "TUISystemInputAssistantStyleFloat"}];

    __break(1u);
  }
}

void __getTUISystemInputAssistantStyleCompactClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUISystemInputAssistantStyleCompact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUISystemInputAssistantStyleCompactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUISystemInputAssistantStyleCompactClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISystemInputAssistantViewController.m" lineNumber:106 description:{@"Unable to find class %s", "TUISystemInputAssistantStyleCompact"}];

    __break(1u);
  }
}

void __getTUIEmojiSearchInputViewControllerClass_block_invoke_0(uint64_t a1)
{
  TextInputUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIEmojiSearchInputViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIEmojiSearchInputViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIEmojiSearchInputViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISystemInputAssistantViewController.m" lineNumber:103 description:{@"Unable to find class %s", "TUIEmojiSearchInputViewController"}];

    __break(1u);
  }
}

id _UIUpdateInputGroupDebugDescription(unsigned int *a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    v2 = mach_absolute_time();
  }

  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"Input Group, signals=0x%x (suspended=%u, signaled=0x%x), revision=%llu, sets:", *a1, a1[2], a1[1], *(a1 + 2)];
  for (i = *(a1 + 5); i; i = *(i + 80))
  {
    v6 = _UIUpdateInputSetDebugDescription(i, v2);
    v7 = _UIUpdateDebugDescriptionIndented(v6, @"\n  - ", @"    ");
    [v4 appendString:v7];
  }

  return v4;
}

id _UIPreviewParametersGenerateTextPlatter(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v164 = *MEMORY[0x1E69E9840];
  v10 = a1;
  if ([v10 count])
  {
    v155 = 0;
    if (CGSNewEmptyRegion())
    {
      v11 = _UIPreviewParametersGenerateTextPlatterFallback(v10, a2, a3, a4, a5, a6);
    }

    else
    {
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v151 objects:v161 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v152;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v152 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v151 + 1) + 8 * i);
            v162 = 0u;
            v163 = 0u;
            [v17 CGRectValue];
            *&v162 = a3 + v18;
            *(&v162 + 1) = a2 + v19;
            *&v163 = v20 - (a3 + a5);
            *(&v163 + 1) = v21 - (a2 + a4);
            *&v156 = 0;
            v150 = 0;
            if (CGSNewRegionWithRect() || CGSUnionRegion())
            {
              CGSReleaseRegion();
              v11 = _UIPreviewParametersGenerateTextPlatterFallback(v12, a2, a3, a4, a5, a6);

              goto LABEL_95;
            }

            CGSReleaseRegion();
            CGSReleaseRegion();
            v155 = v150;
          }

          v14 = [v12 countByEnumeratingWithState:&v151 objects:v161 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v128 = v12;

      v22 = 0x1E695D000uLL;
      v23 = [MEMORY[0x1E695DF70] array];
      v24 = [MEMORY[0x1E695DF70] array];
      CGSRegionPathEnumerator();
      while (1)
      {
        v162 = 0uLL;
        v25 = CGSNextPoint();
        if (v25 <= 0)
        {
          v26 = v25;
          if ([v24 count])
          {
            v27 = [MEMORY[0x1E695DEC8] arrayWithArray:{v24, v128}];
            [v23 addObject:v27];

            [v24 removeAllObjects];
          }

          if (!v26)
          {
            break;
          }
        }

        v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{v162, v128}];
        [v24 addObject:v28];
      }

      v129 = a2;
      v130 = a3;
      v131 = a4;
      v132 = a5;
      CGSReleaseRegionEnumerator();

      CGSReleaseRegion();
      v137 = +[UIBezierPath bezierPath];
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      obj = v23;
      v136 = [obj countByEnumeratingWithState:&v146 objects:v160 count:16];
      if (v136)
      {
        v135 = *v147;
        v140 = *(MEMORY[0x1E695F050] + 8);
        v141 = *MEMORY[0x1E695F050];
        v138 = *(MEMORY[0x1E695F050] + 24);
        v139 = *(MEMORY[0x1E695F050] + 16);
        v134 = a6 * 0.75;
        while (2)
        {
          v29 = 0;
          do
          {
            if (*v147 != v135)
            {
              objc_enumerationMutation(obj);
            }

            v142 = v29;
            v30 = *(*(&v146 + 1) + 8 * v29);
            v156 = 0u;
            v157 = 0u;
            v158 = 0u;
            v159 = 0u;
            v31 = [v30 countByEnumeratingWithState:&v156 objects:&v162 count:16];
            height = v138;
            width = v139;
            y = v140;
            x = v141;
            if (v31)
            {
              v36 = v31;
              v37 = *v157;
              height = v138;
              width = v139;
              y = v140;
              x = v141;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v157 != v37)
                  {
                    objc_enumerationMutation(v30);
                  }

                  [*(*(&v156 + 1) + 8 * j) CGPointValue];
                  v172.origin.x = v39;
                  v172.origin.y = v40;
                  v172.size.width = 0.0;
                  v172.size.height = 0.0;
                  v166.origin.x = x;
                  v166.origin.y = y;
                  v166.size.width = width;
                  v166.size.height = height;
                  v167 = CGRectUnion(v166, v172);
                  x = v167.origin.x;
                  y = v167.origin.y;
                  width = v167.size.width;
                  height = v167.size.height;
                }

                v36 = [v30 countByEnumeratingWithState:&v156 objects:&v162 count:16];
              }

              while (v36);
            }

            v168.origin.x = x;
            v168.origin.y = y;
            v168.size.width = width;
            v168.size.height = height;
            MinX = CGRectGetMinX(v168);
            v169.origin.x = x;
            v169.origin.y = y;
            v169.size.width = width;
            v169.size.height = height;
            MaxX = CGRectGetMaxX(v169);
            v170.origin.x = x;
            v170.origin.y = y;
            v170.size.width = width;
            v170.size.height = height;
            MinY = CGRectGetMinY(v170);
            v171.origin.x = x;
            v171.origin.y = y;
            v171.size.width = width;
            v171.size.height = height;
            MaxY = CGRectGetMaxY(v171);
            v44 = [v30 count];
            v45 = [*(v22 + 3952) arrayWithCapacity:v44];
            if (v44)
            {
              for (k = 0; k != v44; ++k)
              {
                v47 = [v30 objectAtIndexedSubscript:{k, v128}];
                [v47 CGPointValue];
                v49 = v48;
                v51 = v50;

                v52 = MinX;
                if (v49 > v134 + MinX)
                {
                  v52 = v49;
                  if (v49 >= MaxX - v134)
                  {
                    v52 = MaxX;
                  }
                }

                if (v51 >= MaxY - v134)
                {
                  v53 = MaxY;
                }

                else
                {
                  v53 = v51;
                }

                if (v51 <= v134 + MinY)
                {
                  v53 = MinY;
                }

                v54 = [MEMORY[0x1E696B098] valueWithCGPoint:{v52, v53}];
                [v45 addObject:v54];
              }
            }

            v55 = v45;
            v56 = [v55 count];
            v57 = [*(v22 + 3952) array];
            v58 = v137;
            if (v56)
            {
              v59 = 0;
              for (m = 0; m != v56; ++m)
              {
                if (v59)
                {
                  v61 = m - 1;
                }

                else
                {
                  v61 = v56 - 1;
                }

                v62 = [v55 objectAtIndexedSubscript:{v61, v128}];
                [v62 CGPointValue];
                v64 = v63;
                v66 = v65;

                v67 = [v55 objectAtIndexedSubscript:m];
                [v67 CGPointValue];
                v69 = v68;
                v71 = v70;

                if (m == v56 - 1)
                {
                  v72 = 0;
                }

                else
                {
                  v72 = m + 1;
                }

                v73 = [v55 objectAtIndexedSubscript:v72];
                [v73 CGPointValue];
                v75 = v74;
                v77 = v76;

                if (vabdd_f64((v69 - v64) * (v77 - v66), (v71 - v66) * (v75 - v64)) >= 0.001)
                {
                  v78 = [MEMORY[0x1E696B098] valueWithCGPoint:{v69, v71}];
                  [v57 addObject:v78];
                }

                --v59;
              }
            }

            v79 = v137;
            v80 = v57;
            v81 = [v80 count];
            if (v81 <= 3)
            {

              v11 = _UIPreviewParametersGenerateTextPlatterFallback(v128, v129, v130, v131, v132, a6);

              v126 = obj;
              goto LABEL_94;
            }

            v82 = v81;
            v83 = 0;
            v84 = 0;
            v85 = v81 - 1;
            do
            {
              if (v83)
              {
                v86 = v84 - 1;
              }

              else
              {
                v86 = v85;
              }

              v87 = [v80 objectAtIndexedSubscript:{v86, v128}];
              [v87 CGPointValue];
              v89 = v88;
              v91 = v90;

              v92 = [v80 objectAtIndexedSubscript:v84];
              [v92 CGPointValue];
              v94 = v93;
              v96 = v95;

              if (v84 == v85)
              {
                v97 = 0;
              }

              else
              {
                v97 = v84 + 1;
              }

              v98 = [v80 objectAtIndexedSubscript:v97];
              [v98 CGPointValue];
              v100 = v99;
              v102 = v101;

              v103 = v94 - v89;
              v104 = (v94 - v89) * (v102 - v91);
              v105 = v96 - v91;
              v106 = v105 * (v100 - v89);
              v107 = llround(atan2(v105, v103) / 1.57079633) + 4;
              v108 = v107 & 3;
              v110 = -v107;
              v109 = v110 < 0;
              v111 = v110 & 3;
              if (v109)
              {
                v112 = v108;
              }

              else
              {
                v112 = -v111;
              }

              v145 = v104;
              v109 = v104 < v106;
              v113 = v106;
              v114 = a6;
              if (v109)
              {
                v114 = a6 * 0.5;
                v115 = &unk_18A679DF8;
              }

              else
              {
                v115 = &unk_18A679DD8;
              }

              v116 = v115[v112];
              v117 = v100 - v94;
              v118 = v102 - v96;
              v119 = -v103;
              if (v103 >= 0.0)
              {
                v119 = v103;
              }

              if (v117 < 0.0)
              {
                v117 = -v117;
              }

              if (v119 >= v117)
              {
                v117 = v119;
              }

              v120 = -v105;
              if (v105 >= 0.0)
              {
                v120 = v105;
              }

              if (v118 < 0.0)
              {
                v118 = -v118;
              }

              if (v120 >= v118)
              {
                v118 = v120;
              }

              if (v117 >= v118)
              {
                v117 = v118;
              }

              v121 = v117 * 0.5;
              if (v114 >= v121)
              {
                v122 = v121;
              }

              else
              {
                v122 = v114;
              }

              v123 = v122 * 1.528665 / hypot(v103, v105);
              v124 = v94 - v103 * v123;
              v125 = v96 - v105 * v123;
              if (v83)
              {
                [v79 addLineToPoint:{v124, v125}];
              }

              else
              {
                [v79 moveToPoint:{v124, v125}];
              }

              ++v84;
              [v79 _addRoundedCornerWithTrueCorner:v116 radius:v145 < v113 corner:v94 clockwise:{v96, v122, v122}];
              --v83;
            }

            while (v84 != v82);
            [v79 closePath];

            v29 = v142 + 1;
            v22 = 0x1E695D000;
          }

          while (v142 + 1 != v136);
          v136 = [obj countByEnumeratingWithState:&v146 objects:v160 count:16];
          if (v136)
          {
            continue;
          }

          break;
        }
      }

      v126 = obj;

      v58 = v137;
      v11 = v137;
LABEL_94:
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_95:

  return v11;
}

id _UIPreviewParametersGenerateTextPlatterFallback(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = +[UIBezierPath bezierPath];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    v17 = a3 + a5;
    v18 = a2 + a4;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v26 + 1) + 8 * i) CGRectValue];
        v24 = [UIBezierPath bezierPathWithRoundedRect:a3 + v20 cornerRadius:a2 + v21, v22 - v17, v23 - v18, a6];
        [v12 appendPath:v24];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  return v12;
}

void _markItemsForUpdate(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if ([v5 count])
  {
    if (qword_1ED49DB18 != -1)
    {
      dispatch_once(&qword_1ED49DB18, &__block_literal_global_260);
    }

    if ((_MergedGlobals_1073 & 1) == 0)
    {
      _MergedGlobals_1073 = 1;
      [UIApp _performBlockAfterCATransactionCommits:&__block_literal_global_262];
    }

    v4 = [qword_1ED49DB10 objectForKey:v3];
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
      [qword_1ED49DB10 setObject:v4 forKey:v3];
    }

    [v4 addObjectsFromArray:v5];
  }
}

uint64_t _hasItemsConformingToTypeIdentifiers(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v22 + 1) + 8 * i) itemProvider];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = v4;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if ([v10 hasRepresentationConformingToTypeIdentifier:*(*(&v18 + 1) + 8 * j) fileOptions:0])
              {

                v16 = 1;
                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v16 = 0;
    }

    while (v7);
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  return v16;
}

uint64_t _canLoadObjectsOfClass(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) itemProvider];
        v9 = [v8 canLoadObjectOfClass:a2];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id arrayOfItemsFromDictionaryOfItemsByIndex(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v3 = [v1 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v1 objectForKey:{*(*(&v12 + 1) + 8 * i), v12}];
        [v2 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v2;
}

void ___markItemsForUpdate_block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v1 = qword_1ED49DB10;
  qword_1ED49DB10 = v0;
}

void ___enqueueItemsUpdate_block_invoke()
{
  v26 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v1 = [qword_1ED49DB10 keyEnumerator];
  v2 = [v1 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v19 + 1) + 8 * i);
        if ([v6 _allowsItemsToUpdate])
        {
          v7 = [qword_1ED49DB10 objectForKey:v6];
          v8 = [v6 _internalSession];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = ___updateItems_block_invoke;
          v23[3] = &unk_1E71064E0;
          v24 = v7;
          v9 = v7;
          [v8 enumerateItemsUsingBlock:v23];

          [v0 addObject:v6];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v3);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v0;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [qword_1ED49DB10 removeObjectForKey:{*(*(&v15 + 1) + 8 * j), v15}];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  _MergedGlobals_1073 = 0;
}

void ___updateItems_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [v3 _updatePreferredPreview];
  }
}

void BUG_IN_CLIENT_OF_TARGETED_PREVIEW__VIEW_IS_NOT_IN_A_WINDOW(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAA8];
  v4 = a2;
  v7 = [v3 currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BUG_IN_CLIENT_OF_TARGETED_PREVIEW__VIEW_IS_NOT_IN_A_WINDOW(Class  _Nonnull __unsafe_unretained, UIView * _Nonnull __strong)"}];
  v6 = [v4 _conciseParentDescription];

  [v7 handleFailureInFunction:v5 file:@"UITargetedPreview.m" lineNumber:72 description:{@"This %@ initializer requires that the view is in a window, but it is not. Either fix that, or use the other initializer that takes a target with an explicit container. (view: %@)", a1, v6}];
}

long double DUIPreviewConvertSizeFromViewToView(void *a1, void *a2, long double a3, double a4)
{
  if (a1)
  {
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    v9 = a2;
    v10 = a1;
    [v10 convertPoint:v9 toView:{v7, v8}];
    v12 = v11;
    v14 = v13;
    [v10 convertPoint:v9 toView:{a3, 0.0}];
    v16 = v15;
    v18 = v17;
    [v10 convertPoint:v9 toView:{0.0, a4}];
    v20 = v19;
    v22 = v21;

    a3 = hypot(v16 - v12, v18 - v14);
    hypot(v20 - v12, v22 - v14);
  }

  return a3;
}

double DUIPreviewGetRotationAngleFromViewToView(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = 0.0;
  if (v5 | v6)
  {
    v8 = v6;
    if (v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == 0;
    }

    v10 = !v9;
    if (!v5 || !v6)
    {
      if (v10)
      {
        v5 = v6;
      }

      v8 = [v5 _window];
    }

    v11 = [v5 layer];
    v12 = v11;
    if (a3)
    {
      v13 = [v11 presentationLayer];

      if (v13)
      {
        v14 = [v12 presentationLayer];

        v12 = v14;
      }

      v15 = [v8 layer];
      v16 = [v15 presentationLayer];

      if (v16)
      {
        v17 = [v15 presentationLayer];

        v15 = v17;
      }
    }

    else
    {
      v15 = [v8 layer];
    }

    [v12 convertPoint:v15 toLayer:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v19 = v18;
    v21 = v20;
    [v12 convertPoint:v15 toLayer:{1.0, 0.0}];
    v24 = atan2(v23 - v21, v22 - v19);
    if ([v5 _flipsHorizontalAxis])
    {
      v24 = v24 + 3.14159265;
    }

    v25 = [v8 _flipsHorizontalAxis];
    v26 = v24 + 3.14159265;
    if (!v25)
    {
      v26 = v24;
    }

    if (v10)
    {
      v7 = -v26;
    }

    else
    {
      v7 = v26;
    }
  }

  return v7;
}

id _UIDragAndDropGetPlatformMetrics(uint64_t a1)
{
  if (qword_1ED49DB28 != -1)
  {
    dispatch_once(&qword_1ED49DB28, &__block_literal_global_187);
  }

  v2 = _MergedGlobals_1074;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    if (!_MergedGlobals_1074)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = _MergedGlobals_1074;
      _MergedGlobals_1074 = v5;
    }

    v7 = [_UIVisualStyleRegistry registryForIdiom:a1];
    [v7 visualStyleClassForStylableClass:objc_opt_class()];

    v4 = objc_opt_new();
    v8 = _MergedGlobals_1074;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    [v8 setObject:v4 forKey:v9];
  }

  return v4;
}

id _DUINewServerSourceInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016C870];
  v1 = _DUINewClientSessionSourceInterface();
  [v0 setInterface:v1 forSelector:sel_beginDragWithClientSession_configuration_reply_ argumentIndex:0 ofReply:0];

  [v0 setClass:objc_opt_class() forSelector:sel_beginDragWithClientSession_configuration_reply_ argumentIndex:1 ofReply:0];
  v2 = _DUINewServerSessionSourceInterface();
  [v0 setInterface:v2 forSelector:sel_beginDragWithClientSession_configuration_reply_ argumentIndex:1 ofReply:1];

  return v0;
}

id _DUINewClientSessionSourceInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF97AB0];
  setDUIClientSessionCommonProtocolMethods(v0);
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_canHandOffCancelledItems_withReply_ argumentIndex:0 ofReply:0];

  [v0 setClass:objc_opt_class() forSelector:sel_canHandOffCancelledItems_withReply_ argumentIndex:1 ofReply:1];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_handOffCancelledItems_withFence_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

id _DUINewServerSessionSourceInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016C930];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_dirtySourceItems_ argumentIndex:0 ofReply:0];

  return v0;
}

id _DUINewServerDestinationInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016C8D0];
  v1 = _DUINewClientSessionDestinationInterface();
  [v0 setInterface:v1 forSelector:sel_sawFirstDragEventWithSessionID_systemPolicy_destination_completion_ argumentIndex:2 ofReply:0];

  v2 = _DUINewServerSessionDestinationInterface();
  [v0 setInterface:v2 forSelector:sel_sawFirstDragEventWithSessionID_systemPolicy_destination_completion_ argumentIndex:0 ofReply:1];

  v3 = [MEMORY[0x1E69BC808] allowedClassesForSecureCoding];
  [v0 setClasses:v3 forSelector:sel_sawFirstDragEventWithSessionID_systemPolicy_destination_completion_ argumentIndex:1 ofReply:1];

  return v0;
}

id _DUINewClientSessionDestinationInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF97F90];
  setDUIClientSessionCommonProtocolMethods(v0);
  v1 = [MEMORY[0x1E69BC808] allowedClassesForSecureCoding];
  [v0 setClasses:v1 forSelector:sel_performDropWithItemCollection_dataProviderEndpoint_visibleDroppedItems_completion_ argumentIndex:0 ofReply:0];

  [v0 setClass:objc_opt_class() forSelector:sel_performDropWithItemCollection_dataProviderEndpoint_visibleDroppedItems_completion_ argumentIndex:1 ofReply:0];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_performDropWithItemCollection_dataProviderEndpoint_visibleDroppedItems_completion_ argumentIndex:2 ofReply:0];

  [v0 setClass:objc_opt_class() forSelector:sel_performDropWithItemCollection_dataProviderEndpoint_visibleDroppedItems_completion_ argumentIndex:0 ofReply:1];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:sel_handOffDroppedItems_withFence_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

id _DUINewServerSessionDestinationInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016C990];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_dirtyDestinationItems_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_requestVisibleItemsWithReply_ argumentIndex:0 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_requestDropWithOperation_layerContext_ argumentIndex:1 ofReply:0];

  return v0;
}

void setDUIClientSessionCommonProtocolMethods(void *a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v6 = a1;
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 setWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  [v6 setClasses:v5 forSelector:sel_requestDragPreviewsForIndexSet_reply_ argumentIndex:0 ofReply:1];

  [v6 setClass:objc_opt_class() forSelector:sel_updatedPresentation_ argumentIndex:0 ofReply:0];
}

id _DUINewServerSessionSystemAppInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016CAB0];
  [v0 setClass:objc_opt_class() forSelector:sel_loadURLForItemAtIndex_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_loadUserActivityDataForItemAtIndex_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id _DUINewClientSystemAppInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F00DB5D8];
  v1 = _DUINewServerSessionSystemAppInterface();
  [v0 setInterface:v1 forSelector:sel_dragDidBeginWithSystemSession_info_reply_ argumentIndex:0 ofReply:0];

  return v0;
}

id _DUINewDragContinuationInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016CB10];
  [v0 setClass:objc_opt_class() forSelector:sel_requestItemCollectionWithReply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_requestItemCollectionWithReply_ argumentIndex:1 ofReply:1];

  return v0;
}

id _DUIDragSessionLifecycleListeningInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F004A8D0];
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016CB70];
  [v0 setInterface:v1 forSelector:sel_dragDidBeginWithSession_identifier_reply_ argumentIndex:0 ofReply:0];

  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016CB70];
  [v0 setInterface:v2 forSelector:sel_dragDidEndWithSession_ argumentIndex:0 ofReply:0];

  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016CB70];
  [v0 setInterface:v3 forSelector:sel_dragDidEndWithSession_identifier_ argumentIndex:0 ofReply:0];

  return v0;
}

id _UIImageLoadingLog()
{
  if (qword_1ED499290 != -1)
  {
    dispatch_once(&qword_1ED499290, &__block_literal_global_188);
  }

  v1 = _MergedGlobals_1_9;

  return v1;
}

void _drainTrampolines(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  os_unfair_lock_assert_owner(v1 + 8);
  v2 = *(v1 + 5);
  v3 = v2;
  if (v2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *(v1 + 5);
  *(v1 + 5) = 0;
}

__CFString *stringFromDraggingSessionSourceState(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown state %ld", a1];
  }

  else
  {
    v2 = off_1E7106898[a1];
  }

  return v2;
}

id enumerateDraggingItems(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __enumerateDraggingItems_block_invoke;
  v11[3] = &unk_1E7106850;
  v13 = v3;
  v6 = v5;
  v12 = v6;
  v7 = v3;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v11];

  v8 = v12;
  v9 = v6;

  return v6;
}

void sub_18979B600(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v7 - 88));
  _Unwind_Resume(a1);
}

id dragPreviewsOfItems(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = MEMORY[0x1E695DF70];
  v8 = a2;
  v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __dragPreviewsOfItems_block_invoke;
  v16[3] = &unk_1E7106878;
  v17 = v5;
  v18 = v6;
  v10 = v9;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  [v8 enumerateIndexesUsingBlock:v16];

  v13 = v19;
  v14 = v10;

  return v10;
}

void sub_18979BEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double visibleDroppedItemSize(void *a1)
{
  v1 = a1;
  v2 = [v1 preview];
  if (v2)
  {
    if ([v1 constrainSize])
    {
      [v2 scaledSize];
    }

    else
    {
      [v2 unscaledSize];
    }

    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E695F060];
  }

  return v4;
}

id _UIDraggingConnectionXPCQueue()
{
  if (qword_1EA9683C8 != -1)
  {
    dispatch_once(&qword_1EA9683C8, &__block_literal_global_189);
  }

  v1 = qword_1EA9683C0;

  return v1;
}

void sub_1897A01D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1897A0800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1897A1FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1897A22A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

__CFString *stringFromDraggingSessionDestinationState(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown state %ld", a1];
  }

  else
  {
    v2 = off_1E71068D0[a1];
  }

  return v2;
}

void __enumerateDraggingItems_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  (*(*(a1 + 40) + 16))();
  if ([v5 _isDirty])
  {
    v6 = objc_opt_new();
    [v6 setIndex:a3];
    [*(a1 + 32) addObject:v6];
    [v5 _setDirty:0];
  }
}

void __dragPreviewsOfItems_block_invoke(uint64_t a1, unint64_t a2)
{
  if ([*(a1 + 32) count] > a2)
  {
    v20 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v4 = [v20 _currentPreviewProvider];
    v5 = objc_alloc_init(_DUIPreviewAndImageComponent);
    v6 = [v4 _duiPreview];
    [(_DUIPreviewAndImageComponent *)v5 setPreview:v6];

    v7 = [v4 imageComponent];
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = v8;
    if (v9)
    {
      v11 = objc_alloc_init(_DUIImageComponent);
      [v9 frame];
      [(_DUIImageComponent *)v11 setFrame:?];
      -[_DUIImageComponent setIgnoresAccessibilityFilters:](v11, "setIgnoresAccessibilityFilters:", [v9 ignoresAccessibilityFilters]);
      -[_DUIImageComponent setHidesImage:](v11, "setHidesImage:", [v9 hidesImage]);
      v12 = [v9 view];

      if (v12)
      {
        v13 = [v9 view];
        SlotId = _UISnapshotViewGetSlotId(v13);

        if (SlotId)
        {
          [(_DUIImageComponent *)v11 setSlotID:SlotId];
        }

        else
        {
          v17 = [v9 view];
          v18 = [v17 layer];

          [(_DUIImageComponent *)v11 setRenderID:CALayerGetRenderId()];
          v19 = [v18 context];
          -[_DUIImageComponent setContextID:](v11, "setContextID:", [v19 contextId]);
        }
      }

      else
      {
        v15 = [v9 image];
        v16 = [v15 CGImage];
        if (v16)
        {
          -[_DUIImageComponent setSlotID:](v11, "setSlotID:", [v10 uploadImage:v16]);
        }
      }
    }

    else
    {
      v11 = 0;
    }

    [(_DUIPreviewAndImageComponent *)v5 setImageComponent:v11];
    [(_DUIPreviewAndImageComponent *)v5 setIndex:a2];
    [*(a1 + 48) addObject:v5];
  }
}

void sub_1897A429C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _transferQueue()
{
  if (qword_1ED49DB38 != -1)
  {
    dispatch_once(&qword_1ED49DB38, &__block_literal_global_190);
  }

  v1 = _MergedGlobals_1075;

  return v1;
}

void _dispatchCallback(void *a1)
{
  v1 = qword_1ED49DB48;
  v2 = a1;
  v4 = v2;
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    dispatch_once(&qword_1ED49DB48, &__block_literal_global_143_0);
    v3 = v4;
  }

  dispatch_async(qword_1ED49DB40, v3);
}

void sub_1897A4D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1897A539C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1897A55AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___transferQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit._UIDataTransferMonitor transferQueue", 0);
  v1 = _MergedGlobals_1075;
  _MergedGlobals_1075 = v0;
}

void ___dispatchCallback_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit._UIDataTransferMonitor callbackQueue", 0);
  v1 = qword_1ED49DB40;
  qword_1ED49DB40 = v0;
}

void ___indexOfDataTransferRequestMatching_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 itemProvider];
  v8 = [v7 _UUID];
  v9 = [*(a1 + 32) _UUID];
  if ([v8 isEqual:v9])
  {
    v10 = [v12 UUID];
    v11 = [v10 isEqual:*(a1 + 40)];

    if (v11)
    {
      *(*(*(a1 + 48) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  else
  {
  }
}

void __BadgeSymbolFont_block_invoke()
{
  v0 = [off_1E70ECC18 systemFontOfSize:16.0 weight:*off_1E70ECD30];
  v1 = qword_1ED49A600;
  qword_1ED49A600 = v0;
}

void __MonospaceFont_block_invoke()
{
  v0 = [off_1E70ECC18 monospacedDigitSystemFontOfSize:16.0 weight:*off_1E70ECD28];
  v1 = qword_1ED49A610;
  qword_1ED49A610 = v0;
}

void __ProportionalFont_block_invoke()
{
  v0 = [off_1E70ECC18 systemFontOfSize:16.0];
  v1 = qword_1ED49A620;
  qword_1ED49A620 = v0;
}

id windowSceneForItems(void *a1, char a2, int a3)
{
  v4 = windowForItems(a1, a2);
  v5 = [v4 windowScene];

  if (v5)
  {
    v6 = [v4 windowScene];
  }

  else if (a3 && [UIApp _isSpringBoard])
  {
    v7 = [objc_opt_self() mainScreen];
    v6 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id windowForItems(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      if (a2)
      {
        [v8 _sourceVisualTarget];
      }

      else
      {
        [v8 _destinationVisualTarget];
      }
      v9 = ;
      v10 = [v9 _windowForSetDownOfDragItem:{v8, v12}];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  return v10;
}

void sub_1897A76A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UISetupPhysicsKit()
{
  if (_UISetupPhysicsKit_onceToken[0] != -1)
  {
    dispatch_once(_UISetupPhysicsKit_onceToken, &__block_literal_global_193);
  }
}

BOOL UIFloatRangeIsEqualToRange(double a1, double a2, double a3, double a4)
{
  v4 = a1 - a3;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > 0.00000011920929)
  {
    return 0;
  }

  v6 = a2 - a4;
  v7 = -(a2 - a4);
  if (v6 < 0.0)
  {
    v6 = v7;
  }

  return v6 <= 0.00000011920929;
}

uint64_t _UISplitViewControllerAdaptiveColumnVisibilityIsAppearing(unint64_t a1, unint64_t a2)
{
  if (_UISplitViewControllerAdaptiveColumnVisibilityIsVisible(a1))
  {
    return 0;
  }

  return _UISplitViewControllerAdaptiveColumnVisibilityIsVisible(a2);
}

uint64_t _UISplitViewControllerAdaptiveColumnVisibilityIsDisappearing(unint64_t a1, unint64_t a2)
{
  result = _UISplitViewControllerAdaptiveColumnVisibilityIsVisible(a1);
  if (result)
  {
    return _UISplitViewControllerAdaptiveColumnVisibilityIsVisible(a2) ^ 1;
  }

  return result;
}

double _UISplitViewControllerAdaptiveLayoutDefaultPreferredColumns@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *&result = 999;
  *a1 = xmmword_18A679E70;
  *(a1 + 16) = vdupq_n_s64(0x3E7uLL);
  return result;
}

id getTUIEmojiSearchViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED49A640;
  v7 = qword_1ED49A640;
  if (!qword_1ED49A640)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIEmojiSearchViewClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIEmojiSearchViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1897AE020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUIEmojiSearchViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49A648)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_5;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7106A28;
    v8 = 0;
    qword_1ED49A648 = _sl_dlopen();
  }

  if (!qword_1ED49A648)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIRemoteEmojiAndStickerInputView.m" lineNumber:36 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIEmojiSearchView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIEmojiSearchViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIRemoteEmojiAndStickerInputView.m" lineNumber:37 description:{@"Unable to find class %s", "TUIEmojiSearchView"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49A640 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  qword_1ED49A648 = result;
  return result;
}

void sub_1897B0518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1897B0DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _dynamicItemTypeForItem(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 3;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2;
}

void _setupBodyWithCenterAndTransform(void *a1, long double *a2, double a3, double a4)
{
  v7 = a1;
  [v7 setPosition:{a3, a4}];
  [v7 setFieldBitMask:0];
  [v7 setRotation:{atan2(a2[1], *a2)}];
  [v7 setAffectedByGravity:0];
}

void sub_1897B27C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double unionRectOfItems(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v1 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        [v10 center];
        v12 = v11;
        v14 = v13;
        [v10 bounds];
        v16 = v15;
        v18 = v17;
        v19 = v12 - v15 * 0.5;
        v20 = v14 - v17 * 0.5;
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        if (CGRectIsNull(v28))
        {
          height = v18;
          width = v16;
          y = v20;
          x = v19;
        }

        else
        {
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          v31.origin.x = v19;
          v31.origin.y = v20;
          v31.size.width = v16;
          v31.size.height = v18;
          v30 = CGRectUnion(v29, v31);
          x = v30.origin.x;
          y = v30.origin.y;
          width = v30.size.width;
          height = v30.size.height;
        }
      }

      v7 = [v1 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  return x;
}

void sub_1897BBC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = UIDynamicsDebug;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1897BC2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void ___ZL15getGLKViewClassv_block_invoke(uint64_t a1)
{
  GLKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("GLKView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_1076 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGLKViewClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDynamicsDebug.mm" lineNumber:24 description:{@"Unable to find class %s", "GLKView"}];

    __break(1u);
  }
}

void GLKitLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!GLKitLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL16GLKitLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7106BE8;
    v5 = 0;
    GLKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!GLKitLibraryCore(char **)::frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GLKitLibrary()"];
    [v1 handleFailureInFunction:v2 file:@"UIDynamicsDebug.mm" lineNumber:23 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t ___ZL16GLKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  GLKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZL21getGLKBaseEffectClassv_block_invoke(uint64_t a1)
{
  GLKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("GLKBaseEffect");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49DB58 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGLKBaseEffectClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDynamicsDebug.mm" lineNumber:25 description:{@"Unable to find class %s", "GLKBaseEffect"}];

    __break(1u);
  }
}

void sub_1897C2058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1897C24D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _UIQOSProcessingEnd();
  _Unwind_Resume(a1);
}

id AsyncFallbackPreparationQueue()
{
  if (qword_1ED499708 != -1)
  {
    dispatch_once(&qword_1ED499708, &__block_literal_global_537_0);
  }

  v1 = qword_1ED499700;

  return v1;
}

void __AsyncFallbackPreparationQueue_block_invoke()
{
  v0 = dispatch_workloop_create("com.apple.UIKit.UIImage.async-drawing");
  v1 = qword_1ED499700;
  qword_1ED499700 = v0;
}

void sub_1897CA160(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _UIDescriptionBuilderLightDescription(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"<%s: %p>", object_getClassName(v2), v2];

  return v3;
}

void sub_1897CB500(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1897CBC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

id _viewFromCoordinateSpace(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    v5 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Use of coordinate space SPI methods on UIFeedbackGenerator have been deprecated. Update to view-based UIFeedbackGenerator methods.", buf, 2u);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DBD8) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Use of coordinate space SPI methods on UIFeedbackGenerator have been deprecated. Update to view-based UIFeedbackGenerator methods.", buf, 2u);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIView * _Nullable _viewFromCoordinateSpace(__strong id<UICoordinateSpace> _Nullable)"];
      [v6 handleFailureInFunction:v7 file:@"UIFeedbackGenerator.m" lineNumber:976 description:@"Using a non-UIView coordinate space %@ is not supported on all platforms and can cause feedbacks to become no-ops. Update to view-based UIFeedbackGenerator methods.", objc_opt_class()];
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v10 = objc_opt_class();
        *buf = 138412290;
        v12 = v10;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Using a non-UIView coordinate space %@ is not supported on all platforms and can cause feedbacks to become no-ops. Update to view-based UIFeedbackGenerator methods. This will become an assert in a future version.", buf, 0xCu);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DBE0) + 8);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v6 = v8;
      v9 = objc_opt_class();
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Using a non-UIView coordinate space %@ is not supported on all platforms and can cause feedbacks to become no-ops. Update to view-based UIFeedbackGenerator methods. This will become an assert in a future version.", buf, 0xCu);
    }
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *__getCHHapticPatternLibraryKeyDeviceSilencedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary();
  result = dlsym(v2, "CHHapticPatternLibraryKeyDeviceSilenced");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A088 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreHapticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreHapticsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCHHapticPatternLibraryKeyDeviceUnsilencedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary();
  result = dlsym(v2, "CHHapticPatternLibraryKeyDeviceUnsilenced");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A090 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticPatternLibraryKeyHardwareButtonGenericToggleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary();
  result = dlsym(v2, "CHHapticPatternLibraryKeyHardwareButtonGenericToggle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A098 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _UIClickAudioFeedback(double a1)
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _feedbackSupportLevel];

  if (v3 >= 2)
  {
    v4 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:32555 systemSoundID:_UISystemSoundIDNone];
    v5 = [v4 audioParameters];
    LODWORD(v6) = 1028443341;
    [v5 setVolume:v6];

    v8 = [v4 audioParameters];
    v7 = a1;
    *&v9 = v7;
    [v8 setTransposition:v9];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1897D2C48(_Unwind_Exception *a1)
{
  v3 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1897D4AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1897D5628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1897D5E8C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long>::vector[abi:nn200100]<_UIBitSetIterator<unsigned long,256ul>,0>(void *result, uint64_t *a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v3 = *(a3 + 8);
  if (a2[1] != v3)
  {
    v4 = *a2;
    v5 = *(a2 + 16);
    v6 = a2[1];
    v7 = 0;
    while (1)
    {
      v8 = v6 >> 6;
      if (v6 >> 6 == 4)
      {
LABEL_7:
        v6 = 256;
      }

      else
      {
        v9 = v6 & 0x3F;
        v10 = -64 * v8;
        while (1)
        {
          v11 = __clz(__rbit64((*(v4 + 8 * v8) ^ -(v5 ^ 1u)) & (-1 << v9)));
          if (v11 < 0x40)
          {
            break;
          }

          v9 = 0;
          ++v8;
          v10 -= 64;
          if (v8 == 4)
          {
            goto LABEL_7;
          }
        }

        v6 = v11 - v10;
      }

      ++v7;
      v5 = (v5 & 1) == 0;
      if (v6 == v3)
      {
        std::vector<unsigned long>::__vallocate[abi:nn200100](result, v7);
      }
    }
  }

  return result;
}

double _UISmallVector<unsigned short,16ul>::insert(__int128 *a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  v4 = *(a1 + 4);
  v5 = v4 + 1;
  v6 = v4 - 1;
  v8 = *a1;
  v7 = a1[1];
  if (v6 >= a3)
  {
    do
    {
      v17[0] = v8;
      v17[1] = v7;
      v9 = *(v17 + (v6 & 0xF));
      v15 = v8;
      v16 = v7;
      *(&v15 + ((v6 + 1) & 0xF)) = v9;
      v8 = v15;
      v7 = v16;
      --v6;
    }

    while (v6 >= a3);
    *a1 = v15;
    a1[1] = v7;
  }

  *(a1 + 4) = v5;
  v10 = *a4;
  v13 = v8;
  v14 = v7;
  *(&v13 + (a3 & 0xF)) = v10;
  result = *&v13;
  v12 = v14;
  *a1 = v13;
  a1[1] = v12;
  return result;
}

__n128 _UISmallVector<unsigned short,16ul>::insert<unsigned short *>(__int128 *a1, __n128 result, uint64_t a3, uint64_t a4, __int16 *a5, __int16 *a6)
{
  v6 = *(a1 + 4);
  v7 = v6 + a6 - a5;
  v8 = v6 - 1;
  if (v8 >= a4)
  {
    v9 = *a1;
    result = a1[1];
    do
    {
      v15[0] = v9;
      v15[1] = result;
      v10 = *(v15 + (v8 & 0xF));
      v16 = v9;
      v17 = result;
      *(&v16 + (((a6 - a5) + v8) & 0xF)) = v10;
      v9 = v16;
      result = v17;
      --v8;
    }

    while (v8 >= a4);
    *a1 = v16;
    a1[1] = result;
  }

  *(a1 + 4) = v7;
  if (a5 != a6)
  {
    v11 = *a1;
    result = a1[1];
    do
    {
      v12 = *a5++;
      v13 = v11;
      v14 = result;
      *(&v13 + (a4 & 0xF)) = v12;
      v11 = v13;
      result = v14;
      *a1 = v13;
      a1[1] = result;
      ++a4;
    }

    while (a5 != a6);
  }

  return result;
}

uint64_t _ZNSt3__16vectorImNS_9allocatorImEEE16__init_with_sizeB8nn200100I22_UISmallVectorIteratorIDv16_tES7_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6)
  {
    std::vector<unsigned long>::__vallocate[abi:nn200100](result, a6);
  }

  return result;
}

void std::vector<unsigned long>::insert(void *a1, char *__src, char *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, v19);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, __src, a1[1] - __src);
    v20 = *a1;
    v21 = v16 + a1[1] - __src + 8;
    a1[1] = __src;
    v22 = (__src - v20);
    v23 = v16 - (__src - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    a1[1] = v21;
    a1[2] = 0;
    if (v24)
    {

      operator delete(v24);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v17 = v9 <= a3 || __src > a3;
    v18 = 8;
    if (v17)
    {
      v18 = 0;
    }

    *__src = *&a3[v18];
  }
}

void sub_1897D63A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__insert_with_size[abi:nn200100]<unsigned long *,unsigned long *>(uint64_t a1, char *__src, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 - v8 >= 9)
  {
    v15 = v8 - __src;
    if (v8 - __src > 8)
    {
      v23 = __src + 16;
      v24 = v8 - 16;
      v25 = *(a1 + 8);
      while (v24 < v8)
      {
        v26 = *v24;
        v24 += 8;
        *v25++ = v26;
      }

      *(a1 + 8) = v25;
      if (v8 != v23)
      {
        memmove(__src + 16, __src, v8 - v23);
      }

      *__src = *a3;
    }

    else
    {
      v17 = a4 - (a3 + v15);
      if (a4 != a3 + v15)
      {
        memmove(*(a1 + 8), (a3 + v15), a4 - (a3 + v15));
      }

      v18 = &v8[v17];
      *(a1 + 8) = &v8[v17];
      if (v15 == 8)
      {
        v19 = __src + 16;
        v20 = &v8[v17];
        if (v18 - 16 < v8)
        {
          v21 = &__src[a4];
          v22 = &__src[a4 - 16];
          do
          {
            *&v21[-a3] = *&v22[-a3];
            v22 += 8;
            v21 += 8;
          }

          while (&v22[-a3] < v8);
          v20 = &v21[-a3];
        }

        *(a1 + 8) = v20;
        if (v18 != v19)
        {
          memmove(__src + 16, __src, v18 - v19);
        }

        if (v8 != __src)
        {
          *__src = *a3;
        }
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = (&v8[-*a1] >> 3) + 2;
    if (v10 >> 61)
    {
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v11 = __src - v9;
    v12 = v7 - v9;
    v13 = v12 >> 2;
    if (v12 >> 2 <= v10)
    {
      v13 = (&v8[-*a1] >> 3) + 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, v14);
    }

    v27 = (8 * (v11 >> 3));
    *v27 = *a3;
    v27[1] = *(a3 + 8);
    memcpy(v27 + 2, __src, v8 - __src);
    v28 = *a1;
    v29 = v27 + *(a1 + 8) - __src + 16;
    *(a1 + 8) = __src;
    v30 = (__src - v28);
    v31 = v27 - (__src - v28);
    memcpy(v31, v28, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v29;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJ9_UIBitSetILm256EE14_UISmallVectorItLm16EENS_6vectorImNS_9allocatorImEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJS9_SB_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v5 = *(a1 + 48);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    (off_1EFB00DA8[v5])(&v9, a1);
LABEL_7:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a3;
    *a1 = *a3;
    *(a1 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(a1 + 48) = 2;
    return result;
  }

  v7 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v7;
    operator delete(v7);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *a3;
  *a2 = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJ9_UIBitSetILm256EE14_UISmallVectorItLm16EENS_6vectorImNS_9allocatorImEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSK_1EJS9_SB_SF_EEERKSW_EEEDcSO_DpT0_(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (v5 != -1)
  {
    if (!v5)
    {
      result = *a3;
      v7 = *(a3 + 16);
      *a2 = *a3;
      a2[1] = v7;
      return result;
    }

    (off_1EFB00DA8[v5])(&v9, v4);
  }

  *(v4 + 48) = -1;
  result = *a3;
  v8 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v8;
  *(v4 + 48) = 0;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJ9_UIBitSetILm256EE14_UISmallVectorItLm16EENS_6vectorImNS_9allocatorImEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSK_1EJS9_SB_SF_EEERKSW_EEEDcSO_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      result = *a3;
      v7 = *(a3 + 16);
      *(a2 + 32) = *(a3 + 32);
      *a2 = result;
      *(a2 + 16) = v7;
      return result;
    }

    (off_1EFB00DA8[v5])(&v9, v4);
  }

  *(v4 + 48) = -1;
  result = *a3;
  v8 = *(a3 + 32);
  *(v4 + 16) = *(a3 + 16);
  *(v4 + 32) = v8;
  *v4 = result;
  *(v4 + 48) = 1;
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJ9_UIBitSetILm256EE14_UISmallVectorItLm16EENS_6vectorImNS_9allocatorImEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSK_1EJS9_SB_SF_EEERKSW_EEEDcSO_DpT0_(uint64_t *result, uint64_t a2, char **a3)
{
  v3 = *result;
  v4 = *(*result + 48);
  if (v4 == 2)
  {
    if (a2 != a3)
    {
      v6 = *a3;
      v7 = a3[1];
      v8 = v7 - *a3;
      v9 = *(a2 + 16);
      v10 = *a2;
      if (v9 - *a2 < v8)
      {
        v11 = v8 >> 3;
        if (v10)
        {
          *(a2 + 8) = v10;
          operator delete(v10);
          v9 = 0;
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
        }

        if (!(v11 >> 61))
        {
          v12 = v9 >> 2;
          if (v9 >> 2 <= v11)
          {
            v12 = v8 >> 3;
          }

          if (v9 >= 0x7FFFFFFFFFFFFFF8)
          {
            v13 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12;
          }

          std::vector<unsigned long>::__vallocate[abi:nn200100](a2, v13);
        }

        std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
      }

      v18 = *(a2 + 8);
      v19 = v18 - v10;
      if (v18 - v10 >= v8)
      {
        if (v7 != v6)
        {
          result = memmove(v10, v6, v8);
        }

        v21 = &v10[v8];
      }

      else
      {
        v20 = &v6[v19];
        if (v18 != v10)
        {
          result = memmove(*a2, v6, v19);
          v18 = *(a2 + 8);
        }

        if (v7 != v20)
        {
          result = memmove(v18, v20, v7 - v20);
        }

        v21 = &v18[v7 - v20];
      }

      *(a2 + 8) = v21;
    }
  }

  else
  {
    v15 = *a3;
    v14 = a3[1];
    v22 = 0;
    __dst = 0;
    v24 = 0;
    if (v14 != v15)
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](&v22, (v14 - v15) >> 3);
    }

    v16 = 0;
    if (v4 != -1)
    {
      result = (off_1EFB00DA8[v4])(&v25, v3);
      v16 = __dst;
    }

    v17 = v24;
    *v3 = v22;
    *(v3 + 8) = v16;
    *(v3 + 16) = v17;
    *(v3 + 48) = 2;
  }

  return result;
}

void sub_1897D770C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _newInterfaceActionSectionsForAlertActionViewRepresentations(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__75;
  v28 = __Block_byref_object_dispose__75;
  v29 = [MEMORY[0x1E695DF70] array];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__75;
  v22[4] = __Block_byref_object_dispose__75;
  v23 = [MEMORY[0x1E695DF70] array];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = [v4 indexGreaterThanIndex:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___newInterfaceActionSectionsForAlertActionViewRepresentations_block_invoke;
  aBlock[3] = &unk_1E71071C8;
  v15 = v22;
  v16 = &v24;
  v17 = &v18;
  v5 = v4;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___newInterfaceActionSectionsForAlertActionViewRepresentations_block_invoke_2;
  v12[3] = &unk_1E71071F0;
  v12[4] = v22;
  v7 = _Block_copy(v12);
  for (i = 0; i < [v3 count]; ++i)
  {
    if (i == v19[3])
    {
      v6[2](v6);
    }

    v9 = [v3 objectAtIndexedSubscript:i];
    v7[2](v7, v9);
  }

  v6[2](v6);
  v10 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(&v24, 8);

  return v10;
}

void sub_1897DCA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1897DF090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___newInterfaceActionSectionsForAlertActionViewRepresentations_block_invoke(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v2 = *(*(*(a1 + 48) + 8) + 40);
    v3 = [[UIInterfaceActionSection alloc] initWithActions:*(*(*(a1 + 40) + 8) + 40)];
    [v2 addObject:v3];
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) indexGreaterThanIndex:*(*(*(a1 + 56) + 8) + 24)];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void ___newInterfaceActionSectionsForAlertActionViewRepresentations_block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 action];
  v4 = [v3 _interfaceActionRepresentation];

  if (!v4)
  {
    v4 = [_UIAlertControllerActionViewInterfaceAction actionWithAlertControllerActionView:v5];
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
}

void sub_1897E7A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1897E873C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1897E9CF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1897EBC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1897EDFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIKBMediaLog()
{
  if (qword_1ED49DC20 != -1)
  {
    dispatch_once(&qword_1ED49DC20, &__block_literal_global_876);
  }

  v1 = qword_1ED49DC18;

  return v1;
}

Class __getVKCStickerEffectClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49DC10)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __VisionKitCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7107490;
    v8 = 0;
    qword_1ED49DC10 = _sl_dlopen();
  }

  if (!qword_1ED49DC10)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VisionKitCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardMediaController.m" lineNumber:40 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VKCStickerEffect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVKCStickerEffectClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardMediaController.m" lineNumber:41 description:{@"Unable to find class %s", "VKCStickerEffect"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49DC08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49DC10 = result;
  return result;
}

uint64_t selectorDescription(const char *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  Name = sel_getName(a1);

  return [v1 stringWithUTF8String:Name];
}

id _UITextFormattingViewControllerCustomComponentClasses()
{
  if (qword_1ED4992A0 != -1)
  {
    dispatch_once(&qword_1ED4992A0, &__block_literal_global_209);
  }

  v1 = _MergedGlobals_1_10;

  return v1;
}

id _UITextFormattingViewControllerComponentGroupClasses()
{
  if (qword_1ED4992B0 != -1)
  {
    dispatch_once(&qword_1ED4992B0, &__block_literal_global_179);
  }

  v1 = qword_1ED4992A8;

  return v1;
}

void sub_1897F6A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1897F7C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1897FBF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreHapticsLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49A670 = result;
  return result;
}

id UIKBAnalyticsUndoPanForState(unint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = _UIGestureRecognizerStateString(a1);
  v3 = [v1 stringWithFormat:@"%@ Undo/Redo pan", v2];

  return v3;
}

__CFString *UIKBAnalyticsOperationForControlType(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown_%li", a1];
  }

  else
  {
    v2 = off_1E7107BA8[a1 - 1];
  }

  return v2;
}

__CFString *UIKBAnalyticsSelectionTypeForGranularity(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown_%li", a1];
  }

  else
  {
    v2 = off_1E7107BD0[a1];
  }

  return v2;
}

__CFString *UIKBAnalyticsSelectionTypeForGestureState(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown_%li", a1];
  }

  else
  {
    v2 = off_1E7107C00[a1];
  }

  return v2;
}

void sub_1897FF11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189800194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticPriorityHigh()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticPriorityHighSymbolLoc_ptr;
  v9 = getCHHapticPriorityHighSymbolLoc_ptr;
  if (!getCHHapticPriorityHighSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticPriorityHigh");
    getCHHapticPriorityHighSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPriority getCHHapticPriorityHigh(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1898002F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189800914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _internal_populateParamtersFromPattern(void *a1, void **a2, void **a3)
{
  v13 = a1;
  v5 = [v13 parameterCurves];
  v6 = [v5 count];

  if (v6)
  {
    v7 = *a3;
    v8 = [v13 parameterCurves];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];
  }

  else
  {
    v10 = [v13 parameters];
    v11 = [v10 count];

    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = *a2;
    v8 = [v13 parameters];
    v9 = [v12 arrayByAddingObjectsFromArray:v8];
    a3 = a2;
  }

  *a3 = v9;

LABEL_6:
}

void sub_189801434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCHHapticPatternClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCHHapticPatternClass_softClass;
  v7 = getCHHapticPatternClass_softClass;
  if (!getCHHapticPatternClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCHHapticPatternClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getCHHapticPatternClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189801558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventTypeAudioCustom()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventTypeAudioCustomSymbolLoc_ptr;
  v9 = getCHHapticEventTypeAudioCustomSymbolLoc_ptr;
  if (!getCHHapticEventTypeAudioCustomSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventTypeAudioCustom");
    getCHHapticEventTypeAudioCustomSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventType getCHHapticEventTypeAudioCustom(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:43 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18980176C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCHHapticEventClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCHHapticEventClass_softClass;
  v7 = getCHHapticEventClass_softClass;
  if (!getCHHapticEventClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCHHapticEventClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getCHHapticEventClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18980184C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventTypeHapticContinuous()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventTypeHapticContinuousSymbolLoc_ptr;
  v9 = getCHHapticEventTypeHapticContinuousSymbolLoc_ptr;
  if (!getCHHapticEventTypeHapticContinuousSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventTypeHapticContinuous");
    getCHHapticEventTypeHapticContinuousSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventType getCHHapticEventTypeHapticContinuous(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189801EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCHHapticEventParameterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCHHapticEventParameterClass_softClass;
  v7 = getCHHapticEventParameterClass_softClass;
  if (!getCHHapticEventParameterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCHHapticEventParameterClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getCHHapticEventParameterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189802144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventParameterIDHapticIntensity()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventParameterIDHapticIntensitySymbolLoc_ptr;
  v9 = getCHHapticEventParameterIDHapticIntensitySymbolLoc_ptr;
  if (!getCHHapticEventParameterIDHapticIntensitySymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventParameterIDHapticIntensity");
    getCHHapticEventParameterIDHapticIntensitySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDHapticIntensity(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:49 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1898022A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventParameterIDHapticSharpness()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventParameterIDHapticSharpnessSymbolLoc_ptr;
  v9 = getCHHapticEventParameterIDHapticSharpnessSymbolLoc_ptr;
  if (!getCHHapticEventParameterIDHapticSharpnessSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventParameterIDHapticSharpness");
    getCHHapticEventParameterIDHapticSharpnessSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDHapticSharpness(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:50 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18980240C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189804714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventTypeAudioClick()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventTypeAudioClickSymbolLoc_ptr;
  v9 = getCHHapticEventTypeAudioClickSymbolLoc_ptr;
  if (!getCHHapticEventTypeAudioClickSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventTypeAudioClick");
    getCHHapticEventTypeAudioClickSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventType getCHHapticEventTypeAudioClick(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:44 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189804FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventTypeWheelsOfTime()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventTypeWheelsOfTimeSymbolLoc_ptr;
  v9 = getCHHapticEventTypeWheelsOfTimeSymbolLoc_ptr;
  if (!getCHHapticEventTypeWheelsOfTimeSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventTypeWheelsOfTime");
    getCHHapticEventTypeWheelsOfTimeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPrivilegedEventType getCHHapticEventTypeWheelsOfTime(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:45 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189805148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventTypeAudioContinuous()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventTypeAudioContinuousSymbolLoc_ptr;
  v9 = getCHHapticEventTypeAudioContinuousSymbolLoc_ptr;
  if (!getCHHapticEventTypeAudioContinuousSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventTypeAudioContinuous");
    getCHHapticEventTypeAudioContinuousSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventType getCHHapticEventTypeAudioContinuous(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1898052AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCHHapticEventTypeAudioClickSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventTypeAudioClick");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventTypeAudioClickSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreHapticsLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  CoreHapticsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getCHHapticEventTypeWheelsOfTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventTypeWheelsOfTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventTypeWheelsOfTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventTypeAudioContinuousSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventTypeAudioContinuous");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventTypeAudioContinuousSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEngineOptionKeyLocalitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEngineOptionKeyLocality");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEngineOptionKeyLocalitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticLocalityFullGamutSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticLocalityFullGamut");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A1C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEngineOptionKeyUsageCategorySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEngineOptionKeyUsageCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A1D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticUsageCategoryUIFeedbackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticUsageCategoryUIFeedback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A1D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticPatternKeyPrioritySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticPatternKeyPriority");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticPatternKeyPrioritySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticPriorityHighSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticPriorityHigh");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticPriorityHighSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEngineOptionKeyHapticPowerUsageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEngineOptionKeyHapticPowerUsage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A1E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticPowerUsageLowSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticPowerUsageLow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A1E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticLocalityDefaultWithFullStrengthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticLocalityDefaultWithFullStrength");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A1F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEngineOptionKeyPrioritySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEngineOptionKeyPriority");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A1F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticAudioResourceKeyUseVolumeEnvelopeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticAudioResourceKeyUseVolumeEnvelope");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A200 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventTypeAudioCustomSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventTypeAudioCustom");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventTypeAudioCustomSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCHHapticEventClass_block_invoke(uint64_t a1)
{
  CoreHapticsLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHHapticEvent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHHapticEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHHapticEventClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:22 description:{@"Unable to find class %s", "CHHapticEvent"}];

    __break(1u);
  }
}

void *__getCHHapticEventTypeHapticContinuousSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventTypeHapticContinuous");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventTypeHapticContinuousSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCHHapticEventParameterClass_block_invoke(uint64_t a1)
{
  CoreHapticsLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHHapticEventParameter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHHapticEventParameterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHHapticEventParameterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:24 description:{@"Unable to find class %s", "CHHapticEventParameter"}];

    __break(1u);
  }
}

void *__getCHHapticEventParameterIDHapticIntensitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventParameterIDHapticIntensity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventParameterIDHapticIntensitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDHapticSharpnessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventParameterIDHapticSharpness");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventParameterIDHapticSharpnessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventTypeHapticTransientSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventTypeHapticTransient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventTypeHapticTransientSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getCHHapticEventParameterIDAudioVolume()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventParameterIDAudioVolumeSymbolLoc_ptr;
  v9 = getCHHapticEventParameterIDAudioVolumeSymbolLoc_ptr;
  if (!getCHHapticEventParameterIDAudioVolumeSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventParameterIDAudioVolume");
    getCHHapticEventParameterIDAudioVolumeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDAudioVolume(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:57 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189805C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventParameterIDAudioPitch()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventParameterIDAudioPitchSymbolLoc_ptr;
  v9 = getCHHapticEventParameterIDAudioPitchSymbolLoc_ptr;
  if (!getCHHapticEventParameterIDAudioPitchSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventParameterIDAudioPitch");
    getCHHapticEventParameterIDAudioPitchSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDAudioPitch(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:58 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189805D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventParameterIDAudioPan()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventParameterIDAudioPanSymbolLoc_ptr;
  v9 = getCHHapticEventParameterIDAudioPanSymbolLoc_ptr;
  if (!getCHHapticEventParameterIDAudioPanSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventParameterIDAudioPan");
    getCHHapticEventParameterIDAudioPanSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDAudioPan(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:59 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189805ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventParameterIDAttackTime()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventParameterIDAttackTimeSymbolLoc_ptr;
  v9 = getCHHapticEventParameterIDAttackTimeSymbolLoc_ptr;
  if (!getCHHapticEventParameterIDAttackTimeSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventParameterIDAttackTime");
    getCHHapticEventParameterIDAttackTimeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDAttackTime(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:52 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189806030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventParameterIDDecayTime()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventParameterIDDecayTimeSymbolLoc_ptr;
  v9 = getCHHapticEventParameterIDDecayTimeSymbolLoc_ptr;
  if (!getCHHapticEventParameterIDDecayTimeSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventParameterIDDecayTime");
    getCHHapticEventParameterIDDecayTimeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDDecayTime(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189806194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventParameterIDReleaseTime()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventParameterIDReleaseTimeSymbolLoc_ptr;
  v9 = getCHHapticEventParameterIDReleaseTimeSymbolLoc_ptr;
  if (!getCHHapticEventParameterIDReleaseTimeSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventParameterIDReleaseTime");
    getCHHapticEventParameterIDReleaseTimeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDReleaseTime(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1898062F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCHHapticEventParameterIDAudioVolumeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventParameterIDAudioVolume");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventParameterIDAudioVolumeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDAudioPitchSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventParameterIDAudioPitch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventParameterIDAudioPitchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDAudioPanSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventParameterIDAudioPan");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventParameterIDAudioPanSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDAttackTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventParameterIDAttackTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventParameterIDAttackTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDDecayTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventParameterIDDecayTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventParameterIDDecayTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDReleaseTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventParameterIDReleaseTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventParameterIDReleaseTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getCHHapticEventParameterIDAudioBrightness()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventParameterIDAudioBrightnessSymbolLoc_ptr;
  v9 = getCHHapticEventParameterIDAudioBrightnessSymbolLoc_ptr;
  if (!getCHHapticEventParameterIDAudioBrightnessSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventParameterIDAudioBrightness");
    getCHHapticEventParameterIDAudioBrightnessSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDAudioBrightness(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:60 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18980663C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEventParameterIDSustained()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventParameterIDSustainedSymbolLoc_ptr;
  v9 = getCHHapticEventParameterIDSustainedSymbolLoc_ptr;
  if (!getCHHapticEventParameterIDSustainedSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventParameterIDSustained");
    getCHHapticEventParameterIDSustainedSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDSustained(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:55 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1898067A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCHHapticEventParameterIDAudioBrightnessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventParameterIDAudioBrightness");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventParameterIDAudioBrightnessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDSustainedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticEventParameterIDSustained");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticEventParameterIDSustainedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDAudioVolumeControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDAudioVolumeControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A228 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDAudioPitchControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDAudioPitchControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A230 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDAudioPanControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDAudioPanControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A238 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDAudioAttackTimeControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDAudioAttackTimeControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A240 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDAudioDecayTimeControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDAudioDecayTimeControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A248 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDAudioReleaseTimeControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDAudioReleaseTimeControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A250 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDHapticIntensityControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDHapticIntensityControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A258 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDHapticAttackTimeControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDHapticAttackTimeControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A260 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDHapticDecayTimeControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDHapticDecayTimeControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A268 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDHapticReleaseTimeControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDHapticReleaseTimeControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A270 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticDynamicParameterIDHapticSharpnessControlSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_0();
  result = dlsym(v2, "CHHapticDynamicParameterIDHapticSharpnessControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A278 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCHHapticDynamicParameterClass_block_invoke(uint64_t a1)
{
  CoreHapticsLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHHapticDynamicParameter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49A280 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHHapticDynamicParameterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:23 description:{@"Unable to find class %s", "CHHapticDynamicParameter"}];

    __break(1u);
  }
}

NSObject *_UIFeedbackPreciseDispatchAfter(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v5 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v5);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___UIFeedbackPreciseDispatchAfter_block_invoke;
  v15[3] = &unk_1E70F4A50;
  v17 = v6;
  v9 = v8;
  v16 = v9;
  v10 = v6;
  dispatch_source_set_event_handler(v9, v15);
  v11 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v9, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_activate(v9);
  v12 = v16;
  v13 = v9;

  return v9;
}

void sub_18980A218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSDRDiagnosticReporterClass_block_invoke_0(uint64_t a1)
{
  SymptomDiagnosticReporterLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SDRDiagnosticReporter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED499ED8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSDRDiagnosticReporterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIFeedbackEngine.m" lineNumber:36 description:{@"Unable to find class %s", "SDRDiagnosticReporter"}];

    __break(1u);
  }
}

void *SymptomDiagnosticReporterLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SymptomDiagnosticReporterLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7107E10;
    v6 = 0;
    SymptomDiagnosticReporterLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SymptomDiagnosticReporterLibraryCore_frameworkLibrary;
  if (!SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SymptomDiagnosticReporterLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIFeedbackEngine.m" lineNumber:35 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SymptomDiagnosticReporterLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SymptomDiagnosticReporterLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkSymptomDiagnosticTypeEnergySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticTypeEnergy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED499EE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreHapticsLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1ED499EF0 = result;
  return result;
}

id _UIKeyboardImplLog()
{
  if (_UIKeyboardImplLog_onceToken != -1)
  {
    dispatch_once(&_UIKeyboardImplLog_onceToken, &__block_literal_global_214);
  }

  v1 = _UIKeyboardImplLog_log;

  return v1;
}

id CatalystTextInputLog_UIKit()
{
  if (CatalystTextInputLog_UIKit_onceToken != -1)
  {
    dispatch_once(&CatalystTextInputLog_UIKit_onceToken, &__block_literal_global_8_5);
  }

  v1 = CatalystTextInputLog_UIKit_log;

  return v1;
}

id _UIKeyboardTouchLog()
{
  if (_UIKeyboardTouchLog_onceToken != -1)
  {
    dispatch_once(&_UIKeyboardTouchLog_onceToken, &__block_literal_global_14_2);
  }

  v1 = _UIKeyboardTouchLog_log;

  return v1;
}

id _UIKeyboardTaskQueueLog()
{
  if (_UIKeyboardTaskQueueLog_onceToken != -1)
  {
    dispatch_once(&_UIKeyboardTaskQueueLog_onceToken, &__block_literal_global_17_1);
  }

  v1 = _UIKeyboardTaskQueueLog_log;

  return v1;
}

id _UIKeyboardStickerLog()
{
  if (_UIKeyboardStickerLog_onceToken != -1)
  {
    dispatch_once(&_UIKeyboardStickerLog_onceToken, &__block_literal_global_33_2);
  }

  v1 = _UIKeyboardStickerLog_log;

  return v1;
}

void sub_18980EEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_18980F1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18980F6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAudioServicesSetPropertySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioToolboxLibrary();
  result = dlsym(v2, "AudioServicesSetProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAudioServicesSetPropertySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AudioToolboxLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AudioToolboxLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkAudioServicesPlaySystemSoundOptionFlagsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioToolboxLibrary();
  result = dlsym(v2, "kAudioServicesPlaySystemSoundOptionFlagsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A6A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAudioServicesPlaySystemSoundOptionVolumeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioToolboxLibrary();
  result = dlsym(v2, "kAudioServicesPlaySystemSoundOptionVolumeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A6B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioToolboxLibrary();
  result = dlsym(v2, "AudioServicesPlaySystemSoundWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAudioServicesStopSystemSoundSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioToolboxLibrary();
  result = dlsym(v2, "AudioServicesStopSystemSound");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED49A6B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_189811368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAPExtensionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_1086;
  v7 = _MergedGlobals_1086;
  if (!_MergedGlobals_1086)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAPExtensionClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getAPExtensionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189815AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAPExtensionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49DC70)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AppProtectionLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71080B8;
    v8 = 0;
    qword_1ED49DC70 = _sl_dlopen();
  }

  if (!qword_1ED49DC70)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppProtectionLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIRemoteViewControllerAppProtectionMetrics.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("APExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPExtensionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIRemoteViewControllerAppProtectionMetrics.m" lineNumber:21 description:{@"Unable to find class %s", "APExtension"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1086 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppProtectionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49DC70 = result;
  return result;
}

id _UIFocusEnvironmentSafeCast(void *a1)
{
  v1 = a1;
  if ((_IsKindOfUIView(v1) & 1) != 0 || ([v1 __isKindOfUIViewController] & 1) != 0 || objc_msgSend(v1, "conformsToProtocol:", &unk_1EFE40A90))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL _UIFocusEnvironmentsHaveCommonHierarchy(void *a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = a2;
    v5 = a1;
    v6 = _UITreeFirstCommonAncestor(v5, v4, sel_parentFocusEnvironment);

    v2 = v6 == v5 || v6 == v4;
  }

  return v2;
}

uint64_t _UIFocusEnvironmentShouldUpdateFocus(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIFocusEnvironmentShouldUpdateFocus(__strong id<UIFocusEnvironment> _Nonnull, UIFocusUpdateContext *__strong _Nonnull)"}];
    [v8 handleFailureInFunction:v9 file:@"UIFocusEnvironment.m" lineNumber:187 description:@"Attempted to validate a focus update with a nil context."];
  }

  if (_UIFocusItemIsViewOrRespondsToSelector(v3))
  {
    v5 = [v3 _shouldUpdateFocusInContext:v4];
  }

  else
  {
    if (!_UIFocusEnvironmentIsViewOrViewControllerOrRespondsToSelector(v3))
    {
      v6 = 1;
      goto LABEL_9;
    }

    v5 = [v3 shouldUpdateFocusInContext:v4];
  }

  v6 = v5;
LABEL_9:

  return v6;
}

uint64_t _UIFocusEnvironmentInheritedFocusMovementStyle(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIFocusMovementStyle _UIFocusEnvironmentInheritedFocusMovementStyle(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"UIFocusEnvironment.m" lineNumber:202 description:{@"Cannot determine preferred focus movement style for nil focus environment.", 0}];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UIFocusEnvironmentInheritedFocusMovementStyle_block_invoke;
  v6[3] = &unk_1E71080D8;
  v6[4] = &v7;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v1, v6);
  v2 = v8[3];
  if (!v2)
  {
    v2 = 1;
    v8[3] = 1;
  }

  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_189816948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIFocusEnvironmentAndAncestorsAreEligibleForFocusInteraction(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _UIFocusEnvironmentAndAncestorsAreEligibleForFocusInteraction(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"UIFocusEnvironment.m" lineNumber:259 description:@"Cannot determine the focus interaction eligibility for a nil focus environment."];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UIFocusEnvironmentAndAncestorsAreEligibleForFocusInteraction_block_invoke;
  v6[3] = &unk_1E71080D8;
  v6[4] = &v7;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v1, v6);
  v2 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_189816B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIFocusEnvironmentRotaryFocusMovementAxis(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (_UIFocusEnvironmentIsViewOrViewControllerOrRespondsToSelector(v1))
    {
      v3 = [v2 _rotaryFocusMovementAxis];
    }

    else
    {
      v3 = _UIFocusEnvironmentDefaultRotaryFocusMovementAxis(v2);
    }

    v4 = v3;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

uint64_t _UIFocusEnvironmentDefaultRotaryFocusMovementAxis(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 focusItemContainer];
    if (_UIFocusItemContainerIsScrollableContainer(v3) && _UIFocusEnvironmentPrefersFocusContainment(v2))
    {
      v4 = _UIFocusItemScrollableContainerPrimaryAxis(v3);
      if (v4 == 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = -1;
      }

      if (v4 == 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

uint64_t _UIFocusEnvironmentPrefersFocusContainment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    IsScrollableContainer = [v1 _prefersFocusContainment];
  }

  else
  {
    v3 = [v1 focusItemContainer];

    IsScrollableContainer = _UIFocusItemContainerIsScrollableContainer(v3);
    v1 = v3;
  }

  return IsScrollableContainer;
}

uint64_t _UIFocusEnvironmentResolvedRotaryFocusMovementAxis(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = -1;
  if (!v3)
  {
    goto LABEL_11;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__81;
  v28 = __Block_byref_object_dispose__81;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___UIFocusEnvironmentResolvedRotaryFocusMovementAxis_block_invoke;
  v19[3] = &unk_1E7108128;
  v19[4] = &v20;
  v19[5] = &v24;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v3, v19);
  if (v21[3] == -1)
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v6 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v8 = _UIInternalPreference_FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis)
      {
        while (v6 >= v8)
        {
          _UIInternalPreferenceSync(v6, &_UIInternalPreference_FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis, @"FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis", _UIInternalPreferenceUpdateBool);
          v8 = _UIInternalPreference_FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis;
          if (v6 == _UIInternalPreference_FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis)
          {
            goto LABEL_6;
          }
        }

        if (byte_1EA95E33C)
        {
          v9 = _UIFocusNearestAncestorEnvironmentScrollableContainer(v4, 1);
          v10 = v9;
          if (v9)
          {
            v11 = [v9 scrollableContainer];
            [v11 visibleSize];
            v13 = v12;
            v15 = v14;

            if (v13 > v15)
            {
              v16 = 1;
LABEL_22:
              v21[3] = v16;
              v17 = [v10 owningEnvironment];
              v18 = v25[5];
              v25[5] = v17;

              goto LABEL_23;
            }

            if (v15 > v13)
            {
              v16 = 2;
              goto LABEL_22;
            }
          }

LABEL_23:
        }
      }
    }
  }

LABEL_6:
  v5 = v21[3];
  if (v5 == -1)
  {
    v5 = 0;
    v21[3] = 0;
  }

  if (a2)
  {
    *a2 = v25[5];
    v5 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

LABEL_11:
  return v5;
}

void sub_189816F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIFocusEnvironmentAllowsFocusToLeaveViaHeading(void *a1, uint64_t a2)
{
  v3 = a1;
  if (_UIFocusItemIsViewOrRespondsToSelector(v3))
  {
    v4 = [v3 _allowsFocusToLeaveViaHeading:a2];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

id _activityItemsConfigurationForTarget(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 _effectiveActivityItemsConfigurationForSender:v4];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 _effectiveActivityItemsConfiguration];
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 activityItemsConfiguration];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_189818664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _viewControllerToPresentFromBasedOnResponder(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [(UIView *)v1 __viewDelegate];
LABEL_5:
    v3 = v2;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = _preferredUIWindowInWindowScene(v1);
    v3 = [v5 rootViewController];
  }

  else
  {
    v3 = 0;
  }

LABEL_6:

  return v3;
}

id _preferredUIWindowInWindowScene(void *a1)
{
  v1 = a1;
  v2 = [v1 keyWindow];
  if (!v2)
  {
    v3 = [v1 _visibleWindows];
    v2 = [v3 firstObject];
  }

  return v2;
}

uint64_t _UIFocusHeadingIsEffectivelyLeft(unsigned int a1, void *a2)
{
  v3 = a2;
  v4 = [UIFocusSystem focusSystemForEnvironment:v3];
  v5 = [v4 _shouldReverseLayoutDirectionForEnvironment:v3];

  if ((a1 & 4) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = (a1 >> 5) & 1;
  }

  if ((a1 & 8) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = (a1 >> 4) & 1;
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t _UIFocusHeadingIsEffectivelyRight(unsigned int a1, void *a2)
{
  v3 = a2;
  v4 = [UIFocusSystem focusSystemForEnvironment:v3];
  v5 = [v4 _shouldReverseLayoutDirectionForEnvironment:v3];

  if ((a1 & 8) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = (a1 >> 4) & 1;
  }

  if ((a1 & 4) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = (a1 >> 5) & 1;
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

BOOL _UIRectIntersectsRectAlongFocusHeading(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if ((a1 & 3) != 0)
  {
    MinX = CGRectGetMinX(*&a2);
    v30.origin.x = a6;
    v30.origin.y = a7;
    v30.size.width = a8;
    v30.size.height = a9;
    if (MinX < CGRectGetMaxX(v30))
    {
      v31.origin.x = a2;
      v31.origin.y = a3;
      v31.size.width = a4;
      v31.size.height = a5;
      MaxX = CGRectGetMaxX(v31);
      v32.origin.x = a6;
      v32.origin.y = a7;
      v32.size.width = a8;
      v32.size.height = a9;
      v18 = CGRectGetMinX(v32);
      return MaxX > v18;
    }
  }

  else if ((a1 & 0xC) != 0)
  {
    MinY = CGRectGetMinY(*&a2);
    v33.origin.x = a6;
    v33.origin.y = a7;
    v33.size.width = a8;
    v33.size.height = a9;
    if (MinY < CGRectGetMaxY(v33))
    {
      v34.origin.x = a2;
      v34.origin.y = a3;
      v34.size.width = a4;
      v34.size.height = a5;
      MaxX = CGRectGetMaxY(v34);
      v35.origin.x = a6;
      v35.origin.y = a7;
      v35.size.width = a8;
      v35.size.height = a9;
      v18 = CGRectGetMinY(v35);
      return MaxX > v18;
    }
  }

  return 0;
}

uint64_t _UIFocusRectCompare(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v18 = a4 + a6 * 0.5;
  v28.origin.x = a7;
  v28.origin.y = a8;
  v28.size.width = a9;
  v28.size.height = a10;
  if ((CGRectGetMinY(v28) >= v18 || (v29.origin.x = a7, v29.origin.y = a8, v29.size.width = a9, v29.size.height = a10, v18 >= CGRectGetMaxY(v29)) || (v30.origin.x = a7, v30.origin.y = a8, v30.size.width = a9, v30.size.height = a10, v34.origin.x = a3, v34.size.width = a5, v34.origin.y = a4, v34.size.height = a6, CGRectContainsRect(v30, v34))) && ((v19 = a8 + a10 * 0.5, v31.origin.x = a3, v31.size.width = a5, v31.origin.y = a4, v31.size.height = a6, CGRectGetMinY(v31) >= v19) || (v32.origin.x = a3, v32.size.width = a5, v32.origin.y = a4, v32.size.height = a6, v19 >= CGRectGetMaxY(v32)) || (v33.origin.x = a3, v33.size.width = a5, v33.origin.y = a4, v33.size.height = a6, v35.origin.x = a7, v35.origin.y = a8, v35.size.width = a9, v35.size.height = a10, CGRectContainsRect(v33, v35))))
  {
    v20 = -1;
    if (v18 > v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = -1;
    }

    if (v18 <= v19)
    {
      v20 = 1;
    }

    if (a2)
    {
      return v20;
    }

    else
    {
      return v21;
    }
  }

  else
  {
    v23 = a3 + a5 * 0.5;
    v24 = a7 + a9 * 0.5;
    v25 = v23 >= v24;
    if (!a1)
    {
      v25 = v23 <= v24;
    }

    if (v25)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t _UIFocusItemCompare(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 parentFocusEnvironment];
  v6 = [v4 parentFocusEnvironment];
  v7 = _UIFocusEnvironmentFirstCommonAncestor(v5, v6);

  v8 = [UIFocusSystem focusSystemForEnvironment:v7];
  v9 = [v8 behavior];
  v10 = [v9 shouldUseAccessibilityCompareForItemGeometry];

  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [v3 accessibilityCompareGeometry:v4];
  }

  else
  {
    v12 = v7;
    v13 = v3;
    v14 = v4;
    v15 = v12;
    if (!v12)
    {
      v16 = [v13 parentFocusEnvironment];
      v17 = [v14 parentFocusEnvironment];
      v15 = _UIFocusEnvironmentFirstCommonAncestor(v16, v17);
    }

    v18 = [UIFocusSystem focusSystemForEnvironment:v15];
    v19 = [v18 focusItemContainer];
    v20 = [v19 coordinateSpace];

    [v13 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v14 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    if (v20)
    {
      v60.origin.x = _UIFocusItemFrameInCoordinateSpace(v13, v20);
      v55 = v34;
      v56 = v36;
      v37 = v22;
      x = v60.origin.x;
      v39 = v30;
      v40 = v24;
      y = v60.origin.y;
      v57 = v32;
      v58 = v28;
      v42 = v26;
      width = v60.size.width;
      height = v60.size.height;
      IsNull = CGRectIsNull(v60);
      if (!IsNull)
      {
        v37 = x;
        v40 = y;
        v42 = width;
      }

      v46 = v58;
      if (!IsNull)
      {
        v46 = height;
      }

      v59 = v46;
      v61.origin.x = _UIFocusItemFrameInCoordinateSpace(v14, v20);
      v47 = v61.origin.x;
      v48 = v61.origin.y;
      v49 = v61.size.width;
      v50 = v61.size.height;
      v51 = CGRectIsNull(v61);
      if (!v51)
      {
        v39 = v47;
      }

      v22 = v37;
      v36 = v56;
      v52 = v57;
      if (!v51)
      {
        v52 = v48;
      }

      v24 = v40;
      v30 = v39;
      v34 = v55;
      if (!v51)
      {
        v34 = v49;
      }

      v26 = v42;
      if (!v51)
      {
        v36 = v50;
      }

      v32 = v52;
      v28 = v59;
    }

    v53 = [UIFocusSystem focusSystemForEnvironment:v12];
    v11 = _UIFocusRectCompare([v53 _shouldReverseLayoutDirectionForEnvironment:v12], objc_msgSend(v53, "_shouldReverseLinearWrappingForEnvironment:", v12), v22, v24, v26, v28, v30, v32, v34, v36);
  }

  return v11;
}

id _UIFocusGetNextItemFromList(void *a1, void *a2, __int16 a3, int a4)
{
  v7 = a1;
  v8 = a2;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<UIFocusItem>  _Nonnull _UIFocusGetNextItemFromList(id<UIFocusItem>  _Nullable __strong, NSArray<id<UIFocusItem>> *__strong _Nonnull, UIFocusHeading, BOOL)"}];
    [v13 handleFailureInFunction:v14 file:@"UIFocusGeometry.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"list != nil"}];
  }

  if (![v8 count])
  {
    goto LABEL_11;
  }

  if ((a3 & 0x300) != 0)
  {
    if ((a3 & 0x100) == 0)
    {
LABEL_6:
      v9 = [v8 count] - 1;
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    goto LABEL_22;
  }

  v10 = [v8 indexOfObject:v7];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  v9 = v10;
  if ((a3 & 0x10) != 0)
  {
    if (v10 >= [v8 count] - 1)
    {
      if (a4)
      {
        v9 = 0;
      }

      goto LABEL_23;
    }

    ++v9;
LABEL_7:
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x20) != 0)
  {
    if (v10)
    {
      v9 = v10 - 1;
      goto LABEL_7;
    }

    if (a4)
    {
      goto LABEL_6;
    }

LABEL_22:
    v9 = 0;
  }

LABEL_23:
  v11 = [v8 objectAtIndexedSubscript:v9];
LABEL_24:

  return v11;
}

__CFString *_UIStringFromGroupFilter(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"CurrentGroup";
  }

  if (a1 == 2)
  {
    return @"PrimaryItems";
  }

  else
  {
    return v1;
  }
}

BOOL _UIFocusItemIsFocused(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _UIFocusItemIsFocused(__strong id<UIFocusItem> _Nonnull)"];
    [v6 handleFailureInFunction:v7 file:@"UIFocusItem.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v2 = [UIFocusSystem focusSystemForEnvironment:v1];
  v3 = [v2 focusedItem];
  v4 = v3 == v1;

  return v4;
}

uint64_t _UIFocusItemIsFocusedOrFocusable(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _UIFocusItemIsFocusedOrFocusable(__strong id<UIFocusItem> _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"UIFocusItem.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v2 = [UIFocusSystem focusSystemForEnvironment:v1];
  if (v2)
  {
    IsFocusedOrFocusableInFocusSystem = __UIFocusItemIsFocusedOrFocusableInFocusSystem(v1, v2, 0, 1);
  }

  else
  {
    IsFocusedOrFocusableInFocusSystem = 0;
  }

  return IsFocusedOrFocusableInFocusSystem;
}

uint64_t _UIFocusItemDeferralModeForItem(void *a1)
{
  v1 = a1;
  if (_UIFocusItemIsViewOrRespondsToSelector(v1))
  {
    v2 = [v1 focusItemDeferralMode];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_18981E710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1898233C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189829100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TextInputUILibraryCore_block_invoke_6()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_2 = result;
  return result;
}

id _UIFocusNearestAncestorEnvironmentScrollableContainer(void *a1, int a2)
{
  v3 = a1;
  if (!v3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIFocusEnvironmentScrollableContainerTuple * _Nullable _UIFocusNearestAncestorEnvironmentScrollableContainer(__strong id<UIFocusEnvironment> _Nonnull, BOOL)"}];
    [v14 handleFailureInFunction:v15 file:@"UIFocusItemContainer.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v4 = _UIFocusEnvironmentParentEnvironment(v3);
  if (!v4)
  {
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v5 = v4;
  v6 = v3;
  while (!_UIFocusEnvironmentIsViewOrViewControllerOrRespondsToSelector(v5))
  {
LABEL_19:
    v6 = v5;
    v5 = _UIFocusEnvironmentParentEnvironment(v5);
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v7 = [v5 focusItemContainer];
  v8 = v7;
  if (v7 && _UIFocusItemContainerIsScrollableContainer(v7))
  {
    v9 = v8;
    if (_UIFocusEnvironmentPrefersFocusContainment(v5))
    {
      v12 = [_UIFocusEnvironmentScrollableContainerTuple tupleWithOwningEnvironment:v5 scrollableContainer:v9];

      goto LABEL_27;
    }
  }

  if (!a2 || !_UIFocusEnvironmentIsViewOrViewControllerOrRespondsToSelector(v6) || (v10 = [v6 _focusFallbackScroller]) == 0)
  {
    v11 = v5;
    goto LABEL_18;
  }

  v11 = v10;
  if (!_UIFocusEnvironmentPrefersFocusContainment(v10))
  {
LABEL_18:

    v5 = v11;
    goto LABEL_19;
  }

  v9 = [v11 focusItemContainer];

  if (!v9)
  {
    v8 = 0;
    goto LABEL_18;
  }

  if (!_UIFocusItemContainerIsScrollableContainer(v9))
  {
    v8 = v9;
    goto LABEL_18;
  }

  v12 = [_UIFocusEnvironmentScrollableContainerTuple tupleWithOwningEnvironment:v11 scrollableContainer:v9];
LABEL_27:

LABEL_23:

  return v12;
}

id _UIFocusAncestorEnvironmentScrollableContainers(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  if (v3)
  {
    v5 = v3;
    do
    {
      v6 = _UIFocusNearestAncestorEnvironmentScrollableContainer(v5, a2);
      if (v6)
      {
        [v4 addObject:v6];
      }

      v5 = [v6 owningEnvironment];
    }

    while (v5);
  }

  v7 = [v4 array];

  return v7;
}

double _UIFocusItemScrollableContainerContentBounds(void *a1)
{
  v1 = a1;
  if (_UIFocusItemScrollableContainerIsScrollViewOrRespondsToSelector(v1))
  {
    [v1 _focusScrollableContentBounds];
    v3 = v2;
  }

  else
  {
    v3 = *MEMORY[0x1E695EFF8];
    [v1 contentSize];
  }

  return v3;
}

uint64_t _UIFocusItemScrollableContainerPrimaryAxis(void *a1)
{
  v1 = a1;
  if (_UIFocusItemScrollableContainerIsScrollViewOrRespondsToSelector(v1))
  {
    v2 = [v1 _focusPrimaryScrollableAxis];
  }

  else
  {
    v2 = _UIFocusItemScrollableContainerDefaultPrimaryAxis(v1);
  }

  v3 = v2;

  return v3;
}

uint64_t _UIFocusItemScrollableContainerDefaultPrimaryAxis(void *a1)
{
  v1 = a1;
  [v1 contentSize];
  v3 = v2;
  v5 = v4;
  CanScrollX = _UIFocusItemScrollableContainerCanScrollX(v1);
  CanScrollY = _UIFocusItemScrollableContainerCanScrollY(v1);

  if (CanScrollX && CanScrollY)
  {
    v8 = 2;
    if (v5 <= v3)
    {
      v8 = 0;
    }

    if (v3 <= v5)
    {
      return v8;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v10 = 2;
    if (!CanScrollY)
    {
      v10 = 0;
    }

    if (CanScrollX)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }
}

id _UIFocusEngineCommonEnvironmentScrollableContainerForItems(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 item];
  if (v5 && (v6 = v5, [v4 item], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v3 ancestorEnvironmentScrollableContainers];
    v9 = [v4 ancestorEnvironmentScrollableContainers];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___UIFocusEngineCommonEnvironmentScrollableContainerForItems_block_invoke;
    v14[3] = &unk_1E7108440;
    v10 = v8;
    v15 = v10;
    v11 = [v9 indexOfObjectPassingTest:v14];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v9 objectAtIndex:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t _UIFocusEngineScrollableContainerCanScroll(void *a1)
{
  v1 = a1;
  if ((_UIFocusItemScrollableContainerCanScrollX(v1) & 1) != 0 || _UIFocusItemScrollableContainerCanScrollY(v1))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [v1 _focusIsScrollableContainer];
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _UIFocusEngineFirstScrollableContainerTupleThatScrollsForItem(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [a1 ancestorEnvironmentScrollableContainers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        v6 = [v5 scrollableContainer];
        CanScroll = _UIFocusEngineScrollableContainerCanScroll(v6);

        if (CanScroll)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void sub_18982D170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18982E308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_18982EABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18982EDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18982F12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UIConfigurationColorTransformerGrayscale_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if ([v2 getRed:&v11 green:&v10 blue:&v9 alpha:&v8])
  {
    v3 = v11 * 0.2126 + v10 * 0.7152 + v9 * 0.0722;
    if (v3 <= 0.0031308)
    {
      v4 = v3 * 12.92;
    }

    else
    {
      v4 = pow(v3, 0.416666667) * 1.055 + -0.055;
    }

    v5 = [UIColor colorWithWhite:v4 alpha:v8];
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v6;
}

id _colorWithReducedAlpha(void *a1, double a2)
{
  v3 = a1;
  [v3 alphaComponent];
  v5 = [v3 colorWithAlphaComponent:v4 * a2];

  return v5;
}

id UIConfigurationColorTransformerDynamicLightAlpha_block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [v3 userInterfaceStyle] == 1;

  v5 = _colorWithReducedAlpha(v2, dbl_18A67B470[v4]);

  return v5;
}

id UIConfigurationColorTransformerSecondaySystemFillAt75PercentAlpha_block_invoke_17()
{
  v0 = +[UIColor secondarySystemFillColor];
  [v0 alphaComponent];
  v2 = [v0 colorWithAlphaComponent:v1 * 0.75];

  return v2;
}

id UIConfigurationColorTransformerGrayscaleAlpha20_block_invoke_18(uint64_t a1, void *a2)
{
  v2 = UIConfigurationColorTransformerGrayscale_block_invoke(a1, a2);
  v3 = _colorWithReducedAlpha(v2, 0.2);

  return v3;
}

id _colorByAddingWhite(void *a1, double a2)
{
  v3 = a1;
  v4 = +[UIColor whiteColor];
  v5 = [v4 colorWithAlphaComponent:a2];

  v6 = [v3 _colorBlendedWithColor:v5];

  return v6;
}

id _colorDesaturated(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v5 = [v4 userInterfaceStyle];

  if (v5 != 2)
  {
    v28 = 0.0;
    v29 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    [v3 getRed:&v29 green:&v28 blue:&v27 alpha:&v26];
    v24 = 0.0;
    v25 = 0.0;
    v23 = 0.0;
    *v10.i64 = v28;
    *v9.i64 = v29;
    _NXRGBToHSB(&v25, &v24, &v23, v9, v10, v27);
    if (v23 == 0.0)
    {
      v11 = 1.25;
    }

    else
    {
      v11 = fmax(1.0 / v23, 1.0);
      if (v11 > 1.25)
      {
        v11 = 1.25;
      }
    }

    v17 = v23 * v11;
    v18 = v24 * (v11 + -1.25 + 1.0);
    v12 = [UIColor alloc];
    v13 = v25;
    v16 = v26;
    v14 = v18;
    v15 = v17;
    goto LABEL_13;
  }

  v28 = 0.0;
  v29 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  [v3 getRed:&v29 green:&v28 blue:&v27 alpha:&v26];
  *v6.i64 = v29;
  *v7.i64 = v28;
  if (fabs(v29 + -1.0) > 0.001)
  {
    v8 = v27;
LABEL_10:
    v24 = 0.0;
    v25 = 0.0;
    v23 = 0.0;
    _NXRGBToHSB(&v25, &v24, &v23, v6, v7, v8);
    v12 = [UIColor alloc];
    v14 = v24;
    v13 = v25;
    v15 = v23 * 0.8;
    v16 = v26;
LABEL_13:
    v19 = [(UIColor *)v12 initWithHue:v13 saturation:v14 brightness:v15 alpha:v16];
    goto LABEL_14;
  }

  v8 = v27;
  if (fabs(v28 + -1.0) > 0.001 || fabs(v27 + -1.0) > 0.001)
  {
    goto LABEL_10;
  }

  v19 = v3;
LABEL_14:
  v20 = v19;
  if (a2)
  {
    v21 = _colorDesaturated(v19, a2 - 1);

    v20 = v21;
  }

  return v20;
}

__CFString *_UIConfigurationColorTransformerIdentifierToString(unint64_t a1)
{
  if (a1 > 0x1C)
  {
    return @"Custom";
  }

  else
  {
    return off_1E7108670[a1];
  }
}

id _UIConfigurationCompatibilityColorForHighlightedState(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___UIConfigurationCompatibilityColorForHighlightedState_block_invoke;
    v5[3] = &unk_1E7108578;
    v7 = &__block_literal_global_14_3;
    v6 = v1;
    v3 = [UIColor colorWithDynamicProvider:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1898318DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_189833FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189835674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189835B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189838A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UITextAnimationWithName(void *a1)
{
  v1 = a1;
  _SwiftUITextAnimationProviderClass();
  v3 = v2;
  if (!v2 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D920];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id  _Nullable UITextAnimationWithName(NSString *__strong _Nonnull)"];
    [v4 raise:v5 format:{@"[SwiftUI] Missing SPI: %@.", v6}];
  }

  v7 = [v3 animationWithName:v1];

  return v7;
}

id UITextAnimationWithNameAndLocaleIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  _SwiftUITextAnimationProviderClass();
  v6 = v5;
  if (!v5 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D920];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable UITextAnimationWithNameAndLocaleIdentifier(NSString *__strong _Nonnull, NSString *__strong _Nonnull)"}];
    [v7 raise:v8 format:{@"[SwiftUI] Missing SPI: %@.", v9}];
  }

  v10 = [v6 animationWithName:v3 localeIdentifier:v4];

  return v10;
}

id UITextAnimationNamesForDomain(void *a1)
{
  v1 = a1;
  _SwiftUITextAnimationProviderClass();
  v3 = v2;
  if (!v2 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D920];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSArray<NSString *> * _Nonnull UITextAnimationNamesForDomain(NSString * _Nullable __strong)"];
    [v4 raise:v5 format:{@"[SwiftUI] Missing SPI: %@.", v6}];
  }

  v7 = [v3 animationNamesForDomain:v1];

  return v7;
}

uint64_t __SwiftUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49DD28 = result;
  return result;
}

void sub_18983ABA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIAttributedTitleForTitle(void *a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = *off_1E70EC918;
    v14[0] = v5;
    v7 = MEMORY[0x1E695DF20];
    v8 = a1;
    v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v9 mutableCopy];

    if ([v6 count])
    {
      [v10 addEntriesFromDictionary:v6];
    }

    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

UIEventButtonMask UIEventButtonMaskForButtonNumber(NSInteger buttonNumber)
{
  if (buttonNumber <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = buttonNumber;
  }

  v2 = 1 << (v1 - 1);
  if (buttonNumber >= 0x3F)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

id _UINonComponentEventHitTestGestureRecognizers(void *a1, void *a2, void *a3, double a4, double a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___UINonComponentEventHitTestGestureRecognizers_block_invoke;
  v25[3] = &__block_descriptor_48_e32__CAPoint3D_ddd_16__0__UIWindow_8l;
  *&v25[4] = a4;
  *&v25[5] = a5;
  v12 = _UIHitTestGestureContainer(v9, v10, a3, 1, v25, 1.0);
  v13 = objc_opt_new();
  if (v12)
  {
    do
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = [v12 gestureRecognizers];
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v15)
      {
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            if ([v18 isEnabled] && objc_msgSend(v18, "state") <= 2 && objc_msgSend(v18, "_shouldReceiveEvent:", v9) && -[UIGestureRecognizer _delegateShouldReceiveEvent:](v18, v9))
            {
              [v13 addObject:v18];
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v15);
      }

      v19 = [v12 _parentGestureRecognizerContainer];

      v12 = v19;
    }

    while (v19);
  }

  return v13;
}

double _UIFocusEngineSensitivityForEdgeLength(double a1)
{
  v1 = 6.0;
  v2 = 70.0;
  if (a1 >= 70.0)
  {
    v1 = 1.0;
    if (a1 <= 1700.0)
    {
      v3 = 6.0;
      v4 = &unk_18A67B538;
      v5 = 6;
      while (1)
      {
        v6 = *(v4 - 1);
        v1 = *v4;
        if (v6 == a1)
        {
          break;
        }

        if (v6 >= a1)
        {
          if (v6 > a1)
          {
            return v1 * ((a1 - v2) / (v6 - v2)) + v3 * (1.0 - (a1 - v2) / (v6 - v2));
          }
        }

        else
        {
          v2 = *(v4 - 1);
          v3 = *v4;
        }

        v4 += 2;
        if (!--v5)
        {
          v1 = 1.0;
          v6 = 1700.0;
          return v1 * ((a1 - v2) / (v6 - v2)) + v3 * (1.0 - (a1 - v2) / (v6 - v2));
        }
      }
    }
  }

  return v1;
}

double _UIFocusEngineAcceleratedSpeedForSpeed(uint64_t a1, int a2, int a3, double a4)
{
  v5 = 1.0;
  v6 = 0.5;
  if (!a3)
  {
    v6 = 1.0;
  }

  v7 = 0.1;
  if (a3)
  {
    v7 = 0.15;
  }

  if (a2)
  {
    v6 = -0.4;
    v7 = 3.38;
  }

  v8 = a1 == 2;
  if (a1 == 2)
  {
    v5 = v6;
  }

  v9 = 0.16;
  if (a1 == 2)
  {
    v9 = v7;
  }

  v10 = 15.0;
  if ((v8 & a2) != 0)
  {
    v10 = 0.75;
  }

  v11 = 225.0;
  if ((v8 & a2) != 0)
  {
    v11 = 0.5625;
  }

  if (v10 <= a4)
  {
    v12 = (v5 + v10 * (v9 + v9)) * a4 - (v10 * (v5 + v10 * (v9 + v9)) - (v11 * v9 + v10 * v5));
  }

  else
  {
    v12 = a4 * a4 * v9 + v5 * a4;
  }

  if (a1 == 2 && (v13 = UIFocusGetSensitivitySetting(), v13 < 3))
  {
    v14 = dbl_18A67B600[v13];
  }

  else
  {
    SensitivitySetting = UIFocusGetSensitivitySetting();
    v14 = 0.65;
    if (SensitivitySetting != 1)
    {
      v14 = 0.5;
    }

    if (SensitivitySetting == 2)
    {
      v14 = 0.8125;
    }
  }

  return (v12 * v14 + (1.0 - v14) * a4) * 2.15;
}

id _UIFocusEngineJoystickTimer(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:a1 target:a2 selector:0 userInfo:0 repeats:?];
  v3 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v3 addTimer:v2 forMode:*MEMORY[0x1E695DA28]];

  return v2;
}

void sub_189845F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t UITouchAuthenticationAuditTokenIsPlatformBinary(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v8);
  if (v3)
  {
    v4 = v3;
    v5 = (SecTaskGetCodeSignStatus(v3) >> 26) & 1;
    CFRelease(v4);
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("TouchAuthentication", &UITouchAuthenticationAuditTokenIsPlatformBinary___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8.val[0]) = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unable to create security task for checking code sign status", &v8, 2u);
    }

    return 0;
  }

  return v5;
}

id UITouchAuthenticationBundleRecordForAuditToken(_OWORD *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v1 = a1[1];
  *buf = *a1;
  v11 = v1;
  v2 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:buf error:&v9];
  v3 = v9;
  if (v3)
  {
    v4 = *(__UILogGetCategoryCachedImpl("TouchAuthentication", &UITouchAuthenticationBundleRecordForAuditToken___s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 localizedDescription];
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Unable to fetch bundle record for audit token: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  return v7;
}

void sub_189857428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

uint64_t _OpaqueIsEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:{a2, v2, v3}];
  }
}

double _UIRectThatJustBarelyIntersectsRect(double a1, CGFloat y, CGFloat width, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  x = a1;
  MaxX = CGRectGetMaxX(*&a1);
  v34 = a5;
  v37.origin.x = a5;
  v37.origin.y = a6;
  rect = a7;
  v37.size.width = a7;
  v37.size.height = a8;
  v16 = a8;
  v35 = a8;
  if (MaxX <= CGRectGetMinX(v37))
  {
    v18 = a6;
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = rect;
    v38.size.height = v16;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = a4;
    MinY = CGRectGetMinY(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = a4;
    v41.size.height = CGRectGetHeight(v40);
    v41.size.width = 90.0;
    v41.origin.x = MinX;
    v41.origin.y = MinY;
    v16 = v35;
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = a4;
    v42 = CGRectUnion(v41, v63);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
  }

  else
  {
    height = a4;
    v18 = a6;
  }

  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v21 = CGRectGetMinX(v43);
  v22 = v34;
  v44.origin.x = v34;
  v44.origin.y = v18;
  v44.size.width = rect;
  v44.size.height = v16;
  if (v21 >= CGRectGetMaxX(v44))
  {
    v45.origin.x = v34;
    v45.origin.y = v18;
    v45.size.width = rect;
    v45.size.height = v16;
    v23 = CGRectGetMaxX(v45) + -90.0;
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v24 = CGRectGetMinY(v46);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v48.size.height = CGRectGetHeight(v47);
    v48.size.width = 90.0;
    v48.origin.x = v23;
    v48.origin.y = v24;
    v22 = v34;
    v16 = v35;
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v49 = CGRectUnion(v48, v64);
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MaxY = CGRectGetMaxY(v50);
  v51.origin.x = v22;
  v51.origin.y = v18;
  v51.size.width = rect;
  v51.size.height = v16;
  if (MaxY <= CGRectGetMinY(v51))
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v26 = CGRectGetMinX(v52);
    v53.origin.x = v22;
    v53.origin.y = v18;
    v53.size.width = rect;
    v53.size.height = v16;
    v27 = v22;
    v28 = CGRectGetMinY(v53);
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v55.size.width = CGRectGetWidth(v54);
    v55.size.height = 90.0;
    v55.origin.x = v26;
    v55.origin.y = v28;
    v22 = v27;
    v16 = v35;
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    v56 = CGRectUnion(v55, v65);
    x = v56.origin.x;
    y = v56.origin.y;
    width = v56.size.width;
    height = v56.size.height;
  }

  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v29 = CGRectGetMinY(v57);
  v58.origin.x = v22;
  v58.origin.y = v18;
  v58.size.width = rect;
  v58.size.height = v16;
  if (v29 >= CGRectGetMaxY(v58))
  {
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    v30 = CGRectGetMinX(v59);
    v60.origin.x = v22;
    v60.origin.y = v18;
    v60.size.width = rect;
    v60.size.height = v16;
    v31 = CGRectGetMaxY(v60) + -90.0;
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    v62.size.width = CGRectGetWidth(v61);
    v62.size.height = 90.0;
    v62.origin.x = v30;
    v62.origin.y = v31;
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    *&x = CGRectUnion(v62, v66);
  }

  return x;
}

void sub_18985937C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18985A1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18985B0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED49DEC0 = result;
  return result;
}

uint64_t _UIAXAssignFocusToItemWithOptions(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = _AXSApplicationAccessibilityEnabled();
  v5 = 0;
  if (v3 && v4)
  {
    v6 = [UIFocusSystem focusSystemForEnvironment:v3];
    if (v6)
    {
      v7 = _UIFocusEnvironmentContainingView(v3);
      v8 = v7;
      if (v7 && _UIFocusEnvironmentAndAncestorsAreEligibleForFocusInteraction(v7))
      {
        v9 = [(_UIFocusUpdateRequest *)[_UIAccessibilityFocusUpdateRequest alloc] initWithFocusSystem:v6 environment:v3];
        [(_UIAccessibilityFocusUpdateRequest *)v9 setOptions:a2];
        [(_UIFocusUpdateRequest *)v9 setAllowsDeferral:0];
        v10 = [[UIFocusUpdateContext alloc] _initWithFocusUpdateRequest:v9];
        v5 = [v6 _updateFocusImmediatelyWithContext:v10];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

double _UIFocusShiftAndExpandRectAlongFocusMovement(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v10 = [v9 _isLinearMovement];
  v11 = [v9 heading];

  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  v43 = CGRectIntegral(v42);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  v16 = CGRectGetWidth(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v17 = -CGRectGetHeight(v44);
  v18 = 0.0;
  if (v11)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0.0;
  }

  if ((v11 & 8) != 0)
  {
    v20 = -v16;
  }

  else
  {
    v20 = 0.0;
  }

  if ((v11 & 2) == 0)
  {
    v17 = 0.0;
  }

  if ((v11 & 4) != 0)
  {
    v18 = -v16;
  }

  v21 = x + v18;
  v22 = width - (v20 + v18);
  if (!v10)
  {
    v38 = y + v19;
    v39 = height - (v19 + v17);
    v23 = x + v18;
    v24 = _UIVectorForFocusHeading(v11);
    v25 = v22;
    v27 = v26;
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v28 = v24 * CGRectGetWidth(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v29 = v27 * CGRectGetHeight(v46);
    v47.origin.x = v23;
    v47.origin.y = v38;
    v47.size.height = v39;
    v47.size.width = v25;
    v48 = CGRectOffset(v47, v28, v29);
    v21 = v48.origin.x;
    v30 = v48.origin.y;
    v31 = v48.size.width;
    v32 = v48.size.height;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v34 = _UIRectSmartIntersectsRect(v21, v30, v31, v32, x, y, width, height);
    if (has_internal_diagnostics)
    {
      if (v34)
      {
        v36 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *v41 = 0;
          _os_log_fault_impl(&dword_188A29000, v36, OS_LOG_TYPE_FAULT, "Shifting focus search rect in search direction returned an overlapping rect -- this is a UIKit bug.", v41, 2u);
        }
      }
    }

    else if (v34)
    {
      v37 = *(__UILogGetCategoryCachedImpl("Assert", &_UIFocusShiftAndExpandRectAlongHeadingForNonLinearMovement___s_category) + 8);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "Shifting focus search rect in search direction returned an overlapping rect -- this is a UIKit bug.", buf, 2u);
      }
    }
  }

  return v21;
}

void sub_18986093C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189861E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_UIFocusScrollOffsetResolverStringForOffsetResolverType(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"_UIFocusScrollOffsetResolverTypeInvalid";
  }

  else
  {
    return off_1E7108D50[a1];
  }
}

id _UIFocusSoundRegistry()
{
  if (qword_1ED49DEF0 != -1)
  {
    dispatch_once(&qword_1ED49DEF0, &__block_literal_global_162);
  }

  v1 = qword_1ED49DEF8;

  return v1;
}

void sub_189862CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189862FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189863AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAudioServicesCreateSystemSoundIDsFromIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioToolboxLibrary_0();
  result = dlsym(v2, "AudioServicesCreateSystemSoundIDsFromID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED49DF00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AudioToolboxLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AudioToolboxLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getAudioServicesCreateSystemSoundIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioToolboxLibrary_0();
  result = dlsym(v2, "AudioServicesCreateSystemSoundID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED49DF08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAudioServicesPlaySystemSoundOptionVolumeKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AudioToolboxLibrary_0();
  result = dlsym(v2, "kAudioServicesPlaySystemSoundOptionVolumeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49DF10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAudioServicesPlaySystemSoundOptionPanKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioToolboxLibrary_0();
  result = dlsym(v2, "kAudioServicesPlaySystemSoundOptionPanKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49DF18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAudioServicesPlaySystemSoundOptionBehaviorKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioToolboxLibrary_0();
  result = dlsym(v2, "kAudioServicesPlaySystemSoundOptionBehaviorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49DF20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AudioToolboxLibrary_0();
  result = dlsym(v2, "AudioServicesPlaySystemSoundWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED49DF28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_189864794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_UIEditMenuListViewLayout *_UIEditMenuViewHorizontalCompositionalLayout(uint64_t a1, double a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = _UIEditMenuGetPlatformMetrics(a1);
  v5 = 1.0;
  if ([v4 useThinSeparators])
  {
    v5 = 1.0 / fmax(a2, 1.0);
  }

  v6 = [off_1E70ECB18 absoluteDimension:v5];
  v7 = [off_1E70ECB18 fractionalHeightDimension:1.0];
  v8 = [off_1E70ECB40 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = [off_1E70ECB00 layoutAnchorWithEdges:2];
  v10 = _UIEditMenuGetPlatformMetrics(a1);
  LODWORD(v7) = [v10 showsSeparatorBetweenItems];

  if (v7)
  {
    v11 = [off_1E70ECB50 supplementaryItemWithLayoutSize:v8 elementKind:0x1EFB8A5F0 containerAnchor:v9];
    [v11 setZIndex:-1];
    v25[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = [off_1E70ECB18 estimatedDimension:80.0];
  v14 = [off_1E70ECB18 fractionalHeightDimension:1.0];
  v15 = [off_1E70ECB40 sizeWithWidthDimension:v13 heightDimension:v14];

  v16 = [off_1E70ECB30 itemWithLayoutSize:v15 supplementaryItems:v12];
  v24 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v18 = [off_1E70ECB28 verticalGroupWithLayoutSize:v15 subitems:v17];

  v19 = [off_1E70ECB38 sectionWithGroup:v18];
  [v19 setContentInsetsReference:1];
  v20 = _UIEditMenuGetPlatformMetrics(a1);
  [v20 sectionInsets];
  [v19 setContentInsets:?];

  v21 = objc_opt_new();
  [v21 setScrollDirection:1];
  [v21 setContentInsetsReference:1];
  v22 = [(UICollectionViewCompositionalLayout *)[_UIEditMenuListViewLayout alloc] initWithSection:v19 configuration:v21];

  return v22;
}

void sub_1898660D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t _isGestureRecognizerLocationInsideView(void *a1, void *a2)
{
  v3 = a2;
  [a1 locationInView:v3];
  v4 = [v3 pointInside:0 withEvent:?];

  return v4;
}

void _UIEditMenuAppendMenuToSnapshot(void *a1, void *a2, char a3, uint64_t a4)
{
  v7 = a2;
  v8 = [a1 children];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___UIEditMenuAppendMenuToSnapshot_block_invoke;
  v10[3] = &unk_1E7108E28;
  v13 = a3;
  v11 = v7;
  v12 = a4;
  v9 = v7;
  [v8 enumerateObjectsWithOptions:0 usingBlock:v10];
}

void _appendBezierPathForPoints(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  v38 = a1;
  [v38 moveToPoint:{a8, a9}];
  v30 = a2 / sqrt((a12 - a4) * (a12 - a4) + (a13 - a5) * (a13 - a5));
  [v38 addQuadCurveToPoint:a4 + (a12 - a4) * v30 controlPoint:{a5 + (a13 - a5) * v30, a4, a5}];
  v31 = a3 / sqrt((a4 - a12) * (a4 - a12) + (a5 - a13) * (a5 - a13));
  [v38 addLineToPoint:{a12 + (a4 - a12) * v31, a13 + (a5 - a13) * v31}];
  v32 = a7;
  v33 = a3 / sqrt((a6 - a12) * (a6 - a12) + (a7 - a13) * (a7 - a13));
  [v38 addQuadCurveToPoint:a12 + (a6 - a12) * v33 controlPoint:{a13 + (a7 - a13) * v33, a12, a13}];
  v34 = a2 / sqrt((a12 - a6) * (a12 - a6) + (a13 - v32) * (a13 - v32));
  [v38 addLineToPoint:{a6 + (a12 - a6) * v34, v32 + (a13 - v32) * v34}];
  [v38 addQuadCurveToPoint:a10 controlPoint:{a11, a6, a7}];
  [v38 addLineToPoint:{a10 + a14, a11 + a15}];
  [v38 addLineToPoint:{a8 + a14, a9 + a15}];
  [v38 addLineToPoint:{a8, a9}];
}

uint64_t _UISplitViewControllerColumnForKey(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:a1];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 999;
  }

  return v3;
}

double LoupeConstrainPointHorizontally(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, CGFloat a9)
{
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  v21 = CGRectInset(v20, a9, 0.0);
  v18 = a7 * 0.5;
  if (a1 + a7 * 0.5 > v21.size.width)
  {
    return v21.size.width - v18;
  }

  if (a1 - v18 < a9)
  {
    return v18 + a9;
  }

  return a1;
}

UIStatusBarHideAnimationParameters *LoupeStatusBarAnimationParameters()
{
  v0 = [[UIStatusBarHideAnimationParameters alloc] initWithDefaultParameters];
  [(UIStatusBarAnimationParameters *)v0 setCurve:5];
  [(UIStatusBarAnimationParameters *)v0 setDuration:0.2];

  return v0;
}

void sub_18986F948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UICollectionViewCellForView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 == v3)
  {
    v6 = 0;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = v4;
    do
    {
      v8 = qword_1ED4992D0;
      v9 = v7;
      if (v8 != -1)
      {
        dispatch_once(&qword_1ED4992D0, &__block_literal_global_234);
      }

      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = v9;

        v6 = v11;
      }

      v7 = [v9 superview];
    }

    while (v7 && v7 != v3);
  }

  return v6;
}

void sub_189871688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id location)
{
  objc_destroyWeak(&a43);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189871CE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_189874A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189879270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, id a34)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a34);
  _Unwind_Resume(a1);
}

void sub_1898793E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDDetectionControllerClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49DF48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DataDetectorsUILibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7108FD0;
    v8 = 0;
    qword_1ED49DF48 = _sl_dlopen();
  }

  if (!qword_1ED49DF48)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataDetectorsUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UITextItemActionSheet.m" lineNumber:14 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("DDDetectionController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDDetectionControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UITextItemActionSheet.m" lineNumber:15 description:{@"Unable to find class %s", "DDDetectionController"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1101 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49DF48 = result;
  return result;
}

void sub_18987E5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id location)
{
  objc_destroyWeak((v44 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18987FACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_189882BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21, id a22)
{
  objc_destroyWeak(v22 + 7);
  objc_destroyWeak(v22 + 6);
  objc_destroyWeak(v22 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

uint64_t UIFocusGetSensitivitySetting()
{
  if (UIFocusGetSensitivitySetting_onceToken != -1)
  {
    dispatch_once(&UIFocusGetSensitivitySetting_onceToken, &__block_literal_global_239);
  }

  result = _UIFocusSensitivityCachedSetting;
  if (_UIFocusSensitivityCachedSetting == -1)
  {
    v1 = _UIKitUserDefaults();
    v2 = [v1 objectForKey:@"UIFocusSensitivitySetting"];

    if (v2)
    {
      v3 = [v2 integerValue];
    }

    else
    {
      v3 = 1;
    }

    _UIFocusSensitivityCachedSetting = v3;

    return _UIFocusSensitivityCachedSetting;
  }

  return result;
}

void __UIFocusGetSensitivitySetting_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _UIFocusClearCachedSensitivitySettingObserver, @"UIFocusSensitivityUpdateNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void UIFocusSetSensitivitySetting(uint64_t a1)
{
  v4 = _UIKitUserDefaults();
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  [v4 setObject:v2 forKey:@"UIFocusSensitivitySetting"];
  if ([v4 synchronize])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"UIFocusSensitivityUpdateNotification", 0, 0, 1u);
    _UIFocusSensitivityCachedSetting = -1;
  }
}

_UIButtonBar *_newButtonBar(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(_UIButtonBar);
  [(_UIButtonBar *)v2 setMinimumInterItemSpace:8.0];
  [(_UIButtonBar *)v2 setAllowsViewWrappers:1];
  v3 = [(_UIButtonBar *)v2 view];
  [v3 setLayoutMargins:{0.0, 0.0, 0.0, 0.0}];

  v4 = [(_UIButtonBar *)v2 view];
  [v4 setInsetsLayoutMarginsFromSafeArea:0];

  v5 = [(_UIButtonBar *)v2 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(_UIButtonBar *)v2 view];
  LODWORD(v7) = 1148682240;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];

  v8 = [(_UIButtonBar *)v2 view];
  LODWORD(v9) = 1148829696;
  [v8 setContentCompressionResistancePriority:1 forAxis:v9];

  v10 = [(_UIButtonBar *)v2 view];
  LODWORD(v11) = 1148846080;
  [v10 setContentHuggingPriority:0 forAxis:v11];

  [(_UIButtonBar *)v2 set_appearanceDelegate:v1];
  objc_opt_class();
  v12 = _UIButtonBarButtonMakerForVisualProvider();
  [(_UIButtonBar *)v2 setViewUpdater:v12];

  return v2;
}

id iconForVideoFile(void *a1)
{
  v2 = [a1 path];
  *&v21 = 0;
  *(&v21 + 1) = &v21;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__91;
  v3 = _MergedGlobals_11_4;
  v24 = __Block_byref_object_dispose__91;
  v25 = _MergedGlobals_11_4;
  if (!_MergedGlobals_11_4)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getAVURLAssetClass_block_invoke;
    v19 = &unk_1E70F2F20;
    v20 = &v21;
    __getAVURLAssetClass_block_invoke(&v16);
    v3 = *(*(&v21 + 1) + 40);
  }

  _Block_object_dispose(&v21, 8);
  v4 = [v3 URLAssetWithURL:objc_msgSend(MEMORY[0x1E695DFF8] options:{"fileURLWithPath:", v2), 0}];
  *&v21 = 0;
  *(&v21 + 1) = &v21;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__91;
  v5 = qword_1ED49A8E8;
  v24 = __Block_byref_object_dispose__91;
  v25 = qword_1ED49A8E8;
  if (!qword_1ED49A8E8)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getAVAssetImageGeneratorClass_block_invoke;
    v19 = &unk_1E70F2F20;
    v20 = &v21;
    __getAVAssetImageGeneratorClass_block_invoke(&v16);
    v5 = *(*(&v21 + 1) + 40);
  }

  _Block_object_dispose(&v21, 8);
  v6 = [v5 assetImageGeneratorWithAsset:v4];
  [v6 setAppliesPreferredTrackTransform:1];
  v15 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v7 = qword_1ED49A8F0;
  v19 = qword_1ED49A8F0;
  if (!qword_1ED49A8F0)
  {
    *&v21 = MEMORY[0x1E69E9820];
    *(&v21 + 1) = 3221225472;
    v22 = __getkCMTimeZeroSymbolLoc_block_invoke;
    v23 = &unk_1E70F2F20;
    v24 = &v16;
    __getkCMTimeZeroSymbolLoc_block_invoke(&v21);
    v7 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);
  if (v7)
  {
    v8 = *v7;
    v22 = *(v7 + 16);
    v21 = v8;
    v9 = [v6 copyCGImageAtTime:&v21 actualTime:0 error:&v15];
    if (v9)
    {
      v10 = v9;
      v11 = thumbnailSizedImageForImage(v9);
      CGImageRelease(v10);
      v12 = [v11 CGImage];
      if (v12)
      {
        return thumbnailSizedImageForImage(v12);
      }
    }

    else
    {
      NSLog(&cfstr_Uiwebfileuploa_1.isa, v2, v15);
    }

    NSLog(&cfstr_Uiwebfileuploa_0.isa, a1);
    return fallbackIconForFile(a1);
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v14 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CMTime getkCMTimeZero(void)") description:{@"UIWebFileUploadPanel.m", 64, @"%s", dlerror()}];
    __break(1u);
  }

  return result;
}

void sub_189889828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id iconForImageFile(const __CFURL *a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696E100];
  v9[0] = *MEMORY[0x1E696DFF0];
  v9[1] = v2;
  v10[0] = MEMORY[0x1E695E118];
  v10[1] = &unk_1EFE2E418;
  v9[2] = *MEMORY[0x1E696E000];
  v10[2] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v4 = CGImageSourceCreateWithURL(a1, 0);
  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v4, 0, v3);
  if (ThumbnailAtIndex)
  {
    v6 = ThumbnailAtIndex;
    v7 = thumbnailSizedImageForImage(ThumbnailAtIndex);
    CFRelease(v6);
    CFRelease(v4);
  }

  else
  {
    NSLog(&cfstr_Uiwebfileuploa_3.isa, a1);
    CFRelease(v4);
    return fallbackIconForFile(a1);
  }

  return v7;
}

id fallbackIconForFile(uint64_t a1)
{
  v1 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E69CDA18] interactionControllerWithURL:{a1), "icons"), "objectAtIndexedSubscript:", 0), "CGImage"}];

  return thumbnailSizedImageForImage(v1);
}

id thumbnailSizedImageForImage(CGImage *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(v1);
  v4 = Height;
  if (Width != Height)
  {
    v5 = round((Width - v4) * 0.5);
    v6 = round((v4 - Width) * 0.5);
    v7 = Width < Height ? Width : Height;
    if (Width < Height)
    {
      v8 = 0.0;
    }

    else
    {
      v6 = 0.0;
      v8 = v5;
    }

    v9 = v7;
    v1 = CGImageCreateWithImageInRect(v1, *(&v6 - 1));
    if (!v1)
    {
      return 0;
    }
  }

  _UIGraphicsBeginImageContextWithOptions(0, 0, 100.0, 100.0, 1.0);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSetInterpolationQuality(v11, kCGInterpolationHigh);
  v13 = GetContextStack(0);
  if (*v13 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13[3 * (*v13 - 1) + 1];
  }

  v16.size.width = 100.0;
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.height = 100.0;
  CGContextDrawImage(v14, v16, v1);
  ImageFromCurrentImageContext = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

Class __getAVURLAssetClass_block_invoke(uint64_t a1)
{
  AVKitLibrary();
  result = objc_getClass("AVURLAsset");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    _MergedGlobals_11_4 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getAVURLAssetClass(void)_block_invoke") description:{@"UIWebFileUploadPanel.m", 61, @"Unable to find class %s", "AVURLAsset"}];
    __break(1u);
  }

  return result;
}

void AVKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AVKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AVKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7109278;
    v5 = 0;
    AVKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AVKitLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVKitLibrary(void)"];
    v0 = [v1 handleFailureInFunction:v2 file:@"UIWebFileUploadPanel.m" lineNumber:59 description:{@"%s", v3[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AVKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AVKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAVAssetImageGeneratorClass_block_invoke(uint64_t a1)
{
  AVKitLibrary();
  result = objc_getClass("AVAssetImageGenerator");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    qword_1ED49A8E8 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getAVAssetImageGeneratorClass(void)_block_invoke") description:{@"UIWebFileUploadPanel.m", 60, @"Unable to find class %s", "AVAssetImageGenerator"}];
    __break(1u);
  }

  return result;
}

void *__getkCMTimeZeroSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49A8F8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreMediaLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7109290;
    v8 = 0;
    qword_1ED49A8F8 = _sl_dlopen();
  }

  v2 = qword_1ED49A8F8;
  if (!qword_1ED49A8F8)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreMediaLibrary(void)"];
    v3 = [a1 handleFailureInFunction:v5 file:@"UIWebFileUploadPanel.m" lineNumber:63 description:{@"%s", v6[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "kCMTimeZero");
  *(*(a1[4] + 8) + 24) = result;
  qword_1ED49A8F0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CoreMediaLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49A8F8 = result;
  return result;
}

id otherButtonFont()
{
  v0 = [off_1E70ECC20 defaultFontDescriptorWithTextStyle:@"UICTFontTextStyleSubhead"];
  v1 = [off_1E70ECC18 fontWithDescriptor:v0 size:0.0];

  return v1;
}

void sub_18988D648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}