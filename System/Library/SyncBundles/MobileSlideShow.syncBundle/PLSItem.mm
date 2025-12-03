@interface PLSItem
- (PLSItem)init;
- (PLSItem)initWithCoder:(id)coder;
- (PLSItem)initWithUUID:(id)d;
- (id)_itemType;
- (id)description;
- (id)initFromPropertyList:(id)list;
- (id)propertyList;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLSItem

- (id)_itemType
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Method not implemented on base class" userInfo:0];
  objc_exception_throw(v2);
}

- (id)propertyList
{
  v3 = +[NSMutableDictionary dictionary];
  uuid = [(PLSItem *)self uuid];

  if (uuid)
  {
    uuid2 = [(PLSItem *)self uuid];
    [v3 setObject:uuid2 forKey:kPLSItemUUIDKey];
  }

  _itemType = [(PLSItem *)self _itemType];

  if (_itemType)
  {
    _itemType2 = [(PLSItem *)self _itemType];
    [v3 setObject:_itemType2 forKey:kPLSTransportItemTypeKey];
  }

  userInfo = [(PLSItem *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(PLSItem *)self userInfo];
    [v3 setObject:userInfo2 forKey:kPLSTransportUserInfoKey];
  }

  return v3;
}

- (id)initFromPropertyList:(id)list
{
  listCopy = list;
  v13.receiver = self;
  v13.super_class = PLSItem;
  v5 = [(PLSItem *)&v13 init];
  if (v5)
  {
    v6 = [listCopy objectForKey:kPLSItemUUIDKey];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [listCopy objectForKey:kPLSTransportUserInfoKey];
    userInfo = v5->_userInfo;
    v5->_userInfo = v8;

    v10 = objc_alloc_init(NSDictionary);
    hostInfo = v5->_hostInfo;
    v5->_hostInfo = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(PLSItem *)self uuid];
  [coderCopy encodeObject:uuid forKey:kPLSItemUUIDKey];

  userInfo = [(PLSItem *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:kPLSTransportUserInfoKey];
}

- (PLSItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PLSItem;
  v5 = [(PLSItem *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSItemUUIDKey];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodePropertyListForKey:kPLSTransportUserInfoKey];
    userInfo = v5->_userInfo;
    v5->_userInfo = v8;

    v10 = objc_alloc_init(NSDictionary);
    hostInfo = v5->_hostInfo;
    v5->_hostInfo = v10;
  }

  return v5;
}

- (id)description
{
  uuid = [(PLSItem *)self uuid];
  v3 = [NSString stringWithFormat:@"(%@)", uuid];

  return v3;
}

- (PLSItem)initWithUUID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = PLSItem;
  v6 = [(PLSItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
    v8 = objc_alloc_init(NSDictionary);
    hostInfo = v7->_hostInfo;
    v7->_hostInfo = v8;
  }

  return v7;
}

- (PLSItem)init
{
  v3 = +[PLUUIDString UUIDString];
  v4 = [(PLSItem *)self initWithUUID:v3];

  return v4;
}

@end