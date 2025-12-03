@interface SUUtility
+ (BOOL)currentReleaseTypeIsInternal;
+ (BOOL)deleteKeepAliveFilePath:(id)path;
+ (BOOL)isLockdownModeEnabled;
+ (BOOL)isProductionFused;
+ (BOOL)isReturnToServiceModeActive;
+ (BOOL)isSplatOnlyUpdateInstalled;
+ (BOOL)isSplatRollbackDirectoryPresent;
+ (BOOL)isVirtualDevice;
+ (BOOL)writeKeepAliveFilePath:(id)path;
+ (double)autoDownloadTimeInterval;
+ (id)addToDate:(id)date numberOfDays:(int64_t)days;
+ (id)bootTime;
+ (id)currentDeviceName;
+ (id)currentHWModelStr;
+ (id)currentProductBuild;
+ (id)currentProductCategory;
+ (id)currentProductType;
+ (id)currentProductVersion;
+ (id)currentProductVersionExtra;
+ (id)currentReleaseType;
+ (id)errorRemovingUserInfoKey:(id)key originalError:(id)error;
+ (id)errorWithCode:(int64_t)code originalError:(id)error;
+ (id)fastWorkQueue;
+ (id)gregorianCalendar;
+ (id)internalRecoveryStringForErrorCode:(int64_t)code;
+ (id)mainWorkQueue;
+ (id)prettyPrintDate:(id)date;
+ (id)serialNumber;
+ (id)systemContainerURL;
+ (id)taskQueue;
+ (id)translateError:(id)error withAddedUserInfo:(id)info;
+ (id)updateError:(id)error withAdditionalUserInfo:(id)info;
+ (int64_t)MADownloadErrorCodeToSUDownloadErrorCode:(int64_t)code;
+ (int64_t)compareRestoreVersion:(id)version withRestoreVersion:(id)restoreVersion;
+ (int64_t)compareVersionExtra:(id)extra withVersionExtra:(id)versionExtra;
+ (int64_t)translateErrorCodeFromError:(id)error;
+ (unint64_t)devicePadding:(id)padding;
+ (unint64_t)systemPartitionGrowth:(id)growth;
+ (unint64_t)totalDiskSpaceForUpdate:(id)update;
+ (void)assignError:(id *)error withCode:(int64_t)code;
+ (void)assignError:(id *)error withError:(id)withError translate:(BOOL)translate;
+ (void)purgeV1SUAssets;
+ (void)systemRootStatus:(BOOL *)status rootsFound:(BOOL *)found;
@end

@implementation SUUtility

+ (id)taskQueue
{
  if (taskQueue_queuePredicate != -1)
  {
    +[SUUtility taskQueue];
  }

  v3 = taskQueue___taskQueue;

  return v3;
}

uint64_t __22__SUUtility_taskQueue__block_invoke()
{
  taskQueue___taskQueue = dispatch_queue_create("com.apple.softwareupdateservices.operationTaskQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)mainWorkQueue
{
  if (mainWorkQueue_queuePredicate != -1)
  {
    +[SUUtility mainWorkQueue];
  }

  v3 = mainWorkQueue___mainWorkQueue;

  return v3;
}

void __26__SUUtility_mainWorkQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.softwareupdateservices.mainWorkQueue", v2);
  v1 = mainWorkQueue___mainWorkQueue;
  mainWorkQueue___mainWorkQueue = v0;
}

+ (id)fastWorkQueue
{
  if (fastWorkQueue_queuePredicate != -1)
  {
    +[SUUtility fastWorkQueue];
  }

  v3 = fastWorkQueue___fastWorkQueue;

  return v3;
}

void __26__SUUtility_fastWorkQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.softwareupdateservices.fastWorkQueue", v2);
  v1 = fastWorkQueue___fastWorkQueue;
  fastWorkQueue___fastWorkQueue = v0;
}

+ (id)serialNumber
{
  if (serialNumber_serialNumberPredicate != -1)
  {
    +[SUUtility serialNumber];
  }

  v3 = serialNumber___serialNumber;

  return v3;
}

void __25__SUUtility_serialNumber__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = serialNumber___serialNumber;
      serialNumber___serialNumber = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

+ (id)currentProductCategory
{
  if (currentProductCategory_productCategoryPredicate != -1)
  {
    +[SUUtility currentProductCategory];
  }

  v3 = currentProductCategory___currentProductCategory;

  return v3;
}

