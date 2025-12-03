@interface AnalyticsStoreFileWriter
+ (BOOL)writeData:(id)data toFile:(id)file;
+ (id)analyticsStoreFileWriterDirectory;
+ (id)writeObj:(id)obj toJSONFile:(id)file;
- (AnalyticsStoreFileWriter)initWithPersistentContainer:(id)container;
- (id)analyticsStoreFileWriterFilePath;
- (id)batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:(unint64_t)size maxAge:(unint64_t)age;
- (id)batchedWriteAnalyticsStoreToFile:(unint64_t)file maxAge:(unint64_t)age;
- (id)batchedWriteAnalyticsStoreToFileWithBatchSize:(unint64_t)size maxAge:(unint64_t)age;
- (id)exportEntityToCSV:(id)v batchSize:(unint64_t)size maxAge:(unint64_t)age toURL:(id)l fileDate:(id)date;
- (id)moc;
- (id)relationshipKeyPathsForPrefetching:(id)prefetching;
- (id)stringifyObjectWithPadding:(id)padding padding:(id)a4 padToLength:(unint64_t)length;
- (id)stringifyRelationship:(id)relationship name:(id *)name onMoc:(id)moc;
- (id)stringifyValueArray:(id)array;
- (id)writeAnalyticsStoreToFile;
- (id)writeArrayToJSONFile:(id)file;
- (id)writeDeploymentGraphToFile;
- (id)writeDictionaryToJSONFile:(id)file network:(id)network;
- (void)initDateFormatter;
- (void)stringifyManagedObjectsArray:(id)array titleString:(id *)string dataStringsArray:(id *)stringsArray onMoc:(id)moc;
- (void)writeAttributes:(id)attributes fromObject:(id)object ofEntity:(id)entity withWriter:(id)writer;
- (void)writeRelationships:(id)relationships fromObject:(id)object ofEntity:(id)entity with:(id)with;
- (void)writeRelationshipsHeaders:(id)headers ofEntity:(id)entity with:(id)with;
@end

@implementation AnalyticsStoreFileWriter

- (AnalyticsStoreFileWriter)initWithPersistentContainer:(id)container
{
  v16 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = AnalyticsStoreFileWriter;
  v6 = [(AnalyticsStoreFileWriter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (containerCopy)
    {
      objc_storeStrong(&v6->_persistentContainer, container);
      [(AnalyticsStoreFileWriter *)v7 initDateFormatter];
    }

    else
    {
      v10 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v13 = "[AnalyticsStoreFileWriter initWithPersistentContainer:]";
        v14 = 1024;
        v15 = 55;
        _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:nil PersistentContainer", buf, 0x12u);
      }

      v7 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)initDateFormatter
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  dateFormatter = self->_dateFormatter;
  self->_dateFormatter = v3;

  v5 = self->_dateFormatter;

  [(NSDateFormatter *)v5 setDateFormat:@"yyyy'-'MM'-'dd_HH':'mm':'ss'.'SSS"];
}

- (id)moc
{
  persistentContainer = [(AnalyticsStoreFileWriter *)self persistentContainer];
  viewContext = [persistentContainer viewContext];

  return viewContext;
}

+ (id)analyticsStoreFileWriterDirectory
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = +[WAUtil wifianalyticsTmpDirectory];
  v3 = v2;
  if (!v2)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "+[AnalyticsStoreFileWriter analyticsStoreFileWriterDirectory]";
      v19 = 1024;
      v20 = 98;
      v14 = "%{public}s::%d:tmpDirectory nil";
LABEL_14:
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
    }

LABEL_18:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = [v2 URLByAppendingPathComponent:@"AnalyticsStoreDump"];
  if (!v4)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "+[AnalyticsStoreFileWriter analyticsStoreFileWriterDirectory]";
      v19 = 1024;
      v20 = 101;
      v14 = "%{public}s::%d:analyticsStoreDumpDirectory nil";
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v5 = v4;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v5 path];
  v8 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if ((v8 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = 0;
    [defaultManager2 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v16];
    v10 = v16;

    if (v10)
    {
      v15 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v18 = "+[AnalyticsStoreFileWriter analyticsStoreFileWriterDirectory]";
        v19 = 1024;
        v20 = 109;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to create wifianalytics tmp directory with error %@", buf, 0x1Cu);
      }

      v11 = v5;
      goto LABEL_18;
    }
  }

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v18 = "+[AnalyticsStoreFileWriter analyticsStoreFileWriterDirectory]";
    v19 = 1024;
    v20 = 111;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:analyticsStoreDumpDirectory: %@", buf, 0x1Cu);
  }

LABEL_7:

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)analyticsStoreFileWriterFilePath
{
  v37 = *MEMORY[0x1E69E9840];
  dateFormatter = self->_dateFormatter;
  date = [MEMORY[0x1E695DF00] date];
  v4 = [(NSDateFormatter *)dateFormatter stringFromDate:date];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AnalyticsStoreDump_%@.txt", v4];
  analyticsStoreFileWriterDirectory = [objc_opt_class() analyticsStoreFileWriterDirectory];
  v7 = [analyticsStoreFileWriterDirectory URLByAppendingPathComponent:v5 isDirectory:0];

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v28 = "[AnalyticsStoreFileWriter analyticsStoreFileWriterFilePath]";
    v29 = 1024;
    v30 = 131;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:fileURL: %@", buf, 0x1Cu);
  }

  path = [v7 path];
  if (!path)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "[AnalyticsStoreFileWriter analyticsStoreFileWriterFilePath]";
      v29 = 1024;
      v30 = 134;
      v20 = "%{public}s::%d:fileName nil";
      v21 = v13;
      v22 = 18;
LABEL_17:
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    }

LABEL_21:

    v17 = 0;
    goto LABEL_10;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [defaultManager fileExistsAtPath:path];

  if (v11)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v26 = 0;
    [defaultManager2 removeItemAtPath:path error:&v26];
    v13 = v26;

    if (v13)
    {
      v23 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v13 localizedDescription];
        userInfo = [v13 userInfo];
        *buf = 136447234;
        v28 = "[AnalyticsStoreFileWriter analyticsStoreFileWriterFilePath]";
        v29 = 1024;
        v30 = 139;
        v31 = 2112;
        v32 = path;
        v33 = 2112;
        v34 = localizedDescription;
        v35 = 2112;
        v36 = userInfo;
        _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error deleting %@ %@ %@", buf, 0x30u);
      }

      goto LABEL_21;
    }
  }

  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [defaultManager3 createFileAtPath:path contents:0 attributes:0];

  v13 = WALogCategoryDeviceStoreHandle();
  v16 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if ((v15 & 1) == 0)
  {
    if (v16)
    {
      *buf = 136446722;
      v28 = "[AnalyticsStoreFileWriter analyticsStoreFileWriterFilePath]";
      v29 = 1024;
      v30 = 145;
      v31 = 2112;
      v32 = path;
      v20 = "%{public}s::%d:Error creating %@";
      v21 = v13;
      v22 = 28;
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  if (v16)
  {
    *buf = 136446722;
    v28 = "[AnalyticsStoreFileWriter analyticsStoreFileWriterFilePath]";
    v29 = 1024;
    v30 = 148;
    v31 = 2112;
    v32 = path;
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Will write to file: %@", buf, 0x1Cu);
  }

  v17 = v7;
LABEL_10:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (BOOL)writeData:(id)data toFile:(id)file
{
  v23 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v6 = MEMORY[0x1E696AEC0];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy encoding:4];

  v14 = 0;
  [v8 writeToURL:fileCopy atomically:1 encoding:4 error:&v14];
  v9 = v14;
  if (v9)
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      path = [fileCopy path];
      *buf = 136446978;
      v16 = "+[AnalyticsStoreFileWriter writeData:toFile:]";
      v17 = 1024;
      v18 = 160;
      v19 = 2112;
      v20 = path;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to write to file %@ error %@", buf, 0x26u);
    }
  }

  else
  {
    [WAUtil setFutureApfsPurgeableDeadline:604800 forURL:fileCopy];
  }

  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (id)writeObj:(id)obj toJSONFile:(id)file
{
  v24 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  objCopy = obj;
  analyticsStoreFileWriterDirectory = [self analyticsStoreFileWriterDirectory];
  v9 = [analyticsStoreFileWriterDirectory URLByAppendingPathComponent:fileCopy isDirectory:0];

  v17 = 0;
  v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:objCopy options:3 error:&v17];

  v11 = v17;
  if (v11)
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "+[AnalyticsStoreFileWriter writeObj:toJSONFile:]";
      v20 = 1024;
      v21 = 178;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to serialize JSON: %@", buf, 0x1Cu);
    }

    v12 = 0;
  }

  else if ([self writeData:v10 toFile:v9])
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)writeDictionaryToJSONFile:(id)file network:(id)network
{
  v23 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  networkCopy = network;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:fileCopy])
  {
    dateFormatter = self->_dateFormatter;
    date = [MEMORY[0x1E695DF00] date];
    v10 = [(NSDateFormatter *)dateFormatter stringFromDate:date];

    v11 = objc_opt_class();
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DeploymentGraph_%@_%@.json", networkCopy, v10];
    v13 = [v11 writeObj:fileCopy toJSONFile:v12];
  }

  else
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "[AnalyticsStoreFileWriter writeDictionaryToJSONFile:network:]";
      v19 = 1024;
      v20 = 194;
      v21 = 2080;
      v22 = "[AnalyticsStoreFileWriter writeDictionaryToJSONFile:network:]";
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Invalid data passed to JSON serialization", buf, 0x1Cu);
    }

    v13 = 0;
    v10 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)writeArrayToJSONFile:(id)file
{
  v20 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:fileCopy])
  {
    dateFormatter = self->_dateFormatter;
    date = [MEMORY[0x1E695DF00] date];
    v7 = [(NSDateFormatter *)dateFormatter stringFromDate:date];

    v8 = objc_opt_class();
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DeploymentGraph_%@.json", v7];
    v10 = [v8 writeObj:fileCopy toJSONFile:v9];
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "[AnalyticsStoreFileWriter writeArrayToJSONFile:]";
      v16 = 1024;
      v17 = 208;
      v18 = 2080;
      v19 = "[AnalyticsStoreFileWriter writeArrayToJSONFile:]";
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Invalid data passed to JSON serialization", buf, 0x1Cu);
    }

    v10 = 0;
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)writeDeploymentGraphToFile
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v3 = [(AnalyticsStoreFileWriter *)self moc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke;
  v6[3] = &unk_1E830F558;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "writeDeploymentGraphToFile", "", buf, 2u);
  }

  v4 = [*(a1 + 32) moc];
  v5 = [NetworkMO copyAllSsids:v4];

  v6 = [MEMORY[0x1E695DF70] array];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_71;
  v16 = &unk_1E830F530;
  v17 = *(a1 + 32);
  v7 = v6;
  v18 = v7;
  [v5 enumerateObjectsUsingBlock:&v13];
  v8 = [*(a1 + 32) writeArrayToJSONFile:{v7, v13, v14, v15, v16, v17}];
  v9 = [v8 path];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "writeDeploymentGraphToFile", "", buf, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_71(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) moc];
    v5 = [BSSMO copyDeploymentUuidsForSsid:v3 moc:v4];

    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_2;
      v9[3] = &unk_1E830F508;
      v6 = v3;
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = v6;
      v11 = v7;
      v12 = v8;
      [v5 enumerateObjectsUsingBlock:v9];
    }
  }
}

