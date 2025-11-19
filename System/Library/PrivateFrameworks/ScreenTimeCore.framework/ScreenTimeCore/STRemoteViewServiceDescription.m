@interface STRemoteViewServiceDescription
+ (id)sharedDescriptionWithServiceName:(id)a3 viewControllerClassName:(id)a4 configurationContextUserInfo:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToServiceDescription:(id)a3;
- (id)_initWithServiceName:(id)a3 viewControllerClassName:(id)a4 configurationContextUserInfo:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation STRemoteViewServiceDescription

- (id)_initWithServiceName:(id)a3 viewControllerClassName:(id)a4 configurationContextUserInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = STRemoteViewServiceDescription;
  v10 = a3;
  v11 = [(STRemoteViewServiceDescription *)&v18 init];
  v12 = [v10 copy];

  serviceName = v11->_serviceName;
  v11->_serviceName = v12;

  viewControllerClassName = v11->_viewControllerClassName;
  v11->_viewControllerClassName = v8;
  v15 = v8;

  configurationContextUserInfo = v11->_configurationContextUserInfo;
  v11->_configurationContextUserInfo = v9;

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STRemoteViewServiceDescription *)self serviceName];
  v5 = [NSString stringWithFormat:@"<%@ { ServiceName: %@ }>", v3, v4];

  return v5;
}

+ (id)sharedDescriptionWithServiceName:(id)a3 viewControllerClassName:(id)a4 configurationContextUserInfo:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D030;
  block[3] = &unk_1001A42E0;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v7 = qword_1001E3950;
  v8 = v17;
  v9 = v16;
  v10 = v15;
  if (v7 != -1)
  {
    dispatch_once(&qword_1001E3950, block);
  }

  v11 = qword_1001E3958;
  v12 = qword_1001E3958;

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  serviceName = self->_serviceName;
  viewControllerClassName = self->_viewControllerClassName;
  configurationContextUserInfo = self->_configurationContextUserInfo;

  return [v4 _initWithServiceName:serviceName viewControllerClassName:viewControllerClassName configurationContextUserInfo:configurationContextUserInfo];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STRemoteViewServiceDescription *)self isEqualToServiceDescription:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToServiceDescription:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    v5 = [(STRemoteViewServiceDescription *)self serviceName];
    v6 = [(STRemoteViewServiceDescription *)v4 serviceName];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(STRemoteViewServiceDescription *)self viewControllerClassName];
      v8 = [(STRemoteViewServiceDescription *)v4 viewControllerClassName];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(STRemoteViewServiceDescription *)self configurationContextUserInfo];
        v10 = [(STRemoteViewServiceDescription *)v4 configurationContextUserInfo];
        if (v9 == v10)
        {
          v13 = 1;
        }

        else
        {
          v11 = [(STRemoteViewServiceDescription *)self configurationContextUserInfo];
          v12 = [(STRemoteViewServiceDescription *)v4 configurationContextUserInfo];
          v13 = [v11 isEqualToDictionary:v12];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(STRemoteViewServiceDescription *)self serviceName];
  v4 = [v3 hash];
  v5 = [(STRemoteViewServiceDescription *)self viewControllerClassName];
  v6 = [v5 hash] ^ v4;
  v7 = [(STRemoteViewServiceDescription *)self configurationContextUserInfo];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end