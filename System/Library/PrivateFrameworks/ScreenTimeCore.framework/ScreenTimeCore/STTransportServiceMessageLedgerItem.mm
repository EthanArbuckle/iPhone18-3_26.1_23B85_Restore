@interface STTransportServiceMessageLedgerItem
+ (id)_descriptionForStatusesByAddress:(id)address;
+ (id)_partialMessageAddressesFromMessageAddresses:(id)addresses;
- (BOOL)containsStatusWithState:(int64_t)state;
- (BOOL)deliveredToAllAddresses;
- (BOOL)expired;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransportMessageLedgerItem:(id)item;
- (STTransportServiceMessageLedgerItem)initWithCoder:(id)coder;
- (STTransportServiceMessageLedgerItem)initWithMessage:(id)message addresses:(id)addresses;
- (STTransportServiceMessageLedgerItem)initWithMessage:(id)message statusesByAddress:(id)address;
- (STTransportServiceMessageLedgerItem)itemWithUpdatedStatusForAddresses:(id)addresses usingBlock:(id)block;
- (STTransportServiceMessageLedgerItem)itemWithUpdatedStatusUsingBlock:(id)block;
- (id)_initWithMessage:(id)message statusesByAddress:(id)address creationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STTransportServiceMessageLedgerItem

- (STTransportServiceMessageLedgerItem)initWithMessage:(id)message addresses:(id)addresses
{
  messageCopy = message;
  addressesCopy = addresses;
  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [addressesCopy count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = addressesCopy;
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

  v16 = [(STTransportServiceMessageLedgerItem *)self initWithMessage:messageCopy statusesByAddress:v8];
  return v16;
}

- (STTransportServiceMessageLedgerItem)initWithMessage:(id)message statusesByAddress:(id)address
{
  addressCopy = address;
  messageCopy = message;
  v8 = +[NSDate now];
  v9 = [(STTransportServiceMessageLedgerItem *)self _initWithMessage:messageCopy statusesByAddress:addressCopy creationDate:v8];

  return v9;
}

- (id)_initWithMessage:(id)message statusesByAddress:(id)address creationDate:(id)date
{
  v18.receiver = self;
  v18.super_class = STTransportServiceMessageLedgerItem;
  dateCopy = date;
  addressCopy = address;
  messageCopy = message;
  v10 = [(STTransportServiceMessageLedgerItem *)&v18 init];
  v11 = [messageCopy copy];

  message = v10->_message;
  v10->_message = v11;

  v13 = [addressCopy copy];
  statusesByAddress = v10->_statusesByAddress;
  v10->_statusesByAddress = v13;

  v15 = [dateCopy copy];
  creationDate = v10->_creationDate;
  v10->_creationDate = v15;

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  message = [(STTransportServiceMessageLedgerItem *)self message];
  statusesByAddress = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  v6 = [STTransportServiceMessageLedgerItem _descriptionForStatusesByAddress:statusesByAddress];
  creationDate = [(STTransportServiceMessageLedgerItem *)self creationDate];
  v8 = [NSString stringWithFormat:@"<%@: %p { Message: %@, Status: %@, Created: %@ }>", v3, self, message, v6, creationDate];

  return v8;
}

+ (id)_descriptionForStatusesByAddress:(id)address
{
  addressCopy = address;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100094F9C;
  v6[3] = &unk_1001A60B8;
  v4 = objc_opt_new();
  v7 = v4;
  [addressCopy enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (STTransportServiceMessageLedgerItem)itemWithUpdatedStatusUsingBlock:(id)block
{
  blockCopy = block;
  statusesByAddress = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  allKeys = [statusesByAddress allKeys];
  v7 = [NSSet setWithArray:allKeys];
  v8 = [(STTransportServiceMessageLedgerItem *)self itemWithUpdatedStatusForAddresses:v7 usingBlock:blockCopy];

  return v8;
}

- (STTransportServiceMessageLedgerItem)itemWithUpdatedStatusForAddresses:(id)addresses usingBlock:(id)block
{
  addressesCopy = addresses;
  blockCopy = block;
  v8 = [STTransportServiceMessageLedgerItem _partialMessageAddressesFromMessageAddresses:addressesCopy];
  statusesByAddress = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100095204;
  v22 = &unk_1001A60E0;
  v23 = addressesCopy;
  v24 = v8;
  v25 = [statusesByAddress mutableCopy];
  v26 = blockCopy;
  v10 = v25;
  v11 = blockCopy;
  v12 = v8;
  v13 = addressesCopy;
  [statusesByAddress enumerateKeysAndObjectsUsingBlock:&v19];
  v14 = [STTransportServiceMessageLedgerItem alloc];
  v15 = [(STTransportServiceMessageLedgerItem *)self message:v19];
  creationDate = [(STTransportServiceMessageLedgerItem *)self creationDate];
  v17 = [(STTransportServiceMessageLedgerItem *)v14 _initWithMessage:v15 statusesByAddress:v10 creationDate:creationDate];

  return v17;
}

+ (id)_partialMessageAddressesFromMessageAddresses:(id)addresses
{
  addressesCopy = addresses;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000953B4;
  v7[3] = &unk_1001A6108;
  v8 = objc_opt_new();
  v4 = v8;
  [addressesCopy enumerateObjectsUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

- (BOOL)deliveredToAllAddresses
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  statusesByAddress = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000954E4;
  v4[3] = &unk_1001A6130;
  v4[4] = &v5;
  [statusesByAddress enumerateKeysAndObjectsUsingBlock:v4];

  LOBYTE(statusesByAddress) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return statusesByAddress;
}

- (BOOL)expired
{
  v3 = +[NSDate now];
  creationDate = [(STTransportServiceMessageLedgerItem *)self creationDate];
  [v3 timeIntervalSinceDate:creationDate];
  v6 = v5;

  return v6 >= 2592000.0;
}

- (BOOL)containsStatusWithState:(int64_t)state
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  statusesByAddress = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  allValues = [statusesByAddress allValues];

  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v12 + 1) + 8 * i) state] == state)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (STTransportServiceMessageLedgerItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"statusesByAddress"];

  [coderCopy decodeDoubleForKey:@"creationDate"];
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

