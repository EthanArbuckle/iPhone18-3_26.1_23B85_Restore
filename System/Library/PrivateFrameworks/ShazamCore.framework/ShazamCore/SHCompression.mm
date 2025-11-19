@interface SHCompression
+ (BOOL)decompressAppleArchiveAtURL:(id)a3 toDirectoryURL:(id)a4 error:(id *)a5;
@end

@implementation SHCompression

+ (BOOL)decompressAppleArchiveAtURL:(id)a3 toDirectoryURL:(id)a4 error:(id *)a5
{
  v58[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to archive. Archive path %@ or destination path %@ is nil.", v7, v8];
    v57 = *MEMORY[0x277CCA068];
    v58[0] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    [SHCoreError annotateError:a5 code:302 underlyingError:0 keyOverrides:v28];

    v29 = shcore_log_object();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v42 = v27;
LABEL_23:
    _os_log_impl(&dword_231025000, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    goto LABEL_24;
  }

  v10 = [(__CFString *)v7 path];
  v11 = AAFileStreamOpenWithPath([v10 fileSystemRepresentation], 0, 0x1A4u);

  if (!v11)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open source apple archive file at %@.", v7];
    v55 = *MEMORY[0x277CCA068];
    v56 = v27;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    [SHCoreError annotateError:a5 code:302 underlyingError:0 keyOverrides:v30];

    v29 = shcore_log_object();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v42 = v27;
    goto LABEL_23;
  }

  v12 = AADecompressionInputStreamOpen(v11, 0, 0);
  if (!v12)
  {
    AAByteStreamClose(v11);
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open archive decompressed input stream at %@.", v7];
    v53 = *MEMORY[0x277CCA068];
    v54 = v27;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [SHCoreError annotateError:a5 code:302 underlyingError:0 keyOverrides:v31];

    v29 = shcore_log_object();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v42 = v27;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = AADecodeArchiveInputStreamOpen(v12, 0, 0, 0, 0);
  if (v14)
  {
    v15 = v14;
    v40 = 0;
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [v9 path];
    v18 = [v16 fileExistsAtPath:v17 isDirectory:&v40];
    v19 = v40;

    if (!v18 || (v19 & 1) == 0)
    {
      v20 = [MEMORY[0x277CCAA00] defaultManager];
      v39 = 0;
      v21 = [v20 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v39];
      v22 = v39;

      if (!v21)
      {
        AAByteStreamClose(v13);
        AAByteStreamClose(v11);
        AAArchiveStreamClose(v15);
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create directory at url %@.", v9];
        v49 = *MEMORY[0x277CCA068];
        v50 = v27;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        [SHCoreError annotateError:a5 code:302 underlyingError:v22 keyOverrides:v36];

        v37 = shcore_log_object();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = v27;
          _os_log_impl(&dword_231025000, v37, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        goto LABEL_34;
      }
    }

    v23 = [v9 path];
    v24 = AAExtractArchiveOutputStreamOpen([v23 fileSystemRepresentation], 0, 0, 1uLL, 0);

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
          v42 = v7;
          v43 = 2112;
          v44 = v9;
          _os_log_impl(&dword_231025000, v22, OS_LOG_TYPE_DEBUG, "Extracted archive from %@ to destination: %@", buf, 0x16u);
        }

        v26 = 1;
        v27 = &stru_2845D1F60;
        goto LABEL_35;
      }

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to decompress archive file %@ to destination directory %@. Stream processing failed.", v7, v9];
      v45 = *MEMORY[0x277CCA068];
      v46 = v27;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      [SHCoreError annotateError:a5 code:302 underlyingError:0 keyOverrides:v38];

      v22 = shcore_log_object();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v27;
        goto LABEL_33;
      }
    }

    else
    {
      AAByteStreamClose(v13);
      AAByteStreamClose(v11);
      AAArchiveStreamClose(v15);
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create output directory stream at %@ for decompression.", v9];
      v47 = *MEMORY[0x277CCA068];
      v48 = v27;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      [SHCoreError annotateError:a5 code:302 underlyingError:0 keyOverrides:v35];

      v22 = shcore_log_object();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v27;
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
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to decode archive decompressed stream at %@.", v7];
  v51 = *MEMORY[0x277CCA068];
  v52 = v27;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  [SHCoreError annotateError:a5 code:302 underlyingError:0 keyOverrides:v32];

  v29 = shcore_log_object();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v42 = v27;
    goto LABEL_23;
  }

LABEL_24:

  v26 = 0;
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];
  return v26;
}

@end