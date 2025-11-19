void sub_100001098(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(*(a1 + 56) + 8);
  v3 = *(a1 + 80);
  v4 = *(a1 + 81);
  v5 = *(a1 + 82);
  v6 = *(a1 + 64);
  v86 = *(a1 + 72);
  v7 = *(a1 + 32);
  v88 = v1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v7 execName];
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = [v7 pid];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Begin analysis for %{public}@ [%d]", buf, 0x12u);
  }

  sub_100005BDC(v7);
  v87 = [qword_100014630 objectForKeyedSubscript:off_1000144A0[0]];
  if ([v87 BOOLValue])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [v7 _populateAddtionalMetadataWithOptions:v9 timeoutSecs:v6];
  v91 = v7;
  if (v3 && v4 && (v5 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 execName];
      v11 = [v7 pid];
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 1024;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Attempting to save lite diagnostic before generating a memgraph for process %@ [%d]", buf, 0x12u);
    }

    v95 = 0;
    v12 = sub_100001F94(v7, 1, 0, &v95);
    v13 = v95;
    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v91 execName];
        *buf = 138412546;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully saved initial lite diagnostic for process %@ at %@", buf, 0x16u);
      }

      [v91 setLiteDiagFilePath:v12];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v76 = [v91 execName];
      v77 = [v13 localizedDescription];
      *buf = 138412546;
      *&buf[4] = v76;
      *&buf[12] = 2114;
      *&buf[14] = v77;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to save initial lite diagnostic for process %@: %{public}@", buf, 0x16u);
    }

    v7 = v91;
  }

  v90 = v4;
  v94 = 0;
  v15 = [v7 execName];
  v16 = 2;
  if (v15)
  {
    v17 = v15;
    v18 = [qword_100014630 objectForKeyedSubscript:off_1000144A8[0]];
    v19 = [v7 execName];
    v20 = [v18 containsObject:v19];

    if (v20)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }
  }

  if (v5)
  {
    v21 = v91;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v91 execName];
      v23 = [v91 pid];
      *buf = 138412546;
      *&buf[4] = v22;
      *&buf[12] = 1024;
      *&buf[14] = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Attempting to create a gcore for process %@ [%d]", buf, 0x12u);
    }

    v93 = 0;
    v24 = v91;
    v25 = [RMECacheEnumerator getGcoreSpoolWithCreateIfNecessary:1];
    v26 = v25;
    if (v25)
    {
      v27 = sub_10000284C(v25, &v93, @".core", v24);
      if (v27)
      {
        v28 = v27;
        v29 = v28;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to get gcore spool file path", buf, 2u);
        }

        v28 = 0;
        v29 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to get gcore spool directory", buf, 2u);
      }

      v96[0] = NSLocalizedDescriptionKey;
      *buf = @"Failed to get gcore spool directory";
      v28 = [NSDictionary dictionaryWithObjects:buf forKeys:v96 count:1];
      [NSError errorWithDomain:@"ReportMemoryExceptionError" code:1 userInfo:v28];
      v93 = v29 = 0;
    }

    v30 = v93;
    if (!v29)
    {
      v31 = v90;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v74 = [v24 execName];
        v75 = [v24 pid];
        *buf = 138412802;
        *&buf[4] = v74;
        *&buf[12] = 1024;
        *&buf[14] = v75;
        *&buf[18] = 2112;
        *&buf[20] = v30;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to get filepath to save the gcore for  %@ [%d]: %@", buf, 0x1Cu);
      }

      goto LABEL_55;
    }

    if (sub_100005E58() && sub_100005F28())
    {
      v32 = objc_alloc_init(NSMutableDictionary);
      v33 = [[NSNumber alloc] initWithInt:{objc_msgSend(v24, "task")}];
      [v32 setObject:v33 forKeyedSubscript:@"port"];

      [v32 setObject:&off_100011228 forKeyedSubscript:@"pid"];
      [v32 setObject:&__kCFBooleanTrue forKeyedSubscript:@"annotations"];
      [v32 setObject:v29 forKeyedSubscript:@"filename"];
      v34 = v32;
      v35 = sub_100005F28();
      if (!v35)
      {
        dlerror();
        abort_report_np();
      }

      v36 = v35(v34);

      [v24 releaseAnalyzedTask];
      if (!v36)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v24 execName];
          v38 = [v24 pid];
          *buf = 138543874;
          *&buf[4] = v37;
          *&buf[12] = 1024;
          *&buf[14] = v38;
          *&buf[18] = 2112;
          *&buf[20] = v29;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully created a gcore for %{public}@ [%d] at %@", buf, 0x1Cu);
        }

        [v24 setGcoreCapture:1];
        [v24 setGcoreFilePath:v29];
        [v24 _generateMemgraphWithContentLevel:v16 timeoutSecs:v6 memgraphFailedReasonOut:&v94];
LABEL_51:
        v31 = v90;
        unlink([v29 UTF8String]);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v29;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deleted gcore at %@", buf, 0xCu);
        }

LABEL_55:

        goto LABEL_56;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "GCoreFramework is not available, will not collect gcore", buf, 2u);
      }

      [v24 releaseAnalyzedTask];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v24 execName];
      v40 = [v24 pid];
      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 1024;
      *&buf[14] = v40;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cannot create a gcore for %{public}@ [%d] ", buf, 0x12u);
    }

    v94 = 4;
    goto LABEL_51;
  }

  v21 = v91;
  if (v90)
  {
    [v91 _generateMemgraphWithContentLevel:v16 timeoutSecs:v6 memgraphFailedReasonOut:&v94];
  }

  [v91 releaseAnalyzedTask];
  v30 = 0;
  v31 = v90;
LABEL_56:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [v21 execName];
    v42 = [v21 pid];
    *buf = 138543618;
    *&buf[4] = v41;
    *&buf[12] = 1024;
    *&buf[14] = v42;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Saving log file for %{public}@ [%d]", buf, 0x12u);
  }

  os_unfair_lock_lock(v2 + 8);
  v92 = v30;
  v43 = sub_100001F94(v21, v3, v31, &v92);
  v44 = v92;

  os_unfair_lock_unlock(v2 + 8);
  v45 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  v89 = v43;
  v85 = v44;
  if (v43)
  {
    if (v45)
    {
      v46 = [v21 execName];
      v47 = [v21 pid];
      *buf = 138543874;
      *&buf[4] = v46;
      *&buf[12] = 1024;
      *&buf[14] = v47;
      *&buf[18] = 2114;
      *&buf[20] = v89;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Memory Resource Exception log for %{public}@ [%d] saved at %{public}@", buf, 0x1Cu);
    }

    if (sub_100002DD4() && v31)
    {
      v48 = v21;
      v49 = v89;
      v50 = objc_alloc_init(SDRDiagnosticReporter);
      [v48 exceptionType];
      v51 = MREExceptionTypeToString();
      if ([v48 isMSLEnabled])
      {
        v52 = @"MallocStackLogging Enabled";
      }

      else
      {
        v52 = &stru_100010D18;
      }

      v53 = [v48 execName];
      v54 = [[NSString alloc] initWithFormat:@"%llu", objc_msgSend(v48, "limitValue")];
      v55 = [v50 signatureWithDomain:@"Performance" type:@"MemoryResourceException" subType:v51 subtypeContext:v52 detectedProcess:v53 triggerThresholdValues:v54];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v55;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Symptoms Diagnostic Reporter signature created: %@", buf, 0xCu);
      }

      v56 = [v48 memoryGraph];

      if (v56)
      {
        v99 = v49;
        v100 = kSymptomDiagnosticKeyPayloadPath;
        v57 = [NSArray arrayWithObjects:&v99 count:1];
        v101 = v57;
        v58 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      }

      else
      {
        v58 = 0;
      }

      v61 = [v48 cachedMetaDataDict];

      if (!v61)
      {
        v62 = [v48 createMetaDataDict];
      }

      v63 = [v48 cachedMetaDataDict];

      if (v63)
      {
        v64 = [v48 cachedMetaDataDict];
        v98 = v64;
        v63 = [NSArray arrayWithObjects:&v98 count:1];
      }

      v96[0] = kSymptomDiagnosticActionLogArchive;
      v96[1] = kSymptomDiagnosticActionGetNetworkInfo;
      *buf = &__kCFBooleanFalse;
      *&buf[8] = &__kCFBooleanFalse;
      v96[2] = kSymptomDiagnosticActionCrashAndSpinLogs;
      v96[3] = kSymptomDiagnosticActionDiagnosticExtensions;
      *&buf[16] = &__kCFBooleanFalse;
      *&buf[24] = &__kCFBooleanFalse;
      v65 = [NSDictionary dictionaryWithObjects:buf forKeys:v96 count:4];
      [v50 snapshotWithSignature:v55 duration:v63 events:v58 payload:v65 actions:&stru_100010698 reply:0.0];

      v21 = v91;
      v31 = v90;
    }
  }

  else
  {
    if (v45)
    {
      v59 = [v21 execName];
      v60 = [v21 pid];
      *buf = 138543874;
      *&buf[4] = v59;
      *&buf[12] = 1024;
      *&buf[14] = v60;
      *&buf[18] = 2112;
      *&buf[20] = v44;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Memory Resource Exception log for %{public}@ [%d] could not be saved due to error: %@", buf, 0x1Cu);
    }

    sub_100002DD4();
  }

  v84 = [v21 execName];
  v81 = [v21 bundleID];
  v83 = [v21 exceptionType];
  v82 = [v21 ledgerPhysFootprint];
  v66 = [v21 ledgerPhysFootprintPeak];
  v67 = [v21 limitValue];
  v68 = v31;
  if (v31)
  {
    v69 = 0;
  }

  else
  {
    v69 = v86;
  }

  v70 = [v21 memoryGraph];
  v71 = [v21 memoryGraph];
  v72 = 0;
  if (!v71)
  {
    if (v94 > 6)
    {
      v72 = 3;
    }

    else
    {
      v72 = qword_10000B350[v94];
    }

    v21 = v91;
    v68 = v90;
  }

  v73 = [v21 isMSLEnabled];
  BYTE1(v80) = [v21 gcoreCapture];
  LOBYTE(v80) = v73;
  LOBYTE(v79) = v70 != 0;
  LOBYTE(v78) = v68;
  [RMETelemetry emitTelemetryForExecName:v84 bundleID:v81 exceptionType:v83 footprint:v82 footprintPeak:v66 jetsamLimit:v67 memgraphAttempted:v78 memgraphSkippedReason:v69 memgraphSucceeded:v79 memgraphFailedReason:v72 diagFilePath:v89 isMSLEnabled:v80 isGcoreCapture:?];

  free(qword_100014668);
  qword_100014668 = 0;
  qword_1000144C8 = "Bulk analysis completed.";
  if (v88)
  {
    v88[2](v88, v85);
  }

  ++qword_100014658;
}

