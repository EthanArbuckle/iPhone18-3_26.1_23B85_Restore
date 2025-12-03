@interface _UILibArchiveStreamingExtractor
+ (BOOL)shouldExtractPathInArchive:(id)archive forExtractionRootedAtStandardizedSubpathInArchive:(id)inArchive;
+ (id)archiveSubpathByStandardizingArchiveSubpath:(id)subpath;
- (BOOL)extractArchivePath:(id)path toDirectory:(id)directory error:(id *)error;
- (id)initForExtractingArchivePath:(id)path;
@end

@implementation _UILibArchiveStreamingExtractor

- (id)initForExtractingArchivePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _UILibArchiveStreamingExtractor;
  v6 = [(_UILibArchiveStreamingExtractor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archivePath, path);
  }

  return v7;
}

+ (id)archiveSubpathByStandardizingArchiveSubpath:(id)subpath
{
  stringByStandardizingPath = [subpath stringByStandardizingPath];
  if ([stringByStandardizingPath length] && (objc_msgSend(stringByStandardizingPath, "isEqualToString:", @"/") & 1) == 0)
  {
    v4 = @".";
    if (([stringByStandardizingPath isEqualToString:@"."] & 1) == 0)
    {
      if ([stringByStandardizingPath hasPrefix:@"/"])
      {
        v6 = [stringByStandardizingPath substringFromIndex:1];

        stringByStandardizingPath = v6;
      }

      v4 = stringByStandardizingPath;
      stringByStandardizingPath = v4;
    }
  }

  else
  {
    v4 = @".";
  }

  return v4;
}

+ (BOOL)shouldExtractPathInArchive:(id)archive forExtractionRootedAtStandardizedSubpathInArchive:(id)inArchive
{
  archiveCopy = archive;
  inArchiveCopy = inArchive;
  if ([inArchiveCopy isEqualToString:@"."])
  {
    v7 = 1;
  }

  else
  {
    stringByStandardizingPath = [archiveCopy stringByStandardizingPath];

    v7 = [stringByStandardizingPath hasPrefix:inArchiveCopy];
    archiveCopy = stringByStandardizingPath;
  }

  return v7;
}

- (BOOL)extractArchivePath:(id)path toDirectory:(id)directory error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  bzero(v69, 0x400uLL);
  v9 = directoryCopy;
  pathCopy = path;
  if (realpath_DARWIN_EXTSN([directoryCopy fileSystemRepresentation], v69))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v69];
  }

  else
  {
    v11 = directoryCopy;
  }

  v12 = v11;

  v13 = [objc_opt_class() archiveSubpathByStandardizingArchiveSubpath:pathCopy];

  v14 = [[_UILibArchiveStreamingReader alloc] initForReadingArchivePath:self->_archivePath];
  if ([v14 open])
  {
    ui_archive_write_disk_new();
    v16 = v15;
    ui_archive_write_disk_set_standard_lookup(v15);
    ui_archive_write_disk_set_options(v16, 772);
    *v69 = 0;
    v70 = v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__65;
    v73 = __Block_byref_object_dispose__65;
    v74 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    array = [MEMORY[0x1E695DF70] array];
    obj = [MEMORY[0x1E695DF70] array];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __72___UILibArchiveStreamingExtractor_extractArchivePath_toDirectory_error___block_invoke;
    v44[3] = &unk_1E71058E0;
    v49 = &v57;
    v44[4] = self;
    v18 = v13;
    v45 = v18;
    v50 = &v53;
    v19 = v12;
    v46 = v19;
    v51 = v69;
    v52 = v16;
    v20 = array;
    v47 = v20;
    v21 = obj;
    v48 = v21;
    v43 = 0;
    [v14 readAllItemsWithBlock:v44 error:&v43];
    v42 = v43;
    ui_archive_write_close(v16);
    ui_archive_write_finish(v16);
    [v14 close];
    if (*(v70 + 5))
    {
      goto LABEL_15;
    }

    v22 = v58[3];
    if (v22)
    {
      if (v54[3])
      {
        v22 = 0;
      }

      else
      {
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No items found at requested subpath %@ in archive %@", v18, self->_archivePath];
        v35 = MEMORY[0x1E696ABC0];
        v65 = *MEMORY[0x1E696A578];
        v66 = v40;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v37 = [v35 errorWithDomain:@"_UIArchiveExtractorErrorDomain" code:-1 userInfo:v36];
        v38 = *(v70 + 5);
        *(v70 + 5) = v37;

        v22 = *(v70 + 5);
        if (v22)
        {
          goto LABEL_13;
        }
      }
    }

    if (v42)
    {
      v23 = *(__UILogGetCategoryCachedImpl("DocumentInteraction", &_MergedGlobals_1064) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v64 = v42;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "encountered reading error: %@", buf, 0xCu);
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Extractor encountered error reading source archive %@", self->_archivePath];
      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v61[0] = *MEMORY[0x1E696AA08];
      v61[1] = v25;
      v62[0] = v42;
      v62[1] = v39;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
      v27 = [v24 errorWithDomain:@"_UIArchiveExtractorErrorDomain" code:-1 userInfo:v26];
      v28 = *(v70 + 5);
      *(v70 + 5) = v27;

      v22 = *(v70 + 5);
    }

LABEL_13:
    if (!v22)
    {
      objc_storeStrong(&self->_extractedContentAbsolutePaths, obj);
      if (!*(v70 + 5))
      {
LABEL_19:
        _UIAppleDoubleMergeAppleDoubleItemsIntoRealFiles(v20, v19);
        LOBYTE(error) = *(v70 + 5) == 0;

        _Block_object_dispose(&v53, 8);
        _Block_object_dispose(&v57, 8);

        _Block_object_dispose(v69, 8);
        goto LABEL_22;
      }
    }

LABEL_15:
    v29 = *(__UILogGetCategoryCachedImpl("DocumentInteraction", &qword_1ED49DA20) + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *(v70 + 5);
      *buf = 138412290;
      v64 = v30;
      _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "encountered writing error: %@", buf, 0xCu);
    }

    if (error)
    {
      *error = *(v70 + 5);
    }

    goto LABEL_19;
  }

  if (error)
  {
    v31 = MEMORY[0x1E696ABC0];
    v67 = *MEMORY[0x1E696A578];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to open source archive %@ for extracting", self->_archivePath];
    v68 = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    *error = [v31 errorWithDomain:@"_UIArchiveExtractorErrorDomain" code:-1 userInfo:v33];

    LOBYTE(error) = 0;
  }

LABEL_22:

  return error;
}

@end