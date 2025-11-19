@interface job_spool_client_t
- (BOOL)AttributeFidelity;
- (BOOL)FitToPage;
- (BOOL)hasDocumentPassword;
- (BOOL)hasFinishings;
- (BOOL)hasFinishingsCol;
- (BOOL)hasFitToPage;
- (BOOL)hasJobAccountID;
- (BOOL)hasMediaCol;
- (BOOL)hasOrientationRequested;
- (BOOL)hasOutputBin;
- (BOOL)hasPageRanges;
- (BOOL)hasPresetName;
- (BOOL)hasPrintQuality;
- (BOOL)hasSides;
- (BOOL)peekFirstEightBytes:(char *)a3;
- (BOOL)validateJobRequestAgainstPrinter:(id)a3;
- (NSArray)Finishings;
- (NSArray)PageRanges;
- (NSData)DocumentPassword;
- (NSString)DocumentFormat;
- (NSString)JobAccountID;
- (NSString)JobName;
- (NSString)Media;
- (NSString)OutputMode;
- (NSString)PrintColorMode;
- (NSString)PrintScaling;
- (NSString)Sides;
- (PKMediaCol)MediaCol;
- (id)fileHandleForStreaming;
- (int)OrientationRequested;
- (int)PrintQuality;
- (int)RasterFeedOrientation;
- (int64_t)moveStreamingFileTo:(id)a3;
- (ipp_collection_t)FinishingsCol;
- (job_spool_client_t)initWithClientID:(int)a3 printer:(id)a4 printSettings:(id)a5;
- (void)figureOutputOrPrintColorMode:(OutputOrPrintColorMode *)a3;
- (void)invalidate;
- (void)startStreamingCompletionHandler:(id)a3;
- (void)submitRequestWithSession:(id)a3 completionHandler:(id)a4;
@end

@implementation job_spool_client_t

- (job_spool_client_t)initWithClientID:(int)a3 printer:(id)a4 printSettings:(id)a5
{
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = job_spool_client_t;
  v11 = [(job_spool_client_t *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_clientID = a3;
    objc_storeStrong(&v11->_printer, a4);
    objc_storeStrong(&v12->_printSettings, a5);
    v13 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v22) = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Job Init: Client ID %d", buf, 8u);
    }

    v14 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 debugDescription];
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Job Init: Printer %@", buf, 0xCu);
    }

    v16 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v10 userCodableDictionary];
      v18 = [v17 debugDescription];
      *buf = 138412290;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Job Init: Settings: %@", buf, 0xCu);
    }
  }

  return v12;
}

- (void)invalidate
{
  v3 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    filePathForStreaming = self->_filePathForStreaming;
    fileHandleForStreaming = self->_fileHandleForStreaming;
    *buf = 134218242;
    v16 = fileHandleForStreaming;
    v17 = 2114;
    v18 = filePathForStreaming;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidate file handle %p path %{public}@", buf, 0x16u);
  }

  v6 = self->_fileHandleForStreaming;
  if (v6)
  {
    v14 = 0;
    [(NSFileHandle *)v6 closeAndReturnError:&v14];
    v7 = v14;
    v8 = self->_fileHandleForStreaming;
    self->_fileHandleForStreaming = 0;
  }

  else
  {
    v7 = 0;
  }

  if (self->_filePathForStreaming)
  {
    v9 = +[NSFileManager defaultManager];
    v10 = self->_filePathForStreaming;
    v13 = v7;
    [v9 removeItemAtURL:v10 error:&v13];
    v11 = v13;

    v12 = self->_filePathForStreaming;
    self->_filePathForStreaming = 0;

    v7 = v11;
  }
}

- (void)startStreamingCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "startStreamingCompletionHandler", v7, 2u);
  }

  v6 = [(job_spool_client_t *)self fileHandleForStreaming];
  v4[2](v4, v6);
}