void __35__SUUtility_currentProductCategory__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = currentProductCategory___currentProductCategory;
      currentProductCategory___currentProductCategory = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

+ (id)currentHWModelStr
{
  if (currentHWModelStr_modelStrPredicate != -1)
  {
    +[SUUtility currentHWModelStr];
  }

  v3 = currentHWModelStr___currentModelStr;

  return v3;
}

void __30__SUUtility_currentHWModelStr__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = currentHWModelStr___currentModelStr;
      currentHWModelStr___currentModelStr = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

+ (id)currentDeviceName
{
  if (currentDeviceName_deviceNamePredicate != -1)
  {
    +[SUUtility currentDeviceName];
  }

  v3 = currentDeviceName___currentDeviceName;

  return v3;
}

void __30__SUUtility_currentDeviceName__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = currentDeviceName___currentDeviceName;
      currentDeviceName___currentDeviceName = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

+ (id)currentProductType
{
  if (currentProductType_productTypePredicate != -1)
  {
    +[SUUtility currentProductType];
  }

  v3 = currentProductType___currentProductType;

  return v3;
}

void __31__SUUtility_currentProductType__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = currentProductType___currentProductType;
      currentProductType___currentProductType = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

+ (id)currentProductVersion
{
  if (currentProductVersion_productVersionPredicate != -1)
  {
    +[SUUtility currentProductVersion];
  }

  v3 = currentProductVersion___currentProductVersion;

  return v3;
}

void __34__SUUtility_currentProductVersion__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = currentProductVersion___currentProductVersion;
      currentProductVersion___currentProductVersion = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

+ (id)currentProductVersionExtra
{
  if (currentProductVersionExtra_productVersionExtraPredicate != -1)
  {
    +[SUUtility currentProductVersionExtra];
  }

  v3 = currentProductVersionExtra___currentProductVersionExtra;

  return v3;
}

void __39__SUUtility_currentProductVersionExtra__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = currentProductVersionExtra___currentProductVersionExtra;
      currentProductVersionExtra___currentProductVersionExtra = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

+ (id)currentProductBuild
{
  if (currentProductBuild_productBuildPredicate != -1)
  {
    +[SUUtility currentProductBuild];
  }

  v3 = currentProductBuild___currentProductBuild;

  return v3;
}

void __32__SUUtility_currentProductBuild__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = currentProductBuild___currentProductBuild;
      currentProductBuild___currentProductBuild = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

+ (id)currentReleaseType
{
  if (currentReleaseType_releaseTypePredicate != -1)
  {
    +[SUUtility currentReleaseType];
  }

  v3 = currentReleaseType___currentReleaseType;

  return v3;
}

void __31__SUUtility_currentReleaseType__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = currentReleaseType___currentReleaseType;
      currentReleaseType___currentReleaseType = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

+ (BOOL)currentReleaseTypeIsInternal
{
  v2 = +[SUUtility currentReleaseType];
  v3 = [v2 isEqualToString:@"Internal"];

  return v3;
}

+ (BOOL)isProductionFused
{
  if (isProductionFused_fusingPredicate != -1)
  {
    +[SUUtility isProductionFused];
  }

  return isProductionFused___isProductionFused;
}

void __30__SUUtility_isProductionFused__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      isProductionFused___isProductionFused = CFBooleanGetValue(v1) != 0;
    }

    CFRelease(v1);
  }
}

+ (BOOL)isVirtualDevice
{
  if (isVirtualDevice_virtualPredicate != -1)
  {
    +[SUUtility isVirtualDevice];
  }

  return isVirtualDevice___isVirtualDevice;
}

void __28__SUUtility_isVirtualDevice__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      isVirtualDevice___isVirtualDevice = CFBooleanGetValue(v1) != 0;
    }

    CFRelease(v1);
  }
}

void __40__SUUtility_randomIntWithMinVal_maxVal___block_invoke()
{
  v0 = time(0);

  srand(v0);
}

+ (BOOL)isLockdownModeEnabled
{
  mEMORY[0x277D243A0] = [MEMORY[0x277D243A0] shared];
  enabled = [mEMORY[0x277D243A0] enabled];

  return enabled;
}

