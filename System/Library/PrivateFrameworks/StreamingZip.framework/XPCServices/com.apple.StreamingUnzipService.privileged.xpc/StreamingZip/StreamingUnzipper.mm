@interface StreamingUnzipper
- (NSXPCConnection)xpcConnection;
- (StreamingUnzipDelegateProtocol)inProcessExtractorDelegate;
- (id)initForClient:(id)a3 connection:(id)a4;
- (void)dealloc;
- (void)finishStreamWithReply:(id)a3;
- (void)getPidForTestingWithReply:(id)a3;
- (void)setActiveDelegateMethods:(int)a3;
- (void)setupUnzipperWithOutputPath:(id)a3 sandboxExtensionToken:(char *)a4 options:(id)a5 withReply:(id)a6;
- (void)streamingFileWriter:(id)a3 didEncounterError:(id)a4;
- (void)supplyBytes:(id)a3 withReply:(id)a4;
- (void)suspendStreamWithReply:(id)a3;
- (void)terminateStreamWithReply:(id)a3;
@end

@implementation StreamingUnzipper

- (StreamingUnzipDelegateProtocol)inProcessExtractorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->inProcessExtractorDelegate);

  return WeakRetained;
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)getPidForTestingWithReply:(id)a3
{
  v5 = a3;
  v4 = getpid();
  (*(a3 + 2))(v5, v4, 0);
}

- (void)terminateStreamWithReply:(id)a3
{
  v4 = a3;
  if (!self->_currentState)
  {
    v11 = sub_10000126C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unzipper did not have any state, but the client was terminating the stream anyway. : %@", buf, 0xCu);
    }

    v9 = @"Unzipper did not have any state, but the client was terminating the stream anyway.";
    v10 = 2027;
    goto LABEL_9;
  }

  v5 = [(StreamingUnzipper *)self teardownInitiated];
  v6 = sub_10000126C();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Teardown has been started for this extractor, but the client has made another concurrent call to this extractor while its teardown is pending. Concurrently calling methods on a SZExtractor instance is not supported. : %@", buf, 0xCu);
    }

    v9 = @"Teardown has been started for this extractor, but the client has made another concurrent call to this extractor while its teardown is pending. Concurrently calling methods on a SZExtractor instance is not supported.";
    v10 = 2033;
LABEL_9:
    v12 = sub_1000015F4("[StreamingUnzipper terminateStreamWithReply:]", v10, @"SZExtractorErrorDomain", 3, 0, 0, v9, v8, v14[0]);
    v4[2](v4, v12);

    goto LABEL_13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(StreamingUnzipState *)self->_currentState unzipPath];
    *buf = 138412290;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Terminating extraction for %@", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001DE8;
  v14[3] = &unk_100028918;
  v14[4] = self;
  v15 = v4;
  sub_100001E30(self, v14);

LABEL_13:
}

- (void)finishStreamWithReply:(id)a3
{
  v4 = a3;
  if (!self->_currentState)
  {
    v11 = sub_10000126C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unzipper did not have any state! Client should suspend stream and resume from the given offset. : %@", buf, 0xCu);
    }

    v9 = @"Unzipper did not have any state! Client should suspend stream and resume from the given offset.";
    v10 = 1995;
    goto LABEL_9;
  }

  v5 = [(StreamingUnzipper *)self teardownInitiated];
  v6 = sub_10000126C();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Teardown has been started for this extractor, but the client has made another concurrent call to this extractor while its teardown is pending. Concurrently calling methods on a SZExtractor instance is not supported. : %@", buf, 0xCu);
    }

    v9 = @"Teardown has been started for this extractor, but the client has made another concurrent call to this extractor while its teardown is pending. Concurrently calling methods on a SZExtractor instance is not supported.";
    v10 = 2001;
LABEL_9:
    v12 = sub_1000015F4("[StreamingUnzipper finishStreamWithReply:]", v10, @"SZExtractorErrorDomain", 3, 0, 0, v9, v8, v14[0]);
    v4[2](v4, v12);

    goto LABEL_13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(StreamingUnzipState *)self->_currentState unzipPath];
    *buf = 138412290;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finishing extraction for %@", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002394;
  v14[3] = &unk_100028918;
  v14[4] = self;
  v15 = v4;
  sub_100001E30(self, v14);

LABEL_13:
}

- (void)suspendStreamWithReply:(id)a3
{
  v4 = a3;
  if (!self->_currentState)
  {
    v11 = sub_10000126C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unzipper did not have any state! Client should suspend stream and resume from the given offset. : %@", buf, 0xCu);
    }

    v9 = @"Unzipper did not have any state! Client should suspend stream and resume from the given offset.";
    v10 = 1839;
    goto LABEL_9;
  }

  v5 = [(StreamingUnzipper *)self teardownInitiated];
  v6 = sub_10000126C();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Teardown has been started for this extractor, but the client has made another concurrent call to this extractor while its teardown is pending. Concurrently calling methods on a SZExtractor instance is not supported. : %@", buf, 0xCu);
    }

    v9 = @"Teardown has been started for this extractor, but the client has made another concurrent call to this extractor while its teardown is pending. Concurrently calling methods on a SZExtractor instance is not supported.";
    v10 = 1845;
