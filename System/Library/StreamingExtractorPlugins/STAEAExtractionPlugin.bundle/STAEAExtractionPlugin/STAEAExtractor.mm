@interface STAEAExtractor
- (STAEAExtractor)initWithOptions:(id)options delegate:(id)delegate;
- (STExtractionPluginDelegate)delegate;
- (int)aeaContextCallback:(AEAContext_impl *)callback;
- (int)extractionProgress:(float)progress;
- (void)dealloc;
- (void)finishStreamWithCompletionBlock:(id)block;
- (void)invalidate;
- (void)prepareForExtractionToPath:(id)path withCompletionBlock:(id)block;
- (void)supplyBytes:(id)bytes withCompletionBlock:(id)block;
- (void)suspendStreamWithCompletionBlock:(id)block;
- (void)terminateStreamWithError:(id)error completionBlock:(id)block;
@end

@implementation STAEAExtractor

- (STAEAExtractor)initWithOptions:(id)options delegate:(id)delegate
{
  optionsCopy = options;
  delegateCopy = delegate;
  v8 = sub_124C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v36 = "[STAEAExtractor initWithOptions:delegate:]";
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Initializing extractor", buf, 0xCu);
  }

  self->_extractor = 0;
  self->_offset = 0;
  path = self->_path;
  self->_path = 0;

  session = self->_session;
  self->_session = 0;

  v34.receiver = self;
  v34.super_class = STAEAExtractor;
  v11 = [(STAEAExtractor *)&v34 init];
  if (v11)
  {
    v12 = [optionsCopy copy];
    options = v11->_options;
    v11->_options = v12;

    if (objc_opt_respondsToSelector())
    {
      sessionID = [delegateCopy sessionID];
      v15 = v11->_session;
      v11->_session = sessionID;
    }

    else
    {
      v15 = +[NSUUID UUID];
      uUIDString = [v15 UUIDString];
      v17 = v11->_session;
      v11->_session = uUIDString;
    }

    if (objc_opt_respondsToSelector())
    {
      v11->_usesReserveAccessPolicy = [delegateCopy usesReserveAccessPolicy];
    }

    v18 = sub_124C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v11->_session;
      if (v11->_usesReserveAccessPolicy)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      *buf = 138413058;
      v36 = v19;
      v37 = 2082;
      v38 = "[STAEAExtractor initWithOptions:delegate:]";
      v39 = 2112;
      v40 = v19;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: new AEA extractor (SessionID: %@, UsesReserveAccessPolicy: %@)", buf, 0x2Au);
    }

    v21 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorSymmetricEncryptionKey<Private>"];
    symmetricDecryptionKey = v11->_symmetricDecryptionKey;
    v11->_symmetricDecryptionKey = v21;

    if (v11->_symmetricDecryptionKey && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      sub_383C(v11);
    }

    else
    {
      v23 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorAsymmetricDecryptionKey<Private>"];
      asymmetricDecryptionKey = v11->_asymmetricDecryptionKey;
      v11->_asymmetricDecryptionKey = v23;

      if (v11->_asymmetricDecryptionKey && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        sub_3904(v11);
      }

      else
      {
        v25 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorSigningPublicKey<Private>"];
        signingPublicKey = v11->_signingPublicKey;
        v11->_signingPublicKey = v25;

        if (v11->_signingPublicKey && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          sub_39CC(v11);
        }

        else
        {
          v27 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorSourceDirectory"];
          sourceDirectory = v11->_sourceDirectory;
          v11->_sourceDirectory = v27;

          if (v11->_sourceDirectory && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            sub_3A94(v11);
          }

          else
          {
            v29 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorSourceDirectorySandboxExtension<Private>"];
            sourceDirectorySandboxExtension = v11->_sourceDirectorySandboxExtension;
            v11->_sourceDirectorySandboxExtension = v29;

            if (v11->_sourceDirectorySandboxExtension && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              sub_3B5C(v11);
            }

            else
            {
              v31 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorArchiveID"];
              archiveID = v11->_archiveID;
              v11->_archiveID = v31;

              if (!v11->_archiveID || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [(STAEAExtractor *)v11 setDelegate:delegateCopy];
                [(STAEAExtractor *)v11 setIsComplete:0];
                [(STAEAExtractor *)v11 setSandboxToken:-1];
                goto LABEL_27;
              }

              sub_3C24(v11);
            }
          }
        }
      }
    }

    v11 = 0;
  }

