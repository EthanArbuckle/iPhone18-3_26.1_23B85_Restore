@interface ATXPBProactiveSuggestionUISpecification
+ (uint64_t)preferredLayoutConfigsType;
- (BOOL)hasReason;
- (BOOL)hasSubtitle;
- (BOOL)hasTitle;
- (BOOL)isEqual:(id)equal;
- (double)contextEndDate;
- (double)contextStartDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)preferredLayoutConfigsAtIndex:(id *)index;
- (uint64_t)addPreferredLayoutConfigs:(uint64_t)configs;
- (uint64_t)allowedOnHomeScreen;
- (uint64_t)allowedOnLockscreen;
- (uint64_t)allowedOnSpotlight;
- (uint64_t)clearPreferredLayoutConfigs;
- (uint64_t)hasAllowedOnHomeScreen;
- (uint64_t)hasAllowedOnLockscreen;
- (uint64_t)hasAllowedOnSpotlight;
- (uint64_t)hasContextEndDate;
- (uint64_t)hasContextStartDate;
- (uint64_t)hasPredictionReasons;
- (uint64_t)hasShouldClearOnEngagement;
- (uint64_t)predictionReasons;
- (uint64_t)preferredLayoutConfigs;
- (uint64_t)preferredLayoutConfigsCount;
- (uint64_t)reason;
- (uint64_t)setAllowedOnHomeScreen:(uint64_t)result;
- (uint64_t)setAllowedOnLockscreen:(uint64_t)result;
- (uint64_t)setAllowedOnSpotlight:(uint64_t)result;
- (uint64_t)setContextEndDate:(uint64_t)result;
- (uint64_t)setContextStartDate:(uint64_t)result;
- (uint64_t)setHasAllowedOnHomeScreen:(uint64_t)result;
- (uint64_t)setHasAllowedOnLockscreen:(uint64_t)result;
- (uint64_t)setHasAllowedOnSpotlight:(uint64_t)result;
- (uint64_t)setHasContextEndDate:(uint64_t)result;
- (uint64_t)setHasContextStartDate:(uint64_t)result;
- (uint64_t)setHasPredictionReasons:(uint64_t)result;
- (uint64_t)setHasShouldClearOnEngagement:(uint64_t)result;
- (uint64_t)setPredictionReasons:(uint64_t)result;
- (uint64_t)setShouldClearOnEngagement:(uint64_t)result;
- (uint64_t)shouldClearOnEngagement;
- (uint64_t)subtitle;
- (uint64_t)title;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setPreferredLayoutConfigs:(uint64_t)configs;
- (void)setReason:(uint64_t)reason;
- (void)setSubtitle:(uint64_t)subtitle;
- (void)setTitle:(uint64_t)title;
- (void)writeTo:(id)to;
@end

@implementation ATXPBProactiveSuggestionUISpecification

