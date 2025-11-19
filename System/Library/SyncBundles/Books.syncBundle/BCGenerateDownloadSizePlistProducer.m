@interface BCGenerateDownloadSizePlistProducer
- (BOOL)_addDownloadSizeFromITunesMetadataToEntry:(id)a3;
- (id)_addEstimatedDownloadSizeFromITunesMetadataDictionary:(id)a3 assetPath:(id)a4 toEntry:(id)a5;
- (id)_addSizeOnDiskFromITunesMetadataDictionary:(id)a3 toEntry:(id)a4;
- (id)_artworkFileSizeForAssetPath:(id)a3 isDirectory:(BOOL)a4;
- (id)_fileSizeForPath:(id)a3;
- (id)_metadataAssetFileSize:(id)a3 book:(id)a4;
- (id)produceData;
- (void)_addComputedSizeOnDiskToEntries:(id)a3;
@end

@implementation BCGenerateDownloadSizePlistProducer

- (id)_metadataAssetFileSize:(id)a3 book:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = objc_opt_class();
  v6 = BCDynamicCast(v5, [a3 objectForKeyedSubscript:@"asset-info"]);
  if (!v6 || (result = [v6 objectForKeyedSubscript:@"file-size"]) == 0)
  {

    return [a3 objectForKeyedSubscript:@"file-size"];
  }

  return result;
}

- (id)_fileSizeForPath:(id)a3
{
  v7 = 0;
  v4 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:a3, &v7];
  if (v4)
  {
    return [(NSDictionary *)v4 objectForKeyedSubscript:NSFileSize];
  }

  v6 = BCDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_13398(a3, &v7, v6);
  }

  return 0;
}

- (id)_artworkFileSizeForAssetPath:(id)a3 isDirectory:(BOOL)a4
{
  if (a4)
  {
    v5 = [a3 stringByAppendingPathComponent:@"iTunesArtwork"];
  }

  else
  {
    v5 = [objc_msgSend(a3 "stringByDeletingPathExtension")];
  }

  return [(BCGenerateDownloadSizePlistProducer *)self _fileSizeForPath:v5];
}

- (id)_addEstimatedDownloadSizeFromITunesMetadataDictionary:(id)a3 assetPath:(id)a4 toEntry:(id)a5
{
  v8 = [(BCGenerateDownloadSizePlistProducer *)self _metadataAssetFileSize:a3 book:a5];
  if (!v8)
  {
    return 0;
  }

  v9 = [v8 unsignedLongLongValue];
  v10 = [(BCGenerateDownloadSizePlistProducer *)self _artworkFileSizeForAssetPath:a4 isDirectory:1];
  if (v10)
  {
    v9 = &v9[[v10 unsignedLongLongValue]];
  }

  v11 = [NSNumber numberWithUnsignedLongLong:v9];
  if (v11)
  {
    v12 = BCDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = [a5 objectForKeyedSubscript:@"Artist"];
      v16 = 2112;
      v17 = [a5 objectForKeyedSubscript:@"Name"];
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[BCGenerateDownloadSizePlistProducer] Adding 'Estimated Download Size' for {%@ - %@}: %@", &v14, 0x20u);
    }

    [a5 setObject:v11 forKeyedSubscript:@"Estimated Download Size"];
  }

  return v11;
}

- (id)_addSizeOnDiskFromITunesMetadataDictionary:(id)a3 toEntry:(id)a4
{
  v5 = [a3 objectForKeyedSubscript:@"BKAllocatedSize"];
  if (v5)
  {
    v6 = BCDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138544130;
      v9 = @"BKAllocatedSize";
      v10 = 2112;
      v11 = [a4 objectForKeyedSubscript:@"Artist"];
      v12 = 2112;
      v13 = [a4 objectForKeyedSubscript:@"Name"];
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[BCGenerateDownloadSizePlistProducer] Adding 'Size On Disk' based on %{public}@ for {%@ - %@}: %@", &v8, 0x2Au);
    }

    [a4 setObject:v5 forKeyedSubscript:@"Size On Disk"];
  }

  return v5;
}

