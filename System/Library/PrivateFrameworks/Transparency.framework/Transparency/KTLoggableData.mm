@interface KTLoggableData
+ (BOOL)isAccountKTCapable:(id)a3;
+ (KTLoggableData)ktLoggableDataWithKTIDSData:(id)a3;
+ (void)combineLoggableDatasForUI:(id)a3 byAdding:(id)a4;
+ (void)loggableDataForDeviceID:(id)a3 application:(id)a4 completionBlock:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInputsEqual:(id)a3;
- (KTLoggableData)initWithClientData:(id)a3;
- (KTLoggableData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)diagnosticsJsonDictionary;
- (id)privacyDescriptionError:(id)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTLoggableData

- (KTLoggableData)initWithClientData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KTLoggableData;
  v6 = [(KTLoggableData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientData, a3);
    v7->_notInSyncedData = 0;
    v7->_result = 2;
    *&v7->_supportConditionalEnforcement = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v24 = a3;
  v4 = [(KTLoggableData *)self deviceID];
  [v24 encodeObject:v4 forKey:@"deviceID"];

  v5 = [(KTLoggableData *)self clientData];
  [v24 encodeObject:v5 forKey:@"clientData"];

  v6 = [(KTLoggableData *)self signature];
  [v24 encodeObject:v6 forKey:@"signature"];

  [v24 encodeBool:-[KTLoggableData supportConditionalEnforcement](self forKey:{"supportConditionalEnforcement"), @"conditionalEnforcement"}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData successfulSync](self, "successfulSync")}];
  [v24 encodeObject:v7 forKey:@"successfulSync"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData marked](self, "marked")}];
  [v24 encodeObject:v8 forKey:@"marked"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData notInSyncedData](self, "notInSyncedData")}];
  [v24 encodeObject:v9 forKey:@"notInSync"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTLoggableData result](self, "result")}];
  [v24 encodeObject:v10 forKey:@"result"];

  v11 = [(KTLoggableData *)self failure];

  if (v11)
  {
    v12 = MEMORY[0x1E697AAC0];
    v13 = [(KTLoggableData *)self failure];
    v14 = [v12 cleanseErrorForXPC:v13];
    [v24 encodeObject:v14 forKey:@"failure"];
  }

  v15 = [(KTLoggableData *)self build];

  if (v15)
  {
    v16 = [(KTLoggableData *)self build];
    [v24 encodeObject:v16 forKey:@"build"];
  }

  v17 = [(KTLoggableData *)self product];

  if (v17)
  {
    v18 = [(KTLoggableData *)self product];
    [v24 encodeObject:v18 forKey:@"product"];
  }

  v19 = [(KTLoggableData *)self version];

  if (v19)
  {
    v20 = [(KTLoggableData *)self version];
    [v24 encodeObject:v20 forKey:@"version"];
  }

  v21 = [(KTLoggableData *)self markExpiryDate];

  if (v21)
  {
    v22 = [(KTLoggableData *)self markExpiryDate];
    [v24 encodeObject:v22 forKey:@"markExpiry"];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData ktCapable](self, "ktCapable")}];
  [v24 encodeObject:v23 forKey:@"ktCapable"];
}

