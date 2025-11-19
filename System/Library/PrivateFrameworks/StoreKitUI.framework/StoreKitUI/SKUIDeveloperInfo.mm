@interface SKUIDeveloperInfo
- (SKUIDeveloperInfo)initWithDeveloperDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedAddressString;
@end

@implementation SKUIDeveloperInfo

- (SKUIDeveloperInfo)initWithDeveloperDictionary:(id)a3
{
  v50[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDeveloperInfo initWithDeveloperDictionary:];
  }

  v49.receiver = self;
  v49.super_class = SKUIDeveloperInfo;
  v5 = [(SKUIDeveloperInfo *)&v49 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"businessRegistrationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      businessRegistrationIdentifier = v5->_businessRegistrationIdentifier;
      v5->_businessRegistrationIdentifier = v7;
    }

    v9 = [v4 objectForKey:@"eCommerceRegistrationId"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      ecommerceRegistrationIdentifier = v5->_ecommerceRegistrationIdentifier;
      v5->_ecommerceRegistrationIdentifier = v10;
    }

    v12 = [v4 objectForKey:@"person"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_28;
    }

    v13 = [v12 objectForKey:@"emailAddress"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      emailAddress = v5->_emailAddress;
      v5->_emailAddress = v14;
    }

    v9 = [v12 objectForKey:@"phoneNumber"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v9 copy];
      phoneNumber = v5->_phoneNumber;
      v5->_phoneNumber = v16;
    }

    v18 = [v12 objectForKey:@"tradeRep"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      tradeRepresentativeName = v5->_tradeRepresentativeName;
      v5->_tradeRepresentativeName = v19;
LABEL_27:

LABEL_28:
      v27 = [v4 objectForKey:@"address"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [v27 objectForKey:@"state"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [v28 copy];
          administrativeArea = v5->_administrativeArea;
          v5->_administrativeArea = v29;
        }

        v31 = [v27 objectForKey:@"country"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = [v31 copy];
          country = v5->_country;
          v5->_country = v32;
        }

        v34 = [v27 objectForKey:@"countryCode"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = [v34 copy];
          isoCountryCode = v5->_isoCountryCode;
          v5->_isoCountryCode = v35;
        }

        v37 = [v27 objectForKey:@"city"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = [v37 copy];
          locality = v5->_locality;
          v5->_locality = v38;
        }

        v40 = [v27 objectForKey:@"zipCode"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = [v40 copy];
          postalCode = v5->_postalCode;
          v5->_postalCode = v41;
        }

        v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v44 = [v27 objectForKey:@"addressLine1"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v43 addObject:v44];
        }

        v45 = [v4 objectForKey:@"addressLine2"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v43 addObject:v45];
        }

        v9 = [v4 objectForKey:@"addressLine3"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v43 addObject:v9];
        }

        v46 = [v43 copy];
        addressLines = v5->_addressLines;
        v5->_addressLines = v46;
      }

      goto LABEL_47;
    }

    tradeRepresentativeName = [v12 objectForKey:@"firstName"];
    v21 = [v12 objectForKey:@"lastName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v50[0] = tradeRepresentativeName;
      v50[1] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
      v23 = [v22 componentsJoinedByString:@" "];
      v24 = v5->_tradeRepresentativeName;
      v5->_tradeRepresentativeName = v23;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = tradeRepresentativeName;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_26:

          goto LABEL_27;
        }

        v25 = v21;
      }

      v26 = [v25 copy];
      v22 = v5->_tradeRepresentativeName;
      v5->_tradeRepresentativeName = v26;
    }

    goto LABEL_26;
  }

LABEL_47:

  return v5;
}

- (id)formattedAddressString
{
  v3 = SKUIContactsFramework();
  v4 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Cnmutableposta.isa, v3));
  v5 = v4;
  if (self->_administrativeArea)
  {
    [v4 setState:?];
  }

  if (self->_country)
  {
    [v5 setCountry:?];
  }

  if (self->_isoCountryCode)
  {
    [v5 setISOCountryCode:?];
  }

  if (self->_locality)
  {
    [v5 setCity:?];
  }

  if (self->_postalCode)
  {
    [v5 setPostalCode:?];
  }

  v6 = [(NSArray *)self->_addressLines componentsJoinedByString:@"\n"];
  if ([v6 length])
  {
    [v5 setStreet:v6];
  }

  v7 = SKUIContactsFramework();
  v8 = [SKUIWeakLinkedClassForString(&cfstr_Cnpostaladdres.isa v7)];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAddressLines:self->_addressLines];
  [v4 setAdministrativeArea:self->_administrativeArea];
  [v4 setBusinessRegistrationIdentifier:self->_businessRegistrationIdentifier];
  [v4 setCountry:self->_country];
  [v4 setECommerceRegistrationIdentifier:self->_ecommerceRegistrationIdentifier];
  [v4 setEmailAddress:self->_emailAddress];
  [v4 setISOCountryCode:self->_isoCountryCode];
  [v4 setLocality:self->_locality];
  [v4 setPhoneNumber:self->_phoneNumber];
  [v4 setPostalCode:self->_postalCode];
  [v4 setTradeName:self->_tradeName];
  [v4 setTradeRepresentativeName:self->_tradeRepresentativeName];
  return v4;
}

- (void)initWithDeveloperDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDeveloperInfo initWithDeveloperDictionary:]";
}

@end