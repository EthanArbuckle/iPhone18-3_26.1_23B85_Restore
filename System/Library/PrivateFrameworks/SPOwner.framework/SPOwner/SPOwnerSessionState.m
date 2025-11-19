@interface SPOwnerSessionState
- (SPOwnerSessionState)initWithCoder:(id)a3;
- (SPOwnerSessionState)initWithServiceState:(id)a3 disabledReasons:(id)a4 ownerDataState:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPOwnerSessionState

- (SPOwnerSessionState)initWithServiceState:(id)a3 disabledReasons:(id)a4 ownerDataState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SPOwnerSessionState;
  v11 = [(SPOwnerSessionState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SPOwnerSessionState *)v11 setServiceState:v8];
    [(SPOwnerSessionState *)v12 setDisabledReasons:v9];
    [(SPOwnerSessionState *)v12 setOwnerDataState:v10];
  }

  return v12;
}

- (SPOwnerSessionState)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceState"];
  serviceState = self->_serviceState;
  self->_serviceState = v5;

  v7 = MEMORY[0x277CBEB98];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"disabledReasons"];
  disabledReasons = self->_disabledReasons;
  self->_disabledReasons = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerDataState"];

  ownerDataState = self->_ownerDataState;
  self->_ownerDataState = v12;

  v14 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPOwnerSessionState alloc];
  serviceState = self->_serviceState;
  v6 = [(NSSet *)self->_disabledReasons copy];
  v7 = [(SPOwnerSessionState *)v4 initWithServiceState:serviceState disabledReasons:v6 ownerDataState:self->_ownerDataState];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPOwnerSessionState *)self serviceState];
  [v4 encodeObject:v5 forKey:@"serviceState"];

  v6 = [(SPOwnerSessionState *)self disabledReasons];
  [v4 encodeObject:v6 forKey:@"disabledReasons"];

  v7 = [(SPOwnerSessionState *)self ownerDataState];
  [v4 encodeObject:v7 forKey:@"ownerDataState"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPOwnerSessionState *)self serviceState];
  v6 = [v5 description];
  v7 = [(SPOwnerSessionState *)self disabledReasons];
  v8 = [(SPOwnerSessionState *)self ownerDataState];
  v9 = [v8 description];
  v10 = [v3 stringWithFormat:@"<%@: %p serviceState: %@ disabledReasons: %@ ownerDataState: %@>", v4, self, v6, v7, v9];

  return v10;
}

@end