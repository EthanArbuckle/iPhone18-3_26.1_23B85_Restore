@interface TSPKnownFieldDataReference
- (id)debugDescription;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSPKnownFieldDataReference

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSPKnownFieldDataReference;
  [(TSPKnownField *)&v9 loadFromUnarchiver:v4];
  TSP::DataReference::DataReference(v8, 0);
  google::protobuf::MessageLite::ParseFromString(v8, &self->super._value);
  v6 = objc_msgSend_readDataReferenceMessage_(v4, v5, v8);
  data = self->_data;
  self->_data = v6;

  TSP::DataReference::~DataReference(v8);
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TSPKnownFieldDataReference;
  [(TSPKnownField *)&v7 saveToArchiver:v4];
  if (self->_data)
  {
    TSP::DataReference::DataReference(v6, 0);
    objc_msgSend_setDataReference_message_(v4, v5, self->_data, v6);
    TSP::DataReference::~DataReference(v6);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPKnownFieldDataReference;
  v4 = [(TSPKnownFieldStringValue *)&v8 debugDescription];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ data: %@", v4, self->_data);;

  return v6;
}

@end