- (void)encodeWithCoder:(id)coder
{
  message = self->_message;
  coderCopy = coder;
  [coderCopy encodeObject:message forKey:@"message"];
  [coderCopy encodeObject:self->_statusesByAddress forKey:@"statusesByAddress"];
  [(NSDate *)self->_creationDate timeIntervalSinceReferenceDate];
  [coderCopy encodeDouble:@"creationDate" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  creationDate = self->_creationDate;
  statusesByAddress = self->_statusesByAddress;
  message = self->_message;

  return [v4 _initWithMessage:message statusesByAddress:statusesByAddress creationDate:creationDate];
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
      v5 = [(STTransportServiceMessageLedgerItem *)self isEqualToTransportMessageLedgerItem:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToTransportMessageLedgerItem:(id)item
{
  itemCopy = item;
  if (itemCopy == self)
  {
    v11 = 1;
  }

  else
  {
    message = [(STTransportServiceMessageLedgerItem *)self message];
    message2 = [(STTransportServiceMessageLedgerItem *)itemCopy message];
    if ([message isEqualToMessage:message2])
    {
      statusesByAddress = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
      statusesByAddress2 = [(STTransportServiceMessageLedgerItem *)itemCopy statusesByAddress];
      if ([statusesByAddress isEqualToDictionary:statusesByAddress2])
      {
        creationDate = [(STTransportServiceMessageLedgerItem *)self creationDate];
        creationDate2 = [(STTransportServiceMessageLedgerItem *)itemCopy creationDate];
        v11 = [creationDate isEqualToDate:creationDate2];
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
  message = [(STTransportServiceMessageLedgerItem *)self message];
  v4 = [message hash];

  v14 = v4;
  statusesByAddress = [(STTransportServiceMessageLedgerItem *)self statusesByAddress];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100095B70;
  v10[3] = &unk_1001A6130;
  v10[4] = &v11;
  [statusesByAddress enumerateKeysAndObjectsUsingBlock:v10];

  v6 = v12[3];
  creationDate = [(STTransportServiceMessageLedgerItem *)self creationDate];
  v8 = [creationDate hash];

  _Block_object_dispose(&v11, 8);
  return v8 ^ v6;
}

@end