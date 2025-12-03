@interface SHCompression
+ (BOOL)decompressAppleArchiveAtURL:(id)l toDirectoryURL:(id)rL error:(id *)error;
@end

@implementation SHCompression

+ (BOOL)decompressAppleArchiveAtURL:(id)l toDirectoryURL:(id)rL error:(id *)error
{
  v58[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v9 = rLCopy;
  if (!lCopy || !rLCopy)
  {
    rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to archive. Archive path %@ or destination path %@ is nil.", lCopy, rLCopy];
    v57 = *MEMORY[0x277CCA068];
    v58[0] = rLCopy;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v28];

    v29 = shcore_log_object();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v42 = rLCopy;
LABEL_23:
    _os_log_impl(&dword_231025000, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    goto LABEL_24;
  }

  path = [(__CFString *)lCopy path];
  v11 = AAFileStreamOpenWithPath([path fileSystemRepresentation], 0, 0x1A4u);

  if (!v11)
  {
    rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open source apple archive file at %@.", lCopy];
    v55 = *MEMORY[0x277CCA068];
    v56 = rLCopy;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v30];

    v29 = shcore_log_object();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v42 = rLCopy;
    goto LABEL_23;
  }

  v12 = AADecompressionInputStreamOpen(v11, 0, 0);
  if (!v12)
  {
    AAByteStreamClose(v11);
    rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open archive decompressed input stream at %@.", lCopy];
    v53 = *MEMORY[0x277CCA068];
    v54 = rLCopy;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v31];

    v29 = shcore_log_object();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v42 = rLCopy;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = AADecodeArchiveInputStreamOpen(v12, 0, 0, 0, 0);
  if (v14)
  {
    v15 = v14;
    v40 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [v9 path];
    v18 = [defaultManager fileExistsAtPath:path2 isDirectory:&v40];
    v19 = v40;

    if (!v18 || (v19 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v39 = 0;
      v21 = [defaultManager2 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v39];
      v22 = v39;

      if (!v21)
      {
        AAByteStreamClose(v13);
        AAByteStreamClose(v11);
        AAArchiveStreamClose(v15);
        rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create directory at url %@.", v9];
        v49 = *MEMORY[0x277CCA068];
        v50 = rLCopy;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        [SHCoreError annotateError:error code:302 underlyingError:v22 keyOverrides:v36];

        v37 = shcore_log_object();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = rLCopy;
          _os_log_impl(&dword_231025000, v37, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        goto LABEL_34;
      }
    }

    path3 = [v9 path];
    v24 = AAExtractArchiveOutputStreamOpen([path3 fileSystemRepresentation], 0, 0, 1uLL, 0);

    if (v24)
    {
      v25 = AAArchiveStreamProcess(v15, v24, 0, 0, 0, 0);
      AAByteStreamClose(v13);
      AAByteStreamClose(v11);
      AAArchiveStreamClose(v15);
      AAArchiveStreamClose(v24);
      if ((v25 & 0x8000000000000000) == 0)
      {
        v22 = shcore_log_object();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v42 = lCopy;
          v43 = 2112;
          v44 = v9;
          _os_log_impl(&dword_231025000, v22, OS_LOG_TYPE_DEBUG, "Extracted archive from %@ to destination: %@", buf, 0x16u);
        }

        v26 = 1;
        rLCopy = &stru_2845D1F60;
        goto LABEL_35;
      }

      rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to decompress archive file %@ to destination directory %@. Stream processing failed.", lCopy, v9];
      v45 = *MEMORY[0x277CCA068];
      v46 = rLCopy;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v38];

      v22 = shcore_log_object();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = rLCopy;
        goto LABEL_33;
      }
    }

    else
    {
      AAByteStreamClose(v13);
      AAByteStreamClose(v11);
      AAArchiveStreamClose(v15);
      rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create output directory stream at %@ for decompression.", v9];
      v47 = *MEMORY[0x277CCA068];
      v48 = rLCopy;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v35];

      v22 = shcore_log_object();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = rLCopy;
LABEL_33:
        _os_log_impl(&dword_231025000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

LABEL_34:
    v26 = 0;
LABEL_35:

    goto LABEL_25;
  }

  AAByteStreamClose(v13);
  AAByteStreamClose(v11);
  rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to decode archive decompressed stream at %@.", lCopy];
  v51 = *MEMORY[0x277CCA068];
  v52 = rLCopy;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v32];

  v29 = shcore_log_object();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v42 = rLCopy;
    goto LABEL_23;
  }

LABEL_24:

  v26 = 0;
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];
  return v26;
}

@end