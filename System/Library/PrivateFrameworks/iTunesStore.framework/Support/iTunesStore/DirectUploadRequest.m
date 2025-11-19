@interface DirectUploadRequest
- (DirectUploadRequest)initWithEntity:(id)a3 accountIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DirectUploadRequest

- (DirectUploadRequest)initWithEntity:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = DirectUploadRequest;
  v8 = [(DirectUploadRequest *)&v27 init];
  if (v8)
  {
    v31[0] = @"asset_url";
    v31[1] = @"parent_upload_id";
    v31[2] = @"parent_relationship_type";
    v31[3] = @"post_id";
    v31[4] = @"source_app";
    v31[5] = @"uti";
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    [v6 getValues:&v28 forProperties:v31 count:6];
    if (v28)
    {
      v9 = [NSURL alloc];
      v10 = [v9 initWithString:v28];
      localAssetURL = v8->_localAssetURL;
      v8->_localAssetURL = v10;
    }

    v8->_databaseIdentifier = [v6 persistentID];
    v12 = [v29 copy];
    parentRelationshipType = v8->_parentRelationshipType;
    v8->_parentRelationshipType = v12;

    v8->_parentUploadIdentifier = [*(&v28 + 1) longLongValue];
    v14 = [v30 copy];
    sourceApplication = v8->_sourceApplication;
    v8->_sourceApplication = v14;

    v16 = [*(&v30 + 1) copy];
    uti = v8->_uti;
    v8->_uti = v16;

    if (v7)
    {
      v18 = [v7 copy];
      accountIdentifier = v8->_accountIdentifier;
      v8->_accountIdentifier = v18;
    }

    else
    {
      v20 = [MediaSocialPostEntity alloc];
      v21 = [*(&v29 + 1) longLongValue];
      v22 = [v6 database];
      accountIdentifier = [(MediaSocialPostEntity *)v20 initWithPersistentID:v21 inDatabase:v22];

      v23 = [(MediaSocialPostEntity *)accountIdentifier valueForProperty:@"account_id"];
      v24 = v8->_accountIdentifier;
      v8->_accountIdentifier = v23;
    }

    for (i = 5; i != -1; --i)
    {
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAccountIdentifier:self->_accountIdentifier];
  [v4 setDatabaseIdentifier:self->_databaseIdentifier];
  [v4 setLocalAssetURL:self->_localAssetURL];
  [v4 setParentRelationshipType:self->_parentRelationshipType];
  [v4 setParentUploadIdentifier:self->_parentUploadIdentifier];
  [v4 setSourceApplication:self->_sourceApplication];
  [v4 setUTI:self->_uti];
  return v4;
}

@end