@interface ADFeature
- (BOOL)isEqual:(id)a3;
- (double)doubleValueAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStringValue:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ADFeature

- (void)dealloc
{
  PBRepeatedDoubleClear();
  v3.receiver = self;
  v3.super_class = ADFeature;
  [(ADFeature *)&v3 dealloc];
}

- (double)doubleValueAtIndex:(unint64_t)a3
{
  p_doubleValues = &self->_doubleValues;
  count = self->_doubleValues.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"idx (%tu) is out of range (%tu)", a3, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_doubleValues->list[a3];
}

- (void)addStringValue:(id)a3
{
  v4 = a3;
  stringValues = self->_stringValues;
  v8 = v4;
  if (!stringValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_stringValues;
    self->_stringValues = v6;

    v4 = v8;
    stringValues = self->_stringValues;
  }

  objc_msgSend_addObject_(stringValues, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ADFeature;
  v4 = [(ADFeature *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  version = self->_version;
  if (version)
  {
    objc_msgSend_setObject_forKey_(v4, v5, version, @"version");
  }

  v8 = PBRepeatedDoubleNSArray();
  objc_msgSend_setObject_forKey_(v6, v9, v8, @"doubleValue");

  stringValues = self->_stringValues;
  if (stringValues)
  {
    objc_msgSend_setObject_forKey_(v6, v10, stringValues, @"stringValue");
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_setObject_forKey_(v6, v10, name, @"name");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_doubleValues.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_doubleValues.list[v5];
      PBDataWriterWriteDoubleField();
      ++v5;
    }

    while (v5 < self->_doubleValues.count);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_stringValues;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v16, v20, 16);
    }

    while (v10);
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v25 = a3;
  version = self->_version;
  if (version)
  {
    objc_msgSend_setVersion_(v25, v4, version);
  }

  if (objc_msgSend_doubleValuesCount(self, v4, version))
  {
    objc_msgSend_clearDoubleValues(v25, v6, v7);
    v10 = objc_msgSend_doubleValuesCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        objc_msgSend_doubleValueAtIndex_(self, v6, i);
        objc_msgSend_addDoubleValue_(v25, v13, v14);
      }
    }
  }

  if (objc_msgSend_stringValuesCount(self, v6, v7))
  {
    objc_msgSend_clearStringValues(v25, v15, v16);
    v19 = objc_msgSend_stringValuesCount(self, v17, v18);
    if (v19)
    {
      v20 = v19;
      for (j = 0; j != v20; ++j)
      {
        v22 = objc_msgSend_stringValueAtIndex_(self, v15, j);
        objc_msgSend_addStringValue_(v25, v23, v22);
      }
    }
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_setName_(v25, v15, name);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_version, v11, a3);
  v13 = v10[6];
  v10[6] = v12;

  PBRepeatedDoubleCopy();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_stringValues;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v28, v32, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v29;
    do
    {
      v20 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v28 + 1) + 8 * v20), v17, a3, v28);
        objc_msgSend_addStringValue_(v10, v22, v21);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v28, v32, 16);
    }

    while (v18);
  }

  v24 = objc_msgSend_copyWithZone_(self->_name, v23, a3);
  v25 = v10[4];
  v10[4] = v24;

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((version = self->_version, v9 = v4[6], !(version | v9)) || objc_msgSend_isEqual_(version, v7, v9)) && PBRepeatedDoubleIsEqual() && ((stringValues = self->_stringValues, v12 = v4[5], !(stringValues | v12)) || objc_msgSend_isEqual_(stringValues, v10, v12)))
  {
    name = self->_name;
    v14 = v4[4];
    if (name | v14)
    {
      isEqual = objc_msgSend_isEqual_(name, v10, v14);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_version, a2, v2);
  v5 = PBRepeatedDoubleHash() ^ v4;
  v8 = objc_msgSend_hash(self->_stringValues, v6, v7);
  return v5 ^ v8 ^ objc_msgSend_hash(self->_name, v9, v10);
}

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(v5 + 6);
  if (v6)
  {
    objc_msgSend_setVersion_(self, v4, v6);
  }

  v7 = objc_msgSend_doubleValuesCount(v5, v4, v6);
  if (v7)
  {
    v9 = v7;
    for (i = 0; i != v9; ++i)
    {
      objc_msgSend_doubleValueAtIndex_(v5, v8, i);
      objc_msgSend_addDoubleValue_(self, v11, v12);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = *(v5 + 5);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v23, v27, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_addStringValue_(self, v16, *(*(&v23 + 1) + 8 * j), v23);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v23, v27, 16);
    }

    while (v17);
  }

  v21 = *(v5 + 4);
  if (v21)
  {
    objc_msgSend_setName_(self, v20, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end