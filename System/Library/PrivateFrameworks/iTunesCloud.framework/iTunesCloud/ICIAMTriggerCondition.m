@interface ICIAMTriggerCondition
- (BOOL)isEqual:(id)a3;
- (id)comparisonTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataTypeAsString:(int)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)kindAsString:(int)a3;
- (id)triggerConditionTypeAsString:(int)a3;
- (int)StringAsComparisonType:(id)a3;
- (int)StringAsDataType:(id)a3;
- (int)StringAsKind:(id)a3;
- (int)StringAsTriggerConditionType:(id)a3;
- (int)comparisonType;
- (int)dataType;
- (int)kind;
- (int)triggerConditionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDataType:(BOOL)a3;
- (void)setHasKind:(BOOL)a3;
- (void)setHasTriggerConditionType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICIAMTriggerCondition

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 3))
  {
    [(ICIAMTriggerCondition *)self setIdentifier:?];
    v4 = v7;
  }

  v5 = *(v4 + 48);
  if ((v5 & 2) != 0)
  {
    self->_dataType = v4[5];
    *&self->_has |= 2u;
    v5 = *(v4 + 48);
  }

  if (v5)
  {
    self->_comparisonType = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(ICIAMTriggerCondition *)self setTriggerValue:?];
    v4 = v7;
  }

  v6 = *(v4 + 48);
  if ((v6 & 8) != 0)
  {
    self->_triggerConditionType = v4[9];
    *&self->_has |= 8u;
    v6 = *(v4 + 48);
  }

  if ((v6 & 4) != 0)
  {
    self->_kind = v4[8];
    *&self->_has |= 4u;
  }

  if (*(v4 + 1))
  {
    [(ICIAMTriggerCondition *)self setBundleIdentifier:?];
    v4 = v7;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_dataType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v5 = 2654435761 * self->_comparisonType;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_triggerValue hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_triggerConditionType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_bundleIdentifier hash];
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v8 = 2654435761 * self->_kind;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_bundleIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_29;
    }
  }

  has = self->_has;
  v7 = *(v4 + 48);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_dataType != *(v4 + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_comparisonType != *(v4 + 4))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_29;
  }

  triggerValue = self->_triggerValue;
  if (triggerValue | *(v4 + 5))
  {
    if (![(NSString *)triggerValue isEqual:?])
    {
LABEL_29:
      v10 = 0;
      goto LABEL_30;
    }

    has = self->_has;
    v7 = *(v4 + 48);
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_triggerConditionType != *(v4 + 9))
    {
      goto LABEL_29;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_kind != *(v4 + 8))
    {
      goto LABEL_29;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_29;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 1))
  {
    v10 = [(NSString *)bundleIdentifier isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_30:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_dataType;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_comparisonType;
    *(v5 + 48) |= 1u;
  }

  v9 = [(NSString *)self->_triggerValue copyWithZone:a3];
  v10 = *(v5 + 40);
  *(v5 + 40) = v9;

  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    *(v5 + 36) = self->_triggerConditionType;
    *(v5 + 48) |= 8u;
    v11 = self->_has;
  }

  if ((v11 & 4) != 0)
  {
    *(v5 + 32) = self->_kind;
    *(v5 + 48) |= 4u;
  }

  v12 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 5) = self->_dataType;
    *(v4 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_comparisonType;
    *(v4 + 48) |= 1u;
  }

  if (self->_triggerValue)
  {
    [v7 setTriggerValue:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(v4 + 9) = self->_triggerConditionType;
    *(v4 + 48) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    *(v4 + 8) = self->_kind;
    *(v4 + 48) |= 4u;
  }

  if (self->_bundleIdentifier)
  {
    [v7 setBundleIdentifier:?];
    v4 = v7;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_triggerValue)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    dataType = self->_dataType;
    if (dataType >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_dataType];
    }

    else
    {
      v8 = off_1E7BF57C8[dataType];
    }

    [v4 setObject:v8 forKey:@"dataType"];

    has = self->_has;
  }

  if (has)
  {
    comparisonType = self->_comparisonType;
    if (comparisonType >= 6)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_comparisonType];
    }

    else
    {
      v10 = off_1E7BF57E0[comparisonType];
    }

    [v4 setObject:v10 forKey:@"comparisonType"];
  }

  triggerValue = self->_triggerValue;
  if (triggerValue)
  {
    [v4 setObject:triggerValue forKey:@"triggerValue"];
  }

  v12 = self->_has;
  if ((v12 & 8) != 0)
  {
    triggerConditionType = self->_triggerConditionType;
    if (triggerConditionType)
    {
      if (triggerConditionType == 1)
      {
        v14 = @"Value";
      }

      else
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_triggerConditionType];
      }
    }

    else
    {
      v14 = @"Countable";
    }

    [v4 setObject:v14 forKey:@"triggerConditionType"];

    v12 = self->_has;
  }

  if ((v12 & 4) != 0)
  {
    kind = self->_kind;
    if (kind)
    {
      if (kind == 1)
      {
        v16 = @"ContextProperty";
      }

      else
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_kind];
      }
    }

    else
    {
      v16 = @"Event";
    }

    [v4 setObject:v16 forKey:@"kind"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMTriggerCondition;
  v4 = [(ICIAMTriggerCondition *)&v8 description];
  v5 = [(ICIAMTriggerCondition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsKind:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Event"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ContextProperty"];
  }

  return v4;
}

- (id)kindAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"ContextProperty";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"Event";
  }

  return v4;
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

- (int)StringAsTriggerConditionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Countable"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Value"];
  }

  return v4;
}

- (id)triggerConditionTypeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"Value";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"Countable";
  }

  return v4;
}

- (void)setHasTriggerConditionType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)triggerConditionType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_triggerConditionType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsComparisonType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Equal"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NotEqual"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LessThan"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LessThanOrEqualTo"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GreaterThan"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"GreaterThanOrEqualTo"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)comparisonTypeAsString:(int)a3
{
  if (a3 >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E7BF57E0[a3];
  }

  return v4;
}

- (int)comparisonType
{
  if (*&self->_has)
  {
    return self->_comparisonType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDataType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Boolean"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"String"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Integer"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dataTypeAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E7BF57C8[a3];
  }

  return v4;
}

- (void)setHasDataType:(BOOL)a3
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

- (int)dataType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_dataType;
  }

  else
  {
    return 0;
  }
}

@end