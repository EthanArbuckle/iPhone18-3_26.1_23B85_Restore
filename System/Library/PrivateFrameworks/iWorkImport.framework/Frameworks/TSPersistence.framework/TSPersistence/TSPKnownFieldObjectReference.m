@interface TSPKnownFieldObjectReference
- (id)debugDescription;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSPKnownFieldObjectReference

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSPKnownFieldObjectReference;
  [(TSPKnownField *)&v13 loadFromUnarchiver:v4];
  TSP::Reference::Reference(v12, 0);
  google::protobuf::MessageLite::ParseFromString(v12, &self->super._value);
  v7 = objc_msgSend_strongReferences(v4, v5, v6);
  if (v7)
  {
    v11 = v12[3];
    v9 = sub_2769ABC64(v7, &v11) == 0;
  }

  else
  {
    v9 = 1;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276A05DC0;
  v10[3] = &unk_27A6E41F8;
  v10[4] = self;
  objc_msgSend_readUnknownLazyReferenceMessage_ownershipMode_completion_(v4, v8, v12, v9, v10);
  TSP::Reference::~Reference(v12);
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSPKnownFieldObjectReference;
  [(TSPKnownField *)&v11 saveToArchiver:v4];
  if (self->_reference)
  {
    TSP::Reference::Reference(v10, 0);
    v7 = objc_msgSend_ownershipMode(self->_reference, v5, v6);
    reference = self->_reference;
    if (v7)
    {
      objc_msgSend_setWeakLazyReference_message_(v4, v8, reference, v10);
    }

    else
    {
      objc_msgSend_setStrongLazyReference_message_(v4, v8, reference, v10);
    }

    TSP::Reference::~Reference(v10);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSPKnownFieldObjectReference;
  v4 = [(TSPKnownFieldStringValue *)&v11 debugDescription];
  v7 = objc_msgSend_debugDescription(self->_reference, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ reference: %@", v4, v7);;

  return v9;
}

@end