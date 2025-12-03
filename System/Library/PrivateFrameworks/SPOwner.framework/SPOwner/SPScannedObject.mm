@interface SPScannedObject
- (NSData)optional;
- (SPScannedObject)initWithAdvertisementType:(int64_t)type poshNetwork:(unsigned __int8)network nearOwner:(BOOL)owner vendorPayload:(id)payload scanDate:(id)date address:(id)address advertisement:(id)advertisement status:(unsigned __int8)self0 ek:(unsigned __int8)self1 hint:(id)self2 rssi:(int64_t)self3 indexInformation:(id)self4 acccessoryInformation:(id)self5;
- (SPScannedObject)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPScannedObject

- (SPScannedObject)initWithAdvertisementType:(int64_t)type poshNetwork:(unsigned __int8)network nearOwner:(BOOL)owner vendorPayload:(id)payload scanDate:(id)date address:(id)address advertisement:(id)advertisement status:(unsigned __int8)self0 ek:(unsigned __int8)self1 hint:(id)self2 rssi:(int64_t)self3 indexInformation:(id)self4 acccessoryInformation:(id)self5
{
  payloadCopy = payload;
  dateCopy = date;
  obj = address;
  addressCopy = address;
  advertisementCopy = advertisement;
  hintCopy = hint;
  informationCopy = information;
  acccessoryInformationCopy = acccessoryInformation;
  v33.receiver = self;
  v33.super_class = SPScannedObject;
  v23 = [(SPScannedObject *)&v33 init];
  v24 = v23;
  if (v23)
  {
    v23->_advertisementType = type;
    v23->_poshNetwork = network;
    v23->_nearOwner = owner;
    objc_storeStrong(&v23->_vendorPayload, payload);
    objc_storeStrong(&v24->_scanDate, date);
    objc_storeStrong(&v24->_address, obj);
    objc_storeStrong(&v24->_advertisement, advertisement);
    v24->_status = status;
    v24->_ek = ek;
    objc_storeStrong(&v24->_hint, hint);
    v24->_rssi = rssi;
    objc_storeStrong(&v24->_indexInformation, information);
    objc_storeStrong(&v24->_accessoryInformation, acccessoryInformation);
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
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
  accessoryInformation = [(SPScannedObject *)self accessoryInformation];
  LOWORD(v16) = v11;
  v14 = [SPScannedObject initWithAdvertisementType:v18 poshNetwork:"initWithAdvertisementType:poshNetwork:nearOwner:vendorPayload:scanDate:address:advertisement:status:ek:hint:rssi:indexInformation:acccessoryInformation:" nearOwner:advertisementType vendorPayload:poshNetwork scanDate:nearOwner address:vendorPayload advertisement:scanDate status:address ek:advertisement hint:v16 rssi:v17 indexInformation:indexInformation acccessoryInformation:accessoryInformation];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  advertisementType_low = LODWORD(self->_advertisementType);
  coderCopy = coder;
  [coderCopy encodeInt:advertisementType_low forKey:@"advertisementType"];
  [coderCopy encodeInt:self->_poshNetwork forKey:@"poshNetwork"];
  [coderCopy encodeBool:self->_nearOwner forKey:@"nearOwner"];
  [coderCopy encodeObject:self->_vendorPayload forKey:@"vendorPayload"];
  [coderCopy encodeObject:self->_scanDate forKey:@"scanDate"];
  [coderCopy encodeObject:self->_address forKey:@"address"];
  [coderCopy encodeObject:self->_advertisement forKey:@"advertisement"];
  [coderCopy encodeInt:self->_status forKey:@"status"];
  [coderCopy encodeInt:self->_ek forKey:@"ek"];
  [coderCopy encodeObject:self->_hint forKey:@"hint"];
  [coderCopy encodeInteger:self->_rssi forKey:@"rssi"];
  [coderCopy encodeObject:self->_indexInformation forKey:@"indexInformation"];
  [coderCopy encodeObject:self->_accessoryInformation forKey:@"accessoryInformation"];
}

- (SPScannedObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_advertisementType = [coderCopy decodeIntForKey:@"advertisementType"];
  self->_poshNetwork = [coderCopy decodeIntForKey:@"poshNetwork"];
  self->_nearOwner = [coderCopy decodeBoolForKey:@"nearOwner"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorPayload"];
  vendorPayload = self->_vendorPayload;
  self->_vendorPayload = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scanDate"];
  scanDate = self->_scanDate;
  self->_scanDate = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  address = self->_address;
  self->_address = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advertisement"];
  advertisement = self->_advertisement;
  self->_advertisement = v11;

  self->_status = [coderCopy decodeIntForKey:@"status"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hint"];
  hint = self->_hint;
  self->_hint = v13;

  self->_ek = [coderCopy decodeIntForKey:@"ek"];
  self->_rssi = [coderCopy decodeIntegerForKey:@"rssi"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"indexInformation"];
  indexInformation = self->_indexInformation;
  self->_indexInformation = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryInformation"];

  accessoryInformation = self->_accessoryInformation;
  self->_accessoryInformation = v17;

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  scanDate = [(SPScannedObject *)self scanDate];
  address = [(SPScannedObject *)self address];
  fm_hexString = [address fm_hexString];
  advertisement = [(SPScannedObject *)self advertisement];
  fm_hexString2 = [advertisement fm_hexString];
  status = [(SPScannedObject *)self status];
  v10 = [(SPScannedObject *)self ek];
  hint = [(SPScannedObject *)self hint];
  v12 = [v3 stringWithFormat:@"<scanDate: %@, address: %@, adv: %@, status: %x, ek: %x hint: %@, rssi: %ld>"], scanDate, fm_hexString, fm_hexString2, status, v10, hint, -[SPScannedObject rssi](self, "rssi"));

  return v12;
}

- (NSData)optional
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [v3 appendBytes:&self->_ek length:1];
  hint = [(SPScannedObject *)self hint];

  if (hint)
  {
    hint2 = [(SPScannedObject *)self hint];
    unsignedCharValue = [hint2 unsignedCharValue];

    v8 = unsignedCharValue;
    [v3 appendBytes:&v8 length:1];
  }

  return v3;
}

@end