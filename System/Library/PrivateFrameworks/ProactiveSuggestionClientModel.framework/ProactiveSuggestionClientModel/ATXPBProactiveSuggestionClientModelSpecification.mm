@interface ATXPBProactiveSuggestionClientModelSpecification
- (BOOL)hasClientModelId;
- (BOOL)hasClientModelVersion;
- (BOOL)isEqual:(id)equal;
- (__CFString)engagementResetPolicyAsString:(__CFString *)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsEngagementResetPolicy:(uint64_t)policy;
- (uint64_t)clientModelId;
- (uint64_t)clientModelVersion;
- (uint64_t)engagementResetPolicy;
- (uint64_t)hasEngagementResetPolicy;
- (uint64_t)setEngagementResetPolicy:(uint64_t)result;
- (uint64_t)setHasEngagementResetPolicy:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setClientModelId:(uint64_t)id;
- (void)setClientModelVersion:(uint64_t)version;
- (void)writeTo:(id)to;
@end

@implementation ATXPBProactiveSuggestionClientModelSpecification

- (uint64_t)clientModelId
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)clientModelVersion
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)engagementResetPolicy
{
  if (result)
  {
    if (*(result + 28))
    {
      return *(result + 24);
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
  v8.super_class = ATXPBProactiveSuggestionClientModelSpecification;
  v4 = [(ATXPBProactiveSuggestionClientModelSpecification *)&v8 description];
  dictionaryRepresentation = [(ATXPBProactiveSuggestionClientModelSpecification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [dictionary setObject:clientModelId forKey:@"clientModelId"];
  }

  clientModelVersion = self->_clientModelVersion;
  if (clientModelVersion)
  {
    [v4 setObject:clientModelVersion forKey:@"clientModelVersion"];
  }

  if (*&self->_has)
  {
    engagementResetPolicy = self->_engagementResetPolicy;
    if (engagementResetPolicy)
    {
      if (engagementResetPolicy == 1)
      {
        v8 = @"WhenNotPredicted";
      }

      else
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_engagementResetPolicy];
      }
    }

    else
    {
      v8 = @"OnCacheUpdate";
    }

    [v4 setObject:v8 forKey:@"engagementResetPolicy"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_clientModelVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    engagementResetPolicy = self->_engagementResetPolicy;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientModelId copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_clientModelVersion copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_engagementResetPolicy;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(equalCopy + 1))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  clientModelVersion = self->_clientModelVersion;
  if (clientModelVersion | *(equalCopy + 2))
  {
    if (![(NSString *)clientModelVersion isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_engagementResetPolicy == *(equalCopy + 6))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientModelId hash];
  v4 = [(NSString *)self->_clientModelVersion hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_engagementResetPolicy;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)hasClientModelId
{
  if (result)
  {
    return *(result + 8) != 0;
  }

  return result;
}

- (BOOL)hasClientModelVersion
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (uint64_t)setEngagementResetPolicy:(uint64_t)result
{
  if (result)
  {
    *(result + 28) |= 1u;
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setHasEngagementResetPolicy:(uint64_t)result
{
  if (result)
  {
    *(result + 28) = *(result + 28) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasEngagementResetPolicy
{
  if (result)
  {
    return *(result + 28) & 1;
  }

  return result;
}

- (__CFString)engagementResetPolicyAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_11:

    return string;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      string = @"WhenNotPredicted";

      return string;
    }

    string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
    goto LABEL_11;
  }

  string = @"OnCacheUpdate";

  return string;
}

- (uint64_t)StringAsEngagementResetPolicy:(uint64_t)policy
{
  v3 = a2;
  v4 = v3;
  if (policy)
  {
    if ([v3 isEqualToString:@"OnCacheUpdate"])
    {
      policy = 0;
    }

    else
    {
      policy = [v4 isEqualToString:@"WhenNotPredicted"];
    }
  }

  return policy;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (to)
  {
    v4 = *(to + 8);
    if (v4)
    {
      v6 = v3;
      [(ATXPBProactiveSuggestionClientModelSpecification *)v3 setClientModelId:v4];
      v3 = v6;
    }

    v5 = *(to + 16);
    if (v5)
    {
      v7 = v3;
      [(ATXPBProactiveSuggestionClientModelSpecification *)v3 setClientModelVersion:v5];
      v3 = v7;
    }

    if (*(to + 28))
    {
      v3[6] = *(to + 24);
      *(v3 + 28) |= 1u;
    }
  }
}

- (void)setClientModelId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_0_3(id, a2, 8);
  }
}

- (void)setClientModelVersion:(uint64_t)version
{
  if (version)
  {
    OUTLINED_FUNCTION_0_3(version, a2, 16);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (from)
  {
    v4 = v3[1];
    v6 = v3;
    if (v4)
    {
      objc_storeStrong((from + 8), v4);
      v3 = v6;
    }

    v5 = v3[2];
    if (v5)
    {
      objc_storeStrong((from + 16), v5);
      v3 = v6;
    }

    if (*(v3 + 28))
    {
      *(from + 24) = *(v3 + 6);
      *(from + 28) |= 1u;
    }
  }
}

@end