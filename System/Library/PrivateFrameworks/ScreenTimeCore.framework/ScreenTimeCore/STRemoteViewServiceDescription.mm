@interface STRemoteViewServiceDescription
+ (id)sharedDescriptionWithServiceName:(id)name viewControllerClassName:(id)className configurationContextUserInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToServiceDescription:(id)description;
- (id)_initWithServiceName:(id)name viewControllerClassName:(id)className configurationContextUserInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation STRemoteViewServiceDescription

- (id)_initWithServiceName:(id)name viewControllerClassName:(id)className configurationContextUserInfo:(id)info
{
  classNameCopy = className;
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = STRemoteViewServiceDescription;
  nameCopy = name;
  v11 = [(STRemoteViewServiceDescription *)&v18 init];
  v12 = [nameCopy copy];

  serviceName = v11->_serviceName;
  v11->_serviceName = v12;

  viewControllerClassName = v11->_viewControllerClassName;
  v11->_viewControllerClassName = classNameCopy;
  v15 = classNameCopy;

  configurationContextUserInfo = v11->_configurationContextUserInfo;
  v11->_configurationContextUserInfo = infoCopy;

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  serviceName = [(STRemoteViewServiceDescription *)self serviceName];
  v5 = [NSString stringWithFormat:@"<%@ { ServiceName: %@ }>", v3, serviceName];

  return v5;
}

+ (id)sharedDescriptionWithServiceName:(id)name viewControllerClassName:(id)className configurationContextUserInfo:(id)info
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D030;
  block[3] = &unk_1001A42E0;
  nameCopy = name;
  classNameCopy = className;
  infoCopy = info;
  v7 = qword_1001E3950;
  v8 = infoCopy;
  v9 = classNameCopy;
  v10 = nameCopy;
  if (v7 != -1)
  {
    dispatch_once(&qword_1001E3950, block);
  }

  v11 = qword_1001E3958;
  v12 = qword_1001E3958;

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  serviceName = self->_serviceName;
  viewControllerClassName = self->_viewControllerClassName;
  configurationContextUserInfo = self->_configurationContextUserInfo;

  return [v4 _initWithServiceName:serviceName viewControllerClassName:viewControllerClassName configurationContextUserInfo:configurationContextUserInfo];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STRemoteViewServiceDescription *)self isEqualToServiceDescription:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToServiceDescription:(id)description
{
  descriptionCopy = description;
  if (descriptionCopy == self)
  {
    v13 = 1;
  }

  else
  {
    serviceName = [(STRemoteViewServiceDescription *)self serviceName];
    serviceName2 = [(STRemoteViewServiceDescription *)descriptionCopy serviceName];
    if ([serviceName isEqualToString:serviceName2])
    {
      viewControllerClassName = [(STRemoteViewServiceDescription *)self viewControllerClassName];
      viewControllerClassName2 = [(STRemoteViewServiceDescription *)descriptionCopy viewControllerClassName];
      if ([viewControllerClassName isEqualToString:viewControllerClassName2])
      {
        configurationContextUserInfo = [(STRemoteViewServiceDescription *)self configurationContextUserInfo];
        configurationContextUserInfo2 = [(STRemoteViewServiceDescription *)descriptionCopy configurationContextUserInfo];
        if (configurationContextUserInfo == configurationContextUserInfo2)
        {
          v13 = 1;
        }

        else
        {
          configurationContextUserInfo3 = [(STRemoteViewServiceDescription *)self configurationContextUserInfo];
          configurationContextUserInfo4 = [(STRemoteViewServiceDescription *)descriptionCopy configurationContextUserInfo];
          v13 = [configurationContextUserInfo3 isEqualToDictionary:configurationContextUserInfo4];
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
  serviceName = [(STRemoteViewServiceDescription *)self serviceName];
  v4 = [serviceName hash];
  viewControllerClassName = [(STRemoteViewServiceDescription *)self viewControllerClassName];
  v6 = [viewControllerClassName hash] ^ v4;
  configurationContextUserInfo = [(STRemoteViewServiceDescription *)self configurationContextUserInfo];
  v8 = [configurationContextUserInfo hash];

  return v6 ^ v8;
}

@end