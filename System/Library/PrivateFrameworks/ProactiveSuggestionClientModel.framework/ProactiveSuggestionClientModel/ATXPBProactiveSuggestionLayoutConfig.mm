@interface ATXPBProactiveSuggestionLayoutConfig
- (BOOL)isEqual:(id)a3;
- (__CFString)applicableLayoutTypeAsString:(__CFString *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsApplicableLayoutType:(uint64_t)a1;
- (uint64_t)applicableLayoutType;
- (uint64_t)hasApplicableLayoutType;
- (uint64_t)setApplicableLayoutType:(uint64_t)result;
- (uint64_t)setHasApplicableLayoutType:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)writeTo:(id)a3;
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
  v5 = [(ATXPBProactiveSuggestionLayoutConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"applicableLayoutType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    applicableLayoutType = self->_applicableLayoutType;
    PBDataWriterWriteInt32Field();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_applicableLayoutType;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_applicableLayoutType == *(v4 + 2))
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

- (__CFString)applicableLayoutTypeAsString:(__CFString *)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2 < 9)
  {
    a1 = off_1E86A3EC8[a2];
    goto LABEL_4;
  }

  a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return a1;
}

- (uint64_t)StringAsApplicableLayoutType:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
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

- (void)copyTo:(uint64_t)a1
{
  v3 = a2;
  if (a1 && (*(a1 + 12) & 1) != 0)
  {
    v3[2] = *(a1 + 8);
    *(v3 + 12) |= 1u;
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  if (a1 && (v3[3] & 1) != 0)
  {
    *(a1 + 8) = v3[2];
    *(a1 + 12) |= 1u;
  }
}

@end