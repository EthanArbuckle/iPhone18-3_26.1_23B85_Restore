@interface MSUBootFirmwareUpdater
+ (BOOL)supportsDualiBoot;
+ (id)_updaterClasses;
+ (id)updater;
+ (id)updaterWithIOService:(unsigned int)service;
+ (id)updaterWithTimeout:(double)timeout;
- (BOOL)generateFirmwareImagesWithCallback:(ramrod_update_callbacks *)callback context:(firmware_update_context *)context;
- (MSUBootFirmwareUpdater)init;
- (MSUBootFirmwareUpdater)initWithIOService:(unsigned int)service;
- (MSUBootFirmwareUpdater)initWithIOServiceMatching:(id)matching;
- (id)_encodeFirmware:(id)firmware withRestoreInfo:(id)info;
- (id)_restoreInfoDictionary;
- (id)copyFirmwareWithRestoreInfo:(id)info;
- (int)_encodeAndWriteFirmware:(id)firmware toWriter:(id)writer withError:(id *)error;
- (void)dealloc;
- (void)setApNonce:(id)nonce;
- (void)setApNonceSlotID:(unsigned int)d;
@end

@implementation MSUBootFirmwareUpdater

+ (id)_updaterClasses
{
  if (objc_opt_class() == self)
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v3 = &v7;
    v4 = 4;
  }

  else
  {
    selfCopy = self;
    v3 = &selfCopy;
    v4 = 1;
  }

  return [NSArray arrayWithObjects:v3 count:v4, selfCopy, v7, v8, v9, v10];
}

+ (id)updater
{
  if (objc_opt_class() != self)
  {
    v3 = objc_alloc_init(self);

    return v3;
  }

  if ([self supportsPCIeNANDBoot])
  {
    v5 = PCIeNANDiBootUpdater;
LABEL_9:

    return [(__objc2_class *)v5 updater];
  }

  if ([self supportsDualiBoot])
  {
    v5 = SPIiBootUpdater;
    goto LABEL_9;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _updaterClasses = [self _updaterClasses];
  result = [_updaterClasses countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v11;
LABEL_14:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(_updaterClasses);
      }

      result = [*(*(&v10 + 1) + 8 * v9) updater];
      if (result)
      {
        break;
      }

      if (v7 == ++v9)
      {
        result = [_updaterClasses countByEnumeratingWithState:&v10 objects:v14 count:16];
        v7 = result;
        if (result)
        {
          goto LABEL_14;
        }

        return result;
      }
    }
  }

  return result;
}

+ (id)updaterWithIOService:(unsigned int)service
{
  v3 = *&service;
  if (objc_opt_class() == self)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    _updaterClasses = [self _updaterClasses];
    result = [_updaterClasses countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (result)
    {
      v8 = result;
      v9 = *v12;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(_updaterClasses);
        }

        result = [*(*(&v11 + 1) + 8 * v10) updaterWithIOService:v3];
        if (result)
        {
          break;
        }

        if (v8 == ++v10)
        {
          result = [_updaterClasses countByEnumeratingWithState:&v11 objects:v15 count:16];
          v8 = result;
          if (result)
          {
            goto LABEL_7;
          }

          return result;
        }
      }
    }
  }

  else
  {
    v5 = [[self alloc] initWithIOService:v3];

    return v5;
  }

  return result;
}

+ (id)updaterWithTimeout:(double)timeout
{
  v5 = +[NSProcessInfo processInfo];
  [(NSProcessInfo *)v5 systemUptime];
  v7 = v6 + timeout;
  NSStringFromClass(self);
  iBU_LOG_real(@"Waiting %ld seconds for %@\n", "+[MSUBootFirmwareUpdater updaterWithTimeout:]", v8, v9, v10, v11, v12, v13, llround(timeout));
  while (1)
  {
    updater = [self updater];
    if (updater)
    {
      break;
    }

    [(NSProcessInfo *)v5 systemUptime];
    v16 = llround(v7 - v15);
    sleep(v16 > 0);
    if (v16 <= 0)
    {
      v23 = @"Found no matching service.";
      goto LABEL_6;
    }
  }

  v24 = objc_opt_class();
  v26 = NSStringFromClass(v24);
  v23 = @"Created an instance of %@ to update this device's firmware and boot images";
LABEL_6:
  iBU_LOG_real(v23, "+[MSUBootFirmwareUpdater updaterWithTimeout:]", v17, v18, v19, v20, v21, v22, v26);
  return updater;
}

- (MSUBootFirmwareUpdater)init
{
  iOMatchingPropertyTable = [objc_opt_class() IOMatchingPropertyTable];

  return [(MSUBootFirmwareUpdater *)self initWithIOServiceMatching:iOMatchingPropertyTable];
}

