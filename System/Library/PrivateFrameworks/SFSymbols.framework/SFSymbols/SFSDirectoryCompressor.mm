@interface SFSDirectoryCompressor
+ (BOOL)compressDirectoryAtURL:(id)l intoURL:(id)rL withDenylist:(id)denylist error:(id *)error;
@end

@implementation SFSDirectoryCompressor

+ (BOOL)compressDirectoryAtURL:(id)l intoURL:(id)rL withDenylist:(id)denylist error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  denylistCopy = denylist;
  path = [rLCopy path];
  v13 = soft_AAFileStreamOpenWithPath([path fileSystemRepresentation], 513);

  if (!v13)
  {
    goto LABEL_29;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v14 = getAACompressionOutputStreamOpenSymbolLoc_ptr;
  v45 = getAACompressionOutputStreamOpenSymbolLoc_ptr;
  if (!getAACompressionOutputStreamOpenSymbolLoc_ptr)
  {
    v15 = libAppleArchiveLibrary();
    v43[3] = dlsym(v15, "AACompressionOutputStreamOpen");
    getAACompressionOutputStreamOpenSymbolLoc_ptr = v43[3];
    v14 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v14)
  {
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
LABEL_32:
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
LABEL_33:
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    goto LABEL_34;
  }

  v16 = (v14)(v13, 2049, 0x100000, 0, 0);
  if (!v16)
  {
LABEL_28:
    soft_AAByteStreamClose(v13);
    goto LABEL_29;
  }

  v17 = v16;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v18 = getAAEncodeArchiveOutputStreamOpenSymbolLoc_ptr;
  v45 = getAAEncodeArchiveOutputStreamOpenSymbolLoc_ptr;
  if (!getAAEncodeArchiveOutputStreamOpenSymbolLoc_ptr)
  {
    v19 = libAppleArchiveLibrary();
    v43[3] = dlsym(v19, "AAEncodeArchiveOutputStreamOpen");
    getAAEncodeArchiveOutputStreamOpenSymbolLoc_ptr = v43[3];
    v18 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v18)
  {
    goto LABEL_32;
  }

  v20 = (v18)(v17, 0, 0, 0, 0);
  if (!v20)
  {
LABEL_27:
    soft_AAByteStreamClose(v17);
    goto LABEL_28;
  }

  v21 = v20;
  v22 = [CFSTR(""TYP PAT];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v23 = getAAFieldKeySetCreateWithStringSymbolLoc_ptr;
  v45 = getAAFieldKeySetCreateWithStringSymbolLoc_ptr;
  if (!getAAFieldKeySetCreateWithStringSymbolLoc_ptr)
  {
    v24 = libAppleArchiveLibrary();
    v43[3] = dlsym(v24, "AAFieldKeySetCreateWithString");
    getAAFieldKeySetCreateWithStringSymbolLoc_ptr = v43[3];
    v23 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v23)
  {
    goto LABEL_33;
  }

  v40 = v23(v22);
  if (!v40)
  {
LABEL_26:
    soft_AAArchiveStreamClose(v21);
    goto LABEL_27;
  }

  path2 = [lCopy path];
  fileSystemRepresentation = [path2 fileSystemRepresentation];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v27 = getAAPathListCreateWithDirectoryContentsSymbolLoc_ptr;
  v45 = getAAPathListCreateWithDirectoryContentsSymbolLoc_ptr;
  if (!getAAPathListCreateWithDirectoryContentsSymbolLoc_ptr)
  {
    v28 = libAppleArchiveLibrary();
    v43[3] = dlsym(v28, "AAPathListCreateWithDirectoryContents");
    getAAPathListCreateWithDirectoryContentsSymbolLoc_ptr = v43[3];
    v27 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v27)
  {
LABEL_34:
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
LABEL_35:
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    goto LABEL_36;
  }

  v29 = (v27)(fileSystemRepresentation, 0, denylistCopy, filter_denylist, 0, 0);

  v41 = v29;
  if (!v29)
  {
    goto LABEL_26;
  }

  path3 = [lCopy path];
  fileSystemRepresentation2 = [path3 fileSystemRepresentation];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v32 = getAAArchiveStreamWritePathListSymbolLoc_ptr;
  v45 = getAAArchiveStreamWritePathListSymbolLoc_ptr;
  if (!getAAArchiveStreamWritePathListSymbolLoc_ptr)
  {
    v33 = libAppleArchiveLibrary();
    v43[3] = dlsym(v33, "AAArchiveStreamWritePathList");
    getAAArchiveStreamWritePathListSymbolLoc_ptr = v43[3];
    v32 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v32)
  {
    goto LABEL_35;
  }

  v34 = (v32)(v21, v41, v40, fileSystemRepresentation2, denylistCopy, filter_denylist, 0, 0);

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v35 = getAAPathListDestroySymbolLoc_ptr;
  v45 = getAAPathListDestroySymbolLoc_ptr;
  if (!getAAPathListDestroySymbolLoc_ptr)
  {
    v36 = libAppleArchiveLibrary();
    v43[3] = dlsym(v36, "AAPathListDestroy");
    getAAPathListDestroySymbolLoc_ptr = v43[3];
    v35 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v35)
  {
LABEL_36:
    v39 = +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    _Block_object_dispose(&v42, 8);
    _Unwind_Resume(v39);
  }

  v35(v41);
  soft_AAArchiveStreamClose(v21);
  soft_AAByteStreamClose(v17);
  soft_AAByteStreamClose(v13);
  if (v34)
  {
LABEL_29:
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:-1 userInfo:0];
    *error = v37 = 0;
    goto LABEL_30;
  }

  v37 = 1;
LABEL_30:

  return v37;
}

+ (uint64_t)compressDirectoryAtURL:intoURL:withDenylist:error:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return [SFSSymbolAssetInfo localeAgnosticInfo:v0 allowsPrivate:?];
}

@end