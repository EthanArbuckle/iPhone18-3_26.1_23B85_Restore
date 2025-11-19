@interface BMRapportDevice
- (BMAccount)account;
- (BMRapportDevice)initWithCoder:(id)a3;
- (BMRapportDevice)initWithRPCompanionLinkDevice:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)serviceTypes;
- (NSString)model;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)platform;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)handleInvalidationWithError:(id)a3;
- (void)invalidateClientWithError:(id)a3;
@end

@implementation BMRapportDevice

- (BMRapportDevice)initWithRPCompanionLinkDevice:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BMRapportDevice;
  v6 = [(BMRapportDevice *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [v5 bm_companionLinkDeviceIdentifier];
    rapportIdentifier = v7->_rapportIdentifier;
    v7->_rapportIdentifier = v8;

    v10 = +[NSMutableArray array];
    requestQueue = v7->_requestQueue;
    v7->_requestQueue = v10;
  }

  return v7;
}

- (BMAccount)account
{
  v2 = [(RPCompanionLinkDevice *)self->_device accountAltDSID];
  if (v2)
  {
    v3 = [[BMAccount alloc] initWithAccountIdentifier:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)name
{
  v2 = [(BMRapportDevice *)self device];
  v3 = [v2 name];

  return v3;
}

- (NSString)model
{
  v2 = [(BMRapportDevice *)self device];
  v3 = [v2 model];

  return v3;
}

- (NSArray)serviceTypes
{
  v2 = [(BMRapportDevice *)self device];
  v3 = [v2 serviceTypes];

  return v3;
}

- (int64_t)platform
{
  v2 = [(BMRapportDevice *)self device];
  v3 = [v2 model];
  v4 = BMDevicePlatformFromModelString();

  return v4;
}

- (void)invalidateClientWithError:(id)a3
{
  client = self->_client;
  if (client)
  {
    self->_client = 0;
    v6 = client;
    v7 = a3;

    [(BMRapportDeviceCommunicationClient *)v6 invalidate];
    [(BMRapportDevice *)self handleInvalidationWithError:v7];
  }
}

- (void)handleInvalidationWithError:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = self;
  v5 = self->_requestQueue;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) objectForKeyedSubscript:@"~~RESPONSE_HANDLER~~"];
        v11 = v10;
        if (v10)
        {
          if (v4)
          {
            (*(v10 + 16))(v10, 0, 0, v4);
          }

          else
          {
            v12 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:4 userInfo:0];
            (v11)[2](v11, 0, 0, v12);
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)v15->_requestQueue removeAllObjects];
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(BMRapportDevice *)v15 shortenedRapportIdentifier];
    *buf = 138412290;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: invalidated", buf, 0xCu);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 rapportIdentifier];
    v6 = [(BMRapportDevice *)self rapportIdentifier];
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
  v2 = [(BMRapportDevice *)self rapportIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v13 = 0uLL;
  v3 = [(BMRapportDevice *)self device];
  v4 = v3;
  if (v3)
  {
    [v3 operatingSystemVersion];
  }

  else
  {
    v13 = 0uLL;
  }

  v5 = [NSString alloc];
  v6 = [(BMRapportDevice *)self shortenedRapportIdentifier];
  v7 = [(BMRapportDevice *)self rapportIdentifier];
  v8 = [(BMRapportDevice *)self bmDeviceIdentifier];
  v9 = [(BMRapportDevice *)self model];
  v10 = [(BMRapportDevice *)self name];
  v11 = [v5 initWithFormat:@"BMRapportDevice[%@]: id=%@ bmID=%@ model=%@ name=%@ version=%ld.%ld.%ld", v6, v7, v8, v9, v10, v13, 0];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  device = v3->_device;

  return [(BMRapportDevice *)v3 initWithRPCompanionLinkDevice:device];
}

- (BMRapportDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];

  v6 = [(BMRapportDevice *)self initWithRPCompanionLinkDevice:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMRapportDevice *)self device];
  [v4 encodeObject:v5 forKey:@"device"];
}

@end