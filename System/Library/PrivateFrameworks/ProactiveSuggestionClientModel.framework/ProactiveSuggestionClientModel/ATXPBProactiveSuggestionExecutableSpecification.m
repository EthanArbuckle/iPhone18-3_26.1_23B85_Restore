@interface ATXPBProactiveSuggestionExecutableSpecification
- (BOOL)hasExecutable;
- (BOOL)hasExecutableClassString;
- (BOOL)hasExecutableDescription;
- (BOOL)hasExecutableIdentifier;
- (BOOL)isEqual:(id)a3;
- (__CFString)executableTypeAsString:(__CFString *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsExecutableType:(uint64_t)a1;
- (uint64_t)executable;
- (uint64_t)executableClassString;
- (uint64_t)executableDescription;
- (uint64_t)executableIdentifier;
- (uint64_t)executableObjectHash;
- (uint64_t)executableType;
- (uint64_t)hasExecutableObjectHash;
- (uint64_t)hasExecutableType;
- (uint64_t)setExecutableObjectHash:(uint64_t)result;
- (uint64_t)setExecutableType:(uint64_t)result;
- (uint64_t)setHasExecutableObjectHash:(uint64_t)result;
- (uint64_t)setHasExecutableType:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setExecutable:(uint64_t)a1;
- (void)setExecutableClassString:(uint64_t)a1;
- (void)setExecutableDescription:(uint64_t)a1;
- (void)setExecutableIdentifier:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBProactiveSuggestionExecutableSpecification

- (uint64_t)executableClassString
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)executableObjectHash
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)executable
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)executableIdentifier
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)executableDescription
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)executableType
{
  if (result)
  {
    if ((*(result + 52) & 2) != 0)
    {
      return *(result + 48);
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
  v8.super_class = ATXPBProactiveSuggestionExecutableSpecification;
  v4 = [(ATXPBProactiveSuggestionExecutableSpecification *)&v8 description];
  v5 = [(ATXPBProactiveSuggestionExecutableSpecification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  executable = self->_executable;
  if (executable)
  {
    [v3 setObject:executable forKey:@"executable"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_executableObjectHash];
    [v4 setObject:v6 forKey:@"executableObjectHash"];
  }

  executableClassString = self->_executableClassString;
  if (executableClassString)
  {
    [v4 setObject:executableClassString forKey:@"executableClassString"];
  }

  executableDescription = self->_executableDescription;
  if (executableDescription)
  {
    [v4 setObject:executableDescription forKey:@"executableDescription"];
  }

  executableIdentifier = self->_executableIdentifier;
  if (executableIdentifier)
  {
    [v4 setObject:executableIdentifier forKey:@"executableIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    executableType = self->_executableType;
    if (executableType >= 0xB)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_executableType];
    }

    else
    {
      v11 = off_1E86A44F8[executableType];
    }

    [v4 setObject:v11 forKey:@"executableType"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_executable)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    executableObjectHash = self->_executableObjectHash;
    PBDataWriterWriteUint64Field();
    v4 = v7;
  }

  if (self->_executableClassString)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_executableDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_executableIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    executableType = self->_executableType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_executable copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_executableObjectHash;
    *(v5 + 52) |= 1u;
  }

  v8 = [(NSString *)self->_executableClassString copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_executableDescription copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_executableIdentifier copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 48) = self->_executableType;
    *(v5 + 52) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  executable = self->_executable;
  if (executable | *(v4 + 2))
  {
    if (![(NSData *)executable isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v6 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_executableObjectHash != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  executableClassString = self->_executableClassString;
  if (executableClassString | *(v4 + 3) && ![(NSString *)executableClassString isEqual:?])
  {
    goto LABEL_19;
  }

  executableDescription = self->_executableDescription;
  if (executableDescription | *(v4 + 4))
  {
    if (![(NSString *)executableDescription isEqual:?])
    {
      goto LABEL_19;
    }
  }

  executableIdentifier = self->_executableIdentifier;
  if (executableIdentifier | *(v4 + 5))
  {
    if (![(NSString *)executableIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(v4 + 52) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_executableType != *(v4 + 12))
    {
      goto LABEL_19;
    }

    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_executable hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_executableObjectHash;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_executableClassString hash];
  v6 = [(NSString *)self->_executableDescription hash];
  v7 = [(NSString *)self->_executableIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_executableType;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)hasExecutable
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (uint64_t)setExecutableObjectHash:(uint64_t)result
{
  if (result)
  {
    *(result + 52) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasExecutableObjectHash:(uint64_t)result
{
  if (result)
  {
    *(result + 52) = *(result + 52) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasExecutableObjectHash
{
  if (result)
  {
    return *(result + 52) & 1;
  }

  return result;
}

- (BOOL)hasExecutableClassString
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (BOOL)hasExecutableDescription
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (BOOL)hasExecutableIdentifier
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (uint64_t)setExecutableType:(uint64_t)result
{
  if (result)
  {
    *(result + 52) |= 2u;
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)setHasExecutableType:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 52) = *(result + 52) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasExecutableType
{
  if (result)
  {
    return (*(result + 52) >> 1) & 1;
  }

  return result;
}

- (__CFString)executableTypeAsString:(__CFString *)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2 < 0xB)
  {
    a1 = off_1E86A44F8[a2];
    goto LABEL_4;
  }

  a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return a1;
}

- (uint64_t)StringAsExecutableType:(uint64_t)a1
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

    else if ([v5 isEqualToString:@"App"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"Action"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"Widget"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"Tip"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"AppClip"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"Interaction"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"ContextualAction"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"SpotlightAction"])
    {
      v6 = 8;
    }

    else if ([v5 isEqualToString:@"ShortcutsAction"])
    {
      v6 = 9;
    }

    else if ([v5 isEqualToString:@"LinkAction"])
    {
      v6 = 10;
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
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v8 = v3;
      [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutable:v4];
      v3 = v8;
    }

    if (*(a1 + 52))
    {
      v3[1] = *(a1 + 8);
      *(v3 + 52) |= 1u;
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      v9 = v3;
      [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableClassString:v5];
      v3 = v9;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v10 = v3;
      [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableDescription:v6];
      v3 = v10;
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v11 = v3;
      [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableIdentifier:v7];
      v3 = v11;
    }

    if ((*(a1 + 52) & 2) != 0)
    {
      *(v3 + 12) = *(a1 + 48);
      *(v3 + 52) |= 2u;
    }
  }
}

- (void)setExecutable:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 16);
  }
}

- (void)setExecutableClassString:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 24);
  }
}

- (void)setExecutableDescription:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 32);
  }
}

- (void)setExecutableIdentifier:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 40);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3[2];
    v8 = v3;
    if (v4)
    {
      objc_storeStrong((a1 + 16), v4);
      v3 = v8;
    }

    if (*(v3 + 52))
    {
      *(a1 + 8) = v3[1];
      *(a1 + 52) |= 1u;
    }

    v5 = v3[3];
    if (v5)
    {
      objc_storeStrong((a1 + 24), v5);
      v3 = v8;
    }

    v6 = v3[4];
    if (v6)
    {
      objc_storeStrong((a1 + 32), v6);
      v3 = v8;
    }

    v7 = v3[5];
    if (v7)
    {
      objc_storeStrong((a1 + 40), v7);
      v3 = v8;
    }

    if ((*(v3 + 52) & 2) != 0)
    {
      *(a1 + 48) = *(v3 + 12);
      *(a1 + 52) |= 2u;
    }
  }
}

@end