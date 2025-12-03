@interface SUControllerSUCore
+ (id)errorFromCoreError:(id)error;
+ (id)newDescriptorFromCoreDescriptor:(id)descriptor corePolicy:(id)policy;
+ (id)newProgressFromCoreProgress:(id)progress;
+ (id)newSafeErrorDescription:(id)description;
@end

@implementation SUControllerSUCore

+ (id)newDescriptorFromCoreDescriptor:(id)descriptor corePolicy:(id)policy
{
  v43 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  policyCopy = policy;
  v7 = policyCopy;
  if (!descriptorCopy)
  {
    v8 = 0;
    if (!policyCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v8 = objc_alloc_init(SUControllerDescriptor);
  documentation = [descriptorCopy documentation];

  if (documentation)
  {
    v38 = [SUControllerDocumentation alloc];
    documentation2 = [descriptorCopy documentation];
    localBundleURL = [documentation2 localBundleURL];
    documentation3 = [descriptorCopy documentation];
    [documentation3 serverAssetURL];
    v11 = v40 = v7;
    documentation4 = [descriptorCopy documentation];
    serverAssetMeasurement = [documentation4 serverAssetMeasurement];
    documentation5 = [descriptorCopy documentation];
    serverAssetAlgorithm = [documentation5 serverAssetAlgorithm];
    documentation6 = [descriptorCopy documentation];
    v17 = -[SUControllerDocumentation initWithDocumentationBundleURL:serverAssetURL:serverAssetMeasurement:serverAssetAlgorithm:serverAssetChunkSize:](v38, "initWithDocumentationBundleURL:serverAssetURL:serverAssetMeasurement:serverAssetAlgorithm:serverAssetChunkSize:", localBundleURL, v11, serverAssetMeasurement, serverAssetAlgorithm, [documentation6 serverAssetChunkSize]);
    [(SUControllerDescriptor *)v8 setDocumentation:v17];

    v7 = v40;
  }

  else
  {
    updated = updateRequiresDocAsset();
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (updated)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [SUControllerSUCore newDescriptorFromCoreDescriptor:oslog corePolicy:?];
      }
    }

    else if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
      deviceClass = [mEMORY[0x277D64418] deviceClass];
      *buf = 138412290;
      v42 = deviceClass;
      _os_log_impl(&dword_26AB15000, oslog, OS_LOG_TYPE_DEFAULT, "[DESCRIPTOR_FROM_CORE] SUCore descriptor is missing documentation information, allowed for %@ devices", buf, 0xCu);
    }
  }

  productVersion = [descriptorCopy productVersion];
  [(SUControllerDescriptor *)v8 setProductVersion:productVersion];

  productBuildVersion = [descriptorCopy productBuildVersion];
  [(SUControllerDescriptor *)v8 setProductBuildVersion:productBuildVersion];

  documentationID = [descriptorCopy documentationID];
  [(SUControllerDescriptor *)v8 setDocumentationID:documentationID];

  publisher = [descriptorCopy publisher];
  [(SUControllerDescriptor *)v8 setPublisher:publisher];

  productSystemName = [descriptorCopy productSystemName];
  [(SUControllerDescriptor *)v8 setProductSystemName:productSystemName];

  -[SUControllerDescriptor setDownloadSize:](v8, "setDownloadSize:", [descriptorCopy downloadSize]);
  -[SUControllerDescriptor setUnarchivedSize:](v8, "setUnarchivedSize:", [descriptorCopy unarchivedSize]);
  -[SUControllerDescriptor setMsuPrepareSize:](v8, "setMsuPrepareSize:", [descriptorCopy msuPrepareSize]);
  -[SUControllerDescriptor setInstallationSize:](v8, "setInstallationSize:", [descriptorCopy installationSize]);
  -[SUControllerDescriptor setTotalRequiredFreeSpace:](v8, "setTotalRequiredFreeSpace:", [descriptorCopy totalRequiredFreeSpace]);
  [(SUControllerDescriptor *)v8 setUserDidAcceptTermsAndConditions:0];
  -[SUControllerDescriptor setFullReplacement:](v8, "setFullReplacement:", [descriptorCopy fullReplacement]);
  -[SUControllerDescriptor setRampEnabled:](v8, "setRampEnabled:", [descriptorCopy rampEnabled]);
  [(SUControllerDescriptor *)v8 setDenialReasons:0];
  getMASoftwareUpdateAsset = [descriptorCopy getMASoftwareUpdateAsset];
  [(SUControllerDescriptor *)v8 setSoftwareUpdateAsset:getMASoftwareUpdateAsset];

  getMADocumentationAsset = [descriptorCopy getMADocumentationAsset];
  [(SUControllerDescriptor *)v8 setDocumentationAsset:getMADocumentationAsset];

  releaseType = [descriptorCopy releaseType];
  [(SUControllerDescriptor *)v8 setReleaseType:releaseType];

  releaseDate = [descriptorCopy releaseDate];
  [(SUControllerDescriptor *)v8 setReleaseDate:releaseDate];

  -[SUControllerDescriptor setMandatoryUpdateEligible:](v8, "setMandatoryUpdateEligible:", [descriptorCopy mandatoryUpdateEligible]);
  mandatoryUpdateVersionMin = [descriptorCopy mandatoryUpdateVersionMin];
  [(SUControllerDescriptor *)v8 setMandatoryUpdateVersionMin:mandatoryUpdateVersionMin];

  mandatoryUpdateVersionMax = [descriptorCopy mandatoryUpdateVersionMax];
  [(SUControllerDescriptor *)v8 setMandatoryUpdateVersionMax:mandatoryUpdateVersionMax];

  -[SUControllerDescriptor setMandatoryUpdateOptional:](v8, "setMandatoryUpdateOptional:", [descriptorCopy mandatoryUpdateOptional]);
  -[SUControllerDescriptor setMandatoryUpdateRestrictedToOutOfTheBox:](v8, "setMandatoryUpdateRestrictedToOutOfTheBox:", [descriptorCopy mandatoryUpdateRestrictedToOutOfTheBox]);
  [(SUControllerDescriptor *)v8 setCoreDescriptor:descriptorCopy];
  if (v7)
  {
LABEL_13:
    -[SUControllerDescriptor setIsSupervisedPolicy:](v8, "setIsSupervisedPolicy:", [v7 isSupervisedPolicy]);
    if ([v7 isRequestedPMVSupervisedPolicy])
    {
      requestedProductMarketingVersion = [v7 requestedProductMarketingVersion];
      [(SUControllerDescriptor *)v8 setRequestedPMV:requestedProductMarketingVersion];
    }

    else
    {
      [(SUControllerDescriptor *)v8 setRequestedPMV:0];
    }

    -[SUControllerDescriptor setDelayPeriod:](v8, "setDelayPeriod:", [v7 delayPeriodDays]);
  }

