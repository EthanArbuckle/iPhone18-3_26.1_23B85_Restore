@interface ATXPBProactiveSuggestion
- (BOOL)hasClientModelSpecification;
- (BOOL)hasExecutableSpecification;
- (BOOL)hasScoreSpecification;
- (BOOL)hasUiSpecification;
- (BOOL)hasUuidString;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)clientModelSpecification;
- (uint64_t)executableSpecification;
- (uint64_t)scoreSpecification;
- (uint64_t)uiSpecification;
- (uint64_t)uuidString;
- (unint64_t)hash;
- (void)copyTo:(void *)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setClientModelSpecification:(uint64_t)a1;
- (void)setExecutableSpecification:(uint64_t)a1;
- (void)setScoreSpecification:(uint64_t)a1;
- (void)setUiSpecification:(uint64_t)a1;
- (void)setUuidString:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBProactiveSuggestion

- (BOOL)hasUuidString
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (uint64_t)uuidString
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)clientModelSpecification
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)uiSpecification
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)executableSpecification
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)scoreSpecification
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBProactiveSuggestion;
  v4 = [(ATXPBProactiveSuggestion *)&v8 description];
  v5 = [(ATXPBProactiveSuggestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [v3 setObject:uuidString forKey:@"uuidString"];
  }

  clientModelSpecification = self->_clientModelSpecification;
  if (clientModelSpecification)
  {
    v7 = [(ATXPBProactiveSuggestionClientModelSpecification *)clientModelSpecification dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"clientModelSpecification"];
  }

  executableSpecification = self->_executableSpecification;
  if (executableSpecification)
  {
    v9 = [(ATXPBProactiveSuggestionExecutableSpecification *)executableSpecification dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"executableSpecification"];
  }

  uiSpecification = self->_uiSpecification;
  if (uiSpecification)
  {
    v11 = [(ATXPBProactiveSuggestionUISpecification *)uiSpecification dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"uiSpecification"];
  }

  scoreSpecification = self->_scoreSpecification;
  if (scoreSpecification)
  {
    v13 = [(ATXPBProactiveSuggestionScoreSpecification *)scoreSpecification dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"scoreSpecification"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_clientModelSpecification)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_executableSpecification)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_uiSpecification)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_scoreSpecification)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(ATXPBProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(ATXPBProactiveSuggestionExecutableSpecification *)self->_executableSpecification copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(ATXPBProactiveSuggestionUISpecification *)self->_uiSpecification copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(ATXPBProactiveSuggestionScoreSpecification *)self->_scoreSpecification copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uuidString = self->_uuidString, !(uuidString | v4[5])) || -[NSString isEqual:](uuidString, "isEqual:")) && ((clientModelSpecification = self->_clientModelSpecification, !(clientModelSpecification | v4[1])) || -[ATXPBProactiveSuggestionClientModelSpecification isEqual:](clientModelSpecification, "isEqual:")) && ((executableSpecification = self->_executableSpecification, !(executableSpecification | v4[2])) || -[ATXPBProactiveSuggestionExecutableSpecification isEqual:](executableSpecification, "isEqual:")) && ((uiSpecification = self->_uiSpecification, !(uiSpecification | v4[4])) || -[ATXPBProactiveSuggestionUISpecification isEqual:](uiSpecification, "isEqual:")))
  {
    scoreSpecification = self->_scoreSpecification;
    if (scoreSpecification | v4[3])
    {
      v10 = [(ATXPBProactiveSuggestionScoreSpecification *)scoreSpecification isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidString hash];
  v4 = [(ATXPBProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification hash]^ v3;
  v5 = [(ATXPBProactiveSuggestionExecutableSpecification *)self->_executableSpecification hash];
  v6 = v4 ^ v5 ^ [(ATXPBProactiveSuggestionUISpecification *)self->_uiSpecification hash];
  return v6 ^ [(ATXPBProactiveSuggestionScoreSpecification *)self->_scoreSpecification hash];
}

- (BOOL)hasClientModelSpecification
{
  if (result)
  {
    return *(result + 8) != 0;
  }

  return result;
}

- (BOOL)hasExecutableSpecification
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (BOOL)hasUiSpecification
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (BOOL)hasScoreSpecification
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (void)copyTo:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[5];
    if (v4)
    {
      v9 = v3;
      [(ATXPBProactiveSuggestion *)v3 setUuidString:v4];
      v3 = v9;
    }

    v5 = a1[1];
    if (v5)
    {
      v10 = v3;
      [(ATXPBProactiveSuggestion *)v3 setClientModelSpecification:v5];
      v3 = v10;
    }

    v6 = a1[2];
    if (v6)
    {
      v11 = v3;
      [(ATXPBProactiveSuggestion *)v3 setExecutableSpecification:v6];
      v3 = v11;
    }

    v7 = a1[4];
    if (v7)
    {
      v12 = v3;
      [(ATXPBProactiveSuggestion *)v3 setUiSpecification:v7];
      v3 = v12;
    }

    v8 = a1[3];
    if (v8)
    {
      v13 = v3;
      [(ATXPBProactiveSuggestion *)v3 setScoreSpecification:v8];
      v3 = v13;
    }
  }
}

- (void)setUuidString:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 40);
  }
}

- (void)setClientModelSpecification:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 8);
  }
}

- (void)setExecutableSpecification:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 16);
  }
}

- (void)setUiSpecification:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 32);
  }
}

- (void)setScoreSpecification:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 24);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_28;
  }

  v5 = *(v3 + 5);
  v21 = v3;
  if (v5)
  {
    objc_storeStrong((a1 + 40), v5);
    v4 = v21;
  }

  v6 = OUTLINED_FUNCTION_1_4(v4, 8);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    [(ATXPBProactiveSuggestionClientModelSpecification *)v6 mergeFrom:v7];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    objc_storeStrong((a1 + v9), v7);
  }

  v8 = v21;
LABEL_10:
  v10 = OUTLINED_FUNCTION_1_4(v8, 16);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_16;
    }

    [(ATXPBProactiveSuggestionExecutableSpecification *)v10 mergeFrom:v11];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_16;
    }

    objc_storeStrong((a1 + v13), v11);
  }

  v12 = v21;
LABEL_16:
  v14 = OUTLINED_FUNCTION_1_4(v12, 32);
  if (v14)
  {
    if (v15)
    {
      [(ATXPBProactiveSuggestionUISpecification *)v14 mergeFrom:v15];
LABEL_21:
      v16 = v21;
    }
  }

  else if (v15)
  {
    objc_storeStrong((a1 + v17), v15);
    goto LABEL_21;
  }

  v18 = OUTLINED_FUNCTION_1_4(v16, 24);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_28;
    }

    [(ATXPBProactiveSuggestionScoreSpecification *)v18 mergeFrom:v19];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_28;
    }

    objc_storeStrong((a1 + v20), v19);
  }

  v4 = v21;
LABEL_28:
}

@end