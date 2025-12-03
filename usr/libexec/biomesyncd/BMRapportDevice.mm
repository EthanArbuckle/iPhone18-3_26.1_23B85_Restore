@interface BMRapportDevice
- (BMAccount)account;
- (BMRapportDevice)initWithCoder:(id)coder;
- (BMRapportDevice)initWithRPCompanionLinkDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (NSArray)serviceTypes;
- (NSString)model;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)platform;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)handleInvalidationWithError:(id)error;
- (void)invalidateClientWithError:(id)error;
@end

@implementation BMRapportDevice

- (BMRapportDevice)initWithRPCompanionLinkDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = BMRapportDevice;
  v6 = [(BMRapportDevice *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    bm_companionLinkDeviceIdentifier = [deviceCopy bm_companionLinkDeviceIdentifier];
    rapportIdentifier = v7->_rapportIdentifier;
    v7->_rapportIdentifier = bm_companionLinkDeviceIdentifier;

    v10 = +[NSMutableArray array];
    requestQueue = v7->_requestQueue;
    v7->_requestQueue = v10;
  }

  return v7;
}

- (BMAccount)account
{
  accountAltDSID = [(RPCompanionLinkDevice *)self->_device accountAltDSID];
  if (accountAltDSID)
  {
    v3 = [[BMAccount alloc] initWithAccountIdentifier:accountAltDSID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)name
{
  device = [(BMRapportDevice *)self device];
  name = [device name];

  return name;
}

- (NSString)model
{
  device = [(BMRapportDevice *)self device];
  model = [device model];

  return model;
}

- (NSArray)serviceTypes
{
  device = [(BMRapportDevice *)self device];
  serviceTypes = [device serviceTypes];

  return serviceTypes;
}

- (int64_t)platform
{
  device = [(BMRapportDevice *)self device];
  model = [device model];
  v4 = BMDevicePlatformFromModelString();

  return v4;
}

- (void)invalidateClientWithError:(id)error
{
  client = self->_client;
  if (client)
  {
    self->_client = 0;
    v6 = client;
    errorCopy = error;

    [(BMRapportDeviceCommunicationClient *)v6 invalidate];
    [(BMRapportDevice *)self handleInvalidationWithError:errorCopy];
  }
}

- (void)handleInvalidationWithError:(id)error
{
  errorCopy = error;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
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
          if (errorCopy)
          {
            (*(v10 + 16))(v10, 0, 0, errorCopy);
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

  [(NSMutableArray *)selfCopy->_requestQueue removeAllObjects];
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    shortenedRapportIdentifier = [(BMRapportDevice *)selfCopy shortenedRapportIdentifier];
    *buf = 138412290;
    v21 = shortenedRapportIdentifier;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: invalidated", buf, 0xCu);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rapportIdentifier = [equalCopy rapportIdentifier];
    rapportIdentifier2 = [(BMRapportDevice *)self rapportIdentifier];
    v7 = [rapportIdentifier isEqual:rapportIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  rapportIdentifier = [(BMRapportDevice *)self rapportIdentifier];
  v3 = [rapportIdentifier hash];

  return v3;
}

- (id)description
{
  v13 = 0uLL;
  device = [(BMRapportDevice *)self device];
  v4 = device;
  if (device)
  {
    [device operatingSystemVersion];
  }

  else
  {
    v13 = 0uLL;
  }

  v5 = [NSString alloc];
  shortenedRapportIdentifier = [(BMRapportDevice *)self shortenedRapportIdentifier];
  rapportIdentifier = [(BMRapportDevice *)self rapportIdentifier];
  bmDeviceIdentifier = [(BMRapportDevice *)self bmDeviceIdentifier];
  model = [(BMRapportDevice *)self model];
  name = [(BMRapportDevice *)self name];
  v11 = [v5 initWithFormat:@"BMRapportDevice[%@]: id=%@ bmID=%@ model=%@ name=%@ version=%ld.%ld.%ld", shortenedRapportIdentifier, rapportIdentifier, bmDeviceIdentifier, model, name, v13, 0];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  device = selfCopy->_device;

  return [(BMRapportDevice *)selfCopy initWithRPCompanionLinkDevice:device];
}

- (BMRapportDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];

  v6 = [(BMRapportDevice *)self initWithRPCompanionLinkDevice:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  device = [(BMRapportDevice *)self device];
  [coderCopy encodeObject:device forKey:@"device"];
}

@end