- (uint64_t)preferredLayoutConfigs
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)title
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)shouldClearOnEngagement
{
  if (self)
  {
    return OUTLINED_FUNCTION_5(*(self + 67));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (uint64_t)allowedOnHomeScreen
{
  if (self)
  {
    return OUTLINED_FUNCTION_5(*(self + 64));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (uint64_t)allowedOnLockscreen
{
  if (self)
  {
    return OUTLINED_FUNCTION_5(*(self + 65));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (uint64_t)subtitle
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)allowedOnSpotlight
{
  if (self)
  {
    return OUTLINED_FUNCTION_5(*(self + 66));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (uint64_t)reason
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)hasContextStartDate
{
  if (result)
  {
    return (*(result + 68) >> 1) & 1;
  }

  return result;
}

- (uint64_t)predictionReasons
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)hasContextEndDate
{
  if (result)
  {
    return *(result + 68) & 1;
  }

  return result;
}

- (double)contextEndDate
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (double)contextStartDate
{
  if (self)
  {
    return *(self + 16);
  }

  else
  {
    return 0.0;
  }
}

+ (uint64_t)preferredLayoutConfigsType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBProactiveSuggestionUISpecification;
  v4 = [(ATXPBProactiveSuggestionUISpecification *)&v8 description];
  dictionaryRepresentation = [(ATXPBProactiveSuggestionUISpecification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  reason = self->_reason;
  if (reason)
  {
    [v4 setObject:reason forKey:@"reason"];
  }

  if ([(NSMutableArray *)self->_preferredLayoutConfigs count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_preferredLayoutConfigs, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = self->_preferredLayoutConfigs;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"preferredLayoutConfigs"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowedOnLockscreen];
    [v4 setObject:v19 forKey:@"allowedOnLockscreen"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_18:
      if ((has & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_18;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{self->_allowedOnHomeScreen, v25}];
  [v4 setObject:v20 forKey:@"allowedOnHomeScreen"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_19:
    if ((has & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{self->_allowedOnSpotlight, v25}];
  [v4 setObject:v21 forKey:@"allowedOnSpotlight"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_20:
    if ((has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{self->_shouldClearOnEngagement, v25}];
  [v4 setObject:v22 forKey:@"shouldClearOnEngagement"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_21:
    if ((has & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{self->_predictionReasons, v25}];
  [v4 setObject:v23 forKey:@"predictionReasons"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_22:
    if ((has & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_32:
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:{self->_contextStartDate, v25}];
  [v4 setObject:v24 forKey:@"contextStartDate"];

  if (*&self->_has)
  {
LABEL_23:
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:{self->_contextEndDate, v25}];
    [v4 setObject:v16 forKey:@"contextEndDate"];
  }

LABEL_24:
  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_preferredLayoutConfigs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    allowedOnLockscreen = self->_allowedOnLockscreen;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_16:
      if ((has & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_16;
  }

  allowedOnHomeScreen = self->_allowedOnHomeScreen;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  allowedOnSpotlight = self->_allowedOnSpotlight;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_18:
    if ((has & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  shouldClearOnEngagement = self->_shouldClearOnEngagement;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_19:
    if ((has & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_28:
    contextStartDate = self->_contextStartDate;
    PBDataWriterWriteDoubleField();
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_27:
  predictionReasons = self->_predictionReasons;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (has)
  {
LABEL_21:
    contextEndDate = self->_contextEndDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_22:

  v13 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_reason copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_preferredLayoutConfigs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{zone, v21}];
        [(ATXPBProactiveSuggestionUISpecification *)v5 addPreferredLayoutConfigs:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 65) = self->_allowedOnLockscreen;
    *(v5 + 68) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_10:
      if ((has & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 64) = self->_allowedOnHomeScreen;
  *(v5 + 68) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 66) = self->_allowedOnSpotlight;
  *(v5 + 68) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 67) = self->_shouldClearOnEngagement;
  *(v5 + 68) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    *(v5 + 16) = self->_contextStartDate;
    *(v5 + 68) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_21:
  *(v5 + 24) = self->_predictionReasons;
  *(v5 + 68) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (has)
  {
LABEL_15:
    *(v5 + 8) = self->_contextEndDate;
    *(v5 + 68) |= 1u;
  }

LABEL_16:
  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  title = self->_title;
  if (title | *(equalCopy + 7))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_56;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(equalCopy + 6))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_56;
    }
  }

  reason = self->_reason;
  if (reason | *(equalCopy + 5))
  {
    if (![(NSString *)reason isEqual:?])
    {
      goto LABEL_56;
    }
  }

  preferredLayoutConfigs = self->_preferredLayoutConfigs;
  if (preferredLayoutConfigs | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)preferredLayoutConfigs isEqual:?])
    {
      goto LABEL_56;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 68) & 0x10) == 0)
    {
      goto LABEL_56;
    }

    v9 = *(equalCopy + 65);
    if (self->_allowedOnLockscreen)
    {
      if ((*(equalCopy + 65) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(equalCopy + 65))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 68) & 0x10) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 68) & 8) == 0)
    {
      goto LABEL_56;
    }

    v10 = *(equalCopy + 64);
    if (self->_allowedOnHomeScreen)
    {
      if ((*(equalCopy + 64) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(equalCopy + 64))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 68) & 8) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 68) & 0x20) == 0)
    {
      goto LABEL_56;
    }

    v11 = *(equalCopy + 66);
    if (self->_allowedOnSpotlight)
    {
      if ((*(equalCopy + 66) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(equalCopy + 66))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 68) & 0x20) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x40) == 0)
  {
    if ((*(equalCopy + 68) & 0x40) == 0)
    {
      goto LABEL_18;
    }

LABEL_56:
    v13 = 0;
    goto LABEL_57;
  }

  if ((*(equalCopy + 68) & 0x40) == 0)
  {
    goto LABEL_56;
  }

  v12 = *(equalCopy + 67);
  if (self->_shouldClearOnEngagement)
  {
    if ((*(equalCopy + 67) & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (*(equalCopy + 67))
  {
    goto LABEL_56;
  }

LABEL_18:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 68) & 4) == 0 || self->_predictionReasons != *(equalCopy + 3))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 68) & 4) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_contextStartDate != *(equalCopy + 2))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 68) & 2) != 0)
  {
    goto LABEL_56;
  }

  v13 = (*(equalCopy + 68) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_contextEndDate != *(equalCopy + 1))
    {
      goto LABEL_56;
    }

    v13 = 1;
  }

