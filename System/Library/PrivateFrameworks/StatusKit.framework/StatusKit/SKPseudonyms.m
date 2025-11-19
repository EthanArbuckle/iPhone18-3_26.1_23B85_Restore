@interface SKPseudonyms
- (SKPseudonyms)initWithIDSService:(id)a3;
- (id)propertiesWithUpdatedServices:(id)a3;
- (id)pseudonymsForMaskedURI:(id)a3 matchingProperties:(id)a4;
- (void)provisionPseudonymForURI:(id)a3 withProperties:(id)a4 completion:(id)a5;
- (void)provisionPseudonymForURI:(id)a3 withProperties:(id)a4 requestProperties:(id)a5 completion:(id)a6;
- (void)provisionPseudonymWithProperties:(id)a3 completion:(id)a4;
- (void)provisionPseudonymWithProperties:(id)a3 requestProperties:(id)a4 completion:(id)a5;
@end

@implementation SKPseudonyms

- (SKPseudonyms)initWithIDSService:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKPseudonyms;
  v5 = [(SKPseudonyms *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D18778]) initWithService:v4];
    service = v5->_service;
    v5->_service = v6;
  }

  return v5;
}

- (id)pseudonymsForMaskedURI:(id)a3 matchingProperties:(id)a4
{
  service = self->_service;
  v7 = a3;
  v8 = [(SKPseudonyms *)self propertiesWithUpdatedServices:a4];
  v9 = [(IDSService *)service pseudonymsForMaskedURI:v7 matchingProperties:v8];

  return v9;
}

- (void)provisionPseudonymWithProperties:(id)a3 completion:(id)a4
{
  service = self->_service;
  v7 = a4;
  v8 = [(SKPseudonyms *)self propertiesWithUpdatedServices:a3];
  [(IDSService *)service provisionPseudonymWithProperties:v8 completion:v7];
}

- (void)provisionPseudonymWithProperties:(id)a3 requestProperties:(id)a4 completion:(id)a5
{
  service = self->_service;
  v9 = a5;
  v10 = a4;
  v11 = [(SKPseudonyms *)self propertiesWithUpdatedServices:a3];
  [(IDSService *)service provisionPseudonymWithProperties:v11 requestProperties:v10 completion:v9];
}

- (void)provisionPseudonymForURI:(id)a3 withProperties:(id)a4 completion:(id)a5
{
  service = self->_service;
  v9 = a5;
  v10 = a3;
  v11 = [(SKPseudonyms *)self propertiesWithUpdatedServices:a4];
  [(IDSService *)service provisionPseudonymForURI:v10 withProperties:v11 completion:v9];
}

- (void)provisionPseudonymForURI:(id)a3 withProperties:(id)a4 requestProperties:(id)a5 completion:(id)a6
{
  service = self->_service;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(SKPseudonyms *)self propertiesWithUpdatedServices:a4];
  [(IDSService *)service provisionPseudonymForURI:v13 withProperties:v14 requestProperties:v12 completion:v11];
}

- (id)propertiesWithUpdatedServices:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 allowedServices];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = [v6 initWithArray:v9];

  v11 = [(IDSService *)self->_service serviceIdentifier];
  [v10 addObject:v11];

  [v10 addObject:@"com.apple.private.alloy.status.keysharing"];
  v12 = [v10 allObjects];
  v13 = [v5 withUpdatedAllowedServices:v12];

  return v13;
}

@end