- (BOOL)peekFirstEightBytes:(char *)a3
{
  filePathForStreaming = self->_filePathForStreaming;
  if (!filePathForStreaming)
  {
    return 0;
  }

  v6 = open([(NSURL *)filePathForStreaming fileSystemRepresentation], 256);
  if (v6 == -1)
  {
    v9 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = self->_filePathForStreaming;
      v11 = *__error();
      v13 = 138543618;
      v14 = v10;
      v15 = 1024;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Couldn't open temp file %{public}@ for reading: %d", &v13, 0x12u);
    }

    return 0;
  }

  v7 = v6;
  v8 = read(v6, a3, 8uLL) == 8;
  close(v7);
  return v8;
}

- (id)fileHandleForStreaming
{
  if (!self->_fileHandleForStreaming)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 temporaryDirectory];

    v5 = getpid();
    v6 = +[NSProcessInfo processInfo];
    v7 = [v6 globallyUniqueString];
    v8 = [NSString stringWithFormat:@"%d-%@.tmp", v5, v7];

    v9 = [v4 URLByAppendingPathComponent:v8];
    filePathForStreaming = self->_filePathForStreaming;
    self->_filePathForStreaming = v9;

    v11 = +[NSFileManager defaultManager];
    v12 = [(NSURL *)self->_filePathForStreaming path];
    v13 = +[NSData data];
    [v11 createFileAtPath:v12 contents:v13 attributes:0];

    v14 = self->_filePathForStreaming;
    v23 = 0;
    v15 = [NSFileHandle fileHandleForWritingToURL:v14 error:&v23];
    v16 = v23;
    fileHandleForStreaming = self->_fileHandleForStreaming;
    self->_fileHandleForStreaming = v15;

    if (v16)
    {
      v18 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Couldn't create temp file for streaming: %{public}@", buf, 0xCu);
      }
    }
  }

  v19 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_fileHandleForStreaming;
    *buf = 138543362;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "fileHandleForStreaming %{public}@", buf, 0xCu);
  }

  v21 = self->_fileHandleForStreaming;

  return v21;
}

