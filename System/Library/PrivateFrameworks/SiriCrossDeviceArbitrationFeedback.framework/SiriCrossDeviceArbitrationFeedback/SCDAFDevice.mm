@interface SCDAFDevice
+ (id)arrayDictionaryRepresentation:(id)representation;
+ (id)devicesArrayWithDictionaryRepresentation:(id)representation;
+ (unint64_t)deviceClassFromProductTypeString:(id)string;
- (SCDAFDevice)initWithCoder:(id)coder;
- (SCDAFDevice)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCDAFDevice

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSString *)self->_idsIdentifier length])
  {
    [dictionary setObject:self->_idsIdentifier forKeyedSubscript:@"idsIdentifier"];
  }

  if ([(NSString *)self->_build length])
  {
    [dictionary setObject:self->_build forKeyedSubscript:@"build"];
  }

  if ([(NSString *)self->_enclosureColor length])
  {
    [dictionary setObject:self->_enclosureColor forKeyedSubscript:@"enclosureColor"];
  }

  if ([(NSString *)self->_locale length])
  {
    [dictionary setObject:self->_locale forKeyedSubscript:@"locale"];
  }

  if ([(NSString *)self->_name length])
  {
    [dictionary setObject:self->_name forKeyedSubscript:@"name"];
  }

  if ([(NSArray *)self->_productTypes count])
  {
    [dictionary setObject:self->_productTypes forKeyedSubscript:@"productTypes"];
  }

  if ([(NSArray *)self->_deviceClass count])
  {
    [dictionary setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  }

  if ([(NSString *)self->_assistantId length])
  {
    [dictionary setObject:self->_assistantId forKeyedSubscript:@"assistantId"];
  }

  if ([(NSString *)self->_speechId length])
  {
    [dictionary setObject:self->_speechId forKeyedSubscript:@"speechId"];
  }

  roomName = [(SCDAFDevice *)self roomName];
  v5 = [roomName length];

  if (v5)
  {
    roomName2 = [(SCDAFDevice *)self roomName];
    [dictionary setObject:roomName2 forKeyedSubscript:@"roomName"];
  }

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v7;
}