+ (id)errorWithCode:(int64_t)code originalError:(id)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = v6;
  if (errorCopy)
  {
    [v6 setSafeObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  }

  v8 = +[SUUtility currentReleaseTypeIsInternal];
  if ((code - 1) <= 0xFFFFFFFFFFFFFFFDLL && v8)
  {
    v9 = [SUUtility internalRecoveryStringForErrorCode:code];
    v10 = v9;
    if (v9)
    {
      v15 = *MEMORY[0x277CCA498];
      v16[0] = v9;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [v7 addEntriesFromDictionary:v11];
    }
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:code userInfo:v7];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)updateError:(id)error withAdditionalUserInfo:(id)info
{
  errorCopy = error;
  v6 = errorCopy;
  v7 = errorCopy;
  if (errorCopy)
  {
    v7 = errorCopy;
    if (info)
    {
      v8 = MEMORY[0x277CBEB38];
      infoCopy = info;
      userInfo = [v6 userInfo];
      v11 = [v8 dictionaryWithDictionary:userInfo];

      [v11 addEntriesFromDictionary:infoCopy];
      v12 = MEMORY[0x277CCA9B8];
      domain = [v6 domain];
      v7 = [v12 errorWithDomain:domain code:objc_msgSend(v6 userInfo:{"code"), v11}];
    }
  }

  return v7;
}

