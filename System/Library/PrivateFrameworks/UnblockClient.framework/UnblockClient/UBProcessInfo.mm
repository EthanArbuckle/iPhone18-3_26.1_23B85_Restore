@interface UBProcessInfo
- (UBProcessInfo)initWithCoder:(id)coder;
- (UBProcessInfo)initWithPid:(int)pid name:(id)name is3P:(BOOL)p;
- (id)description;
- (id)telemetryName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UBProcessInfo

- (void)encodeWithCoder:(id)coder
{
  pid = self->_pid;
  coderCopy = coder;
  [coderCopy encodeInt32:pid forKey:@"_pid"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
  [coderCopy encodeBool:self->_is3P forKey:@"_is3P"];
}

- (UBProcessInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UBProcessInfo;
  v5 = [(UBProcessInfo *)&v10 init];
  if (v5)
  {
    v5->_pid = [coderCopy decodeInt32ForKey:@"_pid"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_is3P = [coderCopy decodeBoolForKey:@"_is3P"];
    v8 = v5;
  }

  return v5;
}

- (UBProcessInfo)initWithPid:(int)pid name:(id)name is3P:(BOOL)p
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = UBProcessInfo;
  v10 = [(UBProcessInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_pid = pid;
    objc_storeStrong(&v10->_name, name);
    v11->_is3P = p;
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