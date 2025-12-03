@interface RMManagementChannel
- (id)initWithManagementSource:(id)source;
- (unint64_t)protocolType;
@end

@implementation RMManagementChannel

- (id)initWithManagementSource:(id)source
{
  sourceCopy = source;
  conduitConfig = [sourceCopy conduitConfig];
  state = [conduitConfig state];
  enrollmentType = [sourceCopy enrollmentType];
  identifier = [sourceCopy identifier];
  accountIdentifier = [sourceCopy accountIdentifier];
  storeDescription = [sourceCopy storeDescription];
  name = [sourceCopy name];
  bootstrapURI = [sourceCopy bootstrapURI];
  enrollmentToken = [state enrollmentToken];
  identifier2 = enrollmentToken;
  if (!enrollmentToken)
  {
    identifier2 = [sourceCopy identifier];
  }

  LOBYTE(v15) = [sourceCopy enrolled];
  v13 = [(RMManagementChannel *)self initWithType:enrollmentType identifier:identifier accountIdentifier:accountIdentifier accountDescription:storeDescription organizationDescription:name enrollmentURL:bootstrapURI enrollmentToken:identifier2 isEnrolled:v15];
  if (!enrollmentToken)
  {
  }

  return v13;
}

- (unint64_t)protocolType
{
  enrollmentURL = [(RMManagementChannel *)self enrollmentURL];
  scheme = [enrollmentURL scheme];

  if ([scheme caseInsensitiveCompare:@"https"] && objc_msgSend(scheme, "caseInsensitiveCompare:", @"file"))
  {
    if ([scheme caseInsensitiveCompare:@"mdm"])
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