void __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = v3;
    v5 = v4;
    if (v4)
    {
      v6 = [v4 UUIDString];

      if (v6)
      {
        v7 = [v5 UUIDString];
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) moc];
        v10 = [BSSMO copyBssidsForDeployment:v8 deploymentUuid:v7 moc:v9];

        if (v10)
        {
          context = objc_autoreleasePoolPush();
          v11 = [NeighborGraph alloc];
          v12 = *(a1 + 32);
          v13 = [*(a1 + 40) persistentContainer];
          v14 = [(NeighborGraph *)v11 initWithBssidArray:v10 ssid:v12 persistentContainer:v13];

          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_3;
          v33[3] = &unk_1E830F508;
          v31 = *(a1 + 32);
          v15 = v31.i64[0];
          v34 = vextq_s8(v31, v31, 8uLL);
          v16 = v14;
          v35 = v16;
          [v10 enumerateObjectsUsingBlock:v33];
          v17 = [*(a1 + 40) moc];
          v18 = [(NeighborGraph *)v16 copyNeighborGraphAsDictionaryOnMoc:v17];

          v19 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v18];
          v20 = MEMORY[0x1E696AEC0];
          v32 = v7;
          v21 = *(a1 + 32);
          v22 = [v5 UUIDString];
          v23 = [v20 stringWithFormat:@"%@(%@)", v21, v22];
          [v19 setObject:v23 forKey:@"deployment"];

          v24 = *(*(a1 + 40) + 16);
          v25 = +[WADeviceAnalyticsJoinRecord entity];
          v26 = [v24 mostRecentDatedEvent:v25 before:0 withPrefetchedProperties:&unk_1F483E788 withError:0];

          v27 = [v26 bss];
          v28 = [v27 apid];

          if ([v5 isEqual:v28])
          {
            v29 = MEMORY[0x1E695E118];
          }

          else
          {
            v29 = MEMORY[0x1E695E110];
          }

          [v19 setObject:v29 forKey:@"isMostRecentlyUsedDeployment"];
          [*(a1 + 48) addObject:v19];

          v7 = v32;
          objc_autoreleasePoolPop(context);
        }
      }
    }
  }
}

void __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_3(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) bssForBssid:v3 prefetchProperties:&unk_1F483E770 withError:0];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v4 mostRecentBand] == 0;
    v8 = [v5 bssid];
    v9 = [*(a1 + 32) moc];
    v10 = [RoamMO dwellTimeInBand:v6 bandIs24:v7 bssid:v8 maxAgeInDays:0 moc:v9];

    v11 = [BSSMO bssManagedObjectPropertyValue:v5 forKey:@"NeighborInfo"];
    [*(a1 + 48) setNeighborsForBssid:v3 dwellTime:v10 neighborInfoArray:v11];
    if (v11)
    {
      v24 = v11;
      v25 = v3;
      v12 = v11;
      if ([v12 count])
      {
        v13 = 0;
        v26 = v12;
        v27 = v5;
        do
        {
          v14 = [v12 objectAtIndex:{v13, v24, v25}];
          v15 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v5 bssid];
            v29 = [v14 valueForKey:@"NeighborBssid"];
            v28 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiHigh"];
            v17 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiUpperHigh"];
            v18 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiOptimum"];
            v19 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiMid"];
            v20 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiUpperMid"];
            v21 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiLow"];
            *buf = 136448514;
            v31 = "[AnalyticsStoreFileWriter writeDeploymentGraphToFile]_block_invoke_3";
            v32 = 1024;
            v33 = 272;
            v34 = 2112;
            v35 = v16;
            v36 = 2112;
            v37 = v29;
            v38 = 2112;
            v39 = v28;
            v40 = 2112;
            v41 = v17;
            v22 = v17;
            v42 = 2112;
            v43 = v18;
            v44 = 2112;
            v45 = v19;
            v46 = 2112;
            v47 = v20;
            v48 = 2112;
            v49 = v21;
            _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Source:%@ Neighbor:%@ LowRssiRoam (High:%@ UpperHigh:%@ Opt:%@ Mid:%@ UpperMid:%@ Low:%@)", buf, 0x62u);

            v12 = v26;
            v5 = v27;
          }

          ++v13;
        }

        while (v13 < [v12 count]);
      }

      v11 = v24;
      v3 = v25;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)batchedWriteAnalyticsStoreToFileWithBatchSize:(unint64_t)size maxAge:(unint64_t)age
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v7 = [(AnalyticsStoreFileWriter *)self moc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToFileWithBatchSize_maxAge___block_invoke;
  v10[3] = &unk_1E830F580;
  v10[6] = size;
  v10[7] = age;
  v10[4] = self;
  v10[5] = &v11;
  [v7 performBlockAndWait:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __81__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToFileWithBatchSize_maxAge___block_invoke(uint64_t a1)
{
  v113 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v80 = a1;
  v3 = [*(a1 + 32) analyticsStoreFileWriterFilePath];
  v4 = v3;
  if (!v3)
  {
    v74 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v105 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
      v106 = 1024;
      v107 = 330;
LABEL_60:
      _os_log_impl(&dword_1C8460000, v74, OS_LOG_TYPE_ERROR, "%{public}s::%d:fileHandle nil", buf, 0x12u);
    }

LABEL_61:

    v70 = 0;
    v27 = 0;
    v7 = 0;
    goto LABEL_55;
  }

  v5 = MEMORY[0x1E696AC00];
  v6 = [v3 path];
  v7 = [v5 fileHandleForWritingAtPath:v6];

  if (!v7)
  {
    v74 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v105 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
      v106 = 1024;
      v107 = 333;
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v8 = *(v80 + 48);
  v9 = WALogCategoryDeviceStoreHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      v11 = *(v80 + 48);
      *buf = 136446722;
      v105 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
      v106 = 1024;
      v107 = 337;
      v108 = 2048;
      v109 = v11;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:batchSize is %lu", buf, 0x1Cu);
    }

    v76 = v2;

    v75 = objc_autoreleasePoolPush();
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v12 = [*(*(v80 + 32) + 16) managedObjectModel];
    v13 = [v12 entities];

    v87 = [v13 countByEnumeratingWithState:&v99 objects:v112 count:16];
    v14 = 0;
    if (v87)
    {
      v86 = *v100;
      v77 = v13;
      do
      {
        v15 = 0;
        do
        {
          if (*v100 != v86)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v99 + 1) + 8 * v15);
          v17 = objc_autoreleasePoolPush();
          v89 = [MEMORY[0x1E696AD60] string];
          v18 = [MEMORY[0x1E696AD60] string];
          v19 = +[GeoTagMO entity];
          if ([v16 isKindOfEntity:v19])
          {

LABEL_14:
            objc_autoreleasePoolPop(v17);
            goto LABEL_41;
          }

          +[WiFiStatMO entity];
          v20 = v88 = v17;
          v21 = [v16 isKindOfEntity:v20];

          v17 = v88;
          if (v21)
          {
            goto LABEL_14;
          }

          v22 = [v16 name];
          v23 = [*(v80 + 32) stringifyObjectWithPadding:v89 padding:@"-" padToLength:{objc_msgSend(v22, "length") + 1}];
          [v18 appendFormat:@"%@", v23];

          v85 = v22;
          [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@\n%@|\n", v18, v22];
          v25 = v24 = v14;
          [v7 seekToEndOfFile];
          v26 = [v25 dataUsingEncoding:4];
          v98 = 0;
          [v7 writeData:v26 error:&v98];
          v27 = v98;

          if (v27)
          {
            v62 = WALogCategoryDeviceStoreHandle();
            v83 = v62;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v63 = [v27 localizedDescription];
              [v27 userInfo];
              v64 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 136446978;
              v105 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
              v106 = 1024;
              v107 = 368;
              v108 = 2112;
              v109 = v63;
              v110 = 2112;
              v111 = v64;
              _os_log_impl(&dword_1C8460000, v62, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
            }

            v58 = 0;
            v44 = 0;
            v84 = v18;
            v46 = v25;
            v56 = v85;
            goto LABEL_39;
          }

          v84 = [MEMORY[0x1E696AD60] string];

          if (*(v80 + 56))
          {
            v28 = +[WADeviceAnalyticsDatedRecord entity];
            v29 = [v16 isKindOfEntity:v28];

            v30 = v85;
            if (v29)
            {
              v31 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * *(v80 + 56))];
            }

            else
            {
              v31 = 0;
            }
          }

          else
          {
            v31 = 0;
            v30 = v85;
          }

          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v33 = v32;
          v34 = [*(v80 + 32) moc];
          v35 = [AnalyticsStoreProxy entityCount:v30 withPredicate:v31 moc:v34];

          v82 = [*(v80 + 32) relationshipKeyPathsForPrefetching:v30];
          v36 = [AnalyticsStoreProxy fetchRequestForEntityWithBatchSize:v30 batchSize:*(v80 + 48) prefetch:?];
          v37 = [*(v80 + 32) moc];
          v38 = [AnalyticsStoreProxy fetch:v36 withPredicate:v31 moc:v37];

          v39 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v40 = COERCE_DOUBLE([v38 count]);
            *buf = 136446978;
            v105 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
            v106 = 1024;
            v107 = 384;
            v108 = 2048;
            v109 = v35;
            v110 = 2048;
            v111 = v40;
            _os_log_impl(&dword_1C8460000, v39, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Total objects:%lu ResultCount:%lu", buf, 0x26u);
          }

          v83 = v31;

          v81 = v38;
          if (v38)
          {
            context = objc_autoreleasePoolPush();
            v41 = *(v80 + 32);
            v96 = 0;
            v97 = 0;
            v42 = [v41 moc];
            [v41 stringifyManagedObjectsArray:v38 titleString:&v97 dataStringsArray:&v96 onMoc:v42];
            v43 = v97;
            v44 = v96;

            v45 = [*(v80 + 32) stringifyObjectWithPadding:v89 padding:@"-" padToLength:{objc_msgSend(v43, "length")}];
            [v84 appendFormat:@"%@", v45];

            v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@\n", v84, v43, v84];

            [v7 seekToEndOfFile];
            v47 = [v46 dataUsingEncoding:4];
            v95 = 0;
            [v7 writeData:v47 error:&v95];
            v27 = v95;

            if (v27)
            {
              v65 = WALogCategoryDeviceStoreHandle();
              v56 = v85;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                v66 = [v27 localizedDescription];
                [v27 userInfo];
                v67 = v46;
                v68 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                *buf = 136446978;
                v105 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
                v106 = 1024;
                v107 = 399;
                v108 = 2112;
                v109 = v66;
                v110 = 2112;
                v111 = v68;
                _os_log_impl(&dword_1C8460000, v65, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);

                v46 = v67;
              }

              objc_autoreleasePoolPop(context);
              v58 = 0;
              v54 = v82;
              goto LABEL_38;
            }

            v78 = v46;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v44 = v44;
            v48 = [v44 countByEnumeratingWithState:&v91 objects:v103 count:16];
            if (v48)
            {
              v49 = v48;
              v50 = *v92;
              while (2)
              {
                for (i = 0; i != v49; ++i)
                {
                  if (*v92 != v50)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v52 = [*(*(&v91 + 1) + 8 * i) stringByAppendingString:@"\n"];
                  [v7 seekToEndOfFile];
                  v53 = [v52 dataUsingEncoding:4];
                  v90 = 0;
                  [v7 writeData:v53 error:&v90];
                  v27 = v90;

                  if (v27)
                  {
                    v59 = WALogCategoryDeviceStoreHandle();
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                    {
                      v60 = [v27 localizedDescription];
                      [v27 userInfo];
                      v61 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                      *buf = 136446978;
                      v105 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
                      v106 = 1024;
                      v107 = 410;
                      v108 = 2112;
                      v109 = v60;
                      v110 = 2112;
                      v111 = v61;
                      _os_log_impl(&dword_1C8460000, v59, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
                    }

                    objc_autoreleasePoolPop(context);
                    v58 = 0;
                    v56 = v85;
                    v54 = v82;
                    v46 = v78;
                    goto LABEL_38;
                  }
                }

                v49 = [v44 countByEnumeratingWithState:&v91 objects:v103 count:16];
                if (v49)
                {
                  continue;
                }

                break;
              }
            }

            objc_autoreleasePoolPop(context);
            v54 = v82;
            v46 = v78;
          }

          else
          {
            v44 = 0;
            v46 = 0;
            v54 = v82;
          }

          v55 = WALogCategoryDeviceStoreHandle();
          v56 = v85;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            *buf = 136446978;
            v105 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
            v106 = 1024;
            v107 = 415;
            v108 = 2112;
            v109 = v85;
            v110 = 2048;
            v111 = v57 - v33;
            _os_log_impl(&dword_1C8460000, v55, OS_LOG_TYPE_ERROR, "%{public}s::%d: %@ Took %fs", buf, 0x26u);
          }

          v27 = 0;
          v58 = 1;
LABEL_38:

LABEL_39:
          objc_autoreleasePoolPop(v88);
          if ((v58 & 1) == 0)
          {

            objc_autoreleasePoolPop(v75);
            v70 = 0;
            v2 = v76;
            goto LABEL_55;
          }

          v14 = v27;
          v13 = v77;
LABEL_41:
          ++v15;
        }

        while (v15 != v87);
        v69 = [v13 countByEnumeratingWithState:&v99 objects:v112 count:16];
        v87 = v69;
      }

      while (v69);
    }

    objc_autoreleasePoolPop(v75);
    [v7 closeFile];
    [WAUtil setFutureApfsPurgeableDeadline:604800 forURL:v4];
    v70 = [v4 path];
    v27 = v14;
    v2 = v76;
  }

  else
  {
    if (v10)
    {
      *buf = 136446466;
      v105 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
      v106 = 1024;
      v107 = 335;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:batchSize is 0", buf, 0x12u);
    }

    v70 = 0;
    v27 = 0;
  }