LABEL_27:

  return v11;
}

- (void)dealloc
{
  [(STAEAExtractor *)self invalidate];
  v3.receiver = self;
  v3.super_class = STAEAExtractor;
  [(STAEAExtractor *)&v3 dealloc];
}

- (void)invalidate
{
  p_extractor = &self->_extractor;
  if (self->_extractor)
  {
    AAAssetExtractorDestroy();
    *p_extractor = 0;
    p_extractor[1] = 0;
  }

  if ([(STAEAExtractor *)self sandboxToken]!= -1)
  {
    [(STAEAExtractor *)self sandboxToken];
    sandbox_extension_release();

    [(STAEAExtractor *)self setSandboxToken:-1];
  }
}

- (int)extractionProgress:(float)progress
{
  delegate = [(STAEAExtractor *)self delegate];

  if (delegate)
  {
    delegate2 = [(STAEAExtractor *)self delegate];
    [delegate2 setExtractionProgress:progress];
  }

  return 0;
}

- (int)aeaContextCallback:(AEAContext_impl *)callback
{
  archiveID = [(STAEAExtractor *)self archiveID];

  if (archiveID)
  {
    buf_size = 0;
    if (callback)
    {
      if (!AEAContextGetFieldBlob(callback, 0x12u, 0, 0x20uLL, buf, &buf_size))
      {
        v6 = [NSData dataWithBytesNoCopy:buf length:buf_size freeWhenDone:0];
        archiveID2 = [(STAEAExtractor *)self archiveID];
        v8 = [archiveID2 isEqualToData:v6];

        if (v8)
        {

          goto LABEL_6;
        }

        sub_3E28(self, v6, &v41);
LABEL_34:

LABEL_24:
        return -1;
      }

      sub_3CEC(self, &v40, &v41);
    }

    else
    {
      sub_3F8C(self, &v40, &v41);
    }

    v6 = v40;
    goto LABEL_34;
  }

LABEL_6:
  asymmetricDecryptionKey = [(STAEAExtractor *)self asymmetricDecryptionKey];

  if (asymmetricDecryptionKey)
  {
    v10 = sub_124C();
    v11 = v10;
    if (!callback)
    {
      sub_40C8(v10);
      return -1;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      session = self->_session;
      asymmetricDecryptionKey2 = [(STAEAExtractor *)self asymmetricDecryptionKey];
      v14 = [asymmetricDecryptionKey2 length];
      *buf = 138412802;
      v43 = session;
      v44 = 2082;
      v45 = "[STAEAExtractor aeaContextCallback:]";
      v46 = 2048;
      v47 = v14;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Setting asymmetric key on AEA context (%lu bytes)", buf, 0x20u);
    }

    asymmetricDecryptionKey3 = [(STAEAExtractor *)self asymmetricDecryptionKey];
    bytes = [asymmetricDecryptionKey3 bytes];
    asymmetricDecryptionKey4 = [(STAEAExtractor *)self asymmetricDecryptionKey];
    v18 = [asymmetricDecryptionKey4 length];
    callbackCopy2 = callback;
    v20 = 11;
    v21 = 1;
  }

  else
  {
    symmetricDecryptionKey = [(STAEAExtractor *)self symmetricDecryptionKey];

    if (!symmetricDecryptionKey)
    {
      goto LABEL_17;
    }

    v23 = sub_124C();
    v24 = v23;
    if (!callback)
    {
      sub_4300(v23);
      return -1;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_session;
      asymmetricDecryptionKey5 = [(STAEAExtractor *)self asymmetricDecryptionKey];
      v27 = [asymmetricDecryptionKey5 length];
      *buf = 138412802;
      v43 = v25;
      v44 = 2082;
      v45 = "[STAEAExtractor aeaContextCallback:]";
      v46 = 2048;
      v47 = v27;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Setting symmetric key on AEA context (%lu bytes)", buf, 0x20u);
    }

    asymmetricDecryptionKey3 = [(STAEAExtractor *)self symmetricDecryptionKey];
    bytes = [asymmetricDecryptionKey3 bytes];
    asymmetricDecryptionKey4 = [(STAEAExtractor *)self symmetricDecryptionKey];
    v18 = [asymmetricDecryptionKey4 length];
    callbackCopy2 = callback;
    v20 = 9;
    v21 = 0;
  }

  v28 = AEAContextSetFieldBlob(callbackCopy2, v20, v21, bytes, v18);

  if (v28 == -1)
  {
    sub_41E4();
    return -1;
  }

LABEL_17:
  signingPublicKey = [(STAEAExtractor *)self signingPublicKey];

  if (signingPublicKey)
  {
    if (!callback)
    {
      sub_45E0();
      return -1;
    }

    FieldUInt = AEAContextGetFieldUInt(callback, 0);
    if (FieldUInt <= 5 && ((1 << FieldUInt) & 0x2A) != 0)
    {
      v31 = sub_124C();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_441C();
      }

      v32 = STExtractorErrorDomain;
      v6 = [NSString stringWithFormat:@"Archive is not signed - signing key was provided"];
      v33 = sub_1238(v32, 6, v6, 0, "[STAEAExtractor aeaContextCallback:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 264);
      [(STAEAExtractor *)self setError:v33];

      goto LABEL_24;
    }

    signingPublicKey2 = [(STAEAExtractor *)self signingPublicKey];
    bytes2 = [signingPublicKey2 bytes];
    signingPublicKey3 = [(STAEAExtractor *)self signingPublicKey];
    v38 = AEAContextSetFieldBlob(callback, 7u, 1u, bytes2, [signingPublicKey3 length]);

    if (v38 == -1)
    {
      sub_44C4();
      return -1;
    }
  }

  return 0;
}

