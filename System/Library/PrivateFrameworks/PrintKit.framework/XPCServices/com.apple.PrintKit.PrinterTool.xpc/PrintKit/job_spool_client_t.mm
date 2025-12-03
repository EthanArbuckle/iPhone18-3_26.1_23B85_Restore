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
- (BOOL)peekFirstEightBytes:(char *)bytes;
- (BOOL)validateJobRequestAgainstPrinter:(id)printer;
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
- (int64_t)moveStreamingFileTo:(id)to;
- (ipp_collection_t)FinishingsCol;
- (job_spool_client_t)initWithClientID:(int)d printer:(id)printer printSettings:(id)settings;
- (void)figureOutputOrPrintColorMode:(OutputOrPrintColorMode *)mode;
- (void)invalidate;
- (void)startStreamingCompletionHandler:(id)handler;
- (void)submitRequestWithSession:(id)session completionHandler:(id)handler;
@end

@implementation job_spool_client_t

- (job_spool_client_t)initWithClientID:(int)d printer:(id)printer printSettings:(id)settings
{
  printerCopy = printer;
  settingsCopy = settings;
  v20.receiver = self;
  v20.super_class = job_spool_client_t;
  v11 = [(job_spool_client_t *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_clientID = d;
    objc_storeStrong(&v11->_printer, printer);
    objc_storeStrong(&v12->_printSettings, settings);
    v13 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v22) = d;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Job Init: Client ID %d", buf, 8u);
    }

    v14 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [printerCopy debugDescription];
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Job Init: Printer %@", buf, 0xCu);
    }

    v16 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      userCodableDictionary = [settingsCopy userCodableDictionary];
      v18 = [userCodableDictionary debugDescription];
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

- (void)startStreamingCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "startStreamingCompletionHandler", v7, 2u);
  }

  fileHandleForStreaming = [(job_spool_client_t *)self fileHandleForStreaming];
  handlerCopy[2](handlerCopy, fileHandleForStreaming);
}

- (BOOL)peekFirstEightBytes:(char *)bytes
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
  v8 = read(v6, bytes, 8uLL) == 8;
  close(v7);
  return v8;
}

