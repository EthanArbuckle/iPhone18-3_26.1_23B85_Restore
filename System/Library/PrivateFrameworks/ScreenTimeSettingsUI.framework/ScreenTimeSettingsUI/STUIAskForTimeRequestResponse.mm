@interface STUIAskForTimeRequestResponse
- (STUIAskForTimeRequestResponse)initWithRequestResponse:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation STUIAskForTimeRequestResponse

- (STUIAskForTimeRequestResponse)initWithRequestResponse:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = STUIAskForTimeRequestResponse;
  v5 = [(STUIAskForTimeRequestResponse *)&v18 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 usageType];
    if (v7 == 2)
    {
      v6->_usageType = 1;
      v8 = [v4 requestedCategoryIdentifier];
    }

    else if (v7 == 1)
    {
      v6->_usageType = 2;
      v8 = [v4 requestedWebDomain];
    }

    else
    {
      if (v7)
      {
LABEL_10:
        v10 = [v4 identifier];
        v11 = [v10 UUIDString];
        v12 = [v11 copy];
        identifier = v6->_identifier;
        v6->_identifier = v12;

        v14 = [v4 requestingUser];
        v15 = [v14 dsid];
        requestingUserDSID = v6->_requestingUserDSID;
        v6->_requestingUserDSID = v15;

        goto LABEL_11;
      }

      v6->_usageType = 0;
      v8 = [v4 requestedApplicationBundleIdentifier];
    }

    budgetedIdentifier = v6->_budgetedIdentifier;
    v6->_budgetedIdentifier = v8;

    goto LABEL_10;
  }

LABEL_11:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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