LABEL_17:

  v35 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)newProgressFromCoreProgress:(id)progress
{
  if (!progress)
  {
    return 0;
  }

  progressCopy = progress;
  v4 = objc_alloc_init(SUControllerProgress);
  phase = [progressCopy phase];
  [(SUControllerProgress *)v4 setPhase:phase];

  [progressCopy portionComplete];
  [(SUControllerProgress *)v4 setPortionComplete:?];
  [progressCopy estimatedTimeRemaining];
  [(SUControllerProgress *)v4 setEstimatedTimeRemaining:?];
  isStalled = [progressCopy isStalled];

  [(SUControllerProgress *)v4 setIsStalled:isStalled];
  [(SUControllerProgress *)v4 setIsDone:0];
  return v4;
}

+ (id)errorFromCoreError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    v14 = 0;
    goto LABEL_34;
  }

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277D646E8]];

  if (!v6)
  {
    domain2 = [v4 domain];
    v16 = [domain2 isEqualToString:*MEMORY[0x277D292C8]];

    if (v16)
    {
      v12 = @"MobileSoftwareUpdate operation failed";
LABEL_11:
      v13 = 28;
      goto LABEL_33;
    }

    domain3 = [v4 domain];
    v18 = [domain3 isEqualToString:*MEMORY[0x277D292D0]];

    if (v18)
    {
      v12 = @"MobileSoftwareUpdate personalization failed";
      v13 = 21;
      goto LABEL_33;
    }

    v12 = @"expected an SUCore underlying error";
LABEL_23:
    v13 = 58;
    goto LABEL_33;
  }

  code = [v4 code];
  if (code <= 8249)
  {
    switch(code)
    {
      case 8100:
        v12 = @"allocation failed";
        v13 = 31;
        goto LABEL_33;
      case 8101:
        v12 = @"missing required element";
        v13 = 55;
        goto LABEL_33;
      case 8102:
      case 8112:
      case 8114:
        v12 = @"bad argument";
        v13 = 27;
        goto LABEL_33;
      case 8103:
      case 8116:
        v12 = @"unsupported command";
        v13 = 19;
        goto LABEL_33;
      case 8104:
      case 8105:
      case 8106:
      case 8109:
        v12 = @"transport related error";
        v13 = 2;
        goto LABEL_33;
      case 8107:
      case 8118:
        v12 = @"malformed message";
        v13 = 1;
        goto LABEL_33;
      case 8108:
      case 8115:
      case 8120:
        v12 = @"invalid state for operation";
        v13 = 42;
        goto LABEL_33;
      case 8110:
        v12 = @"purge failed";
        v13 = 22;
        goto LABEL_33;
      case 8111:
        v12 = @"already in progress";
        v13 = 57;
        goto LABEL_33;
      case 8113:
      case 8122:
      case 8123:
        v12 = @"not supported";
        v13 = 56;
        goto LABEL_33;
      case 8117:
      case 8121:
        goto LABEL_32;
      case 8119:
        v12 = @"operation abandoned";
        v13 = 46;
        goto LABEL_33;
      case 8124:
        goto LABEL_30;
      default:
        if ((code - 8200) < 7)
        {
          goto LABEL_32;
        }

        if (code)
        {
          goto LABEL_60;
        }

        v12 = @"SUCore underlying error indicating no error";
        v13 = 0;
        break;
    }

    goto LABEL_33;
  }

  if (code <= 8499)
  {
    if (code > 8401)
    {
      if (code > 8406)
      {
        if ((code - 8408) < 2)
        {
          v12 = @"newer update found";
          v13 = 13;
          goto LABEL_33;
        }

        if (code == 8407)
        {
          v12 = @"no documentation found";
          v13 = 6;
          goto LABEL_33;
        }

        if (code == 8410)
        {
          v12 = @"scan postponed";
          v13 = 59;
          goto LABEL_33;
        }

        goto LABEL_60;
      }

      if ((code - 8403) < 3)
      {
LABEL_30:
        v12 = @"operation canceled";
        v13 = 23;
        goto LABEL_33;
      }

      if (code != 8402)
      {
        if (code == 8406)
        {
          v12 = @"up to date";
          v13 = 4;
          goto LABEL_33;
        }

        goto LABEL_60;
      }
    }

    else
    {
      if ((code - 8250) <= 0x32 && ((1 << (code - 58)) & 0x400000000003FLL) != 0)
      {
        goto LABEL_32;
      }

      if (code != 8400)
      {
        if (code == 8401)
        {
          v12 = @"query failed";
          v13 = 3;
          goto LABEL_33;
        }

        goto LABEL_60;
      }
    }

LABEL_53:
    v12 = @"MobileAsset error";
    v13 = 54;
    goto LABEL_33;
  }

  if (code <= 8799)
  {
    if (code <= 8600)
    {
      if ((code - 8500) < 4)
      {
        goto LABEL_32;
      }

      if (code == 8600)
      {
        v12 = @"insufficient disk space";
        v13 = 25;
        goto LABEL_33;
      }

LABEL_60:
      v12 = @"SUCore error with no equivalent SUController error";
      goto LABEL_23;
    }

    if ((code - 8701) >= 3)
    {
      if (code == 8601)
      {
        v12 = @"failed disk space check";
        v13 = 47;
        goto LABEL_33;
      }

      if (code == 8700)
      {
        v12 = @"download failed";
        v13 = 8;
        goto LABEL_33;
      }

      goto LABEL_60;
    }

    goto LABEL_53;
  }

  if ((code - 8900) >= 7)
  {
    if ((code - 8800) < 3)
    {
      v12 = @"MSU operation failed";
      goto LABEL_11;
    }

    if (code != 9900)
    {
      goto LABEL_60;
    }

LABEL_32:
    v12 = @"internal error";
    v13 = 30;
    goto LABEL_33;
  }

  v12 = @"connection error";
  v13 = 35;
LABEL_33:
  v14 = SUControllerError(@"SUControllerError", v13, v4, v12, v8, v9, v10, v11, v20);
LABEL_34:

  return v14;
}

+ (id)newSafeErrorDescription:(id)description
{
  if (!description)
  {
    return @"SUCCESS";
  }

  v3 = MEMORY[0x277CCACA8];
  descriptionCopy = description;
  domain = [descriptionCopy domain];
  code = [descriptionCopy code];
  localizedDescription = [descriptionCopy localizedDescription];

  v8 = [v3 stringWithFormat:@"domain=%@, code=%llu, description=%@", domain, code, localizedDescription];

  return v8;
}

@end