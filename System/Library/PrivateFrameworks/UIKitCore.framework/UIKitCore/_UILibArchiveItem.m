@interface _UILibArchiveItem
+ (id)itemByReadingAttributesFromUnderlyingArchiveEntry:(ui_archive_entry *)a3 archive:(ui_archive *)a4;
@end

@implementation _UILibArchiveItem

+ (id)itemByReadingAttributesFromUnderlyingArchiveEntry:(ui_archive_entry *)a3 archive:(ui_archive *)a4
{
  v6 = objc_alloc_init(objc_opt_class());
  v7 = ui_archive_entry_pathname(a3);
  if (![v7 length])
  {
    v13 = *(__UILogGetCategoryCachedImpl("DocumentInteraction", &_MergedGlobals_1_6) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v14 = "unable to load archive item [ui_archive_entry_pathname() not set]";
      v15 = &v22;
LABEL_9:
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
    }

LABEL_10:
    v16 = 0;
    goto LABEL_16;
  }

  ui_archive_entry_filetype(a3);
  if (!v8)
  {
    v13 = *(__UILogGetCategoryCachedImpl("DocumentInteraction", &qword_1ED499248) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = 0;
      v14 = "unable to load archive item [ui_archive_entry_filetype() not set]";
      v15 = &v21;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v9 = v8;
  ui_archive_entry_size_is_set(a3);
  [v6 setFileSizeIsSet:v10 != 0];
  if ([v6 fileSizeIsSet])
  {
    ui_archive_entry_size(a3);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v6 setPathInArchive:v7];
  v17 = *MEMORY[0x1E696A3F8];
  v18 = ((v9 - 4096) >> 12) - 1;
  if (v18 <= 0xA && ((0x555u >> v18) & 1) != 0)
  {
    v19 = **(&unk_1E71056F0 + v18);

    v17 = v19;
  }

  [v6 setFileType:v17];

  [v6 setFileSize:v12];
  v6[7] = a4;
  v6[6] = a3;
  v16 = v6;
LABEL_16:

  return v16;
}

@end