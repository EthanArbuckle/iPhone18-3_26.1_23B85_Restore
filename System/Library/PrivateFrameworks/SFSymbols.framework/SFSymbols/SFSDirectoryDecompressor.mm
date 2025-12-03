@interface SFSDirectoryDecompressor
+ (BOOL)decompressDataAtURL:(id)l toURL:(id)rL error:(id *)error;
@end

@implementation SFSDirectoryDecompressor

+ (BOOL)decompressDataAtURL:(id)l toURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  path = [lCopy path];
  v10 = soft_AAFileStreamOpenWithPath([path fileSystemRepresentation], 0);

  if (!v10)
  {
    goto LABEL_24;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v11 = getAADecompressionInputStreamOpenSymbolLoc_ptr;
  v38 = getAADecompressionInputStreamOpenSymbolLoc_ptr;
  if (!getAADecompressionInputStreamOpenSymbolLoc_ptr)
  {
    v12 = libAppleArchiveLibrary();
    v36[3] = dlsym(v12, "AADecompressionInputStreamOpen");
    getAADecompressionInputStreamOpenSymbolLoc_ptr = v36[3];
    v11 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v11)
  {
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
LABEL_27:
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    goto LABEL_28;
  }

  v13 = (v11)(v10, 0, 0);
  if (!v13)
  {
LABEL_23:
    soft_AAByteStreamClose(v10);
    goto LABEL_24;
  }

  v14 = v13;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v15 = getAADecodeArchiveInputStreamOpenSymbolLoc_ptr;
  v38 = getAADecodeArchiveInputStreamOpenSymbolLoc_ptr;
  if (!getAADecodeArchiveInputStreamOpenSymbolLoc_ptr)
  {
    v16 = libAppleArchiveLibrary();
    v36[3] = dlsym(v16, "AADecodeArchiveInputStreamOpen");
    getAADecodeArchiveInputStreamOpenSymbolLoc_ptr = v36[3];
    v15 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v15)
  {
    goto LABEL_27;
  }

  v17 = (v15)(v14, 0, 0, 0, 0);
  if (!v17)
  {
LABEL_22:
    soft_AAByteStreamClose(v14);
    goto LABEL_23;
  }

  v18 = v17;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path2 = [rLCopy path];
  v21 = [defaultManager fileExistsAtPath:path2];

  if ((v21 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = [defaultManager2 createDirectoryAtURL:rLCopy withIntermediateDirectories:0 attributes:0 error:0];

    if (!v23)
    {
LABEL_21:
      soft_AAArchiveStreamClose(v18);
      goto LABEL_22;
    }
  }

  path3 = [rLCopy path];
  fileSystemRepresentation = [path3 fileSystemRepresentation];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v26 = getAAExtractArchiveOutputStreamOpenSymbolLoc_ptr;
  v38 = getAAExtractArchiveOutputStreamOpenSymbolLoc_ptr;
  if (!getAAExtractArchiveOutputStreamOpenSymbolLoc_ptr)
  {
    v27 = libAppleArchiveLibrary();
    v36[3] = dlsym(v27, "AAExtractArchiveOutputStreamOpen");
    getAAExtractArchiveOutputStreamOpenSymbolLoc_ptr = v36[3];
    v26 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v26)
  {
LABEL_28:
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    goto LABEL_29;
  }

  v28 = (v26)(fileSystemRepresentation, 0, 0, 1, 0);

  if (!v28)
  {
    goto LABEL_21;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v29 = getAAArchiveStreamProcessSymbolLoc_ptr;
  v38 = getAAArchiveStreamProcessSymbolLoc_ptr;
  if (!getAAArchiveStreamProcessSymbolLoc_ptr)
  {
    v30 = libAppleArchiveLibrary();
    v36[3] = dlsym(v30, "AAArchiveStreamProcess");
    getAAArchiveStreamProcessSymbolLoc_ptr = v36[3];
    v29 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v29)
  {
LABEL_29:
    v34 = +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    _Block_object_dispose(&v35, 8);
    _Unwind_Resume(v34);
  }

  v31 = (v29)(v18, v28, 0, 0, 0, 0);
  soft_AAArchiveStreamClose(v28);
  soft_AAArchiveStreamClose(v18);
  soft_AAByteStreamClose(v14);
  soft_AAByteStreamClose(v10);
  if (v31 < 0)
  {
LABEL_24:
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:-1 userInfo:0];
    *error = v32 = 0;
    goto LABEL_25;
  }

  v32 = 1;
LABEL_25:

  return v32;
}

@end