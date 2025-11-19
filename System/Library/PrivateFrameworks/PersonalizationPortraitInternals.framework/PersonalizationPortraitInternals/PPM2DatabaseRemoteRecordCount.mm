@interface PPM2DatabaseRemoteRecordCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2DatabaseRemoteRecordCount

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[8])
  {
    self->_schemaVersion = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(PPM2DatabaseRemoteRecordCount *)self setTableName:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(PPM2DatabaseRemoteRecordCount *)self setActiveTreatments:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_schemaVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_tableName hash]^ v3;
  return v4 ^ [(NSString *)self->_activeTreatments hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_schemaVersion != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  tableName = self->_tableName;
  if (tableName | *(v4 + 3) && ![(NSString *)tableName isEqual:?])
  {
    goto LABEL_11;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1))
  {
    v8 = [(NSString *)activeTreatments isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_schemaVersion;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_tableName copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_schemaVersion;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_tableName)
  {
    [v4 setTableName:?];
    v4 = v5;
  }

  if (self->_activeTreatments)
  {
    [v5 setActiveTreatments:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    schemaVersion = self->_schemaVersion;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_tableName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_schemaVersion];
    [v3 setObject:v4 forKey:@"schemaVersion"];
  }

  tableName = self->_tableName;
  if (tableName)
  {
    [v3 setObject:tableName forKey:@"tableName"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v3 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2DatabaseRemoteRecordCount;
  v4 = [(PPM2DatabaseRemoteRecordCount *)&v8 description];
  v5 = [(PPM2DatabaseRemoteRecordCount *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end