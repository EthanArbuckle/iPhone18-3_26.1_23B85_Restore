@interface UILibArchiveStreamingExtractor
@end

@implementation UILibArchiveStreamingExtractor

void __72___UILibArchiveStreamingExtractor_extractArchivePath_toDirectory_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  ++*(*(*(a1 + 72) + 8) + 24);
  v6 = [v5 pathInArchive];
  v7 = [v6 stringByStandardizingPath];

  if ([objc_opt_class() shouldExtractPathInArchive:v7 forExtractionRootedAtStandardizedSubpathInArchive:*(a1 + 40)])
  {
    ++*(*(*(a1 + 80) + 8) + 24);
    v8 = [*(a1 + 48) stringByAppendingPathComponent:v7];
    ui_archive_entry_clone([v5 underlyingArchiveEntry]);
    v10 = v9;
    ui_archive_entry_set_pathname(v9, v8);
    ui_archive_write_header(*(a1 + 96), v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 96);
      v14 = @"Unable to write header";
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v28 = 0;
      while (1)
      {
        ui_archive_read_data_block([v5 underlyingArchive], &v30, &v29, &v28);
        v16 = v15;
        if (v15)
        {
          break;
        }

        ui_archive_write_data_block(*(a1 + 96), v30, v29, v28);
        if (v17)
        {
          v18 = ui_archive_error(*(a1 + 96), @"_UIArchiveExtractorErrorDomain", -25, @"Unable to write data");
          v19 = *(*(a1 + 88) + 8);
          v20 = *(v19 + 40);
          *(v19 + 40) = v18;

LABEL_11:
          v13 = [v5 underlyingArchive];
          v14 = @"Unable to read data";
          v12 = v16;
          goto LABEL_12;
        }
      }

      if (v15 != 1)
      {
        goto LABEL_11;
      }

      ui_archive_write_finish_entry(*(a1 + 96));
      if (!v21)
      {
        goto LABEL_13;
      }

      v12 = v21;
      v13 = *(a1 + 96);
      v14 = @"Unable to finish writing data";
    }

LABEL_12:
    v22 = ui_archive_error(v13, @"_UIArchiveExtractorErrorDomain", v12, v14);
    v23 = *(*(a1 + 88) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    *a3 = 1;
LABEL_13:
    v25 = [v5 isAppleDoubleFile];
    v26 = 64;
    if (v25)
    {
      v26 = 56;
      v27 = v5;
    }

    else
    {
      v27 = v8;
    }

    [*(a1 + v26) addObject:v27];
    ui_archive_entry_free(v10);
  }
}

@end