id sub_100001F94(void *a1, char a2, int a3, void *a4)
{
  v7 = a1;
  if (a3)
  {
    v8 = @".memgraph";
  }

  else
  {
    v8 = @".lite_diag";
  }

  if (a2 & 1) != 0 || (a3)
  {
    v11 = [RMECacheEnumerator getLogContainer:1];
    v12 = v11;
    if (!v11)
    {
      if (!a4)
      {
        goto LABEL_39;
      }

      v57 = NSLocalizedDescriptionKey;
      *buf = @"Failed to get log container";
      v18 = [NSDictionary dictionaryWithObjects:buf forKeys:&v57 count:1];
      [NSError errorWithDomain:@"ReportMemoryExceptionError" code:1 userInfo:v18];
      v16 = 0;
      *a4 = v9 = 0;
LABEL_27:

      if (!v9)
      {
        goto LABEL_39;
      }

      v23 = [[NSFileHandle alloc] initWithFileDescriptor:v16];
      if (v23)
      {
        v24 = [v7 _saveLogFileWithHandle:v23 error:a4];
        [v23 closeFile];
        if (v24 != 2)
        {
          if (v24 == 1 && [(__CFString *)v8 isEqualToString:@".memgraph"])
          {
            v25 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if ((a2 & 1) == 0)
            {
              if (v25)
              {
                *buf = 138543362;
                *&buf[4] = v9;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Attempted to save out memgraph, but no memgraph data could be written to file. Now attempting to delete invalid memgraph, since we don't have quota remaining for lite diags: %{public}@", buf, 0xCu);
              }

              if (sub_100002C74(v9))
              {
                v41 = 0;
              }

              else
              {
                v41 = v9;
              }

              v39 = v41;
              goto LABEL_57;
            }

            if (v25)
            {
              *buf = 138543362;
              *&buf[4] = v9;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Attempted to save out memgraph, but no memgraph data could be written to file. Changing to lite diag: %{public}@", buf, 0xCu);
            }

            v26 = [v9 stringByReplacingOccurrencesOfString:@".memgraph" withString:@".lite_diag"];
            v27 = +[NSFileManager defaultManager];
            v28 = [v27 moveItemAtPath:v9 toPath:v26 error:0];

            if ((v28 & 1) == 0)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v9;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not rename invalid memgraph to lite_diag. Attempting to delete: %{public}@", buf, 0xCu);
              }

              if (sub_100002C74(v9))
              {
                v42 = 0;
              }

              else
              {
                v42 = v9;
              }

              v10 = v42;

              goto LABEL_58;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = v9;
              v45 = 2114;
              *v46 = v26;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully renamed invalid memgraph to lite_diag. %{public}@ -> %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v26 = v9;
          }

          v31 = [v7 liteDiagFilePath];

          if (v31 && a3)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v7 liteDiagFilePath];
              *buf = 138543362;
              *&buf[4] = v32;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deleting initial lite diagnostic so we don't have 2 diagnostics on-device: %{public}@", buf, 0xCu);
            }

            v33 = [v7 liteDiagFilePath];
            sub_100002C74(v33);

            [v7 setLiteDiagFilePath:0];
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Marking purgable %@", buf, 0xCu);
          }

          v34 = open([v26 UTF8String], 1);
          if (v34)
          {
            v35 = v34;
            v57 = 65541;
            v36 = ffsctl(v34, 0xC0084A44uLL, &v57, 0);
            close(v35);
            if (!v36 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_56;
            }

            *buf = 138412802;
            *&buf[4] = v26;
            v45 = 1024;
            *v46 = v35;
            *&v46[4] = 1024;
            *&v46[6] = v36;
            v37 = "Error marking purgable via ffsctl for path %@ fd %i, error: %i";
            v38 = 24;
          }

          else
          {
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
LABEL_56:
              v39 = v26;
              v9 = v39;
LABEL_57:
              v10 = v39;
              goto LABEL_58;
            }

            *buf = 138412290;
            *&buf[4] = v26;
            v37 = "Error opening file to mark purgable for path %@";
            v38 = 12;
          }

          _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v37, buf, v38);
          goto LABEL_56;
        }
      }

      else
      {
        close(v16);
        if (a4)
        {
          v29 = [NSString stringWithFormat:@"Failed to create file handle from fd: %d", v16];
          v47 = NSLocalizedDescriptionKey;
          v48 = v29;
          v30 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          *a4 = [NSError errorWithDomain:@"ReportMemoryExceptionError" code:1 userInfo:v30];
        }
      }

      v10 = 0;
LABEL_58:

      goto LABEL_59;
    }

    v13 = sub_10000284C(v11, a4, v8, v7);
    v14 = strdup([v13 UTF8String]);
    if (v14)
    {
      v15 = v14;
      v43 = v7;
      v16 = mkstemps(v14, [(__CFString *)v8 length]);
      v17 = *__error();
      v18 = [[NSString alloc] initWithUTF8String:v15];
      free(v15);
      if (v16 == -1)
      {
        if (a4)
        {
          v20 = [NSString stringWithFormat:@"Failed to create file (errno: %d)", v17];
          v53 = NSLocalizedDescriptionKey;
          v54 = v20;
          v21 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          *a4 = [NSError errorWithDomain:@"ReportMemoryExceptionError" code:1 userInfo:v21];
        }

        v16 = 0;
        v9 = 0;
        goto LABEL_21;
      }

      if (sub_100002B94(v18, v16, a4))
      {
        v18 = v18;
        v9 = v18;
LABEL_21:
        v7 = v43;
LABEL_26:

        goto LABEL_27;
      }

      close(v16);
      v7 = v43;
      if (a4)
      {
        v51 = NSLocalizedDescriptionKey;
        v52 = @"Failed to set proper permissions";
        v22 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        *a4 = [NSError errorWithDomain:@"ReportMemoryExceptionError" code:1 userInfo:v22];
      }

      v16 = 0;
    }

    else
    {
      if (a4)
      {
        v55 = NSLocalizedDescriptionKey;
        v56 = @"Failed to create file name C string";
        v19 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        *a4 = [NSError errorWithDomain:@"ReportMemoryExceptionError" code:1 userInfo:v19];
      }

      v16 = 0;
      v18 = 0;
    }

    v9 = 0;
    goto LABEL_26;
  }

  if (!a4)
  {
LABEL_39:
    v10 = 0;
    goto LABEL_60;
  }

  v49 = NSLocalizedDescriptionKey;
  v50 = @"Quotas for both lite and full diags unavailable";
  v9 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  [NSError errorWithDomain:@"ReportMemoryExceptionError" code:1 userInfo:v9];
  *a4 = v10 = 0;
LABEL_59:

LABEL_60:

  return v10;
}

id sub_10000284C(void *a1, void *a2, void *a3, void *a4)
{
  v6 = a1;
  v28 = a3;
  v7 = a4;
  v8 = [v7 execName];

  if (v8)
  {
    v9 = [v7 execName];
  }

  else
  {
    v9 = @"UNKNOWN_PROCESS";
  }

  v10 = [v7 currentTime];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = +[NSDate date];
    if (!v11)
    {
      v12 = 0;
      goto LABEL_10;
    }
  }

  if (qword_100014678 != -1)
  {
    dispatch_once(&qword_100014678, &stru_1000105F8);
  }

  v12 = [qword_100014670 components:252 fromDate:v11];
LABEL_10:
  [v7 exceptionType];
  v13 = MREExceptionTypeToString();
  v14 = [v7 isMSLEnabled];
  v15 = off_1000144B0[0];
  if (!v14)
  {
    v15 = &stru_100010D18;
  }

  v16 = v15;
  v17 = [v7 gcoreCapture];
  v18 = off_1000144B8;
  if (!v17)
  {
    v18 = &stru_100010D18;
  }

  v19 = v18;
  v20 = [NSString alloc];
  if (v12)
  {
    v21 = v16;
    v22 = [v20 initWithFormat:@"%@/%@%@%@_%@_%04ld-%02ld-%02ld_%02ld%02ld%02ld.XXXXXX%@", v6, v13, v19, v16, v9, objc_msgSend(v12, "year"), objc_msgSend(v12, "month"), objc_msgSend(v12, "day"), objc_msgSend(v12, "hour"), objc_msgSend(v12, "minute"), objc_msgSend(v12, "second"), v28];
    if (v22)
    {
LABEL_16:
      v23 = v22;
      v24 = v7;
      goto LABEL_20;
    }
  }

  else
  {
    v22 = [v20 initWithFormat:@"%@/%@%@%@_%@.XXXXXX%@", v6, v13, v19, v16, v9, v28];
    v21 = v16;
    if (v22)
    {
      goto LABEL_16;
    }
  }

  v24 = v7;
  if (a2)
  {
    v29 = NSLocalizedDescriptionKey;
    v30 = @"Failed to create file name NSString";
    v25 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    *a2 = [NSError errorWithDomain:@"ReportMemoryExceptionError" code:1 userInfo:v25];
  }

LABEL_20:

  return v22;
}

id sub_100002B94(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = NSFileProtectionKey;
  v10 = NSFileProtectionNone;
  v4 = a1;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 setAttributes:v5 ofItemAtPath:v4 error:a3];

  return v7;
}

id sub_100002C74(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v7 = 0;
  v3 = [v2 removeItemAtPath:v1 error:&v7];
  v4 = v7;

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v1;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully deleted %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = [v4 localizedDescription];
    *buf = 138543618;
    v9 = v1;
    v10 = 2112;
    v11 = v6;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to delete %{public}@ due to error %@", buf, 0x16u);
  }

  return v3;
}

uint64_t sub_100002DD4()
{
  if (qword_100014698 != -1)
  {
    dispatch_once(&qword_100014698, &stru_100010770);
  }

  return byte_100014690;
}

id sub_100002FA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
    v4 = +[NSFileManager defaultManager];
    v30 = 0;
    v5 = [v4 attributesOfItemAtPath:v3 error:&v30];
    v6 = v30;

    v7 = v6 == 0;
    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 description];
        *buf = 138412546;
        v34 = v3;
        v35 = 2112;
        v36 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve file size for %@ with error: %@", buf, 0x16u);
      }

      v9 = 0;
    }

    else
    {
      v9 = [v5 fileSize];
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  v31[0] = @"execName";
  v10 = *(a1 + 40);
  v29 = v10;
  if (!v10)
  {
    v10 = +[NSNull null];
  }

  v28 = v10;
  v32[0] = v10;
  v31[1] = @"bundleID";
  v11 = *(a1 + 48);
  v27 = v11;
  if (!v11)
  {
    v11 = +[NSNull null];
  }

  v32[1] = v11;
  v31[2] = @"exceptionType";
  v26 = [NSNumber numberWithInteger:*(a1 + 56), v11];
  v32[2] = v26;
  v31[3] = @"footprint";
  v25 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  v32[3] = v25;
  v31[4] = @"footprintPeak";
  v24 = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  v32[4] = v24;
  v31[5] = @"jetsamLimit";
  v12 = [NSNumber numberWithUnsignedLongLong:*(a1 + 80)];
  v32[5] = v12;
  v31[6] = @"memgraphAttempted";
  v13 = [NSNumber numberWithBool:*(a1 + 104)];
  v32[6] = v13;
  v31[7] = @"reasonMemgraphSkipped";
  v14 = [NSNumber numberWithInteger:*(a1 + 88)];
  v32[7] = v14;
  v31[8] = @"memgraphSucceeded";
  v15 = [NSNumber numberWithBool:*(a1 + 105)];
  v32[8] = v15;
  v31[9] = @"reasonMemgraphFailed";
  v16 = [NSNumber numberWithInteger:*(a1 + 96)];
  v32[9] = v16;
  v31[10] = @"diagFileSizeSucceeded";
  v17 = [NSNumber numberWithBool:v7];
  v32[10] = v17;
  v31[11] = @"diagFileSize";
  v18 = [NSNumber numberWithUnsignedLongLong:v9];
  v32[11] = v18;
  v31[12] = @"isMSLEnabled";
  v19 = [NSNumber numberWithBool:*(a1 + 106)];
  v32[12] = v19;
  v31[13] = @"isGcoreCapture";
  v20 = [NSNumber numberWithBool:*(a1 + 107)];
  v32[13] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:14];

  if (!v27)
  {
  }

  if (!v29)
  {
  }

  return v21;
}

