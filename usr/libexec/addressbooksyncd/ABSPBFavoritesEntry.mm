@interface ABSPBFavoritesEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDictionaryKeys:(id)keys;
- (void)addDictionaryValues:(id)values;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEntryType:(BOOL)type;
- (void)setHasProperty:(BOOL)property;
- (void)writeTo:(id)to;
@end

@implementation ABSPBFavoritesEntry

- (void)setHasEntryType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasProperty:(BOOL)property
{
  if (property)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addDictionaryKeys:(id)keys
{
  keysCopy = keys;
  dictionaryKeys = self->_dictionaryKeys;
  v8 = keysCopy;
  if (!dictionaryKeys)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_dictionaryKeys;
    self->_dictionaryKeys = v6;

    keysCopy = v8;
    dictionaryKeys = self->_dictionaryKeys;
  }

  [(NSMutableArray *)dictionaryKeys addObject:keysCopy];
}

- (void)addDictionaryValues:(id)values
{
  valuesCopy = values;
  dictionaryValues = self->_dictionaryValues;
  v8 = valuesCopy;
  if (!dictionaryValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_dictionaryValues;
    self->_dictionaryValues = v6;

    valuesCopy = v8;
    dictionaryValues = self->_dictionaryValues;
  }

  [(NSMutableArray *)dictionaryValues addObject:valuesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBFavoritesEntry;
  v3 = [(ABSPBFavoritesEntry *)&v7 description];
  dictionaryRepresentation = [(ABSPBFavoritesEntry *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v16 = [NSNumber numberWithInt:self->_entryType];
    [v3 setObject:v16 forKey:@"entryType"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v17 = [NSNumber numberWithInt:self->_abIdentifier];
  [v3 setObject:v17 forKey:@"abIdentifier"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithInt:self->_property];
    [v3 setObject:v5 forKey:@"property"];
  }

LABEL_5:
  value = self->_value;
  if (value)
  {
    [v3 setObject:value forKey:@"value"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
  }

  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  actionType = self->_actionType;
  if (actionType)
  {
    [v3 setObject:actionType forKey:@"actionType"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v3 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  propertyKey = self->_propertyKey;
  if (propertyKey)
  {
    [v3 setObject:propertyKey forKey:@"propertyKey"];
  }

  dictionaryKeys = self->_dictionaryKeys;
  if (dictionaryKeys)
  {
    [v3 setObject:dictionaryKeys forKey:@"dictionaryKeys"];
  }

  dictionaryValues = self->_dictionaryValues;
  if (dictionaryValues)
  {
    [v3 setObject:dictionaryValues forKey:@"dictionaryValues"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    entryType = self->_entryType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  abIdentifier = self->_abIdentifier;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    property = self->_property;
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  if (self->_value)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_propertyKey)
  {
    PBDataWriterWriteStringField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_dictionaryKeys;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_dictionaryValues;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[12] = self->_entryType;
    *(toCopy + 104) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_abIdentifier;
  *(toCopy + 104) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[20] = self->_property;
    *(toCopy + 104) |= 4u;
  }

LABEL_5:
  v14 = toCopy;
  if (self->_value)
  {
    [toCopy setValue:?];
  }

  if (self->_name)
  {
    [v14 setName:?];
  }

  if (self->_label)
  {
    [v14 setLabel:?];
  }

  if (self->_guid)
  {
    [v14 setGuid:?];
  }

  if (self->_actionType)
  {
    [v14 setActionType:?];
  }

  if (self->_bundleIdentifier)
  {
    [v14 setBundleIdentifier:?];
  }

  if (self->_propertyKey)
  {
    [v14 setPropertyKey:?];
  }

  if ([(ABSPBFavoritesEntry *)self dictionaryKeysCount])
  {
    [v14 clearDictionaryKeys];
    dictionaryKeysCount = [(ABSPBFavoritesEntry *)self dictionaryKeysCount];
    if (dictionaryKeysCount)
    {
      v7 = dictionaryKeysCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ABSPBFavoritesEntry *)self dictionaryKeysAtIndex:i];
        [v14 addDictionaryKeys:v9];
      }
    }
  }

  if ([(ABSPBFavoritesEntry *)self dictionaryValuesCount])
  {
    [v14 clearDictionaryValues];
    dictionaryValuesCount = [(ABSPBFavoritesEntry *)self dictionaryValuesCount];
    if (dictionaryValuesCount)
    {
      v11 = dictionaryValuesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(ABSPBFavoritesEntry *)self dictionaryValuesAtIndex:j];
        [v14 addDictionaryValues:v13];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_entryType;
    *(v5 + 104) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 2) = self->_abIdentifier;
  *(v5 + 104) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 20) = self->_property;
    *(v5 + 104) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_value copyWithZone:zone];
  v9 = v6[12];
  v6[12] = v8;

  v10 = [(NSString *)self->_name copyWithZone:zone];
  v11 = v6[9];
  v6[9] = v10;

  v12 = [(NSString *)self->_label copyWithZone:zone];
  v13 = v6[8];
  v6[8] = v12;

  v14 = [(NSString *)self->_guid copyWithZone:zone];
  v15 = v6[7];
  v6[7] = v14;

  v16 = [(NSString *)self->_actionType copyWithZone:zone];
  v17 = v6[2];
  v6[2] = v16;

  v18 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v19 = v6[3];
  v6[3] = v18;

  v20 = [(NSString *)self->_propertyKey copyWithZone:zone];
  v21 = v6[11];
  v6[11] = v20;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = self->_dictionaryKeys;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v39 + 1) + 8 * i) copyWithZone:zone];
        [v6 addDictionaryKeys:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v24);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_dictionaryValues;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v35 + 1) + 8 * j) copyWithZone:{zone, v35}];
        [v6 addDictionaryValues:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v30);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = *(equalCopy + 104);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 104) & 2) == 0 || self->_entryType != *(equalCopy + 12))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 104) & 2) != 0)
  {
LABEL_35:
    v15 = 0;
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 104) & 1) == 0 || self->_abIdentifier != *(equalCopy + 2))
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 104))
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 104) & 4) == 0 || self->_property != *(equalCopy + 20))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 104) & 4) != 0)
  {
    goto LABEL_35;
  }

  value = self->_value;
  if (value | *(equalCopy + 12) && ![(NSString *)value isEqual:?])
  {
    goto LABEL_35;
  }

  name = self->_name;
  if (name | *(equalCopy + 9))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_35;
    }
  }

  label = self->_label;
  if (label | *(equalCopy + 8))
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_35;
    }
  }

  guid = self->_guid;
  if (guid | *(equalCopy + 7))
  {
    if (![(NSString *)guid isEqual:?])
    {
      goto LABEL_35;
    }
  }

  actionType = self->_actionType;
  if (actionType | *(equalCopy + 2))
  {
    if (![(NSString *)actionType isEqual:?])
    {
      goto LABEL_35;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_35;
    }
  }

  propertyKey = self->_propertyKey;
  if (propertyKey | *(equalCopy + 11))
  {
    if (![(NSString *)propertyKey isEqual:?])
    {
      goto LABEL_35;
    }
  }

  dictionaryKeys = self->_dictionaryKeys;
  if (dictionaryKeys | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)dictionaryKeys isEqual:?])
    {
      goto LABEL_35;
    }
  }

  dictionaryValues = self->_dictionaryValues;
  if (dictionaryValues | *(equalCopy + 5))
  {
    v15 = [(NSMutableArray *)dictionaryValues isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_36:

  return v15;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_entryType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_abIdentifier;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_property;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_value hash];
  v7 = [(NSString *)self->_name hash];
  v8 = v6 ^ v7 ^ [(NSString *)self->_label hash];
  v9 = [(NSString *)self->_guid hash];
  v10 = v9 ^ [(NSString *)self->_actionType hash];
  v11 = v8 ^ v10 ^ [(NSString *)self->_bundleIdentifier hash];
  v12 = [(NSString *)self->_propertyKey hash];
  v13 = v12 ^ [(NSMutableArray *)self->_dictionaryKeys hash];
  return v11 ^ v13 ^ [(NSMutableArray *)self->_dictionaryValues hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 104);
  if ((v6 & 2) != 0)
  {
    self->_entryType = fromCopy[12];
    *&self->_has |= 2u;
    v6 = *(fromCopy + 104);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((fromCopy[26] & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_abIdentifier = fromCopy[2];
  *&self->_has |= 1u;
  if ((fromCopy[26] & 4) != 0)
  {
LABEL_4:
    self->_property = fromCopy[20];
    *&self->_has |= 4u;
  }

LABEL_5:
  if (*(fromCopy + 12))
  {
    [(ABSPBFavoritesEntry *)self setValue:?];
  }

  if (*(v5 + 9))
  {
    [(ABSPBFavoritesEntry *)self setName:?];
  }

  if (*(v5 + 8))
  {
    [(ABSPBFavoritesEntry *)self setLabel:?];
  }

  if (*(v5 + 7))
  {
    [(ABSPBFavoritesEntry *)self setGuid:?];
  }

  if (*(v5 + 2))
  {
    [(ABSPBFavoritesEntry *)self setActionType:?];
  }

  if (*(v5 + 3))
  {
    [(ABSPBFavoritesEntry *)self setBundleIdentifier:?];
  }

  if (*(v5 + 11))
  {
    [(ABSPBFavoritesEntry *)self setPropertyKey:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(v5 + 4);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ABSPBFavoritesEntry *)self addDictionaryKeys:*(*(&v21 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(v5 + 5);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(ABSPBFavoritesEntry *)self addDictionaryValues:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

@end