@interface SIRINLUINTERNALUtteranceRule
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)addSpansForNamedCaptureGroups:(id)groups;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALUtteranceRule

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(SIRINLUINTERNALUtteranceRule *)self setPattern:?];
  }

  if (*(fromCopy + 36))
  {
    self->_type = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  compareOptions = self->_compareOptions;
  v6 = *(fromCopy + 1);
  if (compareOptions)
  {
    if (v6)
    {
      [(SIRINLUINTERNALCompareOptions *)compareOptions mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALUtteranceRule *)self setCompareOptions:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUINTERNALUtteranceRule *)self addSpansForNamedCaptureGroups:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_pattern hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(SIRINLUINTERNALCompareOptions *)self->_compareOptions hash];
  return v5 ^ v6 ^ [(NSMutableArray *)self->_spansForNamedCaptureGroups hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  pattern = self->_pattern;
  if (pattern | *(equalCopy + 2))
  {
    if (![(NSString *)pattern isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_type != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  compareOptions = self->_compareOptions;
  if (compareOptions | *(equalCopy + 1) && ![(SIRINLUINTERNALCompareOptions *)compareOptions isEqual:?])
  {
    goto LABEL_13;
  }

  spansForNamedCaptureGroups = self->_spansForNamedCaptureGroups;
  if (spansForNamedCaptureGroups | *(equalCopy + 3))
  {
    v9 = [(NSMutableArray *)spansForNamedCaptureGroups isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_pattern copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_type;
    *(v5 + 36) |= 1u;
  }

  v8 = [(SIRINLUINTERNALCompareOptions *)self->_compareOptions copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_spansForNamedCaptureGroups;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{zone, v18}];
        [v5 addSpansForNamedCaptureGroups:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_pattern)
  {
    [toCopy setPattern:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_type;
    *(toCopy + 36) |= 1u;
  }

  if (self->_compareOptions)
  {
    [v9 setCompareOptions:?];
  }

  if ([(SIRINLUINTERNALUtteranceRule *)self spansForNamedCaptureGroupsCount])
  {
    [v9 clearSpansForNamedCaptureGroups];
    spansForNamedCaptureGroupsCount = [(SIRINLUINTERNALUtteranceRule *)self spansForNamedCaptureGroupsCount];
    if (spansForNamedCaptureGroupsCount)
    {
      v6 = spansForNamedCaptureGroupsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUINTERNALUtteranceRule *)self spansForNamedCaptureGroupsAtIndex:i];
        [v9 addSpansForNamedCaptureGroups:v8];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_pattern)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_compareOptions)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_spansForNamedCaptureGroups;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  pattern = self->_pattern;
  if (pattern)
  {
    [dictionary setObject:pattern forKey:@"pattern"];
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v7 = off_1E8327EB8[type];
    }

    [v4 setObject:v7 forKey:@"type"];
  }

  compareOptions = self->_compareOptions;
  if (compareOptions)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALCompareOptions *)compareOptions dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"compare_options"];
  }

  if ([(NSMutableArray *)self->_spansForNamedCaptureGroups count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_spansForNamedCaptureGroups, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_spansForNamedCaptureGroups;
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation2];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"spans_for_named_capture_groups"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALUtteranceRule;
  v4 = [(SIRINLUINTERNALUtteranceRule *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALUtteranceRule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addSpansForNamedCaptureGroups:(id)groups
{
  groupsCopy = groups;
  spansForNamedCaptureGroups = self->_spansForNamedCaptureGroups;
  v8 = groupsCopy;
  if (!spansForNamedCaptureGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_spansForNamedCaptureGroups;
    self->_spansForNamedCaptureGroups = v6;

    groupsCopy = v8;
    spansForNamedCaptureGroups = self->_spansForNamedCaptureGroups;
  }

  [(NSMutableArray *)spansForNamedCaptureGroups addObject:groupsCopy];
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"COMPARISON_TYPE_UNSPECIFIED"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"COMPARISON_TYPE_EXACT_LITERAL"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"COMPARISON_TYPE_REGULAR_EXPRESSION"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

@end