- (MSUBootFirmwareUpdater)initWithIOService:(unsigned int)service
{
  v10.receiver = self;
  v10.super_class = MSUBootFirmwareUpdater;
  v4 = [(MSUBootFirmwareUpdater *)&v10 init];
  if (v4)
  {
    matches = 0;
    iOMatchingPropertyTable = [objc_opt_class() IOMatchingPropertyTable];
    if (service && (v6 = iOMatchingPropertyTable, [(__CFDictionary *)iOMatchingPropertyTable count]) && (!IOServiceMatchPropertyTable(service, v6, &matches) ? (v7 = matches == 0) : (v7 = 1), !v7))
    {
      IOServiceWaitQuiet(service, 0);
      IOObjectRetain(service);
      v4->_matchedService = service;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (MSUBootFirmwareUpdater)initWithIOServiceMatching:(id)matching
{
  if ([matching count])
  {
    if (matching)
    {
      v5 = CFRetain(matching);
    }

    else
    {
      v5 = 0;
    }

    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
  }

  else
  {
    MatchingService = 0;
  }

  v7 = [(MSUBootFirmwareUpdater *)self initWithIOService:MatchingService];
  if (MatchingService && IOObjectRelease(MatchingService))
  {
    sub_D9B14(&v9, v10);
  }

  return v7;
}

- (void)setApNonce:(id)nonce
{
  v4 = [nonce copy];

  self->_apNonce = v4;
  self->_apNonceSlotID = 0;
  self->_supportsSlotIDs = 0;
}

- (void)setApNonceSlotID:(unsigned int)d
{
  self->_apNonce = 0;
  self->_apNonceSlotID = d;
  self->_supportsSlotIDs = 1;
}

- (void)dealloc
{
  matchedService = self->_matchedService;
  if (matchedService)
  {
    IOObjectRelease(matchedService);
  }

  v4.receiver = self;
  v4.super_class = MSUBootFirmwareUpdater;
  [(MSUBootFirmwareUpdater *)&v4 dealloc];
}

+ (BOOL)supportsDualiBoot
{
  v3 = sub_4EF1C("IODeviceTree:/product", @"dual-iboot-support");
  if (v3)
  {
    LOBYTE(v3) = [self supportsPCIeNANDBoot] ^ 1;
  }

  return v3;
}

- (BOOL)generateFirmwareImagesWithCallback:(ramrod_update_callbacks *)callback context:(firmware_update_context *)context
{
  v7 = objc_opt_new();
  v77 = objc_opt_new();
  v88[0] = @"iBoot";
  v88[1] = @"ANS";
  v88[2] = @"iBootData";
  v88[3] = @"DCP";
  v88[4] = @"AppleLogo";
  obj = [NSArray arrayWithObjects:v88 count:5];
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 1;
  v8 = (callback->var2)(context);
  [v7 addObject:v8];
  v9 = (callback->var3)(context);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 mutableCopy];
    if ([objc_opt_class() isSingleStageBoot])
    {
      iBU_LOG_real(@"iBoot data provided in firmware images yet this is single-stage-boot device - removing from firmware images being updated.", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v11, v12, v13, v14, v15, v16, v70);
      [v10 removeObjectForKey:@"iBoot"];
      v17 = 0;
    }

    else
    {
      v17 = [v10 objectForKey:@"iBoot"];
    }

    v75 = [v10 objectForKey:@"Dali"];
    iBU_LOG_real(@"Ordered firmware image names: %@.", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v27, v28, v29, v30, v31, v32, obj);
    callbackCopy = callback;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v33 = [(NSArray *)obj countByEnumeratingWithState:&v79 objects:v87 count:16];
    v71 = v17;
    contextCopy = context;
    v73 = v9;
    v24 = 0;
    v25 = 0;
    if (v33)
    {
      v34 = *v80;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v80 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v79 + 1) + 8 * i);
          if ([v10 objectForKeyedSubscript:v36])
          {
            if ([v36 isEqualToString:@"ANS"])
            {
              iBU_LOG_real(@"Pulling ANS out of the list of firmwares.", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v37, v38, v39, v40, v41, v42, v70);
              v25 = [v10 objectForKeyedSubscript:v36];
            }

            if ([v36 isEqualToString:@"AppleLogo"])
            {
              iBU_LOG_real(@"Pulling Logo out of the list of firmwares.", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v43, v44, v45, v46, v47, v48, v70);
              v24 = [v10 objectForKeyedSubscript:v36];
            }

            [v77 addObject:{objc_msgSend(v10, "objectForKeyedSubscript:", v36)}];
            [v10 removeObjectForKey:v36];
          }
        }

        v33 = [(NSArray *)obj countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v33);
    }

    v9 = v73;
    v26 = v71;
    context = contextCopy;
    callback = callbackCopy;
    [v77 addObjectsFromArray:{objc_msgSend(v10, "allValues")}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      iBU_LOG_real(@"request for images data returned non-Array and non-Dictionary. Type returned was: %@", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v18, v19, v20, v21, v22, v23, v9);
LABEL_29:
      v68 = 0;
      goto LABEL_30;
    }

    [v77 addObjectsFromArray:v9];
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v75 = 0;
  }

  if ([objc_opt_class() requiresSEPInFW])
  {
    v49 = (callback->var6)(context);
    iBU_LOG_real(@"Appending SEP to firmwareImages", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v50, v51, v52, v53, v54, v55, v70);
    if (!v49)
    {
      iBU_LOG_real(@"NULL returned from copy_sep()!", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v56, v57, v58, v59, v60, v61, v70);
      goto LABEL_29;
    }

    [v77 addObject:v49];
  }

  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3254779904;
  v78[2] = sub_4F680;
  v78[3] = &unk_1AE238;
  v78[4] = &v83;
  [v77 enumerateObjectsUsingBlock:v78];
  if ((v84[3] & 1) == 0)
  {
    iBU_LOG_real(@"Firmware images array contains non-CFDataRef/non-NSArray.", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v62, v63, v64, v65, v66, v67, v70);
    goto LABEL_29;
  }

  (callback->var1)(0, 0, context);
  [(MSUBootFirmwareUpdater *)self setBootBlockImages:v7];
  [(MSUBootFirmwareUpdater *)self setFirmwareImages:v77];
  [(MSUBootFirmwareUpdater *)self setDaliData:v75];
  [(MSUBootFirmwareUpdater *)self setIbootData:v26];
  [(MSUBootFirmwareUpdater *)self setLlbData:v8];
  [(MSUBootFirmwareUpdater *)self setAns2Data:v25];
  [(MSUBootFirmwareUpdater *)self setLogoData:v24];
  v68 = 1;
