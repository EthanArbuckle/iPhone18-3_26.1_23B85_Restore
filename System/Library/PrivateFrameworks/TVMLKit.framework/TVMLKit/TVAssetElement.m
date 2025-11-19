@interface TVAssetElement
- (BOOL)isEqual:(id)a3;
- (NSNumber)persistentID;
- (NSNumber)rentalAdamID;
- (NSString)actionParams;
- (NSString)adamID;
- (NSURL)extrasURL;
- (NSURL)url;
- (unint64_t)keyDelivery;
- (unint64_t)type;
@end

@implementation TVAssetElement

- (NSString)actionParams
{
  v2 = [(TVAssetElement *)self assetElement];
  v3 = [v2 actionParams];

  return v3;
}

- (NSString)adamID
{
  v2 = [(TVAssetElement *)self assetElement];
  v3 = [v2 adamID];

  return v3;
}

- (NSURL)extrasURL
{
  v2 = [(TVAssetElement *)self assetElement];
  v3 = [v2 extrasURL];

  return v3;
}

- (unint64_t)keyDelivery
{
  v2 = [(TVAssetElement *)self assetElement];
  v3 = [v2 keyDelivery];

  return v3 == 1;
}

- (NSNumber)persistentID
{
  v2 = [(TVAssetElement *)self assetElement];
  v3 = [v2 persistentID];

  return v3;
}

- (NSNumber)rentalAdamID
{
  v2 = [(TVAssetElement *)self assetElement];
  v3 = [v2 rentalAdamID];

  return v3;
}

- (unint64_t)type
{
  v2 = [(TVAssetElement *)self assetElement];
  v3 = [v2 type];

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

- (NSURL)url
{
  v2 = [(TVAssetElement *)self assetElement];
  v3 = [v2 url];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = [(TVAssetElement *)self actionParams];
  if (v5)
  {

LABEL_5:
    v7 = [(TVAssetElement *)self actionParams];
    v8 = [v4 actionParams];
    v9 = [v7 isEqualToString:v8];

    goto LABEL_6;
  }

  v6 = [v4 actionParams];

  if (v6)
  {
    goto LABEL_5;
  }

  v9 = 1;
LABEL_6:
  v10 = [(TVAssetElement *)self adamID];
  if (v10)
  {

    if ((v9 & 1) == 0)
    {
      v11 = 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v12 = [v4 adamID];

  v11 = (v12 == 0) & v9;
  if (v12 && ((v9 ^ 1) & 1) == 0)
  {
LABEL_11:
    v13 = [(TVAssetElement *)self adamID];
    v14 = [v4 adamID];
    v11 = [v13 isEqualToString:v14];
  }

LABEL_12:
  v15 = [(TVAssetElement *)self url];
  if (v15)
  {

    if ((v11 & 1) == 0)
    {
      v16 = 0;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v17 = [v4 url];

  v16 = (v17 == 0) & v11;
  if (v17 && ((v11 ^ 1) & 1) == 0)
  {
LABEL_17:
    v18 = [(TVAssetElement *)self url];
    v19 = [v4 url];
    v16 = [v18 isEqual:v19];
  }

LABEL_18:
  v20 = [(TVAssetElement *)self persistentID];
  if (v20)
  {

    if ((v16 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v22 = [v4 persistentID];

  v21 = (v22 == 0) & v16;
  if (v22 && ((v16 ^ 1) & 1) == 0)
  {
LABEL_23:
    v23 = [(TVAssetElement *)self persistentID];
    v24 = [v4 persistentID];
    v21 = [v23 isEqual:v24];
  }

LABEL_24:
  v25 = [(TVAssetElement *)self rentalAdamID];
  if (v25)
  {

LABEL_27:
    if (!v21)
    {
      goto LABEL_34;
    }

    v27 = [(TVAssetElement *)self rentalAdamID];
    v28 = [v4 rentalAdamID];
    v29 = [v27 isEqual:v28];

    if ((v29 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v26 = [v4 rentalAdamID];

  if (v26)
  {
    goto LABEL_27;
  }

  if (!v21)
  {
LABEL_34:
    v32 = 0;
    goto LABEL_35;
  }

LABEL_32:
  v30 = [(TVAssetElement *)self keyDelivery];
  if (v30 != [v4 keyDelivery])
  {
    goto LABEL_34;
  }

  v31 = [(TVAssetElement *)self type];
  v32 = v31 == [v4 type];
LABEL_35:

  return v32;
}

@end