LABEL_55:
  v71 = *(*(v80 + 40) + 8);
  v72 = *(v71 + 40);
  *(v71 + 40) = v70;

  objc_autoreleasePoolPop(v2);
  v73 = *MEMORY[0x1E69E9840];
}

- (id)batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:(unint64_t)size maxAge:(unint64_t)age
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  array = [MEMORY[0x1E695DF70] array];
  v7 = [(AnalyticsStoreFileWriter *)self moc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToCSVFilesWithBatchSize_maxAge___block_invoke;
  v10[3] = &unk_1E830F580;
  v10[6] = size;
  v10[7] = age;
  v10[4] = self;
  v10[5] = &v11;
  [v7 performBlockAndWait:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __85__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToCSVFilesWithBatchSize_maxAge___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) mom];
  v3 = [v2 entities];

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *buf = 136446978;
    v61 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:maxAge:]_block_invoke";
    v62 = 1024;
    v63 = 445;
    v64 = 2048;
    v65 = v5;
    v66 = 2048;
    v67 = v6;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:batchSize is %lu, maxAge is %lu days ago", buf, 0x26u);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [v7 stringFromDate:v8];

  v10 = *(a1 + 32);
  v11 = [objc_opt_class() analyticsStoreFileWriterDirectory];
  v12 = [v11 path];
  v50 = v9;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AllEntityStats_%@.csv", v9];
  v14 = [v12 stringByAppendingPathComponent:v13];

  v48 = v14;
  v15 = [MEMORY[0x1E695DFC0] outputStreamToFileAtPath:v14 append:0];
  [v15 open];
  v47 = v15;
  v16 = [[AnalyticsCSVWriter alloc] initWithOutputStream:v15];
  v17 = [MEMORY[0x1E695DFB8] orderedSetWithArray:&unk_1F483E7A0];
  [(AnalyticsCSVWriter *)v16 writeFields:v17];

  [(AnalyticsCSVWriter *)v16 finishLine];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v3;
  v53 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v53)
  {
    v52 = *v55;
    do
    {
      v18 = 0;
      do
      {
        if (*v55 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v54 + 1) + 8 * v18);
        v20 = [v19 name];
        v21 = [*(*(a1 + 32) + 16) countObjects:v19 withPredicate:0 withError:0];
        v22 = MEMORY[0x1E695DFB8];
        v58[0] = v20;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
        v24 = [v23 description];
        v58[1] = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
        v26 = [v22 orderedSetWithArray:v25];
        [(AnalyticsCSVWriter *)v16 writeFields:v26];

        [(AnalyticsCSVWriter *)v16 finishLine];
        v27 = [*(*(a1 + 32) + 16) defaultFetchLimitForEntity:v19];
        v28 = [*(*(a1 + 32) + 16) defaultFetchMaxAgeForEntity:v19];
        v29 = +[GeoTagMO entity];
        v30 = [v29 name];
        v31 = [v20 isEqualToString:v30];

        if ((v31 & 1) == 0)
        {
          v32 = WALogCategoryDeviceStoreHandle();
          if (os_signpost_enabled(v32))
          {
            v33 = [v20 UTF8String];
            *buf = 136315138;
            v61 = v33;
            _os_signpost_emit_with_name_impl(&dword_1C8460000, v32, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CSV Export", "%s", buf, 0xCu);
          }

          v34 = *(a1 + 32);
          if (v27 < 0)
          {
            v27 = *(a1 + 48);
            if ((v28 & 0x8000000000000000) == 0)
            {
              goto LABEL_13;
            }
          }

          else if ((v28 & 0x8000000000000000) == 0)
          {
LABEL_13:
            v35 = *(a1 + 32);
            v36 = [objc_opt_class() analyticsStoreFileWriterDirectory];
            v37 = [v34 exportEntityToCSV:v19 batchSize:v27 maxAge:v28 toURL:v36 fileDate:v50];

            if (v37)
            {
              v38 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                v61 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:maxAge:]_block_invoke";
                v62 = 1024;
                v63 = 482;
                v64 = 2112;
                v65 = v37;
                _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Wrote CSV file %@", buf, 0x1Cu);
              }

              [*(*(*(a1 + 40) + 8) + 40) addObject:v37];
            }

            v39 = WALogCategoryDeviceStoreHandle();
            if (os_signpost_enabled(v39))
            {
              v40 = [v20 UTF8String];
              *buf = 136315138;
              v61 = v40;
              _os_signpost_emit_with_name_impl(&dword_1C8460000, v39, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CSV Export", "%s", buf, 0xCu);
            }

            goto LABEL_20;
          }

          v28 = *(a1 + 56);
          goto LABEL_13;
        }

LABEL_20:

        ++v18;
      }

      while (v53 != v18);
      v41 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      v53 = v41;
    }

    while (v41);
  }

  v42 = *(*(a1 + 40) + 8);
  v43 = *(v42 + 40);
  if (!v43)
  {
    v44 = 0;
LABEL_31:
    *(v42 + 40) = 0;
    goto LABEL_32;
  }

  if (![v43 count])
  {
    v42 = *(*(a1 + 40) + 8);
    v44 = *(v42 + 40);
    goto LABEL_31;
  }

  v44 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [*(*(*(a1 + 40) + 8) + 40) count];
    *buf = 136446722;
    v61 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:maxAge:]_block_invoke";
    v62 = 1024;
    v63 = 490;
    v64 = 2048;
    v65 = v45;
    _os_log_impl(&dword_1C8460000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Total CSVs written %lu", buf, 0x1Cu);
  }

