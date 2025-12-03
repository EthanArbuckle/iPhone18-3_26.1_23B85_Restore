@interface KTLoggableData
+ (BOOL)isAccountKTCapable:(id)capable;
+ (KTLoggableData)ktLoggableDataWithKTIDSData:(id)data;
+ (void)combineLoggableDatasForUI:(id)i byAdding:(id)adding;
+ (void)loggableDataForDeviceID:(id)d application:(id)application completionBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInputsEqual:(id)equal;
- (KTLoggableData)initWithClientData:(id)data;
- (KTLoggableData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)diagnosticsJsonDictionary;
- (id)privacyDescriptionError:(id)error;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTLoggableData

- (KTLoggableData)initWithClientData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = KTLoggableData;
  v6 = [(KTLoggableData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientData, data);
    v7->_notInSyncedData = 0;
    v7->_result = 2;
    *&v7->_supportConditionalEnforcement = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceID = [(KTLoggableData *)self deviceID];
  [coderCopy encodeObject:deviceID forKey:@"deviceID"];

  clientData = [(KTLoggableData *)self clientData];
  [coderCopy encodeObject:clientData forKey:@"clientData"];

  signature = [(KTLoggableData *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];

  [coderCopy encodeBool:-[KTLoggableData supportConditionalEnforcement](self forKey:{"supportConditionalEnforcement"), @"conditionalEnforcement"}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData successfulSync](self, "successfulSync")}];
  [coderCopy encodeObject:v7 forKey:@"successfulSync"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData marked](self, "marked")}];
  [coderCopy encodeObject:v8 forKey:@"marked"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData notInSyncedData](self, "notInSyncedData")}];
  [coderCopy encodeObject:v9 forKey:@"notInSync"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTLoggableData result](self, "result")}];
  [coderCopy encodeObject:v10 forKey:@"result"];

  failure = [(KTLoggableData *)self failure];

  if (failure)
  {
    v12 = MEMORY[0x1E697AAC0];
    failure2 = [(KTLoggableData *)self failure];
    v14 = [v12 cleanseErrorForXPC:failure2];
    [coderCopy encodeObject:v14 forKey:@"failure"];
  }

  build = [(KTLoggableData *)self build];

  if (build)
  {
    build2 = [(KTLoggableData *)self build];
    [coderCopy encodeObject:build2 forKey:@"build"];
  }

  product = [(KTLoggableData *)self product];

  if (product)
  {
    product2 = [(KTLoggableData *)self product];
    [coderCopy encodeObject:product2 forKey:@"product"];
  }

  version = [(KTLoggableData *)self version];

  if (version)
  {
    version2 = [(KTLoggableData *)self version];
    [coderCopy encodeObject:version2 forKey:@"version"];
  }

  markExpiryDate = [(KTLoggableData *)self markExpiryDate];

  if (markExpiryDate)
  {
    markExpiryDate2 = [(KTLoggableData *)self markExpiryDate];
    [coderCopy encodeObject:markExpiryDate2 forKey:@"markExpiry"];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData ktCapable](self, "ktCapable")}];
  [coderCopy encodeObject:v23 forKey:@"ktCapable"];
}

