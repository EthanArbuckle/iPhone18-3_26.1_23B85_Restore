@interface PKDPlugInHold
- (BOOL)isEqual:(id)equal;
- (PKDPlugInHold)initWithPlugIns:(id)ins extensionPointName:(id)name forClient:(id)client;
- (PKDXpcClient)client;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKDPlugInHold

- (PKDPlugInHold)initWithPlugIns:(id)ins extensionPointName:(id)name forClient:(id)client
{
  insCopy = ins;
  nameCopy = name;
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = PKDPlugInHold;
  v11 = [(PKDPlugInHold *)&v17 init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    [(PKDPlugInHold *)v11 setUuid:v12];

    v13 = [NSSet setWithArray:insCopy];
    [(PKDPlugInHold *)v11 setBlocked:v13];

    [(PKDPlugInHold *)v11 setExtensionPointName:nameCopy];
    [(PKDPlugInHold *)v11 setClient:clientCopy];
    v14 = +[NSDate date];
    [(PKDPlugInHold *)v11 setCreated:v14];

    v15 = os_transaction_create();
    [(PKDPlugInHold *)v11 setTransaction:v15];
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [(PKDPlugInHold *)self uuid];
    uuid2 = [equalCopy uuid];
    v7 = [uuid isEqual:uuid2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  uuid = [(PKDPlugInHold *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)description
{
  uuid = [(PKDPlugInHold *)self uuid];
  client = [(PKDPlugInHold *)self client];
  created = [(PKDPlugInHold *)self created];
  [created timeIntervalSince1970];
  v7 = v6;
  extensionPointName = [(PKDPlugInHold *)self extensionPointName];
  blocked = [(PKDPlugInHold *)self blocked];
  v10 = [NSString stringWithFormat:@"<PKDPlugInHold: %p uuid = %@, client = %@, created = %f, EP = %@, blocking = %@>", self, uuid, client, v7, extensionPointName, blocked];;

  return v10;
}

- (PKDXpcClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end