LABEL_9:
    v12 = sub_1000015F4("[StreamingUnzipper suspendStreamWithReply:]", v10, @"SZExtractorErrorDomain", 3, 0, 0, v9, v8, v15[0]);
    v4[2](v4, 0, v12);

    goto LABEL_13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(StreamingUnzipState *)self->_currentState currentOffset];
    v14 = [(StreamingUnzipState *)self->_currentState unzipPath];
    *buf = 134218242;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Suspending extraction at offset %llu for %@", buf, 0x16u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000393C;
  v15[3] = &unk_100028918;
  v15[4] = self;
  v16 = v4;
  sub_100001E30(self, v15);

LABEL_13:
}

- (void)supplyBytes:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(StreamingUnzipper *)self teardownInitiated])
  {
    v8 = sub_10000126C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v21) = 138412290;
      *(&v21 + 4) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Teardown has been started for this extractor, but the client has made another concurrent call to this extractor while its teardown is pending. Concurrently calling methods on a SZExtractor instance is not supported. : %@", &v21, 0xCu);
    }

    v10 = sub_1000015F4("[StreamingUnzipper supplyBytes:withReply:]", 1781, @"SZExtractorErrorDomain", 3, 0, 0, @"Teardown has been started for this extractor, but the client has made another concurrent call to this extractor while its teardown is pending. Concurrently calling methods on a SZExtractor instance is not supported.", v9, v14[0]);
    v7[2](v7, v10, 1);
  }

  else
  {
    *&v21 = 0;
    *(&v21 + 1) = &v21;
    v22 = 0x3032000000;
    v23 = sub_100003D88;
    v24 = sub_100003D98;
    v25 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11 = [v6 length];
    v12 = sub_100001314();
    if (os_signpost_enabled(v12))
    {
      *buf = 134217984;
      v20 = v11;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SUPPLY_BYTES_UNZIP_SERVICE", "Begin processing %lu bytes in StreamingUnzipper", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003DA0;
    v14[3] = &unk_100028888;
    v14[4] = self;
    v14[5] = &v21;
    v14[6] = &v15;
    v14[7] = v11;
    [v6 enumerateByteRangesUsingBlock:v14];
    v13 = sub_100001314();
    if (os_signpost_enabled(v13))
    {
      *buf = 134217984;
      v20 = v11;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SUPPLY_BYTES_UNZIP_SERVICE", "End processing %lu bytes in StreamingUnzipper", buf, 0xCu);
    }

    v7[2](v7, *(*(&v21 + 1) + 40), *(v16 + 24));
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }
}

- (void)dealloc
{
  v3 = sub_10000126C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(StreamingUnzipState *)self->_currentState unzipPath];
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deallocating state for extraction to %@", buf, 0xCu);
  }

  sessionTransaction = self->_sessionTransaction;
  self->_sessionTransaction = 0;

  free(self->_decompressionOutputBuffer);
  if (self->_sandboxToken)
  {
    sandbox_extension_release();
  }

  v6.receiver = self;
  v6.super_class = StreamingUnzipper;
  [(StreamingUnzipper *)&v6 dealloc];
}

- (void)streamingFileWriter:(id)a3 didEncounterError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000126C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "StreamingFileWriter %@ encountered error %@", &v9, 0x16u);
  }

  os_unfair_lock_lock(&self->_asyncErrorLock);
  if (!self->_asyncError)
  {
    objc_storeStrong(&self->_asyncError, a4);
  }

  os_unfair_lock_unlock(&self->_asyncErrorLock);
}

- (void)setActiveDelegateMethods:(int)a3
{
  v5 = sub_10000126C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set active delegate methods to 0x%x", v6, 8u);
  }

  self->_activeDelegateMethods = a3;
}

