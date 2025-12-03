@interface TCCDSyncUpdateAccessAction
+ (unint64_t)accessUpdateStatusForAuthorizationRight:(unint64_t)right forMain:(BOOL)main;
- (TCCDSyncUpdateAccessAction)initWithCoder:(id)coder;
- (id)_authorizationRightStateForMain:(BOOL)main;
- (id)_description;
- (id)syncId;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TCCDSyncUpdateAccessAction

+ (unint64_t)accessUpdateStatusForAuthorizationRight:(unint64_t)right forMain:(BOOL)main
{
  v4 = 12;
  if (main)
  {
    v4 = 13;
  }

  v5 = 12;
  if (main)
  {
    v5 = 13;
  }

  if (right != 7)
  {
    v5 = 0;
  }

  if (right != 6)
  {
    v4 = v5;
  }

  v6 = 8;
  if (main)
  {
    v6 = 9;
  }

  v7 = 10;
  if (main)
  {
    v7 = 11;
  }

  if (right != 5)
  {
    v7 = 0;
  }

  if (right != 4)
  {
    v6 = v7;
  }

  if (right <= 5)
  {
    v4 = v6;
  }

  v8 = 3;
  if (main)
  {
    v8 = 5;
  }

  v9 = 2;
  if (main)
  {
    v9 = 4;
  }

  v10 = 6;
  if (main)
  {
    v10 = 7;
  }

  if (right != 3)
  {
    v10 = 0;
  }

  if (right != 2)
  {
    v9 = v10;
  }

  if (right)
  {
    v8 = v9;
  }

  if (right <= 3)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

- (TCCDSyncUpdateAccessAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TCCDSyncUpdateAccessAction;
  v5 = [(TCCDSyncClientAccessAction *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy containsValueForKey:@"TCCDSyncUpdateAccessActionStatusV2Key"];
    v7 = objc_opt_class();
    if (v6)
    {
      v8 = @"TCCDSyncUpdateAccessActionStatusV2Key";
    }

    else
    {
      v8 = @"TCCDSyncUpdateAccessActionStatusKey";
    }

    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    -[TCCDSyncUpdateAccessAction setUpdateAccessActionStatus:](v5, "setUpdateAccessActionStatus:", [v9 unsignedIntegerValue]);

    if ([coderCopy containsValueForKey:@"TCCDSyncAuthorizationVersionKey"])
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TCCDSyncAuthorizationVersionKey"];
      -[TCCDSyncUpdateAccessAction setAuthorizationVersion:](v5, "setAuthorizationVersion:", [v10 unsignedLongLongValue]);
    }

    else
    {
      [(TCCDSyncUpdateAccessAction *)v5 setAuthorizationVersion:2];
    }

    if ([coderCopy containsValueForKey:@"TCCDSyncUpdateAccessActionFlagsKey"])
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TCCDSyncUpdateAccessActionFlagsKey"];
      -[TCCDSyncUpdateAccessAction setDatabaseFlags:](v5, "setDatabaseFlags:", [v11 intValue]);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = TCCDSyncUpdateAccessAction;
  coderCopy = coder;
  [(TCCDSyncClientAccessAction *)&v12 encodeWithCoder:coderCopy];
  v5 = [(TCCDSyncUpdateAccessAction *)self updateAccessActionStatus:v12.receiver];
  if (v5 - 6 >= 3)
  {
    if (v5 == 9)
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = qword_100080800[v5 - 6];
  }

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  [coderCopy encodeObject:v7 forKey:@"TCCDSyncUpdateAccessActionStatusKey"];
  v8 = [NSNumber numberWithUnsignedInteger:[(TCCDSyncUpdateAccessAction *)self updateAccessActionStatus]];
  [coderCopy encodeObject:v8 forKey:@"TCCDSyncUpdateAccessActionStatusV2Key"];
  v9 = objc_opt_self();
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 authorizationVersion]);

  [coderCopy encodeObject:v10 forKey:@"TCCDSyncAuthorizationVersionKey"];
  v11 = [NSNumber numberWithInt:[(TCCDSyncUpdateAccessAction *)self databaseFlags]];
  [coderCopy encodeObject:v11 forKey:@"TCCDSyncUpdateAccessActionFlagsKey"];
}

- (id)_description
{
  updateAccessActionStatus = [(TCCDSyncUpdateAccessAction *)self updateAccessActionStatus];
  if (updateAccessActionStatus > 0x10)
  {
    v4 = "<unknown>";
  }

  else
  {
    v4 = off_1000A51A8[updateAccessActionStatus];
  }

  v8.receiver = self;
  v8.super_class = TCCDSyncUpdateAccessAction;
  _description = [(TCCDSyncClientAccessAction *)&v8 _description];
  v6 = [NSString stringWithFormat:@"%@, updateAccessAction: %s, v=%llu flags=%d", _description, v4, [(TCCDSyncUpdateAccessAction *)self authorizationVersion], [(TCCDSyncUpdateAccessAction *)self databaseFlags]];

  return v6;
}

- (id)syncId
{
  replicaClientIdentifier = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];
  if (!replicaClientIdentifier)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_100060440();
    }

    replicaClientIdentifier = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  serviceIdentifier = [(TCCDSyncAccessAction *)self serviceIdentifier];
  v7 = [NSString stringWithFormat:@"%@-%@-%@", v5, serviceIdentifier, replicaClientIdentifier];

  return v7;
}

- (id)_authorizationRightStateForMain:(BOOL)main
{
  mainCopy = main;
  switch([(TCCDSyncUpdateAccessAction *)self updateAccessActionStatus])
  {
    case 2uLL:
      if (mainCopy)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    case 3uLL:
      if (!mainCopy)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    case 4uLL:
      if (!mainCopy)
      {
        goto LABEL_30;
      }

LABEL_17:
      v4 = 2;
      goto LABEL_28;
    case 5uLL:
      if (!mainCopy)
      {
        goto LABEL_30;
      }

LABEL_19:
      v4 = 0;
      goto LABEL_28;
    case 6uLL:
      if (mainCopy)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    case 7uLL:
      if (!mainCopy)
      {
        goto LABEL_30;
      }

LABEL_21:
      v4 = 3;
      goto LABEL_28;
    case 8uLL:
      if (!mainCopy)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    case 9uLL:
      if (!mainCopy)
      {
        goto LABEL_30;
      }

LABEL_23:
      v4 = 4;
      goto LABEL_28;
    case 0xAuLL:
      if (!mainCopy)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    case 0xBuLL:
      if (!mainCopy)
      {
        goto LABEL_30;
      }

LABEL_25:
      v4 = 5;
      goto LABEL_28;
    case 0xCuLL:
    case 0xEuLL:
      if (mainCopy)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    case 0xDuLL:
      if (!mainCopy)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    case 0xFuLL:
      if (!mainCopy)
      {
        goto LABEL_30;
      }

LABEL_27:
      v4 = 6;
LABEL_28:
      v5 = objc_alloc_init(TCCDAuthorizationRightState);
      [(TCCDAuthorizationRightState *)v5 setRight:v4];
      if (v5)
      {
        [(TCCDAuthorizationRightState *)v5 setReason:4];
      }

      break;
    default:
LABEL_30:
      v5 = 0;
      break;
  }

  return v5;
}

@end