- (SCDAFDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsIdentifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enclosureColor"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"productTypes"];
  v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"deviceClass"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assistantId"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speechId"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roomName"];

  v13 = objc_alloc_init(SCDAFDevice);
  [(SCDAFDevice *)v13 setIdsIdentifier:v16];
  [(SCDAFDevice *)v13 setBuild:v4];
  [(SCDAFDevice *)v13 setEnclosureColor:v5];
  [(SCDAFDevice *)v13 setLocale:v6];
  [(SCDAFDevice *)v13 setName:v7];
  [(SCDAFDevice *)v13 setProductTypes:v8];
  [(SCDAFDevice *)v13 setDeviceClass:v9];
  [(SCDAFDevice *)v13 setAssistantId:v10];
  [(SCDAFDevice *)v13 setSpeechId:v11];
  [(SCDAFDevice *)v13 setRoomName:v12];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  idsIdentifier = self->_idsIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:idsIdentifier forKey:@"idsIdentifier"];
  [coderCopy encodeObject:self->_build forKey:@"build"];
  [coderCopy encodeObject:self->_enclosureColor forKey:@"enclosureColor"];
  [coderCopy encodeObject:self->_locale forKey:@"locale"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_productTypes forKey:@"productTypes"];
  [coderCopy encodeObject:self->_deviceClass forKey:@"deviceClass"];
  [coderCopy encodeObject:self->_assistantId forKey:@"assistantId"];
  [coderCopy encodeObject:self->_speechId forKey:@"speechId"];
  [coderCopy encodeObject:self->_roomName forKey:@"roomName"];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  dictionaryRepresentation = [(SCDAFDevice *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", dictionaryRepresentation];

  return v4;
}

- (SCDAFDevice)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v52.receiver = self;
  v52.super_class = SCDAFDevice;
  v5 = [(SCDAFDevice *)&v52 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"idsIdentifier"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
    {
      v7 = [v6 copy];
      idsIdentifier = v5->_idsIdentifier;
      v5->_idsIdentifier = v7;
    }

    v9 = [representationCopy objectForKeyedSubscript:@"build"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
    {
      v10 = [v9 copy];
      build = v5->_build;
      v5->_build = v10;
    }

    v12 = [representationCopy objectForKeyedSubscript:@"enclosureColor"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 length])
    {
      v13 = [v12 copy];
      enclosureColor = v5->_enclosureColor;
      v5->_enclosureColor = v13;
    }

    v15 = [representationCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 length])
    {
      v16 = [v15 copy];
      locale = v5->_locale;
      v5->_locale = v16;
    }

    v44 = v15;
    v45 = v12;
    v46 = v9;
    v47 = v6;
    v18 = [representationCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 length])
    {
      v19 = [v18 copy];
      name = v5->_name;
      v5->_name = v19;
    }

    array = [MEMORY[0x277CBEB18] array];
    v22 = [representationCopy objectForKeyedSubscript:@"productTypes"];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __48__SCDAFDevice_initWithDictionaryRepresentation___block_invoke;
    v50[3] = &unk_279BD9DB8;
    v23 = array;
    v51 = v23;
    v43 = v22;
    [v22 enumerateObjectsUsingBlock:v50];
    v24 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
    productTypes = v5->_productTypes;
    v5->_productTypes = v24;

    array2 = [MEMORY[0x277CBEB18] array];
    v27 = [representationCopy objectForKeyedSubscript:@"deviceClass"];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __48__SCDAFDevice_initWithDictionaryRepresentation___block_invoke_2;
    v48[3] = &unk_279BD9DB8;
    v28 = array2;
    v49 = v28;
    [v27 enumerateObjectsUsingBlock:v48];
    v29 = [MEMORY[0x277CBEA60] arrayWithArray:v28];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v29;

    v31 = [representationCopy objectForKeyedSubscript:@"speechId"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v31 length])
    {
      v32 = [v31 copy];
      speechId = v5->_speechId;
      v5->_speechId = v32;
    }

    v34 = [representationCopy objectForKeyedSubscript:@"assistantId"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 length])
    {
      v35 = [v34 copy];
      assistantId = v5->_assistantId;
      v5->_assistantId = v35;
    }

    v37 = [representationCopy objectForKeyedSubscript:@"roomName"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v39 = [representationCopy objectForKeyedSubscript:@"roomName"];
      v40 = [v39 copy];
      roomName = v5->_roomName;
      v5->_roomName = v40;
    }
  }

  return v5;
}

void __48__SCDAFDevice_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __48__SCDAFDevice_initWithDictionaryRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

+ (id)arrayDictionaryRepresentation:(id)representation
{
  v3 = MEMORY[0x277CBEB18];
  representationCopy = representation;
  array = [v3 array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SCDAFDevice_arrayDictionaryRepresentation___block_invoke;
  v9[3] = &unk_279BD9D90;
  v10 = array;
  v6 = array;
  [representationCopy enumerateObjectsUsingBlock:v9];

  v7 = [MEMORY[0x277CBEA60] arrayWithArray:v6];

  return v7;
}

uint64_t __45__SCDAFDevice_arrayDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryRepresentation];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

+ (unint64_t)deviceClassFromProductTypeString:(id)string
{
  stringCopy = string;
  if ([stringCopy containsString:@"iPhone"])
  {
    v4 = 1;
  }

  else if ([stringCopy containsString:@"iPad"])
  {
    v4 = 2;
  }

  else if ([stringCopy containsString:@"Watch"])
  {
    v4 = 3;
  }

  else if ([stringCopy containsString:@"AudioAccessory"])
  {
    v4 = 5;
  }

  else if ([stringCopy containsString:@"AppleTV"])
  {
    v4 = 4;
  }

  else if ([stringCopy containsString:@"mac"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)devicesArrayWithDictionaryRepresentation:(id)representation
{
  v3 = MEMORY[0x277CBEB18];
  representationCopy = representation;
  array = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SCDAFDevice_devicesArrayWithDictionaryRepresentation___block_invoke;
  v8[3] = &unk_279BD9E30;
  v6 = array;
  v9 = v6;
  [representationCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __56__SCDAFDevice_devicesArrayWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SCDAFDevice alloc] initWithDictionaryRepresentation:v3];

  [*(a1 + 32) addObject:v4];
}

@end