@interface SPOwnerSessionState
- (SPOwnerSessionState)initWithCoder:(id)coder;
- (SPOwnerSessionState)initWithServiceState:(id)state disabledReasons:(id)reasons ownerDataState:(id)dataState;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPOwnerSessionState

- (SPOwnerSessionState)initWithServiceState:(id)state disabledReasons:(id)reasons ownerDataState:(id)dataState
{
  stateCopy = state;
  reasonsCopy = reasons;
  dataStateCopy = dataState;
  v14.receiver = self;
  v14.super_class = SPOwnerSessionState;
  v11 = [(SPOwnerSessionState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SPOwnerSessionState *)v11 setServiceState:stateCopy];
    [(SPOwnerSessionState *)v12 setDisabledReasons:reasonsCopy];
    [(SPOwnerSessionState *)v12 setOwnerDataState:dataStateCopy];
  }

  return v12;
}

- (SPOwnerSessionState)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceState"];
  serviceState = self->_serviceState;
  self->_serviceState = v5;

  v7 = MEMORY[0x277CBEB98];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"disabledReasons"];
  disabledReasons = self->_disabledReasons;
  self->_disabledReasons = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerDataState"];

  ownerDataState = self->_ownerDataState;
  self->_ownerDataState = v12;

  v14 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPOwnerSessionState alloc];
  serviceState = self->_serviceState;
  v6 = [(NSSet *)self->_disabledReasons copy];
  v7 = [(SPOwnerSessionState *)v4 initWithServiceState:serviceState disabledReasons:v6 ownerDataState:self->_ownerDataState];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceState = [(SPOwnerSessionState *)self serviceState];
  [coderCopy encodeObject:serviceState forKey:@"serviceState"];

  disabledReasons = [(SPOwnerSessionState *)self disabledReasons];
  [coderCopy encodeObject:disabledReasons forKey:@"disabledReasons"];

  ownerDataState = [(SPOwnerSessionState *)self ownerDataState];
  [coderCopy encodeObject:ownerDataState forKey:@"ownerDataState"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  serviceState = [(SPOwnerSessionState *)self serviceState];
  v6 = [serviceState description];
  disabledReasons = [(SPOwnerSessionState *)self disabledReasons];
  ownerDataState = [(SPOwnerSessionState *)self ownerDataState];
  v9 = [ownerDataState description];
  v10 = [v3 stringWithFormat:@"<%@: %p serviceState: %@ disabledReasons: %@ ownerDataState: %@>", v4, self, v6, disabledReasons, v9];

  return v10;
}

@end