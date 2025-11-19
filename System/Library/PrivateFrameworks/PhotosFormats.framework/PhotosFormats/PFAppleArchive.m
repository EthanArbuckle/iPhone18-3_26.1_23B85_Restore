@interface PFAppleArchive
- (BOOL)close:(id *)a3;
- (BOOL)decodeContentOfDirectoryWithError:(id *)a3;
- (BOOL)decodeContentsToDirectoryURL:(id)a3 error:(id *)a4;
- (BOOL)decodeData:(id *)a3 filename:(id *)a4 error:(id *)a5;
- (BOOL)encodeContentOfDirectoryAtURL:(id)a3 entryPredicate:(id)a4 error:(id *)a5;
- (BOOL)encodeData:(id)a3 filename:(id)a4 error:(id *)a5;
- (BOOL)openForReading:(id *)a3;
- (BOOL)openForWriting:(id *)a3;
- (void)dealloc;
@end

@implementation PFAppleArchive

- (void)dealloc
{
  archiveStream = self->_archiveStream;
  if (archiveStream)
  {
    AAArchiveStreamCancel(archiveStream);
    AAArchiveStreamClose(self->_archiveStream);
  }

  v4.receiver = self;
  v4.super_class = PFAppleArchive;
  [(PFAppleArchiveStream *)&v4 dealloc];
}

- (BOOL)close:(id *)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  archiveStream = self->_archiveStream;
  if (!archiveStream)
  {
    _PFAssertFailHandler();
  }

  v6 = AAArchiveStreamClose(archiveStream);
  if (v6)
  {
    if (a3)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = v6;
      v13 = *MEMORY[0x1E696A278];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to close archive stream"];
      v14[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a3 = [v7 errorWithDomain:@"com.apple.PhotosFormats" code:v8 userInfo:v10];
    }

    return 0;
  }

  else
  {
    self->_archiveStream = 0;
    v12.receiver = self;
    v12.super_class = PFAppleArchive;
    return [(PFAppleArchiveStream *)&v12 close:a3];
  }
}

- (BOOL)decodeData:(id *)a3 filename:(id *)a4 error:(id *)a5
{
  v83[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
LABEL_47:
    _PFAssertFailHandler();
  }

  archiveStream = self->_archiveStream;
  if (!archiveStream || !self->super._inputStream)
  {
    _PFAssertFailHandler();
    goto LABEL_47;
  }

  header = 0;
  v10 = AAArchiveStreamReadHeader(archiveStream, &header);
  if (v10 < 0)
  {
    if (!a5)
    {
      goto LABEL_39;
    }

    v44 = MEMORY[0x1E696ABC0];
    v45 = v10;
    v82 = *MEMORY[0x1E696A278];
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to read header"];
    v83[0] = v46;
    v47 = MEMORY[0x1E695DF20];
    v48 = v83;
    v49 = &v82;
LABEL_27:
    v55 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:1];
    *a5 = [v44 errorWithDomain:@"com.apple.PhotosFormats" code:v45 userInfo:v55];

LABEL_31:
    v34 = 0;
    goto LABEL_32;
  }

  if (!v10)
  {
    if (!a5)
    {
      goto LABEL_39;
    }

    v50 = MEMORY[0x1E696ABC0];
    v80 = *MEMORY[0x1E696A278];
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Reached end of archive"];
    v81 = v51;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v53 = v50;
    v54 = 9;
LABEL_30:
    *a5 = [v53 errorWithDomain:@"com.apple.PhotosFormats" code:v54 userInfo:v52];

    goto LABEL_31;
  }

  value = 0;
  v11 = header;
  v12.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v12);
  if ((KeyIndex & 0x80000000) != 0)
  {
    FieldUInt = 0;
    goto LABEL_25;
  }

  FieldUInt = AAHeaderGetFieldUInt(v11, KeyIndex, &value);
  if (FieldUInt >= 2)
  {
LABEL_25:
    if (!a5)
    {
      goto LABEL_39;
    }

    v44 = MEMORY[0x1E696ABC0];
    v45 = FieldUInt;
    v78 = *MEMORY[0x1E696A278];
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Missing 'TYP' header field"];
    v79 = v46;
    v47 = MEMORY[0x1E695DF20];
    v48 = &v79;
    v49 = &v78;
    goto LABEL_27;
  }

  if (value != 70)
  {
    if (!a5)
    {
      goto LABEL_39;
    }

    v56 = MEMORY[0x1E696ABC0];
    v76 = *MEMORY[0x1E696A278];
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Expected 'REG' entry type"];
    v77 = v51;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v53 = v56;
    v54 = 1;
    goto LABEL_30;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  length = 0;
  v15 = header;
  v16.ikey = 5521744;
  v17 = AAHeaderGetKeyIndex(header, v16);
  if ((v17 & 0x80000000) != 0)
  {
    FieldString = 0;
    goto LABEL_34;
  }

  FieldString = AAHeaderGetFieldString(v15, v17, 0, 0, &length);
  if (FieldString >= 2)
  {
LABEL_34:
    if (!a5)
    {
      goto LABEL_31;
    }

    v44 = MEMORY[0x1E696ABC0];
    v45 = FieldString;
    v74 = *MEMORY[0x1E696A278];
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Missing 'PAT' header field"];
    v75 = v46;
    v47 = MEMORY[0x1E695DF20];
    v48 = &v75;
    v49 = &v74;
    goto LABEL_27;
  }

  v19 = objc_alloc(MEMORY[0x1E695DF88]);
  v20 = [v19 initWithLength:length + 1];
  v21 = header;
  v22 = length;
  v23 = [v20 mutableBytes];
  v24.ikey = 5521744;
  v25 = AAHeaderGetKeyIndex(v21, v24);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 0;
    goto LABEL_42;
  }

  v26 = AAHeaderGetFieldString(v21, v25, v22 + 1, v23, 0);
  if (v26 >= 2)
  {
LABEL_42:
    if (a5)
    {
      v58 = MEMORY[0x1E696ABC0];
      v59 = v26;
      v72 = *MEMORY[0x1E696A278];
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to read 'PAT' string"];
      v73 = v60;
      v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      *a5 = [v58 errorWithDomain:@"com.apple.PhotosFormats" code:v59 userInfo:v61];
    }

    goto LABEL_31;
  }

  v27 = objc_alloc(MEMORY[0x1E696AEC0]);
  v28 = [v20 bytes];
  *a4 = [v27 initWithBytes:v28 length:length encoding:4];

