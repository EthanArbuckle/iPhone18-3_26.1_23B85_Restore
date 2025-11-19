@interface UARPiCloudAccessory
- (BOOL)isEqual:(id)a3;
- (UARPiCloudAccessory)initWithProductGroup:(id)a3 productNumber:(id)a4 firmwareVersion:(id)a5;
- (UARPiCloudAccessory)initWithUUID:(id)a3 productGroup:(id)a4 productNumber:(id)a5 firmwareVersion:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAvailableRecords:(id)a3;
@end

@implementation UARPiCloudAccessory

- (UARPiCloudAccessory)initWithProductGroup:(id)a3 productNumber:(id)a4 firmwareVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = UARPiCloudAccessory;
  v11 = [(UARPiCloudAccessory *)&v23 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CCAD78] UUID];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v14 = [v8 copy];
    productGroup = v11->_productGroup;
    v11->_productGroup = v14;

    v16 = [v9 copy];
    productNumber = v11->_productNumber;
    v11->_productNumber = v16;

    v18 = [v10 copy];
    firmwareVersion = v11->_firmwareVersion;
    v11->_firmwareVersion = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    availableRecords = v11->_availableRecords;
    v11->_availableRecords = v20;

    v11->_signatureValidationNeeded = 1;
  }

  return v11;
}

- (UARPiCloudAccessory)initWithUUID:(id)a3 productGroup:(id)a4 productNumber:(id)a5 firmwareVersion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = UARPiCloudAccessory;
  v14 = [(UARPiCloudAccessory *)&v26 init];
  if (v14)
  {
    v15 = [v10 copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v17 = [v11 copy];
    productGroup = v14->_productGroup;
    v14->_productGroup = v17;

    v19 = [v12 copy];
    productNumber = v14->_productNumber;
    v14->_productNumber = v19;

    v21 = [v13 copy];
    firmwareVersion = v14->_firmwareVersion;
    v14->_firmwareVersion = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    availableRecords = v14->_availableRecords;
    v14->_availableRecords = v23;

    v14->_signatureValidationNeeded = 1;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UARPiCloudAccessory alloc] initWithUUID:self->_uuid productGroup:self->_productGroup productNumber:self->_productNumber firmwareVersion:self->_firmwareVersion];
  [(UARPiCloudAccessory *)v4 setRecord:self->_record];
  [(UARPiCloudAccessory *)v4 setChipFirmwareRecord:self->_chipFirmwareRecord];
  [(UARPiCloudAccessory *)v4 setAvailableRecords:self->_availableRecords];
  [(UARPiCloudAccessory *)v4 setSignatureValidationNeeded:self->_signatureValidationNeeded];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      uuid = self->_uuid;
      v6 = [(UARPiCloudAccessory *)v4 uuid];
      v7 = [(NSUUID *)uuid isEqual:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAvailableRecords:(id)a3
{
  v4 = [a3 mutableCopy];
  availableRecords = self->_availableRecords;
  self->_availableRecords = v4;

  MEMORY[0x2821F96F8]();
}

@end