- (KTLoggableData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientData"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
  v15 = [coderCopy decodeBoolForKey:@"conditionalEnforcement"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"successfulSync"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"marked"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notInSync"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
  safeErrorClasses = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v18 = [coderCopy decodeObjectOfClasses:safeErrorClasses forKey:@"failure"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ktCapable"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"product"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"markExpiry"];

  v12 = [[KTLoggableData alloc] initWithClientData:v4];
  v13 = v12;
  if (v12 && v22 && v5)
  {
    [(KTLoggableData *)v12 setDeviceID:v21];
    [(KTLoggableData *)v13 setSignature:v16];
    [(KTLoggableData *)v13 setSupportConditionalEnforcement:v15];
    -[KTLoggableData setSuccessfulSync:](v13, "setSuccessfulSync:", [v22 BOOLValue]);
    -[KTLoggableData setMarked:](v13, "setMarked:", [v5 BOOLValue]);
    -[KTLoggableData setNotInSyncedData:](v13, "setNotInSyncedData:", [v20 BOOLValue]);
    -[KTLoggableData setResult:](v13, "setResult:", [v19 unsignedIntegerValue]);
    [(KTLoggableData *)v13 setFailure:v18];
    -[KTLoggableData setKtCapable:](v13, "setKtCapable:", [v7 BOOLValue]);
    [(KTLoggableData *)v13 setBuild:v8];
    [(KTLoggableData *)v13 setProduct:v9];
    [(KTLoggableData *)v13 setVersion:v10];
    [(KTLoggableData *)v13 setMarkExpiryDate:v11];
  }

  return v13;
}

- (BOOL)isInputsEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      deviceID = [(KTLoggableData *)self deviceID];
      deviceID2 = [(KTLoggableData *)v5 deviceID];
      v8 = deviceID2;
      if (deviceID == deviceID2)
      {
      }

      else
      {
        deviceID3 = [(KTLoggableData *)self deviceID];
        deviceID4 = [(KTLoggableData *)v5 deviceID];
        v11 = [deviceID3 isEqualToData:deviceID4];

        if (!v11)
        {
          goto LABEL_20;
        }
      }

      clientData = [(KTLoggableData *)self clientData];
      clientData2 = [(KTLoggableData *)v5 clientData];
      v15 = clientData2;
      if (clientData == clientData2)
      {
      }

      else
      {
        clientData3 = [(KTLoggableData *)self clientData];
        clientData4 = [(KTLoggableData *)v5 clientData];
        v18 = [clientData3 isEqualToData:clientData4];

        if (!v18)
        {
          goto LABEL_20;
        }
      }

      signature = [(KTLoggableData *)self signature];
      signature2 = [(KTLoggableData *)v5 signature];
      v21 = signature2;
      if (signature == signature2)
      {
      }

      else
      {
        signature3 = [(KTLoggableData *)self signature];
        signature4 = [(KTLoggableData *)v5 signature];
        v24 = [signature3 isEqualToData:signature4];

        if (!v24)
        {
          goto LABEL_20;
        }
      }

      supportConditionalEnforcement = [(KTLoggableData *)self supportConditionalEnforcement];
      if (supportConditionalEnforcement == [(KTLoggableData *)v5 supportConditionalEnforcement])
      {
        successfulSync = [(KTLoggableData *)self successfulSync];
        if (successfulSync == [(KTLoggableData *)v5 successfulSync])
        {
          ktCapable = [(KTLoggableData *)self ktCapable];
          if (ktCapable == [(KTLoggableData *)v5 ktCapable])
          {
            v12 = 1;
            goto LABEL_21;
          }
        }
      }

LABEL_20:
      v12 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v12 = 0;
  }

LABEL_22:

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      clientData = [(KTLoggableData *)v5 clientData];
      clientData2 = [(KTLoggableData *)self clientData];
      v8 = [clientData isEqual:clientData2];

      if (v8)
      {
        deviceID = [(KTLoggableData *)v5 deviceID];
        if (deviceID || ([(KTLoggableData *)self deviceID], (clientData2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          deviceID2 = [(KTLoggableData *)v5 deviceID];
          deviceID3 = [(KTLoggableData *)self deviceID];
          v12 = [deviceID2 isEqual:deviceID3];

          if (deviceID)
          {

            if (!v12)
            {
              goto LABEL_32;
            }
          }

          else
          {

            if ((v12 & 1) == 0)
            {
              goto LABEL_32;
            }
          }
        }

        supportConditionalEnforcement = [(KTLoggableData *)v5 supportConditionalEnforcement];
        if (supportConditionalEnforcement == [(KTLoggableData *)self supportConditionalEnforcement])
        {
          signature = [(KTLoggableData *)v5 signature];
          if (signature || ([(KTLoggableData *)self signature], (clientData2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            signature2 = [(KTLoggableData *)v5 signature];
            signature3 = [(KTLoggableData *)self signature];
            v18 = [signature2 isEqual:signature3];

            if (signature)
            {

              if (!v18)
              {
                goto LABEL_32;
              }
            }

            else
            {

              if ((v18 & 1) == 0)
              {
                goto LABEL_32;
              }
            }
          }

          successfulSync = [(KTLoggableData *)v5 successfulSync];
          if (successfulSync != [(KTLoggableData *)self successfulSync])
          {
            goto LABEL_32;
          }

          ktCapable = [(KTLoggableData *)v5 ktCapable];
          if (ktCapable != [(KTLoggableData *)self ktCapable])
          {
            goto LABEL_32;
          }

          result = [(KTLoggableData *)v5 result];
          if (result != [(KTLoggableData *)self result])
          {
            goto LABEL_32;
          }

          marked = [(KTLoggableData *)v5 marked];
          if (marked != [(KTLoggableData *)self marked])
          {
            goto LABEL_32;
          }

          failure = [(KTLoggableData *)v5 failure];
          if (!failure)
          {
            clientData2 = [(KTLoggableData *)self failure];
            if (!clientData2)
            {
LABEL_27:
              markExpiryDate = [(KTLoggableData *)v5 markExpiryDate];
              if (markExpiryDate || ([(KTLoggableData *)self markExpiryDate], (clientData2 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                markExpiryDate2 = [(KTLoggableData *)v5 markExpiryDate];
                markExpiryDate3 = [(KTLoggableData *)self markExpiryDate];
                v13 = [markExpiryDate2 isEqual:markExpiryDate3];

                if (markExpiryDate)
                {
LABEL_37:

                  goto LABEL_33;
                }
              }

              else
              {
                v13 = 1;
              }

              goto LABEL_37;
            }
          }

          failure2 = [(KTLoggableData *)v5 failure];
          failure3 = [(KTLoggableData *)self failure];
          v26 = [failure2 isEqual:failure3];

          if (failure)
          {

            if (v26)
            {
              goto LABEL_27;
            }
          }

          else
          {

            if (v26)
            {
              goto LABEL_27;
            }
          }
        }
      }

LABEL_32:
      v13 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v13 = 0;
  }

LABEL_34:

  return v13;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"{\n"];
  deviceID = [(KTLoggableData *)self deviceID];

  if (deviceID)
  {
    deviceID2 = [(KTLoggableData *)self deviceID];
    kt_hexString = [deviceID2 kt_hexString];
    [v3 appendFormat:@"    deviceId:%@\n", kt_hexString];
  }

  product = [(KTLoggableData *)self product];
  if (product)
  {
  }

  else
  {
    version = [(KTLoggableData *)self version];

    if (!version)
    {
      goto LABEL_7;
    }
  }

  product2 = [(KTLoggableData *)self product];
  build = [(KTLoggableData *)self build];
  version2 = [(KTLoggableData *)self version];
  [v3 appendFormat:@"    product: %@ build: %@ version:%@\n", product2, build, version2];

LABEL_7:
  clientData = [(KTLoggableData *)self clientData];
  kt_hexString2 = [clientData kt_hexString];
  [v3 appendFormat:@"    clientData:%@\n", kt_hexString2];

  signature = [(KTLoggableData *)self signature];

  if (signature)
  {
    signature2 = [(KTLoggableData *)self signature];
    kt_hexString3 = [signature2 kt_hexString];
    [v3 appendFormat:@"    signature:%@\n", kt_hexString3];
  }

  if ([(KTLoggableData *)self ktCapable])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v3 appendFormat:@"    ktCapable:%@\n", v17];
  deviceIdHash = [(KTLoggableData *)self deviceIdHash];

  if (deviceIdHash)
  {
    deviceIdHash2 = [(KTLoggableData *)self deviceIdHash];
    kt_hexString4 = [deviceIdHash2 kt_hexString];
    [v3 appendFormat:@"    deviceIdHash:%@\n", kt_hexString4];
  }

  clientDataHash = [(KTLoggableData *)self clientDataHash];

  if (clientDataHash)
  {
    clientDataHash2 = [(KTLoggableData *)self clientDataHash];
    kt_hexString5 = [clientDataHash2 kt_hexString];
    [v3 appendFormat:@"    clientDataHash:%@\n", kt_hexString5];
  }

  if ([(KTLoggableData *)self notInSyncedData])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v3 appendFormat:@"    notInSyncedData:%@\n", v24];
  if ([(KTLoggableData *)self result])
  {
    result = [(KTLoggableData *)self result];
    v26 = @"OK";
    if (result == 2)
    {
      v26 = @"Pending";
    }
  }

  else
  {
    v26 = @"Failed";
  }

  [v3 appendFormat:@"    result:%@\n", v26];
  failure = [(KTLoggableData *)self failure];

  if (failure)
  {
    failure2 = [(KTLoggableData *)self failure];
    [v3 appendFormat:@"    failure:%@\n", failure2];
  }

  if ([(KTLoggableData *)self marked])
  {
    markExpiryDate = [(KTLoggableData *)self markExpiryDate];
    [v3 appendFormat:@"    markedExpiryDate:%@\n", markExpiryDate];
  }

  [v3 appendFormat:@"}\n"];

  return v3;
}

- (id)diagnosticsJsonDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  deviceID = [(KTLoggableData *)self deviceID];

  if (deviceID)
  {
    deviceID2 = [(KTLoggableData *)self deviceID];
    kt_hexString = [deviceID2 kt_hexString];
    [dictionary setObject:kt_hexString forKeyedSubscript:@"deviceID"];
  }

  clientData = [(KTLoggableData *)self clientData];
  kt_hexString2 = [clientData kt_hexString];
  [dictionary setObject:kt_hexString2 forKeyedSubscript:@"clientData"];

  signature = [(KTLoggableData *)self signature];
  kt_hexString3 = [signature kt_hexString];
  [dictionary setObject:kt_hexString3 forKeyedSubscript:@"signature"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData ktCapable](self, "ktCapable")}];
  [dictionary setObject:v11 forKeyedSubscript:@"ktCapable"];

  version = [(KTLoggableData *)self version];

  if (version)
  {
    version2 = [(KTLoggableData *)self version];
    [dictionary setObject:version2 forKeyedSubscript:@"version"];
  }

  product = [(KTLoggableData *)self product];

  if (product)
  {
    product2 = [(KTLoggableData *)self product];
    [dictionary setObject:product2 forKeyedSubscript:@"product"];
  }

  build = [(KTLoggableData *)self build];

  if (build)
  {
    build2 = [(KTLoggableData *)self build];
    [dictionary setObject:build2 forKeyedSubscript:@"build"];
  }

  deviceIdHash = [(KTLoggableData *)self deviceIdHash];

  if (deviceIdHash)
  {
    deviceIdHash2 = [(KTLoggableData *)self deviceIdHash];
    kt_hexString4 = [deviceIdHash2 kt_hexString];
    [dictionary setObject:kt_hexString4 forKeyedSubscript:@"deviceIDHash"];
  }

  clientDataHash = [(KTLoggableData *)self clientDataHash];

  if (clientDataHash)
  {
    clientDataHash2 = [(KTLoggableData *)self clientDataHash];
    kt_hexString5 = [clientDataHash2 kt_hexString];
    [dictionary setObject:kt_hexString5 forKeyedSubscript:@"clientDataHash"];
  }

  if ([(KTLoggableData *)self result]!= 2)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTLoggableData result](self, "result")}];
    [dictionary setObject:v24 forKeyedSubscript:@"result"];

    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData notInSyncedData](self, "notInSyncedData")}];
    [dictionary setObject:v25 forKeyedSubscript:@"notInSyncedData"];

    failure = [(KTLoggableData *)self failure];

    if (failure)
    {
      failure2 = [(KTLoggableData *)self failure];
      v28 = [failure2 description];
      [dictionary setObject:v28 forKeyedSubscript:@"failure"];
    }
  }

  if ([(KTLoggableData *)self marked])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData marked](self, "marked")}];
    [dictionary setObject:v29 forKeyedSubscript:@"marked"];

    markExpiryDate = [(KTLoggableData *)self markExpiryDate];
    kt_toISO_8601_UTCString = [markExpiryDate kt_toISO_8601_UTCString];
    [dictionary setObject:kt_toISO_8601_UTCString forKeyedSubscript:@"markedExpiryDate"];
  }

  return dictionary;
}