+ (id)errorRemovingUserInfoKey:(id)key originalError:(id)error
{
  keyCopy = key;
  if (error)
  {
    v6 = MEMORY[0x277CBEB38];
    errorCopy = error;
    userInfo = [errorCopy userInfo];
    v9 = [v6 dictionaryWithDictionary:userInfo];

    if (v9)
    {
      v10 = *MEMORY[0x277CCA7E8];
      v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      if (v11)
      {
        v12 = [SUUtility errorRemovingUserInfoKey:keyCopy originalError:v11];
        [v9 setObject:v12 forKeyedSubscript:v10];
      }

      [v9 setObject:0 forKeyedSubscript:keyCopy];
    }

    v13 = MEMORY[0x277CCA9B8];
    domain = [errorCopy domain];
    code = [errorCopy code];

    v16 = [v13 errorWithDomain:domain code:code userInfo:v9];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)assignError:(id *)error withCode:(int64_t)code
{
  v5 = [SUUtility errorWithCode:code];
  [SUUtility assignError:error withError:v5 translate:0];
}

+ (void)assignError:(id *)error withError:(id)withError translate:(BOOL)translate
{
  withErrorCopy = withError;
  v8 = withErrorCopy;
  if (error && withErrorCopy)
  {
    v11 = withErrorCopy;
    if (translate)
    {
      v9 = [SUUtility translateError:withErrorCopy];
    }

    else
    {
      v9 = withErrorCopy;
    }

    v10 = v9;
    *error = v10;

    v8 = v11;
  }

  MEMORY[0x2821F96F8](withErrorCopy, v8);
}

+ (id)translateError:(id)error withAddedUserInfo:(id)info
{
  v22[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  infoCopy = info;
  if (!errorCopy)
  {
    v13 = 0;
    goto LABEL_13;
  }

  domain = [errorCopy domain];
  v9 = [domain isEqualToString:@"com.apple.softwareupdateservices.errors"];

  if (!v9)
  {
    v14 = [self translateErrorCodeFromError:errorCopy];
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:infoCopy];
    [v12 setSafeObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
    if (+[SUUtility currentReleaseTypeIsInternal]&& (v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = [SUUtility internalRecoveryStringForErrorCode:v14];
      v16 = v15;
      if (v15)
      {
        v21 = *MEMORY[0x277CCA498];
        v22[0] = v15;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        [v12 addEntriesFromDictionary:v17];
      }
    }

    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:v14 userInfo:v12];
    v13 = [MEMORY[0x277CCA9B8] buildCheckedError:v18];

    goto LABEL_12;
  }

  if (infoCopy)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    userInfo = [errorCopy userInfo];
    v12 = [v10 initWithDictionary:userInfo];

    [v12 addEntriesFromDictionary:infoCopy];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:objc_msgSend(errorCopy userInfo:{"code"), v12}];
LABEL_12:

    goto LABEL_13;
  }

  v13 = errorCopy;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (int64_t)translateErrorCodeFromError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:@"com.apple.softwareupdateservices.errors"];

  code = [errorCopy code];
  if (v5)
  {
LABEL_2:
    v7 = code;
    goto LABEL_30;
  }

  v8 = *MEMORY[0x277D28980];
  domain2 = [errorCopy domain];
  LODWORD(v8) = [v8 isEqualToString:domain2];

  if (v8)
  {
    if ((code - 1) < 0x16)
    {
      v7 = qword_26ABF8EE8[code - 1];
      goto LABEL_30;
    }

LABEL_29:
    v7 = -1;
    goto LABEL_30;
  }

  v10 = *MEMORY[0x277D292C8];
  domain3 = [errorCopy domain];
  LODWORD(v10) = [v10 isEqualToString:domain3];

  if (!v10)
  {
    domain4 = [errorCopy domain];
    v13 = [domain4 isEqualToString:*MEMORY[0x277D646E0]];

    if (!v13)
    {
      goto LABEL_29;
    }

    v7 = -1;
    if (code <= 8402)
    {
      if (code <= 8399)
      {
        if ((code - 8102) <= 0xE && ((1 << (code + 90)) & 0x5001) != 0)
        {
          v7 = 22;
          goto LABEL_30;
        }

        if (code)
        {
          goto LABEL_30;
        }

        goto LABEL_2;
      }

      if (code == 8401)
      {
        v7 = 58;
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    if (code <= 8410)
    {
      if (code == 8403)
      {
        v7 = 80;
        goto LABEL_30;
      }

      if (code == 8406)
      {
        v7 = 3;
        goto LABEL_30;
      }

      v19 = 8407;
    }

    else
    {
      if (code <= 8699)
      {
        if (code != 8411)
        {
          if (code == 8600)
          {
            v7 = 43;
          }

          goto LABEL_30;
        }

LABEL_32:
        v7 = 57;
        goto LABEL_30;
      }

      if (code == 8700)
      {
        v7 = 59;
        goto LABEL_30;
      }

      v19 = 9009;
    }

    if (code == v19)
    {
      v7 = 38;
    }

    goto LABEL_30;
  }

  if (code != 812)
  {
    if (code == 26)
    {
      v7 = 47;
      goto LABEL_30;
    }

    if (code == 2)
    {
      v7 = 19;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  userInfo = [errorCopy userInfo];
  v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  domain5 = [v15 domain];
  if (![domain5 isEqualToString:@"com.apple.MobileAssetError.Download"])
  {

    goto LABEL_29;
  }

  code2 = [v15 code];

  if (code2 == 59)
  {
    v7 = 57;
  }

  else
  {
    v7 = -1;
  }

LABEL_30:
  return v7;
}

+ (int64_t)MADownloadErrorCodeToSUDownloadErrorCode:(int64_t)code
{
  v8 = code - 1;
  if (code - 1) < 0x1C && ((0x8001DFFu >> v8))
  {
    return qword_26ABF8F98[v8];
  }

  SULogInfo(@"Unknown MAError code: %ld", a2, code, v3, v4, v5, v6, v7, code);
  return 59;
}

+ (id)internalRecoveryStringForErrorCode:(int64_t)code
{
  v4 = CFPreferencesCopyValue(@"EnableSso", @"com.apple.MobileSoftwareUpdate", @"mobile", *MEMORY[0x277CBF010]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  if (code > 83)
  {
    if (code > 108)
    {
      if (code == 109)
      {
        return @"Some testing defaults are detected";
      }

      if (code == 111)
      {
        return @"Lost download task. Please try again.";
      }
    }

    else
    {
      if (code == 84)
      {
        return @"client is not authorised, SoftwareUpdateServicesd is in exclusive mode";
      }

      if (code == 107)
      {
        return @"Failed to load the update brain. Please try again.";
      }
    }

    return 0;
  }

  else
  {
    result = @"Insufficient space for update. Please free up space on the device and try again.";
    switch(code)
    {
      case -1:
        result = @"Unknown Error.";
        break;
      case 0:
        result = @"No Error.";
        break;
      case 1:
      case 26:
      case 27:
      case 40:
        result = @"There was a networking error during the update attempt. Please verify your device has a valid network connection.";
        break;
      case 2:
      case 6:
        return result;
      case 3:
        result = @"No update found.";
        break;
      case 4:
        result = @"Failed to find a SU documentation asset.";
        break;
      case 5:
        result = @"The device found a malformed Software Update asset on the asset server.";
        break;
      case 17:
        result = @"Failed to prepare update.";
        break;
      case 18:
        result = @"SU asset is corrupted. Please delete the update from settings and try downloading again.";
        break;
      case 19:
        if (+[SUUtility currentReleaseTypeIsInternal](SUUtility, "currentReleaseTypeIsInternal") && !(v7 | !+[SUUtility isProductionFused]))
        {
          result = @"Installing an internal build on a production fused device requires AppleConnect for personalization. Enable AppleConnect from:\n Settings > Internal Settings > Mobile Software Update > check Use AppleConnect.";
        }

        else
        {
          result = @"Personalization failed. This build might not be nominated for installation yet. Please try installing again later.";
        }

        break;
      case 31:
        result = @"Download not allowable.";
        break;
      case 37:
        result = @"Remote connection lost.";
        break;
      case 47:
        result = @"Missing installation Keybag.";
        break;
      case 53:
        result = @"Failed to prepare the update because a root is installed or the system is rooted from live fs. Please try downloading again. The device will automatically try downloading a full replacement asset, which has the ability to prepare when a root is installed.";
        break;
      case 54:
        return @"Failed to load the update brain. Please try again.";
      case 57:
        result = @"Failed to download the Software Update catalog from the internal asset server. Please verify that the device is connected to an internal network or VPN and try again.";
        break;
      case 58:
        result = @"Failed to query MobileAsset for Software Update asset. Please try again.";
        break;
      case 59:
        result = @"MobileAsset software update download failure.";
        break;
      case 66:
        result = @"MobileAsset XPC failure.";
        break;
      case 67:
        result = @"MobileAsset staging failure.";
        break;
      case 68:
        result = @"MobileAsset data processing failure. Please make sure you have at least UI Binary disclosure for the release you're trying to update to.";
        break;
      case 69:
        result = @"MobileAsset unzip failure.";
        break;
      case 70:
        result = @"MobileAsset file move failure.";
        break;
      case 71:
        result = @"MobileAsset asset install failure.";
        break;
      case 72:
        result = @"mobileassetd exited.";
        break;
      case 73:
        result = @"StreamingZip extraction error.";
        break;
      case 74:
        result = @"Missing MobileAsset entitlement.";
        break;
      case 75:
        result = @"mobileassetd daemon not ready to download. Please try again in a moment.";
        break;
      case 77:
        result = @"DAS failed to run auto install activity.";
        break;
      default:
        return 0;
    }
  }

  return result;
}

+ (unint64_t)systemPartitionGrowth:(id)growth
{
  v25 = *MEMORY[0x277D85DE8];
  growthCopy = growth;
  memset(&v24, 0, 512);
  minimumSystemPartitionSize = [growthCopy minimumSystemPartitionSize];
  systemPartitionPadding = [growthCopy systemPartitionPadding];
  v6 = [SUUtility devicePadding:systemPartitionPadding];

  if (statfs("/", &v24))
  {
    v7 = 0;
  }

  else
  {
    v8 = minimumSystemPartitionSize + 75497472 + v6;
    v22[2] = 0;
    memset(v23, 0, 12);
    v22[0] = 5;
    v22[1] = 2155872256;
    if (getattrlist("/", v22, v23, 0xCuLL, 0))
    {
      v9 = (v24.f_blocks - v24.f_bfree) * v24.f_bsize;
    }

    else
    {
      v9 = *(v23 + 4);
    }

    v10 = v8 >= v9;
    v11 = v8 - v9;
    if (v10)
    {
      v7 = v11;
    }

    else
    {
      v7 = 0;
    }
  }

  humanReadableUpdateName = [growthCopy humanReadableUpdateName];
  SULogInfo(@"Sytem partition growth for [%@] <%p> = %llu bytes", v13, v14, v15, v16, v17, v18, v19, humanReadableUpdateName);

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (unint64_t)totalDiskSpaceForUpdate:(id)update
{
  updateCopy = update;
  totalRequiredFreeSpace = [updateCopy totalRequiredFreeSpace];
  v5 = [SUUtility systemPartitionGrowth:updateCopy];

  return totalRequiredFreeSpace + 104857600 + v5;
}

+ (unint64_t)devicePadding:(id)padding
{
  v79 = *MEMORY[0x277D85DE8];
  paddingCopy = padding;
  valuePtr = 0;
  if (!paddingCopy)
  {
    goto LABEL_39;
  }

  v4 = *MEMORY[0x277CD28A0];
  v5 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, "disk0");
  MatchingService = IOServiceGetMatchingService(v4, v5);
  if (!MatchingService)
  {
    SULogInfo(@"Could not find service for device with BSD name %s", v7, v8, v9, v10, v11, v12, v13, "disk0");
LABEL_39:
    v60 = 0;
    goto LABEL_44;
  }

  v14 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"Size", *MEMORY[0x277CBECE8], 0);
  v23 = CFProperty;
  if (!CFProperty || (v24 = CFGetTypeID(CFProperty), v24 != CFNumberGetTypeID()))
  {
    SULogInfo(@"Invalid value '%@' for property key '%@'", v16, v17, v18, v19, v20, v21, v22, v23);
    v60 = 0;
    goto LABEL_36;
  }

  if (!CFNumberGetValue(v23, kCFNumberLongLongType, &valuePtr))
  {
    SULogInfo(@"Failed to convert '%@' to primitive value", v25, v26, v27, v28, v29, v30, v31, v23);
LABEL_42:
    IOObjectRelease(v14);
    v60 = 0;
LABEL_43:
    CFRelease(v23);
    goto LABEL_44;
  }

  if (valuePtr >= 0)
  {
    v32 = valuePtr;
  }

  else
  {
    v32 = valuePtr + 0x3FFFFFFF;
  }

  Count = CFDictionaryGetCount(paddingCopy);
  if (!Count)
  {
    SULogInfo(@"No padding entries, returning default padding value %llu\n", v34, v35, v36, v37, v38, v39, v40, 0);
    goto LABEL_42;
  }

  v41 = Count;
  v42 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v43 = malloc_type_calloc(v41, 8uLL, 0x6004044C4A2DFuLL);
  v51 = v43;
  if (!v42 || !v43)
  {
    SULogInfo(@"Failed to allocate key/value buffers to fetch system padding value\n", v44, v45, v46, v47, v48, v49, v50, v71);
    v60 = 0;
    if (v42)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  CFDictionaryGetKeysAndValues(paddingCopy, v42, v43);
  if (v41 < 1)
  {
    v60 = 0;
    goto LABEL_48;
  }

  v59 = 0;
  v60 = 0;
  v61 = 0;
  v72 = v32 >> 30;
  v73 = 0;
  do
  {
    v62 = v42[v59];
    v63 = v51[v59];
    v75 = 0;
    v74 = 0;
    if (!v62)
    {
      v68 = @"Failed to get marketing size key from padding dict\n";
LABEL_31:
      SULogInfo(v68, v52, v53, v54, v55, v56, v57, v58, v71);
      goto LABEL_32;
    }

    if (!v63)
    {
      v68 = @"Failed to get padding size for key in padding dict\n";
      goto LABEL_31;
    }

    v78 = 0;
    *buffer = 0;
    if (!CFStringGetCString(v62, buffer, 10, 0x8000100u))
    {
      v68 = @"Failed to get C string from CFStringRef padding key\n";
      goto LABEL_31;
    }

    if (!sscanf(buffer, "%d", &v74))
    {
      v68 = @"Failed to parse out padding value from capacity string\n";
      goto LABEL_31;
    }

    if (!CFNumberGetValue(v63, kCFNumberSInt64Type, &v75))
    {
      v68 = @"Failed to convert CFNumberRef value into int\n";
      goto LABEL_31;
    }

    v64 = v72 - v74;
    if ((v72 - v74) < 0)
    {
      v64 = v74 - v72;
    }

    v65 = v59 != 0;
    v66 = v64 > v61;
    if (v65 && v66)
    {
      v67 = v73;
    }

    else
    {
      v61 = v64;
      v67 = v74;
    }

    v73 = v67;
    if (!v65 || !v66)
    {
      v60 = v75;
    }

LABEL_32:
    ++v59;
  }

  while (v41 != v59);
  if (v61 >= 11)
  {
    SULogInfo(@"Closest marketing capacity entry for padding was %dGB however this device is %dGB, this might not be optimal\n", v52, v53, v54, v55, v56, v57, v58, v73);
  }

LABEL_48:
  free(v42);
LABEL_49:
  if (v51)
  {
    free(v51);
  }

LABEL_36:
  IOObjectRelease(v14);
  if (v23)
  {
    goto LABEL_43;
  }

LABEL_44:

  v69 = *MEMORY[0x277D85DE8];
  return v60 << 20;
}

+ (void)purgeV1SUAssets
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.MobileAsset.SoftwareUpdate";
  v4[1] = @"com.apple.MobileAsset.SoftwareUpdateDocumentation";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  purgeAssets(v2, 1, 0);

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)gregorianCalendar
{
  v2 = objc_alloc(MEMORY[0x277CBEA80]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x277CBEE80]];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v3 setTimeZone:systemTimeZone];

  return v3;
}

+ (id)addToDate:(id)date numberOfDays:(int64_t)days
{
  [date timeIntervalSinceReferenceDate];
  at = v5;
  if (CFCalendarAddComponents(+[SUUtility gregorianCalendar], &at, 0, "d", days))
  {
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:at];
  }

  else
  {
    SULogDebug(@"addToDate:numberOfDays: unable to add %ld days to date: %f", v6, v7, v8, v9, v10, v11, v12, days);
    v13 = 0;
  }

  return v13;
}