LABEL_15:
  offset = 0;
  size = 0;
  v29 = header;
  v30.ikey = 5521732;
  v31 = AAHeaderGetKeyIndex(header, v30);
  if ((v31 & 0x80000000) != 0)
  {
    FieldBlob = 0;
LABEL_37:
    if (a5)
    {
      v44 = MEMORY[0x1E696ABC0];
      v45 = FieldBlob;
      v70 = *MEMORY[0x1E696A278];
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Missing 'DAT' header field", offset];
      v71 = v46;
      v47 = MEMORY[0x1E695DF20];
      v48 = &v71;
      v49 = &v70;
      goto LABEL_27;
    }

LABEL_39:
    v34 = 0;
    goto LABEL_40;
  }

  FieldBlob = AAHeaderGetFieldBlob(v29, v31, &size, &offset);
  if (FieldBlob >= 2)
  {
    goto LABEL_37;
  }

  v33 = objc_alloc(MEMORY[0x1E695DF88]);
  v34 = [v33 initWithLength:size];
  v35 = self->_archiveStream;
  v36 = [v34 mutableBytes];
  v37 = [v34 length];
  v38.ikey = 5521732;
  Blob = AAArchiveStreamReadBlob(v35, v38, v36, v37);
  if (!Blob)
  {
    v62 = v34;
    *a3 = v34;
    LOBYTE(a5) = 1;
    goto LABEL_40;
  }

  if (a5)
  {
    v40 = MEMORY[0x1E696ABC0];
    v41 = Blob;
    v68 = *MEMORY[0x1E696A278];
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to read 'DAT' blob", offset];
    v69 = v42;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    *a5 = [v40 errorWithDomain:@"com.apple.PhotosFormats" code:v41 userInfo:v43];

LABEL_32:
    LOBYTE(a5) = 0;
  }

LABEL_40:
  AAHeaderDestroy(header);

  return a5;
}

- (BOOL)decodeContentsToDirectoryURL:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = AAExtractArchiveOutputStreamOpen([a3 fileSystemRepresentation], 0, 0, 0, 0);
  v9 = AAArchiveStreamProcess(self->_archiveStream, v8, 0, 0, 0, 0);
  v10 = v9;
  if (a4 && v9 < 0)
  {
    v11 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A278];
    v12 = MEMORY[0x1E696AEC0];
    v13 = *__error();
    v14 = __error();
    v15 = [v12 stringWithFormat:@"Failed to decode directory content archive. Error [%d]: %s", v13, strerror(*v14)];
    v27[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    *a4 = [v11 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v16];
  }

  if (!v8 || !AAArchiveStreamClose(v8))
  {
    return v10 >= 0;
  }

  if (a4)
  {
    v17 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v18 = MEMORY[0x1E696AEC0];
    v19 = *__error();
    v20 = __error();
    v21 = [v18 stringWithFormat:@"Failed to close directory content outStream. Error [%d]: %s", v19, strerror(*v20)];
    v25 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    *a4 = [v17 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v22];
  }

  return 0;
}

