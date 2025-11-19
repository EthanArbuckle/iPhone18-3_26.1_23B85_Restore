@interface TSPObjectContextDeterministicUUIDSet
- (BOOL)addEntryForIdentifier:(int64_t)a3 offset:(unint64_t)a4;
@end

@implementation TSPObjectContextDeterministicUUIDSet

- (BOOL)addEntryForIdentifier:(int64_t)a3 offset:(unint64_t)a4
{
  if (!a4)
  {
    if (objc_msgSend_containsIndex_(self->_identifiers, a2, a3))
    {
      return 0;
    }

    identifiers = self->_identifiers;
    if (identifiers)
    {
      objc_msgSend_addIndex_(identifiers, v12, a3);
    }

    else
    {
      v25 = objc_alloc(MEMORY[0x277CCAB58]);
      v27 = objc_msgSend_initWithIndex_(v25, v26, a3);
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
    v19 = objc_msgSend_initWithIndex_(v17, v18, a4);
    CFDictionarySetValue(v16, a3, v19);

    return 1;
  }

  v8 = CFDictionaryGetValue(offsetsPerIdentifier, a3);
  v11 = objc_msgSend_containsIndex_(v8, v9, a4);
  if ((v11 & 1) == 0)
  {
    if (v8)
    {
      objc_msgSend_addIndex_(v8, v10, a4);
    }

    else
    {
      v21 = self->_offsetsPerIdentifier;
      v22 = objc_alloc(MEMORY[0x277CCAB58]);
      v24 = objc_msgSend_initWithIndex_(v22, v23, a4);
      CFDictionarySetValue(v21, a3, v24);
    }
  }

  v13 = v11 ^ 1;

  return v13;
}

@end