+ (id)prettyPrintDate:(id)date
{
  dateCopy = date;
  v4 = prettyPrintDate____dateFormatter;
  if (!prettyPrintDate____dateFormatter)
  {
    v5 = objc_opt_new();
    v6 = prettyPrintDate____dateFormatter;
    prettyPrintDate____dateFormatter = v5;

    [prettyPrintDate____dateFormatter setDateStyle:1];
    v7 = prettyPrintDate____dateFormatter;
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    [v7 setTimeZone:localTimeZone];

    [prettyPrintDate____dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
    v4 = prettyPrintDate____dateFormatter;
  }

  v9 = [v4 stringFromDate:dateCopy];

  return v9;
}

+ (id)systemContainerURL
{
  v2 = systemContainerURL_systemContainerUrl;
  if (!systemContainerURL_systemContainerUrl)
  {
    v3 = container_system_path_for_identifier();
    if (v3)
    {
      v11 = v3;
      SULogDebug(@"System container path is %s", v4, v5, v6, v7, v8, v9, v10, v3);
      v12 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v11 isDirectory:1 relativeToURL:0];
      v13 = systemContainerURL_systemContainerUrl;
      systemContainerURL_systemContainerUrl = v12;

      free(v11);
      v14 = systemContainerURL_systemContainerUrl;
      v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
      LOBYTE(v14) = [v14 setResourceValue:v15 forKey:*MEMORY[0x277CBE878] error:0];

      if (v14)
      {
LABEL_7:
        v2 = systemContainerURL_systemContainerUrl;
        goto LABEL_8;
      }

      v16 = @"failed to exclude system container from backup";
    }

    else
    {
      v18 = 1;
      v16 = @"Error getting system container: %llu";
    }

    SULogDebug(v16, v4, v5, v6, v7, v8, v9, v10, v18);
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

+ (BOOL)writeKeepAliveFilePath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager createFileAtPath:pathCopy contents:0 attributes:0];

  if (v6)
  {
    v14 = @"Successfully wrote keep alive file:%@";
  }

  else
  {
    v14 = @"Failed to write keep alive file:%@";
  }

  SULogDebug(v14, v7, v8, v9, v10, v11, v12, v13, pathCopy);

  return v6;
}

