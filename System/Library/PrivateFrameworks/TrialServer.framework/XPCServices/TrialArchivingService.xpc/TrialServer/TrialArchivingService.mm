@interface TrialArchivingService
- (BOOL)_isValidDestinationPath:(id)path;
- (double)_deferralDelaySecondsForTesting;
- (void)appleIntelligenceState:(id)state;
- (void)appleIntelligenceStateWithUseCaseIDs:(id)ds handler:(id)handler;
- (void)applyPatchWithFilename:(id)filename patchExtension:(id)extension toSrcDir:(id)dir srcDirExtension:(id)dirExtension writingToDestDir:(id)destDir destDirExtension:(id)destDirExtension postPatchCompression:(unint64_t)compression completion:(id)self0;
- (void)decryptAssetWithURL:(id)l toDestinationFileURL:(id)rL namespaceName:(id)name sourceExtension:(id)extension destinationExtension:(id)destinationExtension completion:(id)completion;
- (void)extractArchiveFromHandle:(id)handle withArchiveName:(id)name toDirectory:(id)directory destDirExtension:(id)extension postExtractionCompression:(unint64_t)compression completion:(id)completion;
- (void)mapsDeviceCountryCode:(id)code;
- (void)removeCachedANESegmentsForModelAtURL:(id)l pathExtension:(id)extension completion:(id)completion;
@end

@implementation TrialArchivingService

- (double)_deferralDelaySecondsForTesting
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.triald"];
  v3 = v2;
  v4 = 0.0;
  if (v2)
  {
    v5 = [v2 objectForKey:@"com.apple.trial.TrialArchivingService.test.deferralDelaySec"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 doubleValue];
        v4 = v6;
        v7 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 134217984;
          v10 = v4;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling integration test config: %g sec idle time added to deferral checks.", &v9, 0xCu);
        }
      }
    }
  }

  return v4;
}

- (BOOL)_isValidDestinationPath:(id)path
{
  pathCopy = path;
  v4 = +[TRIStandardPaths sharedPaths];
  trialRootDir = [v4 trialRootDir];
  triStringByResolvingSymlinksInPath = [trialRootDir triStringByResolvingSymlinksInPath];

  triStringByResolvingSymlinksInPath2 = [pathCopy triStringByResolvingSymlinksInPath];

  LOBYTE(pathCopy) = [triStringByResolvingSymlinksInPath2 hasPrefix:triStringByResolvingSymlinksInPath];
  return pathCopy;
}

- (void)extractArchiveFromHandle:(id)handle withArchiveName:(id)name toDirectory:(id)directory destDirExtension:(id)extension postExtractionCompression:(unint64_t)compression completion:(id)completion
{
  handleCopy = handle;
  nameCopy = name;
  directoryCopy = directory;
  extensionCopy = extension;
  completionCopy = completion;
  path = [directoryCopy path];
  v20 = [(TrialArchivingService *)self _isValidDestinationPath:path];

  if (v20)
  {
    if (handleCopy)
    {
      if (directoryCopy)
      {
        if (extensionCopy)
        {
          [extensionCopy UTF8String];
          v21 = sandbox_extension_consume();
          out_token = -1;
          if (v21 == -1)
          {
            v22 = TRILogCategory_Archiving();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v37 = __error();
              v38 = strerror(*v37);
              v39 = *__error();
              *buf = 136315394;
              *&buf[4] = v38;
              *&buf[12] = 1024;
              *&buf[14] = v39;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to consume a sandbox extension: err %s errno %d", buf, 0x12u);
            }
          }

          v23 = TRILogCategory_Archiving();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            absoluteString = [directoryCopy absoluteString];
            *buf = 138412802;
            *&buf[4] = nameCopy;
            *&buf[12] = 2112;
            *&buf[14] = handleCopy;
            *&buf[22] = 2112;
            v46 = absoluteString;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "starting unarchiving of %@ with handle %@ to %@", buf, 0x20u);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v46) = 0;
          v25 = dispatch_get_global_queue(17, 0);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100002DB4;
          handler[3] = &unk_100010540;
          handler[4] = buf;
          v26 = notify_register_dispatch("com.apple.trial.TrialArchivingService.shouldDefer", &out_token, v25, handler);

          if (v26)
          {
            v27 = TRILogCategory_Archiving();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *v43 = 67109120;
              LODWORD(v44) = v26;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "failed to register for deferral notification: %u", v43, 8u);
            }
          }

          [(TrialArchivingService *)self _deferralDelaySecondsForTesting];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_100002E70;
          v40[3] = &unk_100010568;
          v40[5] = v28;
          v40[4] = buf;
          v29 = objc_retainBlock(v40);
          v30 = [TRIArchiveExtractor extractArchiveFromHandle:handleCopy toDestinationDirectoryURL:directoryCopy maxUnarchivedSize:64000000000 archiveIdentifier:nameCopy postExtractionCompression:compression shouldDefer:v29];
          switch(v30)
          {
            case 0u:
              v31 = TRILogCategory_Archiving();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *v43 = 138412290;
                v44 = nameCopy;
                _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "failed to extract archive: %@", v43, 0xCu);
              }

              break;
            case 1u:
              v31 = TRILogCategory_Archiving();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *v43 = 138412290;
                v44 = nameCopy;
                v32 = "successfully extracted archive: %@";
                goto LABEL_38;
              }

              break;
            case 2u:
              v31 = TRILogCategory_Archiving();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *v43 = 138412290;
                v44 = nameCopy;
                v32 = "deferred before full extraction of archive: %@";