- (void)prepareForExtractionToPath:(id)path withCompletionBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  v9 = sub_124C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    session = self->_session;
    *buf = 138412802;
    *&buf[4] = session;
    v32 = 2082;
    v33 = "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]";
    v34 = 2112;
    v35 = pathCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Preparing to extract to %@", buf, 0x20u);
  }

  objc_storeStrong(&self->_path, path);
  if ([(STAEAExtractor *)self usesReserveAccessPolicy])
  {
    v30 = 0;
    v11 = [STReservableSpacePolicy threadPolicyWithErrorPtr:&v30];
    v12 = v30;
    if (!v11)
    {
      v13 = sub_124C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_46FC(self, v12);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  AAThreadErrorContextEnter();
  [pathCopy UTF8String];
  v14 = AAAssetExtractorCreate();
  self->_extractor = v14;
  v15 = sub_124C();
  v16 = v15;
  if (!v14)
  {
    sub_4E54(v15, buf);
LABEL_30:
    v29 = *buf;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_session;
    offset = self->_offset;
    *buf = 138412802;
    *&buf[4] = v17;
    v32 = 2082;
    v33 = "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]";
    v34 = 2048;
    v35 = offset;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: starting extraction offset: %llu", buf, 0x20u);
  }

  sourceDirectory = [(STAEAExtractor *)self sourceDirectory];

  if (sourceDirectory)
  {
    sourceDirectorySandboxExtension = [(STAEAExtractor *)self sourceDirectorySandboxExtension];

    if (sourceDirectorySandboxExtension)
    {
      sourceDirectorySandboxExtension2 = [(STAEAExtractor *)self sourceDirectorySandboxExtension];
      [sourceDirectorySandboxExtension2 UTF8String];
      [(STAEAExtractor *)self setSandboxToken:sandbox_extension_consume()];

      if ([(STAEAExtractor *)self sandboxToken]== -1)
      {
        sub_479C(buf);
        goto LABEL_30;
      }
    }

    extractor = self->_extractor;
    sourceDirectory2 = [(STAEAExtractor *)self sourceDirectory];
    [sourceDirectory2 UTF8String];
    v24 = AAAssetExtractorSetParameterPtr();

    if (v24)
    {
      sub_48F0(self, v24, buf);
      goto LABEL_30;
    }
  }

  v25 = self->_extractor;
  if (AAAssetExtractorSetParameterCallback())
  {
    sub_4A24();
    goto LABEL_30;
  }

  v26 = self->_extractor;
  if (AAAssetExtractorSetParameterCallback())
  {
    sub_4B30();
    goto LABEL_30;
  }

  v27 = self->_extractor;
  if (AAAssetExtractorSetParameterCallback())
  {
    sub_4C3C();
    goto LABEL_30;
  }

  v28 = self->_extractor;
  if (AAAssetExtractorSetParameterPtr())
  {
    sub_4D48();
    goto LABEL_30;
  }

  AAThreadErrorContextLeave();
  v29 = 0;
LABEL_22:
  blockCopy[2](blockCopy, self->_offset, v29);
}

- (void)supplyBytes:(id)bytes withCompletionBlock:(id)block
{
  bytesCopy = bytes;
  blockCopy = block;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_2894;
  v39 = sub_28A4;
  v40 = 0;
  v8 = [bytesCopy length];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  error = [(STAEAExtractor *)self error];
  v10 = error == 0;

  if (!v10)
  {
    v23 = sub_124C();
    sub_5024(v23);
LABEL_23:
    v12 = 0;
    goto LABEL_13;
  }

  if (!self->_extractor)
  {
    v24 = sub_124C();
    sub_51EC(v24);

    v25 = STExtractorErrorDomain;
    v26 = [NSString stringWithFormat:@"Extractor is NULL"];
    v27 = sub_1238(v25, 1, v26, 0, "[STAEAExtractor supplyBytes:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 415);
    v28 = v36[5];
    v36[5] = v27;

    goto LABEL_23;
  }

  v11 = sub_124C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_50F0(self);
  }

  if ([(STAEAExtractor *)self usesReserveAccessPolicy])
  {
    v30 = 0;
    v12 = [STReservableSpacePolicy threadPolicyWithErrorPtr:&v30];
    v13 = v30;
    if (!v12)
    {
      v14 = sub_124C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        session = self->_session;
        v16 = [v13 debugDescription];
        sub_5170(session, v16, buf, v14);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  AAThreadErrorContextEnter();
  *(v32 + 24) = 1;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_28AC;
  v29[3] = &unk_C2F8;
  v29[4] = self;
  v29[5] = &v35;
  v29[6] = &v31;
  v29[7] = v8;
  [bytesCopy enumerateByteRangesUsingBlock:v29];
LABEL_13:
  if (*(v32 + 24) == 1)
  {
    AAThreadErrorContextLeave();
  }

  if (v36[5])
  {
    error2 = [(STAEAExtractor *)self error];
    v18 = error2 == 0;

    if (v18)
    {
      [(STAEAExtractor *)self setError:v36[5]];
    }
  }

  else
  {
    error3 = [(STAEAExtractor *)self error];
    v20 = error3 == 0;

    if (!v20)
    {
      error4 = [(STAEAExtractor *)self error];
      v22 = v36[5];
      v36[5] = error4;
    }
  }

  blockCopy[2](blockCopy, v36[5], [(STAEAExtractor *)self isComplete]!= 0);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
}

- (void)suspendStreamWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = sub_124C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    session = self->_session;
    *buf = 138412546;
    *&buf[4] = session;
    v29 = 2082;
    v30 = "[STAEAExtractor suspendStreamWithCompletionBlock:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Suspending extraction", buf, 0x16u);
  }

  if ([(STAEAExtractor *)self usesReserveAccessPolicy])
  {
    v27 = 0;
    v7 = [STReservableSpacePolicy threadPolicyWithErrorPtr:&v27];
    v8 = v27;
    if (!v7)
    {
      v9 = sub_124C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_5454(self, v8);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if (self->_extractor)
  {
    AAThreadErrorContextEnter();
    v10 = sub_124C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_session;
      *buf = 138412546;
      *&buf[4] = v11;
      v29 = 2082;
      v30 = "[STAEAExtractor suspendStreamWithCompletionBlock:]";
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Calling AAAssetExtractorDestroy()", buf, 0x16u);
    }

    extractor = self->_extractor;
    v13 = AAAssetExtractorDestroy();
    self->_extractor = 0;
    if (v13 >= 2)
    {
      sub_54F4();
      v21 = *buf;
    }

    else
    {
      v14 = sub_124C();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13 == 1)
      {
        if (v15)
        {
          v16 = self->_session;
          offset = self->_offset;
          *buf = 138412802;
          *&buf[4] = v16;
          v29 = 2082;
          v30 = "[STAEAExtractor suspendStreamWithCompletionBlock:]";
          v31 = 2048;
          v32 = offset;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: successfully suspended stream with offset: %llu", buf, 0x20u);
        }
      }

      else
      {
        if (v15)
        {
          v22 = self->_session;
          v23 = self->_offset;
          *buf = 138412802;
          *&buf[4] = v22;
          v29 = 2082;
          v30 = "[STAEAExtractor suspendStreamWithCompletionBlock:]";
          v31 = 2048;
          v32 = v23;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: AAAssetExtractorDestroy() was successful but stream was not suspended (offset: %llu) - stream was already complete", buf, 0x20u);
        }

        self->_offset = 0;
      }

      AAThreadErrorContextLeave();
      v21 = 0;
    }
  }

  else
  {
    v18 = sub_124C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_5600(self);
    }

    v19 = STExtractorErrorDomain;
    v20 = [NSString stringWithFormat:@"No extractor to suspend"];
    v21 = sub_1238(v19, 7, v20, 0, "[STAEAExtractor suspendStreamWithCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 519);
  }

  error = [(STAEAExtractor *)self error];

  if (!error && v21)
  {
    [(STAEAExtractor *)self setError:v21];
  }

  v25 = self->_offset;
  error2 = [(STAEAExtractor *)self error];
  blockCopy[2](blockCopy, v25, error2);
}

