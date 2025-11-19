@interface WBSHistoryNotification
- (WBSHistoryNotification)initWithCoder:(id)a3;
- (WBSHistoryNotification)initWithName:(id)a3 userInfo:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSHistoryNotification

- (WBSHistoryNotification)initWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WBSHistoryNotification;
  v8 = [(WBSHistoryNotification *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
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

- (WBSHistoryNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodePropertyListForKey:@"userInfo"];

  v7 = [(WBSHistoryNotification *)self initWithName:v5 userInfo:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_userInfo forKey:@"userInfo"];
}

@end