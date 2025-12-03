@interface ICIAMMessageRule
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)ruleOperatorAsString:(int)string;
- (id)typeAsString:(int)string;
- (int)StringAsRuleOperator:(id)operator;
- (int)StringAsType:(id)type;
- (int)ruleOperator;
- (int)type;
- (unint64_t)hash;
- (void)addSubrules:(id)subrules;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ICIAMMessageRule

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(ICIAMMessageRule *)self setIdentifier:?];
  }

  v5 = *(fromCopy + 60);
  if ((v5 & 2) != 0)
  {
    self->_type = *(fromCopy + 14);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 60);
  }

  if (v5)
  {
    self->_ruleOperator = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(fromCopy + 4);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ICIAMMessageRule *)self addSubrules:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  triggerCondition = self->_triggerCondition;
  v12 = *(fromCopy + 5);
  if (triggerCondition)
  {
    if (v12)
    {
      [(ICIAMTriggerCondition *)triggerCondition mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(ICIAMMessageRule *)self setTriggerCondition:?];
  }

  if (*(fromCopy + 6))
  {
    [(ICIAMMessageRule *)self setTriggerEventName:?];
  }

  if (*(fromCopy + 2))
  {
    [(ICIAMMessageRule *)self setRequiredApplicationContextBundleIdentifier:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_type;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_ruleOperator;
LABEL_6:
  v6 = v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_subrules hash];
  v7 = [(ICIAMTriggerCondition *)self->_triggerCondition hash];
  v8 = v7 ^ [(NSString *)self->_triggerEventName hash];
  return v6 ^ v8 ^ [(NSString *)self->_requiredApplicationContextBundleIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 1))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_type != *(equalCopy + 14))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_ruleOperator != *(equalCopy + 6))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_22;
  }

  subrules = self->_subrules;
  if (subrules | *(equalCopy + 4) && ![(NSMutableArray *)subrules isEqual:?])
  {
    goto LABEL_22;
  }

  triggerCondition = self->_triggerCondition;
  if (triggerCondition | *(equalCopy + 5))
  {
    if (![(ICIAMTriggerCondition *)triggerCondition isEqual:?])
    {
      goto LABEL_22;
    }
  }

  triggerEventName = self->_triggerEventName;
  if (triggerEventName | *(equalCopy + 6))
  {
    if (![(NSString *)triggerEventName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  requiredApplicationContextBundleIdentifier = self->_requiredApplicationContextBundleIdentifier;
  if (requiredApplicationContextBundleIdentifier | *(equalCopy + 2))
  {
    v10 = [(NSString *)requiredApplicationContextBundleIdentifier isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_23:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 56) = self->_type;
    *(v5 + 60) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 24) = self->_ruleOperator;
    *(v5 + 60) |= 1u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_subrules;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v22 + 1) + 8 * i) copyWithZone:{zone, v22}];
        [v5 addSubrules:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = [(ICIAMTriggerCondition *)self->_triggerCondition copyWithZone:zone];
  v16 = *(v5 + 40);
  *(v5 + 40) = v15;

  v17 = [(NSString *)self->_triggerEventName copyWithZone:zone];
  v18 = *(v5 + 48);
  *(v5 + 48) = v17;

  v19 = [(NSString *)self->_requiredApplicationContextBundleIdentifier copyWithZone:zone];
  v20 = *(v5 + 16);
  *(v5 + 16) = v19;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 14) = self->_type;
    *(toCopy + 60) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 6) = self->_ruleOperator;
    *(toCopy + 60) |= 1u;
  }

  if ([(ICIAMMessageRule *)self subrulesCount])
  {
    [v11 clearSubrules];
    subrulesCount = [(ICIAMMessageRule *)self subrulesCount];
    if (subrulesCount)
    {
      v7 = subrulesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ICIAMMessageRule *)self subrulesAtIndex:i];
        [v11 addSubrules:v9];
      }
    }
  }

  if (self->_triggerCondition)
  {
    [v11 setTriggerCondition:?];
  }

  v10 = v11;
  if (self->_triggerEventName)
  {
    [v11 setTriggerEventName:?];
    v10 = v11;
  }

  if (self->_requiredApplicationContextBundleIdentifier)
  {
    [v11 setRequiredApplicationContextBundleIdentifier:?];
    v10 = v11;
  }
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_subrules;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (self->_triggerCondition)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_triggerEventName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_requiredApplicationContextBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    type = self->_type;
    if (type)
    {
      if (type == 1)
      {
        v8 = @"Compound";
      }

      else
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
      }
    }

    else
    {
      v8 = @"Simple";
    }

    [v4 setObject:v8 forKey:@"type"];

    has = self->_has;
  }

  if (has)
  {
    ruleOperator = self->_ruleOperator;
    if (ruleOperator)
    {
      if (ruleOperator == 1)
      {
        v10 = @"OR";
      }

      else
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_ruleOperator];
      }
    }

    else
    {
      v10 = @"AND";
    }

    [v4 setObject:v10 forKey:@"ruleOperator"];
  }

  if ([(NSMutableArray *)self->_subrules count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_subrules, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = self->_subrules;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [v4 setObject:v11 forKey:@"subrules"];
  }

  triggerCondition = self->_triggerCondition;
  if (triggerCondition)
  {
    dictionaryRepresentation2 = [(ICIAMTriggerCondition *)triggerCondition dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"triggerCondition"];
  }

  triggerEventName = self->_triggerEventName;
  if (triggerEventName)
  {
    [v4 setObject:triggerEventName forKey:@"triggerEventName"];
  }

  requiredApplicationContextBundleIdentifier = self->_requiredApplicationContextBundleIdentifier;
  if (requiredApplicationContextBundleIdentifier)
  {
    [v4 setObject:requiredApplicationContextBundleIdentifier forKey:@"requiredApplicationContextBundleIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMMessageRule;
  v4 = [(ICIAMMessageRule *)&v8 description];
  dictionaryRepresentation = [(ICIAMMessageRule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addSubrules:(id)subrules
{
  subrulesCopy = subrules;
  subrules = self->_subrules;
  v8 = subrulesCopy;
  if (!subrules)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_subrules;
    self->_subrules = v6;

    subrulesCopy = v8;
    subrules = self->_subrules;
  }

  [(NSMutableArray *)subrules addObject:subrulesCopy];
}

- (int)StringAsRuleOperator:(id)operator
{
  operatorCopy = operator;
  if ([operatorCopy isEqualToString:@"AND"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [operatorCopy isEqualToString:@"OR"];
  }

  return v4;
}

- (id)ruleOperatorAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"OR";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"AND";
  }

  return v4;
}

- (int)ruleOperator
{
  if (*&self->_has)
  {
    return self->_ruleOperator;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Simple"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"Compound"];
  }

  return v4;
}

- (id)typeAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"Compound";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"Simple";
  }

  return v4;
}

- (void)setHasType:(BOOL)type
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

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

@end