LABEL_32:

  objc_autoreleasePoolPop(context);
  v46 = *MEMORY[0x1E69E9840];
}

- (id)batchedWriteAnalyticsStoreToFile:(unint64_t)file maxAge:(unint64_t)age
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v7 = [(AnalyticsStoreFileWriter *)self moc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToFile_maxAge___block_invoke;
  v10[3] = &unk_1E830F580;
  v10[6] = file;
  v10[7] = age;
  v10[4] = self;
  v10[5] = &v11;
  [v7 performBlockAndWait:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __68__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToFile_maxAge___block_invoke(uint64_t a1)
{
  v169 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsStoreFileWriterFilePath];
  v4 = v3;
  if (!v3)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v162 = 1024;
      v163 = 515;
LABEL_94:
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:fileHandle nil", buf, 0x12u);
    }

LABEL_95:
    v7 = 0;
LABEL_96:
    v35 = 0;
    goto LABEL_77;
  }

  v5 = MEMORY[0x1E696AC00];
  v6 = [v3 path];
  v7 = [v5 fileHandleForWritingAtPath:v6];

  if (!v7)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v162 = 1024;
      v163 = 518;
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v8 = *(a1 + 48);
  v9 = WALogCategoryDeviceStoreHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (!v8)
  {
    if (v10)
    {
      *buf = 136446466;
      v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v162 = 1024;
      v163 = 520;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:fetchLimit is 0", buf, 0x12u);
    }

    goto LABEL_96;
  }

  v115 = v4;
  if (v10)
  {
    v11 = *(a1 + 48);
    *buf = 136446722;
    v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
    v162 = 1024;
    v163 = 522;
    v164 = 2048;
    v165 = v11;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:fetchLimit is %lu", buf, 0x1Cu);
  }

  v116 = v2;

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreToFile", "", buf, 2u);
  }

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v13 = [*(a1 + 32) mom];
  v14 = [v13 entities];

  v127 = [v14 countByEnumeratingWithState:&v154 objects:v168 count:16];
  if (!v127)
  {
LABEL_72:

    [v7 closeFile];
    v4 = v115;
    [WAUtil setFutureApfsPurgeableDeadline:604800 forURL:v115];
    v99 = [v115 path];
    v35 = 0;
    v2 = v116;
    goto LABEL_78;
  }

  v15 = 0x1E830D000uLL;
  v128 = *v155;
  v131 = a1;
  obj = v14;
LABEL_10:
  v16 = 0;
  while (1)
  {
    if (*v155 != v128)
    {
      objc_enumerationMutation(obj);
    }

    v17 = *(*(&v154 + 1) + 8 * v16);
    v137 = [MEMORY[0x1E696AD60] string];
    v132 = [MEMORY[0x1E696AD60] string];
    v18 = [v17 name];
    v19 = [*(v15 + 240) entity];
    v20 = [v19 name];
    if (([v18 isEqualToString:v20] & 1) == 0)
    {
      break;
    }

    v136 = v18;
    v21 = 0;
    v22 = 0;
    v23 = v132;
LABEL_15:

LABEL_18:
    if (++v16 == v127)
    {
      v14 = obj;
      v98 = [obj countByEnumeratingWithState:&v154 objects:v168 count:16];
      v127 = v98;
      if (!v98)
      {
        goto LABEL_72;
      }

      goto LABEL_10;
    }
  }

  v126 = v16;
  v24 = [v17 name];
  v25 = +[WiFiStatMO entity];
  v26 = [v25 name];
  v27 = [v24 isEqualToString:v26];

  if (v27)
  {
    v21 = 0;
    v22 = 0;
    a1 = v131;
    v23 = v132;
    v15 = 0x1E830D000;
    v16 = v126;
    goto LABEL_18;
  }

  a1 = v131;
  v28 = *(v131 + 32);
  v29 = [v17 name];
  v30 = [v28 stringifyObjectWithPadding:v137 padding:@"-" padToLength:{objc_msgSend(v29, "length") + 1}];
  [v132 appendFormat:@"%@", v30];

  v31 = MEMORY[0x1E696AEC0];
  v32 = [v17 name];
  v33 = [v31 stringWithFormat:@"\n%@\n%@|\n", v132, v32];

  [v7 seekToEndOfFile];
  v34 = [v33 dataUsingEncoding:4];
  v153 = 0;
  [v7 writeData:v34 error:&v153];
  v35 = v153;

  if (v35)
  {
    v110 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      v111 = [v35 localizedDescription];
      [v35 userInfo];
      v112 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136446978;
      v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v162 = 1024;
      v163 = 549;
      v164 = 2112;
      v165 = v111;
      v166 = 2112;
      v167 = v112;
      _os_log_impl(&dword_1C8460000, v110, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);

      a1 = v131;
    }

    v4 = v115;
    v2 = v116;
    v9 = obj;
    goto LABEL_77;
  }

  v36 = v17;

  v120 = [MEMORY[0x1E696AD60] string];

  v37 = *(v131 + 56);
  if (v37)
  {
    v38 = [*(*(v131 + 32) + 16) predicateForEntity:v17 newerThan:0 withError:(86400 * v37)];
    v16 = v126;
    if (!v38)
    {
      v21 = 0;
      v22 = 0;
      v23 = v120;
      v15 = 0x1E830D000;
      goto LABEL_18;
    }
  }

  else
  {
    v38 = 0;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v40 = v39;
  v41 = [v17 name];
  v42 = [*(v131 + 32) moc];
  v43 = [AnalyticsStoreProxy entityCount:v41 withPredicate:v38 moc:v42];

  v44 = *(v131 + 48);
  v125 = v44;
  if (v43 <= v44)
  {
    v45 = 0.0;
  }

  else
  {
    *&v45 = v43 % v44;
  }

  v46 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
    v162 = 1024;
    v163 = 569;
    v164 = 2048;
    v165 = v43;
    v166 = 2048;
    v167 = v45;
    _os_log_impl(&dword_1C8460000, v46, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Total objects:%lu Remainder:%lu", buf, 0x26u);
  }

  v136 = v38;

  v47 = *(v131 + 32);
  v48 = [v36 name];
  v49 = [v47 relationshipKeyPathsForPrefetching:v48];

  v117 = v45;
  v122 = v43 - *&v45;
  v119 = v36;
  if (v43 == *&v45)
  {
    v50 = 0;
    v21 = 0;
    v129 = 0;
    v51 = v125;
LABEL_32:
    v52 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [v36 name];
      v54 = v53 = v50;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *buf = 136446978;
      v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v162 = 1024;
      v163 = 610;
      v164 = 2112;
      v165 = v54;
      v166 = 2048;
      v167 = v55 - v40;
      _os_log_impl(&dword_1C8460000, v52, OS_LOG_TYPE_ERROR, "%{public}s::%d: %@ Took %fs", buf, 0x26u);

      v50 = v53;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v57 = v56;
    v15 = 0x1E830D000;
    if (v117 != 0.0)
    {
      context = objc_autoreleasePoolPush();
      v58 = [v36 name];
      v59 = v50;
      v60 = v58;
      v133 = v59;
      v61 = [AnalyticsStoreProxy fetchRequestForEntityWithOffset:"fetchRequestForEntityWithOffset:limit:offset:prefetch:" limit:v58 offset:v51 prefetch:?];
      v62 = [*(v131 + 32) moc];
      v63 = [AnalyticsStoreProxy fetch:v61 withPredicate:v136 moc:v62];

      v64 = v63;
      if (v63)
      {
        v118 = v49;
        v65 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
          v162 = 1024;
          v163 = 617;
          v164 = 2048;
          v165 = v133;
          v166 = 2048;
          *&v167 = &v133[*&v117];
          _os_log_impl(&dword_1C8460000, v65, OS_LOG_TYPE_ERROR, "%{public}s::%d:Processing managed objects %lu through %lu", buf, 0x26u);
        }

        v66 = *(v131 + 32);
        v143 = v21;
        v144 = v129;
        v67 = [v66 moc];
        v124 = v64;
        [v66 stringifyManagedObjectsArray:v64 titleString:&v144 dataStringsArray:&v143 onMoc:v67];
        v134 = v144;

        v68 = v143;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v21 = v68;
        v69 = [v21 countByEnumeratingWithState:&v139 objects:v158 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v140;
          while (2)
          {
            for (i = 0; i != v70; ++i)
            {
              if (*v140 != v71)
              {
                objc_enumerationMutation(v21);
              }

              v73 = [*(*(&v139 + 1) + 8 * i) stringByAppendingString:@"\n"];
              [v7 seekToEndOfFile];
              v74 = [v73 dataUsingEncoding:4];
              v138 = 0;
              [v7 writeData:v74 error:&v138];
              v35 = v138;

              if (v35)
              {
                v107 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                {
                  v108 = [v35 localizedDescription];
                  [v35 userInfo];
                  v109 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  *buf = 136446978;
                  v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
                  v162 = 1024;
                  v163 = 628;
                  v164 = 2112;
                  v165 = v108;
                  v166 = 2112;
                  v167 = v109;
                  _os_log_impl(&dword_1C8460000, v107, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
                }

                v87 = v21;
                v129 = v134;
                goto LABEL_76;
              }
            }

            v70 = [v21 countByEnumeratingWithState:&v139 objects:v158 count:16];
            if (v70)
            {
              continue;
            }

            break;
          }
        }

        v129 = v134;
        v15 = 0x1E830D000;
        v49 = v118;
        v64 = v124;
      }

      objc_autoreleasePoolPop(context);
    }

    a1 = v131;
    v16 = v126;
    v19 = v49;
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v75 = [v119 name];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *buf = 136446978;
      v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v162 = 1024;
      v163 = 634;
      v164 = 2112;
      v165 = v75;
      v166 = 2048;
      v167 = v76 - v57;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d: %@ reminder took %fs", buf, 0x26u);
    }

    v23 = v120;
    v22 = v129;
    goto LABEL_15;
  }

  v77 = 0;
  v21 = 0;
  v50 = 0;
  v123 = 0;
  v51 = v125;
  v118 = v49;
  while (1)
  {
    context = objc_autoreleasePoolPush();
    v78 = [v36 name];
    v135 = v50;
    v79 = [AnalyticsStoreProxy fetchRequestForEntityWithOffset:v78 limit:v51 offset:v50 prefetch:v49];
    v80 = [*(v131 + 32) moc];
    v81 = [AnalyticsStoreProxy fetch:v79 withPredicate:v136 moc:v80];

    v82 = v81;
    if (v81)
    {
      break;
    }

    v129 = v77;
    v51 = v125;
    v88 = v135;
LABEL_69:

    objc_autoreleasePoolPop(context);
    v50 = v88;
    if (v88 >= v122)
    {
      goto LABEL_32;
    }
  }

  v83 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
    v162 = 1024;
    v163 = 577;
    v164 = 2048;
    v165 = v135;
    v166 = 2048;
    *&v167 = &v135[v125 - 1];
    _os_log_impl(&dword_1C8460000, v83, OS_LOG_TYPE_ERROR, "%{public}s::%d:Processing managed objects %lu through %lu", buf, 0x26u);
  }

  v84 = *(v131 + 32);
  v151 = v21;
  v152 = v77;
  v85 = [v84 moc];
  v124 = v82;
  [v84 stringifyManagedObjectsArray:v82 titleString:&v152 dataStringsArray:&v151 onMoc:v85];
  v86 = v152;

  v87 = v151;
  if (v123)
  {
    v129 = v86;
LABEL_60:
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v21 = v87;
    v92 = [v21 countByEnumeratingWithState:&v146 objects:v159 count:16];
    v36 = v119;
    if (v92)
    {
      v93 = v92;
      v94 = *v147;
      while (2)
      {
        for (j = 0; j != v93; ++j)
        {
          if (*v147 != v94)
          {
            objc_enumerationMutation(v21);
          }

          v96 = [*(*(&v146 + 1) + 8 * j) stringByAppendingString:@"\n"];
          [v7 seekToEndOfFile];
          v97 = [v96 dataUsingEncoding:4];
          v145 = 0;
          [v7 writeData:v97 error:&v145];
          v35 = v145;

          if (v35)
          {
            v100 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              v101 = [v35 localizedDescription];
              [v35 userInfo];
              v102 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 136446978;
              v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
              v162 = 1024;
              v163 = 604;
              v164 = 2112;
              v165 = v101;
              v166 = 2112;
              v167 = v102;
              _os_log_impl(&dword_1C8460000, v100, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
            }

            v87 = v21;
            goto LABEL_76;
          }
        }

        v93 = [v21 countByEnumeratingWithState:&v146 objects:v159 count:16];
        if (v93)
        {
          continue;
        }

        break;
      }
    }

    v51 = v125;
    v88 = &v135[v125];

    v123 = 1;
    v77 = v129;
    v49 = v118;
    v82 = v124;
    goto LABEL_69;
  }

  v89 = [*(v131 + 32) stringifyObjectWithPadding:v137 padding:@"-" padToLength:{objc_msgSend(v86, "length")}];
  [v120 appendFormat:@"%@", v89];

  v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@\n", v120, v86, v120];

  [v7 seekToEndOfFile];
  v91 = [v90 dataUsingEncoding:4];
  v150 = 0;
  [v7 writeData:v91 error:&v150];
  v35 = v150;

  if (!v35)
  {
    v129 = v90;
    goto LABEL_60;
  }

  v21 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v113 = [v35 localizedDescription];
    [v35 userInfo];
    v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 136446978;
    v161 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
    v162 = 1024;
    v163 = 591;
    v164 = 2112;
    v165 = v113;
    v166 = 2112;
    v167 = v114;
    _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
  }

  v129 = v90;
