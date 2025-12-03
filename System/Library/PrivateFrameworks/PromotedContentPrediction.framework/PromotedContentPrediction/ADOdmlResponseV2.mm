@interface ADOdmlResponseV2
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFeatures:(id)features;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ADOdmlResponseV2

- (void)addFeatures:(id)features
{
  featuresCopy = features;
  features = self->_features;
  v8 = featuresCopy;
  if (!features)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_features;
    self->_features = v6;

    featuresCopy = v8;
    features = self->_features;
  }

  objc_msgSend_addObject_(features, featuresCopy, featuresCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ADOdmlResponseV2;
  v4 = [(ADOdmlResponseV2 *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_odmlEnabled);
    objc_msgSend_setObject_forKey_(v6, v8, v7, @"odmlEnabled");
  }

  if (objc_msgSend_count(self->_features, v4, v5))
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v12 = objc_msgSend_count(self->_features, v10, v11);
    v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = self->_features;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v28, v32, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = objc_msgSend_dictionaryRepresentation(*(*(&v28 + 1) + 8 * i), v18, v19, v28);
          objc_msgSend_addObject_(v14, v24, v23);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v28, v32, 16);
      }

      while (v20);
    }

    objc_msgSend_setObject_forKey_(v6, v25, v14, @"features");
  }

  v26 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    odmlEnabled = self->_odmlEnabled;
    PBDataWriterWriteBOOLField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_features;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v15, v19, 16);
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[16] = self->_odmlEnabled;
    toCopy[20] |= 1u;
  }

  v17 = toCopy;
  if (objc_msgSend_featuresCount(self, v5, v6))
  {
    objc_msgSend_clearFeatures(v17, v7, v8);
    v11 = objc_msgSend_featuresCount(self, v9, v10);
    if (v11)
    {
      v13 = v11;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_featuresAtIndex_(self, v12, i);
        objc_msgSend_addFeatures_(v17, v16, v15);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v11 = v10;
  if (*&self->_has)
  {
    *(v10 + 16) = self->_odmlEnabled;
    *(v10 + 20) |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_features;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v23, v27, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = objc_msgSend_copyWithZone_(*(*(&v23 + 1) + 8 * v18), v15, zone, v23);
        objc_msgSend_addFeatures_(v11, v20, v19);

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v23, v27, 16);
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_7;
  }

  v8 = *(equalCopy + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(equalCopy + 16);
  if (!self->_odmlEnabled)
  {
LABEL_3:
    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    isEqual = 0;
    goto LABEL_8;
  }

  if ((equalCopy[2] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  features = self->_features;
  v10 = equalCopy[1];
  if (features | v10)
  {
    isEqual = objc_msgSend_isEqual_(features, v7, v10);
  }

  else
  {
    isEqual = 1;
  }

LABEL_8:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_odmlEnabled;
  }

  else
  {
    v3 = 0;
  }

  return objc_msgSend_hash(self->_features, a2, v2) ^ v3;
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 20))
  {
    self->_odmlEnabled = *(fromCopy + 16);
    *&self->_has |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(fromCopy + 1);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_addFeatures_(self, v9, *(*(&v14 + 1) + 8 * v12++), v14);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v14, v18, 16);
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end