+ (BOOL)deleteKeepAliveFilePath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy isDirectory:0])
  {
    v29 = 0;
    v12 = [defaultManager removeItemAtPath:pathCopy error:&v29];
    v20 = v29;
    if (v12)
    {
      SULogDebug(@"Successfully deleted keep alive file:%@", v13, v14, v15, v16, v17, v18, v19, pathCopy);
    }

    else
    {
      SULogDebug(@"Failed to delete keep alive file:%@", v13, v14, v15, v16, v17, v18, v19, pathCopy);
      if (v20)
      {
        SULogDebug(@"Delete error: %@", v21, v22, v23, v24, v25, v26, v27, v20);
      }
    }
  }

  else
  {
    SULogDebug(@"No keep alive file found at:%@", v5, v6, v7, v8, v9, v10, v11, pathCopy);
    LOBYTE(v12) = 1;
  }

  return v12;
}

+ (id)bootTime
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  *v9 = 0x1500000001;
  v8 = 16;
  v2 = sysctl(v9, 2u, &v6, &v8, 0, 0);
  v3 = 0;
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v6 + v7 / 0xF4240uLL)];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BOOL)isSplatRollbackDirectoryPresent
{
  mEMORY[0x277D25710] = [MEMORY[0x277D25710] sharedDataAccessor];
  v17 = 0;
  v3 = [mEMORY[0x277D25710] copyPathForPersistentData:112 error:&v17];
  v4 = v17;

  if (v3)
  {
    v16 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [defaultManager fileExistsAtPath:v3 isDirectory:&v16];
    v14 = v13 & v16;
  }

  else
  {
    SULogInfo(@"Failed to get path to rollback assets: %@", v5, v6, v7, v8, v9, v10, v11, v4);
    v14 = 0;
  }

  return v14;
}