- (void)setupUnzipperWithOutputPath:(id)a3 sandboxExtensionToken:(char *)a4 options:(id)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v11 objectForKey:@"SZExtractorOptionsAssertQOS"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [v11 objectForKey:@"SZExtractorOptionsAssertQOS"];
    v16 = [v15 unsignedIntValue];

    v17 = qos_class_self();
    if (v17 != v16)
    {
      v34 = v17;
      v35 = sub_10000126C();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *&buf[4] = v16;
        *&buf[8] = 1024;
        *&buf[10] = v34;
        *&buf[14] = 2112;
        *&buf[16] = 0;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Streaming Unzipper running with unexpected QOS: expected=0x%x actual=0x%x : %@", buf, 0x18u);
      }

      sub_1000015F4("[StreamingUnzipper setupUnzipperWithOutputPath:sandboxExtensionToken:options:withReply:]", 91, NSPOSIXErrorDomain, 22, 0, 0, @"Streaming Unzipper running with unexpected QOS: expected=0x%x actual=0x%x", v36, v16);
      goto LABEL_32;
    }
  }

  v18 = [v11 objectForKey:@"SZExtractorOptionsNoPassthrough"];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v20 = [v11 objectForKey:@"SZExtractorOptionsNoPassthrough"];
    self->_passthroughEnabled = [v20 BOOLValue] ^ 1;
  }

  if (a4)
  {
    v21 = sandbox_extension_consume();
    self->_sandboxToken = v21;
    if (v21 == -1)
    {
      v37 = *__error();
      v38 = sub_10000126C();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = strerror(v37);
        *&buf[22] = 1024;
        *&buf[24] = v37;
        *&buf[28] = 2112;
        *&buf[30] = 0;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to consume sandbox extension token for %@ : %s (%d) : %@", buf, 0x26u);
      }

      strerror(v37);
      sub_1000015F4("[StreamingUnzipper setupUnzipperWithOutputPath:sandboxExtensionToken:options:withReply:]", 106, NSPOSIXErrorDomain, v37, 0, 0, @"Failed to consume sandbox extension token for %@ : %s (%d)", v39, v10);
      goto LABEL_32;
    }
  }

  if (self->_hasConnection)
  {
    v22 = [v10 fileSystemRepresentation];
    v23 = *&self->_auditToken.val[4];
    *buf = *self->_auditToken.val;
    *&buf[16] = v23;
    v45 = v22;
    v24 = sandbox_check_by_audit_token();
    if (v24)
    {
      if (v24 == -1)
      {
        v25 = *__error();
      }

      else
      {
        v25 = 1;
      }

      v41 = sub_10000126C();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = strerror(v25);
        *&buf[22] = 1024;
        *&buf[24] = v25;
        *&buf[28] = 2112;
        *&buf[30] = 0;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Cannot write to path %@ : %s (%d) : %@", buf, 0x26u);
      }

      strerror(v25);
      sub_1000015F4("[StreamingUnzipper setupUnzipperWithOutputPath:sandboxExtensionToken:options:withReply:]", 118, NSPOSIXErrorDomain, v25, 0, 0, @"Cannot write to path %@ : %s (%d)", v42, v10);
      v31 = LABEL_32:;
      v12[2](v12, v31, 0);
      goto LABEL_33;
    }
  }

  v26 = sub_10000126C();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v11 objectForKey:@"SZExtractorOptionsHashedChunkSize"];
    v28 = [v27 unsignedLongLongValue];
    v29 = [v11 objectForKey:@"SZExtractorOptionsHashesArray"];
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2048;
    *&buf[14] = v28;
    *&buf[22] = 2112;
    *&buf[24] = v29;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Initialized with path %@ ; hashed chunk size %llu ; hashes %@", buf, 0x20u);
  }

  v46 = 0;
  v30 = [StreamingUnzipState unzipStateWithPath:v10 options:v11 error:&v46];
  v31 = v46;
  currentState = self->_currentState;
  self->_currentState = v30;

  v33 = self->_currentState;
  if (!v31)
  {
    if (!v33)
    {
      __assert_rtn("[StreamingUnzipper setupUnzipperWithOutputPath:sandboxExtensionToken:options:withReply:]", "StreamingUnzipper.m", 130, "error || _currentState");
    }

    goto LABEL_23;
  }

  if (v33)
  {
LABEL_23:
    if (setxattr([v10 fileSystemRepresentation], "com.apple.streamingzip.incomplete_extraction", "y", 1uLL, 0, 1))
    {
      v40 = sub_10000126C();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v43 = __error();
        v44 = strerror(*v43);
        *buf = 138412546;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = v44;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to set incomplete extraction xattr on %@ : %s", buf, 0x16u);
      }
    }
  }

  v12[2](v12, v31, [(StreamingUnzipState *)self->_currentState currentOffset]);
LABEL_33:
}

- (id)initForClient:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = StreamingUnzipper;
  v8 = [(StreamingUnzipper *)&v18 init];
  if (v8)
  {
    v9 = [NSString stringWithFormat:@"Unzip session on behalf of %@", v6];
    [v9 UTF8String];
    v10 = os_transaction_create();
    v11 = *(v8 + 9);
    *(v8 + 9) = v10;

    v12 = dispatch_group_create();
    v13 = *(v8 + 12);
    *(v8 + 12) = v12;

    if (v7)
    {
      objc_storeWeak(v8 + 15, v7);
      v8[8] = 1;
      [v7 auditToken];
      v14 = v16;
      *(v8 + 28) = v17;
    }

    else
    {
      *&v14 = -1;
      *(&v14 + 1) = -1;
      *(v8 + 28) = v14;
    }

    *(v8 + 12) = v14;
    *(v8 + 58) = 1;
  }

  return v8;
}

@end