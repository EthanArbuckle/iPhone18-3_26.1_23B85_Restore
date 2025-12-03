@interface SYDTestConfiguration
- (BOOL)isEqual:(id)equal;
- (SYDTestConfiguration)initWithCoder:(id)coder;
- (SYDTestConfiguration)initWithTestServerName:(id)name testDeviceID:(id)d;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SYDTestConfiguration

- (SYDTestConfiguration)initWithTestServerName:(id)name testDeviceID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = SYDTestConfiguration;
  v8 = [(SYDTestConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    testServerName = v8->_testServerName;
    v8->_testServerName = v9;

    v11 = [dCopy copy];
    testDeviceID = v8->_testDeviceID;
    v8->_testDeviceID = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    testServerName = [(SYDTestConfiguration *)self testServerName];
    testServerName2 = [v5 testServerName];
    v8 = SYDObjectsAreBothNilOrEqual(testServerName, testServerName2);

    if (v8)
    {
      testDeviceID = [(SYDTestConfiguration *)self testDeviceID];
      testDeviceID2 = [v5 testDeviceID];
      v11 = SYDObjectsAreBothNilOrEqual(testDeviceID, testDeviceID2);
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
  testServerName = [(SYDTestConfiguration *)self testServerName];
  v4 = [testServerName hash];
  testDeviceID = [(SYDTestConfiguration *)self testDeviceID];
  v6 = [testDeviceID hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  testServerName = [(SYDTestConfiguration *)self testServerName];
  testDeviceID = [(SYDTestConfiguration *)self testDeviceID];
  v8 = [v3 stringWithFormat:@"<%@ server=%@ device=%@>", v5, testServerName, testDeviceID];

  return v8;
}

- (SYDTestConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SYDTestConfiguration;
  v5 = [(SYDTestConfiguration *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_testServerName);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    testServerName = v5->_testServerName;
    v5->_testServerName = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_testDeviceID);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    testDeviceID = v5->_testDeviceID;
    v5->_testDeviceID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  testServerName = self->_testServerName;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_testServerName);
  [coderCopy encodeObject:testServerName forKey:v6];

  testDeviceID = self->_testDeviceID;
  v8 = NSStringFromSelector(sel_testDeviceID);
  [coderCopy encodeObject:testDeviceID forKey:v8];
}

@end