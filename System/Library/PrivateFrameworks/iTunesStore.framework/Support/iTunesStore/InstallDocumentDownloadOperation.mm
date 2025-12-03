@interface InstallDocumentDownloadOperation
- (BOOL)_moveSharedAssetFromPath:(id)path toPath:(id)toPath error:(id *)error;
- (id)_sharedAssetStagingPath:(id)path;
- (id)_sharedContainerPath;
- (id)_sharedContainerPath:(id)path;
- (void)run;
@end

@implementation InstallDocumentDownloadOperation

- (void)run
{
  v3 = objc_alloc_init(FinishDownloadResponse);
  download = [(FinishDownloadStepOperation *)self download];
  -[FinishDownloadResponse setDownloadIdentifier:](v3, "setDownloadIdentifier:", [download databaseID]);
  v122 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [download transactionID], objc_msgSend(download, "databaseID"));
  [(FinishDownloadResponse *)v3 setDownloadHandle:?];
  mediaAsset = [download mediaAsset];
  -[FinishDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [mediaAsset databaseID]);
  destinationURLString = [mediaAsset destinationURLString];
  destinationFileName = [mediaAsset destinationFileName];
  downloadKind = [download downloadKind];
  v127 = downloadKind;
  if (!destinationURLString || SSDownloadKindIsThirdPartyKind())
  {
    title = [download title];
    if ([title length])
    {
      pathExtension = [destinationFileName pathExtension];
      v11 = [title stringByAppendingPathExtension:pathExtension];

      destinationFileName = v11;
      downloadKind = v127;
    }
  }

  v12 = +[ApplicationWorkspace defaultWorkspace];
  isMultiUser = [v12 isMultiUser];

  if (isMultiUser)
  {
    v14 = [download valueForProperty:@"client_id"];
    if ([download isSharedDownload] && (objc_msgSend(v14, "isEqualToString:", @"com.apple.ondemandd") & 1) != 0)
    {
      v15 = &OBJC_IVAR___InstallDocumentDownloadOperation__isSharedODRDownload;
    }

    else
    {
      if (![download isSharedDownload] || (objc_msgSend(v14, "isEqualToString:", @"mdmd") & 1) == 0 && !objc_msgSend(v14, "isEqualToString:", @"dmd"))
      {
        goto LABEL_15;
      }

      v15 = &OBJC_IVAR___InstallDocumentDownloadOperation__isSharedMDMDownload;
    }

    self->super.ISOperation_opaque[*v15] = 1;
LABEL_15:
  }

  v128 = mediaAsset;
  v129 = destinationFileName;
  v123 = v3;
  v121 = destinationURLString;
  if ([downloadKind isEqualToString:SSDownloadKindOSUpdate])
  {
    v16 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Updates", 0}];
    v17 = [NSString pathWithComponents:v16];
    goto LABEL_23;
  }

  if (!destinationURLString || (SSDownloadKindIsThirdPartyKind() & 1) != 0)
  {
    documentTargetIdentifier = [download documentTargetIdentifier];
    if (!documentTargetIdentifier)
    {
      documentTargetIdentifier = [download clientIdentifier];
      if (!documentTargetIdentifier)
      {
        v19 = 0;
        goto LABEL_24;
      }
    }

    v16 = documentTargetIdentifier;
    v17 = [(FinishDownloadStepOperation *)self documentsDirectoryPathWithClientIdentifier:documentTargetIdentifier downloadKind:downloadKind];
LABEL_23:
    v19 = v17;

LABEL_24:
    v124 = 0;
    goto LABEL_25;
  }

  v34 = [[NSURL alloc] initWithString:destinationURLString];
  path = [v34 path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  _sharedContainerPath = [(InstallDocumentDownloadOperation *)self _sharedContainerPath];
  v36 = _sharedContainerPath;
  if (self->_isSharedODRDownload || self->_isSharedMDMDownload)
  {
    v37 = _sharedContainerPath;
    v38 = [_sharedContainerPath length];
    path2 = [v34 path];
    v40 = [path2 length];

    if (v38 >= v40)
    {
      v124 = 0;
    }

    else
    {
      v124 = [path substringFromIndex:{objc_msgSend(v37, "length")}];
    }

    mediaAsset = v128;
    destinationFileName = v129;
    v36 = v37;
  }

  else
  {
    v124 = 0;
  }

  if (self->_isSharedODRDownload || self->_isSharedMDMDownload)
  {
    v133 = v34;
    v126 = v36;
    v76 = [path substringToIndex:{objc_msgSend(v36, "length")}];
    _sharedContainerPath2 = [(InstallDocumentDownloadOperation *)self _sharedContainerPath];
    v78 = v76;
    v79 = [v76 isEqualToString:_sharedContainerPath2];

    v80 = +[SSLogConfig sharedDaemonConfig];
    v81 = v80;
    if (v79)
    {
      if (!v80)
      {
        v81 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v81 shouldLog];
      if ([v81 shouldLogToDisk])
      {
        shouldLog |= 2u;
      }

      oSLogObject = [v81 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v84 = shouldLog;
      }

      else
      {
        v84 = shouldLog & 2;
      }

      if (v84)
      {
        v85 = objc_opt_class();
        v146 = 138412802;
        v147 = v85;
        v148 = 2112;
        v149 = v78;
        v150 = 2112;
        v151 = v124;
        LODWORD(v115) = 32;
        v111 = &v146;
        v86 = _os_log_send_and_compose_impl();

        if (v86)
        {
          v115 = [NSString stringWithCString:v86 encoding:4, &v146, v115];
          free(v86);
          v111 = v115;
          SSFileLog();
        }
      }

      else
      {
      }
    }

    else
    {
      if (!v80)
      {
        v81 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v81 shouldLog];
      if ([v81 shouldLogToDisk])
      {
        v89 = shouldLog2 | 2;
      }

      else
      {
        v89 = shouldLog2;
      }

      oSLogObject2 = [v81 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v91 = v89;
      }

      else
      {
        v91 = v89 & 2;
      }

      if (v91)
      {
        v92 = objc_opt_class();
        _sharedContainerPath3 = [(InstallDocumentDownloadOperation *)self _sharedContainerPath];
        v146 = 138412802;
        v147 = v92;
        v148 = 2112;
        v149 = v78;
        v150 = 2112;
        v151 = _sharedContainerPath3;
        LODWORD(v115) = 32;
        v111 = &v146;
        v94 = _os_log_send_and_compose_impl();

        if (v94)
        {
          v1152 = [NSString stringWithCString:v94 encoding:4, &v146, v115];
          free(v94);
          v111 = v1152;
          SSFileLog();
        }
      }

      else
      {
      }

      self->_isSharedODRDownload = 0;
      self->_isSharedMDMDownload = 0;
    }

    v36 = v126;

    mediaAsset = v128;
    destinationFileName = v129;
    v34 = v133;
  }

  v19 = stringByDeletingLastPathComponent;
LABEL_25:
  v130 = v19;
  v132 = [v19 stringByAppendingPathComponent:{destinationFileName, v111}];
  if (self->_isSharedODRDownload || self->_isSharedMDMDownload)
  {
    v20 = [(InstallDocumentDownloadOperation *)self _sharedAssetStagingPath:destinationFileName];
  }

  else
  {
    v20 = 0;
  }

  v125 = objc_alloc_init(NSFileManager);
  localPath = [mediaAsset localPath];
  sourceURLString = [mediaAsset sourceURLString];
  v120 = sourceURLString;
  v134 = v20;
  if (([v125 fileExistsAtPath:localPath] & 1) == 0 && sourceURLString)
  {
    v23 = [[NSURL alloc] initWithString:sourceURLString];
    if (![v23 isFileURL])
    {
LABEL_50:

      goto LABEL_51;
    }

    path3 = [v23 path];
    v145 = localPath;
    [(FinishDownloadStepOperation *)self moveFile:path3 toPath:&v145 installBehavior:0 error:0];
    v25 = v145;

    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = shouldLog3 | 2;
    }

    else
    {
      v28 = shouldLog3;
    }

    oSLogObject3 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 2;
    }

    if (v30)
    {
      v31 = objc_opt_class();
      path4 = [v23 path];
      v146 = 138412802;
      v147 = v31;
      v148 = 2112;
      v149 = path4;
      v150 = 2112;
      v151 = v25;
      LODWORD(v115) = 32;
      v112 = &v146;
      v33 = _os_log_send_and_compose_impl();

      mediaAsset = v128;
      if (!v33)
      {
LABEL_49:

        localPath = v25;
        v20 = v134;
        goto LABEL_50;
      }

      oSLogObject3 = [NSString stringWithCString:v33 encoding:4, &v146, v115];
      free(v33);
      v112 = oSLogObject3;
      SSFileLog();
    }

    else
    {
      mediaAsset = v128;
    }

    goto LABEL_49;
  }