void sub_1000033B4(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (qword_100014628 != -1)
  {
    dispatch_once(&qword_100014628, &stru_1000104D8);
  }

  if (atomic_fetch_add(&dword_100014620, 1u) < 2)
  {
    if (mach_port_mod_refs(mach_task_self_, a1, 0, 1))
    {
      v15 = [NSError errorWithDomain:MREErrorDomain[0] code:3 userInfo:0];
      v11[2](v11, v15);

      atomic_fetch_add(&dword_100014620, 0xFFFFFFFF);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100003688;
      block[3] = &unk_100010500;
      v25 = a1;
      v26 = a2;
      v21 = os_transaction_create();
      v22 = v9;
      v23 = v10;
      v24 = v11;
      v16 = v21;
      dispatch_async(v22, block);
    }
  }

  else
  {
    if (v11)
    {
      v12 = [NSError errorWithDomain:MREErrorDomain[0] code:13 userInfo:0];
      v11[2](v11, v12);
    }

    v27 = 0;
    v28 = 0;
    [MemoryResourceException extractExecNameAndBundleIDMinimal:a1 execNameOut:&v28 bundleIDOut:&v27];
    v13 = v28;
    v14 = v27;
    LOWORD(v19) = 0;
    LOBYTE(v18) = 0;
    LOBYTE(v17) = 0;
    [RMETelemetry emitTelemetryForExecName:v13 bundleID:v14 exceptionType:8 footprint:0 footprintPeak:0 jetsamLimit:0 memgraphAttempted:v17 memgraphSkippedReason:5 memgraphSucceeded:v18 memgraphFailedReason:0 diagFilePath:0 isMSLEnabled:v19 isGcoreCapture:?];
    atomic_fetch_add(&dword_100014620, 0xFFFFFFFF);
  }
}

void sub_100003644(id a1)
{
  CSSetForceSafeMachVMReads();
  qword_100014630 = sub_100006A08(0);

  _objc_release_x1();
}

void sub_100003688(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 68);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v159 = *(a1 + 32);
  v160 = v3;
  queue = v4;
  v6 = v5;
  v173 = 0;
  v163 = [MemoryResourceException resourceExceptionFromTask:v1 error:&v173];
  v162 = v173;
  mach_port_deallocate(mach_task_self_, v1);
  if (!v163 || v162 || [v163 exceptionType] == 8)
  {
    if (v6)
    {
      v6[2](v6, v162);
    }

    goto LABEL_188;
  }

  v7 = v163;
  if (qword_100014648 != -1)
  {
    dispatch_once(&qword_100014648, &stru_100010568);
  }

  v8 = qword_100014640;
  if (qword_100014640 && os_signpost_enabled(qword_100014640))
  {
    loga = v8;
    v157 = [v7 execName];
    v155 = [v7 bundleID];
    v9 = [v7 exceptionType];
    v150 = [v7 limitValue];
    v148 = [v7 upTime];
    v146 = [v7 pid];
    v144 = [v7 coalitionBundleID];
    v142 = [v7 ledgerPhysFootprint];
    v140 = [v7 ledgerPhysFootprintPeak];
    v138 = [v7 ledgerInternal];
    v136 = [v7 ledgerInternalCompressed];
    v134 = [v7 ledgerAlternateAccounting];
    v132 = [v7 ledgerAlternateAccountingCompressed];
    v10 = [v7 ledgerIOKitMapped];
    v11 = [v7 ledgerPageTable];
    v12 = [v7 ledgerWiredMem];
    v13 = [v7 ledgerPurgeableNonvolatile];
    v14 = [v7 ledgerPurgeableNonvolatileCompressed];
    v15 = [v7 ledgerNetworkNonvolatile];
    v16 = [v7 ledgerNetworkNonvolatileCompressed];
    *buf = 138548226;
    *&buf[4] = v157;
    *&buf[12] = 2114;
    *&buf[14] = v155;
    *&buf[22] = 2050;
    *&buf[24] = v9;
    *v175 = 2050;
    *&v175[2] = v150;
    *&v175[10] = 2050;
    *&v175[12] = v148;
    *&v175[20] = 1026;
    *&v175[22] = v146;
    *&v175[26] = 2114;
    *&v175[28] = v144;
    *&v175[36] = 2050;
    *&v175[38] = v142;
    *&v175[46] = 2050;
    v176 = v140;
    v177 = 2050;
    v178 = v138;
    v179 = 2050;
    v180 = v136;
    v181 = 2050;
    v182 = v134;
    v183 = 2050;
    v184 = v132;
    v185 = 2050;
    v186 = v10;
    v187 = 2050;
    v188 = v11;
    v189 = 2050;
    v190 = v12;
    v191 = 2050;
    v192 = v13;
    v193 = 2050;
    v194 = v14;
    v195 = 2050;
    v196 = v15;
    v197 = 2050;
    v198 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, loga, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CorpseReceived", "execName=%{public,signpost.description:attribute}@ bundleID=%{public,signpost.description:attribute}@ exceptionType=%{public,signpost.description:attribute}ld limitValue=%{public,signpost.description:attribute}llu upTime=%{public,signpost.description:attribute}lli pid=%{public,signpost.description:attribute}d coalitionBundleID=%{public,signpost.description:attribute}@ ledgerPhysFootprint=%{public,signpost.description:attribute}llu ledgerPhysFootprintPeak=%{public,signpost.description:attribute}llu ledgerInternal=%{public,signpost.description:attribute}llu ledgerInternalCompressed=%{public,signpost.description:attribute}llu ledgerAlternateAccounting=%{public,signpost.description:attribute}llu ledgerAlternateAccountingCompressed=%{public,signpost.description:attribute}llu ledgerIOKitMapped=%{public,signpost.description:attribute}llu ledgerPageTable=%{public,signpost.description:attribute}llu ledgerWiredMem=%{public,signpost.description:attribute}llu ledgerPurgeableNonvolatile=%{public,signpost.description:attribute}llu ledgerPurgeableNonvolatileCompressed=%{public,signpost.description:attribute}llu ledgerNetworkNonvolatile=%{public,signpost.description:attribute}llu ledgerNetworkNonvolatileCompressed=%{public,signpost.description:attribute}llu ", buf, 0xC6u);
  }

  v158 = [v7 execName];
  if (qword_100014650 - qword_100014658 >= sub_1000055D0(v158))
  {
    [v7 releaseAnalyzedTask];
    v19 = [v7 execName];
    v20 = [v7 bundleID];
    v21 = [v7 exceptionType];
    v22 = [v7 ledgerPhysFootprint];
    v23 = [v7 ledgerPhysFootprintPeak];
    v24 = [v7 limitValue];
    v25 = [v7 isMSLEnabled];
    BYTE1(v111) = [v7 gcoreCapture];
    LOBYTE(v111) = v25;
    LOBYTE(v110) = 0;
    LOBYTE(v109) = 0;
    [RMETelemetry emitTelemetryForExecName:v19 bundleID:v20 exceptionType:v21 footprint:v22 footprintPeak:v23 jetsamLimit:v24 memgraphAttempted:v109 memgraphSkippedReason:4 memgraphSucceeded:v110 memgraphFailedReason:0 diagFilePath:0 isMSLEnabled:v111 isGcoreCapture:?];

    if (v6)
    {
      v26 = [NSError errorWithDomain:MREErrorDomain[0] code:14 userInfo:0];
      v6[2](v6, v26);
    }

    goto LABEL_187;
  }

  v137 = [v7 pid];
  if (([v7 isFirstParty] & 1) == 0 && (sub_100007AD0() & 1) == 0)
  {
    v46 = [v7 execName];
    v47 = [v7 bundleID];
    v48 = [v7 exceptionType];
    v49 = [v7 ledgerPhysFootprint];
    v50 = [v7 ledgerPhysFootprintPeak];
    v51 = [v7 limitValue];
    v52 = [v7 isMSLEnabled];
    BYTE1(v111) = [v7 gcoreCapture];
    LOBYTE(v111) = v52;
    LOBYTE(v110) = 0;
    LOBYTE(v109) = 0;
    [RMETelemetry emitTelemetryForExecName:v46 bundleID:v47 exceptionType:v48 footprint:v49 footprintPeak:v50 jetsamLimit:v51 memgraphAttempted:v109 memgraphSkippedReason:7 memgraphSucceeded:v110 memgraphFailedReason:0 diagFilePath:0 isMSLEnabled:v111 isGcoreCapture:?];

    [v7 releaseAnalyzedTask];
    if (v6)
    {
      v6[2](v6, 0);
    }

    goto LABEL_187;
  }

  if (v2)
  {
    v17 = 0;
    v18 = 0;
    v149 = 1;
    LOBYTE(v151) = 1;
    goto LABEL_171;
  }

  v156 = v7;
  v119 = [v156 pid];
  v27 = [v156 execName];
  v28 = [v156 currentTime];
  v135 = [v156 isMSLEnabled];
  v29 = qword_100014630;
  v139 = [v156 exceptionType];
  v147 = v29;
  v30 = v27;
  log = v28;
  LOBYTE(from) = 0;
  v143 = v30;
  if (!v30 || !log || !v147)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = v30;
      *&buf[12] = 1024;
      *&buf[14] = v119;
      *&buf[18] = 2112;
      *&buf[20] = log;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Insufficient data available to evaluation the available file quota. execname: %{public}@ [%d], date: %@", buf, 0x1Cu);
    }

    v44 = 0;
    v149 = 0;
    v151 = 0;
    v45 = 0;
    goto LABEL_152;
  }

  LOBYTE(location) = 0;
  v152 = sub_100007B48(v147, v139, v30, &location, &from);
  v124 = [v147 objectForKeyedSubscript:off_100014470[0]];
  v123 = [v147 objectForKeyedSubscript:off_100014478[0]];
  v122 = [v147 objectForKeyedSubscript:off_100014480[0]];
  v120 = [v147 objectForKeyedSubscript:off_100014490[0]];
  v121 = [v147 objectForKeyedSubscript:off_100014488[0]];
  v118 = sub_100008078(v147);
  v31 = [v124 integerValue];
  v32 = v31;
  if (v31 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = v31;
  }

  v131 = v33;
  v34 = [v123 integerValue];
  v35 = v34;
  if (v34 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v36 = v34;
  }

  v126 = v36;
  v37 = [v122 integerValue];
  if (v37 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v38 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v38 = v37;
  }

  v133 = v38;
  v39 = [v121 integerValue];
  v40 = v39;
  if (v39 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v39;
  }

  v128 = v41;
  v42 = [v120 integerValue];
  v43 = 0x7FFFFFFFFFFFFFFFLL;
  if (v42 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v43 = v42;
  }

  v129 = v43;
  if (!v32 && !v35 && !v42 && (v152 == 0 || (location & 1) == 0) && !v40)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "File limit set to 0. Skipping.", buf, 2u);
    }

    v44 = 0;
    v149 = 0;
    v151 = 0;
    v45 = 0;
    goto LABEL_151;
  }

  v53 = [@".memgraph" length];
  v145 = [[RMECacheEnumerator alloc] initCacheEnumerator];
  v54 = [v145 nextValidURL];
  if (!v54)
  {
    v130 = 0;
    v56 = 0;
    v141 = 0;
    v127 = 0;
    v80 = 0;
    v117 = 0;
    v55 = 0;
LABEL_112:
    if (v80 >= v129)
    {
      v81 = v127;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        *&buf[4] = v129;
        *&buf[12] = 2114;
        *&buf[14] = v143;
        *&buf[22] = 1024;
        *&buf[24] = v119;
        v82 = "The total lite diagnostic log limit of %ld has been exceeded in the last 24 hours. Skipping %{public}@ [%d]";
LABEL_119:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v82, buf, 0x1Cu);
      }
    }

    else
    {
      v81 = v127;
      if (v117 < v118)
      {
        v149 = 1;
LABEL_121:
        if (v135 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = v131;
          *&buf[12] = 2048;
          *&buf[14] = v56;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "MSL Enabled in Process: daily MSL memgraph limit = %ld, in the last 24 hours %li MSL memgraphs have been saved.", buf, 0x16u);
        }

        if (v139 == 7)
        {
          if (v130 >= v128)
          {
            v44 = [NSString stringWithFormat:@"memgraph %@ limit of %ld has already been exceeded in the last 24 hours", @"global", v126];
            v83 = v44;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              *&buf[4] = v128;
              *&buf[12] = 2114;
              *&buf[14] = v143;
              *&buf[22] = 1024;
              *&buf[24] = v119;
              v84 = "The total diagnostic threshold memgraph limit of %ld has been exceeded in the last 24 hours. Skipping %{public}@ [%d]";
LABEL_147:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v84, buf, 0x1Cu);
              goto LABEL_148;
            }

            goto LABEL_148;
          }
        }

        else
        {
          v85 = v135;
          if (v56 >= v131)
          {
            v85 = 0;
          }

          if (v85 == 1)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "The MSL memgraph limit has NOT exceeded in the last 24 hours", buf, 2u);
            }
          }

          else
          {
            if ((location & 1) == 0 && v81 >= v126)
            {
              v44 = [NSString stringWithFormat:@"memgraph %@ limit of %ld has already been exceeded in the last 24 hours", @"global", v126];
              v86 = v44;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218498;
                *&buf[4] = v126;
                *&buf[12] = 2114;
                *&buf[14] = v143;
                *&buf[22] = 1024;
                *&buf[24] = v119;
                v84 = "The total full diagnostic log limit of %ld has been exceeded in the last 24 hours. Skipping %{public}@ [%d]";
                goto LABEL_147;
              }

LABEL_148:
              v151 = 0;
              goto LABEL_149;
            }

            if (v55 >= v152)
            {
              if (location)
              {
                v87 = @"critical per process";
              }

              else
              {
                v87 = @"per process";
              }

              v44 = [NSString stringWithFormat:@"memgraph %@ limit of %ld has already been exceeded in the last 24 hours", v87, v152];
              v88 = v44;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_148;
              }

              *buf = 134218498;
              *&buf[4] = v152;
              *&buf[12] = 2114;
              *&buf[14] = v143;
              *&buf[22] = 1024;
              *&buf[24] = v119;
              v84 = "The per process full diagnostic log limit of %ld has already been exceeded in the last 24 hours. Skipping %{public}@ [%d]";
              goto LABEL_147;
            }
          }
        }

        v44 = 0;
        v151 = 1;