LABEL_76:
  v4 = v115;
  v2 = v116;
  v9 = obj;

  objc_autoreleasePoolPop(context);
  a1 = v131;
LABEL_77:

  v99 = 0;
LABEL_78:
  v103 = *(*(a1 + 40) + 8);
  v104 = *(v103 + 40);
  *(v103 + 40) = v99;

  v105 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v105))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v105, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreToFile", "", buf, 2u);
  }

  objc_autoreleasePoolPop(v2);
  v106 = *MEMORY[0x1E69E9840];
}

- (id)writeAnalyticsStoreToFile
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v3 = [(AnalyticsStoreFileWriter *)self moc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AnalyticsStoreFileWriter_writeAnalyticsStoreToFile__block_invoke;
  v6[3] = &unk_1E830F558;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__AnalyticsStoreFileWriter_writeAnalyticsStoreToFile__block_invoke(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsStoreFileWriterFilePath];
  v4 = v3;
  if (!v3)
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 136446466;
    v92 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
    v93 = 1024;
    v94 = 666;
    goto LABEL_51;
  }

  v5 = MEMORY[0x1E696AC00];
  v6 = [v3 path];
  v7 = [v5 fileHandleForWritingAtPath:v6];

  if (!v7)
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 136446466;
    v92 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
    v93 = 1024;
    v94 = 669;
LABEL_51:
    _os_log_impl(&dword_1C8460000, v56, OS_LOG_TYPE_ERROR, "%{public}s::%d:fileHandle nil", buf, 0x12u);
LABEL_52:
    v7 = 0;
    v25 = 0;
LABEL_42:

    v55 = 0;
    goto LABEL_43;
  }

  v68 = v4;
  v63 = v2;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v8 = [*(a1 + 32) mom];
  v9 = [v8 entitiesByName];
  v10 = [v9 allKeys];

  obj = v10;
  v71 = [v10 countByEnumeratingWithState:&v86 objects:v99 count:16];
  v11 = 0;
  if (!v71)
  {
    goto LABEL_40;
  }

  v70 = *v87;
  v64 = a1;
  while (2)
  {
    v12 = 0;
    do
    {
      if (*v87 != v70)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v86 + 1) + 8 * v12);
      v14 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v92 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
        v93 = 1024;
        v94 = 672;
        v95 = 2112;
        v96 = v13;
        v97 = 2112;
        v98 = *&v68;
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Dumping %@ entities to %@", buf, 0x26u);
      }

      v76 = v13;
      v15 = [MEMORY[0x1E696AD60] string];
      v74 = [MEMORY[0x1E696AD60] string];
      v16 = +[GeoTagMO entity];
      v17 = [v16 name];
      if ([v13 isEqualToString:v17])
      {

LABEL_13:
        goto LABEL_34;
      }

      +[WiFiStatMO entity];
      v72 = v12;
      v18 = v73 = v15;
      v19 = [v18 name];
      v20 = [v13 isEqualToString:v19];

      v12 = v72;
      v15 = v73;

      if (v20)
      {
        goto LABEL_13;
      }

      v21 = [*(a1 + 32) stringifyObjectWithPadding:v73 padding:@"-" padToLength:{objc_msgSend(v13, "length") + 1}];
      v22 = v74;
      [v74 appendFormat:@"%@", v21];

      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@\n%@|\n", v74, v13];
      [v7 seekToEndOfFile];
      v24 = [v23 dataUsingEncoding:4];
      v85 = 0;
      [v7 writeData:v24 error:&v85];
      v25 = v85;

      if (v25)
      {
        v60 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = [v25 localizedDescription];
          [v25 userInfo];
          v62 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 136446978;
          v92 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
          v93 = 1024;
          v94 = 694;
          v95 = 2112;
          v96 = v61;
          v97 = 2112;
          v98 = v62;
          _os_log_impl(&dword_1C8460000, v60, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);

          v22 = v74;
        }

        v2 = v63;
        v4 = v68;
        v56 = obj;
        goto LABEL_42;
      }

      v26 = [MEMORY[0x1E696AD60] string];

      v66 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = [v27 moc];
      v29 = [AnalyticsStoreProxy fetchAll:v13 moc:v28];
      v83 = 0;
      v84 = 0;
      v30 = [*(a1 + 32) moc];
      [v27 stringifyManagedObjectsArray:v29 titleString:&v84 dataStringsArray:&v83 onMoc:v30];
      v31 = v84;
      v75 = v83;

      v32 = [*(a1 + 32) stringifyObjectWithPadding:v73 padding:@"-" padToLength:{objc_msgSend(v31, "length")}];
      [v26 appendFormat:@"%@", v32];

      v67 = v26;
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@\n", v26, v31, v26];

      [v7 seekToEndOfFile];
      v65 = v33;
      v34 = [v33 dataUsingEncoding:4];
      v82 = 0;
      [v7 writeData:v34 error:&v82];
      v11 = v82;

      if (v11)
      {
        v37 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v52 = [v11 localizedDescription];
          [v11 userInfo];
          v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 136446978;
          v92 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
          v93 = 1024;
          v94 = 711;
          v95 = 2112;
          v96 = v52;
          v97 = 2112;
          v98 = v53;
          _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
        }

        v48 = 0;
      }

      else
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v36 = v35;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v37 = v75;
        v38 = [v37 countByEnumeratingWithState:&v78 objects:v90 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = 0;
          v41 = *v79;
          while (2)
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v79 != v41)
              {
                objc_enumerationMutation(v37);
              }

              v43 = [*(*(&v78 + 1) + 8 * i) stringByAppendingString:@"\n"];
              v44 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v45 = COERCE_DOUBLE([v37 count]);
                *buf = 136446978;
                v92 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
                v93 = 1024;
                v94 = 718;
                v95 = 2048;
                v96 = v40;
                v97 = 2048;
                v98 = v45;
                _os_log_impl(&dword_1C8460000, v44, OS_LOG_TYPE_ERROR, "%{public}s::%d:Processing managed objects %lu through %lu", buf, 0x26u);
              }

              [v7 seekToEndOfFile];
              v46 = [v43 dataUsingEncoding:4];
              v77 = 0;
              [v7 writeData:v46 error:&v77];
              v11 = v77;

              if (v11)
              {
                v49 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  v50 = [v11 localizedDescription];
                  [v11 userInfo];
                  v51 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  *buf = 136446978;
                  v92 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
                  v93 = 1024;
                  v94 = 725;
                  v95 = 2112;
                  v96 = v50;
                  v97 = 2112;
                  v98 = v51;
                  _os_log_impl(&dword_1C8460000, v49, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
                }

                v48 = 0;
                goto LABEL_32;
              }

              ++v40;
            }

            v39 = [v37 countByEnumeratingWithState:&v78 objects:v90 count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        v37 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          *buf = 136446978;
          v92 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
          v93 = 1024;
          v94 = 728;
          v95 = 2112;
          v96 = v76;
          v97 = 2048;
          v98 = v47 - v36;
          _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_ERROR, "%{public}s::%d: %@ reminder took %fs", buf, 0x26u);
        }

        v11 = 0;
        v48 = 1;
