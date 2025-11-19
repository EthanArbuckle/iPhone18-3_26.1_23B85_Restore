@interface TSPKnownFieldRepeatedDataReference
- (id)debugDescription;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSPKnownFieldRepeatedDataReference

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TSPKnownFieldRepeatedDataReference;
  [(TSPKnownField *)&v16 loadFromUnarchiver:v4];
  current_size = self->super._values.current_size_;
  if (current_size >= 1)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = objc_msgSend_initWithCapacity_(v6, v7, current_size);
    v9 = 0;
    v10 = 24 * current_size;
    do
    {
      TSP::DataReference::DataReference(v15, 0);
      google::protobuf::MessageLite::ParseFromString(v15, self->super._values.arena_or_elements_ + v9);
      v13 = objc_msgSend_readDataReferenceMessage_(v4, v11, v15);
      if (v13)
      {
        objc_msgSend_addObject_(v8, v12, v13);
      }

      TSP::DataReference::~DataReference(v15);
      v9 += 24;
    }

    while (v10 != v9);
    allData = self->_allData;
    self->_allData = v8;
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSPKnownFieldRepeatedDataReference;
  [(TSPKnownField *)&v9 saveToArchiver:v4];
  if (objc_msgSend_count(self->_allData, v5, v6))
  {
    memset(v8, 0, sizeof(v8));
    objc_msgSend_setDataReferenceArray_message_(v4, v7, self->_allData, v8);
    sub_276A08184(v8);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSPKnownFieldRepeatedDataReference;
  v4 = [(TSPKnownField *)&v11 debugDescription];
  v7 = objc_msgSend_debugDescription(self->_allData, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ allData: %@", v4, v7);;

  return v9;
}

@end