- (BOOL)decodeContentOfDirectoryWithError:(id *)a3
{
  v5 = [(PFAppleArchiveStream *)self archiveURL];
  v6 = [v5 URLByDeletingLastPathComponent];

  LOBYTE(a3) = [(PFAppleArchive *)self decodeContentsToDirectoryURL:v6 error:a3];
  return a3;
}

- (BOOL)encodeContentOfDirectoryAtURL:(id)a3 entryPredicate:(id)a4 error:(id *)a5
{
  v48[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!self->_archiveStream || !self->super._outputStream)
  {
    _PFAssertFailHandler();
  }

  v10 = v9;
  v40 = self;
  v41 = MEMORY[0x1B8C64C40](v10);
  v11 = v8;
  v42 = v11;
  v12 = [v11 fileSystemRepresentation];
  if (v10)
  {
    v13 = PFAppleArchiveEntryMessageProc;
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = &v40;
  }

  else
  {
    v14 = 0;
  }

  v15 = AAPathListCreateWithDirectoryContents(v12, 0, v14, v13, 0, 0);
  if (v15)
  {
    v16 = AAFieldKeySetCreateWithString("TYP,PAT,LNK,DEV,DAT,MOD,FLG,MTM,BTM,CTM,ACL");
    if (v16)
    {
      archiveStream = self->_archiveStream;
      v18 = v11;
      v19 = AAArchiveStreamWritePathList(archiveStream, v15, v16, [v11 fileSystemRepresentation], 0, 0, 0, 0);
      v20 = v19 == 0;
      if (a5 && v19)
      {
        v21 = MEMORY[0x1E696ABC0];
        v47 = *MEMORY[0x1E696A278];
        v22 = MEMORY[0x1E696AEC0];
        v23 = *__error();
        v24 = __error();
        v25 = [v22 stringWithFormat:@"Failed to create the archive for the directory contents. Error [%d]: %s", v23, strerror(*v24)];
        v48[0] = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
        *a5 = [v21 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v26];
      }

      AAFieldKeySetDestroy(v16);
    }

    else
    {
      if (a5)
      {
        v33 = MEMORY[0x1E696ABC0];
        v45 = *MEMORY[0x1E696A278];
        v34 = MEMORY[0x1E696AEC0];
        v35 = *__error();
        v36 = __error();
        v37 = [v34 stringWithFormat:@"Failed to create the field key set for directory contents. Error [%d]: %s", v35, strerror(*v36)];
        v46 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        *a5 = [v33 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v38];
      }

      v20 = 0;
    }

    AAPathListDestroy(v15);
  }

  else
  {
    if (a5)
    {
      v27 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A278];
      v28 = MEMORY[0x1E696AEC0];
      v29 = *__error();
      v30 = __error();
      v31 = [v28 stringWithFormat:@"Failed to create the path list for directory contents. Error [%d]: %s", v29, strerror(*v30)];
      v44 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *a5 = [v27 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v32];
    }

    v20 = 0;
  }

  return v20;
}

