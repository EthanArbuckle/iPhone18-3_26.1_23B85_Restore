@interface ATSPDSMicrostackshot
- (BOOL)collectToFile:(ktrace_file *)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6;
- (BOOL)configureWithLogger:(id)a3 machine:(ktrace_machine *)a4 options:(id)a5 dataCategories:(id)a6 error:(id *)a7;
@end

@implementation ATSPDSMicrostackshot

- (BOOL)collectToFile:(ktrace_file *)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  empty = xpc_dictionary_create_empty();
  if (v9)
  {
    [v9 timeIntervalSince1970];
    xpc_dictionary_set_uint64(empty, "time", v12);
  }

  xpc_dictionary_set_uint64(empty, "type", 0x10uLL);
  v13 = [[SASampleStore alloc] initForLiveSampling];
  [v13 setShouldGatherKextStat:0];
  [v13 setDataGatheringOptions:{objc_msgSend(v13, "dataGatheringOptions") | 0x60}];
  [v13 setDataGatheringOptions:{objc_msgSend(v13, "dataGatheringOptions") & 0xFFFFFFFFFFFFFFEFLL}];
  v14 = [(ATSPDSMicrostackshot *)self enableLiveProcessInspection];
  v15 = [v13 dataGatheringOptions] & 0xFFFFFFFFFFFFFFFDLL;
  v16 = 2;
  if (!v14)
  {
    v16 = 0;
  }

  [v13 setDataGatheringOptions:v15 | v16];
  v17 = sub_112C();
  if (os_signpost_enabled(v17))
  {
    v18 = [v13 dataGatheringOptions];
    v19 = [(ATSPDSMicrostackshot *)self enableLiveProcessInspection];
    v20 = @"NO";
    if (v19)
    {
      v20 = @"YES";
    }

    *buf = 134349314;
    *&buf[4] = v18;
    *&buf[12] = 2114;
    *&buf[14] = v20;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v34 = 0;
  v21 = v13;
  v22 = v9;
  v23 = v10;
  systemstats_get_microstackshots();
  v24 = [v21 binaryFormat];
  v25 = sub_112C();
  if (os_signpost_enabled(v25))
  {
    *v29 = 134218240;
    v30 = [v21 numSamples];
    v31 = 2048;
    v32 = vcvtd_n_f64_u64([v24 length], 0x14uLL);
    _os_signpost_emit_with_name_impl(&dword_0, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MSS Stats", "Sample count: %lu, %.2fMiB\n", v29, 0x16u);
  }

  if (v24)
  {
    v26 = v24;
    [v24 bytes];
    [v24 length];
    ktrace_file_append_chunk();
  }

  else if (a6)
  {
    v27 = [NSString stringWithFormat:@"Could not serialize sample store binary format"];
    *a6 = [NSError errorWithCode:2 description:v27];
  }

  _Block_object_dispose(buf, 8);
  return v24 != 0;
}

- (BOOL)configureWithLogger:(id)a3 machine:(ktrace_machine *)a4 options:(id)a5 dataCategories:(id)a6 error:(id *)a7
{
  v10 = a5;
  v11 = a6;
  if (![v10 count])
  {
    goto LABEL_12;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  v15 = *v24;
  v22 = v11;
  while (2)
  {
    v16 = a7;
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v23 + 1) + 8 * i);
      if (![v18 isEqualToString:@"EnableLiveProcessInspection"])
      {
        if (!v16)
        {
LABEL_21:
          v11 = v22;
          goto LABEL_22;
        }

        v19 = [NSString stringWithFormat:@"Unknown option: %@'", v18];
        *v16 = [NSError errorWithCode:1 description:v19];
LABEL_20:

        goto LABEL_21;
      }

      v19 = [v12 objectForKeyedSubscript:v18];
      if (![v19 count])
      {
        if (v16)
        {
          v20 = [NSString stringWithFormat:@"'EnableLiveProcessInspection' option provided with no values"];
          *v16 = [NSError errorWithCode:1 description:v20];
        }

        goto LABEL_20;
      }

      self->_enableLiveProcessInspection = 1;
    }

    v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    a7 = v16;
    v11 = v22;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_11:

LABEL_12:
  if ([v11 count])
  {
    if (a7)
    {
      v12 = [NSString stringWithFormat:@"Microstackshot passive data source has no data categories at this time"];
      *a7 = [NSError errorWithCode:0 description:v12];
LABEL_22:

      LOBYTE(a7) = 0;
    }
  }

  else
  {
    LOBYTE(a7) = 1;
  }

  return a7;
}

@end