LABEL_57:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_subtitle hash];
  v5 = [(NSString *)self->_reason hash];
  v6 = [(NSMutableArray *)self->_preferredLayoutConfigs hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v9 = 2654435761 * self->_allowedOnLockscreen;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v10 = 2654435761 * self->_allowedOnHomeScreen;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v11 = 2654435761 * self->_allowedOnSpotlight;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v11 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v12 = 2654435761 * self->_shouldClearOnEngagement;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v13 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v12 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v13 = 2654435761u * self->_predictionReasons;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  contextStartDate = self->_contextStartDate;
  if (contextStartDate < 0.0)
  {
    contextStartDate = -contextStartDate;
  }

  *v7.i64 = floor(contextStartDate + 0.5);
  v15 = (contextStartDate - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v7 = vbslq_s8(vnegq_f64(v16), v8, v7);
  v17 = 2654435761u * *v7.i64;
  if (v15 >= 0.0)
  {
    if (v15 > 0.0)
    {
      v17 += v15;
    }
  }

  else
  {
    v17 -= fabs(v15);
  }

LABEL_17:
  if (*&self->_has)
  {
    contextEndDate = self->_contextEndDate;
    if (contextEndDate < 0.0)
    {
      contextEndDate = -contextEndDate;
    }

    *v7.i64 = floor(contextEndDate + 0.5);
    v20 = (contextEndDate - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v8, v7).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v17 ^ v18;
}

- (BOOL)hasTitle
{
  if (result)
  {
    return *(result + 56) != 0;
  }

  return result;
}

- (BOOL)hasSubtitle
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

- (BOOL)hasReason
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (uint64_t)clearPreferredLayoutConfigs
{
  if (result)
  {
    return [*(result + 32) removeAllObjects];
  }

  return result;
}

- (uint64_t)addPreferredLayoutConfigs:(uint64_t)configs
{
  v3 = a2;
  v4 = v3;
  if (configs)
  {
    v5 = OUTLINED_FUNCTION_6();
    v10 = v6;
    if (!v5)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = *(configs + 32);
      *(configs + 32) = v7;

      v5 = OUTLINED_FUNCTION_6();
    }

    v3 = [v5 addObject:v10];
    v4 = v10;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)preferredLayoutConfigsCount
{
  if (result)
  {
    return [*(result + 32) count];
  }

  return result;
}

- (id)preferredLayoutConfigsAtIndex:(id *)index
{
  if (index)
  {
    index = [index[4] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (uint64_t)setAllowedOnLockscreen:(uint64_t)result
{
  if (result)
  {
    *(result + 68) |= 0x10u;
    *(result + 65) = a2;
  }

  return result;
}

- (uint64_t)setHasAllowedOnLockscreen:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xEF | v2;
  }

  return result;
}

- (uint64_t)hasAllowedOnLockscreen
{
  if (result)
  {
    return (*(result + 68) >> 4) & 1;
  }

  return result;
}

- (uint64_t)setAllowedOnHomeScreen:(uint64_t)result
{
  if (result)
  {
    *(result + 68) |= 8u;
    *(result + 64) = a2;
  }

  return result;
}

- (uint64_t)setHasAllowedOnHomeScreen:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasAllowedOnHomeScreen
{
  if (result)
  {
    return (*(result + 68) >> 3) & 1;
  }

  return result;
}

- (uint64_t)setAllowedOnSpotlight:(uint64_t)result
{
  if (result)
  {
    *(result + 68) |= 0x20u;
    *(result + 66) = a2;
  }

  return result;
}

- (uint64_t)setHasAllowedOnSpotlight:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 32;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xDF | v2;
  }

  return result;
}

- (uint64_t)hasAllowedOnSpotlight
{
  if (result)
  {
    return (*(result + 68) >> 5) & 1;
  }

  return result;
}

- (uint64_t)setShouldClearOnEngagement:(uint64_t)result
{
  if (result)
  {
    *(result + 68) |= 0x40u;
    *(result + 67) = a2;
  }

  return result;
}

- (uint64_t)setHasShouldClearOnEngagement:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 64;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xBF | v2;
  }

  return result;
}

