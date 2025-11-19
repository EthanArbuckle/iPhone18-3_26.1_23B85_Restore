@interface PKDPlugInHold
- (BOOL)isEqual:(id)a3;
- (PKDPlugInHold)initWithPlugIns:(id)a3 extensionPointName:(id)a4 forClient:(id)a5;
- (PKDXpcClient)client;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKDPlugInHold

- (PKDPlugInHold)initWithPlugIns:(id)a3 extensionPointName:(id)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PKDPlugInHold;
  v11 = [(PKDPlugInHold *)&v17 init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    [(PKDPlugInHold *)v11 setUuid:v12];

    v13 = [NSSet setWithArray:v8];
    [(PKDPlugInHold *)v11 setBlocked:v13];

    [(PKDPlugInHold *)v11 setExtensionPointName:v9];
    [(PKDPlugInHold *)v11 setClient:v10];
    v14 = +[NSDate date];
    [(PKDPlugInHold *)v11 setCreated:v14];

    v15 = os_transaction_create();
    [(PKDPlugInHold *)v11 setTransaction:v15];
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKDPlugInHold *)self uuid];
    v6 = [v4 uuid];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(PKDPlugInHold *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = [(PKDPlugInHold *)self uuid];
  v4 = [(PKDPlugInHold *)self client];
  v5 = [(PKDPlugInHold *)self created];
  [v5 timeIntervalSince1970];
  v7 = v6;
  v8 = [(PKDPlugInHold *)self extensionPointName];
  v9 = [(PKDPlugInHold *)self blocked];
  v10 = [NSString stringWithFormat:@"<PKDPlugInHold: %p uuid = %@, client = %@, created = %f, EP = %@, blocking = %@>", self, v3, v4, v7, v8, v9];;

  return v10;
}

- (PKDXpcClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end