- (int64_t)moveStreamingFileTo:(id)a3
{
  v4 = a3;
  v5 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    fileHandleForStreaming = self->_fileHandleForStreaming;
    *buf = 138543618;
    v25 = fileHandleForStreaming;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "moveStreamingFileTo %{public}@ to %{public}@", buf, 0x16u);
  }

  v7 = self->_fileHandleForStreaming;
  if (v7)
  {
    v23 = 0;
    [(NSFileHandle *)v7 closeAndReturnError:&v23];
    v8 = v23;
    v9 = self->_fileHandleForStreaming;
    self->_fileHandleForStreaming = 0;

    if (v8)
    {
      v10 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        filePathForStreaming = self->_filePathForStreaming;
        *buf = 138543618;
        v25 = filePathForStreaming;
        v26 = 2114;
        v27 = v8;
        v12 = "Couldn't close file handle for path %{public}@: %{public}@";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
      }
    }

    else
    {
      v14 = +[NSFileManager defaultManager];
      v15 = self->_filePathForStreaming;
      v22 = 0;
      [v14 moveItemAtURL:v15 toURL:v4 error:&v22];
      v8 = v22;

      v16 = self->_filePathForStreaming;
      self->_filePathForStreaming = 0;

      if (v8)
      {
        v10 = _PKLogCategory(PKLogCategoryDefault[0]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v25 = v4;
          v26 = 2114;
          v27 = v8;
          v12 = "Couldn't move temp file to new location %{public}@: %{public}@";
          goto LABEL_11;
        }
      }

      else
      {
        v21 = 0;
        v20 = 0;
        v18 = [v4 getResourceValue:&v21 forKey:NSURLFileSizeKey error:&v20];
        v10 = v21;
        v8 = v20;
        if (v18)
        {
          v13 = [v10 integerValue];
          goto LABEL_13;
        }

        v19 = _PKLogCategory(PKLogCategoryDefault[0]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v25 = v4;
          v26 = 2114;
          v27 = v8;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't get file length for new locaton %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }

    v13 = -1;
LABEL_13:

    goto LABEL_14;
  }

  v13 = -1;
LABEL_14:

  return v13;
}

- (void)submitRequestWithSession:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v32 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "submitRequestWithSession %p", buf, 0xCu);
  }

  if (self->_printer)
  {
    if ([(job_spool_client_t *)self validateJobRequestAgainstPrinter:?])
    {
      v9 = [[lite_job_t alloc] initWithRequestParams:self session:v6 printer:self->_printer printSettings:self->_printSettings];
      v30 = 0;
      v10 = [(job_spool_client_t *)self finalizeFilePosition:&v30 forJobID:[(lite_job_t *)v9 printd_job_id] session:v6];
      if (v10)
      {
        [(lite_job_t *)v9 setPayloadTotal:v30];
        v11 = [v10 path];
        [(lite_job_t *)v9 setSpoolDocumentFilename:v11];

        v12 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(lite_job_t *)v9 printd_job_id];
          if (v9)
          {
            v14 = [(lite_job_t *)v9 destination_job_id];
          }

          else
          {
            v14 = -1;
          }

          v21 = v30;
          v22 = [v10 absoluteURL];
          *buf = 67109890;
          *v32 = v13;
          *&v32[4] = 1024;
          *&v32[6] = v14;
          *v33 = 2048;
          *&v33[2] = v21;
          v34 = 2114;
          v35 = v22;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Copied %lld bytes to %{public}@.", buf, 0x22u);
        }

        if (liteUpdateJobAttrs(v9) <= 1)
        {
          if ([(lite_job_t *)v9 is_canceled])
          {
            v20 = @"Job was canceled before it began";
          }

          else if ([(lite_job_t *)v9 localJobState]== 4)
          {
            v20 = [(lite_job_t *)v9 addJobAndAllowToProceed];
            if (!v20)
            {
              v23 = _PKLogCategory(PKLogCategoryProgress[0]);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [(job_spool_client_t *)self clientID];
                v25 = [(lite_job_t *)v9 printd_job_id];
                *buf = 67109376;
                *v32 = v24;
                *&v32[4] = 1024;
                *&v32[6] = v25;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[Client %d] Job id %d ready and sent for processing", buf, 0xEu);
              }

              v26 = [NSNumber numberWithInt:[(lite_job_t *)v9 printd_job_id]];
              v7[2](v7, v26);

              v20 = 0;
              goto LABEL_29;
            }
          }

          else
          {
            v20 = @"Job is not in the held state";
          }
        }

        else
        {
          v20 = @"Job attributes did not match print document.";
        }
      }

      else
      {
        printer = self->_printer;
        v18 = [(lite_printer_t *)printer reasons];
        v19 = [NSString stringWithUTF8String:"[job_spool_client_t submitRequestWithSession:completionHandler:]"];
        liteNotifyPrinter(printer, v18 | 0x40000, v19);

        v20 = @"No space for spool file";
      }

      v27 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(job_spool_client_t *)self clientID];
        v29 = [(lite_job_t *)v9 printd_job_id];
        *buf = 67109634;
        *v32 = v28;
        *&v32[4] = 1024;
        *&v32[6] = v29;
        *v33 = 2112;
        *&v33[2] = v20;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Client %d] Job id %d failed to prepare and will be aborted: %@", buf, 0x18u);
      }

      [(lite_job_t *)v9 finishJob:8];
      v7[2](v7, 0);
LABEL_29:

      goto LABEL_30;
    }

    v15 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = self->_printer;
      *buf = 134218242;
      *v32 = self;
      *&v32[8] = 2114;
      *v33 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Can't validate job request %p against printer %{public}@", buf, 0x16u);
    }
  }

  v7[2](v7, 0);
LABEL_30:
}

- (BOOL)validateJobRequestAgainstPrinter:(id)a3
{
  v4 = a3;
  v5 = [(job_spool_client_t *)self DocumentFormat];
  if (!v5)
  {
    v10 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Unsupported (nil) document-format";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
    }

LABEL_13:

    goto LABEL_14;
  }

  v6 = [v4 attrs_document_format_supported];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v10 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Unsupported document-format";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (![(job_spool_client_t *)self hasCopies])
  {
    goto LABEL_18;
  }

  v8 = [(job_spool_client_t *)self Copies];
  if (v8 >> 4 < 0x271)
  {
    if (v8 != 1)
    {
      v14 = [(job_spool_client_t *)self DocumentFormat];
      v15 = [v14 caseInsensitiveCompare:@"image/urf"];

      if (!v15)
      {
        v9 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unsupported copies", buf, 2u);
        }

        goto LABEL_7;
      }
    }

