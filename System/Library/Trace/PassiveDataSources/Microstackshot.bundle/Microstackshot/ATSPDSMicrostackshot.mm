@interface ATSPDSMicrostackshot
- (BOOL)collectToFile:(ktrace_file *)file startDate:(id)date endDate:(id)endDate error:(id *)error;
- (BOOL)configureWithLogger:(id)logger machine:(ktrace_machine *)machine options:(id)options dataCategories:(id)categories error:(id *)error;
@end

@implementation ATSPDSMicrostackshot

- (BOOL)collectToFile:(ktrace_file *)file startDate:(id)date endDate:(id)endDate error:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  empty = xpc_dictionary_create_empty();
  if (dateCopy)
  {
    [dateCopy timeIntervalSince1970];
    xpc_dictionary_set_uint64(empty, "time", v12);
  }

  xpc_dictionary_set_uint64(empty, "type", 0x10uLL);
  initForLiveSampling = [[SASampleStore alloc] initForLiveSampling];
  [initForLiveSampling setShouldGatherKextStat:0];
  [initForLiveSampling setDataGatheringOptions:{objc_msgSend(initForLiveSampling, "dataGatheringOptions") | 0x60}];
  [initForLiveSampling setDataGatheringOptions:{objc_msgSend(initForLiveSampling, "dataGatheringOptions") & 0xFFFFFFFFFFFFFFEFLL}];
  enableLiveProcessInspection = [(ATSPDSMicrostackshot *)self enableLiveProcessInspection];
  v15 = [initForLiveSampling dataGatheringOptions] & 0xFFFFFFFFFFFFFFFDLL;
  v16 = 2;
  if (!enableLiveProcessInspection)
  {
    v16 = 0;
  }

  [initForLiveSampling setDataGatheringOptions:v15 | v16];
  v17 = sub_112C();
  if (os_signpost_enabled(v17))
  {
    dataGatheringOptions = [initForLiveSampling dataGatheringOptions];
    enableLiveProcessInspection2 = [(ATSPDSMicrostackshot *)self enableLiveProcessInspection];
    v20 = @"NO";
    if (enableLiveProcessInspection2)
    {
      v20 = @"YES";
    }

    *buf = 134349314;
    *&buf[4] = dataGatheringOptions;
    *&buf[12] = 2114;
    *&buf[14] = v20;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v34 = 0;
  v21 = initForLiveSampling;
  v22 = dateCopy;
  v23 = endDateCopy;
  systemstats_get_microstackshots();
  binaryFormat = [v21 binaryFormat];
  v25 = sub_112C();
  if (os_signpost_enabled(v25))
  {
    *v29 = 134218240;
    numSamples = [v21 numSamples];
    v31 = 2048;
    v32 = vcvtd_n_f64_u64([binaryFormat length], 0x14uLL);
    _os_signpost_emit_with_name_impl(&dword_0, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MSS Stats", "Sample count: %lu, %.2fMiB\n", v29, 0x16u);
  }

  if (binaryFormat)
  {
    v26 = binaryFormat;
    [binaryFormat bytes];
    [binaryFormat length];
    ktrace_file_append_chunk();
  }

  else if (error)
  {
    v27 = [NSString stringWithFormat:@"Could not serialize sample store binary format"];
    *error = [NSError errorWithCode:2 description:v27];
  }

  _Block_object_dispose(buf, 8);
  return binaryFormat != 0;
}

- (BOOL)configureWithLogger:(id)logger machine:(ktrace_machine *)machine options:(id)options dataCategories:(id)categories error:(id *)error
{
  optionsCopy = options;
  categoriesCopy = categories;
  if (![optionsCopy count])
  {
    goto LABEL_12;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = optionsCopy;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  v15 = *v24;
  v22 = categoriesCopy;
  while (2)
  {
    errorCopy = error;
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v23 + 1) + 8 * i);
      if (![v18 isEqualToString:@"EnableLiveProcessInspection"])
      {
        if (!errorCopy)
        {
LABEL_21:
          categoriesCopy = v22;
          goto LABEL_22;
        }

        v19 = [NSString stringWithFormat:@"Unknown option: %@'", v18];
        *errorCopy = [NSError errorWithCode:1 description:v19];
LABEL_20:

        goto LABEL_21;
      }

      v19 = [v12 objectForKeyedSubscript:v18];
      if (![v19 count])
      {
        if (errorCopy)
        {
          v20 = [NSString stringWithFormat:@"'EnableLiveProcessInspection' option provided with no values"];
          *errorCopy = [NSError errorWithCode:1 description:v20];
        }

        goto LABEL_20;
      }

      self->_enableLiveProcessInspection = 1;
    }

    v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    error = errorCopy;
    categoriesCopy = v22;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_11:

LABEL_12:
  if ([categoriesCopy count])
  {
    if (error)
    {
      v12 = [NSString stringWithFormat:@"Microstackshot passive data source has no data categories at this time"];
      *error = [NSError errorWithCode:0 description:v12];
LABEL_22:

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

@end