LABEL_149:
        v45 = v141 < v133;
        goto LABEL_150;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        *&buf[4] = v118;
        *&buf[12] = 2114;
        *&buf[14] = v143;
        *&buf[22] = 1024;
        *&buf[24] = v119;
        v82 = "The per process lite diagnostic log limit of %ld has been exceeded in the last 24 hours. Skipping %{public}@ [%d]";
        goto LABEL_119;
      }
    }

    v149 = 0;
    goto LABEL_121;
  }

  v55 = 0;
  v117 = 0;
  v125 = 0;
  v127 = 0;
  v141 = 0;
  v56 = 0;
  v130 = 0;
  v116 = v53 + 25;
  while (1)
  {
    if (location != 1 || v55 >= v152)
    {
      v58 = v56 < v131 ? v135 : 0;
      v59 = v139 == 7 && v130 < v128;
      v60 = v59;
      if ((v58 & 1) == 0 && v127 >= v126 && v141 >= v133 && v125 >= v129 && !v60)
      {
LABEL_110:
        v80 = v125;
        goto LABEL_112;
      }
    }

    v61 = objc_autoreleasePoolPush();
    block[0] = 0;
    [v54 getResourceValue:block forKey:NSURLCreationDateKey error:0];
    v62 = block[0];
    v63 = v62;
    if (!v62)
    {
      goto LABEL_109;
    }

    if ([v62 compare:log] == 1)
    {
      break;
    }

    [log timeIntervalSinceDate:v63];
    if (v64 <= 86400.0)
    {
      v171[0] = 0;
      [v54 getResourceValue:v171 forKey:NSURLNameKey error:0];
      v65 = v171[0];
      if (v65)
      {
        v66 = v65;
        v67 = [v65 containsString:off_1000144B8];
        if (v141 < v133)
        {
          v68 = v67;
        }

        else
        {
          v68 = 0;
        }

        v141 += v68;
        if ([v66 hasSuffix:@".memgraph"])
        {
          v69 = MREExceptionTypeToString();
          v70 = [v66 hasPrefix:v69];

          if (v70)
          {
            ++v130;
LABEL_108:

            goto LABEL_109;
          }

          v75 = [v66 containsString:off_1000144B0[0]];
          v76 = v75;
          if (v56 < v131)
          {
            v77 = v75;
          }

          else
          {
            v77 = 0;
          }

          if (v77 == 1)
          {
            ++v56;
            goto LABEL_108;
          }

          if ((location & 1) == 0)
          {
            if (v127 >= v126)
            {
              goto LABEL_108;
            }

            ++v127;
          }

          if (v152 == 0x7FFFFFFFFFFFFFFFLL || v55 >= v152)
          {
            goto LABEL_108;
          }

          v71 = MREExceptionTypeToString();
          if ([v66 hasPrefix:v71])
          {
            v115 = [[NSString alloc] initWithFormat:@"%@_%@", v71, v143];
            v113 = [v115 length];
            if (v76)
            {
              v78 = [(__CFString *)off_1000144B0[0] length];
            }

            else
            {
              v78 = 0;
            }

            if ([v66 hasPrefix:v115] && objc_msgSend(v66, "length") == &v113[v116 + v78])
            {
              ++v55;
            }
          }
        }

        else
        {
          if (v125 >= v129)
          {
            goto LABEL_108;
          }

          ++v125;
          if (v118 == 0x7FFFFFFFFFFFFFFFLL || v117 >= v118)
          {
            goto LABEL_108;
          }

          v114 = [@".lite_diag" length];
          v71 = MREExceptionTypeToString();
          if ([v66 hasPrefix:v71])
          {
            v72 = [[NSString alloc] initWithFormat:@"%@_%@", v71, v143];
            v112 = [v72 length];
            if ([v66 hasPrefix:v72])
            {
              v73 = [v66 length];
              v74 = v117;
              if (v73 == &v112[v114 + 25])
              {
                v74 = v117 + 1;
              }

              v117 = v74;
            }
          }
        }

        goto LABEL_108;
      }

      v66 = 0;
      goto LABEL_108;
    }

LABEL_109:

    objc_autoreleasePoolPop(v61);
    v79 = [v145 nextValidURL];

    v54 = v79;
    if (!v79)
    {
      goto LABEL_110;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v143;
    *&buf[12] = 1024;
    *&buf[14] = v119;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "The system clock may be out of sync, and prevents us from determining available quota for a memgraph for %{public}@ [%d]", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v61);
  v44 = 0;
  v149 = 0;
  v151 = 0;
  v45 = 0;
LABEL_150:

LABEL_151:
LABEL_152:

  v89 = v44;
  if (v89)
  {
    [v156 setMemgraphError:v89];
  }

  if (!v151)
  {
    v93 = 0;
    v17 = 0;
    v18 = 2;
    goto LABEL_169;
  }

  if (qword_100014660 != -1)
  {
    dispatch_once(&qword_100014660, &stru_1000105D8);
  }

  v90 = dword_100014624;
  if (!dword_100014624)
  {
    goto LABEL_168;
  }

  v91 = [v156 limitValue];
  v92 = v90 * 0.75;
  if (v92 >= v91)
  {
    goto LABEL_168;
  }

  if ((from & 1) != 0 || v45)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v158;
      *&buf[12] = 1024;
      *&buf[14] = v137;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Attempting memgraph generation for large process %{public}@ [%d].", buf, 0x12u);
    }

    if (v45)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v158;
        *&buf[12] = 1024;
        *&buf[14] = v137;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Will use gcore for large process collection %{public}@ [%d].", buf, 0x12u);
      }

      v93 = 0;
      v18 = 0;
      v17 = 1;
      goto LABEL_169;
    }

LABEL_168:
    v93 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_169;
  }

  v108 = [NSString stringWithFormat:@"memgraph is larger than its limit of %dMB to generate", v92];
  [v156 setMemgraphError:v108];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v158;
    *&buf[12] = 1024;
    *&buf[14] = v137;
    *&buf[18] = 1024;
    *&buf[20] = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Skipping memgraph generation for %{public}@ [%d] because it is too large. (gcoreDiagAllowed=%{BOOL}i)", buf, 0x18u);
  }

  LOBYTE(v151) = 0;
  v17 = 0;
  v93 = 1;
  v18 = 3;
LABEL_169:
  if (v149 & 1) != 0 || (v151)
  {
LABEL_171:
    v171[0] = 0;
    v171[1] = v171;
    v171[2] = 0x2810000000;
    v171[3] = &unk_10000B3AD;
    v172 = 0;
    v94 = ++qword_100014650;
    if (v6)
    {
      v95 = QOS_CLASS_UTILITY;
    }

    else
    {
      v95 = QOS_CLASS_BACKGROUND;
    }

    if (v17)
    {
      qword_100014608 += 300;
      goto LABEL_176;
    }

    if (v158 && sub_1000071E8(v158))
    {
      qword_100014608 += 300;
      if (sub_10000815C(qword_100014630))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Override ShouldBoostCriticalProcesses=YES -> running memgraph generation at QOS_CLASS_USER_INITIATED (not the normal utility/background qos)", buf, 2u);
        }

        v95 = QOS_CLASS_USER_INITIATED;
      }