LABEL_18:
    [(job_spool_client_t *)self hasFinishings];
    if (![(job_spool_client_t *)self hasMediaCol])
    {
LABEL_24:
      [(job_spool_client_t *)self hasOutputBin];
      if ([(job_spool_client_t *)self hasOrientationRequested]&& (v17 = [(job_spool_client_t *)self OrientationRequested], v17 - 3 >= 5))
      {
        v21 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v30) = v17;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unsupported orientation-requested %d.", buf, 8u);
        }
      }

      else
      {
        [(job_spool_client_t *)self hasPageRanges];
        if (![(job_spool_client_t *)self hasPrintQuality]|| (v18 = [(job_spool_client_t *)self PrintQuality], v18 - 3 < 3))
        {
          if (![(job_spool_client_t *)self hasSides])
          {
LABEL_31:
            v12 = 1;
            goto LABEL_15;
          }

          v19 = [(job_spool_client_t *)self Sides];
          if ([v19 isEqualToString:@"one-sided"])
          {
LABEL_30:

            goto LABEL_31;
          }

          if ([v4 printer_type_from_cups])
          {
            if ([v19 isEqualToString:@"two-sided-long-edge"])
            {
              goto LABEL_30;
            }

            if ([v19 isEqualToString:@"two-sided-short-edge"])
            {
              goto LABEL_30;
            }

            v23 = [NSString stringWithFormat:@"Unknown Sides attribute '%@'", v19];
            if (!v23)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v23 = @"Printer doesn't support specifying sides";
          }

          v24 = _PKLogCategory(PKLogCategoryProgress[0]);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unsupported sides %@.", buf, 0xCu);
          }

          goto LABEL_14;
        }

        v21 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v30) = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unsupported print-quality %d.", buf, 8u);
        }
      }

      goto LABEL_14;
    }

    v27 = off_1000A04A0;
    v28 = self;
    v26 = 0;
    if (pwgInitSize(buf, &v27, &v26))
    {
      if (!v26 || v32 + HIDWORD(v30) < *buf && v33 + v31 < v30)
      {
        v16 = v28;
        v27 = off_1000A04A0;
        v28 = 0;

        goto LABEL_24;
      }

      v20 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v20 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
LABEL_39:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unsupported MediaCol value.", v25, 2u);
      }
    }

    v22 = v28;
    v27 = off_1000A04A0;
    v28 = 0;

    goto LABEL_14;
  }

  v9 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unsupported copies", buf, 2u);
  }

LABEL_7:

LABEL_14:
  v12 = 0;
LABEL_15:

  return v12;
}

- (BOOL)AttributeFidelity
{
  v2 = [(PKPrintSettings *)self->_printSettings pageScale];
  v3 = v2;
  v4 = v2 && (([v2 isEqualToString:PKPageScaleUpAndDown] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", PKPageScaleOff));

  return v4;
}

- (NSString)DocumentFormat
{
  v3 = [(PKPrintSettings *)self->_printSettings fileType];
  v4 = v3;
  if (!v3 || ![(__CFString *)v3 caseInsensitiveCompare:@"application/octet-stream"])
  {
    v27 = 0;
    if (![(job_spool_client_t *)self peekFirstEightBytes:&v27])
    {
      v27 = 0;
    }

    v5 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67111168;
      v12 = [(job_spool_client_t *)self clientID];
      v13 = 1024;
      *v14 = v27;
      *&v14[4] = 1024;
      *&v14[6] = BYTE1(v27);
      v15 = 1024;
      v16 = BYTE2(v27);
      v17 = 1024;
      v18 = BYTE3(v27);
      v19 = 1024;
      v20 = BYTE4(v27);
      v21 = 1024;
      v22 = BYTE5(v27);
      v23 = 1024;
      v24 = BYTE6(v27);
      v25 = 1024;
      v26 = HIBYTE(v27);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Client %d] Auto-typing with header: %02X %02X %02X %02X %02X %02X %02X %02X", &v11, 0x38u);
    }

    if (v27 == 1178882085)
    {

      v4 = @"application/pdf";
    }

    else
    {
      v6 = v27 == 55551 && BYTE2(v27) == 255;
      if (v6 && (BYTE3(v27) & 0xF0) == 0xE0)
      {

        v4 = @"image/jpeg";
      }

      else if (v27 == 1196314761)
      {

        v4 = @"image/png";
      }

      else
      {
        v7 = v27 == 0x54534152494E55;

        if (v7)
        {
          v4 = @"image/urf";
        }

        else
        {
          v4 = @"application/octet-stream";
        }
      }
    }

    v8 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(job_spool_client_t *)self clientID];
      v11 = 67109378;
      v12 = v9;
      v13 = 2112;
      *v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Client %d] Auto-typed format is %@.", &v11, 0x12u);
    }

    [(PKPrintSettings *)self->_printSettings setFileType:v4];
  }

  return v4;
}

