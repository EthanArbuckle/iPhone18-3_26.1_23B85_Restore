@interface PAPBAccess
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)kind;
- (unint64_t)hash;
- (void)addAssetIdentifiers:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAccessCount:(BOOL)a3;
- (void)setHasKind:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PAPBAccess

- (int)kind
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_kind;
  }

  else
  {
    return 0;
  }
}

- (void)setHasKind:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addAssetIdentifiers:(id)a3
{
  v4 = a3;
  assetIdentifiers = self->_assetIdentifiers;
  v8 = v4;
  if (!assetIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_assetIdentifiers;
    self->_assetIdentifiers = v6;

    v4 = v8;
    assetIdentifiers = self->_assetIdentifiers;
  }

  [(NSMutableArray *)assetIdentifiers addObject:v4];
}

- (void)setHasAccessCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PAPBAccess;
  v4 = [(PAPBAccess *)&v8 description];
  v5 = [(PAPBAccess *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  accessor = self->_accessor;
  if (accessor)
  {
    v5 = [(PAPBApplication *)accessor dictionaryRepresentation];
    [v3 setObject:v5 forKeyedSubscript:@"accessor"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_kind];
    [v3 setObject:v8 forKeyedSubscript:@"kind"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampAdjustment];
    [v3 setObject:v9 forKeyedSubscript:@"timestampAdjustment"];
  }

  assetIdentifiers = self->_assetIdentifiers;
  if (assetIdentifiers)
  {
    [v3 setObject:assetIdentifiers forKeyedSubscript:@"assetIdentifiers"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_accessCount];
    [v3 setObject:v11 forKeyedSubscript:@"accessCount"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_accessor)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    kind = self->_kind;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    timestampAdjustment = self->_timestampAdjustment;
    PBDataWriterWriteDoubleField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_assetIdentifiers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteDataField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 2) != 0)
  {
    accessCount = self->_accessCount;
    PBDataWriterWriteInt32Field();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PAPBApplication *)self->_accessor copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_identifier copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 48) = self->_kind;
    *(v5 + 52) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_timestampAdjustment;
    *(v5 + 52) |= 1u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_assetIdentifiers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [v5 addAssetIdentifiers:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_accessCount;
    *(v5 + 52) |= 2u;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  accessor = self->_accessor;
  if (accessor | *(v4 + 3))
  {
    if (![(PAPBApplication *)accessor isEqual:?])
    {
      goto LABEL_23;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 5))
  {
    if (![(NSData *)identifier isEqual:?])
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  v8 = *(v4 + 52);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_kind != *(v4 + 12))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_timestampAdjustment != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_23;
  }

  assetIdentifiers = self->_assetIdentifiers;
  if (assetIdentifiers | *(v4 + 4))
  {
    if (![(NSMutableArray *)assetIdentifiers isEqual:?])
    {
LABEL_23:
      v10 = 0;
      goto LABEL_24;
    }

    has = self->_has;
  }

  v10 = (*(v4 + 52) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_accessCount != *(v4 + 4))
    {
      goto LABEL_23;
    }

    v10 = 1;
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(PAPBApplication *)self->_accessor hash];
  v4 = [(NSData *)self->_identifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_kind;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  timestampAdjustment = self->_timestampAdjustment;
  if (timestampAdjustment < 0.0)
  {
    timestampAdjustment = -timestampAdjustment;
  }

  *v5.i64 = floor(timestampAdjustment + 0.5);
  v9 = (timestampAdjustment - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_9:
  v12 = [(NSMutableArray *)self->_assetIdentifiers hash];
  if ((*&self->_has & 2) != 0)
  {
    v13 = 2654435761 * self->_accessCount;
  }

  else
  {
    v13 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  accessor = self->_accessor;
  v6 = *(v4 + 3);
  if (accessor)
  {
    if (v6)
    {
      [(PAPBApplication *)accessor mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PAPBAccess *)self setAccessor:?];
  }

  if (*(v4 + 5))
  {
    [(PAPBAccess *)self setIdentifier:?];
  }

  v7 = *(v4 + 52);
  if ((v7 & 4) != 0)
  {
    self->_kind = *(v4 + 12);
    *&self->_has |= 4u;
    v7 = *(v4 + 52);
  }

  if (v7)
  {
    self->_timestampAdjustment = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(v4 + 4);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(PAPBAccess *)self addAssetIdentifiers:*(*(&v14 + 1) + 8 * i), v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  if ((*(v4 + 52) & 2) != 0)
  {
    self->_accessCount = *(v4 + 4);
    *&self->_has |= 2u;
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end