- (void)finishStreamWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = sub_124C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    session = self->_session;
    *buf = 138412546;
    v23 = session;
    v24 = 2082;
    v25 = "[STAEAExtractor finishStreamWithCompletionBlock:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Finishing extraction", buf, 0x16u);
  }

  if ([(STAEAExtractor *)self usesReserveAccessPolicy])
  {
    v21 = 0;
    v7 = [STReservableSpacePolicy threadPolicyWithErrorPtr:&v21];
    v8 = v21;
    if (!v7)
    {
      v9 = sub_124C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_5680(self, v8);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  p_extractor = &self->_extractor;
  if (!self->_extractor)
  {
    goto LABEL_19;
  }

  AAThreadErrorContextEnter();
  v11 = sub_124C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_session;
    *buf = 138412546;
    v23 = v12;
    v24 = 2082;
    v25 = "[STAEAExtractor finishStreamWithCompletionBlock:]";
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Calling AAAssetExtractorDestroy()", buf, 0x16u);
  }

  v13 = *p_extractor;
  v14 = AAAssetExtractorDestroy();
  *p_extractor = 0;
  self->_offset = 0;
  if (!v14)
  {
    AAThreadErrorContextLeave();
LABEL_19:
    v20 = 0;
    goto LABEL_22;
  }

  v15 = v14;
  v16 = sub_124C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_5720(self);
  }

  if (v15 < 1)
  {
    v17 = [NSString stringWithFormat:@"Couldn't destroy extractor (%d)", v15];
    v18 = v17;
    v19 = 566;
  }

  else
  {
    v17 = [NSString stringWithFormat:@"Extraction not complete (%d)", v15];
    v18 = v17;
    v19 = 564;
  }

  v20 = STCreateAEAError(v17, "[STAEAExtractor finishStreamWithCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", v19);

LABEL_22:
  blockCopy[2](blockCopy, v20);
}

- (void)terminateStreamWithError:(id)error completionBlock:(id)block
{
  errorCopy = error;
  blockCopy = block;
  v8 = sub_124C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_579C(self);
  }

  if ([(STAEAExtractor *)self usesReserveAccessPolicy])
  {
    v18 = 0;
    v9 = [STReservableSpacePolicy threadPolicyWithErrorPtr:&v18];
    v10 = v18;
    if (!v9)
    {
      v11 = sub_124C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_5824(self, v10);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  p_extractor = &self->_extractor;
  if (self->_extractor)
  {
    v13 = sub_124C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      session = self->_session;
      *buf = 138412546;
      v20 = session;
      v21 = 2082;
      v22 = "[STAEAExtractor terminateStreamWithError:completionBlock:]";
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Calling AAAssetExtractorDestroy", buf, 0x16u);
    }

    v15 = *p_extractor;
    v16 = AAAssetExtractorDestroy();
    *p_extractor = 0;
    self->_offset = 0;
    if (v16)
    {
      v17 = sub_124C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_58C4(self);
      }
    }
  }

  blockCopy[2](blockCopy, errorCopy);
}

- (STExtractionPluginDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end