@interface UARPiCloudAccessory
- (BOOL)isEqual:(id)equal;
- (UARPiCloudAccessory)initWithProductGroup:(id)group productNumber:(id)number firmwareVersion:(id)version;
- (UARPiCloudAccessory)initWithUUID:(id)d productGroup:(id)group productNumber:(id)number firmwareVersion:(id)version;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAvailableRecords:(id)records;
@end

@implementation UARPiCloudAccessory

- (UARPiCloudAccessory)initWithProductGroup:(id)group productNumber:(id)number firmwareVersion:(id)version
{
  groupCopy = group;
  numberCopy = number;
  versionCopy = version;
  v23.receiver = self;
  v23.super_class = UARPiCloudAccessory;
  v11 = [(UARPiCloudAccessory *)&v23 init];
  if (v11)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v11->_uuid;
    v11->_uuid = uUID;

    v14 = [groupCopy copy];
    productGroup = v11->_productGroup;
    v11->_productGroup = v14;

    v16 = [numberCopy copy];
    productNumber = v11->_productNumber;
    v11->_productNumber = v16;

    v18 = [versionCopy copy];
    firmwareVersion = v11->_firmwareVersion;
    v11->_firmwareVersion = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    availableRecords = v11->_availableRecords;
    v11->_availableRecords = v20;

    v11->_signatureValidationNeeded = 1;
  }

  return v11;
}

- (UARPiCloudAccessory)initWithUUID:(id)d productGroup:(id)group productNumber:(id)number firmwareVersion:(id)version
{
  dCopy = d;
  groupCopy = group;
  numberCopy = number;
  versionCopy = version;
  v26.receiver = self;
  v26.super_class = UARPiCloudAccessory;
  v14 = [(UARPiCloudAccessory *)&v26 init];
  if (v14)
  {
    v15 = [dCopy copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v17 = [groupCopy copy];
    productGroup = v14->_productGroup;
    v14->_productGroup = v17;

    v19 = [numberCopy copy];
    productNumber = v14->_productNumber;
    v14->_productNumber = v19;

    v21 = [versionCopy copy];
    firmwareVersion = v14->_firmwareVersion;
    v14->_firmwareVersion = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    availableRecords = v14->_availableRecords;
    v14->_availableRecords = v23;

    v14->_signatureValidationNeeded = 1;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UARPiCloudAccessory alloc] initWithUUID:self->_uuid productGroup:self->_productGroup productNumber:self->_productNumber firmwareVersion:self->_firmwareVersion];
  [(UARPiCloudAccessory *)v4 setRecord:self->_record];
  [(UARPiCloudAccessory *)v4 setChipFirmwareRecord:self->_chipFirmwareRecord];
  [(UARPiCloudAccessory *)v4 setAvailableRecords:self->_availableRecords];
  [(UARPiCloudAccessory *)v4 setSignatureValidationNeeded:self->_signatureValidationNeeded];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      uuid = self->_uuid;
      uuid = [(UARPiCloudAccessory *)equalCopy uuid];
      v7 = [(NSUUID *)uuid isEqual:uuid];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAvailableRecords:(id)records
{
  v4 = [records mutableCopy];
  availableRecords = self->_availableRecords;
  self->_availableRecords = v4;

  MEMORY[0x2821F96F8]();
}

@end