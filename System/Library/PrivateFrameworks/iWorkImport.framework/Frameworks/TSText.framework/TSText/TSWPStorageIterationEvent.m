@interface TSWPStorageIterationEvent
+ (id)characterEventWithRange:(_NSRange)a3;
+ (id)eventWithType:(int)a3 providerIdentifier:(id)a4 range:(_NSRange)a5 object:(id)a6;
- (TSWPStorageIterationEvent)initWithType:(int)a3 providerIdentifier:(id)a4 range:(_NSRange)a5 object:(id)a6;
- (_NSRange)range;
- (id)description;
@end

@implementation TSWPStorageIterationEvent

- (TSWPStorageIterationEvent)initWithType:(int)a3 providerIdentifier:(id)a4 range:(_NSRange)a5 object:(id)a6
{
  length = a5.length;
  location = a5.location;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = TSWPStorageIterationEvent;
  v14 = [(TSWPStorageIterationEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    v14->_range.location = location;
    v14->_range.length = length;
    objc_storeStrong(&v14->_identifier, a4);
    objc_storeStrong(&v15->_object, a6);
  }

  return v15;
}

+ (id)eventWithType:(int)a3 providerIdentifier:(id)a4 range:(_NSRange)a5 object:(id)a6
{
  length = a5.length;
  location = a5.location;
  v9 = *&a3;
  v10 = a4;
  v11 = a6;
  v12 = [TSWPStorageIterationEvent alloc];
  v14 = objc_msgSend_initWithType_providerIdentifier_range_object_(v12, v13, v9, v10, location, length, v11);

  return v14;
}

+ (id)characterEventWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [TSWPStorageIterationEvent alloc];
  v7 = objc_msgSend_initWithCharacterRange_(v5, v6, location, length);

  return v7;
}

- (id)description
{
  v4 = objc_msgSend_type(self, a2, v2);
  v7 = @"Unexpected";
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_14;
      }

      v23 = MEMORY[0x277CCACA8];
      v57.location = objc_msgSend_range(self, v5, v6);
      v9 = NSStringFromRange(v57);
      v12 = objc_msgSend_object(self, v24, v25);
      v15 = TSUObjectReferenceDescription();
      v20 = objc_msgSend_identifier(self, v26, v27);
      v22 = objc_msgSend_stringWithFormat_(v23, v28, @"END   %@ %@ %@", v9, v15, v20);
    }

    else
    {
      v48 = MEMORY[0x277CCACA8];
      v59.location = objc_msgSend_range(self, v5, v6);
      v9 = NSStringFromRange(v59);
      v12 = objc_msgSend_object(self, v49, v50);
      v15 = TSUObjectReferenceDescription();
      v20 = objc_msgSend_identifier(self, v51, v52);
      v22 = objc_msgSend_stringWithFormat_(v48, v53, @"START %@ %@ %@", v9, v15, v20);
    }

    goto LABEL_12;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      v36 = MEMORY[0x277CCACA8];
      v58.location = objc_msgSend_range(self, v5, v6);
      v9 = NSStringFromRange(v58);
      v12 = objc_msgSend_identifier(self, v37, v38);
      v15 = objc_msgSend_storage(self, v39, v40);
      v43 = objc_msgSend_range(self, v41, v42);
      v20 = objc_msgSend_substringWithRange_(v15, v44, v43, v44);
      v46 = objc_msgSend_characterAtIndex_(v20, v45, 0);
      v22 = objc_msgSend_stringWithFormat_(v36, v47, @"MARK  %@ %@ 0x%04x", v9, v12, v46);
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_14;
      }

      v8 = MEMORY[0x277CCACA8];
      v56.location = objc_msgSend_range(self, v5, v6);
      v9 = NSStringFromRange(v56);
      v12 = objc_msgSend_identifier(self, v10, v11);
      v15 = objc_msgSend_storage(self, v13, v14);
      v18 = objc_msgSend_range(self, v16, v17);
      v20 = objc_msgSend_substringWithRange_(v15, v19, v18, v19);
      v22 = objc_msgSend_stringWithFormat_(v8, v21, @"CHARS %@ %@ '%@'", v9, v12, v20);
    }

LABEL_12:
    v7 = v22;

    goto LABEL_13;
  }

  v29 = MEMORY[0x277CCACA8];
  v30 = objc_msgSend_range(self, v5, v6);
  v9 = objc_msgSend_object(self, v31, v32);
  v12 = TSUObjectReferenceDescription();
  v15 = objc_msgSend_identifier(self, v33, v34);
  v7 = objc_msgSend_stringWithFormat_(v29, v35, @"INDEX [%lu] %@ %@", v30, v12, v15);
LABEL_13:

LABEL_14:

  return v7;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end