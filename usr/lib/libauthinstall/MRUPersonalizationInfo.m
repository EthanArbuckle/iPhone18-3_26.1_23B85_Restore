@interface MRUPersonalizationInfo
- (MRUPersonalizationInfo)initWithCoder:(id)a3;
- (MRUPersonalizationInfo)initWithHardwareInfo:(id)a3 componentName:(id)a4 objectName:(id)a5 nonce:(id)a6;
- (MRUPersonalizationInfo)initWithHardwareInfo:(id)a3 componentName:(id)a4 objectName:(id)a5 nonce:(id)a6 tagNumber:(id)a7;
- (MRUPersonalizationInfo)initWithOptions:(id)a3 error:(id *)a4;
- (NSDictionary)asDictionary;
- (NSString)_componentNameSuffix;
- (NSString)_propertyNameSuffix;
- (NSString)boardIDPropertyName;
- (NSString)chipIDPropertyName;
- (NSString)ecidPropertyName;
- (NSString)noncePropertyName;
- (NSString)productionModePropertyName;
- (NSString)securityDomainPropertyName;
- (NSString)securityModePropertyName;
- (NSString)tag;
- (NSString)ticketName;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRUPersonalizationInfo

- (MRUPersonalizationInfo)initWithHardwareInfo:(id)a3 componentName:(id)a4 objectName:(id)a5 nonce:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = MRUPersonalizationInfo;
  v15 = [(MRUPersonalizationInfo *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_hardwareInfo, a3);
    objc_storeStrong(&v16->_componentName, a4);
    objc_storeStrong(&v16->_objectName, a5);
    objc_storeStrong(&v16->_nonce, a6);
    tagNumber = v16->_tagNumber;
    v16->_tagNumber = 0;
  }

  return v16;
}

- (MRUPersonalizationInfo)initWithHardwareInfo:(id)a3 componentName:(id)a4 objectName:(id)a5 nonce:(id)a6 tagNumber:(id)a7
{
  v13 = a7;
  v14 = [(MRUPersonalizationInfo *)self initWithHardwareInfo:a3 componentName:a4 objectName:a5 nonce:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_tagNumber, a7);
  }

  return v15;
}

- (MRUPersonalizationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MRUPersonalizationInfo;
  v5 = [(MRUPersonalizationInfo *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"hardwareInfo"];
    hardwareInfo = v5->_hardwareInfo;
    v5->_hardwareInfo = v6;

    v8 = [v4 decodeObjectForKey:@"componentName"];
    componentName = v5->_componentName;
    v5->_componentName = v8;

    v10 = [v4 decodeObjectForKey:@"objectName"];
    objectName = v5->_objectName;
    v5->_objectName = v10;

    v12 = [v4 decodeObjectForKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v12;

    if ([v4 containsValueForKey:@"tagNumber"])
    {
      v14 = [v4 decodeObjectForKey:@"tagNumber"];
    }

    else
    {
      v14 = 0;
    }

    tagNumber = v5->_tagNumber;
    v5->_tagNumber = v14;
  }

  return v5;
}

- (MRUPersonalizationInfo)initWithOptions:(id)a3 error:(id *)a4
{
  v47[1] = *MEMORY[0x29EDCA608];
  v6 = a3;
  v37.receiver = self;
  v37.super_class = MRUPersonalizationInfo;
  v7 = [(MRUPersonalizationInfo *)&v37 init];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = [v6 objectForKeyedSubscript:@"HardwareInfo"];
  if (!v8)
  {
    if (*a4)
    {
      v19 = MEMORY[0x29EDB9FA0];
      v46 = *MEMORY[0x29EDB9ED8];
      v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No hardwareInfo in options dict"];
      v47[0] = v20;
      v21 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      *a4 = [v19 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v21];
    }

    goto LABEL_19;
  }

  v9 = v8;
  v36 = 0;
  v10 = [[MRUHardwareInfo alloc] initWithOptions:v8 error:&v36];
  v11 = v36;
  if (!v10)
  {
    if (*a4)
    {
      v22 = MEMORY[0x29EDB9FA0];
      v44[0] = *MEMORY[0x29EDB9ED8];
      v23 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to create hardwareInfo, options: %@", v9];
      v44[1] = *MEMORY[0x29EDB9F18];
      v45[0] = v23;
      v45[1] = v11;
      v24 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
      *a4 = [v22 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:3 userInfo:v24];
    }

    goto LABEL_18;
  }

  objc_storeStrong(&v7->_hardwareInfo, v10);
  v12 = [v6 objectForKeyedSubscript:@"ComponentName"];
  if (!v12)
  {
    if (*a4)
    {
      v25 = MEMORY[0x29EDB9FA0];
      v42 = *MEMORY[0x29EDB9ED8];
      v26 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No component name in options dict"];
      v43 = v26;
      v27 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *a4 = [v25 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v27];
    }

    goto LABEL_17;
  }

  v13 = v12;
  objc_storeStrong(&v7->_componentName, v12);
  v14 = [v6 objectForKeyedSubscript:@"ObjectName"];
  if (!v14)
  {
    if (*a4)
    {
      v34 = MEMORY[0x29EDB9FA0];
      v40 = *MEMORY[0x29EDB9ED8];
      v28 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No object name in options dict"];
      v41 = v28;
      v29 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *a4 = [v34 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v29];
    }

LABEL_17:
LABEL_18:

    goto LABEL_19;
  }

  v15 = v14;
  objc_storeStrong(&v7->_objectName, v14);
  v16 = [v6 objectForKeyedSubscript:@"Nonce"];
  if (v16)
  {
    objc_storeStrong(&v7->_nonce, v16);
    v17 = [v6 objectForKeyedSubscript:@"TagNumber"];
    tagNumber = v7->_tagNumber;
    v7->_tagNumber = v17;
  }

  else
  {
    if (!*a4)
    {
      goto LABEL_23;
    }

    v35 = MEMORY[0x29EDB9FA0];
    v38 = *MEMORY[0x29EDB9ED8];
    tagNumber = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No nonce in options dict"];
    v39 = tagNumber;
    v33 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *a4 = [v35 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v33];
  }

LABEL_23:
  if (v16)
  {
LABEL_24:
    v30 = v7;
    goto LABEL_25;
  }

LABEL_19:
  v30 = 0;
LABEL_25:

  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_hardwareInfo forKey:@"hardwareInfo"];
  [v5 encodeObject:self->_componentName forKey:@"componentName"];
  [v5 encodeObject:self->_objectName forKey:@"objectName"];
  [v5 encodeObject:self->_nonce forKey:@"nonce"];
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    [v5 encodeObject:tagNumber forKey:@"tagNumber"];
  }
}

