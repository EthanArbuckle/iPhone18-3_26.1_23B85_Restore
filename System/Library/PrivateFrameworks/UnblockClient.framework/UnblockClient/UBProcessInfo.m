@interface UBProcessInfo
- (UBProcessInfo)initWithCoder:(id)a3;
- (UBProcessInfo)initWithPid:(int)a3 name:(id)a4 is3P:(BOOL)a5;
- (id)description;
- (id)telemetryName;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UBProcessInfo

- (void)encodeWithCoder:(id)a3
{
  pid = self->_pid;
  v5 = a3;
  [v5 encodeInt32:pid forKey:@"_pid"];
  [v5 encodeObject:self->_name forKey:@"_name"];
  [v5 encodeBool:self->_is3P forKey:@"_is3P"];
}

- (UBProcessInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UBProcessInfo;
  v5 = [(UBProcessInfo *)&v10 init];
  if (v5)
  {
    v5->_pid = [v4 decodeInt32ForKey:@"_pid"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_is3P = [v4 decodeBoolForKey:@"_is3P"];
    v8 = v5;
  }

  return v5;
}

- (UBProcessInfo)initWithPid:(int)a3 name:(id)a4 is3P:(BOOL)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = UBProcessInfo;
  v10 = [(UBProcessInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_pid = a3;
    objc_storeStrong(&v10->_name, a4);
    v11->_is3P = a5;
    v12 = v11;
  }

  return v11;
}

- (id)telemetryName
{
  if (self->_is3P)
  {
    return @"ThirdPartyProcess";
  }

  else
  {
    return self->_name;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ [%d]", self->_name, self->_pid];

  return v2;
}

@end