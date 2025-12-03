@interface SPBeaconTaskInformation
+ (id)errorByRemovingUserInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (SPBeaconTaskInformation)initWithCoder:(id)coder;
- (SPBeaconTaskInformation)initWithName:(id)name lastUpdated:(id)updated error:(id)error state:(int64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconTaskInformation

- (SPBeaconTaskInformation)initWithName:(id)name lastUpdated:(id)updated error:(id)error state:(int64_t)state
{
  nameCopy = name;
  updatedCopy = updated;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = SPBeaconTaskInformation;
  v13 = [(SPBeaconTaskInformation *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(SPBeaconTaskInformation *)v13 setName:nameCopy];
    [(SPBeaconTaskInformation *)v14 setLastUpdated:updatedCopy];
    [(SPBeaconTaskInformation *)v14 setError:errorCopy];
    [(SPBeaconTaskInformation *)v14 setState:state];
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(SPBeaconTaskInformation *)v14 setCommandIdentifier:uUID];
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBeaconTaskInformation alloc];
  name = [(SPBeaconTaskInformation *)self name];
  lastUpdated = [(SPBeaconTaskInformation *)self lastUpdated];
  error = [(SPBeaconTaskInformation *)self error];
  v8 = [(SPBeaconTaskInformation *)v4 initWithName:name lastUpdated:lastUpdated error:error state:[(SPBeaconTaskInformation *)self state]];

  commandIdentifier = [(SPBeaconTaskInformation *)self commandIdentifier];
  [(SPBeaconTaskInformation *)v8 setCommandIdentifier:commandIdentifier];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(SPBeaconTaskInformation *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  lastUpdated = [(SPBeaconTaskInformation *)self lastUpdated];
  [coderCopy encodeObject:lastUpdated forKey:@"lastUpdated"];

  [coderCopy encodeInteger:-[SPBeaconTaskInformation state](self forKey:{"state"), @"state"}];
  commandIdentifier = [(SPBeaconTaskInformation *)self commandIdentifier];
  [coderCopy encodeObject:commandIdentifier forKey:@"commandIdentifier"];

  error = [(SPBeaconTaskInformation *)self error];
  v9 = [SPBeaconTaskInformation errorByRemovingUserInfo:error];

  [coderCopy encodeObject:v9 forKey:@"error"];
}

- (SPBeaconTaskInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
  lastUpdated = self->_lastUpdated;
  self->_lastUpdated = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  error = self->_error;
  self->_error = v9;

  self->_state = [coderCopy decodeIntegerForKey:@"state"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandIdentifier"];

  commandIdentifier = self->_commandIdentifier;
  self->_commandIdentifier = v11;

  return self;
}

- (id)debugDescription
{
  state = [(SPBeaconTaskInformation *)self state];
  if ((state + 1) > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_279B589C8 + state + 1);
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  name = [(SPBeaconTaskInformation *)self name];
  commandIdentifier = [(SPBeaconTaskInformation *)self commandIdentifier];
  error = [(SPBeaconTaskInformation *)self error];
  v10 = [v5 stringWithFormat:@"<%@: %p %@ %@ state: %@ error: %@>", v6, self, name, commandIdentifier, v4, error];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      commandIdentifier = [(SPBeaconTaskInformation *)self commandIdentifier];
      commandIdentifier2 = [(SPBeaconTaskInformation *)v5 commandIdentifier];

      v8 = [commandIdentifier isEqual:commandIdentifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  commandIdentifier = [(SPBeaconTaskInformation *)self commandIdentifier];
  v3 = [commandIdentifier hash];

  return v3;
}

+ (id)errorByRemovingUserInfo:(id)info
{
  if (info)
  {
    v3 = MEMORY[0x277CCA9B8];
    infoCopy = info;
    domain = [infoCopy domain];
    v6 = domain;
    if (domain)
    {
      v7 = domain;
    }

    else
    {
      v7 = @"com.apple.icloud.searchpartyd.SPBeaconTaskInformation.ErrorDomain";
    }

    code = [infoCopy code];

    v9 = [v3 errorWithDomain:v7 code:code userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end