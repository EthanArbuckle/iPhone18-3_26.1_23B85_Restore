@interface SPBeaconTaskInformation
+ (id)errorByRemovingUserInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SPBeaconTaskInformation)initWithCoder:(id)a3;
- (SPBeaconTaskInformation)initWithName:(id)a3 lastUpdated:(id)a4 error:(id)a5 state:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconTaskInformation

- (SPBeaconTaskInformation)initWithName:(id)a3 lastUpdated:(id)a4 error:(id)a5 state:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = SPBeaconTaskInformation;
  v13 = [(SPBeaconTaskInformation *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(SPBeaconTaskInformation *)v13 setName:v10];
    [(SPBeaconTaskInformation *)v14 setLastUpdated:v11];
    [(SPBeaconTaskInformation *)v14 setError:v12];
    [(SPBeaconTaskInformation *)v14 setState:a6];
    v15 = [MEMORY[0x277CCAD78] UUID];
    [(SPBeaconTaskInformation *)v14 setCommandIdentifier:v15];
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBeaconTaskInformation alloc];
  v5 = [(SPBeaconTaskInformation *)self name];
  v6 = [(SPBeaconTaskInformation *)self lastUpdated];
  v7 = [(SPBeaconTaskInformation *)self error];
  v8 = [(SPBeaconTaskInformation *)v4 initWithName:v5 lastUpdated:v6 error:v7 state:[(SPBeaconTaskInformation *)self state]];

  v9 = [(SPBeaconTaskInformation *)self commandIdentifier];
  [(SPBeaconTaskInformation *)v8 setCommandIdentifier:v9];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPBeaconTaskInformation *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(SPBeaconTaskInformation *)self lastUpdated];
  [v4 encodeObject:v6 forKey:@"lastUpdated"];

  [v4 encodeInteger:-[SPBeaconTaskInformation state](self forKey:{"state"), @"state"}];
  v7 = [(SPBeaconTaskInformation *)self commandIdentifier];
  [v4 encodeObject:v7 forKey:@"commandIdentifier"];

  v8 = [(SPBeaconTaskInformation *)self error];
  v9 = [SPBeaconTaskInformation errorByRemovingUserInfo:v8];

  [v4 encodeObject:v9 forKey:@"error"];
}

- (SPBeaconTaskInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
  lastUpdated = self->_lastUpdated;
  self->_lastUpdated = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  error = self->_error;
  self->_error = v9;

  self->_state = [v4 decodeIntegerForKey:@"state"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandIdentifier"];

  commandIdentifier = self->_commandIdentifier;
  self->_commandIdentifier = v11;

  return self;
}

- (id)debugDescription
{
  v3 = [(SPBeaconTaskInformation *)self state];
  if ((v3 + 1) > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_279B589C8 + v3 + 1);
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [(SPBeaconTaskInformation *)self name];
  v8 = [(SPBeaconTaskInformation *)self commandIdentifier];
  v9 = [(SPBeaconTaskInformation *)self error];
  v10 = [v5 stringWithFormat:@"<%@: %p %@ %@ state: %@ error: %@>", v6, self, v7, v8, v4, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPBeaconTaskInformation *)self commandIdentifier];
      v7 = [(SPBeaconTaskInformation *)v5 commandIdentifier];

      v8 = [v6 isEqual:v7];
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
  v2 = [(SPBeaconTaskInformation *)self commandIdentifier];
  v3 = [v2 hash];

  return v3;
}

+ (id)errorByRemovingUserInfo:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = a3;
    v5 = [v4 domain];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = @"com.apple.icloud.searchpartyd.SPBeaconTaskInformation.ErrorDomain";
    }

    v8 = [v4 code];

    v9 = [v3 errorWithDomain:v7 code:v8 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end