@interface TVAssetElement
- (BOOL)isEqual:(id)equal;
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
  assetElement = [(TVAssetElement *)self assetElement];
  actionParams = [assetElement actionParams];

  return actionParams;
}

- (NSString)adamID
{
  assetElement = [(TVAssetElement *)self assetElement];
  adamID = [assetElement adamID];

  return adamID;
}

- (NSURL)extrasURL
{
  assetElement = [(TVAssetElement *)self assetElement];
  extrasURL = [assetElement extrasURL];

  return extrasURL;
}

- (unint64_t)keyDelivery
{
  assetElement = [(TVAssetElement *)self assetElement];
  keyDelivery = [assetElement keyDelivery];

  return keyDelivery == 1;
}

- (NSNumber)persistentID
{
  assetElement = [(TVAssetElement *)self assetElement];
  persistentID = [assetElement persistentID];

  return persistentID;
}

- (NSNumber)rentalAdamID
{
  assetElement = [(TVAssetElement *)self assetElement];
  rentalAdamID = [assetElement rentalAdamID];

  return rentalAdamID;
}

- (unint64_t)type
{
  assetElement = [(TVAssetElement *)self assetElement];
  type = [assetElement type];

  if (type == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 2);
  }
}

- (NSURL)url
{
  assetElement = [(TVAssetElement *)self assetElement];
  v3 = [assetElement url];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  actionParams = [(TVAssetElement *)self actionParams];
  if (actionParams)
  {

LABEL_5:
    actionParams2 = [(TVAssetElement *)self actionParams];
    actionParams3 = [equalCopy actionParams];
    v9 = [actionParams2 isEqualToString:actionParams3];

    goto LABEL_6;
  }

  actionParams4 = [equalCopy actionParams];

  if (actionParams4)
  {
    goto LABEL_5;
  }

  v9 = 1;
LABEL_6:
  adamID = [(TVAssetElement *)self adamID];
  if (adamID)
  {

    if ((v9 & 1) == 0)
    {
      v11 = 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  adamID2 = [equalCopy adamID];

  v11 = (adamID2 == 0) & v9;
  if (adamID2 && ((v9 ^ 1) & 1) == 0)
  {
LABEL_11:
    adamID3 = [(TVAssetElement *)self adamID];
    adamID4 = [equalCopy adamID];
    v11 = [adamID3 isEqualToString:adamID4];
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

  v17 = [equalCopy url];

  v16 = (v17 == 0) & v11;
  if (v17 && ((v11 ^ 1) & 1) == 0)
  {
LABEL_17:
    v18 = [(TVAssetElement *)self url];
    v19 = [equalCopy url];
    v16 = [v18 isEqual:v19];
  }

LABEL_18:
  persistentID = [(TVAssetElement *)self persistentID];
  if (persistentID)
  {

    if ((v16 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  persistentID2 = [equalCopy persistentID];

  v21 = (persistentID2 == 0) & v16;
  if (persistentID2 && ((v16 ^ 1) & 1) == 0)
  {
LABEL_23:
    persistentID3 = [(TVAssetElement *)self persistentID];
    persistentID4 = [equalCopy persistentID];
    v21 = [persistentID3 isEqual:persistentID4];
  }

LABEL_24:
  rentalAdamID = [(TVAssetElement *)self rentalAdamID];
  if (rentalAdamID)
  {

LABEL_27:
    if (!v21)
    {
      goto LABEL_34;
    }

    rentalAdamID2 = [(TVAssetElement *)self rentalAdamID];
    rentalAdamID3 = [equalCopy rentalAdamID];
    v29 = [rentalAdamID2 isEqual:rentalAdamID3];

    if ((v29 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  rentalAdamID4 = [equalCopy rentalAdamID];

  if (rentalAdamID4)
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
  keyDelivery = [(TVAssetElement *)self keyDelivery];
  if (keyDelivery != [equalCopy keyDelivery])
  {
    goto LABEL_34;
  }

  type = [(TVAssetElement *)self type];
  v32 = type == [equalCopy type];
LABEL_35:

  return v32;
}

@end