- (BOOL)hasDocumentPassword
{
  v2 = [(PKPrintSettings *)self->_printSettings documentPassword];
  v3 = v2 != 0;

  return v3;
}

- (NSData)DocumentPassword
{
  v2 = [(PKPrintSettings *)self->_printSettings documentPassword];
  v3 = [v2 precomposedStringWithCanonicalMapping];

  if (v3)
  {
    v4 = [v3 UTF8String];
    v5 = [NSData dataWithBytes:v4 length:strlen(v4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasFinishings
{
  v3 = [(PKPrintSettings *)self->_printSettings finishingTemplate];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PKPrintSettings *)self->_printSettings finishings];
    v4 = v5 != 0;
  }

  return v4;
}

- (NSArray)Finishings
{
  v3 = [(PKPrintSettings *)self->_printSettings finishingTemplate];
  if (v3)
  {
    v4 = 0;
    goto LABEL_29;
  }

  v5 = [(PKPrintSettings *)self->_printSettings finishings];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[NSArray array];
  }

  v8 = v7;

  v9 = [(lite_printer_t *)self->_printer printerDescription];
  v10 = [v9 finishings];

  if (-[PKPrintSettings copies](self->_printSettings, "copies") >= 2 && [v10 containsObject:&off_1000B91D0] && (objc_msgSend(v8, "containsObject:", &off_1000B91D0) & 1) == 0)
  {
    v11 = [v8 arrayByAddingObject:&off_1000B91D0];

    v8 = v11;
  }

  if ([v8 count])
  {
    v12 = malloc_type_calloc([v8 count], 4uLL, 0x100004052888210uLL);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      LODWORD(v15) = 0;
      v16 = *v24;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          if ([v10 containsObject:{v18, v23}])
          {
            v12[v15] = [v18 intValue];
            LODWORD(v15) = v15 + 1;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);

      if (v15 >= 1)
      {
        v4 = objc_opt_new();
        v15 = v15;
        v19 = v12;
        do
        {
          v20 = *v19++;
          v21 = [NSNumber numberWithInt:v20];
          [v4 addObject:v21];

          --v15;
        }

        while (v15);
        goto LABEL_27;
      }
    }

    else
    {
    }

    v4 = 0;
LABEL_27:
    free(v12);
    goto LABEL_28;
  }

  v4 = 0;
LABEL_28:

LABEL_29:

  return v4;
}

- (BOOL)hasFinishingsCol
{
  v2 = [(PKPrintSettings *)self->_printSettings finishingTemplate];
  v3 = v2 != 0;

  return v3;
}