LABEL_32:
        a1 = v64;
      }

      v12 = v72;

      objc_autoreleasePoolPop(v66);
      if (!v48)
      {
        v25 = v11;
        v2 = v63;
        v4 = v68;
        v56 = obj;
        goto LABEL_42;
      }

LABEL_34:
      ++v12;
    }

    while (v12 != v71);
    v54 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
    v71 = v54;
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_40:

  [v7 closeFile];
  v4 = v68;
  [WAUtil setFutureApfsPurgeableDeadline:604800 forURL:v68];
  v55 = [v68 path];
  v25 = v11;
  v2 = v63;
LABEL_43:
  v57 = *(*(a1 + 40) + 8);
  v58 = *(v57 + 40);
  *(v57 + 40) = v55;

  objc_autoreleasePoolPop(v2);
  v59 = *MEMORY[0x1E69E9840];
}

- (id)relationshipKeyPathsForPrefetching:(id)prefetching
{
  prefetchingCopy = prefetching;
  array = [MEMORY[0x1E695DF70] array];
  v5 = +[NetworkMO entity];
  name = [v5 name];
  v7 = [prefetchingCopy isEqualToString:name];

  if (v7)
  {
    v8 = @"bss";
LABEL_9:
    [array addObject:v8];
    v19 = array;
    goto LABEL_10;
  }

  v9 = +[BSSMO entity];
  name2 = [v9 name];
  v11 = [prefetchingCopy isEqualToString:name2];

  if (v11)
  {
    v8 = @"network";
    goto LABEL_9;
  }

  v12 = +[WADeviceAnalyticsLeaveRecord entity];
  name3 = [v12 name];
  v14 = [prefetchingCopy isEqualToString:name3];

  if (v14 & 1) != 0 || (+[WADeviceAnalyticsJoinRecord entity](WADeviceAnalyticsJoinRecord, "entity"), v15 = objc_claimAutoreleasedReturnValue(), [v15 name], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(prefetchingCopy, "isEqualToString:", v16), v16, v15, (v17))
  {
    v8 = @"bss.network";
    v18 = @"bss";
LABEL_8:
    [array addObject:v18];
    goto LABEL_9;
  }

  v21 = +[RoamMO entity];
  name4 = [v21 name];
  v23 = [prefetchingCopy isEqualToString:name4];

  if (v23)
  {
    [array addObject:@"source"];
    v8 = @"target";
    v18 = @"source.network";
    goto LABEL_8;
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (id)stringifyRelationship:(id)relationship name:(id *)name onMoc:(id)moc
{
  v61[2] = *MEMORY[0x1E69E9840];
  relationshipCopy = relationship;
  mocCopy = moc;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ssid = [relationshipCopy ssid];
    v10 = [BSSMO allBssidsForSsid:ssid moc:mocCopy];

    if (v10)
    {
      v11 = @"bssids";
LABEL_7:
      *name = v11;
      name = [v10 componentsJoinedByString:{@", "}];
LABEL_8:

      goto LABEL_25;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bssid = [relationshipCopy bssid];
    v10 = [BSSMO allSsidsForBssid:bssid moc:mocCopy];

    if (v10)
    {
      v11 = @"ssids";
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = relationshipCopy;
      v14 = [v13 bss];
      v15 = [v13 bss];

      network = [v15 network];
    }

    else
    {
      network = 0;
      v14 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = relationshipCopy;
      v18 = [v17 bss];

      v19 = [v17 bss];

      network2 = [v19 network];

      network = network2;
      v14 = v18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = relationshipCopy;
      v22 = [v21 bss];

      v23 = [v21 bss];

      network3 = [v23 network];

      network = network3;
      v14 = v22;
    }

    ssid2 = [network ssid];
    bssid2 = [v14 bssid];
    *name = @"ssid-bssid";
    if (!ssid2)
    {
      ssid2 = @"(nil)";
    }

    if (bssid2)
    {
      v27 = bssid2;
    }

    else
    {
      v27 = @"(nil)";
    }

    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", ssid2, v27];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = relationshipCopy;
      source = [v10 source];
      target = [v10 target];
      source2 = [v10 source];
      network4 = [source2 network];

      ssid3 = [network4 ssid];
      bssid3 = [source bssid];
      bssid4 = [target bssid];
      if (!ssid3)
      {
        ssid3 = @"(nil)";
      }

      if (!bssid3)
      {
        bssid3 = @"(nil)";
      }

      if (bssid4)
      {
        v37 = bssid4;
      }

      else
      {
        v37 = @"(nil)";
      }

      *name = @"ssid:bssidSource->bssidTarget";
      name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@->%@", ssid3, bssid3, v37];

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = relationshipCopy;
      origin = [v60 origin];
      result = [v60 result];
      v59 = origin;
      bssid5 = [origin bssid];
      bssid6 = [result bssid];
      if (bssid5)
      {
        v42 = bssid5;
      }

      else
      {
        v42 = @"(nil)";
      }

      if (bssid6)
      {
        v43 = bssid6;
      }

      else
      {
        v43 = @"(nil)";
      }

      *name = @"(origin)ssid:bssid (result)ssid:bssid";
      v44 = MEMORY[0x1E696AEC0];
      network5 = [origin network];
      ssid4 = [network5 ssid];
      network6 = [result network];
      ssid5 = [network6 ssid];
      name = [v44 stringWithFormat:@"%@:%@ %@:%@", ssid4, v42, ssid5, v43];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_54;
      }

      v49 = relationshipCopy;
      v50 = [v49 bss];
      bssid7 = [v50 bssid];

      v52 = [v49 bss];
      network7 = [v52 network];
      ssid6 = [network7 ssid];

      v55 = @"(nil)";
      if (ssid6)
      {
        v56 = ssid6;
      }

      else
      {
        v56 = @"(nil)";
      }

      if (bssid7)
      {
        v55 = bssid7;
      }

      v61[0] = v56;
      v61[1] = v55;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
      v58 = v57;
      if (v57)
      {
        *name = @"ssid,bssid";
        name = [v57 componentsJoinedByString:@": "];
      }

      if (!v58)
      {
LABEL_54:
        name = 0;
      }
    }
  }

LABEL_25:

  v28 = *MEMORY[0x1E69E9840];

  return name;
}

