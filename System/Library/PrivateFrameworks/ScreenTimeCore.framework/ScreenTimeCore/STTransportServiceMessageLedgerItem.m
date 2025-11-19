@interface STTransportServiceMessageLedgerItem
+ (id)_descriptionForStatusesByAddress:(id)a3;
+ (id)_partialMessageAddressesFromMessageAddresses:(id)a3;
- (BOOL)containsStatusWithState:(int64_t)a3;
- (BOOL)deliveredToAllAddresses;
- (BOOL)expired;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTransportMessageLedgerItem:(id)a3;
- (STTransportServiceMessageLedgerItem)initWithCoder:(id)a3;
- (STTransportServiceMessageLedgerItem)initWithMessage:(id)a3 addresses:(id)a4;
- (STTransportServiceMessageLedgerItem)initWithMessage:(id)a3 statusesByAddress:(id)a4;
- (STTransportServiceMessageLedgerItem)itemWithUpdatedStatusForAddresses:(id)a3 usingBlock:(id)a4;
- (STTransportServiceMessageLedgerItem)itemWithUpdatedStatusUsingBlock:(id)a3;
- (id)_initWithMessage:(id)a3 statusesByAddress:(id)a4 creationDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STTransportServiceMessageLedgerItem

- (STTransportServiceMessageLedgerItem)initWithMessage:(id)a3 addresses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = objc_opt_new();
        [v8 setObject:v15 forKeyedSubscript:{v14, v18}];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [(STTransportServiceMessageLedgerItem *)self initWithMessage:v6 statusesByAddress:v8];
  return v16;
}

- (STTransportServiceMessageLedgerItem)initWithMessage:(id)a3 statusesByAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSDate now];
  v9 = [(STTransportServiceMessageLedgerItem *)self _initWithMessage:v7 statusesByAddress:v6 creationDate:v8];

  return v9;
}

- (id)_initWithMessage:(id)a3 statusesByAddress:(id)a4 creationDate:(id)a5
{
  v18.receiver = self;
  v18.super_class = STTransportServiceMessageLedgerItem;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(STTransportServiceMessageLedgerItem *)&v18 init];
  v11 = [v9 copy];

  message = v10->_message;
  v10->_message = v11;

  v13 = [v8 copy];
  statusesByAddress = v10->_statusesByAddress;
  v10->_statusesByAddress = v13;

  v15 = [v7 copy];
  creationDate = v10->_creationDate;
  v10->_creationDate = v15;

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STTransportServiceMessageLedgerItem *)self message];
  v5 = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  v6 = [STTransportServiceMessageLedgerItem _descriptionForStatusesByAddress:v5];
  v7 = [(STTransportServiceMessageLedgerItem *)self creationDate];
  v8 = [NSString stringWithFormat:@"<%@: %p { Message: %@, Status: %@, Created: %@ }>", v3, self, v4, v6, v7];

  return v8;
}

+ (id)_descriptionForStatusesByAddress:(id)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100094F9C;
  v6[3] = &unk_1001A60B8;
  v4 = objc_opt_new();
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (STTransportServiceMessageLedgerItem)itemWithUpdatedStatusUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  v6 = [v5 allKeys];
  v7 = [NSSet setWithArray:v6];
  v8 = [(STTransportServiceMessageLedgerItem *)self itemWithUpdatedStatusForAddresses:v7 usingBlock:v4];

  return v8;
}

- (STTransportServiceMessageLedgerItem)itemWithUpdatedStatusForAddresses:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [STTransportServiceMessageLedgerItem _partialMessageAddressesFromMessageAddresses:v6];
  v9 = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100095204;
  v22 = &unk_1001A60E0;
  v23 = v6;
  v24 = v8;
  v25 = [v9 mutableCopy];
  v26 = v7;
  v10 = v25;
  v11 = v7;
  v12 = v8;
  v13 = v6;
  [v9 enumerateKeysAndObjectsUsingBlock:&v19];
  v14 = [STTransportServiceMessageLedgerItem alloc];
  v15 = [(STTransportServiceMessageLedgerItem *)self message:v19];
  v16 = [(STTransportServiceMessageLedgerItem *)self creationDate];
  v17 = [(STTransportServiceMessageLedgerItem *)v14 _initWithMessage:v15 statusesByAddress:v10 creationDate:v16];

  return v17;
}

+ (id)_partialMessageAddressesFromMessageAddresses:(id)a3
{
  v3 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000953B4;
  v7[3] = &unk_1001A6108;
  v8 = objc_opt_new();
  v4 = v8;
  [v3 enumerateObjectsUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

- (BOOL)deliveredToAllAddresses
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v2 = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000954E4;
  v4[3] = &unk_1001A6130;
  v4[4] = &v5;
  [v2 enumerateKeysAndObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)expired
{
  v3 = +[NSDate now];
  v4 = [(STTransportServiceMessageLedgerItem *)self creationDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6 >= 2592000.0;
}

- (BOOL)containsStatusWithState:(int64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) state] == a3)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (STTransportServiceMessageLedgerItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"statusesByAddress"];

  [v4 decodeDoubleForKey:@"creationDate"];
  v11 = v10;

  if (v11 == 0.0)
  {
    +[NSDate now];
  }

  else
  {
    [NSDate dateWithTimeIntervalSinceReferenceDate:v11];
  }
  v12 = ;
  v13 = [(STTransportServiceMessageLedgerItem *)self _initWithMessage:v5 statusesByAddress:v9 creationDate:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  message = self->_message;
  v5 = a3;
  [v5 encodeObject:message forKey:@"message"];
  [v5 encodeObject:self->_statusesByAddress forKey:@"statusesByAddress"];
  [(NSDate *)self->_creationDate timeIntervalSinceReferenceDate];
  [v5 encodeDouble:@"creationDate" forKey:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  creationDate = self->_creationDate;
  statusesByAddress = self->_statusesByAddress;
  message = self->_message;

  return [v4 _initWithMessage:message statusesByAddress:statusesByAddress creationDate:creationDate];
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
      v5 = [(STTransportServiceMessageLedgerItem *)self isEqualToTransportMessageLedgerItem:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToTransportMessageLedgerItem:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v5 = [(STTransportServiceMessageLedgerItem *)self message];
    v6 = [(STTransportServiceMessageLedgerItem *)v4 message];
    if ([v5 isEqualToMessage:v6])
    {
      v7 = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
      v8 = [(STTransportServiceMessageLedgerItem *)v4 statusesByAddress];
      if ([v7 isEqualToDictionary:v8])
      {
        v9 = [(STTransportServiceMessageLedgerItem *)self creationDate];
        v10 = [(STTransportServiceMessageLedgerItem *)v4 creationDate];
        v11 = [v9 isEqualToDate:v10];
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
  }

  return v11;
}

- (unint64_t)hash
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v3 = [(STTransportServiceMessageLedgerItem *)self message];
  v4 = [v3 hash];

  v14 = v4;
  v5 = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100095B70;
  v10[3] = &unk_1001A6130;
  v10[4] = &v11;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  v6 = v12[3];
  v7 = [(STTransportServiceMessageLedgerItem *)self creationDate];
  v8 = [v7 hash];

  _Block_object_dispose(&v11, 8);
  return v8 ^ v6;
}

@end