@interface SIRINLUEXTERNALEntityCandidate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAnnotations:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALEntityCandidate

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  entity = self->_entity;
  v6 = *(v4 + 3);
  if (entity)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUsoGraph *)entity mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALEntityCandidate *)self setEntity:?];
  }

  score = self->_score;
  v8 = *(v4 + 7);
  if (score)
  {
    if (v8)
    {
      [(SIRICOMMONDoubleValue *)score mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALEntityCandidate *)self setScore:?];
  }

  entityId = self->_entityId;
  v10 = *(v4 + 4);
  if (entityId)
  {
    if (v10)
    {
      [(SIRICOMMONStringValue *)entityId mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUEXTERNALEntityCandidate *)self setEntityId:?];
  }

  appBundleId = self->_appBundleId;
  v12 = *(v4 + 2);
  if (appBundleId)
  {
    if (v12)
    {
      [(SIRICOMMONStringValue *)appBundleId mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SIRINLUEXTERNALEntityCandidate *)self setAppBundleId:?];
  }

  groupId = self->_groupId;
  v14 = *(v4 + 5);
  if (groupId)
  {
    if (v14)
    {
      [(SIRINLUEXTERNALRRGroupIdentifier *)groupId mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SIRINLUEXTERNALEntityCandidate *)self setGroupId:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = *(v4 + 1);
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(SIRINLUEXTERNALEntityCandidate *)self addAnnotations:*(*(&v23 + 1) + 8 * i), v23];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  metadata = self->_metadata;
  v21 = *(v4 + 6);
  if (metadata)
  {
    if (v21)
    {
      [(SIRINLUEXTERNALRRMetadata *)metadata mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(SIRINLUEXTERNALEntityCandidate *)self setMetadata:?];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUsoGraph *)self->_entity hash];
  v4 = [(SIRICOMMONDoubleValue *)self->_score hash]^ v3;
  v5 = [(SIRICOMMONStringValue *)self->_entityId hash];
  v6 = v4 ^ v5 ^ [(SIRICOMMONStringValue *)self->_appBundleId hash];
  v7 = [(SIRINLUEXTERNALRRGroupIdentifier *)self->_groupId hash];
  v8 = v7 ^ [(NSMutableArray *)self->_annotations hash];
  return v6 ^ v8 ^ [(SIRINLUEXTERNALRRMetadata *)self->_metadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((entity = self->_entity, !(entity | v4[3])) || -[SIRINLUEXTERNALUsoGraph isEqual:](entity, "isEqual:")) && ((score = self->_score, !(score | v4[7])) || -[SIRICOMMONDoubleValue isEqual:](score, "isEqual:")) && ((entityId = self->_entityId, !(entityId | v4[4])) || -[SIRICOMMONStringValue isEqual:](entityId, "isEqual:")) && ((appBundleId = self->_appBundleId, !(appBundleId | v4[2])) || -[SIRICOMMONStringValue isEqual:](appBundleId, "isEqual:")) && ((groupId = self->_groupId, !(groupId | v4[5])) || -[SIRINLUEXTERNALRRGroupIdentifier isEqual:](groupId, "isEqual:")) && ((annotations = self->_annotations, !(annotations | v4[1])) || -[NSMutableArray isEqual:](annotations, "isEqual:")))
  {
    metadata = self->_metadata;
    if (metadata | v4[6])
    {
      v12 = [(SIRINLUEXTERNALRRMetadata *)metadata isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUsoGraph *)self->_entity copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(SIRICOMMONDoubleValue *)self->_score copyWithZone:a3];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(SIRICOMMONStringValue *)self->_entityId copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(SIRICOMMONStringValue *)self->_appBundleId copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(SIRINLUEXTERNALRRGroupIdentifier *)self->_groupId copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = self->_annotations;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v26 + 1) + 8 * v20) copyWithZone:{a3, v26}];
        [v5 addAnnotations:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  v22 = [(SIRINLUEXTERNALRRMetadata *)self->_metadata copyWithZone:a3];
  v23 = v5[6];
  v5[6] = v22;

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_entity)
  {
    [v8 setEntity:?];
  }

  if (self->_score)
  {
    [v8 setScore:?];
  }

  if (self->_entityId)
  {
    [v8 setEntityId:?];
  }

  if (self->_appBundleId)
  {
    [v8 setAppBundleId:?];
  }

  if (self->_groupId)
  {
    [v8 setGroupId:?];
  }

  if ([(SIRINLUEXTERNALEntityCandidate *)self annotationsCount])
  {
    [v8 clearAnnotations];
    v4 = [(SIRINLUEXTERNALEntityCandidate *)self annotationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALEntityCandidate *)self annotationsAtIndex:i];
        [v8 addAnnotations:v7];
      }
    }
  }

  if (self->_metadata)
  {
    [v8 setMetadata:?];
  }
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_entity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_score)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_entityId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appBundleId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_groupId)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_annotations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  entity = self->_entity;
  if (entity)
  {
    v5 = [(SIRINLUEXTERNALUsoGraph *)entity dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"entity"];
  }

  score = self->_score;
  if (score)
  {
    v7 = [(SIRICOMMONDoubleValue *)score dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"score"];
  }

  entityId = self->_entityId;
  if (entityId)
  {
    v9 = [(SIRICOMMONStringValue *)entityId dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"entity_id"];
  }

  appBundleId = self->_appBundleId;
  if (appBundleId)
  {
    v11 = [(SIRICOMMONStringValue *)appBundleId dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"app_bundle_id"];
  }

  groupId = self->_groupId;
  if (groupId)
  {
    v13 = [(SIRINLUEXTERNALRRGroupIdentifier *)groupId dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"group_id"];
  }

  if ([(NSMutableArray *)self->_annotations count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_annotations, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = self->_annotations;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"annotations"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    v22 = [(SIRINLUEXTERNALRRMetadata *)metadata dictionaryRepresentation];
    [v3 setObject:v22 forKey:@"metadata"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALEntityCandidate;
  v4 = [(SIRINLUEXTERNALEntityCandidate *)&v8 description];
  v5 = [(SIRINLUEXTERNALEntityCandidate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addAnnotations:(id)a3
{
  v4 = a3;
  annotations = self->_annotations;
  v8 = v4;
  if (!annotations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_annotations;
    self->_annotations = v6;

    v4 = v8;
    annotations = self->_annotations;
  }

  [(NSMutableArray *)annotations addObject:v4];
}

@end