- (void)stringifyManagedObjectsArray:(id)array titleString:(id *)string dataStringsArray:(id *)stringsArray onMoc:(id)moc
{
  v148 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  mocCopy = moc;
  array = [MEMORY[0x1E695DF70] array];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v12 = arrayCopy;
  v99 = [v12 countByEnumeratingWithState:&v117 objects:v147 count:16];
  if (!v99)
  {

    v13 = 0;
    goto LABEL_81;
  }

  stringCopy = string;
  stringsArrayCopy = stringsArray;
  v13 = 0;
  obj = v12;
  v97 = *v118;
  v14 = 0x1E696A000uLL;
  v98 = array;
  do
  {
    v15 = 0;
    do
    {
      v100 = v13;
      if (*v118 != v97)
      {
        objc_enumerationMutation(obj);
      }

      v101 = v15;
      v16 = *(*(&v117 + 1) + 8 * v15);
      array2 = [MEMORY[0x1E695DF70] array];
      outCount = 0;
      v17 = objc_opt_class();
      v18 = class_copyPropertyList(v17, &outCount);
      v19 = v18;
      v20 = 0x1E830D000uLL;
      if (outCount)
      {
        v21 = 0;
        v102 = v18;
        while (1)
        {
          v22 = objc_autoreleasePoolPush();
          Name = property_getName(v19[v21]);
          if (Name)
          {
            break;
          }

LABEL_27:
          objc_autoreleasePoolPop(v22);
          if (++v21 >= outCount)
          {
            goto LABEL_58;
          }
        }

        v24 = [*(v14 + 3776) stringWithUTF8String:Name];
        analyticsStoreEntityRelationshipNames = [*(v20 + 184) analyticsStoreEntityRelationshipNames];
        v26 = [analyticsStoreEntityRelationshipNames containsObject:v24];

        if (v26)
        {
          v105 = v24;
          v27 = v22;
          v28 = v20;
          v115 = 0;
          v29 = [(AnalyticsStoreFileWriter *)self stringifyRelationship:v16 name:&v115 onMoc:mocCopy];
          v30 = v115;
          v31 = v30;
          if (v29)
          {
            v123[0] = @"name";
            v123[1] = @"value";
            v124[0] = v30;
            v124[1] = v29;
            v123[2] = @"length";
            v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v29, "length")}];
            v124[2] = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:3];

            if (([array2 containsObject:v33] & 1) == 0)
            {
              [array2 addObject:v33];
            }

            v19 = v102;
            v14 = 0x1E696A000;
          }

          else
          {
            v33 = 0;
          }

          v20 = v28;
          v22 = v27;
          v24 = v105;
LABEL_25:

LABEL_26:
          goto LABEL_27;
        }

        v34 = [v16 valueForKey:v24];

        if (!v34)
        {
          v125[0] = @"name";
          v125[1] = @"value";
          v126[0] = v24;
          v126[1] = @"(nil)";
          v125[2] = @"length";
          v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v24, "length")}];
          v126[2] = v43;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:3];
          goto LABEL_24;
        }

        if ([v24 containsString:@"hist"] & 1) != 0 || (objc_msgSend(v24, "containsString:", @"channels") & 1) != 0 || (objc_msgSend(v24, "containsString:", @"parsedBeacon") & 1) != 0 || (objc_msgSend(v24, "containsString:", @"unparsedBeacon"))
        {
          goto LABEL_26;
        }

        v106 = v24;
        if ([v24 containsString:@"ssid"])
        {
          v146[0] = v24;
          v145[0] = @"name";
          v145[1] = @"value";
          v35 = *(v14 + 3776);
          v92 = [v16 valueForKey:v24];
          defaultTimeZone = [v35 stringWithFormat:@"%@", v92];
          [defaultTimeZone redactedForWiFi];
          v36 = v22;
          v38 = v37 = v20;
          v146[1] = v38;
          v145[2] = @"length";
          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:20];
          v146[2] = v39;
          v40 = MEMORY[0x1E695DF20];
          v41 = v146;
          v42 = v145;
          goto LABEL_33;
        }

        if (([v24 containsString:@"date"] & 1) != 0 || (objc_msgSend(v24, "containsString:", @"lastSeen") & 1) != 0 || objc_msgSend(v24, "containsString:", @"end"))
        {
          v44 = [v16 valueForKey:v24];
          defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
          v92 = v44;
          v45 = [defaultTimeZone secondsFromGMTForDate:v44];
          v144[0] = v24;
          v143[0] = @"name";
          v143[1] = @"value";
          [MEMORY[0x1E695DF00] dateWithTimeInterval:v44 sinceDate:v45];
          v36 = v22;
          v38 = v37 = v20;
          v144[1] = v38;
          v143[2] = @"length";
          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:20];
          v144[2] = v39;
          v40 = MEMORY[0x1E695DF20];
          v41 = v144;
          v42 = v143;
LABEL_33:
          v33 = [v40 dictionaryWithObjects:v41 forKeys:v42 count:3];

          v43 = v92;
          v20 = v37;
          v22 = v36;
          v24 = v106;
          v46 = defaultTimeZone;
LABEL_34:

          goto LABEL_24;
        }

        v91 = v22;
        if (([v24 containsString:@"neighborBSSIDs"] & 1) != 0 || objc_msgSend(v24, "containsString:", @"neighborCache"))
        {
          v142[0] = v24;
          v141[0] = @"name";
          v141[1] = @"value";
          v47 = [v16 valueForKey:v24];
          v48 = [(AnalyticsStoreFileWriter *)self stringifyValueArray:v47];
          v142[1] = v48;
          v141[2] = @"length";
          v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:20];
          v142[2] = v49;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:v141 count:3];

          v20 = 0x1E830D000;
          v43 = v47;
        }

        else
        {
          if (![v24 containsString:@"neighborChannels"])
          {
            if (([v24 containsString:@"apid"] & 1) != 0 || (objc_msgSend(v24, "containsString:", @"apPhysicalScopeId") & 1) != 0 || (objc_msgSend(v24, "containsString:", @"idUsedInMetric") & 1) != 0 || objc_msgSend(v24, "containsString:", @"colocatedScopeId"))
            {
              v138[0] = v24;
              v137[0] = @"name";
              v137[1] = @"value";
              v94 = [v16 valueForKey:v24];
              v138[1] = v94;
              v137[2] = @"length";
              v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:37];
              v138[2] = v53;
              v54 = MEMORY[0x1E695DF20];
              v55 = v138;
              v56 = v137;
            }

            else if (([v24 containsString:@"fwReason"] & 1) != 0 || objc_msgSend(v24, "containsString:", @"status"))
            {
              v136[0] = v24;
              v135[0] = @"name";
              v135[1] = @"value";
              v94 = [v16 valueForKey:v24];
              v136[1] = v94;
              v135[2] = @"length";
              v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:12];
              v136[2] = v53;
              v54 = MEMORY[0x1E695DF20];
              v55 = v136;
              v56 = v135;
            }

            else if (([v24 containsString:@"ipv4Addr"] & 1) != 0 || objc_msgSend(v24, "containsString:", @"ipv4routerAddr"))
            {
              v57 = [v16 valueForKey:v24];
              intValue = [v57 intValue];

              v134[0] = v24;
              v133[0] = @"name";
              v133[1] = @"value";
              v59.s_addr = intValue;
              v94 = [*(v14 + 3776) stringWithFormat:@"%s", inet_ntoa(v59)];
              v134[1] = v94;
              v133[2] = @"length";
              v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:16];
              v134[2] = v53;
              v54 = MEMORY[0x1E695DF20];
              v55 = v134;
              v56 = v133;
            }

            else
            {
              if ([v24 containsString:@"routerMAC"])
              {
                v132[0] = v24;
                v131[0] = @"name";
                v131[1] = @"value";
                v60 = *(v14 + 3776);
                v61 = [v16 valueForKey:v24];
                v95 = [v60 stringWithFormat:@"%@", v61];
                redactedForWiFi = [v95 redactedForWiFi];
                v132[1] = redactedForWiFi;
                v131[2] = @"length";
                v63 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:20];
                v132[2] = v63;
                v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:3];

                v43 = v61;
                v20 = 0x1E830D000;
                v22 = v91;
                v46 = v95;
                goto LABEL_34;
              }

              if ([v24 containsString:@"type"])
              {
                v130[0] = v24;
                v129[0] = @"name";
                v129[1] = @"value";
                v94 = [v16 valueForKey:v24];
                v130[1] = v94;
                v129[2] = @"length";
                v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:48];
                v130[2] = v53;
                v54 = MEMORY[0x1E695DF20];
                v55 = v130;
                v56 = v129;
              }

              else
              {
                v128[0] = v24;
                v127[0] = @"name";
                v127[1] = @"value";
                v94 = [v16 valueForKey:v24];
                v128[1] = v94;
                v127[2] = @"length";
                v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v24, "length")}];
                v128[2] = v53;
                v54 = MEMORY[0x1E695DF20];
                v55 = v128;
                v56 = v127;
              }
            }

            v33 = [v54 dictionaryWithObjects:v55 forKeys:v56 count:3];

            v43 = v94;
LABEL_24:

            [array2 addObject:v33];
            goto LABEL_25;
          }

          v140[0] = v24;
          v139[0] = @"name";
          v139[1] = @"value";
          v93 = [v16 valueForKey:v24];
          v89 = [RoamPolicyStore neighborChannelsOf:v93];
          allObjects = [v89 allObjects];
          v50 = [(AnalyticsStoreFileWriter *)self stringifyValueArray:allObjects];
          v140[1] = v50;
          v139[2] = @"length";
          [MEMORY[0x1E696AD98] numberWithUnsignedLong:20];
          v52 = v51 = v20;
          v140[2] = v52;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:3];

          v20 = v51;
          v43 = v93;
        }

        v22 = v91;
        goto LABEL_24;
      }

