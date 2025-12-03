@interface WBSHistoryNotification
- (WBSHistoryNotification)initWithCoder:(id)coder;
- (WBSHistoryNotification)initWithName:(id)name userInfo:(id)info;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHistoryNotification

- (WBSHistoryNotification)initWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = WBSHistoryNotification;
  v8 = [(WBSHistoryNotification *)&v15 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [infoCopy copy];
    userInfo = v8->_userInfo;
    v8->_userInfo = v11;

    v13 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p name = %@; userInfo = %@>", v5, self, self->_name, self->_userInfo];;

  return v6;
}

- (WBSHistoryNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodePropertyListForKey:@"userInfo"];

  v7 = [(WBSHistoryNotification *)self initWithName:v5 userInfo:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
}

@end