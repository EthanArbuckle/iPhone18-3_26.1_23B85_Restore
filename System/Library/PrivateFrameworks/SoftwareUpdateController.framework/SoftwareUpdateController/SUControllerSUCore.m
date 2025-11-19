@interface SUControllerSUCore
+ (id)errorFromCoreError:(id)a3;
+ (id)newDescriptorFromCoreDescriptor:(id)a3 corePolicy:(id)a4;
+ (id)newProgressFromCoreProgress:(id)a3;
+ (id)newSafeErrorDescription:(id)a3;
@end

@implementation SUControllerSUCore

+ (id)newDescriptorFromCoreDescriptor:(id)a3 corePolicy:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v8 = objc_alloc_init(SUControllerDescriptor);
  v9 = [v5 documentation];

  if (v9)
  {
    v38 = [SUControllerDocumentation alloc];
    v39 = [v5 documentation];
    v37 = [v39 localBundleURL];
    v10 = [v5 documentation];
    [v10 serverAssetURL];
    v11 = v40 = v7;
    v12 = [v5 documentation];
    v13 = [v12 serverAssetMeasurement];
    v14 = [v5 documentation];
    v15 = [v14 serverAssetAlgorithm];
    v16 = [v5 documentation];
    v17 = -[SUControllerDocumentation initWithDocumentationBundleURL:serverAssetURL:serverAssetMeasurement:serverAssetAlgorithm:serverAssetChunkSize:](v38, "initWithDocumentationBundleURL:serverAssetURL:serverAssetMeasurement:serverAssetAlgorithm:serverAssetChunkSize:", v37, v11, v13, v15, [v16 serverAssetChunkSize]);
    [(SUControllerDescriptor *)v8 setDocumentation:v17];

    v7 = v40;
  }

  else
  {
    updated = updateRequiresDocAsset();
    v19 = [MEMORY[0x277D64460] sharedLogger];
    v20 = [v19 oslog];

    if (updated)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SUControllerSUCore newDescriptorFromCoreDescriptor:v20 corePolicy:?];
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [MEMORY[0x277D64418] sharedDevice];
      v22 = [v21 deviceClass];
      *buf = 138412290;
      v42 = v22;
      _os_log_impl(&dword_26AB15000, v20, OS_LOG_TYPE_DEFAULT, "[DESCRIPTOR_FROM_CORE] SUCore descriptor is missing documentation information, allowed for %@ devices", buf, 0xCu);
    }
  }

  v23 = [v5 productVersion];
  [(SUControllerDescriptor *)v8 setProductVersion:v23];

  v24 = [v5 productBuildVersion];
  [(SUControllerDescriptor *)v8 setProductBuildVersion:v24];

  v25 = [v5 documentationID];
  [(SUControllerDescriptor *)v8 setDocumentationID:v25];

  v26 = [v5 publisher];
  [(SUControllerDescriptor *)v8 setPublisher:v26];

  v27 = [v5 productSystemName];
  [(SUControllerDescriptor *)v8 setProductSystemName:v27];

  -[SUControllerDescriptor setDownloadSize:](v8, "setDownloadSize:", [v5 downloadSize]);
  -[SUControllerDescriptor setUnarchivedSize:](v8, "setUnarchivedSize:", [v5 unarchivedSize]);
  -[SUControllerDescriptor setMsuPrepareSize:](v8, "setMsuPrepareSize:", [v5 msuPrepareSize]);
  -[SUControllerDescriptor setInstallationSize:](v8, "setInstallationSize:", [v5 installationSize]);
  -[SUControllerDescriptor setTotalRequiredFreeSpace:](v8, "setTotalRequiredFreeSpace:", [v5 totalRequiredFreeSpace]);
  [(SUControllerDescriptor *)v8 setUserDidAcceptTermsAndConditions:0];
  -[SUControllerDescriptor setFullReplacement:](v8, "setFullReplacement:", [v5 fullReplacement]);
  -[SUControllerDescriptor setRampEnabled:](v8, "setRampEnabled:", [v5 rampEnabled]);
  [(SUControllerDescriptor *)v8 setDenialReasons:0];
  v28 = [v5 getMASoftwareUpdateAsset];
  [(SUControllerDescriptor *)v8 setSoftwareUpdateAsset:v28];

  v29 = [v5 getMADocumentationAsset];
  [(SUControllerDescriptor *)v8 setDocumentationAsset:v29];

  v30 = [v5 releaseType];
  [(SUControllerDescriptor *)v8 setReleaseType:v30];

  v31 = [v5 releaseDate];
  [(SUControllerDescriptor *)v8 setReleaseDate:v31];

  -[SUControllerDescriptor setMandatoryUpdateEligible:](v8, "setMandatoryUpdateEligible:", [v5 mandatoryUpdateEligible]);
  v32 = [v5 mandatoryUpdateVersionMin];
  [(SUControllerDescriptor *)v8 setMandatoryUpdateVersionMin:v32];

  v33 = [v5 mandatoryUpdateVersionMax];
  [(SUControllerDescriptor *)v8 setMandatoryUpdateVersionMax:v33];

  -[SUControllerDescriptor setMandatoryUpdateOptional:](v8, "setMandatoryUpdateOptional:", [v5 mandatoryUpdateOptional]);
  -[SUControllerDescriptor setMandatoryUpdateRestrictedToOutOfTheBox:](v8, "setMandatoryUpdateRestrictedToOutOfTheBox:", [v5 mandatoryUpdateRestrictedToOutOfTheBox]);
  [(SUControllerDescriptor *)v8 setCoreDescriptor:v5];
  if (v7)
  {
LABEL_13:
    -[SUControllerDescriptor setIsSupervisedPolicy:](v8, "setIsSupervisedPolicy:", [v7 isSupervisedPolicy]);
    if ([v7 isRequestedPMVSupervisedPolicy])
    {
      v34 = [v7 requestedProductMarketingVersion];
      [(SUControllerDescriptor *)v8 setRequestedPMV:v34];
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

+ (id)newProgressFromCoreProgress:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = objc_alloc_init(SUControllerProgress);
  v5 = [v3 phase];
  [(SUControllerProgress *)v4 setPhase:v5];

  [v3 portionComplete];
  [(SUControllerProgress *)v4 setPortionComplete:?];
  [v3 estimatedTimeRemaining];
  [(SUControllerProgress *)v4 setEstimatedTimeRemaining:?];
  v6 = [v3 isStalled];

  [(SUControllerProgress *)v4 setIsStalled:v6];
  [(SUControllerProgress *)v4 setIsDone:0];
  return v4;
}

+ (id)errorFromCoreError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v14 = 0;
    goto LABEL_34;
  }

  v5 = [v3 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277D646E8]];

  if (!v6)
  {
    v15 = [v4 domain];
    v16 = [v15 isEqualToString:*MEMORY[0x277D292C8]];

    if (v16)
    {
      v12 = @"MobileSoftwareUpdate operation failed";
LABEL_11:
      v13 = 28;
      goto LABEL_33;
    }

    v17 = [v4 domain];
    v18 = [v17 isEqualToString:*MEMORY[0x277D292D0]];

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

  v7 = [v4 code];
  if (v7 <= 8249)
  {
    switch(v7)
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
        if ((v7 - 8200) < 7)
        {
          goto LABEL_32;
        }

        if (v7)
        {
          goto LABEL_60;
        }

        v12 = @"SUCore underlying error indicating no error";
        v13 = 0;
        break;
    }

    goto LABEL_33;
  }

  if (v7 <= 8499)
  {
    if (v7 > 8401)
    {
      if (v7 > 8406)
      {
        if ((v7 - 8408) < 2)
        {
          v12 = @"newer update found";
          v13 = 13;
          goto LABEL_33;
        }

        if (v7 == 8407)
        {
          v12 = @"no documentation found";
          v13 = 6;
          goto LABEL_33;
        }

        if (v7 == 8410)
        {
          v12 = @"scan postponed";
          v13 = 59;
          goto LABEL_33;
        }

        goto LABEL_60;
      }

      if ((v7 - 8403) < 3)
      {
LABEL_30:
        v12 = @"operation canceled";
        v13 = 23;
        goto LABEL_33;
      }

      if (v7 != 8402)
      {
        if (v7 == 8406)
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
      if ((v7 - 8250) <= 0x32 && ((1 << (v7 - 58)) & 0x400000000003FLL) != 0)
      {
        goto LABEL_32;
      }

      if (v7 != 8400)
      {
        if (v7 == 8401)
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

  if (v7 <= 8799)
  {
    if (v7 <= 8600)
    {
      if ((v7 - 8500) < 4)
      {
        goto LABEL_32;
      }

      if (v7 == 8600)
      {
        v12 = @"insufficient disk space";
        v13 = 25;
        goto LABEL_33;
      }

LABEL_60:
      v12 = @"SUCore error with no equivalent SUController error";
      goto LABEL_23;
    }

    if ((v7 - 8701) >= 3)
    {
      if (v7 == 8601)
      {
        v12 = @"failed disk space check";
        v13 = 47;
        goto LABEL_33;
      }

      if (v7 == 8700)
      {
        v12 = @"download failed";
        v13 = 8;
        goto LABEL_33;
      }

      goto LABEL_60;
    }

    goto LABEL_53;
  }

  if ((v7 - 8900) >= 7)
  {
    if ((v7 - 8800) < 3)
    {
      v12 = @"MSU operation failed";
      goto LABEL_11;
    }

    if (v7 != 9900)
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

+ (id)newSafeErrorDescription:(id)a3
{
  if (!a3)
  {
    return @"SUCCESS";
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v4 code];
  v7 = [v4 localizedDescription];

  v8 = [v3 stringWithFormat:@"domain=%@, code=%llu, description=%@", v5, v6, v7];

  return v8;
}

@end