@interface ATXPBShortcutsEditorEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSuggestionUUIDs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBShortcutsEditorEvent

- (void)setHasEventType:(BOOL)a3
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

- (void)addSuggestionUUIDs:(id)a3
{
  v4 = a3;
  suggestionUUIDs = self->_suggestionUUIDs;
  v8 = v4;
  if (!suggestionUUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_suggestionUUIDs;
    self->_suggestionUUIDs = v6;

    v4 = v8;
    suggestionUUIDs = self->_suggestionUUIDs;
  }

  [(NSMutableArray *)suggestionUUIDs addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBShortcutsEditorEvent;
  v4 = [(ATXPBShortcutsEditorEvent *)&v8 description];
  v5 = [(ATXPBShortcutsEditorEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_date];
    [v3 setObject:v5 forKey:@"date"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_eventType];
    [v3 setObject:v6 forKey:@"eventType"];
  }

  blendingCacheId = self->_blendingCacheId;
  if (blendingCacheId)
  {
    [v3 setObject:blendingCacheId forKey:@"blendingCacheId"];
  }

  suggestionUUIDs = self->_suggestionUUIDs;
  if (suggestionUUIDs)
  {
    [v3 setObject:suggestionUUIDs forKey:@"suggestionUUIDs"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    v10 = [(ATXPBShortcutsEditorEventMetadata *)metadata dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"metadata"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    eventType = self->_eventType;
    PBDataWriterWriteUint64Field();
  }

  if (self->_blendingCacheId)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_suggestionUUIDs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = *&self->_date;
    *(v4 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[2] = self->_eventType;
    *(v4 + 48) |= 2u;
  }

  v10 = v4;
  if (self->_blendingCacheId)
  {
    [v4 setBlendingCacheId:?];
  }

  if ([(ATXPBShortcutsEditorEvent *)self suggestionUUIDsCount])
  {
    [v10 clearSuggestionUUIDs];
    v6 = [(ATXPBShortcutsEditorEvent *)self suggestionUUIDsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ATXPBShortcutsEditorEvent *)self suggestionUUIDsAtIndex:i];
        [v10 addSuggestionUUIDs:v9];
      }
    }
  }

  if (self->_metadata)
  {
    [v10 setMetadata:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_eventType;
    *(v5 + 48) |= 2u;
  }

  v8 = [(NSString *)self->_blendingCacheId copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_suggestionUUIDs;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{a3, v20}];
        [v6 addSuggestionUUIDs:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v16 = [(ATXPBShortcutsEditorEventMetadata *)self->_metadata copyWithZone:a3];
  v17 = v6[4];
  v6[4] = v16;

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_eventType != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_18;
  }

  blendingCacheId = self->_blendingCacheId;
  if (blendingCacheId | *(v4 + 3) && ![(NSString *)blendingCacheId isEqual:?])
  {
    goto LABEL_18;
  }

  suggestionUUIDs = self->_suggestionUUIDs;
  if (suggestionUUIDs | *(v4 + 5))
  {
    if (![(NSMutableArray *)suggestionUUIDs isEqual:?])
    {
      goto LABEL_18;
    }
  }

  metadata = self->_metadata;
  if (metadata | *(v4 + 4))
  {
    v9 = [(ATXPBShortcutsEditorEventMetadata *)metadata isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v2.i64 = floor(date + 0.5);
    v7 = (date - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761u * self->_eventType;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 ^ v5 ^ [(NSString *)self->_blendingCacheId hash];
  v11 = [(NSMutableArray *)self->_suggestionUUIDs hash];
  return v10 ^ v11 ^ [(ATXPBShortcutsEditorEventMetadata *)self->_metadata hash];
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 48);
  if (v6)
  {
    self->_date = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 48);
  }

  if ((v6 & 2) != 0)
  {
    self->_eventType = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    [(ATXPBShortcutsEditorEvent *)self setBlendingCacheId:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5[5];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ATXPBShortcutsEditorEvent *)self addSuggestionUUIDs:*(*(&v15 + 1) + 8 * i), v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  metadata = self->_metadata;
  v13 = v5[4];
  if (metadata)
  {
    if (v13)
    {
      [(ATXPBShortcutsEditorEventMetadata *)metadata mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(ATXPBShortcutsEditorEvent *)self setMetadata:?];
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end