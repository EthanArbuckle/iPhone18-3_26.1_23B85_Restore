@interface RMManagementChannel
- (id)initWithManagementSource:(id)a3;
- (unint64_t)protocolType;
@end

@implementation RMManagementChannel

- (id)initWithManagementSource:(id)a3
{
  v3 = a3;
  v17 = [v3 conduitConfig];
  v4 = [v17 state];
  v5 = [v3 enrollmentType];
  v6 = [v3 identifier];
  v7 = [v3 accountIdentifier];
  v8 = [v3 storeDescription];
  v9 = [v3 name];
  v10 = [v3 bootstrapURI];
  v11 = [v4 enrollmentToken];
  v12 = v11;
  if (!v11)
  {
    v12 = [v3 identifier];
  }

  LOBYTE(v15) = [v3 enrolled];
  v13 = [(RMManagementChannel *)self initWithType:v5 identifier:v6 accountIdentifier:v7 accountDescription:v8 organizationDescription:v9 enrollmentURL:v10 enrollmentToken:v12 isEnrolled:v15];
  if (!v11)
  {
  }

  return v13;
}

- (unint64_t)protocolType
{
  v2 = [(RMManagementChannel *)self enrollmentURL];
  v3 = [v2 scheme];

  if ([v3 caseInsensitiveCompare:@"https"] && objc_msgSend(v3, "caseInsensitiveCompare:", @"file"))
  {
    if ([v3 caseInsensitiveCompare:@"mdm"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end