LABEL_38:
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, v43, 0xCu);
              }

              break;
            default:
LABEL_42:
              if (completionCopy)
              {
                completionCopy[2](completionCopy, v30);
              }

              _Block_object_dispose(buf, 8);
              if (!v26)
              {
                notify_cancel(out_token);
              }

              if (v21 != -1)
              {
                sandbox_extension_release();
              }

              goto LABEL_48;
          }

          goto LABEL_42;
        }

        v36 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = directoryCopy;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "no sandbox extension provided for destination %@", buf, 0xCu);
        }

        if (completionCopy)
        {
LABEL_35:
          completionCopy[2](completionCopy, 0);
        }
      }

      else
      {
        v35 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = nameCopy;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "no destination directory provided for extraction of archive %@", buf, 0xCu);
        }

        if (completionCopy)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v34 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = nameCopy;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "no handle provided for archive %@", buf, 0xCu);
      }

      if (completionCopy)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v33 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = directoryCopy;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Invalid path sent to TrialArchivingService %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      goto LABEL_35;
    }
  }

LABEL_48:
}

- (void)decryptAssetWithURL:(id)l toDestinationFileURL:(id)rL namespaceName:(id)name sourceExtension:(id)extension destinationExtension:(id)destinationExtension completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  extensionCopy = extension;
  destinationExtensionCopy = destinationExtension;
  completionCopy = completion;
  path = [rLCopy path];
  LOBYTE(self) = [(TrialArchivingService *)self _isValidDestinationPath:path];

  if (self)
  {
    if (lCopy && rLCopy && extensionCopy && destinationExtensionCopy)
    {
      [extensionCopy UTF8String];
      v21 = sandbox_extension_consume();
      [destinationExtensionCopy UTF8String];
      v32 = sandbox_extension_consume();
      if (v21 == -1 || v32 == -1)
      {
        v22 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to consume a sandbox extension", buf, 2u);
        }
      }

      v23 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        absoluteString = [rLCopy absoluteString];
        *buf = 138412546;
        v34 = lCopy;
        v35 = 2112;
        v36 = absoluteString;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "starting decrypting asset with URL %@ to %@", buf, 0x16u);
      }

      v25 = [TRINamespaceKeyLocator keyFileURLForNamespace:nameCopy asymmetric:0];
      if (v25)
      {
        v26 = [TRIAssetDecrypter decryptAssetWithURL:lCopy destinationFileURL:rLCopy keyFileURL:v25];
        v27 = TRILogCategory_Archiving();
        v28 = v27;
        if (v26)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "successfully decrypted asset", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v34 = lCopy;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to decrypt asset: %@", buf, 0xCu);
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, v26);
        }
      }

      else
      {
        v30 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v34 = nameCopy;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unable to find decryption key for namespace name: %@", buf, 0xCu);
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }
      }

      if (v32 != -1)
      {
        sandbox_extension_release();
      }

      if (v21 != -1)
      {
        sandbox_extension_release();
      }

      goto LABEL_36;
    }

    v29 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "nil parameter provided to decryptAssetWithURL", buf, 2u);
    }
  }

  else
  {
    v29 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      path2 = [rLCopy path];
      *buf = 138412290;
      v34 = path2;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Invalid path sent to TrialArchivingService %@", buf, 0xCu);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_36:
}

