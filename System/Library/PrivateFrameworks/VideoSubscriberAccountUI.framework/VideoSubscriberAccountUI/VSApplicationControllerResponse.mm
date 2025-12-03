@interface VSApplicationControllerResponse
- (id)description;
@end

@implementation VSApplicationControllerResponse

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  authenticationScheme = [(VSApplicationControllerResponse *)self authenticationScheme];
  v6 = [v4 stringWithFormat:@"%@ = %@", @"authenticationScheme", authenticationScheme];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  responseStatusCode = [(VSApplicationControllerResponse *)self responseStatusCode];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"responseStatusCode", responseStatusCode];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  responseString = [(VSApplicationControllerResponse *)self responseString];
  v12 = [v10 stringWithFormat:@"%@ = %@", @"responseString", responseString];
  [v3 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  expectedAction = [(VSApplicationControllerResponse *)self expectedAction];
  v15 = [v13 stringWithFormat:@"%@ = %@", @"expectedAction", expectedAction];
  [v3 addObject:v15];

  v16 = MEMORY[0x277CCACA8];
  accountAuthentication = [(VSApplicationControllerResponse *)self accountAuthentication];
  v18 = [v16 stringWithFormat:@"%@ = %@", @"accountAuthentication", accountAuthentication];
  [v3 addObject:v18];

  v19 = MEMORY[0x277CCACA8];
  accountChannelIDs = [(VSApplicationControllerResponse *)self accountChannelIDs];
  v21 = [v19 stringWithFormat:@"%@ = %@", @"accountChannelIDs", accountChannelIDs];
  [v3 addObject:v21];

  v22 = MEMORY[0x277CCACA8];
  subscriptionsToAdd = [(VSApplicationControllerResponse *)self subscriptionsToAdd];
  v24 = [v22 stringWithFormat:@"%@ = %@", @"subscriptionsToAdd", subscriptionsToAdd];
  [v3 addObject:v24];

  v25 = MEMORY[0x277CCACA8];
  subscriptionsToRemoveByBundleID = [(VSApplicationControllerResponse *)self subscriptionsToRemoveByBundleID];
  v27 = [v25 stringWithFormat:@"%@ = %@", @"subscriptionsToRemoveByBundleID", subscriptionsToRemoveByBundleID];
  [v3 addObject:v27];

  v28 = MEMORY[0x277CCACA8];
  applicationUserAccounts = [(VSApplicationControllerResponse *)self applicationUserAccounts];
  v30 = [v28 stringWithFormat:@"%@ = %@", @"applicationUserAccounts", applicationUserAccounts];
  [v3 addObject:v30];

  v31 = MEMORY[0x277CCACA8];
  v36.receiver = self;
  v36.super_class = VSApplicationControllerResponse;
  v32 = [(VSApplicationControllerResponse *)&v36 description];
  v33 = [v3 componentsJoinedByString:{@", "}];
  v34 = [v31 stringWithFormat:@"<%@ %@>", v32, v33];

  return v34;
}

@end