- (BOOL)encodeData:(id)a3 filename:(id)a4 error:(id *)a5
{
  v50[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    goto LABEL_28;
  }

  v10 = v9;
  if (!v9)
  {
    goto LABEL_29;
  }

  if (!self->_archiveStream || !self->super._outputStream)
  {
    _PFAssertFailHandler();
LABEL_28:
    _PFAssertFailHandler();
LABEL_29:
    _PFAssertFailHandler();
  }

  v11 = AAHeaderCreate();
  v12 = v11;
  if (!v11)
  {
    if (!a5)
    {
      goto LABEL_26;
    }

    v28 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A278];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to create header"];
    v50[0] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v31 = v28;
    v32 = 8;
LABEL_25:
    *a5 = [v31 errorWithDomain:@"com.apple.PhotosFormats" code:v32 userInfo:v30];

    LOBYTE(a5) = 0;
    goto LABEL_26;
  }

  v13.ikey = 5265748;
  v14 = AAHeaderSetFieldUInt(v11, 0xFFFFFFFF, v13, 0x46uLL);
  if (v14 < 0)
  {
    if (!a5)
    {
      goto LABEL_26;
    }

    v33 = MEMORY[0x1E696ABC0];
    v34 = v14;
    v47 = *MEMORY[0x1E696A278];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to set 'TYP' header field"];
    v48 = v29;
    v35 = MEMORY[0x1E695DF20];
    v36 = &v48;
    v37 = &v47;
    goto LABEL_24;
  }

  v15 = [v10 fileSystemRepresentation];
  v16 = strlen(v15);
  v17.ikey = 5521744;
  v18 = AAHeaderSetFieldString(v12, 0xFFFFFFFF, v17, v15, v16);
  if (v18 < 0)
  {
    if (!a5)
    {
      goto LABEL_26;
    }

    v33 = MEMORY[0x1E696ABC0];
    v34 = v18;
    v45 = *MEMORY[0x1E696A278];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to set 'PAT' header field"];
    v46 = v29;
    v35 = MEMORY[0x1E695DF20];
    v36 = &v46;
    v37 = &v45;
    goto LABEL_24;
  }

  v19 = [v8 length];
  v20.ikey = 5521732;
  v21 = AAHeaderSetFieldBlob(v12, 0xFFFFFFFF, v20, v19);
  if (v21 < 0)
  {
    if (!a5)
    {
      goto LABEL_26;
    }

    v33 = MEMORY[0x1E696ABC0];
    v34 = v21;
    v43 = *MEMORY[0x1E696A278];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to set 'DAT' header field"];
    v44 = v29;
    v35 = MEMORY[0x1E695DF20];
    v36 = &v44;
    v37 = &v43;
    goto LABEL_24;
  }

  v22 = AAArchiveStreamWriteHeader(self->_archiveStream, v12);
  if (v22 < 0)
  {
    if (!a5)
    {
      goto LABEL_26;
    }

    v33 = MEMORY[0x1E696ABC0];
    v34 = v22;
    v41 = *MEMORY[0x1E696A278];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to write header"];
    v42 = v29;
    v35 = MEMORY[0x1E695DF20];
    v36 = &v42;
    v37 = &v41;
    goto LABEL_24;
  }

  archiveStream = self->_archiveStream;
  v24 = [v8 bytes];
  v25 = [v8 length];
  v26.ikey = 5521732;
  v27 = AAArchiveStreamWriteBlob(archiveStream, v26, v24, v25);
  if (v27 < 0)
  {
    if (!a5)
    {
      goto LABEL_26;
    }

    v33 = MEMORY[0x1E696ABC0];
    v34 = v27;
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to write 'DAT' blob", *MEMORY[0x1E696A278]];
    v40 = v29;
    v35 = MEMORY[0x1E695DF20];
    v36 = &v40;
    v37 = &v39;
LABEL_24:
    v30 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:1];
    v31 = v33;
    v32 = v34;
    goto LABEL_25;
  }

  LOBYTE(a5) = 1;
LABEL_26:
  AAHeaderDestroy(v12);

  return a5;
}

- (BOOL)openForReading:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_archiveStream)
  {
    _PFAssertFailHandler();
  }

  v11.receiver = self;
  v11.super_class = PFAppleArchive;
  v5 = [(PFAppleArchiveStream *)&v11 openForReading:?];
  if (v5)
  {
    v6 = AADecodeArchiveInputStreamOpen([(PFAppleArchiveStream *)self _byteStreamToBeReadByArchiveDecodingStream], 0, 0, 0, 0);
    self->_archiveStream = v6;
    if (v6)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      if (a3)
      {
        v7 = MEMORY[0x1E696ABC0];
        v12 = *MEMORY[0x1E696A278];
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to open archive stream"];
        v13[0] = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        *a3 = [v7 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v9];
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)openForWriting:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_archiveStream)
  {
    _PFAssertFailHandler();
  }

  v11.receiver = self;
  v11.super_class = PFAppleArchive;
  v5 = [(PFAppleArchiveStream *)&v11 openForWriting:?];
  if (v5)
  {
    v6 = AAEncodeArchiveOutputStreamOpen([(PFAppleArchiveStream *)self _byteStreamToBeTargetedByArchiveEncodingStream], 0, 0, 0, 0);
    self->_archiveStream = v6;
    LOBYTE(v5) = v6 != 0;
    if (a3)
    {
      if (!v6)
      {
        v7 = MEMORY[0x1E696ABC0];
        v12 = *MEMORY[0x1E696A278];
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to open archive stream"];
        v13[0] = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        *a3 = [v7 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v9];

        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

@end