LABEL_176:
      v96 = 300;
    }

    else
    {
      v96 = 60;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *&buf[4] = v96;
      *&buf[12] = 2112;
      *&buf[14] = v158;
      *&buf[22] = 1024;
      *&buf[24] = v137;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Using timeout of %llu seconds for process %@ [%d]", buf, 0x1Cu);
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100001098;
    *&buf[24] = &unk_100010590;
    v97 = v7;
    *v175 = v97;
    *&v175[24] = v171;
    LOBYTE(v176) = v149;
    BYTE1(v176) = v151;
    BYTE2(v176) = v17;
    *&v175[32] = v96;
    *&v175[40] = v18;
    v98 = v6;
    *&v175[16] = v98;
    *&v175[8] = v159;
    v99 = objc_retainBlock(buf);
    v100 = dispatch_block_create_with_qos_class(0, v95, 0, v99);

    dispatch_async(queue, v100);
    objc_initWeak(&location, v97);
    objc_initWeak(&from, v98);
    v101 = dispatch_time(0, 1000000000 * v96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056B4;
    block[3] = &unk_1000105B8;
    v166[1] = v94;
    objc_copyWeak(&v165, &location);
    objc_copyWeak(v166, &from);
    v167 = v149;
    v168 = v151;
    block[4] = v171;
    v166[2] = v96;
    v166[3] = v18;
    dispatch_after(v101, v160, block);
    objc_destroyWeak(v166);
    objc_destroyWeak(&v165);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    _Block_object_dispose(v171, 8);
  }

  else
  {
    v102 = [v156 execName];
    v103 = [v156 bundleID];
    v104 = [v156 exceptionType];
    v105 = [v156 ledgerPhysFootprint];
    v106 = [v156 ledgerPhysFootprintPeak];
    v107 = [v156 limitValue];
    BYTE1(v111) = v93;
    LOBYTE(v111) = [v156 isMSLEnabled];
    LOBYTE(v110) = 0;
    LOBYTE(v109) = 0;
    [RMETelemetry emitTelemetryForExecName:v102 bundleID:v103 exceptionType:v104 footprint:v105 footprintPeak:v106 jetsamLimit:v107 memgraphAttempted:v109 memgraphSkippedReason:v18 memgraphSucceeded:v110 memgraphFailedReason:0 diagFilePath:0 isMSLEnabled:v111 isGcoreCapture:?];

    [v156 releaseAnalyzedTask];
    if (v6)
    {
      v6[2](v6, 0);
    }
  }

LABEL_187:

LABEL_188:
  atomic_fetch_add(&dword_100014620, 0xFFFFFFFF);
}

void sub_100004E9C(mach_port_name_t a1, void *a2, int a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (qword_100014638 != -1)
  {
    dispatch_once(&qword_100014638, &stru_100010520);
  }

  if (atomic_fetch_add(&dword_100014620, 1u) < 2)
  {
    if (!mach_port_mod_refs(mach_task_self_, a1, 0, 1))
    {
      v20 = os_transaction_create();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000050F4;
      block[3] = &unk_100010548;
      v29 = a1;
      v30 = a3;
      v28 = a4;
      v23 = v13;
      v24 = v20;
      v25 = v14;
      v26 = v15;
      v27 = v16;
      v21 = v20;
      dispatch_async(v25, block);

      goto LABEL_10;
    }

    v17 = MREErrorDomain[0];
    v18 = 3;
    goto LABEL_8;
  }

  if (v16)
  {
    v17 = MREErrorDomain[0];
    v18 = 13;
LABEL_8:
    v19 = [NSError errorWithDomain:v17 code:v18 userInfo:0];
    (*(v16 + 2))(v16, v19);
  }

  atomic_fetch_add(&dword_100014620, 0xFFFFFFFF);
LABEL_10:
}

void sub_1000050B0(id a1)
{
  CSSetForceSafeMachVMReads();
  qword_100014630 = sub_100006A08(0);

  _objc_release_x1();
}

void sub_1000050F4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 84);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  if (qword_100014688 != -1)
  {
    dispatch_once(&qword_100014688, &stru_1000106B8);
  }

  v43 = 0;
  v13 = [MemoryResourceException resourceExceptionFromTask:v1 error:&v43];
  v14 = v43;
  mach_port_deallocate(mach_task_self_, v1);
  if (!v13 || v14 || [v13 exceptionType] == 8)
  {
    if (v12)
    {
      v12[2](v12, v14);
    }
  }

  else
  {
    v15 = [v13 execName];
    if (qword_100014650 - qword_100014658 >= sub_1000055D0(v15))
    {
      [v13 releaseAnalyzedTask];
      if (v12)
      {
        v25 = [NSError errorWithDomain:MREErrorDomain[0] code:14 userInfo:0];
        v12[2](v12, v25);
      }
    }

    else
    {
      v31 = v7;
      v16 = [v13 pid];
      v29 = ++qword_100014650;
      if (v12)
      {
        v17 = 17;
      }

      else
      {
        v17 = 9;
      }

      qos_class = v17;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "liteAnalysisMemgraphOnly";
        *&buf[12] = 2048;
        *&buf[14] = v31;
        *&buf[22] = 2112;
        v45 = v15;
        LOWORD(v46) = 1024;
        *(&v46 + 2) = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Using timeout of %llu seconds for process %@ [%d]", buf, 0x26u);
      }

      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v42 = 0;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100006284;
      v34[3] = &unk_100010708;
      v30 = v15;
      v18 = v13;
      v40 = v2;
      v35 = v18;
      v39 = v41;
      v26 = v8;
      v36 = v26;
      v19 = v12;
      v38 = v19;
      v37 = v9;
      v20 = objc_retainBlock(v34);
      v21 = dispatch_block_create_with_qos_class(0, qos_class, 0, v20);
      *qos_classa = v8;
      v22 = v21;

      dispatch_async(v11, v22);
      objc_initWeak(&location, v18);
      objc_initWeak(&from, v19);
      v23 = dispatch_time(0, 1000000000 * v31);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10000663C;
      v45 = &unk_100010730;
      v49[1] = v29;
      v47 = v41;
      objc_copyWeak(&v48, &location);
      objc_copyWeak(v49, &from);
      v46 = v26;
      v49[2] = v31;
      v24 = v23;
      v15 = v30;
      dispatch_after(v24, v10, buf);

      objc_destroyWeak(v49);
      objc_destroyWeak(&v48);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

      v8 = *qos_classa;
      _Block_object_dispose(v41, 8);
    }
  }

  atomic_fetch_add(&dword_100014620, 0xFFFFFFFF);
}

void sub_10000558C(id a1)
{
  qword_100014640 = os_log_create("com.apple.ReportMemoryException", "MemoryResourceException");

  _objc_release_x1();
}

uint64_t sub_1000055D0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && sub_1000071E8(v1))
  {
    v3 = 2;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109634;
      v5[1] = 1;
      v6 = 1024;
      v7 = 2;
      v8 = 2114;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Bumping max bulk requests in flight from %d to %d for critical process %{public}@.", v5, 0x18u);
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void sub_1000056B4(uint64_t a1)
{
  if (qword_100014658 < *(a1 + 56))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = *(*(a1 + 32) + 8);
    v5 = *(a1 + 80);
    v6 = *(a1 + 81);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v36 = WeakRetained;
    v9 = v3;
    if (v36)
    {
      os_unfair_lock_lock(v4 + 8);
      v10 = [v36 copy];
      v11 = [v10 memoryGraph];

      if (!v11)
      {
        v34 = v8;
        v12 = v9;
        v13 = [NSString stringWithFormat:@"memgraph analysis has timed out (timeout: %llu secs)", v7];
        [v10 setMemgraphError:v13];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v10 execName];
          *buf = 138543874;
          v39 = v14;
          v40 = 1024;
          v41 = [v10 pid];
          v42 = 2048;
          v43 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Begin timeout operations for %{public}@ [%d] (timeout: %llu secs)", buf, 0x1Cu);
        }

        if ((v5 & 1) != 0 || v6)
        {
          v37 = 0;
          v35 = sub_100001F94(v10, v5, v6, &v37);
          v15 = v37;
        }

        else
        {
          v15 = 0;
          v35 = 0;
        }

        if (v12)
        {
          v16 = [NSError errorWithDomain:MREErrorDomain[0] code:8 userInfo:0];
          v12[2](v12, v16);
        }

        v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v35)
        {
          if (v17)
          {
            v20 = [v10 execName];
            v21 = [v10 pid];
            *buf = 138543874;
            v39 = v20;
            v40 = 1024;
            v41 = v21;
            v42 = 2114;
            v43 = v35;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Analysis of %{public}@ [%d] timed out. Saved out lite_diag: %{public}@. Self-destructing.", buf, 0x1Cu);
          }
        }

        else if (v17)
        {
          v18 = [v10 execName];
          v19 = [v10 pid];
          *buf = 138543874;
          v39 = v18;
          v40 = 1024;
          v41 = v19;
          v42 = 2112;
          v43 = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Analysis of %{public}@ [%d] timed out. Failed to save out lite_diag due to error: %@", buf, 0x1Cu);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v22 = [v10 execName];
          v23 = [v10 pid];
          *buf = 138543874;
          v39 = v22;
          v40 = 1024;
          v41 = v23;
          v42 = 2048;
          v43 = 2;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Analysis of %{public}@ [%d] timed out. (%lu: RMEMemgraphFailedReasonHitLogGenerationTimeout)", buf, 0x1Cu);
        }

        v24 = [v10 execName];
        v25 = [v10 bundleID];
        v26 = [v10 exceptionType];
        v27 = [v10 ledgerPhysFootprint];
        v28 = [v10 ledgerPhysFootprintPeak];
        v29 = [v10 limitValue];
        v30 = [v10 isMSLEnabled];
        BYTE1(v33) = [v36 gcoreCapture];
        LOBYTE(v33) = v30;
        LOBYTE(v32) = 0;
        LOBYTE(v31) = v34 == 0;
        [RMETelemetry emitTelemetryForExecName:v24 bundleID:v25 exceptionType:v26 footprint:v27 footprintPeak:v28 jetsamLimit:v29 memgraphAttempted:v31 memgraphSkippedReason:v34 memgraphSucceeded:v32 memgraphFailedReason:2 diagFilePath:v35 isMSLEnabled:v33 isGcoreCapture:?];

        _exit(-1);
      }

      os_unfair_lock_unlock(v4 + 8);
    }
  }
}

void sub_100005B8C(id a1)
{
  v1 = 4;
  if (sysctlbyname("kern.max_task_pmem", &dword_100014624, &v1, 0, 0))
  {
    dword_100014624 = 0;
  }
}

