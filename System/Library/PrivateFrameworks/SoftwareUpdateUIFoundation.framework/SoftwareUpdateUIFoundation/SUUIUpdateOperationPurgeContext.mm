@interface SUUIUpdateOperationPurgeContext
- (SUUIUpdateOperationPurgeContext)init;
- (id)description;
- (id)initAsUserRequest:(BOOL)request notifyUser:(BOOL)user;
@end

@implementation SUUIUpdateOperationPurgeContext

- (SUUIUpdateOperationPurgeContext)init
{
  v4 = 0;
  v4 = [(SUUIUpdateOperationPurgeContext *)self initAsUserRequest:0 notifyUser:0];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (id)initAsUserRequest:(BOOL)request notifyUser:(BOOL)user
{
  v10 = a2;
  requestCopy = request;
  userCopy = user;
  v11 = 0;
  v7.receiver = self;
  v7.super_class = SUUIUpdateOperationPurgeContext;
  v6 = [(SUUIUpdateOperationPurgeContext *)&v7 init];
  v11 = v6;
  objc_storeStrong(&v11, v6);
  if (v6)
  {
    v11->_notifyUser = userCopy;
    v11->_userRequested = requestCopy;
  }

  v5 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v5;
}

- (id)description
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"notifyUser";
  if (self->_notifyUser)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v7 = v2;
  v3 = v2;
  v13 = v7;
  v16[0] = v13;
  v15[1] = @"userRequested";
  if (self->_userRequested)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v8 = v4;
  v5 = v4;
  v12 = v8;
  v16[1] = v12;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v11 = [SUUIObjectDescriptionFormatter descriptionForObject:self properties:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  *MEMORY[0x277D85DE8];

  return v11;
}

@end