- (KTLoggableData)initWithCoder:(id)a3
{
  v3 = a3;
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"clientData"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
  v15 = [v3 decodeBoolForKey:@"conditionalEnforcement"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"successfulSync"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"marked"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"notInSync"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
  v6 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v18 = [v3 decodeObjectOfClasses:v6 forKey:@"failure"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ktCapable"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"product"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"markExpiry"];

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

- (BOOL)isInputsEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(KTLoggableData *)self deviceID];
      v7 = [(KTLoggableData *)v5 deviceID];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(KTLoggableData *)self deviceID];
        v10 = [(KTLoggableData *)v5 deviceID];
        v11 = [v9 isEqualToData:v10];

        if (!v11)
        {
          goto LABEL_20;
        }
      }

      v13 = [(KTLoggableData *)self clientData];
      v14 = [(KTLoggableData *)v5 clientData];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(KTLoggableData *)self clientData];
        v17 = [(KTLoggableData *)v5 clientData];
        v18 = [v16 isEqualToData:v17];

        if (!v18)
        {
          goto LABEL_20;
        }
      }

      v19 = [(KTLoggableData *)self signature];
      v20 = [(KTLoggableData *)v5 signature];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = [(KTLoggableData *)self signature];
        v23 = [(KTLoggableData *)v5 signature];
        v24 = [v22 isEqualToData:v23];

        if (!v24)
        {
          goto LABEL_20;
        }
      }

      v25 = [(KTLoggableData *)self supportConditionalEnforcement];
      if (v25 == [(KTLoggableData *)v5 supportConditionalEnforcement])
      {
        v26 = [(KTLoggableData *)self successfulSync];
        if (v26 == [(KTLoggableData *)v5 successfulSync])
        {
          v27 = [(KTLoggableData *)self ktCapable];
          if (v27 == [(KTLoggableData *)v5 ktCapable])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(KTLoggableData *)v5 clientData];
      v7 = [(KTLoggableData *)self clientData];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(KTLoggableData *)v5 deviceID];
        if (v9 || ([(KTLoggableData *)self deviceID], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v10 = [(KTLoggableData *)v5 deviceID];
          v11 = [(KTLoggableData *)self deviceID];
          v12 = [v10 isEqual:v11];

          if (v9)
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

        v14 = [(KTLoggableData *)v5 supportConditionalEnforcement];
        if (v14 == [(KTLoggableData *)self supportConditionalEnforcement])
        {
          v15 = [(KTLoggableData *)v5 signature];
          if (v15 || ([(KTLoggableData *)self signature], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = [(KTLoggableData *)v5 signature];
            v17 = [(KTLoggableData *)self signature];
            v18 = [v16 isEqual:v17];

            if (v15)
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

          v19 = [(KTLoggableData *)v5 successfulSync];
          if (v19 != [(KTLoggableData *)self successfulSync])
          {
            goto LABEL_32;
          }

          v20 = [(KTLoggableData *)v5 ktCapable];
          if (v20 != [(KTLoggableData *)self ktCapable])
          {
            goto LABEL_32;
          }

          v21 = [(KTLoggableData *)v5 result];
          if (v21 != [(KTLoggableData *)self result])
          {
            goto LABEL_32;
          }

          v22 = [(KTLoggableData *)v5 marked];
          if (v22 != [(KTLoggableData *)self marked])
          {
            goto LABEL_32;
          }

          v23 = [(KTLoggableData *)v5 failure];
          if (!v23)
          {
            v7 = [(KTLoggableData *)self failure];
            if (!v7)
            {
LABEL_27:
              v27 = [(KTLoggableData *)v5 markExpiryDate];
              if (v27 || ([(KTLoggableData *)self markExpiryDate], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v28 = [(KTLoggableData *)v5 markExpiryDate];
                v29 = [(KTLoggableData *)self markExpiryDate];
                v13 = [v28 isEqual:v29];

                if (v27)
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

          v24 = [(KTLoggableData *)v5 failure];
          v25 = [(KTLoggableData *)self failure];
          v26 = [v24 isEqual:v25];

          if (v23)
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
  v4 = [(KTLoggableData *)self deviceID];

  if (v4)
  {
    v5 = [(KTLoggableData *)self deviceID];
    v6 = [v5 kt_hexString];
    [v3 appendFormat:@"    deviceId:%@\n", v6];
  }

  v7 = [(KTLoggableData *)self product];
  if (v7)
  {
  }

  else
  {
    v8 = [(KTLoggableData *)self version];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = [(KTLoggableData *)self product];
  v10 = [(KTLoggableData *)self build];
  v11 = [(KTLoggableData *)self version];
  [v3 appendFormat:@"    product: %@ build: %@ version:%@\n", v9, v10, v11];

LABEL_7:
  v12 = [(KTLoggableData *)self clientData];
  v13 = [v12 kt_hexString];
  [v3 appendFormat:@"    clientData:%@\n", v13];

  v14 = [(KTLoggableData *)self signature];

  if (v14)
  {
    v15 = [(KTLoggableData *)self signature];
    v16 = [v15 kt_hexString];
    [v3 appendFormat:@"    signature:%@\n", v16];
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
  v18 = [(KTLoggableData *)self deviceIdHash];

  if (v18)
  {
    v19 = [(KTLoggableData *)self deviceIdHash];
    v20 = [v19 kt_hexString];
    [v3 appendFormat:@"    deviceIdHash:%@\n", v20];
  }

  v21 = [(KTLoggableData *)self clientDataHash];

  if (v21)
  {
    v22 = [(KTLoggableData *)self clientDataHash];
    v23 = [v22 kt_hexString];
    [v3 appendFormat:@"    clientDataHash:%@\n", v23];
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
    v25 = [(KTLoggableData *)self result];
    v26 = @"OK";
    if (v25 == 2)
    {
      v26 = @"Pending";
    }
  }

  else
  {
    v26 = @"Failed";
  }

  [v3 appendFormat:@"    result:%@\n", v26];
  v27 = [(KTLoggableData *)self failure];

  if (v27)
  {
    v28 = [(KTLoggableData *)self failure];
    [v3 appendFormat:@"    failure:%@\n", v28];
  }

  if ([(KTLoggableData *)self marked])
  {
    v29 = [(KTLoggableData *)self markExpiryDate];
    [v3 appendFormat:@"    markedExpiryDate:%@\n", v29];
  }

  [v3 appendFormat:@"}\n"];

  return v3;
}

- (id)diagnosticsJsonDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(KTLoggableData *)self deviceID];

  if (v4)
  {
    v5 = [(KTLoggableData *)self deviceID];
    v6 = [v5 kt_hexString];
    [v3 setObject:v6 forKeyedSubscript:@"deviceID"];
  }

  v7 = [(KTLoggableData *)self clientData];
  v8 = [v7 kt_hexString];
  [v3 setObject:v8 forKeyedSubscript:@"clientData"];

  v9 = [(KTLoggableData *)self signature];
  v10 = [v9 kt_hexString];
  [v3 setObject:v10 forKeyedSubscript:@"signature"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData ktCapable](self, "ktCapable")}];
  [v3 setObject:v11 forKeyedSubscript:@"ktCapable"];

  v12 = [(KTLoggableData *)self version];

  if (v12)
  {
    v13 = [(KTLoggableData *)self version];
    [v3 setObject:v13 forKeyedSubscript:@"version"];
  }

  v14 = [(KTLoggableData *)self product];

  if (v14)
  {
    v15 = [(KTLoggableData *)self product];
    [v3 setObject:v15 forKeyedSubscript:@"product"];
  }

  v16 = [(KTLoggableData *)self build];

  if (v16)
  {
    v17 = [(KTLoggableData *)self build];
    [v3 setObject:v17 forKeyedSubscript:@"build"];
  }

  v18 = [(KTLoggableData *)self deviceIdHash];

  if (v18)
  {
    v19 = [(KTLoggableData *)self deviceIdHash];
    v20 = [v19 kt_hexString];
    [v3 setObject:v20 forKeyedSubscript:@"deviceIDHash"];
  }

  v21 = [(KTLoggableData *)self clientDataHash];

  if (v21)
  {
    v22 = [(KTLoggableData *)self clientDataHash];
    v23 = [v22 kt_hexString];
    [v3 setObject:v23 forKeyedSubscript:@"clientDataHash"];
  }

  if ([(KTLoggableData *)self result]!= 2)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTLoggableData result](self, "result")}];
    [v3 setObject:v24 forKeyedSubscript:@"result"];

    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData notInSyncedData](self, "notInSyncedData")}];
    [v3 setObject:v25 forKeyedSubscript:@"notInSyncedData"];

    v26 = [(KTLoggableData *)self failure];

    if (v26)
    {
      v27 = [(KTLoggableData *)self failure];
      v28 = [v27 description];
      [v3 setObject:v28 forKeyedSubscript:@"failure"];
    }
  }

  if ([(KTLoggableData *)self marked])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTLoggableData marked](self, "marked")}];
    [v3 setObject:v29 forKeyedSubscript:@"marked"];

    v30 = [(KTLoggableData *)self markExpiryDate];
    v31 = [v30 kt_toISO_8601_UTCString];
    [v3 setObject:v31 forKeyedSubscript:@"markedExpiryDate"];
  }

  return v3;
}

