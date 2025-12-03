@interface TSPObjectContextDeterministicUUIDSet
- (BOOL)addEntryForIdentifier:(int64_t)identifier offset:(unint64_t)offset;
@end

@implementation TSPObjectContextDeterministicUUIDSet

- (BOOL)addEntryForIdentifier:(int64_t)identifier offset:(unint64_t)offset
{
  if (!offset)
  {
    if (objc_msgSend_containsIndex_(self->_identifiers, a2, identifier))
    {
      return 0;
    }

    identifiers = self->_identifiers;
    if (identifiers)
    {
      objc_msgSend_addIndex_(identifiers, v12, identifier);
    }

    else
    {
      v25 = objc_alloc(MEMORY[0x277CCAB58]);
      v27 = objc_msgSend_initWithIndex_(v25, v26, identifier);
      v28 = self->_identifiers;
      self->_identifiers = v27;
    }

    return 1;
  }

  offsetsPerIdentifier = self->_offsetsPerIdentifier;
  if (!offsetsPerIdentifier)
  {
    Mutable = CFDictionaryCreateMutable(0, 1, 0, MEMORY[0x277CBF150]);
    v15 = self->_offsetsPerIdentifier;
    self->_offsetsPerIdentifier = Mutable;

    v16 = self->_offsetsPerIdentifier;
    v17 = objc_alloc(MEMORY[0x277CCAB58]);
    v19 = objc_msgSend_initWithIndex_(v17, v18, offset);
    CFDictionarySetValue(v16, identifier, v19);

    return 1;
  }

  v8 = CFDictionaryGetValue(offsetsPerIdentifier, identifier);
  v11 = objc_msgSend_containsIndex_(v8, v9, offset);
  if ((v11 & 1) == 0)
  {
    if (v8)
    {
      objc_msgSend_addIndex_(v8, v10, offset);
    }

    else
    {
      v21 = self->_offsetsPerIdentifier;
      v22 = objc_alloc(MEMORY[0x277CCAB58]);
      v24 = objc_msgSend_initWithIndex_(v22, v23, offset);
      CFDictionarySetValue(v21, identifier, v24);
    }
  }

  v13 = v11 ^ 1;

  return v13;
}

@end