+ (BOOL)isSplatOnlyUpdateInstalled
{
  v2 = +[SUPreferences sharedInstance];
  fakeSplatInstalled = [v2 fakeSplatInstalled];

  if (fakeSplatInstalled)
  {
    SULogInfo(@"Fake splat installed", v4, v5, v6, v7, v8, v9, v10, v14);
    return 1;
  }

  else
  {
    mEMORY[0x277D64420] = [MEMORY[0x277D64420] sharedDevice];
    hasSplatOnlyUpdateInstalled = [mEMORY[0x277D64420] hasSplatOnlyUpdateInstalled];

    return hasSplatOnlyUpdateInstalled;
  }
}

+ (int64_t)compareRestoreVersion:(id)version withRestoreVersion:(id)restoreVersion
{
  v5 = MEMORY[0x277D64498];
  restoreVersionCopy = restoreVersion;
  versionCopy = version;
  v8 = [[v5 alloc] initWithRestoreVersion:versionCopy];

  v9 = [objc_alloc(MEMORY[0x277D64498]) initWithRestoreVersion:restoreVersionCopy];
  if (v8 | v9)
  {
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = 1;
    }

    else if (v8 || !v9)
    {
      v11 = [v8 compare:v9];
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (int64_t)compareVersionExtra:(id)extra withVersionExtra:(id)versionExtra
{
  extraCopy = extra;
  versionExtraCopy = versionExtra;
  v7 = versionExtraCopy;
  if (extraCopy | versionExtraCopy)
  {
    if (extraCopy || !versionExtraCopy)
    {
      if (!extraCopy || versionExtraCopy)
      {
        v8 = [extraCopy compare:versionExtraCopy];
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (double)autoDownloadTimeInterval
{
  v2 = +[SUUtility currentReleaseType];
  if ([v2 isEqualToString:@"Internal"])
  {
    v3 = +[SUPreferences sharedInstance];
    scanWeeklyInternally = [v3 scanWeeklyInternally];

    if (!scanWeeklyInternally)
    {
      v12 = @"[Auto download] Apple Internal: Downloading every 1 day";
      v13 = 86400.0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  isLockdownModeEnabled = [objc_opt_class() isLockdownModeEnabled];
  v15 = isLockdownModeEnabled == 0;
  if (isLockdownModeEnabled)
  {
    v12 = @"[Auto download]: Lockdown mode enabled: Downloading every 1 day";
  }

  else
  {
    v12 = @"[Auto download] Customer: Downloading every 5 days";
  }

  if (v15)
  {
    v13 = 432000.0;
  }

  else
  {
    v13 = 86400.0;
  }

LABEL_11:
  SULogInfo(v12, v5, v6, v7, v8, v9, v10, v11, v17);
  return v13;
}

+ (void)systemRootStatus:(BOOL *)status rootsFound:(BOOL *)found
{
  if (systemRootStatus_rootsFound__onceToken == -1)
  {
    if (!status)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  +[SUUtility systemRootStatus:rootsFound:];
  if (status)
  {
LABEL_3:
    *status = systemRootStatus_rootsFound__is_live_fs;
  }

LABEL_4:
  if (found)
  {
    *found = systemRootStatus_rootsFound__darwinup;
  }
}

void __41__SUUtility_systemRootStatus_rootsFound___block_invoke()
{
  v25 = *MEMORY[0x277D85DE8];
  bzero(&v24, 0x878uLL);
  if (statfs("/", &v24))
  {
    v23 = *__error();
    SULogInfo(@"%s: statfs(/) failed: %d", v0, v1, v2, v3, v4, v5, v6, "+[SUUtility systemRootStatus:rootsFound:]_block_invoke");
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v24.f_mntfromname];
    if ([v7 containsString:@"darwinup"])
    {
      SULogInfo(@"%s: rooted from darwinup snapshot %@", v8, v9, v10, v11, v12, v13, v14, "+[SUUtility systemRootStatus:rootsFound:]_block_invoke");
      systemRootStatus_rootsFound__darwinup = 1;
    }

    if ([v7 hasPrefix:@"/dev/disk"])
    {
      SULogInfo(@"%s: rooted from live fs %@", v15, v16, v17, v18, v19, v20, v21, "+[SUUtility systemRootStatus:rootsFound:]_block_invoke");
      systemRootStatus_rootsFound__is_live_fs = 1;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isReturnToServiceModeActive
{
  isRapidReturnToService = [MEMORY[0x277D24648] isRapidReturnToService];
  v3 = +[SUPreferences sharedInstance];
  enableRapidReturnToService = [v3 enableRapidReturnToService];

  return (isRapidReturnToService | enableRapidReturnToService) & 1;
}

@end