- (void)applyPatchWithFilename:(id)filename patchExtension:(id)extension toSrcDir:(id)dir srcDirExtension:(id)dirExtension writingToDestDir:(id)destDir destDirExtension:(id)destDirExtension postPatchCompression:(unint64_t)compression completion:(id)self0
{
  filenameCopy = filename;
  extensionCopy = extension;
  dirCopy = dir;
  dirExtensionCopy = dirExtension;
  destDirCopy = destDir;
  destDirExtensionCopy = destDirExtension;
  completionCopy = completion;
  if (![(TrialArchivingService *)self _isValidDestinationPath:destDirCopy])
  {
    v38 = [NSError alloc];
    v65 = NSLocalizedDescriptionKey;
    v66 = @"Invalid path passed to applyPatchWithFilename";
    v39 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v40 = [v38 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v39];

    v41 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = destDirCopy;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Invalid path sent to TrialArchivingService %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v40);
    }

    goto LABEL_29;
  }

  v22 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v56 = dirCopy;
    v57 = 2112;
    v58 = filenameCopy;
    v59 = 2112;
    v60 = destDirCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "started applying directory patch: %@ + %@ --> %@", buf, 0x20u);
  }

  v23 = extensionCopy;
  uTF8String = [extensionCopy UTF8String];
  v25 = dirExtensionCopy;
  uTF8String2 = [dirExtensionCopy UTF8String];
  v27 = destDirExtensionCopy;
  uTF8String3 = [destDirExtensionCopy UTF8String];
  if (!destDirCopy || !dirCopy || !filenameCopy || !uTF8String || !uTF8String2 || !uTF8String3)
  {
    v42 = [NSError alloc];
    v63 = NSLocalizedDescriptionKey;
    v64 = @"nil parameter provided to applyPatchWithFilename";
    v43 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v40 = [v42 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v43];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v40);
    }

LABEL_29:

    goto LABEL_49;
  }

  v47 = sandbox_extension_consume();
  v46 = sandbox_extension_consume();
  v45 = sandbox_extension_consume();
  out_token = -1;
  if (v47 == -1 || v46 == -1 || v45 == -1)
  {
    v29 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to consume a sandbox extension", buf, 2u);
    }
  }

  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  v30 = dispatch_get_global_queue(17, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003B8C;
  handler[3] = &unk_100010540;
  handler[4] = v52;
  v44 = notify_register_dispatch("com.apple.trial.TrialArchivingService.shouldDefer", &out_token, v30, handler);

  if (v44)
  {
    v31 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v56) = v44;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "failed to register for deferral notification: %u", buf, 8u);
    }
  }

  [(TrialArchivingService *)self _deferralDelaySecondsForTesting];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100003C48;
  v50[3] = &unk_100010568;
  v50[5] = v32;
  v50[4] = v52;
  v33 = objc_retainBlock(v50);
  v34 = [[TRIAssetPatcher alloc] initWithShouldDefer:v33];
  v49 = 0;
  v35 = [(TRIAssetPatcher *)v34 applyPatchWithFilename:filenameCopy toSrcDir:dirCopy writingToEmptyDestDir:destDirCopy postPatchCompression:compression error:&v49];
  switch(v35)
  {
    case 0u:
      v36 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v56 = dirCopy;
        v57 = 2112;
        v58 = filenameCopy;
        v59 = 2112;
        v60 = destDirCopy;
        v61 = 2112;
        v62 = v49;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "failed to apply directory patch %@ + %@ --> %@: %@", buf, 0x2Au);
      }

      goto LABEL_38;
    case 1u:
      v36 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v37 = "directory patch applied successfully";
        goto LABEL_35;
      }

LABEL_38:

      break;
    case 2u:
      v36 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v37 = "directory patching deferred";