void sub_100005BDC(void *a1)
{
  v1 = a1;
  v20 = [NSString alloc];
  v19 = [v1 execName];
  v2 = [v1 bundleID];
  v18 = [v1 exceptionType];
  v17 = [v1 ledgerPhysFootprint];
  v16 = [v1 ledgerInternal];
  v3 = [v1 ledgerInternalCompressed];
  v4 = [v1 ledgerAlternateAccounting];
  v5 = [v1 ledgerAlternateAccountingCompressed];
  v6 = [v1 ledgerIOKitMapped];
  v7 = [v1 ledgerPageTable];
  v8 = [v1 ledgerWiredMem];
  v9 = [v1 ledgerPurgeableNonvolatile];
  v10 = [v1 ledgerPurgeableNonvolatileCompressed];

  v11 = [v20 initWithFormat:@"execName=%@, bundleId=%@, excType=%ld, physFootprint=%llu, internal=%llu, internalComp=%llu, alt=%llu, altComp=%llu, iokit=%llu, pageTable=%llu, wired=%llu, purgNonvol=%llu, purgNonvolComp=%llu", v19, v2, v18, v17, v16, v3, v4, v5, v6, v7, v8, v9, v10];
  v12 = [v11 UTF8String];
  if (v12)
  {
    v13 = v12;
    free(qword_100014668);
    v14 = strdup(v13);
    qword_100014668 = v14;
    if (v14)
    {
      qword_1000144C8 = v14;
    }

    else
    {
      v15 = *__error();
      qword_1000144C8 = "Bulk analysis in flight. Unable to format corpse info.";
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v22 = v15;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy string for CrashReporterInfo: %{darwin.errno}d", buf, 8u);
      }
    }
  }

  else
  {
    qword_1000144C8 = "Bulk analysis in flight. Unable to format corpse info.";
  }
}

void sub_100005E0C(id a1)
{
  qword_100014670 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];

  _objc_release_x1();
}

uint64_t sub_100005E58()
{
  if (!qword_100014610)
  {
    qword_100014610 = _sl_dlopen();
  }

  return qword_100014610;
}

uint64_t sub_100005F28()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_100014618;
  v6 = qword_100014618;
  if (!qword_100014618)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100006064;
    v2[3] = &unk_100010658;
    v2[4] = &v3;
    sub_100006064(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100005FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005FF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100014610 = result;
  return result;
}

void *sub_100006064(uint64_t a1)
{
  v2 = sub_100005E58();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "create_gcore_with_options");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100014618 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000060F0(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplySessionID];
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    v7 = 138412290;
    v8 = v5;
    v6 = "Symptoms Diagnostic Reporter accepted the memory resource exception. SessionID: %@";
LABEL_6:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, &v7, 0xCu);
    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplyReason];
    v7 = 138412290;
    v8 = v5;
    v6 = "Symptoms Diagnostic Reporter rejected the memory resource exception with reason %@.";
    goto LABEL_6;
  }

LABEL_8:
}

void sub_100006244(id a1)
{
  qword_100014680 = dispatch_queue_create("com.apple.ReportMemoryException.saveMemgraph", 0);

  _objc_release_x1();
}

void sub_100006284(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v3 execName];
    *buf = 136315650;
    v17 = "bulkAnalysisMemgraphOnly";
    v18 = 2114;
    v19 = v4;
    v20 = 1024;
    v21 = [v3 pid];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Begin analysis for %{public}@ [%d]", buf, 0x1Cu);
  }

  sub_100005BDC(v3);
  v5 = [v3 generateMemoryGraphWithContentLevel:v2 memgraphFailedReasonOut:0];
  [v3 releaseAnalyzedTask];
  free(qword_100014668);
  qword_100014668 = 0;
  qword_1000144C8 = "Bulk analysis completed.";

  ++qword_100014658;
  v6 = qword_100014680;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006484;
  block[3] = &unk_1000106E0;
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v15 = v5;
  v9 = *(a1 + 40);
  *&v10 = *(a1 + 56);
  *(&v10 + 1) = v7;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v13 = v11;
  v14 = v10;
  dispatch_sync(v6, block);
}

void sub_100006484(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v1 = *(a1 + 64);
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 execName];
      *v10 = 136315650;
      *&v10[4] = "saveMemgraphOnly";
      v11 = 2114;
      v12 = v7;
      v13 = 1024;
      v14 = [v4 pid];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Saving log file for %{public}@ [%d]", v10, 0x1Cu);
    }

    sub_100005BDC(v4);
    if (v1)
    {
      *v10 = 0;
      [v4 _saveLogFileWithHandle:v5 error:v10];
      v8 = *v10;
    }

    else
    {
      v8 = [NSError errorWithDomain:MREErrorDomain[0] code:4 userInfo:0];
    }

    v9 = v8;
    free(qword_100014668);
    qword_100014668 = 0;
    qword_1000144C8 = "Bulk analysis completed.";
    if (v6)
    {
      v6[2](v6, v9);
    }
  }
}

void sub_10000663C(uint64_t a1)
{
  v2 = qword_100014680;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006718;
  v6[3] = &unk_100010730;
  v3 = *(a1 + 40);
  v10[1] = *(a1 + 64);
  v8 = v3;
  objc_copyWeak(&v9, (a1 + 48));
  objc_copyWeak(v10, (a1 + 56));
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7 = v4;
  v10[2] = v5;
  dispatch_sync(v2, v6);

  objc_destroyWeak(v10);
  objc_destroyWeak(&v9);
}

void sub_100006718(uint64_t a1)
{
  if (qword_100014658 < *(a1 + 64))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = objc_loadWeakRetained((a1 + 56));
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v6 = WeakRetained;
    v7 = v4;
    v8 = v3;
    if (v6)
    {
      v9 = [v6 copy];
      v10 = [v9 memoryGraph];

      if (!v10)
      {
        v11 = [NSString stringWithFormat:@"memgraph-only analysis has timed out (timeout: %llu secs)", v5];
        [v6 setMemgraphError:v11];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v6 execName];
          *buf = 136315906;
          v17 = "bulkAnalysisMemgraphOnlyTimeout";
          v18 = 2114;
          v19 = v12;
          v20 = 1024;
          v21 = [v6 pid];
          v22 = 2048;
          v23 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Begin timeout memgraph-only operations for %{public}@ [%d] (timeout: %llu secs)", buf, 0x26u);
        }

        [v7 closeFile];
        if (v8)
        {
          v13 = [NSError errorWithDomain:MREErrorDomain[0] code:8 userInfo:0];
          v8[2](v8, v13);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v14 = [v9 execName];
          v15 = [v9 pid];
          *buf = 136315650;
          v17 = "bulkAnalysisMemgraphOnlyTimeout";
          v18 = 2114;
          v19 = v14;
          v20 = 1024;
          v21 = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Memgraph-only analysis of %{public}@ [%d] timed out.", buf, 0x1Cu);
        }
      }
    }
  }
}

id sub_1000069B0()
{
  v0 = sub_100006A08(0);
  v1 = [v0 objectForKeyedSubscript:off_100014498[0]];

  return v1;
}

id sub_100006A08(__CFString *a1)
{
  v1 = @"/Library/Managed Preferences/mobile/com.apple.ReportMemoryException.plist";
  if (a1)
  {
    v1 = a1;
  }

  v2 = v1;
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2];
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v74 = v5;

  v6 = 0;
  if (v4)
  {
    v6 = [NSDictionary dictionaryWithContentsOfFile:v2];
  }

  v7 = +[RMECacheEnumerator getEPLProfilePath];
  if (v7)
  {
    v8 = v7;
    v9 = +[NSFileManager defaultManager];
    if ([v9 fileExistsAtPath:v8])
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v73 = v8;
      v11 = [NSDictionary dictionaryWithContentsOfFile:v11];
    }

    else
    {
      v73 = 0;
    }
  }

  else
  {
    v73 = 0;
    v11 = 0;
  }

  v72 = v6;
  v71 = v11;
  v12 = objc_alloc_init(NSMutableDictionary);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v14 = has_internal_diagnostics;
  if (has_internal_diagnostics)
  {
    v15 = 50;
  }

  else
  {
    v15 = 0;
  }

  v16 = (has_internal_diagnostics & 1) != 0;
  if (has_internal_diagnostics)
  {
    v17 = 120;
  }

  else
  {
    v17 = 0;
  }

  if (has_internal_diagnostics)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  if (has_internal_diagnostics)
  {
    v19 = 10;
  }

  else
  {
    v19 = 0;
  }

  if (has_internal_diagnostics)
  {
    v20 = 12;
  }

  else
  {
    v20 = 0;
  }

  v21 = [NSNumber numberWithInteger:v15];
  [v12 setObject:v21 forKeyedSubscript:off_100014478[0]];

  v22 = [NSNumber numberWithInteger:v16];
  [v12 setObject:v22 forKeyedSubscript:off_100014480[0]];

  v23 = [NSNumber numberWithInteger:v17];
  [v12 setObject:v23 forKeyedSubscript:off_100014490[0]];

  v24 = [NSNumber numberWithInteger:v16];
  [v12 setObject:v24 forKeyedSubscript:@"PerProcessLimit"];

  v25 = [NSNumber numberWithInteger:v20];
  [v12 setObject:v25 forKeyedSubscript:@"LitePerProcessLimit"];

  v26 = [NSNumber numberWithInteger:v18];
  [v12 setObject:v26 forKeyedSubscript:@"PerCriticalProcessLimit"];

  v27 = [NSNumber numberWithInteger:v19];
  [v12 setObject:v27 forKeyedSubscript:off_100014470[0]];

  v28 = [NSNumber numberWithInteger:v19];
  [v12 setObject:v28 forKeyedSubscript:off_100014488[0]];

  v29 = +[NSMutableDictionary dictionary];
  [v12 setObject:v29 forKeyedSubscript:@"ProcessSpecificFullDiagQuotas"];

  v30 = [NSNumber numberWithBool:v14 ^ 1u];
  [v12 setObject:v30 forKeyedSubscript:@"AllowAllProcessesInSysdiagnose"];

  v31 = [[NSMutableSet alloc] initWithArray:&off_100011270];
  if ([v31 count])
  {
    v32 = [v31 mutableCopy];
  }

  else
  {
    v32 = objc_alloc_init(NSMutableSet);
  }

  v33 = v32;
  [v12 setObject:v32 forKeyedSubscript:@"ProcessesAllowedInSysdiagnose"];

  v34 = +[NSMutableSet set];
  if (os_variant_has_internal_diagnostics())
  {
    [v34 addObject:@"mediaserverd"];
    [v34 addObject:@"cameracaptured"];
  }

  if (os_variant_has_internal_diagnostics())
  {
    [v34 addObject:@"backboardd"];
  }

  [v12 setObject:v34 forKeyedSubscript:@"LargeExemptedProcesses"];

  [v12 setObject:v31 forKeyedSubscript:off_100014498[0]];
  v35 = [NSNumber numberWithBool:0];
  [v12 setObject:v35 forKeyedSubscript:off_1000144A0[0]];

  v36 = [NSNumber numberWithBool:0];
  [v12 setObject:v36 forKeyedSubscript:@"BoostCriticalProcessCollection"];

  v37 = +[NSMutableArray array];
  [v12 setObject:v37 forKeyedSubscript:off_1000144A8[0]];

  v38 = [NSMutableDictionary alloc];
  v39 = objc_alloc_init(NSMutableDictionary);
  v40 = [v38 initWithObjectsAndKeys:{v39, @"ExecNameList", 0}];
  v41 = MREExceptionTypeToString();
  [v12 setObject:v40 forKeyedSubscript:v41];

  v42 = [NSMutableDictionary alloc];
  v43 = objc_alloc_init(NSMutableDictionary);
  v44 = [v42 initWithObjectsAndKeys:{v43, @"ExecNameList", 0}];
  v45 = MREExceptionTypeToString();
  [v12 setObject:v44 forKeyedSubscript:v45];

  v46 = [NSMutableDictionary alloc];
  v47 = objc_alloc_init(NSMutableDictionary);
  v48 = [v46 initWithObjectsAndKeys:{v47, @"ExecNameList", 0}];
  v49 = MREExceptionTypeToString();
  [v12 setObject:v48 forKeyedSubscript:v49];

  v50 = [NSMutableDictionary alloc];
  v51 = objc_alloc_init(NSMutableDictionary);
  v52 = [v50 initWithObjectsAndKeys:{v51, @"ExecNameList", 0}];
  v53 = MREExceptionTypeToString();
  [v12 setObject:v52 forKeyedSubscript:v53];

  v54 = [NSMutableDictionary alloc];
  v55 = objc_alloc_init(NSMutableDictionary);
  v56 = [v54 initWithObjectsAndKeys:{v55, @"ExecNameList", 0}];
  v57 = MREExceptionTypeToString();
  [v12 setObject:v56 forKeyedSubscript:v57];

  v58 = [NSMutableDictionary alloc];
  v59 = objc_alloc_init(NSMutableDictionary);
  v60 = [v58 initWithObjectsAndKeys:{v59, @"ExecNameList", 0}];
  v61 = MREExceptionTypeToString();
  [v12 setObject:v60 forKeyedSubscript:v61];

  v62 = [NSMutableDictionary alloc];
  v63 = objc_alloc_init(NSMutableDictionary);
  v64 = [v62 initWithObjectsAndKeys:{v63, @"ExecNameList", 0}];
  v65 = MREExceptionTypeToString();
  [v12 setObject:v64 forKeyedSubscript:v65];

  v66 = [NSMutableDictionary alloc];
  v67 = objc_alloc_init(NSMutableDictionary);
  v68 = [v66 initWithObjectsAndKeys:{v67, @"ExecNameList", 0}];
  v69 = MREExceptionTypeToString();
  [v12 setObject:v68 forKeyedSubscript:v69];

  if (v71)
  {
    sub_100007238(v12, v71);
  }

  if (v72)
  {
    sub_100007238(v12, v72);
  }

  return v12;
}

