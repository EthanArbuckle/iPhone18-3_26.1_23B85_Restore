@interface SKPseudonyms
- (SKPseudonyms)initWithIDSService:(id)service;
- (id)propertiesWithUpdatedServices:(id)services;
- (id)pseudonymsForMaskedURI:(id)i matchingProperties:(id)properties;
- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties completion:(id)completion;
- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion;
- (void)provisionPseudonymWithProperties:(id)properties completion:(id)completion;
- (void)provisionPseudonymWithProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion;
@end

@implementation SKPseudonyms

- (SKPseudonyms)initWithIDSService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = SKPseudonyms;
  v5 = [(SKPseudonyms *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D18778]) initWithService:serviceCopy];
    service = v5->_service;
    v5->_service = v6;
  }

  return v5;
}

- (id)pseudonymsForMaskedURI:(id)i matchingProperties:(id)properties
{
  service = self->_service;
  iCopy = i;
  v8 = [(SKPseudonyms *)self propertiesWithUpdatedServices:properties];
  v9 = [(IDSService *)service pseudonymsForMaskedURI:iCopy matchingProperties:v8];

  return v9;
}

- (void)provisionPseudonymWithProperties:(id)properties completion:(id)completion
{
  service = self->_service;
  completionCopy = completion;
  v8 = [(SKPseudonyms *)self propertiesWithUpdatedServices:properties];
  [(IDSService *)service provisionPseudonymWithProperties:v8 completion:completionCopy];
}

- (void)provisionPseudonymWithProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion
{
  service = self->_service;
  completionCopy = completion;
  requestPropertiesCopy = requestProperties;
  v11 = [(SKPseudonyms *)self propertiesWithUpdatedServices:properties];
  [(IDSService *)service provisionPseudonymWithProperties:v11 requestProperties:requestPropertiesCopy completion:completionCopy];
}

- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties completion:(id)completion
{
  service = self->_service;
  completionCopy = completion;
  iCopy = i;
  v11 = [(SKPseudonyms *)self propertiesWithUpdatedServices:properties];
  [(IDSService *)service provisionPseudonymForURI:iCopy withProperties:v11 completion:completionCopy];
}

- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion
{
  service = self->_service;
  completionCopy = completion;
  requestPropertiesCopy = requestProperties;
  iCopy = i;
  v14 = [(SKPseudonyms *)self propertiesWithUpdatedServices:properties];
  [(IDSService *)service provisionPseudonymForURI:iCopy withProperties:v14 requestProperties:requestPropertiesCopy completion:completionCopy];
}

- (id)propertiesWithUpdatedServices:(id)services
{
  v4 = MEMORY[0x277CBEB58];
  servicesCopy = services;
  v6 = [v4 alloc];
  allowedServices = [servicesCopy allowedServices];
  v8 = allowedServices;
  if (allowedServices)
  {
    v9 = allowedServices;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = [v6 initWithArray:v9];

  serviceIdentifier = [(IDSService *)self->_service serviceIdentifier];
  [v10 addObject:serviceIdentifier];

  [v10 addObject:@"com.apple.private.alloy.status.keysharing"];
  allObjects = [v10 allObjects];
  v13 = [servicesCopy withUpdatedAllowedServices:allObjects];

  return v13;
}

@end