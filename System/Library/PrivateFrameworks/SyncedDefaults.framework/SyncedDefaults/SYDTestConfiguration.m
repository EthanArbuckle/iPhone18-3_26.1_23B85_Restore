@interface SYDTestConfiguration
- (BOOL)isEqual:(id)a3;
- (SYDTestConfiguration)initWithCoder:(id)a3;
- (SYDTestConfiguration)initWithTestServerName:(id)a3 testDeviceID:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SYDTestConfiguration

- (SYDTestConfiguration)initWithTestServerName:(id)a3 testDeviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SYDTestConfiguration;
  v8 = [(SYDTestConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    testServerName = v8->_testServerName;
    v8->_testServerName = v9;

    v11 = [v7 copy];
    testDeviceID = v8->_testDeviceID;
    v8->_testDeviceID = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SYDTestConfiguration *)self testServerName];
    v7 = [v5 testServerName];
    v8 = SYDObjectsAreBothNilOrEqual(v6, v7);

    if (v8)
    {
      v9 = [(SYDTestConfiguration *)self testDeviceID];
      v10 = [v5 testDeviceID];
      v11 = SYDObjectsAreBothNilOrEqual(v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(SYDTestConfiguration *)self testServerName];
  v4 = [v3 hash];
  v5 = [(SYDTestConfiguration *)self testDeviceID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SYDTestConfiguration *)self testServerName];
  v7 = [(SYDTestConfiguration *)self testDeviceID];
  v8 = [v3 stringWithFormat:@"<%@ server=%@ device=%@>", v5, v6, v7];

  return v8;
}

- (SYDTestConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SYDTestConfiguration;
  v5 = [(SYDTestConfiguration *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_testServerName);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    testServerName = v5->_testServerName;
    v5->_testServerName = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_testDeviceID);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    testDeviceID = v5->_testDeviceID;
    v5->_testDeviceID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  testServerName = self->_testServerName;
  v5 = a3;
  v6 = NSStringFromSelector(sel_testServerName);
  [v5 encodeObject:testServerName forKey:v6];

  testDeviceID = self->_testDeviceID;
  v8 = NSStringFromSelector(sel_testDeviceID);
  [v5 encodeObject:testDeviceID forKey:v8];
}

@end