- (id)fileHandleForStreaming
{
  if (!self->_fileHandleForStreaming)
  {
    v3 = +[NSFileManager defaultManager];
    temporaryDirectory = [v3 temporaryDirectory];

    v5 = getpid();
    v6 = +[NSProcessInfo processInfo];
    globallyUniqueString = [v6 globallyUniqueString];
    v8 = [NSString stringWithFormat:@"%d-%@.tmp", v5, globallyUniqueString];

    v9 = [temporaryDirectory URLByAppendingPathComponent:v8];
    filePathForStreaming = self->_filePathForStreaming;
    self->_filePathForStreaming = v9;

    v11 = +[NSFileManager defaultManager];
    path = [(NSURL *)self->_filePathForStreaming path];
    v13 = +[NSData data];
    [v11 createFileAtPath:path contents:v13 attributes:0];

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

- (int64_t)moveStreamingFileTo:(id)to
{
  toCopy = to;
  v5 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    fileHandleForStreaming = self->_fileHandleForStreaming;
    *buf = 138543618;
    v25 = fileHandleForStreaming;
    v26 = 2114;
    v27 = toCopy;
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
      [v14 moveItemAtURL:v15 toURL:toCopy error:&v22];
      v8 = v22;

      v16 = self->_filePathForStreaming;
      self->_filePathForStreaming = 0;

      if (v8)
      {
        v10 = _PKLogCategory(PKLogCategoryDefault[0]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v25 = toCopy;
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
        v18 = [toCopy getResourceValue:&v21 forKey:NSURLFileSizeKey error:&v20];
        v10 = v21;
        v8 = v20;
        if (v18)
        {
          integerValue = [v10 integerValue];
          goto LABEL_13;
        }

        v19 = _PKLogCategory(PKLogCategoryDefault[0]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v25 = toCopy;
          v26 = 2114;
          v27 = v8;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't get file length for new locaton %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }

    integerValue = -1;
LABEL_13:

    goto LABEL_14;
  }

  integerValue = -1;
LABEL_14:

  return integerValue;
}

- (void)submitRequestWithSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  v8 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v32 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "submitRequestWithSession %p", buf, 0xCu);
  }

  if (self->_printer)
  {
    if ([(job_spool_client_t *)self validateJobRequestAgainstPrinter:?])
    {
      v9 = [[lite_job_t alloc] initWithRequestParams:self session:sessionCopy printer:self->_printer printSettings:self->_printSettings];
      v30 = 0;
      v10 = [(job_spool_client_t *)self finalizeFilePosition:&v30 forJobID:[(lite_job_t *)v9 printd_job_id] session:sessionCopy];
      if (v10)
      {
        [(lite_job_t *)v9 setPayloadTotal:v30];
        path = [v10 path];
        [(lite_job_t *)v9 setSpoolDocumentFilename:path];

        v12 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          printd_job_id = [(lite_job_t *)v9 printd_job_id];
          if (v9)
          {
            destination_job_id = [(lite_job_t *)v9 destination_job_id];
          }

          else
          {
            destination_job_id = -1;
          }

          v21 = v30;
          absoluteURL = [v10 absoluteURL];
          *buf = 67109890;
          *v32 = printd_job_id;
          *&v32[4] = 1024;
          *&v32[6] = destination_job_id;
          *v33 = 2048;
          *&v33[2] = v21;
          v34 = 2114;
          v35 = absoluteURL;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Copied %lld bytes to %{public}@.", buf, 0x22u);
        }

        if (liteUpdateJobAttrs(v9) <= 1)
        {
          if ([(lite_job_t *)v9 is_canceled])
          {
            addJobAndAllowToProceed = @"Job was canceled before it began";
          }

          else if ([(lite_job_t *)v9 localJobState]== 4)
          {
            addJobAndAllowToProceed = [(lite_job_t *)v9 addJobAndAllowToProceed];
            if (!addJobAndAllowToProceed)
            {
              v23 = _PKLogCategory(PKLogCategoryProgress[0]);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                clientID = [(job_spool_client_t *)self clientID];
                printd_job_id2 = [(lite_job_t *)v9 printd_job_id];
                *buf = 67109376;
                *v32 = clientID;
                *&v32[4] = 1024;
                *&v32[6] = printd_job_id2;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[Client %d] Job id %d ready and sent for processing", buf, 0xEu);
              }

              v26 = [NSNumber numberWithInt:[(lite_job_t *)v9 printd_job_id]];
              handlerCopy[2](handlerCopy, v26);

              addJobAndAllowToProceed = 0;
              goto LABEL_29;
            }
          }

          else
          {
            addJobAndAllowToProceed = @"Job is not in the held state";
          }
        }

        else
        {
          addJobAndAllowToProceed = @"Job attributes did not match print document.";
        }
      }

      else
      {
        printer = self->_printer;
        reasons = [(lite_printer_t *)printer reasons];
        v19 = [NSString stringWithUTF8String:"[job_spool_client_t submitRequestWithSession:completionHandler:]"];
        liteNotifyPrinter(printer, reasons | 0x40000, v19);

        addJobAndAllowToProceed = @"No space for spool file";
      }

      v27 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        clientID2 = [(job_spool_client_t *)self clientID];
        printd_job_id3 = [(lite_job_t *)v9 printd_job_id];
        *buf = 67109634;
        *v32 = clientID2;
        *&v32[4] = 1024;
        *&v32[6] = printd_job_id3;
        *v33 = 2112;
        *&v33[2] = addJobAndAllowToProceed;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Client %d] Job id %d failed to prepare and will be aborted: %@", buf, 0x18u);
      }

      [(lite_job_t *)v9 finishJob:8];
      handlerCopy[2](handlerCopy, 0);
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

  handlerCopy[2](handlerCopy, 0);
LABEL_30:
}