- (id)privacyDescriptionError:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = a3;
    v5 = [v4 domain];
    v6 = [v4 code];

    v7 = [v3 stringWithFormat:@"%@-%d", v5, v6];
  }

  else
  {
    v7 = @"-";
  }

  return v7;
}

- (id)shortDescription
{
  v3 = [(KTLoggableData *)self product];
  if (v3 || ([(KTLoggableData *)self version], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v21 = MEMORY[0x1E696AEC0];
    v4 = [(KTLoggableData *)self deviceID];
    v20 = [v4 kt_hexString];
    v5 = [(KTLoggableData *)self product];
    v6 = [(KTLoggableData *)self build];
    v7 = [(KTLoggableData *)self version];
    v8 = [(KTLoggableData *)self clientData];
    v9 = [v8 kt_hexString];
    v10 = [(KTLoggableData *)self result];
    v11 = [(KTLoggableData *)self failure];
    v12 = [(KTLoggableData *)self privacyDescriptionError:v11];
    v19 = v10;
    v13 = v20;
    v14 = [v21 stringWithFormat:@"KTLoggableData: deviceId=%@, version=%@, %@, %@ clientData=%@ [%d/%@]", v20, v5, v6, v7, v9, v19, v12];

    goto LABEL_5;
  }

  v16 = [(KTLoggableData *)self build];

  if (v16)
  {
    goto LABEL_4;
  }

  v17 = MEMORY[0x1E696AEC0];
  v4 = [(KTLoggableData *)self deviceID];
  v13 = [v4 kt_hexString];
  v5 = [(KTLoggableData *)self clientData];
  v6 = [v5 kt_hexString];
  v18 = [(KTLoggableData *)self result];
  v7 = [(KTLoggableData *)self failure];
  v8 = [(KTLoggableData *)self privacyDescriptionError:v7];
  v14 = [v17 stringWithFormat:@"KTLoggableData: deviceId=%@, clientData=%@ [%d/%@]", v13, v6, v18, v8];
LABEL_5:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [KTLoggableData alloc];
  v5 = [(KTLoggableData *)self clientData];
  v6 = [(KTLoggableData *)v4 initWithClientData:v5];

  v7 = [(KTLoggableData *)self deviceID];
  [(KTLoggableData *)v6 setDeviceID:v7];

  v8 = [(KTLoggableData *)self signature];
  [(KTLoggableData *)v6 setSignature:v8];

  [(KTLoggableData *)v6 setSuccessfulSync:[(KTLoggableData *)self successfulSync]];
  [(KTLoggableData *)v6 setMarked:[(KTLoggableData *)self marked]];
  [(KTLoggableData *)v6 setNotInSyncedData:[(KTLoggableData *)self notInSyncedData]];
  [(KTLoggableData *)v6 setResult:[(KTLoggableData *)self result]];
  v9 = [(KTLoggableData *)self failure];
  v10 = [v9 copy];
  [(KTLoggableData *)v6 setFailure:v10];

  v11 = [(KTLoggableData *)self build];
  [(KTLoggableData *)v6 setBuild:v11];

  v12 = [(KTLoggableData *)self product];
  [(KTLoggableData *)v6 setProduct:v12];

  v13 = [(KTLoggableData *)self version];
  [(KTLoggableData *)v6 setVersion:v13];

  v14 = [(KTLoggableData *)self markExpiryDate];
  [(KTLoggableData *)v6 setMarkExpiryDate:v14];

  [(KTLoggableData *)v6 setKtCapable:[(KTLoggableData *)self ktCapable]];
  return v6;
}

+ (void)loggableDataForDeviceID:(id)a3 application:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__KTLoggableData_loggableDataForDeviceID_application_completionBlock___block_invoke;
  v15[3] = &unk_1E87014E0;
  v17 = v7;
  v18 = v9;
  v16 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__KTLoggableData_loggableDataForDeviceID_application_completionBlock___block_invoke_133;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = v7;
  v12 = v8;
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

+ (BOOL)isAccountKTCapable:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
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

+ (void)combineLoggableDatasForUI:(id)a3 byAdding:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 deviceID];
        v13 = [v5 objectForKeyedSubscript:v12];

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
          v15 = [v11 deviceID];
          [v5 setObject:v11 forKeyedSubscript:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (KTLoggableData)ktLoggableDataWithKTIDSData:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 identities];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [KTLoggableData alloc];
        v12 = [v10 ktLoggableData];
        v13 = [(KTLoggableData *)v11 initWithClientData:v12];

        v14 = [v10 signature];
        [(KTLoggableData *)v13 setSignature:v14];

        v15 = [v10 pushToken];
        [(KTLoggableData *)v13 setDeviceID:v15];

        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

@end