LABEL_30:

  _Block_object_dispose(&v83, 8);
  return v68;
}

- (id)copyFirmwareWithRestoreInfo:(id)info
{
  _restoreInfoDictionary = [(MSUBootFirmwareUpdater *)self _restoreInfoDictionary];

  return [(MSUBootFirmwareUpdater *)self _encodeFirmware:info withRestoreInfo:_restoreInfoDictionary];
}

- (id)_restoreInfoDictionary
{
  if ([(MSUBootFirmwareUpdater *)self supportsSlotIDs])
  {
    v9 = @"anid";
    v10 = [NSNumber numberWithUnsignedInt:[(MSUBootFirmwareUpdater *)self apNonceSlotID]];
    v3 = &v10;
    v4 = &v9;
  }

  else
  {
    apNonce = [(MSUBootFirmwareUpdater *)self apNonce];
    if (!apNonce)
    {
      apNonce = sub_4F81C("IODeviceTree:/chosen", @"boot-nonce");
      if (!apNonce)
      {
        return __NSDictionary0__;
      }
    }

    v7 = @"BNCN";
    v8 = apNonce;
    v3 = &v8;
    v4 = &v7;
  }

  return [NSDictionary dictionaryWithObjects:v3 forKeys:v4 count:1];
}

- (int)_encodeAndWriteFirmware:(id)firmware toWriter:(id)writer withError:(id *)error
{
  _restoreInfoDictionary = [(MSUBootFirmwareUpdater *)self _restoreInfoDictionary];
  if (!firmware)
  {
    if (!error)
    {
      return -536870212;
    }

    v19 = @"_encodeAndWriteFirmware called with NULL data?";
LABEL_9:
    v20 = 7;
LABEL_10:
    *error = MSUBootFirmwareError(v20, 0, v19, v10, v11, v12, v13, v14, v21);
    return -536870212;
  }

  v10 = _restoreInfoDictionary;
  if (!_restoreInfoDictionary)
  {
    if (!error)
    {
      return -536870212;
    }

    v19 = @"_encodeAndWriteFirmware retrieved a null restoreInfo dictionary?";
    goto LABEL_9;
  }

  v15 = [(MSUBootFirmwareUpdater *)self _encodeFirmware:firmware withRestoreInfo:_restoreInfoDictionary];
  if (v15)
  {
    v16 = v15;
    v17 = [writer writeData:v15 withError:error];

    return v17;
  }

  if (error)
  {
    v19 = @"_encodeAndWriteFirmware failed to encode Img4 data.";
    v20 = 9;
    goto LABEL_10;
  }

  return -536870212;
}

- (id)_encodeFirmware:(id)firmware withRestoreInfo:(id)info
{
  result = [firmware length];
  if (result)
  {
    v6 = AMAuthInstallApImg4EncodeRestoreInfo();
    if (v6)
    {
      iBU_LOG_real(@"AMAuthInstallApImg4EncodeRestoreInfo returned %d during Img4 encoding?", "[MSUBootFirmwareUpdater _encodeFirmware:withRestoreInfo:]", v7, v8, v9, v10, v11, v12, v6);
    }

    else
    {
      v13 = [firmware length];
      [0 length];
      iBU_LOG_real(@"original data length: %lu. img4_restore_data length: %lu", "[MSUBootFirmwareUpdater _encodeFirmware:withRestoreInfo:]", v14, v15, v16, v17, v18, v19, v13);
    }

    return 0;
  }

  return result;
}

@end