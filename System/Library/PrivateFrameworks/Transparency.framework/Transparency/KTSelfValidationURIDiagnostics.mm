@interface KTSelfValidationURIDiagnostics
- (BOOL)isEqual:(id)equal;
- (KTSelfValidationURIDiagnostics)initWithCoder:(id)coder;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTSelfValidationURIDiagnostics

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ktVerificationInfoDiagnosticsJson = [(KTSelfValidationURIDiagnostics *)self ktVerificationInfoDiagnosticsJson];
  [coderCopy encodeObject:ktVerificationInfoDiagnosticsJson forKey:@"KTVerificationInfo"];

  transparentDataDiagnosticsJson = [(KTSelfValidationURIDiagnostics *)self transparentDataDiagnosticsJson];
  [coderCopy encodeObject:transparentDataDiagnosticsJson forKey:@"transparentData"];

  result = [(KTSelfValidationURIDiagnostics *)self result];
  [coderCopy encodeObject:result forKey:@"result"];

  requestTime = [(KTSelfValidationURIDiagnostics *)self requestTime];

  if (requestTime)
  {
    requestTime2 = [(KTSelfValidationURIDiagnostics *)self requestTime];
    [coderCopy encodeObject:requestTime2 forKey:@"requestTime"];
  }

  error = [(KTSelfValidationURIDiagnostics *)self error];

  if (error)
  {
    v10 = MEMORY[0x1E697AAC0];
    error2 = [(KTSelfValidationURIDiagnostics *)self error];
    v12 = [v10 cleanseErrorForXPC:error2];
    [coderCopy encodeObject:v12 forKey:@"error"];
  }
}

- (KTSelfValidationURIDiagnostics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = +[KTSelfValidationDiagnostics jsonClasses];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"KTVerificationInfo"];

  v7 = +[KTSelfValidationDiagnostics jsonClasses];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"transparentData"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
  safeErrorClasses = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v11 = [coderCopy decodeObjectOfClasses:safeErrorClasses forKey:@"error"];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestTime"];

  if (!v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_0 != -1)
    {
      [KTSelfValidationURIDiagnostics initWithCoder:];
    }

    v13 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1E10DB000, v13, OS_LOG_TYPE_ERROR, "KTSelfValidationURIDiagnostics: ktVerificationInfoDiagnosticsJson missing", buf, 2u);
    }
  }

  v14 = v8;
  if (!v8)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_0 != -1)
    {
      [KTSelfValidationURIDiagnostics initWithCoder:];
    }

    v15 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_impl(&dword_1E10DB000, v15, OS_LOG_TYPE_ERROR, "KTSelfValidationURIDiagnostics: transparentDataDiagnosticsJson missing", v23, 2u);
    }

    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_0 != -1)
    {
      [KTSelfValidationURIDiagnostics initWithCoder:];
    }

    v16 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&dword_1E10DB000, v16, OS_LOG_TYPE_ERROR, "KTSelfValidationURIDiagnostics: result missing", v22, 2u);
    }

    v14 = MEMORY[0x1E695E0F8];
  }

  v17 = objc_alloc_init(KTSelfValidationURIDiagnostics);
  v18 = v17;
  if (v6)
  {
    v19 = v6;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F8];
  }

  [(KTSelfValidationURIDiagnostics *)v17 setKtVerificationInfoDiagnosticsJson:v19];
  [(KTSelfValidationURIDiagnostics *)v18 setTransparentDataDiagnosticsJson:v14];
  if (v9)
  {
    v20 = v9;
  }

  else
  {
    v20 = @"-";
  }

  [(KTSelfValidationURIDiagnostics *)v18 setResult:v20];
  [(KTSelfValidationURIDiagnostics *)v18 setError:v11];
  [(KTSelfValidationURIDiagnostics *)v18 setRequestTime:v12];

  return v18;
}

