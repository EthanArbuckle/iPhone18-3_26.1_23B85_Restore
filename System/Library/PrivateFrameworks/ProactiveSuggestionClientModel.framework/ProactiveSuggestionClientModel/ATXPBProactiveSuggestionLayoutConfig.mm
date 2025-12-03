@interface ATXPBProactiveSuggestionLayoutConfig
- (BOOL)isEqual:(id)equal;
- (__CFString)applicableLayoutTypeAsString:(__CFString *)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsApplicableLayoutType:(uint64_t)type;
- (uint64_t)applicableLayoutType;
- (uint64_t)hasApplicableLayoutType;
- (uint64_t)setApplicableLayoutType:(uint64_t)result;
- (uint64_t)setHasApplicableLayoutType:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBProactiveSuggestionLayoutConfig

- (uint64_t)applicableLayoutType
{
  if (result)
  {
    if (*(result + 12))
    {
      return *(result + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBProactiveSuggestionLayoutConfig;
  v4 = [(ATXPBProactiveSuggestionLayoutConfig *)&v8 description];
  dictionaryRepresentation = [(ATXPBProactiveSuggestionLayoutConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    applicableLayoutType = self->_applicableLayoutType;
    if (applicableLayoutType >= 9)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_applicableLayoutType];
    }

    else
    {
      v5 = off_1E86A3EC8[applicableLayoutType];
    }

    [dictionary setObject:v5 forKey:@"applicableLayoutType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    applicableLayoutType = self->_applicableLayoutType;
    PBDataWriterWriteInt32Field();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_applicableLayoutType;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_applicableLayoutType == *(equalCopy + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_applicableLayoutType;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setApplicableLayoutType:(uint64_t)result
{
  if (result)
  {
    *(result + 12) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasApplicableLayoutType:(uint64_t)result
{
  if (result)
  {
    *(result + 12) = *(result + 12) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasApplicableLayoutType
{
  if (result)
  {
    return *(result + 12) & 1;
  }

  return result;
}

- (__CFString)applicableLayoutTypeAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 9)
  {
    string = off_1E86A3EC8[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsApplicableLayoutType:(uint64_t)type
{
  v3 = a2;
  v4 = v3;
  if (type)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Unknown"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"_1Row1Column"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"_1Row2Columns"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"_2Rows2Columns"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"_2Rows4Columns"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"_1Row4Columns"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"_4Rows4Columns"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"_4Rows8Columns"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"Max"])
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (to && (*(to + 12) & 1) != 0)
  {
    v3[2] = *(to + 8);
    *(v3 + 12) |= 1u;
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (from && (v3[3] & 1) != 0)
  {
    *(from + 8) = v3[2];
    *(from + 12) |= 1u;
  }
}

@end