- (id)privacyDescriptionError:(id)error
{
  if (error)
  {
    v3 = MEMORY[0x1E696AEC0];
    errorCopy = error;
    domain = [errorCopy domain];
    code = [errorCopy code];

    v7 = [v3 stringWithFormat:@"%@-%d", domain, code];
  }

  else
  {
    v7 = @"-";
  }

  return v7;
}

- (id)shortDescription
{
  product = [(KTLoggableData *)self product];
  if (product || ([(KTLoggableData *)self version], (product = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v21 = MEMORY[0x1E696AEC0];
    deviceID = [(KTLoggableData *)self deviceID];
    kt_hexString = [deviceID kt_hexString];
    product2 = [(KTLoggableData *)self product];
    build = [(KTLoggableData *)self build];
    version = [(KTLoggableData *)self version];
    clientData = [(KTLoggableData *)self clientData];
    kt_hexString2 = [clientData kt_hexString];
    result = [(KTLoggableData *)self result];
    failure = [(KTLoggableData *)self failure];
    v12 = [(KTLoggableData *)self privacyDescriptionError:failure];
    v19 = result;
    kt_hexString3 = kt_hexString;
    v14 = [v21 stringWithFormat:@"KTLoggableData: deviceId=%@, version=%@, %@, %@ clientData=%@ [%d/%@]", kt_hexString, product2, build, version, kt_hexString2, v19, v12];

    goto LABEL_5;
  }

  build2 = [(KTLoggableData *)self build];

  if (build2)
  {
    goto LABEL_4;
  }

  v17 = MEMORY[0x1E696AEC0];
  deviceID = [(KTLoggableData *)self deviceID];
  kt_hexString3 = [deviceID kt_hexString];
  product2 = [(KTLoggableData *)self clientData];
  build = [product2 kt_hexString];
  result2 = [(KTLoggableData *)self result];
  version = [(KTLoggableData *)self failure];
  clientData = [(KTLoggableData *)self privacyDescriptionError:version];
  v14 = [v17 stringWithFormat:@"KTLoggableData: deviceId=%@, clientData=%@ [%d/%@]", kt_hexString3, build, result2, clientData];
LABEL_5:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KTLoggableData alloc];
  clientData = [(KTLoggableData *)self clientData];
  v6 = [(KTLoggableData *)v4 initWithClientData:clientData];

  deviceID = [(KTLoggableData *)self deviceID];
  [(KTLoggableData *)v6 setDeviceID:deviceID];

  signature = [(KTLoggableData *)self signature];
  [(KTLoggableData *)v6 setSignature:signature];

  [(KTLoggableData *)v6 setSuccessfulSync:[(KTLoggableData *)self successfulSync]];
  [(KTLoggableData *)v6 setMarked:[(KTLoggableData *)self marked]];
  [(KTLoggableData *)v6 setNotInSyncedData:[(KTLoggableData *)self notInSyncedData]];
  [(KTLoggableData *)v6 setResult:[(KTLoggableData *)self result]];
  failure = [(KTLoggableData *)self failure];
  v10 = [failure copy];
  [(KTLoggableData *)v6 setFailure:v10];

  build = [(KTLoggableData *)self build];
  [(KTLoggableData *)v6 setBuild:build];

  product = [(KTLoggableData *)self product];
  [(KTLoggableData *)v6 setProduct:product];

  version = [(KTLoggableData *)self version];
  [(KTLoggableData *)v6 setVersion:version];

  markExpiryDate = [(KTLoggableData *)self markExpiryDate];
  [(KTLoggableData *)v6 setMarkExpiryDate:markExpiryDate];

  [(KTLoggableData *)v6 setKtCapable:[(KTLoggableData *)self ktCapable]];
  return v6;
}

+ (void)loggableDataForDeviceID:(id)d application:(id)application completionBlock:(id)block
{
  dCopy = d;
  applicationCopy = application;
  blockCopy = block;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__KTLoggableData_loggableDataForDeviceID_application_completionBlock___block_invoke;
  v15[3] = &unk_1E87014E0;
  v17 = dCopy;
  v18 = blockCopy;
  v16 = applicationCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__KTLoggableData_loggableDataForDeviceID_application_completionBlock___block_invoke_133;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = dCopy;
  v12 = applicationCopy;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v15 errorHandler:v13];
}