LABEL_51:
  if ([mediaAsset processingTypes])
  {
    v43 = +[SSLogConfig sharedDaemonConfig];
    if (!v43)
    {
      v43 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v43 shouldLog];
    if ([v43 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject4 = [v43 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
    {
      v46 = shouldLog4;
    }

    else
    {
      v46 = shouldLog4 & 2;
    }

    if (v46)
    {
      v47 = objc_opt_class();
      databaseID = [download databaseID];
      v146 = 138412802;
      v147 = v47;
      v148 = 2048;
      v149 = databaseID;
      v150 = 2112;
      v151 = localPath;
      LODWORD(v115) = 32;
      v113 = &v146;
      v49 = _os_log_send_and_compose_impl();

      if (!v49)
      {
        goto LABEL_66;
      }

      oSLogObject4 = [NSString stringWithCString:v49 encoding:4, &v146, v115];
      free(v49);
      v113 = oSLogObject4;
      SSFileLog();
    }

LABEL_66:
    v143 = 0;
    v144 = 0;
    v50 = [(FinishDownloadStepOperation *)self unzipAsset:mediaAsset unzippedPath:&v144 error:&v143];
    v51 = v144;
    v41 = v143;
    if (v50)
    {
      v42 = v51;

      if (!self->_isSharedODRDownload)
      {
        v20 = v134;
        if ((self->_isSharedMDMDownload & v50 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_80;
      }

LABEL_79:
      v20 = v134;
      goto LABEL_80;
    }

    v55 = v125;
    if (v51)
    {
      [v125 removeItemAtPath:v51 error:0];
    }

    v56 = v127;
    if (self->_isSharedODRDownload)
    {
      if (v50)
      {
        v42 = localPath;
        goto LABEL_79;
      }
    }

    else
    {
      v20 = v134;
      if (self->_isSharedMDMDownload & v50)
      {
        goto LABEL_54;
      }

      if (v50)
      {
        v42 = localPath;
        goto LABEL_71;
      }
    }

    v70 = 0;
    v74 = v123;
LABEL_175:
    [(FinishDownloadResponse *)v74 setError:v41, v113];
    [(FinishDownloadResponse *)v74 setResult:v70];
    [(FinishDownloadStepOperation *)self rollbackAsset:mediaAsset error:0];
    v54 = v41;
    goto LABEL_176;
  }

  if (self->_isSharedODRDownload)
  {
    v41 = 0;
LABEL_54:
    v42 = localPath;
    goto LABEL_80;
  }

  v41 = 0;
  v42 = localPath;
  if (!self->_isSharedMDMDownload)
  {
LABEL_71:
    if (!v132)
    {
      v75 = SSError();

      v132 = 0;
      v70 = 3;
      v41 = v75;
      localPath = v42;
      v74 = v123;
LABEL_174:
      v55 = v125;
      v56 = v127;
      goto LABEL_175;
    }

    v139 = v41;
    v140 = v132;
    v52 = [(FinishDownloadStepOperation *)self moveFile:v42 toPath:&v140 installBehavior:1 error:&v139];
    v53 = v140;

    v54 = v139;
    if (v52)
    {
      v132 = v53;
      goto LABEL_82;
    }

    v70 = 0;
    v41 = v54;
    localPath = v42;
    v132 = v53;
LABEL_173:
    v74 = v123;
    mediaAsset = v128;
    goto LABEL_174;
  }

LABEL_80:
  v57 = v41;
  v141 = v41;
  v142 = v20;
  v113 = [(FinishDownloadStepOperation *)self moveFile:v42 toPath:&v142 installBehavior:1 error:&v141, v113];
  v59 = v142;

  v41 = v141;
  if ((v113 & 1) == 0)
  {
    v70 = 0;
    localPath = v42;
    v134 = v59;
    goto LABEL_173;
  }

  v54 = v41;
  v134 = v59;
LABEL_82:
  localPath = v42;
  mediaAsset = v128;
  fileAttributes = [v128 fileAttributes];
  if ([fileAttributes count])
  {
    [v125 setAttributes:fileAttributes ofItemAtPath:v132 error:0];
  }

  if (!self->_isSharedODRDownload && !self->_isSharedMDMDownload)
  {
    v74 = v123;
    goto LABEL_160;
  }

  pathComponents = [v124 pathComponents];
  v156[0] = @"Library";
  v156[1] = @"Caches";
  v156[2] = @"Staging";
  v156[3] = v129;
  v117 = [NSArray arrayWithObjects:v156 count:4];
  v119 = [NSString pathWithComponents:?];
  v116 = pathComponents;
  v62 = [&off_10034CCC8 arrayByAddingObjectsFromArray:pathComponents];
  v118 = [NSString pathWithComponents:?];
  v138 = 0;
  if ([v125 fileExistsAtPath:v130 isDirectory:&v138])
  {
    if (v138)
    {
      goto LABEL_147;
    }

    v63 = +[SSLogConfig sharedDaemonConfig];
    if (!v63)
    {
      v63 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v63 shouldLog];
    if ([v63 shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    oSLogObject5 = [v63 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
    {
      v66 = shouldLog5;
    }

    else
    {
      v66 = shouldLog5 & 2;
    }

    if (!v66)
    {
      v69 = v54;
      goto LABEL_145;
    }

    v67 = objc_opt_class();
    v146 = 138412546;
    v147 = v67;
    v148 = 2112;
    v149 = v130;
    LODWORD(v115) = 22;
    v113 = &v146;
    v68 = _os_log_send_and_compose_impl();

    v69 = v54;
    if (!v68)
    {
      goto LABEL_146;
    }

LABEL_108:
    oSLogObject5 = [NSString stringWithCString:v68 encoding:4, &v146, v115];
    free(v68);
    v113 = oSLogObject5;
    SSFileLog();
LABEL_145:

    goto LABEL_146;
  }

  v137 = v54;
  [v125 createDirectoryAtPath:v130 withIntermediateDirectories:1 attributes:0 error:&v137];
  v69 = v137;

  v63 = +[SSLogConfig sharedDaemonConfig];
  if (!v63)
  {
    v63 = +[SSLogConfig sharedConfig];
  }

  shouldLog6 = [v63 shouldLog];
  if ([v63 shouldLogToDisk])
  {
    shouldLog6 |= 2u;
  }

  oSLogObject5 = [v63 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
  {
    v72 = shouldLog6;
  }

  else
  {
    v72 = shouldLog6 & 2;
  }

  if (!v72)
  {
    goto LABEL_145;
  }

  v73 = objc_opt_class();
  v146 = 138412802;
  v147 = v73;
  v148 = 2112;
  v149 = v130;
  v150 = 2112;
  v151 = v69;
  LODWORD(v115) = 32;
  v113 = &v146;
  v68 = _os_log_send_and_compose_impl();

  if (v68)
  {
    goto LABEL_108;
  }

LABEL_146:

  v54 = v69;
LABEL_147:
  v136 = v54;
  v1132 = [(InstallDocumentDownloadOperation *)self _moveSharedAssetFromPath:v119 toPath:v118 error:&v136, v113];
  v41 = v136;

  v97 = +[SSLogConfig sharedDaemonConfig];
  if (!v97)
  {
    v97 = +[SSLogConfig sharedConfig];
  }

  shouldLog7 = [v97 shouldLog];
  if ([v97 shouldLogToDisk])
  {
    shouldLog7 |= 2u;
  }

  oSLogObject6 = [v97 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_INFO))
  {
    v100 = shouldLog7;
  }

  else
  {
    v100 = shouldLog7 & 2;
  }

  if (v100)
  {
    v101 = objc_opt_class();
    databaseID2 = [download databaseID];
    v146 = 138413314;
    v147 = v101;
    v148 = 2048;
    v149 = databaseID2;
    v150 = 2112;
    v151 = v119;
    v152 = 2112;
    v153 = v118;
    v154 = 1024;
    v155 = v1132;
    LODWORD(v115) = 48;
    v113 = &v146;
    v103 = _os_log_send_and_compose_impl();

    if (!v103)
    {
      goto LABEL_158;
    }

    oSLogObject6 = [NSString stringWithCString:v103 encoding:4, &v146, v115];
    free(v103);
    v113 = oSLogObject6;
    SSFileLog();
  }

LABEL_158:
  if ((v1132 & 1) == 0)
  {
    v70 = 0;
    goto LABEL_173;
  }

  v54 = v41;
  v74 = v123;
  mediaAsset = v128;
LABEL_160:
  v104 = +[SSLogConfig sharedDaemonConfig];
  if (!v104)
  {
    v104 = +[SSLogConfig sharedConfig];
  }

  shouldLog8 = [v104 shouldLog];
  if ([v104 shouldLogToDisk])
  {
    shouldLog8 |= 2u;
  }

  oSLogObject7 = [v104 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
  {
    v107 = shouldLog8;
  }

  else
  {
    v107 = shouldLog8 & 2;
  }

  if (!v107)
  {
    goto LABEL_170;
  }

  v108 = objc_opt_class();
  databaseID3 = [download databaseID];
  v146 = 138412802;
  v147 = v108;
  v148 = 2048;
  v149 = databaseID3;
  v150 = 2112;
  v151 = v132;
  LODWORD(v115) = 32;
  v114 = &v146;
  v110 = _os_log_send_and_compose_impl();

  if (v110)
  {
    oSLogObject7 = [NSString stringWithCString:v110 encoding:4, &v146, v115];
    free(v110);
    v114 = oSLogObject7;
    SSFileLog();
LABEL_170:
  }

  [(FinishDownloadResponse *)v74 setResult:4];
  [(FinishDownloadResponse *)v74 setMediaAssetInstallPath:v132];
  v55 = v125;
  v56 = v127;
LABEL_176:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v74, v114];
}

- (BOOL)_moveSharedAssetFromPath:(id)path toPath:(id)toPath error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  if (self->_isSharedMDMDownload)
  {
    v10 = @"systemgroup.com.apple.media.books.managed";
    v11 = @"mdmd";
    goto LABEL_17;
  }

  if (self->_isSharedODRDownload)
  {
    v10 = @"systemgroup.com.apple.ondemandresources";
    v11 = @"com.apple.ondemandd";
    goto LABEL_17;
  }

  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = shouldLog | 2;
  }

  else
  {
    v14 = shouldLog;
  }

  oSLogObject = [v12 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  v37 = 138412290;
  v38 = objc_opt_class();
  v16 = v38;
  LODWORD(v36) = 12;
  v35 = &v37;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    oSLogObject = [NSString stringWithCString:v17 encoding:4, &v37, v36];
    free(v17);
    v35 = oSLogObject;
    SSFileLog();
LABEL_15:
  }

  v11 = 0;
  v10 = 0;
LABEL_17:
  [(__CFString *)v10 UTF8String];
  [pathCopy UTF8String];
  [toPathCopy UTF8String];
  v18 = container_stage_shared_system_content();
  v19 = +[SSLogConfig sharedDaemonConfig];
  v20 = v19;
  if (!v18)
  {
    if (!v19)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v30 = shouldLog2 | 2;
    }

    else
    {
      v30 = shouldLog2;
    }

    oSLogObject2 = [v20 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v32 = objc_opt_class();
      v37 = 138412802;
      v38 = v32;
      v39 = 2112;
      v40 = v11;
      v41 = 2048;
      v42 = 1;
      v33 = v32;
      LODWORD(v36) = 32;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
        goto LABEL_43;
      }

      oSLogObject2 = [NSString stringWithCString:v34 encoding:4, &v37, v36];
      free(v34);
      SSFileLog();
    }

LABEL_43:
    v27 = SSError();
    if (!error)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (!v19)
  {
    v20 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = shouldLog3 | 2;
  }

  else
  {
    v22 = shouldLog3;
  }

  oSLogObject3 = [v20 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v22 &= 2u;
  }

  if (v22)
  {
    v24 = objc_opt_class();
    v37 = 138412802;
    v38 = v24;
    v39 = 2080;
    v40 = v18;
    v41 = 2112;
    v42 = v11;
    v25 = v24;
    LODWORD(v36) = 32;
    v26 = _os_log_send_and_compose_impl();

    if (!v26)
    {
      goto LABEL_29;
    }

    oSLogObject3 = [NSString stringWithCString:v26 encoding:4, &v37, v36];
    free(v26);
    SSFileLog();
  }

LABEL_29:
  free(v18);
  v27 = 0;
  if (error)
  {
LABEL_30:
    v27 = v27;
    *error = v27;
  }

LABEL_31:

  return v18 != 0;
}

- (id)_sharedAssetStagingPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    _sharedContainerPath = [(InstallDocumentDownloadOperation *)self _sharedContainerPath];
    pathComponents = [_sharedContainerPath pathComponents];

    v24[0] = @"Caches";
    v24[1] = @"Staging";
    v24[2] = pathCopy;
    v7 = [NSArray arrayWithObjects:v24 count:3];
    v8 = [pathComponents arrayByAddingObjectsFromArray:v7];
    v9 = [NSString pathWithComponents:v8];
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      *v23 = 138412546;
      *&v23[4] = objc_opt_class();
      *&v23[12] = 2112;
      *&v23[14] = v9;
      v14 = *&v23[4];
      LODWORD(v22) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_13:

        goto LABEL_26;
      }

      oSLogObject = [NSString stringWithCString:v15 encoding:4, v23, v22, *v23, *&v23[16]];
      free(v15);
      SSFileLog();
    }

    goto LABEL_13;
  }

  pathComponents = +[SSLogConfig sharedDaemonConfig];
  if (!pathComponents)
  {
    pathComponents = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [pathComponents shouldLog];
  if ([pathComponents shouldLogToDisk])
  {
    v17 = shouldLog2 | 2;
  }

  else
  {
    v17 = shouldLog2;
  }

  oSLogObject2 = [pathComponents OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_24;
  }

  *v23 = 138412546;
  *&v23[4] = objc_opt_class();
  *&v23[12] = 2112;
  *&v23[14] = pathCopy;
  v19 = *&v23[4];
  LODWORD(v22) = 22;
  v20 = _os_log_send_and_compose_impl();

  if (v20)
  {
    oSLogObject2 = [NSString stringWithCString:v20 encoding:4, v23, v22, *v23, *&v23[8]];
    free(v20);
    SSFileLog();
LABEL_24:
  }

  v9 = 0;
LABEL_26:

  return v9;
}

- (id)_sharedContainerPath
{
  if (self->_isSharedMDMDownload)
  {
    v4 = @"systemgroup.com.apple.media.books.managed";
    goto LABEL_5;
  }

  if (self->_isSharedODRDownload)
  {
    v4 = @"systemgroup.com.apple.ondemandresources";
LABEL_5:
    v5 = [(InstallDocumentDownloadOperation *)self _sharedContainerPath:v4, v2];

    return v5;
  }

  v5 = 0;

  return v5;
}

- (id)_sharedContainerPath:(id)path
{
  [path UTF8String];
  v3 = container_system_group_path_for_identifier();
  v4 = +[SSLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v20 = 136315138;
      v21 = v3;
      LODWORD(v19) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_14:

        v11 = [NSString stringWithUTF8String:v3];
        v12 = [v11 stringByAppendingPathComponent:@"Library"];

        free(v3);
        goto LABEL_28;
      }

      oSLogObject = [NSString stringWithCString:v10 encoding:4, &v20, v19];
      free(v10);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v14 = shouldLog2 | 2;
  }

  else
  {
    v14 = shouldLog2;
  }

  oSLogObject2 = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 & 2;
  }

  if (!v16)
  {
    goto LABEL_26;
  }

  v20 = 134217984;
  v21 = 1;
  LODWORD(v19) = 12;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    oSLogObject2 = [NSString stringWithCString:v17 encoding:4, &v20, v19];
    free(v17);
    SSFileLog();
LABEL_26:
  }

  v12 = 0;
LABEL_28:

  return v12;
}

@end