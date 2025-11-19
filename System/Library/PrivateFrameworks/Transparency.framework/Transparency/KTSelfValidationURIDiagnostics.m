@interface KTSelfValidationURIDiagnostics
- (BOOL)isEqual:(id)a3;
- (KTSelfValidationURIDiagnostics)initWithCoder:(id)a3;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTSelfValidationURIDiagnostics

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(KTSelfValidationURIDiagnostics *)self ktVerificationInfoDiagnosticsJson];
  [v13 encodeObject:v4 forKey:@"KTVerificationInfo"];

  v5 = [(KTSelfValidationURIDiagnostics *)self transparentDataDiagnosticsJson];
  [v13 encodeObject:v5 forKey:@"transparentData"];

  v6 = [(KTSelfValidationURIDiagnostics *)self result];
  [v13 encodeObject:v6 forKey:@"result"];

  v7 = [(KTSelfValidationURIDiagnostics *)self requestTime];

  if (v7)
  {
    v8 = [(KTSelfValidationURIDiagnostics *)self requestTime];
    [v13 encodeObject:v8 forKey:@"requestTime"];
  }

  v9 = [(KTSelfValidationURIDiagnostics *)self error];

  if (v9)
  {
    v10 = MEMORY[0x1E697AAC0];
    v11 = [(KTSelfValidationURIDiagnostics *)self error];
    v12 = [v10 cleanseErrorForXPC:v11];
    [v13 encodeObject:v12 forKey:@"error"];
  }
}

- (KTSelfValidationURIDiagnostics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = +[KTSelfValidationDiagnostics jsonClasses];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"KTVerificationInfo"];

  v7 = +[KTSelfValidationDiagnostics jsonClasses];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"transparentData"];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
  v10 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"error"];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestTime"];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(KTSelfValidationURIDiagnostics *)self ktVerificationInfoDiagnosticsJson];
      v7 = [(KTSelfValidationURIDiagnostics *)v5 ktVerificationInfoDiagnosticsJson];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(KTSelfValidationURIDiagnostics *)self transparentDataDiagnosticsJson];
        v10 = [(KTSelfValidationURIDiagnostics *)v5 transparentDataDiagnosticsJson];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          v12 = [(KTSelfValidationURIDiagnostics *)self result];
          v13 = [(KTSelfValidationURIDiagnostics *)v5 result];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            v15 = [(KTSelfValidationURIDiagnostics *)self error];
            if (v15)
            {
            }

            else
            {
              v17 = [(KTSelfValidationURIDiagnostics *)v5 error];

              if (!v17)
              {
                goto LABEL_13;
              }
            }

            v18 = [(KTSelfValidationURIDiagnostics *)v5 error];

            if (v18)
            {
              v19 = MEMORY[0x1E697AAC0];
              v13 = [(KTSelfValidationURIDiagnostics *)self error];
              v20 = [v19 cleanseErrorForXPC:v13];
              v21 = MEMORY[0x1E697AAC0];
              v22 = [(KTSelfValidationURIDiagnostics *)v5 error];
              v14 = [v21 cleanseErrorForXPC:v22];
              v23 = [v20 isEqual:v14];

              if (v23)
              {
LABEL_13:
                v24 = [(KTSelfValidationURIDiagnostics *)self requestTime];
                if (v24 && (-[KTSelfValidationURIDiagnostics requestTime](self, "requestTime"), v13 = objc_claimAutoreleasedReturnValue(), -[KTSelfValidationURIDiagnostics requestTime](v5, "requestTime"), v14 = objc_claimAutoreleasedReturnValue(), [v13 compare:v14]))
                {
                  v25 = 1;
                }

                else
                {
                  v27 = [(KTSelfValidationURIDiagnostics *)self requestTime];
                  if (v27)
                  {
                    v25 = 0;
                  }

                  else
                  {
                    v28 = [(KTSelfValidationURIDiagnostics *)v5 requestTime];
                    v25 = v28 != 0;
                  }

                  if (!v24)
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(KTSelfValidationURIDiagnostics *)self result];

  if (v4)
  {
    v5 = [(KTSelfValidationURIDiagnostics *)self result];
    [v3 setObject:v5 forKeyedSubscript:@"result"];
  }

  v6 = [(KTSelfValidationURIDiagnostics *)self transparentDataDiagnosticsJson];

  if (v6)
  {
    v7 = [(KTSelfValidationURIDiagnostics *)self transparentDataDiagnosticsJson];
    [v3 setObject:v7 forKeyedSubscript:@"transparentData"];
  }

  v8 = [(KTSelfValidationURIDiagnostics *)self ktVerificationInfoDiagnosticsJson];

  if (v8)
  {
    v9 = [(KTSelfValidationURIDiagnostics *)self ktVerificationInfoDiagnosticsJson];
    [v3 setObject:v9 forKeyedSubscript:@"KTVerificationInfo"];
  }

  v10 = [(KTSelfValidationURIDiagnostics *)self error];

  if (v10)
  {
    v11 = [(KTSelfValidationURIDiagnostics *)self error];
    v12 = [TransparencyError diagnosticError:v11];
    [v3 setObject:v12 forKeyedSubscript:@"error"];
  }

  v13 = [(KTSelfValidationURIDiagnostics *)self requestTime];

  if (v13)
  {
    v14 = [(KTSelfValidationURIDiagnostics *)self requestTime];
    v15 = [v14 kt_dateToString];
    [v3 setObject:v15 forKeyedSubscript:@"requestTime"];

    v16 = [(KTSelfValidationURIDiagnostics *)self requestTime];
    v17 = [v16 kt_toISO_8601_UTCString];
    [v3 setObject:v17 forKeyedSubscript:@"requestTimeReadable"];
  }

  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v3])
  {
    v18 = v3;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  v2 = [(KTSelfValidationURIDiagnostics *)self diagnosticsJsonDictionary];
  v3 = [v2 description];

  return v3;
}

@end