- (NSDictionary)asDictionary
{
  v14 = *MEMORY[0x29EDCA608];
  v10[0] = @"HardwareInfo";
  v3 = [(MRUHardwareInfo *)self->_hardwareInfo asDictionary];
  v11 = v3;
  v12 = *&self->_componentName;
  v10[1] = @"ComponentName";
  v10[2] = @"ObjectName";
  v10[3] = @"Nonce";
  nonce = self->_nonce;
  v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v11 forKeys:v10 count:4];
  v5 = [v4 mutableCopy];

  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    [v5 setObject:tagNumber forKey:@"TagNumber"];
  }

  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:v5];

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (NSString)_componentNameSuffix
{
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", -[NSNumber intValue](tagNumber, "intValue")];
  }

  else
  {
    v4 = &stru_2A1EE9D10;
  }

  return v4;
}

- (NSString)_propertyNameSuffix
{
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@", %d", -[NSNumber intValue](tagNumber, "intValue")];
  }

  else
  {
    v4 = &stru_2A1EE9D10;
  }

  return v4;
}

- (NSString)ticketName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  v4 = [(MRUPersonalizationInfo *)self _componentNameSuffix];
  v5 = [v2 stringWithFormat:@"%@%@, Ticket", componentName, v4];

  return v5;
}

- (NSString)tag
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  objectName = self->_objectName;
  v5 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v6 = [v2 stringWithFormat:@"%@, %@%@", componentName, objectName, v5];

  return v6;
}

- (NSString)boardIDPropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  v4 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, BoardID%@", componentName, v4];

  return v5;
}

- (NSString)chipIDPropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  v4 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, ChipID%@", componentName, v4];

  return v5;
}

- (NSString)ecidPropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  v4 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, ECID%@", componentName, v4];

  return v5;
}

- (NSString)noncePropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  v4 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, Nonce%@", componentName, v4];

  return v5;
}

- (NSString)productionModePropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  v4 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, ProductionMode%@", componentName, v4];

  return v5;
}

- (NSString)securityDomainPropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  v4 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, SecurityDomain%@", componentName, v4];

  return v5;
}

- (NSString)securityModePropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  v4 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, SecurityMode%@", componentName, v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_msgSend(v3, "stringWithFormat:", @"%@(\n"), v5;

  v7 = [(MRUHardwareInfo *)self->_hardwareInfo description];
  [v6 appendFormat:@"\thardwareInfo: %s\n", objc_msgSend(v7, "UTF8String")];

  v8 = [(MRUPersonalizationInfo *)self ticketName];
  [v6 appendFormat:@"\tticketName: %s\n", objc_msgSend(v8, "UTF8String")];

  v9 = [(MRUPersonalizationInfo *)self tag];
  [v6 appendFormat:@"\ttagName: %s\n", objc_msgSend(v9, "UTF8String")];

  v10 = [(NSData *)self->_nonce description];
  [v6 appendFormat:@"\tnonce: %s\n", objc_msgSend(v10, "UTF8String")];

  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v12 = [(NSNumber *)tagNumber description];
    [v6 appendFormat:@"\ttagNumber: %s\n", objc_msgSend(v12, "UTF8String")];
  }

  [v6 appendString:@""]);
  v13 = [MEMORY[0x29EDBA0F8] stringWithString:v6];

  return v13;
}

@end