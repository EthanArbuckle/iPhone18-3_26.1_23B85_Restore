@interface SPScannedObject
- (NSData)optional;
- (SPScannedObject)initWithAdvertisementType:(int64_t)a3 poshNetwork:(unsigned __int8)a4 nearOwner:(BOOL)a5 vendorPayload:(id)a6 scanDate:(id)a7 address:(id)a8 advertisement:(id)a9 status:(unsigned __int8)a10 ek:(unsigned __int8)a11 hint:(id)a12 rssi:(int64_t)a13 indexInformation:(id)a14 acccessoryInformation:(id)a15;
- (SPScannedObject)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPScannedObject

- (SPScannedObject)initWithAdvertisementType:(int64_t)a3 poshNetwork:(unsigned __int8)a4 nearOwner:(BOOL)a5 vendorPayload:(id)a6 scanDate:(id)a7 address:(id)a8 advertisement:(id)a9 status:(unsigned __int8)a10 ek:(unsigned __int8)a11 hint:(id)a12 rssi:(int64_t)a13 indexInformation:(id)a14 acccessoryInformation:(id)a15
{
  v19 = a6;
  v20 = a7;
  obj = a8;
  v21 = a8;
  v32 = a9;
  v22 = a12;
  v31 = a14;
  v30 = a15;
  v33.receiver = self;
  v33.super_class = SPScannedObject;
  v23 = [(SPScannedObject *)&v33 init];
  v24 = v23;
  if (v23)
  {
    v23->_advertisementType = a3;
    v23->_poshNetwork = a4;
    v23->_nearOwner = a5;
    objc_storeStrong(&v23->_vendorPayload, a6);
    objc_storeStrong(&v24->_scanDate, a7);
    objc_storeStrong(&v24->_address, obj);
    objc_storeStrong(&v24->_advertisement, a9);
    v24->_status = a10;
    v24->_ek = a11;
    objc_storeStrong(&v24->_hint, a12);
    v24->_rssi = a13;
    objc_storeStrong(&v24->_indexInformation, a14);
    objc_storeStrong(&v24->_accessoryInformation, a15);
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = [SPScannedObject alloc];
  poshNetwork = self->_poshNetwork;
  nearOwner = self->_nearOwner;
  advertisementType = self->_advertisementType;
  vendorPayload = self->_vendorPayload;
  scanDate = self->_scanDate;
  address = self->_address;
  advertisement = self->_advertisement;
  v11 = *&self->_status;
  v17 = *&self->_hint;
  indexInformation = self->_indexInformation;
  v13 = [(SPScannedObject *)self accessoryInformation];
  LOWORD(v16) = v11;
  v14 = [SPScannedObject initWithAdvertisementType:v18 poshNetwork:"initWithAdvertisementType:poshNetwork:nearOwner:vendorPayload:scanDate:address:advertisement:status:ek:hint:rssi:indexInformation:acccessoryInformation:" nearOwner:advertisementType vendorPayload:poshNetwork scanDate:nearOwner address:vendorPayload advertisement:scanDate status:address ek:advertisement hint:v16 rssi:v17 indexInformation:indexInformation acccessoryInformation:v13];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  advertisementType_low = LODWORD(self->_advertisementType);
  v5 = a3;
  [v5 encodeInt:advertisementType_low forKey:@"advertisementType"];
  [v5 encodeInt:self->_poshNetwork forKey:@"poshNetwork"];
  [v5 encodeBool:self->_nearOwner forKey:@"nearOwner"];
  [v5 encodeObject:self->_vendorPayload forKey:@"vendorPayload"];
  [v5 encodeObject:self->_scanDate forKey:@"scanDate"];
  [v5 encodeObject:self->_address forKey:@"address"];
  [v5 encodeObject:self->_advertisement forKey:@"advertisement"];
  [v5 encodeInt:self->_status forKey:@"status"];
  [v5 encodeInt:self->_ek forKey:@"ek"];
  [v5 encodeObject:self->_hint forKey:@"hint"];
  [v5 encodeInteger:self->_rssi forKey:@"rssi"];
  [v5 encodeObject:self->_indexInformation forKey:@"indexInformation"];
  [v5 encodeObject:self->_accessoryInformation forKey:@"accessoryInformation"];
}

- (SPScannedObject)initWithCoder:(id)a3
{
  v4 = a3;
  self->_advertisementType = [v4 decodeIntForKey:@"advertisementType"];
  self->_poshNetwork = [v4 decodeIntForKey:@"poshNetwork"];
  self->_nearOwner = [v4 decodeBoolForKey:@"nearOwner"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vendorPayload"];
  vendorPayload = self->_vendorPayload;
  self->_vendorPayload = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scanDate"];
  scanDate = self->_scanDate;
  self->_scanDate = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  address = self->_address;
  self->_address = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"advertisement"];
  advertisement = self->_advertisement;
  self->_advertisement = v11;

  self->_status = [v4 decodeIntForKey:@"status"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hint"];
  hint = self->_hint;
  self->_hint = v13;

  self->_ek = [v4 decodeIntForKey:@"ek"];
  self->_rssi = [v4 decodeIntegerForKey:@"rssi"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"indexInformation"];
  indexInformation = self->_indexInformation;
  self->_indexInformation = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryInformation"];

  accessoryInformation = self->_accessoryInformation;
  self->_accessoryInformation = v17;

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SPScannedObject *)self scanDate];
  v5 = [(SPScannedObject *)self address];
  v6 = [v5 fm_hexString];
  v7 = [(SPScannedObject *)self advertisement];
  v8 = [v7 fm_hexString];
  v9 = [(SPScannedObject *)self status];
  v10 = [(SPScannedObject *)self ek];
  v11 = [(SPScannedObject *)self hint];
  v12 = [v3 stringWithFormat:@"<scanDate: %@, address: %@, adv: %@, status: %x, ek: %x hint: %@, rssi: %ld>"], v4, v6, v8, v9, v10, v11, -[SPScannedObject rssi](self, "rssi"));

  return v12;
}

- (NSData)optional
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [v3 appendBytes:&self->_ek length:1];
  v4 = [(SPScannedObject *)self hint];

  if (v4)
  {
    v5 = [(SPScannedObject *)self hint];
    v6 = [v5 unsignedCharValue];

    v8 = v6;
    [v3 appendBytes:&v8 length:1];
  }

  return v3;
}

@end