void __70__KTLoggableData_loggableDataForDeviceID_application_completionBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_2 != -1)
    {
      __70__KTLoggableData_loggableDataForDeviceID_application_completionBlock___block_invoke_cold_2();
    }

    v11 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_2;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v11, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v13, 0xCu);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_2 != -1)
    {
      __70__KTLoggableData_loggableDataForDeviceID_application_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_2;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_INFO))
    {
      v9 = a1[4];
      v10 = a1[5];
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending asynchronous fetch for device status for %@ device %@", &v13, 0x16u);
    }

    [v5 getLoggableDataForDeviceId:a1[5] application:a1[4] completionBlock:a1[6]];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __70__KTLoggableData_loggableDataForDeviceID_application_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __70__KTLoggableData_loggableDataForDeviceID_application_completionBlock___block_invoke_129()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isAccountKTCapable:(id)capable
{
  v18 = *MEMORY[0x1E69E9840];
  capableCopy = capable;
  v4 = capableCopy;
  if (capableCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = capableCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (![*(*(&v13 + 1) + 8 * i) ktCapable])
          {
            v10 = 0;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_12:
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (void)combineLoggableDatasForUI:(id)i byAdding:(id)adding
{
  v22 = *MEMORY[0x1E69E9840];
  iCopy = i;
  addingCopy = adding;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [addingCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(addingCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        deviceID = [v11 deviceID];
        v13 = [iCopy objectForKeyedSubscript:deviceID];

        if ([v11 result])
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          deviceID2 = [v11 deviceID];
          [iCopy setObject:v11 forKeyedSubscript:deviceID2];
        }
      }

      v8 = [addingCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (KTLoggableData)ktLoggableDataWithKTIDSData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  identities = [dataCopy identities];
  v6 = [identities countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(identities);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [KTLoggableData alloc];
        ktLoggableData = [v10 ktLoggableData];
        v13 = [(KTLoggableData *)v11 initWithClientData:ktLoggableData];

        signature = [v10 signature];
        [(KTLoggableData *)v13 setSignature:signature];

        pushToken = [v10 pushToken];
        [(KTLoggableData *)v13 setDeviceID:pushToken];

        [array addObject:v13];
      }

      v7 = [identities countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return array;
}

@end