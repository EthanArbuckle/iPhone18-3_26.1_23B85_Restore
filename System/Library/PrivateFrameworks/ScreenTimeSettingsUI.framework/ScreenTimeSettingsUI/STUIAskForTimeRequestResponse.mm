@interface STUIAskForTimeRequestResponse
- (STUIAskForTimeRequestResponse)initWithRequestResponse:(id)response;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation STUIAskForTimeRequestResponse

- (STUIAskForTimeRequestResponse)initWithRequestResponse:(id)response
{
  responseCopy = response;
  v18.receiver = self;
  v18.super_class = STUIAskForTimeRequestResponse;
  v5 = [(STUIAskForTimeRequestResponse *)&v18 init];
  v6 = v5;
  if (responseCopy && v5)
  {
    usageType = [responseCopy usageType];
    if (usageType == 2)
    {
      v6->_usageType = 1;
      requestedCategoryIdentifier = [responseCopy requestedCategoryIdentifier];
    }

    else if (usageType == 1)
    {
      v6->_usageType = 2;
      requestedCategoryIdentifier = [responseCopy requestedWebDomain];
    }

    else
    {
      if (usageType)
      {
LABEL_10:
        identifier = [responseCopy identifier];
        uUIDString = [identifier UUIDString];
        v12 = [uUIDString copy];
        identifier = v6->_identifier;
        v6->_identifier = v12;

        requestingUser = [responseCopy requestingUser];
        dsid = [requestingUser dsid];
        requestingUserDSID = v6->_requestingUserDSID;
        v6->_requestingUserDSID = dsid;

        goto LABEL_11;
      }

      v6->_usageType = 0;
      requestedCategoryIdentifier = [responseCopy requestedApplicationBundleIdentifier];
    }

    budgetedIdentifier = v6->_budgetedIdentifier;
    v6->_budgetedIdentifier = requestedCategoryIdentifier;

    goto LABEL_10;
  }

LABEL_11:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = self->_usageType;
  v5 = [(NSString *)self->_identifier copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(NSString *)self->_budgetedIdentifier copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  objc_storeStrong((v4 + 32), self->_requestingUserDSID);
  return v4;
}

@end