uint64_t __48__KTSelfValidationURIDiagnostics_initWithCoder___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__KTSelfValidationURIDiagnostics_initWithCoder___block_invoke_19()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__KTSelfValidationURIDiagnostics_initWithCoder___block_invoke_22()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      ktVerificationInfoDiagnosticsJson = [(KTSelfValidationURIDiagnostics *)self ktVerificationInfoDiagnosticsJson];
      ktVerificationInfoDiagnosticsJson2 = [(KTSelfValidationURIDiagnostics *)v5 ktVerificationInfoDiagnosticsJson];
      v8 = [ktVerificationInfoDiagnosticsJson isEqual:ktVerificationInfoDiagnosticsJson2];

      if (v8)
      {
        transparentDataDiagnosticsJson = [(KTSelfValidationURIDiagnostics *)self transparentDataDiagnosticsJson];
        transparentDataDiagnosticsJson2 = [(KTSelfValidationURIDiagnostics *)v5 transparentDataDiagnosticsJson];
        v11 = [transparentDataDiagnosticsJson isEqual:transparentDataDiagnosticsJson2];

        if (v11)
        {
          result = [(KTSelfValidationURIDiagnostics *)self result];
          result2 = [(KTSelfValidationURIDiagnostics *)v5 result];
          v14 = [result isEqual:result2];

          if (v14)
          {
            error = [(KTSelfValidationURIDiagnostics *)self error];
            if (error)
            {
            }

            else
            {
              error2 = [(KTSelfValidationURIDiagnostics *)v5 error];

              if (!error2)
              {
                goto LABEL_13;
              }
            }

            error3 = [(KTSelfValidationURIDiagnostics *)v5 error];

            if (error3)
            {
              v19 = MEMORY[0x1E697AAC0];
              result2 = [(KTSelfValidationURIDiagnostics *)self error];
              v20 = [v19 cleanseErrorForXPC:result2];
              v21 = MEMORY[0x1E697AAC0];
              error4 = [(KTSelfValidationURIDiagnostics *)v5 error];
              v14 = [v21 cleanseErrorForXPC:error4];
              v23 = [v20 isEqual:v14];

              if (v23)
              {
LABEL_13:
                requestTime = [(KTSelfValidationURIDiagnostics *)self requestTime];
                if (requestTime && (-[KTSelfValidationURIDiagnostics requestTime](self, "requestTime"), result2 = objc_claimAutoreleasedReturnValue(), -[KTSelfValidationURIDiagnostics requestTime](v5, "requestTime"), v14 = objc_claimAutoreleasedReturnValue(), [result2 compare:v14]))
                {
                  v25 = 1;
                }

                else
                {
                  requestTime2 = [(KTSelfValidationURIDiagnostics *)self requestTime];
                  if (requestTime2)
                  {
                    v25 = 0;
                  }

                  else
                  {
                    requestTime3 = [(KTSelfValidationURIDiagnostics *)v5 requestTime];
                    v25 = requestTime3 != 0;
                  }

                  if (!requestTime)
                  {
                    goto LABEL_24;
                  }
                }

LABEL_24:
                v16 = !v25;
                goto LABEL_17;
              }
            }
          }
        }
      }

      v16 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v16 = 0;
  }

LABEL_18:

  return v16;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  result = [(KTSelfValidationURIDiagnostics *)self result];

  if (result)
  {
    result2 = [(KTSelfValidationURIDiagnostics *)self result];
    [dictionary setObject:result2 forKeyedSubscript:@"result"];
  }

  transparentDataDiagnosticsJson = [(KTSelfValidationURIDiagnostics *)self transparentDataDiagnosticsJson];

  if (transparentDataDiagnosticsJson)
  {
    transparentDataDiagnosticsJson2 = [(KTSelfValidationURIDiagnostics *)self transparentDataDiagnosticsJson];
    [dictionary setObject:transparentDataDiagnosticsJson2 forKeyedSubscript:@"transparentData"];
  }

  ktVerificationInfoDiagnosticsJson = [(KTSelfValidationURIDiagnostics *)self ktVerificationInfoDiagnosticsJson];

  if (ktVerificationInfoDiagnosticsJson)
  {
    ktVerificationInfoDiagnosticsJson2 = [(KTSelfValidationURIDiagnostics *)self ktVerificationInfoDiagnosticsJson];
    [dictionary setObject:ktVerificationInfoDiagnosticsJson2 forKeyedSubscript:@"KTVerificationInfo"];
  }

  error = [(KTSelfValidationURIDiagnostics *)self error];

  if (error)
  {
    error2 = [(KTSelfValidationURIDiagnostics *)self error];
    v12 = [TransparencyError diagnosticError:error2];
    [dictionary setObject:v12 forKeyedSubscript:@"error"];
  }

  requestTime = [(KTSelfValidationURIDiagnostics *)self requestTime];

  if (requestTime)
  {
    requestTime2 = [(KTSelfValidationURIDiagnostics *)self requestTime];
    kt_dateToString = [requestTime2 kt_dateToString];
    [dictionary setObject:kt_dateToString forKeyedSubscript:@"requestTime"];

    requestTime3 = [(KTSelfValidationURIDiagnostics *)self requestTime];
    kt_toISO_8601_UTCString = [requestTime3 kt_toISO_8601_UTCString];
    [dictionary setObject:kt_toISO_8601_UTCString forKeyedSubscript:@"requestTimeReadable"];
  }

  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionary])
  {
    v18 = dictionary;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  diagnosticsJsonDictionary = [(KTSelfValidationURIDiagnostics *)self diagnosticsJsonDictionary];
  v3 = [diagnosticsJsonDictionary description];

  return v3;
}

@end