- (uint64_t)hasShouldClearOnEngagement
{
  if (result)
  {
    return (*(result + 68) >> 6) & 1;
  }

  return result;
}

- (uint64_t)setPredictionReasons:(uint64_t)result
{
  if (result)
  {
    *(result + 68) |= 4u;
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setHasPredictionReasons:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasPredictionReasons
{
  if (result)
  {
    return (*(result + 68) >> 2) & 1;
  }

  return result;
}

- (uint64_t)setContextStartDate:(uint64_t)result
{
  if (result)
  {
    *(result + 68) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasContextStartDate:(uint64_t)result
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

    *(result + 68) = *(result + 68) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)setContextEndDate:(uint64_t)result
{
  if (result)
  {
    *(result + 68) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasContextEndDate:(uint64_t)result
{
  if (result)
  {
    *(result + 68) = *(result + 68) & 0xFE | a2;
  }

  return result;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (!to)
  {
    goto LABEL_25;
  }

  v4 = *(to + 56);
  v37 = v3;
  if (v4)
  {
    [(ATXPBProactiveSuggestionUISpecification *)v3 setTitle:v4];
  }

  v5 = *(to + 48);
  if (v5)
  {
    [(ATXPBProactiveSuggestionUISpecification *)v37 setSubtitle:v5];
  }

  v6 = *(to + 40);
  if (v6)
  {
    [(ATXPBProactiveSuggestionUISpecification *)v37 setReason:v6];
  }

  if ([OUTLINED_FUNCTION_6() count])
  {
    if (v37)
    {
      [*(v37 + 32) removeAllObjects];
    }

    v7 = [OUTLINED_FUNCTION_6() count];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(ATXPBProactiveSuggestionUISpecification *)to preferredLayoutConfigsAtIndex:?];
        [(ATXPBProactiveSuggestionUISpecification *)v37 addPreferredLayoutConfigs:v10];
      }
    }
  }

  v11 = 0x1ECDF6000uLL;
  v12 = 68;
  v13 = *(to + 68);
  if ((v13 & 0x10) != 0)
  {
    v14 = *(to + 65);
    v15 = OUTLINED_FUNCTION_4_1(v37, 0x1ECDF6000);
    v17 = *(v15 + v16) | 0x10u;
    v3 = OUTLINED_FUNCTION_1_0(v15, v18);
    if ((v13 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v3 = v37;
  if ((*(to + 68) & 8) != 0)
  {
LABEL_18:
    v19 = *(to + 64);
    v20 = OUTLINED_FUNCTION_4_1(v3, v11);
    v22 = *(v20 + v21) | 8u;
    v3 = OUTLINED_FUNCTION_1_0(v20, v23);
  }

LABEL_19:
  if ((v13 & 0x20) != 0)
  {
    v24 = *(to + 66);
    v25 = OUTLINED_FUNCTION_4_1(v3, v11);
    v27 = *(v25 + v26) | 0x20u;
    v3 = OUTLINED_FUNCTION_1_0(v25, v28);
    if ((v13 & 0x40) == 0)
    {
LABEL_21:
      if ((v13 & 4) == 0)
      {
        goto LABEL_22;
      }

LABEL_30:
      v3[3] = *(to + 24);
      v34 = *(v3 + v12) | 4u;
      v3 = OUTLINED_FUNCTION_1_0(v3, v11);
      if ((v13 & 2) == 0)
      {
LABEL_23:
        if ((v13 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      goto LABEL_31;
    }
  }

  else if ((v13 & 0x40) == 0)
  {
    goto LABEL_21;
  }

  v29 = *(to + 67);
  v30 = OUTLINED_FUNCTION_4_1(v3, v11);
  v32 = *(v30 + v31) | 0x40u;
  v3 = OUTLINED_FUNCTION_1_0(v30, v33);
  if ((v13 & 4) != 0)
  {
    goto LABEL_30;
  }

LABEL_22:
  if ((v13 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_31:
  v3[2] = *(to + 16);
  v35 = *(v3 + v12) | 2u;
  v3 = OUTLINED_FUNCTION_1_0(v3, v11);
  if (v36)
  {
LABEL_24:
    v3[1] = *(to + 8);
    *(v3 + v12) |= 1u;
  }

LABEL_25:
}

- (void)setTitle:(uint64_t)title
{
  if (title)
  {
    OUTLINED_FUNCTION_0_3(title, a2, 56);
  }
}

- (void)setSubtitle:(uint64_t)subtitle
{
  if (subtitle)
  {
    OUTLINED_FUNCTION_0_3(subtitle, a2, 48);
  }
}

- (void)setReason:(uint64_t)reason
{
  if (reason)
  {
    OUTLINED_FUNCTION_0_3(reason, a2, 40);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!from)
  {
    goto LABEL_23;
  }

  v5 = v3[7];
  if (v5)
  {
    objc_storeStrong((from + 56), v5);
  }

  v6 = *(v4 + 6);
  if (v6)
  {
    objc_storeStrong((from + 48), v6);
  }

  v7 = *(v4 + 5);
  if (v7)
  {
    objc_storeStrong((from + 40), v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = *(v4 + 4);
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(ATXPBProactiveSuggestionUISpecification *)from addPreferredLayoutConfigs:?];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v13 = 0x1ECDF6000uLL;
  v14 = 68;
  v15 = *(v4 + 68);
  if ((v15 & 0x10) != 0)
  {
    OUTLINED_FUNCTION_3(0x1ECDF6000);
    OUTLINED_FUNCTION_2(v17);
    if ((v15 & 8) == 0)
    {
LABEL_17:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }
  }

  else if ((*(v4 + 68) & 8) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_2(v18);
  if ((v15 & 0x20) == 0)
  {
LABEL_18:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_2(v19);
  if ((v15 & 0x40) == 0)
  {
LABEL_19:
    if ((v15 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_27:
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_2(v20);
  if ((v15 & 4) == 0)
  {
LABEL_20:
    if ((v15 & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_29:
    *(from + 16) = *(v4 + 2);
    v22 = *(from + v14) | 2u;
    OUTLINED_FUNCTION_2(v13);
    if ((v23 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_28:
  *(from + 24) = *(v4 + 3);
  v21 = *(from + v14) | 4u;
  OUTLINED_FUNCTION_2(v13);
  if ((v15 & 2) != 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (v15)
  {
LABEL_22:
    *(from + 8) = *(v4 + 1);
    *(from + v14) |= 1u;
  }

LABEL_23:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setPreferredLayoutConfigs:(uint64_t)configs
{
  if (configs)
  {
    OUTLINED_FUNCTION_0_3(configs, a2, 32);
  }
}

@end