- (BOOL)validateJobRequestAgainstPrinter:(id)printer
{
  printerCopy = printer;
  documentFormat = [(job_spool_client_t *)self DocumentFormat];
  if (!documentFormat)
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

  attrs_document_format_supported = [printerCopy attrs_document_format_supported];
  v7 = [attrs_document_format_supported containsObject:documentFormat];

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

  copies = [(job_spool_client_t *)self Copies];
  if (copies >> 4 < 0x271)
  {
    if (copies != 1)
    {
      documentFormat2 = [(job_spool_client_t *)self DocumentFormat];
      v15 = [documentFormat2 caseInsensitiveCompare:@"image/urf"];

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

          sides = [(job_spool_client_t *)self Sides];
          if ([sides isEqualToString:@"one-sided"])
          {
LABEL_30:

            goto LABEL_31;
          }

          if ([printerCopy printer_type_from_cups])
          {
            if ([sides isEqualToString:@"two-sided-long-edge"])
            {
              goto LABEL_30;
            }

            if ([sides isEqualToString:@"two-sided-short-edge"])
            {
              goto LABEL_30;
            }

            v23 = [NSString stringWithFormat:@"Unknown Sides attribute '%@'", sides];
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
    selfCopy = self;
    v26 = 0;
    if (pwgInitSize(buf, &v27, &v26))
    {
      if (!v26 || v32 + HIDWORD(v30) < *buf && v33 + v31 < v30)
      {
        v16 = selfCopy;
        v27 = off_1000A04A0;
        selfCopy = 0;

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

    v22 = selfCopy;
    v27 = off_1000A04A0;
    selfCopy = 0;

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
  pageScale = [(PKPrintSettings *)self->_printSettings pageScale];
  v3 = pageScale;
  v4 = pageScale && (([pageScale isEqualToString:PKPageScaleUpAndDown] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", PKPageScaleOff));

  return v4;
}

- (NSString)DocumentFormat
{
  fileType = [(PKPrintSettings *)self->_printSettings fileType];
  v4 = fileType;
  if (!fileType || ![(__CFString *)fileType caseInsensitiveCompare:@"application/octet-stream"])
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
      clientID = [(job_spool_client_t *)self clientID];
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
      clientID2 = [(job_spool_client_t *)self clientID];
      v11 = 67109378;
      clientID = clientID2;
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
  documentPassword = [(PKPrintSettings *)self->_printSettings documentPassword];
  v3 = documentPassword != 0;

  return v3;
}

- (NSData)DocumentPassword
{
  documentPassword = [(PKPrintSettings *)self->_printSettings documentPassword];
  precomposedStringWithCanonicalMapping = [documentPassword precomposedStringWithCanonicalMapping];

  if (precomposedStringWithCanonicalMapping)
  {
    uTF8String = [precomposedStringWithCanonicalMapping UTF8String];
    v5 = [NSData dataWithBytes:uTF8String length:strlen(uTF8String)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasFinishings
{
  finishingTemplate = [(PKPrintSettings *)self->_printSettings finishingTemplate];
  if (finishingTemplate)
  {
    v4 = 0;
  }

  else
  {
    finishings = [(PKPrintSettings *)self->_printSettings finishings];
    v4 = finishings != 0;
  }

  return v4;
}

- (NSArray)Finishings
{
  finishingTemplate = [(PKPrintSettings *)self->_printSettings finishingTemplate];
  if (finishingTemplate)
  {
    v4 = 0;
    goto LABEL_29;
  }

  finishings = [(PKPrintSettings *)self->_printSettings finishings];
  v6 = finishings;
  if (finishings)
  {
    v7 = finishings;
  }

  else
  {
    v7 = +[NSArray array];
  }

  v8 = v7;

  printerDescription = [(lite_printer_t *)self->_printer printerDescription];
  finishings2 = [printerDescription finishings];

  if (-[PKPrintSettings copies](self->_printSettings, "copies") >= 2 && [finishings2 containsObject:&off_1000B91D0] && (objc_msgSend(v8, "containsObject:", &off_1000B91D0) & 1) == 0)
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
          if ([finishings2 containsObject:{v18, v23}])
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
  finishingTemplate = [(PKPrintSettings *)self->_printSettings finishingTemplate];
  v3 = finishingTemplate != 0;

  return v3;
}

- (ipp_collection_t)FinishingsCol
{
  finishingTemplate = [(PKPrintSettings *)self->_printSettings finishingTemplate];
  if (finishingTemplate)
  {
    v3 = objc_opt_new();
    [v3 _addString:2 valueTag:68 name:@"finishing-template" lang:0 value:finishingTemplate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasFitToPage
{
  pageScale = [(PKPrintSettings *)self->_printSettings pageScale];
  v3 = pageScale != 0;

  return v3;
}

- (BOOL)FitToPage
{
  pageScale = [(PKPrintSettings *)self->_printSettings pageScale];
  v3 = pageScale;
  if (pageScale)
  {
    if ([pageScale isEqualToString:PKPageScaleDown])
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
  jobAccountID = [(PKPrintSettings *)self->_printSettings jobAccountID];
  v3 = jobAccountID != 0;

  return v3;
}

- (NSString)JobAccountID
{
  jobAccountID = [(PKPrintSettings *)self->_printSettings jobAccountID];
  precomposedStringWithCanonicalMapping = [jobAccountID precomposedStringWithCanonicalMapping];

  return precomposedStringWithCanonicalMapping;
}

- (NSString)JobName
{
  jobName = [(PKPrintSettings *)self->_printSettings jobName];
  precomposedStringWithCanonicalMapping = [jobName precomposedStringWithCanonicalMapping];

  return precomposedStringWithCanonicalMapping;
}

- (BOOL)hasMediaCol
{
  paper = [(PKPrintSettings *)self->_printSettings paper];
  v3 = paper != 0;

  return v3;
}

- (PKMediaCol)MediaCol
{
  paper = [(PKPrintSettings *)self->_printSettings paper];
  if (paper)
  {
    printerDescription = [(lite_printer_t *)self->_printer printerDescription];
    mediaColSupportedArray = [printerDescription mediaColSupportedArray];

    if ([mediaColSupportedArray containsObject:@"media-bottom-margin"] && objc_msgSend(mediaColSupportedArray, "containsObject:", @"media-top-margin") && objc_msgSend(mediaColSupportedArray, "containsObject:", @"media-left-margin"))
    {
      v6 = [mediaColSupportedArray containsObject:@"media-right-margin"];
    }

    else
    {
      v6 = 0;
    }

    v7 = [paper createMediaColAndDoMargins:v6];
    if (v7)
    {
      inputSlot = [(PKPrintSettings *)self->_printSettings inputSlot];
      v9 = inputSlot;
      if (inputSlot && ([inputSlot isEqualToString:@"auto"] & 1) == 0)
      {
        [v7 setMediaSource:v9];
      }

      mediaType = [(PKPrintSettings *)self->_printSettings mediaType];
      v11 = mediaType;
      if (mediaType && ([mediaType isEqualToString:@"auto"] & 1) == 0)
      {
        [v7 setMediaType:v11];
      }

      makeMediaCol = [v7 makeMediaCol];
    }

    else
    {
      makeMediaCol = 0;
    }
  }

  else
  {
    makeMediaCol = 0;
  }

  return makeMediaCol;
}

- (BOOL)hasOrientationRequested
{
  orientation = [(PKPrintSettings *)self->_printSettings orientation];
  v3 = orientation != 0;

  return v3;
}

- (int)OrientationRequested
{
  orientation = [(PKPrintSettings *)self->_printSettings orientation];
  if (orientation)
  {
    v7[0] = PKOrientationPortrait;
    v7[1] = PKOrientationLandscape;
    v8[0] = &off_1000B91E8;
    v8[1] = &off_1000B9200;
    v7[2] = PKOrientationReverseLandscape;
    v8[2] = &off_1000B9218;
    v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
    v4 = [v3 objectForKeyedSubscript:orientation];
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
  outputBin = [(PKPrintSettings *)self->_printSettings outputBin];
  v3 = outputBin != 0;

  return v3;
}

- (void)figureOutputOrPrintColorMode:(OutputOrPrintColorMode *)mode
{
  var0 = mode->var0;
  mode->var0 = 0;

  var1 = mode->var1;
  mode->var1 = 0;

  printerDescription = [(lite_printer_t *)self->_printer printerDescription];
  supportsPrintColorMode = [printerDescription supportsPrintColorMode];

  if (supportsPrintColorMode)
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
  v9[4] = &mode->var0;
  v11 = objc_retainBlock(v9);
  outputMode = [(PKPrintSettings *)self->_printSettings outputMode];
  printerDescription2 = [(lite_printer_t *)self->_printer printerDescription];
  outputModes = [printerDescription2 outputModes];

  if (outputModes && outputMode)
  {
    printQuality = [(job_spool_client_t *)self PrintQuality];
    v16 = PKOutputModeGray;
    if (printQuality == 5)
    {
      if ([outputMode isEqualToString:PKOutputModeGray])
      {
        v17 = PKOutputModeProcessGray;
        if ([outputModes containsObject:PKOutputModeProcessGray])
        {
          goto LABEL_16;
        }
      }
    }

    if ([outputMode isEqualToString:{v16, v18, v19}])
    {
      if (([outputModes containsObject:v16] & 1) == 0)
      {
        v17 = PKOutputModeAutoGray;
        if ([outputModes containsObject:PKOutputModeAutoGray])
        {
          goto LABEL_16;
        }
      }
    }

    if (([outputMode isEqualToString:PKOutputModeColor] & 1) == 0)
    {
      if ([outputModes containsObject:outputMode])
      {
        v17 = outputMode;
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
  pageRanges = [(PKPrintSettings *)self->_printSettings pageRanges];
  v3 = pageRanges != 0;

  return v3;
}

- (NSArray)PageRanges
{
  pageRanges = [(PKPrintSettings *)self->_printSettings pageRanges];
  if ([pageRanges count] == 2)
  {
    firstObject = [pageRanges firstObject];
    lastObject = [pageRanges lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [firstObject intValue];
        intValue2 = [lastObject intValue];
        if (intValue >= 1 && intValue2 >= intValue)
        {
          v7 = [NSValue valueWithRange:(intValue - 1), intValue2 - intValue + 1];
          v10 = v7;
          v8 = [NSArray arrayWithObjects:&v10 count:1];

          pageRanges = v8;
        }
      }
    }
  }

  return pageRanges;
}

- (BOOL)hasPresetName
{
  jobPresetName = [(PKPrintSettings *)self->_printSettings jobPresetName];
  v3 = jobPresetName != 0;

  return v3;
}

- (BOOL)hasPrintQuality
{
  printQuality = [(PKPrintSettings *)self->_printSettings printQuality];
  v3 = printQuality != 0;

  return v3;
}

- (int)PrintQuality
{
  printQuality = [(PKPrintSettings *)self->_printSettings printQuality];
  if (printQuality)
  {
    v7[0] = PKQualityHigh;
    v7[1] = PKQualityDraft;
    v8[0] = &off_1000B9218;
    v8[1] = &off_1000B91E8;
    v7[2] = PKQualityNormal;
    v8[2] = &off_1000B9200;
    v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
    v4 = [v3 objectForKeyedSubscript:printQuality];
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
    fileType = [(PKPrintSettings *)self->_printSettings fileType];
    v6 = [fileType caseInsensitiveCompare:@"application/pdf"];

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
  paper = [(PKPrintSettings *)self->_printSettings paper];
  if (paper)
  {
    printerDescription = [(lite_printer_t *)self->_printer printerDescription];
    specialFeedOrientation = [printerDescription specialFeedOrientation];

    if (!specialFeedOrientation)
    {
      goto LABEL_6;
    }

    baseName = [paper baseName];
    if (!baseName)
    {
      goto LABEL_6;
    }

    baseName2 = [paper baseName];
    v8 = [specialFeedOrientation objectForKey:baseName2];

    if (v8)
    {
      baseName3 = [paper baseName];
      v10 = [specialFeedOrientation objectForKey:baseName3];
      intValue = [v10 intValue];
    }

    else
    {
LABEL_6:
      intValue = 3;
    }
  }

  else
  {
    intValue = 3;
  }

  return intValue;
}

- (BOOL)hasSides
{
  duplex = [(PKPrintSettings *)self->_printSettings duplex];
  v3 = duplex != 0;

  return v3;
}

- (NSString)Sides
{
  duplex = [(PKPrintSettings *)self->_printSettings duplex];
  if (duplex && (-[lite_printer_t printerDescription](self->_printer, "printerDescription"), v4 = objc_claimAutoreleasedReturnValue(), [v4 sides], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", duplex), v5, v4, v6))
  {
    v7 = duplex;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)Media
{
  paper = [(PKPrintSettings *)self->_printSettings paper];
  baseName = [paper baseName];

  return baseName;
}

@end