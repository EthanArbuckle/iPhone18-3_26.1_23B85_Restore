@interface SFDeviceQueryParameters
- (BOOL)isEqual:(id)a3;
- (NSString)queryType;
- (SFDeviceQueryParameters)initWithDeviceAssetQuery:(id)a3 installedOnly:(BOOL)a4 imperfectMatch:(BOOL)a5 fallback:(BOOL)a6;
- (id)description;
- (id)maAssetQueryDescription;
- (unint64_t)hash;
@end

@implementation SFDeviceQueryParameters

- (SFDeviceQueryParameters)initWithDeviceAssetQuery:(id)a3 installedOnly:(BOOL)a4 imperfectMatch:(BOOL)a5 fallback:(BOOL)a6
{
  v8 = a4;
  v10 = a3;
  v22.receiver = self;
  v22.super_class = SFDeviceQueryParameters;
  v11 = [(SFDeviceQueryParameters *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->_installedOnly = v8;
    v11->_imperfectMatch = a5;
    v11->_fallback = a6;
    v13 = getMAAssetQueryClass;
    v14 = v10;
    v15 = objc_alloc(v13());
    v16 = [v14 assetType];
    v17 = [v15 initWithType:v16];

    if (v8)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    [v17 returnTypes:v18];
    v19 = [v14 effectiveProductType];

    SFDeviceAssetAddKeyValuePair(@"ProductType", v19, v17);
    maQuery = v12->_maQuery;
    v12->_maQuery = v17;
  }

  return v12;
}

- (id)maAssetQueryDescription
{
  v2 = [(SFDeviceQueryParameters *)self maQuery];
  v17 = 0;
  v10 = objc_opt_class();
  NSAppendPrintF();
  v16 = 0;
  NSAppendPrintF();
  v3 = v16;

  v4 = [v2 returnTypes];
  if (v4 == 2)
  {
    v13 = v3;
    v5 = &v13;
  }

  else if (v4 == 1)
  {
    v14 = v3;
    v5 = &v14;
  }

  else if (v4)
  {
    v12 = v3;
    v5 = &v12;
  }

  else
  {
    v15 = v3;
    v5 = &v15;
  }

  NSAppendPrintF();
  v6 = *v5;

  v11 = [v2 queryParams];
  NSAppendPrintF();
  v7 = v6;

  NSAppendPrintF();
  v8 = v7;

  return v7;
}

- (id)description
{
  v9 = objc_opt_class();
  NSAppendPrintF();
  v3 = 0;
  if ([(SFDeviceQueryParameters *)self installedOnly:v9])
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v10 = v4;
  NSAppendPrintF();
  v5 = v3;

  [(SFDeviceQueryParameters *)self fallback];
  NSAppendPrintF();
  v6 = v5;

  NSAppendPrintF();
  v7 = v6;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFDeviceQueryParameters *)self maQuery];
      v7 = [(SFDeviceQueryParameters *)v5 maQuery];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {

          goto LABEL_13;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_13;
        }
      }

      v13 = [(SFDeviceQueryParameters *)self installedOnly];
      if (v13 == [(SFDeviceQueryParameters *)v5 installedOnly])
      {
        v14 = [(SFDeviceQueryParameters *)self fallback];
        v12 = v14 ^ [(SFDeviceQueryParameters *)v5 fallback]^ 1;
LABEL_14:

        goto LABEL_15;
      }

LABEL_13:
      LOBYTE(v12) = 0;
      goto LABEL_14;
    }

    LOBYTE(v12) = 0;
  }

LABEL_15:

  return v12;
}

- (unint64_t)hash
{
  v2 = [(SFDeviceQueryParameters *)self maQuery];
  v3 = [v2 hash];

  return v3;
}

- (NSString)queryType
{
  if (self->_fallback)
  {
    v3 = @"fallback asset";
  }

  else
  {
    if (self->_imperfectMatch)
    {
      v5 = @" (imperfect)";
    }

    else
    {
      v5 = &stru_1F1D30528;
    }

    if (self->_installedOnly)
    {
      v6 = @"installed asset%@";
    }

    else
    {
      v6 = @"catalog asset%@";
    }

    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:v6, v5];
  }

  return v3;
}

@end