LABEL_35:
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 2u);
        goto LABEL_38;
      }

      goto LABEL_38;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v35, v49);
  }

  _Block_object_dispose(v52, 8);
  if (!v44)
  {
    notify_cancel(out_token);
  }

  if (v45 != -1)
  {
    sandbox_extension_release();
  }

  if (v46 != -1)
  {
    sandbox_extension_release();
  }

  if (v47 != -1)
  {
    sandbox_extension_release();
  }

LABEL_49:
}

- (void)removeCachedANESegmentsForModelAtURL:(id)l pathExtension:(id)extension completion:(id)completion
{
  lCopy = l;
  extensionCopy = extension;
  completionCopy = completion;
  v10 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = lCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting purge of cached ANE segments for network at URL: %@", buf, 0xCu);
  }

  v11 = extensionCopy;
  uTF8String = [extensionCopy UTF8String];
  if (extensionCopy && uTF8String)
  {
    v13 = sandbox_extension_consume();
    if (v13 == -1)
    {
      v14 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to consume a sandbox extension", buf, 2u);
      }
    }

    v15 = objc_autoreleasePoolPush();
    v17 = sub_100008230(v16);
    if (!v17)
    {
      v27 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Skipping purge, ANE runtime not available on device", buf, 2u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }

      v23 = 0;
      goto LABEL_26;
    }

    sub_100008204(v18);
    v19 = lCopy;
    [lCopy fileSystemRepresentation];
    if (sub_1000081D8(v20))
    {
      v45 = NSLocalizedDescriptionKey;
      lCopy = [NSString stringWithFormat:@"Failed to purge cached ANE binary for model at URL: %@", lCopy];
      v46 = lCopy;
      v22 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v23 = [NSError errorWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v22];

LABEL_26:
      objc_autoreleasePoolPop(v15);
      if (v17)
      {
        v35 = TRILogCategory_Archiving();
        v36 = v35;
        if (v23)
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v38 = lCopy;
            v39 = 2112;
            v40 = v23;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to purge ANE segments for model at URL %@: %@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = lCopy;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Successfully purged ANE segments for model at URL %@", buf, 0xCu);
        }

        if (completionCopy)
        {
          (completionCopy)[2](completionCopy, v23);
        }
      }

      if (v13 != -1)
      {
        sandbox_extension_release();
      }

      goto LABEL_36;
    }

    *buf = -1;
    v28 = lCopy;
    [lCopy fileSystemRepresentation];
    if (sub_1000081AC(v29) || *buf == -1)
    {
      v43 = NSLocalizedDescriptionKey;
      lCopy2 = [NSString stringWithFormat:@"Failed to determine ANE binary cache state (post-purge) for model at URL: %@", lCopy];
      v44 = lCopy2;
      v31 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v23 = [NSError errorWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v31];

      if (!*buf)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v23 = 0;
      if (!*buf)
      {
        goto LABEL_26;
      }
    }

    v41 = NSLocalizedDescriptionKey;
    lCopy3 = [NSString stringWithFormat:@"Cached ANE binary for model at URL: %@ has persisted post-purge", lCopy];
    v42 = lCopy3;
    v33 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v34 = [NSError errorWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v33];

    v23 = v34;
    goto LABEL_26;
  }

  v24 = [NSError alloc];
  v47 = NSLocalizedDescriptionKey;
  v48 = @"nil parameter provided to removeCachedANESegmentsForModelAtURL";
  v25 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v26 = [v24 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v25];

  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v26);
  }

LABEL_36:
}

- (void)mapsDeviceCountryCode:(id)code
{
  codeCopy = code;
  v5 = +[TRIASCovariates mapsDeviceCountryCode];
  (*(code + 2))(codeCopy, v5);
}

- (void)appleIntelligenceState:(id)state
{
  stateCopy = state;
  v5 = [TRIASCovariates appleIntelligenceEnabledWithIdentifers:&__NSArray0__struct];
  (*(state + 2))(stateCopy, v5);
}

- (void)appleIntelligenceStateWithUseCaseIDs:(id)ds handler:(id)handler
{
  handlerCopy = handler;
  v7 = [TRIASCovariates appleIntelligenceEnabledWithIdentifers:ds];
  (*(handler + 2))(handlerCopy, v7);
}

@end