- (ipp_collection_t)FinishingsCol
{
  v2 = [(PKPrintSettings *)self->_printSettings finishingTemplate];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 _addString:2 valueTag:68 name:@"finishing-template" lang:0 value:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasFitToPage
{
  v2 = [(PKPrintSettings *)self->_printSettings pageScale];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)FitToPage
{
  v2 = [(PKPrintSettings *)self->_printSettings pageScale];
  v3 = v2;
  if (v2)
  {
    if ([v2 isEqualToString:PKPageScaleDown])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isEqualToString:PKPageScaleUpAndDown];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasJobAccountID
{
  v2 = [(PKPrintSettings *)self->_printSettings jobAccountID];
  v3 = v2 != 0;

  return v3;
}

- (NSString)JobAccountID
{
  v2 = [(PKPrintSettings *)self->_printSettings jobAccountID];
  v3 = [v2 precomposedStringWithCanonicalMapping];

  return v3;
}

- (NSString)JobName
{
  v2 = [(PKPrintSettings *)self->_printSettings jobName];
  v3 = [v2 precomposedStringWithCanonicalMapping];

  return v3;
}

- (BOOL)hasMediaCol
{
  v2 = [(PKPrintSettings *)self->_printSettings paper];
  v3 = v2 != 0;

  return v3;
}

- (PKMediaCol)MediaCol
{
  v3 = [(PKPrintSettings *)self->_printSettings paper];
  if (v3)
  {
    v4 = [(lite_printer_t *)self->_printer printerDescription];
    v5 = [v4 mediaColSupportedArray];

    if ([v5 containsObject:@"media-bottom-margin"] && objc_msgSend(v5, "containsObject:", @"media-top-margin") && objc_msgSend(v5, "containsObject:", @"media-left-margin"))
    {
      v6 = [v5 containsObject:@"media-right-margin"];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v3 createMediaColAndDoMargins:v6];
    if (v7)
    {
      v8 = [(PKPrintSettings *)self->_printSettings inputSlot];
      v9 = v8;
      if (v8 && ([v8 isEqualToString:@"auto"] & 1) == 0)
      {
        [v7 setMediaSource:v9];
      }

      v10 = [(PKPrintSettings *)self->_printSettings mediaType];
      v11 = v10;
      if (v10 && ([v10 isEqualToString:@"auto"] & 1) == 0)
      {
        [v7 setMediaType:v11];
      }

      v12 = [v7 makeMediaCol];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)hasOrientationRequested
{
  v2 = [(PKPrintSettings *)self->_printSettings orientation];
  v3 = v2 != 0;

  return v3;
}

- (int)OrientationRequested
{
  v2 = [(PKPrintSettings *)self->_printSettings orientation];
  if (v2)
  {
    v7[0] = PKOrientationPortrait;
    v7[1] = PKOrientationLandscape;
    v8[0] = &off_1000B91E8;
    v8[1] = &off_1000B9200;
    v7[2] = PKOrientationReverseLandscape;
    v8[2] = &off_1000B9218;
    v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
    v4 = [v3 objectForKeyedSubscript:v2];
    v5 = validate_enum<ipp_orient_e,unsigned char>([v4 integerValue]);
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (BOOL)hasOutputBin
{
  v2 = [(PKPrintSettings *)self->_printSettings outputBin];
  v3 = v2 != 0;

  return v3;
}

- (void)figureOutputOrPrintColorMode:(OutputOrPrintColorMode *)a3
{
  var0 = a3->var0;
  a3->var0 = 0;

  var1 = a3->var1;
  a3->var1 = 0;

  v7 = [(lite_printer_t *)self->_printer printerDescription];
  v8 = [v7 supportsPrintColorMode];

  if (v8)
  {
    v9 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v10 = sub_100015600;
  }

  else
  {
    v9 = &v18;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v10 = sub_10001560C;
  }

  v9[2] = v10;
  v9[3] = &unk_1000A0470;
  v9[4] = &a3->var0;
  v11 = objc_retainBlock(v9);
  v12 = [(PKPrintSettings *)self->_printSettings outputMode];
  v13 = [(lite_printer_t *)self->_printer printerDescription];
  v14 = [v13 outputModes];

  if (v14 && v12)
  {
    v15 = [(job_spool_client_t *)self PrintQuality];
    v16 = PKOutputModeGray;
    if (v15 == 5)
    {
      if ([v12 isEqualToString:PKOutputModeGray])
      {
        v17 = PKOutputModeProcessGray;
        if ([v14 containsObject:PKOutputModeProcessGray])
        {
          goto LABEL_16;
        }
      }
    }

    if ([v12 isEqualToString:{v16, v18, v19}])
    {
      if (([v14 containsObject:v16] & 1) == 0)
      {
        v17 = PKOutputModeAutoGray;
        if ([v14 containsObject:PKOutputModeAutoGray])
        {
          goto LABEL_16;
        }
      }
    }

    if (([v12 isEqualToString:PKOutputModeColor] & 1) == 0)
    {
      if ([v14 containsObject:v12])
      {
        v17 = v12;
      }

      else
      {
        v17 = PKOutputModeAutoGray;
      }

LABEL_16:
      (v11[2])(v11, v17);
    }
  }
}

- (NSString)PrintColorMode
{
  v4 = 0;
  v5 = 0;
  [(job_spool_client_t *)self figureOutputOrPrintColorMode:&v4];
  v2 = v5;

  return v2;
}

- (NSString)OutputMode
{
  v4 = 0;
  v5 = 0;
  [(job_spool_client_t *)self figureOutputOrPrintColorMode:&v4];
  v2 = v4;

  return v2;
}

- (BOOL)hasPageRanges
{
  v2 = [(PKPrintSettings *)self->_printSettings pageRanges];
  v3 = v2 != 0;

  return v3;
}

- (NSArray)PageRanges
{
  v2 = [(PKPrintSettings *)self->_printSettings pageRanges];
  if ([v2 count] == 2)
  {
    v3 = [v2 firstObject];
    v4 = [v2 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v3 intValue];
        v6 = [v4 intValue];
        if (v5 >= 1 && v6 >= v5)
        {
          v7 = [NSValue valueWithRange:(v5 - 1), v6 - v5 + 1];
          v10 = v7;
          v8 = [NSArray arrayWithObjects:&v10 count:1];

          v2 = v8;
        }
      }
    }
  }

  return v2;
}

- (BOOL)hasPresetName
{
  v2 = [(PKPrintSettings *)self->_printSettings jobPresetName];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasPrintQuality
{
  v2 = [(PKPrintSettings *)self->_printSettings printQuality];
  v3 = v2 != 0;

  return v3;
}

- (int)PrintQuality
{
  v2 = [(PKPrintSettings *)self->_printSettings printQuality];
  if (v2)
  {
    v7[0] = PKQualityHigh;
    v7[1] = PKQualityDraft;
    v8[0] = &off_1000B9218;
    v8[1] = &off_1000B91E8;
    v7[2] = PKQualityNormal;
    v8[2] = &off_1000B9200;
    v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
    v4 = [v3 objectForKeyedSubscript:v2];
    v5 = validate_enum<ipp_quality_e,unsigned char>([v4 integerValue]);
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (NSString)PrintScaling
{
  if ([(job_spool_client_t *)self PrintQuality]== 5)
  {
    return 0;
  }

  result = [(PKPrintSettings *)self->_printSettings fileType];
  if (result)
  {
    v4 = result;
    v5 = [(PKPrintSettings *)self->_printSettings fileType];
    v6 = [v5 caseInsensitiveCompare:@"application/pdf"];

    if (v6)
    {
      return 0;
    }

    else
    {
      return @"auto-fit";
    }
  }

  return result;
}

- (int)RasterFeedOrientation
{
  v3 = [(PKPrintSettings *)self->_printSettings paper];
  if (v3)
  {
    v4 = [(lite_printer_t *)self->_printer printerDescription];
    v5 = [v4 specialFeedOrientation];

    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = [v3 baseName];
    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = [v3 baseName];
    v8 = [v5 objectForKey:v7];

    if (v8)
    {
      v9 = [v3 baseName];
      v10 = [v5 objectForKey:v9];
      v11 = [v10 intValue];
    }

    else
    {
LABEL_6:
      v11 = 3;
    }
  }

  else
  {
    v11 = 3;
  }

  return v11;
}

- (BOOL)hasSides
{
  v2 = [(PKPrintSettings *)self->_printSettings duplex];
  v3 = v2 != 0;

  return v3;
}

- (NSString)Sides
{
  v3 = [(PKPrintSettings *)self->_printSettings duplex];
  if (v3 && (-[lite_printer_t printerDescription](self->_printer, "printerDescription"), v4 = objc_claimAutoreleasedReturnValue(), [v4 sides], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v3), v5, v4, v6))
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)Media
{
  v2 = [(PKPrintSettings *)self->_printSettings paper];
  v3 = [v2 baseName];

  return v3;
}

@end