id sub_1000071E8(void *a1)
{
  v1 = a1;
  v2 = sub_1000069B0();
  v3 = [v2 containsObject:v1];

  return v3;
}

void sub_100007238(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = &AnalyticsSendEventLazy_ptr;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKeyedSubscript:@"ExpirationDate"];
    if (!v6)
    {
LABEL_5:
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v9 = [v3 allKeys];
      v10 = [v9 countByEnumeratingWithState:&v56 objects:v66 count:16];
      if (!v10)
      {
        goto LABEL_81;
      }

      v11 = v10;
      v12 = *v57;
      v46 = v3;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v57 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v56 + 1) + 8 * v13);
          if (([(__CFString *)v14 isEqualToString:off_100014478[0], v44]& 1) != 0 || ([(__CFString *)v14 isEqualToString:off_100014480[0]]& 1) != 0 || ([(__CFString *)v14 isEqualToString:off_100014470[0]]& 1) != 0 || ([(__CFString *)v14 isEqualToString:off_100014488[0]]& 1) != 0 || ([(__CFString *)v14 isEqualToString:off_100014490[0]]& 1) != 0 || ([(__CFString *)v14 isEqualToString:@"PerProcessLimit"]& 1) != 0 || ([(__CFString *)v14 isEqualToString:@"LitePerProcessLimit"]& 1) != 0 || ([(__CFString *)v14 isEqualToString:@"PerCriticalProcessLimit"]& 1) != 0 || [(__CFString *)v14 isEqualToString:@"AllowAllProcessesInSysdiagnose"])
          {
            v15 = [v4 objectForKeyedSubscript:v14];
            if (v15)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 integerValue] + 1 <= 0x2711)
              {
                v16 = v3;
                v17 = v15;
                v18 = v14;
LABEL_23:
                [v16 setObject:v17 forKeyedSubscript:v18];
              }
            }
          }

          else if ([(__CFString *)v14 isEqualToString:@"ProcessSpecificFullDiagQuotas"])
          {
            v15 = [v4 objectForKeyedSubscript:v14];
            if (v15)
            {
              v19 = v5[143];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v3 objectForKeyedSubscript:v14];
                v20 = v9;
                v22 = v21 = v5;
                sub_1000081D4(v22, v15);

                v5 = v21;
                v9 = v20;
              }
            }
          }

          else if (([(__CFString *)v14 isEqualToString:@"LargeExemptedProcesses"]& 1) != 0 || ([(__CFString *)v14 isEqualToString:off_1000144A8[0]]& 1) != 0 || [(__CFString *)v14 isEqualToString:off_100014498[0]])
          {
            v15 = [v4 objectForKeyedSubscript:v14];
            if (v15)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v44 = v6;
                v45 = v9;
                v54 = 0u;
                v55 = 0u;
                v52 = 0u;
                v53 = 0u;
                v15 = v15;
                v23 = [v15 countByEnumeratingWithState:&v52 objects:v65 count:16];
                if (v23)
                {
                  v24 = v23;
                  v47 = *v53;
                  do
                  {
                    for (i = 0; i != v24; i = i + 1)
                    {
                      if (*v53 != v47)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v26 = *(*(&v52 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        if (!-[__CFString isEqualToString:](v14, "isEqualToString:", off_1000144A8[0]) || os_variant_has_internal_diagnostics() && ([v26 isEqualToString:@"mediaserverd"] & 1) != 0)
                        {
                          v27 = [v3 objectForKeyedSubscript:{v14, v44}];
                          [v27 addObject:v26];

                          v3 = v46;
                          if ([(__CFString *)v14 isEqualToString:off_100014498[0]])
                          {
                            v28 = [v46 objectForKeyedSubscript:@"ProcessesAllowedInSysdiagnose"];
                            [v28 addObject:v26];

                            v3 = v46;
                          }
                        }

                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          v62 = v26;
                          v63 = 2112;
                          v64 = off_1000144A8[0];
                          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Ignoring process %@ for %@ key, since it isn't know to have received privacy approval for collecting fullContent memgraphs for this OS configuration.", buf, 0x16u);
                        }
                      }
                    }

                    v24 = [v15 countByEnumeratingWithState:&v52 objects:v65 count:16];
                  }

                  while (v24);
                }

                goto LABEL_51;
              }
            }
          }

          else if ([(__CFString *)v14 isEqualToString:@"ProcessesAllowedInSysdiagnose"])
          {
            v15 = [v4 objectForKeyedSubscript:v14];
            if (v15)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v44 = v6;
                v45 = v9;
                v50 = 0u;
                v51 = 0u;
                v48 = 0u;
                v49 = 0u;
                v15 = v15;
                v29 = [v15 countByEnumeratingWithState:&v48 objects:v60 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v49;
                  do
                  {
                    for (j = 0; j != v30; j = j + 1)
                    {
                      if (*v49 != v31)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v33 = *(*(&v48 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v34 = [v46 objectForKeyedSubscript:@"ProcessesAllowedInSysdiagnose"];
                        [v34 addObject:v33];
                      }
                    }

                    v30 = [v15 countByEnumeratingWithState:&v48 objects:v60 count:16];
                  }

                  while (v30);
                }

                v3 = v46;
LABEL_51:
                v6 = v44;
                v5 = &AnalyticsSendEventLazy_ptr;
LABEL_52:
                v9 = v45;
              }
            }
          }

          else
          {
            if (![(__CFString *)v14 isEqualToString:off_1000144A0[0]])
            {
              v45 = v9;
              v35 = v5;
              v36 = [(__CFString *)v14 isEqualToString:@"BoostCriticalProcessCollection"];
              v37 = [v4 objectForKeyedSubscript:v14];
              v15 = v37;
              if (v36)
              {
                objc_opt_class();
                v5 = v35;
                if (objc_opt_isKindOfClass())
                {
                  [v3 setObject:v15 forKeyedSubscript:@"BoostCriticalProcessCollection"];
                }

                goto LABEL_52;
              }

              if (v37)
              {
                v44 = v6;
                v38 = [v3 objectForKeyedSubscript:v14];
                v39 = [v15 objectForKeyedSubscript:@"PerProcessLimit"];
                if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if ([v39 integerValue] + 1 <= 0x2711)
                  {
                    [v38 setObject:v39 forKeyedSubscript:@"PerProcessLimit"];
                    goto LABEL_77;
                  }
                }

                else
                {
LABEL_77:
                  v40 = [v38 objectForKeyedSubscript:@"ExecNameList"];
                  v41 = [v15 objectForKeyedSubscript:@"ExecNameList"];
                  sub_1000081D4(v40, v41);

                  v3 = v46;
                }

                v6 = v44;
              }

              v5 = v35;
              goto LABEL_52;
            }

            v15 = [v4 objectForKeyedSubscript:v14];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = off_1000144A0[0];
              v16 = v3;
              v17 = v15;
              goto LABEL_23;
            }
          }

          v13 = v13 + 1;
        }

        while (v13 != v11);
        v42 = [v9 countByEnumeratingWithState:&v56 objects:v66 count:16];
        v11 = v42;
        if (!v42)
        {
LABEL_81:

          goto LABEL_85;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = +[NSDate date];
      v8 = [v6 compare:v7];

      if (v8 != -1)
      {
        goto LABEL_5;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      *buf = 0;
      v43 = "The input preferences have expired. Skipping.";
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_85:

        goto LABEL_86;
      }

      *buf = 0;
      v43 = "The input preferences are malformed. Skipping.";
    }

    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    goto LABEL_85;
  }

LABEL_86:
}

uint64_t sub_100007AD0()
{
  if (qword_1000146A0 != -1)
  {
    dispatch_once(&qword_1000146A0, &stru_100010790);
  }

  return byte_100014691;
}

void sub_100007B18(id a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    byte_100014691 = 1;
  }
}