LABEL_58:
      free(v19);
      string = v100;
      v65 = array2;
      if (!v100)
      {
        string = [MEMORY[0x1E696AD60] string];
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v66 = array2;
        v67 = [v66 countByEnumeratingWithState:&v111 objects:v122 count:16];
        if (v67)
        {
          v68 = v67;
          v69 = *v112;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v112 != v69)
              {
                objc_enumerationMutation(v66);
              }

              v71 = *(*(&v111 + 1) + 8 * i);
              v72 = [v71 valueForKey:@"name"];
              v73 = [v71 valueForKey:@"length"];
              v74 = -[AnalyticsStoreFileWriter stringifyObjectWithPadding:padding:padToLength:](self, "stringifyObjectWithPadding:padding:padToLength:", v72, @" ", [v73 unsignedLongValue]);
              [string appendFormat:@"%@|", v74];
            }

            v68 = [v66 countByEnumeratingWithState:&v111 objects:v122 count:16];
          }

          while (v68);
        }

        v65 = array2;
      }

      string2 = [MEMORY[0x1E696AD60] string];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v76 = v65;
      v77 = [v76 countByEnumeratingWithState:&v107 objects:v121 count:16];
      if (v77)
      {
        v78 = v77;
        v79 = *v108;
        do
        {
          for (j = 0; j != v78; ++j)
          {
            if (*v108 != v79)
            {
              objc_enumerationMutation(v76);
            }

            v81 = *(*(&v107 + 1) + 8 * j);
            v82 = [v81 valueForKey:@"value"];
            v83 = [v81 valueForKey:@"length"];
            v84 = -[AnalyticsStoreFileWriter stringifyObjectWithPadding:padding:padToLength:](self, "stringifyObjectWithPadding:padding:padToLength:", v82, @" ", [v83 unsignedLongValue]);
            [string2 appendFormat:@"%@|", v84];
          }

          v78 = [v76 countByEnumeratingWithState:&v107 objects:v121 count:16];
        }

        while (v78);
      }

      array = v98;
      [v98 addObject:string2];

      v15 = v101 + 1;
      v13 = string;
      v14 = 0x1E696A000uLL;
    }

    while (v101 + 1 != v99);
    v99 = [obj countByEnumeratingWithState:&v117 objects:v147 count:16];
  }

  while (v99);
  v12 = obj;

  if (!stringCopy)
  {
    stringsArray = stringsArrayCopy;
    if (!stringsArrayCopy)
    {
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  stringsArray = stringsArrayCopy;
  if (!v13)
  {
LABEL_81:
    if (stringsArray)
    {
      goto LABEL_82;
    }

    goto LABEL_84;
  }

  *stringCopy = [MEMORY[0x1E696AEC0] stringWithString:v13];
  if (!stringsArrayCopy)
  {
    goto LABEL_84;
  }

LABEL_82:
  if (array)
  {
    *stringsArray = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  }

LABEL_84:

  v85 = *MEMORY[0x1E69E9840];
}

- (id)stringifyObjectWithPadding:(id)padding padding:(id)a4 padToLength:(unint64_t)length
{
  v7 = MEMORY[0x1E696AD60];
  v8 = a4;
  paddingCopy = padding;
  string = [v7 string];
  [string appendFormat:@"%@", paddingCopy];

  v11 = [string stringByPaddingToLength:length withString:v8 startingAtIndex:0];

  v12 = [MEMORY[0x1E696AEC0] stringWithString:v11];

  return v12;
}

- (id)stringifyValueArray:(id)array
{
  if (array)
  {
    v3 = [array valueForKey:@"description"];
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"(nil)";
  }

  return v4;
}

- (void)writeAttributes:(id)attributes fromObject:(id)object ofEntity:(id)entity withWriter:(id)writer
{
  v44 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  objectCopy = object;
  selfCopy = self;
  v13 = objectCopy;
  entityCopy = entity;
  writerCopy = writer;
  v16 = entityCopy;
  v37 = writerCopy;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v38 = [attributesCopy countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v38)
  {
    v35 = entityCopy;
    v36 = *v40;
    do
    {
      v17 = 0;
      do
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v18 = *(*(&v39 + 1) + 8 * v17);
        v19 = [v13 valueForKey:v18];
        attributesByName = [v16 attributesByName];
        v21 = [attributesByName objectForKeyedSubscript:v18];
        attributeValueClassName = [v21 attributeValueClassName];

        if ([attributeValueClassName isEqualToString:@"NSDate"])
        {
          v23 = [(NSDateFormatter *)selfCopy->_dateFormatter stringFromDate:v19];
LABEL_21:
          v26 = v23;
          goto LABEL_22;
        }

        if ([v18 containsString:@"subband"] && objc_msgSend(attributeValueClassName, "isEqualToString:", @"NSNumber"))
        {
          v23 = +[WADeviceAnalyticsClient subBandAsString:](WADeviceAnalyticsClient, "subBandAsString:", [v19 shortValue]);
          goto LABEL_21;
        }

        if ((([v18 containsString:@"Band"] & 1) != 0 || objc_msgSend(v18, "containsString:", @"band")) && objc_msgSend(attributeValueClassName, "isEqualToString:", @"NSNumber"))
        {
          v23 = +[WADeviceAnalyticsClient bandAsString:](WADeviceAnalyticsClient, "bandAsString:", [v19 shortValue]);
          goto LABEL_21;
        }

        if ((([v18 hasPrefix:@"is"] & 1) != 0 || objc_msgSend(v18, "hasPrefix:", @"has")) && objc_msgSend(attributeValueClassName, "isEqualToString:", @"NSNumber"))
        {
          bOOLValue = [v19 BOOLValue];
          v25 = @"NO";
          if (bOOLValue)
          {
            v25 = @"YES";
          }

          v23 = v25;
          goto LABEL_21;
        }

        if (([v18 containsString:@"bssid"] & 1) == 0 && (objc_msgSend(v18, "containsString:", @"neighborBSSIDs") & 1) == 0 && (objc_msgSend(v18, "containsString:", @"ssid") & 1) == 0 && (objc_msgSend(v18, "containsString:", @"routerMAC") & 1) == 0 && (objc_msgSend(v18, "containsString:", @"parsedBeacon") & 1) == 0 && (objc_msgSend(v18, "containsString:", @"opaque") & 1) == 0 && !objc_msgSend(v18, "containsString:", @"unparsedBeacon"))
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v19];
          goto LABEL_21;
        }

        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v19];
        v28 = MEMORY[0x1E696AEC0];
        [v27 redactedForWiFi];
        v29 = v13;
        v30 = selfCopy;
        v32 = v31 = attributesCopy;
        v26 = [v28 stringWithFormat:@"%@", v32];

        attributesCopy = v31;
        selfCopy = v30;
        v13 = v29;
        v16 = v35;

LABEL_22:
        [v37 writeField:v26];
        [v37 writeComma];

        ++v17;
      }

      while (v38 != v17);
      v33 = [attributesCopy countByEnumeratingWithState:&v39 objects:v43 count:16];
      v38 = v33;
    }

    while (v33);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)writeRelationships:(id)relationships fromObject:(id)object ofEntity:(id)entity with:(id)with
{
  v34 = *MEMORY[0x1E69E9840];
  relationshipsCopy = relationships;
  objectCopy = object;
  entityCopy = entity;
  withCopy = with;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = relationshipsCopy;
  v13 = [relationshipsCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        relationshipsByName = [entityCopy relationshipsByName];
        v19 = [relationshipsByName objectForKeyedSubscript:v17];
        isToMany = [v19 isToMany];

        v21 = MEMORY[0x1E696AEC0];
        v22 = [objectCopy valueForKey:v17];
        v23 = v22;
        if (isToMany)
        {
          v24 = [v21 stringWithFormat:@"%lu", objc_msgSend(v22, "count")];
        }

        else
        {
          v25 = [v22 description];
          redactedForWiFi = [v25 redactedForWiFi];
          v24 = [v21 stringWithFormat:@"%@", redactedForWiFi];
        }

        [withCopy writeField:v24];
        [withCopy writeComma];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)writeRelationshipsHeaders:(id)headers ofEntity:(id)entity with:(id)with
{
  v27 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  entityCopy = entity;
  withCopy = with;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [headersCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(headersCopy);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        relationshipsByName = [entityCopy relationshipsByName];
        v16 = [relationshipsByName objectForKeyedSubscript:v14];
        isToMany = [v16 isToMany];

        if (isToMany)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ count", v14];
        }

        else
        {
          v18 = v14;
        }

        v19 = v18;
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v18];
        [withCopy writeField:v20];

        [withCopy writeComma];
      }

      v11 = [headersCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)exportEntityToCSV:(id)v batchSize:(unint64_t)size maxAge:(unint64_t)age toURL:(id)l fileDate:(id)date
{
  v74[1] = *MEMORY[0x1E69E9840];
  vCopy = v;
  lCopy = l;
  dateCopy = date;
  persistentContainer = [(AnalyticsStoreFileWriter *)self persistentContainer];
  v15 = [persistentContainer datePropertyForEntity:vCopy];

  persistentContainer2 = [(AnalyticsStoreFileWriter *)self persistentContainer];
  if (age)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v17)
  {
    persistentContainer3 = [(AnalyticsStoreFileWriter *)self persistentContainer];
    v19 = [persistentContainer3 predicateForEntity:vCopy newerThan:0 withError:(86400 * age)];
LABEL_10:
    age = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v15 ascending:0];
    v74[0] = age;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
    v20 = v19;
    goto LABEL_11;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_11:
  v64 = 0;
  v57 = [persistentContainer2 fetchObjects:vCopy withPredicate:v20 withSorting:v21 withPrefetchedProperties:0 withLimit:size withError:&v64];
  v22 = v64;
  if (v15)
  {

    if (v18)
    {
    }
  }

  if (v22)
  {
    v23 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [vCopy name];
      v25 = v24 = v22;
      *buf = 136446978;
      v67 = "[AnalyticsStoreFileWriter exportEntityToCSV:batchSize:maxAge:toURL:fileDate:]";
      v68 = 1024;
      v69 = 1141;
      v70 = 2112;
      v71 = v25;
      v72 = 2112;
      v73 = v24;
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error fetching data for entity %@: %@", buf, 0x26u);

      v22 = v24;
    }

    v26 = 0;
    v27 = lCopy;
  }

  else
  {
    [vCopy attributesByName];
    v28 = v56 = v15;
    allKeys = [v28 allKeys];

    if (v15)
    {
      v30 = [MEMORY[0x1E695DFA0] orderedSetWithObject:?];
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    }

    v31 = v30;
    v55 = allKeys;
    v54 = [allKeys sortedArrayUsingSelector:sel_compare_];
    [v31 addObjectsFromArray:?];
    relationshipsByName = [vCopy relationshipsByName];
    allKeys2 = [relationshipsByName allKeys];
    v34 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

    v35 = MEMORY[0x1E696AEC0];
    name = [vCopy name];
    v37 = [v35 stringWithFormat:@"Entity_%@_%@.csv", dateCopy, name];

    path = [lCopy path];
    v52 = v37;
    v39 = [path stringByAppendingPathComponent:v37];

    v53 = v39;
    v40 = [MEMORY[0x1E695DFC0] outputStreamToFileAtPath:v39 append:0];
    [v40 open];
    v51 = v40;
    v41 = [[AnalyticsCSVWriter alloc] initWithOutputStream:v40];
    [(AnalyticsCSVWriter *)v41 writeFields:v31];
    [(AnalyticsStoreFileWriter *)self writeRelationshipsHeaders:v34 ofEntity:vCopy with:v41];
    [(AnalyticsCSVWriter *)v41 finishLine];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v42 = v57;
    v43 = [v42 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v61;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v61 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v60 + 1) + 8 * i);
          [(AnalyticsStoreFileWriter *)self writeAttributes:v31 fromObject:v47 ofEntity:vCopy withWriter:v41];
          [(AnalyticsStoreFileWriter *)self writeRelationships:v34 fromObject:v47 ofEntity:vCopy with:v41];
          [(AnalyticsCSVWriter *)v41 finishLine];
        }

        v44 = [v42 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v44);
    }

    [v51 close];
    v26 = v53;
    v48 = [MEMORY[0x1E695DFF8] URLWithString:v53];
    [WAUtil setFutureApfsPurgeableDeadline:604800 forURL:v48];

    v27 = lCopy;
    v22 = 0;
    v15 = v56;
    v23 = v55;
  }

  v49 = *MEMORY[0x1E69E9840];

  return v26;
}

@end