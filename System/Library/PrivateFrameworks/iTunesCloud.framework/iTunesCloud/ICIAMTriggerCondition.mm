@interface ICIAMTriggerCondition
- (BOOL)isEqual:(id)equal;
- (id)comparisonTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataTypeAsString:(int)string;
- (id)description;
- (id)dictionaryRepresentation;
- (id)kindAsString:(int)string;
- (id)triggerConditionTypeAsString:(int)string;
- (int)StringAsComparisonType:(id)type;
- (int)StringAsDataType:(id)type;
- (int)StringAsKind:(id)kind;
- (int)StringAsTriggerConditionType:(id)type;
- (int)comparisonType;
- (int)dataType;
- (int)kind;
- (int)triggerConditionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDataType:(BOOL)type;
- (void)setHasKind:(BOOL)kind;
- (void)setHasTriggerConditionType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ICIAMTriggerCondition

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(ICIAMTriggerCondition *)self setIdentifier:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 48);
  if ((v5 & 2) != 0)
  {
    self->_dataType = fromCopy[5];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 48);
  }

  if (v5)
  {
    self->_comparisonType = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(ICIAMTriggerCondition *)self setTriggerValue:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 48);
  if ((v6 & 8) != 0)
  {
    self->_triggerConditionType = fromCopy[9];
    *&self->_has |= 8u;
    v6 = *(fromCopy + 48);
  }

  if ((v6 & 4) != 0)
  {
    self->_kind = fromCopy[8];
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 1))
  {
    [(ICIAMTriggerCondition *)self setBundleIdentifier:?];
    fromCopy = v7;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_29;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 48);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_dataType != *(equalCopy + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_comparisonType != *(equalCopy + 4))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_29;
  }

  triggerValue = self->_triggerValue;
  if (triggerValue | *(equalCopy + 5))
  {
    if (![(NSString *)triggerValue isEqual:?])
    {
LABEL_29:
      v10 = 0;
      goto LABEL_30;
    }

    has = self->_has;
    v7 = *(equalCopy + 48);
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_triggerConditionType != *(equalCopy + 9))
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
    if ((v7 & 4) == 0 || self->_kind != *(equalCopy + 8))
    {
      goto LABEL_29;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_29;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
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

  v9 = [(NSString *)self->_triggerValue copyWithZone:zone];
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

  v12 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 5) = self->_dataType;
    *(toCopy + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_comparisonType;
    *(toCopy + 48) |= 1u;
  }

  if (self->_triggerValue)
  {
    [v7 setTriggerValue:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(toCopy + 9) = self->_triggerConditionType;
    *(toCopy + 48) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    *(toCopy + 8) = self->_kind;
    *(toCopy + 48) |= 4u;
  }

  if (self->_bundleIdentifier)
  {
    [v7 setBundleIdentifier:?];
    toCopy = v7;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_triggerValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (id)dictionaryRepresentation
{
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
  dictionaryRepresentation = [(ICIAMTriggerCondition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsKind:(id)kind
{
  kindCopy = kind;
  if ([kindCopy isEqualToString:@"Event"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [kindCopy isEqualToString:@"ContextProperty"];
  }

  return v4;
}

- (id)kindAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"ContextProperty";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"Event";
  }

  return v4;
}

- (void)setHasKind:(BOOL)kind
{
  if (kind)
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

- (int)StringAsTriggerConditionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Countable"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"Value"];
  }

  return v4;
}

- (id)triggerConditionTypeAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"Value";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"Countable";
  }

  return v4;
}

- (void)setHasTriggerConditionType:(BOOL)type
{
  if (type)
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

- (int)StringAsComparisonType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Equal"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"NotEqual"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"LessThan"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"LessThanOrEqualTo"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"GreaterThan"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"GreaterThanOrEqualTo"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)comparisonTypeAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7BF57E0[string];
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

- (int)StringAsDataType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Boolean"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"String"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Integer"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dataTypeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7BF57C8[string];
  }

  return v4;
}

- (void)setHasDataType:(BOOL)type
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