uint64_t sub_100007B48(void *a1, uint64_t a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = v9;
  if (v8)
  {
    if (sub_1000071E8(v9))
    {
      v11 = [v8 objectForKeyedSubscript:@"PerCriticalProcessLimit"];
      v12 = [v11 integerValue];

      *a4 = 1;
    }

    else
    {
      v12 = 0;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v31 = *a4;
      v35 = 136315650;
      v36 = "RMEGetMemgraphLimitForExecName";
      v37 = 1024;
      LODWORD(v38[0]) = v31;
      WORD2(v38[0]) = 2048;
      *(v38 + 6) = v12;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s - isCriticalProcess: %d, dailyCriticalProcessLimit: %ld", &v35, 0x1Cu);
    }

    v14 = [v8 objectForKeyedSubscript:@"LargeExemptedProcesses"];
    if ([v14 containsObject:v10])
    {
      *a5 = 1;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v32 = *a5;
      v35 = 136315394;
      v36 = "RMEGetMemgraphLimitForExecName";
      v37 = 1024;
      LODWORD(v38[0]) = v32;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s - isLargeExemptProcess: %d", &v35, 0x12u);
    }

    v15 = [v8 objectForKeyedSubscript:@"PerProcessLimit"];
    v16 = [v15 integerValue];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v35 = 136315394;
      v36 = "RMEGetMemgraphLimitForExecName";
      v37 = 2048;
      v38[0] = v16;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s - fullDiagPerProcessLimit: %ld", &v35, 0x16u);
    }

    v17 = [v8 objectForKeyedSubscript:@"ProcessSpecificFullDiagQuotas"];
    v18 = [v17 objectForKeyedSubscript:v10];

    if (v18)
    {
      v19 = [v17 objectForKeyedSubscript:v10];
      v16 = [v19 integerValue];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v35 = 136315394;
        v36 = "RMEGetMemgraphLimitForExecName";
        v37 = 2048;
        v38[0] = v16;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s - specificLimit: %ld", &v35, 0x16u);
      }
    }

    v20 = MREExceptionTypeToString();
    v21 = [v8 objectForKeyedSubscript:v20];

    if (v21)
    {
      v22 = [v21 objectForKeyedSubscript:@"PerProcessLimit"];
      v23 = v22;
      if (v22)
      {
        v16 = [v22 integerValue];
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v23 integerValue];
        v35 = 136315394;
        v36 = "RMEGetMemgraphLimitForExecName";
        v37 = 2048;
        v38[0] = v33;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s - typeLimit: %ld", &v35, 0x16u);
      }

      v24 = [v21 objectForKeyedSubscript:@"ExecNameList"];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 objectForKeyedSubscript:v10];
        v27 = v26;
        if (v26)
        {
          v16 = [v26 integerValue];
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v34 = [v27 integerValue];
          v35 = 136315394;
          v36 = "RMEGetMemgraphLimitForExecName";
          v37 = 2048;
          v38[0] = v34;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s - exceptionSpecificLimit: %ld", &v35, 0x16u);
        }
      }
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v12;
    }

    if (v16 >= v28)
    {
      v29 = v16;
    }

    else
    {
      v29 = v12;
    }

    if (v29 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v29;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v35 = 136315394;
      v36 = "RMEGetMemgraphLimitForExecName";
      v37 = 2048;
      v38[0] = v13;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s - final limit: %ld", &v35, 0x16u);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_100008078(uint64_t result)
{
  if (result)
  {
    v1 = [result objectForKeyedSubscript:@"LitePerProcessLimit"];
    v2 = [v1 integerValue];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v3 = 136315394;
      v4 = "RMEGetLiteLimitForExecName";
      v5 = 2048;
      v6 = v2;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s - liteDiagPerProcessLimit: %ld", &v3, 0x16u);
    }

    if (v2 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

id sub_10000815C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 objectForKey:@"BoostCriticalProcessCollection"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1000081D4(void *a1, void *a2)
{
  v11 = a1;
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = [v3 allKeys];
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          v8 = 0;
          do
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v12 + 1) + 8 * v8);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v3 objectForKeyedSubscript:v9];
              if (v10)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 integerValue] + 1 <= 0x2711)
                {
                  [v11 setObject:v10 forKeyedSubscript:v9];
                }
              }
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }
    }
  }
}

void start()
{
  if (getppid() == 1)
  {
    v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v1 = dispatch_queue_create("com.apple.ReportMemoryException.listener", v0);
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);

    v3 = dispatch_queue_create("com.apple.ReportMemoryException.analysis", v2);
    v4 = dispatch_queue_create("com.apple.ReportMemoryException.bulkAnalysis", 0);
    mach_service = xpc_connection_create_mach_service("com.apple.ReportMemoryException", v1, 1uLL);
    v6 = objc_autoreleasePoolPush();
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100008580;
    handler[3] = &unk_1000107E0;
    v7 = v1;
    v12 = v7;
    v13 = v3;
    v14 = v4;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(mach_service);
    v8 = dispatch_time(0, 60000000000);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008C9C;
    v9[3] = &unk_100010808;
    v10 = v7;
    dispatch_after(v8, v10, v9);
    sub_100008DD4();

    objc_autoreleasePoolPop(v6);
    dispatch_main();
  }

  fwrite("Error: This service may only be launched by launchd.\n", 0x35uLL, 1uLL, __stderrp);
  _exit(-1);
}

void sub_100008580(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      v4 = "Got xpc error for peer: %s";
      v5 = 12;
      goto LABEL_7;
    }
  }

  else
  {
    if (xpc_get_type(v3) == &_xpc_type_connection)
    {
      xpc_connection_set_target_queue(v3, *(a1 + 32));
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10000873C;
      v6[3] = &unk_1000107B8;
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      xpc_connection_set_event_handler(v3, v6);
      xpc_connection_resume(v3);

      goto LABEL_9;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v4 = "Unexpected XPC event";
      v5 = 2;
LABEL_7:
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v4, buf, v5);
    }
  }

LABEL_9:
}

void sub_10000873C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Got xpc error message in ReportMemoryException client connection: %s", &buf, 0xCu);
    }
  }

  else if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = v3;
    v7 = v4;
    v8 = v5;
    int64 = xpc_dictionary_get_int64(v6, "MessageType");
    v10 = xpc_dictionary_get_remote_connection(v6);
    reply = xpc_dictionary_create_reply(v6);
    v12 = reply;
    v13 = 0;
    if (v10 && reply)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v35 = sub_100009128;
      v36 = &unk_100010830;
      v37 = v6;
      v38 = v12;
      v13 = objc_retainBlock(&buf);
    }

    if (int64 != 3)
    {
      if (int64 == 2)
      {
        v15 = xpc_dictionary_copy_mach_send();
        if ((v15 + 1) > 1)
        {
          v21 = v15;
          v22 = xpc_dictionary_get_BOOL(v6, "WithMemgraph");
          sub_1000033B4(v21, v22, v7, v8, v13);
          mach_port_deallocate(mach_task_self_, v21);
          goto LABEL_43;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
LABEL_43:

          goto LABEL_44;
        }

        *v32 = 0;
        v16 = "Unable to get port for memory analysis";
      }

      else
      {
        if (int64 != 1)
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_43;
          }

          *v32 = 136315138;
          string = xpc_dictionary_get_string(v6, _xpc_error_key_description);
          v16 = "Unexpected message from ReportMemoryException client: %s";
          v20 = 12;
LABEL_27:
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v16, v32, v20);
          goto LABEL_43;
        }

        v14 = xpc_dictionary_get_int64(v6, "AuthToken");
        if (v10 && v12)
        {
          xpc_dictionary_set_int64(v12, "AuthToken", ~v14);
          xpc_connection_send_message(v10, v12);
          goto LABEL_43;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *v32 = 0;
        v16 = "Received an auth request without a reply context!";
      }

      v20 = 2;
      goto LABEL_27;
    }

    v17 = xpc_dictionary_copy_mach_send();
    if (v17 + 1 > 1)
    {
      v23 = v17;
      v24 = xpc_dictionary_get_int64(v6, "TimeoutSeconds");
      if (v24 >= 60)
      {
        v25 = 60;
      }

      else
      {
        v25 = v24;
      }

      if (v24)
      {
        v26 = v25;
      }

      else
      {
        v26 = 60;
      }

      v27 = xpc_dictionary_get_int64(v6, "ContentLevel");
      if (v27 >= 3)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *v32 = 67109120;
        LODWORD(string) = v27;
        v18 = "Invalid content level for memgraph request: %d";
        v19 = 8;
        goto LABEL_39;
      }

      v31 = v26;
      v28 = xpc_dictionary_dup_fd(v6, "MemgraphFileDescriptor");
      if (v28 != -1)
      {
        v29 = [[NSFileHandle alloc] initWithFileDescriptor:v28 closeOnDealloc:1];
        sub_100004E9C(v23, v29, v27, v31, v7, v8, v13);
        mach_port_deallocate(mach_task_self_, v23);

        goto LABEL_43;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_41:
        if (v13)
        {
          v30 = [NSError errorWithDomain:MREErrorDomain[0] code:16 userInfo:0];
          (*(v13 + 2))(v13, v30);
        }

        goto LABEL_43;
      }

      *v32 = 0;
      v18 = "Unable to get file descriptor to write out memgraph";
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *v32 = 0;
      v18 = "Unable to get port for memory analysis";
    }

    v19 = 2;
LABEL_39:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v18, v32, v19);
    goto LABEL_41;
  }

LABEL_44:
}

void sub_100008C9C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Calling xpc_transaction_exit_clean() and scheduling force exit.", v2, 2u);
  }

  xpc_transaction_exit_clean();
  sub_100008D18(*(a1 + 32), 60);
}

void sub_100008D18(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = dispatch_time(0, 1000000000 * a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000920C;
  v6[3] = &unk_100010858;
  v7 = v3;
  v8 = a2;
  v5 = v3;
  dispatch_after(v4, v5, v6);
}

void sub_100008DD4()
{
  v0 = [RMECacheEnumerator getGcoreSpoolWithCreateIfNecessary:0];
  if (!v0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v13 = "Unable to get RME gcore spool path, the container may not exist";
LABEL_21:
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, v13, buf, 2u);
    goto LABEL_24;
  }

  v20 = 0;
  v1 = +[NSFileManager defaultManager];
  v2 = [v1 fileExistsAtPath:v0 isDirectory:&v20];

  if ((v2 & 1) == 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v13 = "RME gcore spool directory has not been created";
    goto LABEL_21;
  }

  if (v20)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 enumeratorAtPath:v0];

    obj = v4;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v0 stringByAppendingFormat:@"/%@", v9];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Delete remaining gcore spool files: delete %@", buf, 0xCu);
          }

          v11 = +[NSFileManager defaultManager];
          v15 = 0;
          [v11 removeItemAtPath:v10 error:&v15];
          v12 = v15;

          if (v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v22 = v9;
            v23 = 2112;
            v24 = v10;
            v25 = 2112;
            v26 = v12;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error deleting gcore file %@ (path=%@): %@", buf, 0x20u);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v16 objects:v27 count:16];
      }

      while (v6);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error getting the RME container gcore spool directory", buf, 2u);
  }

LABEL_24:
}

void sub_100009128(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = xpc_dictionary_get_remote_connection(v3);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      if (v7)
      {
        v6 = [v7 domain];
        xpc_dictionary_set_string(v5, "ErrorDomain", [v6 UTF8String]);

        xpc_dictionary_set_int64(*(a1 + 40), "ErrorCode", [v7 code]);
        v5 = *(a1 + 40);
      }

      xpc_connection_send_message(v4, v5);
    }
  }
}

void sub_10000920C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (qword_1000146A8 >= qword_100014608)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v4) = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ReportMemoryException still alive after xpc_transaction_exit_clean() and has waited out timeouts for critical analysis requests. Exiting at risk of data loss.\n", &v4, 2u);
    }

    _exit(-1);
  }

  v3 = v2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ReportMemoryException potentially still has pending critical bulk analysis requests. Checking again in %lld seconds.", &v4, 0xCu);
  }

  sub_100008D18(v3, v1);
  qword_1000146A8 += v1;
}