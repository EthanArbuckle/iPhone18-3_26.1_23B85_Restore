@interface STStatusRequest
+ (id)requestWithUDID:(id)a3 withUserShortName:(id)a4 withMessages:(id)a5;
- (BOOL)loadStatusFromDictionary:(id)a3 error:(id *)a4;
- (STStatusRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusRequest

+ (id)requestWithUDID:(id)a3 withUserShortName:(id)a4 withMessages:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setRequestType:@"Status"];
  [v10 setUDID:v9];

  [v10 setUserShortName:v8];
  [v10 setMessages:v7];

  return v10;
}

- (BOOL)loadStatusFromDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v7 = [(STStatusRequest *)self loadStringFromDictionary:v6 withKey:@"RequestType" isRequired:1 defaultValue:0 error:&v21];
  v8 = v21;
  requestType = self->_requestType;
  self->_requestType = v7;

  if (!v8)
  {
    v20 = 0;
    v10 = [(STStatusRequest *)self loadStringFromDictionary:v6 withKey:@"UDID" isRequired:0 defaultValue:0 error:&v20];
    v8 = v20;
    UDID = self->_UDID;
    self->_UDID = v10;

    if (!v8)
    {
      v19 = 0;
      v12 = [(STStatusRequest *)self loadStringFromDictionary:v6 withKey:@"UserShortName" isRequired:0 defaultValue:0 error:&v19];
      v8 = v19;
      userShortName = self->_userShortName;
      self->_userShortName = v12;

      if (!v8)
      {
        v18 = 0;
        v14 = [(STStatusRequest *)self loadArrayFromDictionary:v6 withKey:@"Messages" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 error:&v18];
        v8 = v18;
        messages = self->_messages;
        self->_messages = v14;
      }
    }
  }

  if (a4 && v8)
  {
    v16 = v8;
    *a4 = v8;
  }

  return v8 == 0;
}

- (id)serialize
{
  v3 = +[NSMutableDictionary dictionary];
  [(STStatusRequest *)self serializeStringIntoDictionary:v3 withKey:@"RequestType" withValue:self->_requestType isRequired:1 defaultValue:0];
  [(STStatusRequest *)self serializeStringIntoDictionary:v3 withKey:@"UDID" withValue:self->_UDID isRequired:0 defaultValue:0];
  [(STStatusRequest *)self serializeStringIntoDictionary:v3 withKey:@"UserShortName" withValue:self->_userShortName isRequired:0 defaultValue:0];
  [(STStatusRequest *)self serializeArrayIntoDictionary:v3 withKey:@"Messages" withValue:self->_messages itemSerializer:&stru_1001A5E40 isRequired:1 defaultValue:0];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STStatusRequest *)self serialize];
  [v4 encodeObject:v5 forKey:@"payload"];
}

- (STStatusRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = STStatusRequest;
  v5 = [(STStatusRequest *)&v24 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v6 = v4;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v20 = v7;
  v4 = v6;
  v15 = [NSSet setWithObjects:v22, v21, v20, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0];
  v16 = [v6 decodeObjectOfClasses:v15 forKey:@"payload"];
  v23 = 0;
  LOBYTE(v6) = [(STStatusRequest *)v5 loadStatusFromDictionary:v16 error:&v23];
  v17 = v23;

  if (v6)
  {

LABEL_4:
    v18 = v5;
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100120430(v17);
  }

  v18 = 0;
LABEL_8:

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = STStatusRequest;
  v4 = [(STStatusRequest *)&v14 copyWithZone:a3];
  v5 = [(NSString *)self->_requestType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_UDID copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_userShortName copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSArray *)self->_messages copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end