- (void)_addComputedSizeOnDiskToEntries:(id)a3
{
  v3 = a3;
  if ([a3 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v39;
      v9 = @"Path";
      v10 = @"Size On Disk";
      v11 = &ATGetDiskUsageForPath_ptr;
      *&v6 = 138412546;
      v36 = v6;
      do
      {
        v12 = 0;
        v37 = v7;
        do
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v13 = *(*(&v38 + 1) + 8 * v12);
          v14 = v11[76];
          v15 = objc_opt_class();
          v16 = BCDynamicCast(v15, [v13 objectForKeyedSubscript:v9]);
          if (!v16)
          {
            v27 = BCDefaultLog();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            v28 = [v13 objectForKeyedSubscript:@"Artist"];
            v29 = [v13 objectForKeyedSubscript:@"Name"];
            *buf = v36;
            v43 = v28;
            v11 = &ATGetDiskUsageForPath_ptr;
            v44 = 2112;
            v45 = v29;
            v30 = v27;
            v31 = "[BCGenerateDownloadSizePlistProducer] Path not found before getting disk usage for {%@ - %@}";
LABEL_18:
            _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);
            goto LABEL_15;
          }

          v17 = v16;
          if (![v16 length])
          {
            v32 = BCDefaultLog();
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            v33 = [v13 objectForKeyedSubscript:@"Artist"];
            v34 = [v13 objectForKeyedSubscript:@"Name"];
            *buf = v36;
            v43 = v33;
            v11 = &ATGetDiskUsageForPath_ptr;
            v44 = 2112;
            v45 = v34;
            v30 = v32;
            v31 = "[BCGenerateDownloadSizePlistProducer] Path is empty before getting disk usage for {%@ - %@}";
            goto LABEL_18;
          }

          [[(NSString *)self->super._path stringByDeletingLastPathComponent] stringByAppendingPathComponent:v17];
          v18 = ATGetDiskUsageForPath();
          v19 = BCDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v9;
            v21 = v8;
            v22 = v10;
            v23 = v3;
            v24 = self;
            v25 = [v13 objectForKeyedSubscript:@"Artist"];
            v26 = [v13 objectForKeyedSubscript:@"Name"];
            *buf = 138412802;
            v43 = v25;
            self = v24;
            v3 = v23;
            v10 = v22;
            v8 = v21;
            v9 = v20;
            v7 = v37;
            v44 = 2112;
            v45 = v26;
            v46 = 2048;
            v47 = v18;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[BCGenerateDownloadSizePlistProducer] Adding 'Size On Disk' based on disk usage for {%@ - %@}: %llu", buf, 0x20u);
          }

          [v13 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", v18, v36), v10}];
          v11 = &ATGetDiskUsageForPath_ptr;
LABEL_15:
          v12 = v12 + 1;
        }

        while (v7 != v12);
        v35 = [v3 countByEnumeratingWithState:&v38 objects:v48 count:16];
        v7 = v35;
      }

      while (v35);
    }
  }
}

- (BOOL)_addDownloadSizeFromITunesMetadataToEntry:(id)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = objc_opt_class();
  v7 = BCDynamicCast(v6, [a3 objectForKeyedSubscript:@"Path"]);
  if (!v7)
  {
    v13 = BCDefaultLog();
    v10 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    sub_13574(a3);
LABEL_13:
    LOBYTE(v10) = 0;
    return v10;
  }

  v8 = v7;
  if (![v7 length])
  {
    v14 = BCDefaultLog();
    v10 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    sub_134CC(a3);
    goto LABEL_13;
  }

  v9 = [[(NSString *)self->super._path stringByDeletingLastPathComponent] stringByAppendingPathComponent:v8];
  v10 = [(NSFileManager *)v5 isDirectoryPath:v9];
  if (!v10)
  {
    return v10;
  }

  v11 = [NSDictionary dictionaryWithContentsOfFile:[(NSString *)v9 stringByAppendingPathComponent:@"iTunesMetadata.plist"]];
  if (!v11)
  {
    v15 = BCDefaultLog();
    v10 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    sub_13424(a3);
    goto LABEL_13;
  }

  v12 = v11;
  if ([(BCGenerateDownloadSizePlistProducer *)self _addEstimatedDownloadSizeFromITunesMetadataDictionary:v11 assetPath:v9 toEntry:a3])
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    LOBYTE(v10) = [(BCGenerateDownloadSizePlistProducer *)self _addSizeOnDiskFromITunesMetadataDictionary:v12 toEntry:a3]!= 0;
  }

  return v10;
}

- (id)produceData
{
  v3 = +[NSMutableArray array];
  v4 = [NSMutableDictionary dictionaryWithContentsOfFile:self->super._path];
  v5 = objc_opt_class();
  v6 = BCDynamicCast(v5, [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"Books"]);
  if (![v6 count])
  {
    goto LABEL_17;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v8)
  {
    [(BCGenerateDownloadSizePlistProducer *)self _addComputedSizeOnDiskToEntries:v7];

LABEL_17:
    self->super._dataUnchanged = 1;
    return v4;
  }

  v9 = v8;
  v23 = self;
  obj = v6;
  v20 = v4;
  v21 = v7;
  v22 = 0;
  v10 = *v26;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v25 + 1) + 8 * i);
      v13 = objc_opt_class();
      v14 = BCDynamicCast(v13, v12);
      v15 = objc_opt_class();
      v16 = BCDynamicCast(v15, [v14 objectForKeyedSubscript:@"Estimated Download Size"]);
      v17 = objc_opt_class();
      if (v16 | BCDynamicCast(v17, [v14 objectForKeyedSubscript:@"Size On Disk"]))
      {
        [v3 addObject:v14];
      }

      else
      {
        v18 = [[NSMutableDictionary alloc] initWithDictionary:v14];
        [v3 addObject:v18];
        if (![(BCGenerateDownloadSizePlistProducer *)v23 _addDownloadSizeFromITunesMetadataToEntry:v18])
        {
          [v21 addObject:v18];
        }

        v22 = 1;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v9);
  self = v23;
  [(BCGenerateDownloadSizePlistProducer *)v23 _addComputedSizeOnDiskToEntries:v21];

  v4 = v20;
  if ((v22 & 1) == 0)
  {
    goto LABEL_17;
  }

  [(NSMutableDictionary *)v20 setObject:v3 forKeyedSubscript:@"Books"];
  return v4;
}

@end