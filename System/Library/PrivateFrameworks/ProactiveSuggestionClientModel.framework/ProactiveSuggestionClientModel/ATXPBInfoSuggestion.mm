@interface ATXPBInfoSuggestion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEndDate:(BOOL)date;
- (void)setHasLayouts:(BOOL)layouts;
- (void)setHasRelevanceScore:(BOOL)score;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation ATXPBInfoSuggestion

- (void)setHasLayouts:(BOOL)layouts
{
  if (layouts)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRelevanceScore:(BOOL)score
{
  if (score)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEndDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBInfoSuggestion;
  v4 = [(ATXPBInfoSuggestion *)&v8 description];
  dictionaryRepresentation = [(ATXPBInfoSuggestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    [dictionary setObject:appBundleIdentifier forKey:@"appBundleIdentifier"];
  }

  widgetBundleIdentifier = self->_widgetBundleIdentifier;
  if (widgetBundleIdentifier)
  {
    [v4 setObject:widgetBundleIdentifier forKey:@"widgetBundleIdentifier"];
  }

  widgetKind = self->_widgetKind;
  if (widgetKind)
  {
    [v4 setObject:widgetKind forKey:@"widgetKind"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_layouts];
    [v4 setObject:v8 forKey:@"layouts"];
  }

  suggestionIdentifier = self->_suggestionIdentifier;
  if (suggestionIdentifier)
  {
    [v4 setObject:suggestionIdentifier forKey:@"suggestionIdentifier"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v4 setObject:clientModelId forKey:@"clientModelId"];
  }

  archivedIntent = self->_archivedIntent;
  if (archivedIntent)
  {
    [v4 setObject:archivedIntent forKey:@"archivedIntent"];
  }

  archivedMetadata = self->_archivedMetadata;
  if (archivedMetadata)
  {
    [v4 setObject:archivedMetadata forKey:@"archivedMetadata"];
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    [v4 setObject:sourceIdentifier forKey:@"sourceIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_confidenceLevel];
    [v4 setObject:v19 forKey:@"confidenceLevel"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_21:
      if ((has & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_21;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_relevanceScore];
  [v4 setObject:v20 forKey:@"relevanceScore"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_22:
    if ((has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
  [v4 setObject:v21 forKey:@"startDate"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_23:
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
    [v4 setObject:v15 forKey:@"endDate"];
  }

LABEL_24:
  criterion = self->_criterion;
  if (criterion)
  {
    [v4 setObject:criterion forKey:@"criterion"];
  }

  archivedIntentDescription = self->_archivedIntentDescription;
  if (archivedIntentDescription)
  {
    [v4 setObject:archivedIntentDescription forKey:@"archivedIntentDescription"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_widgetBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_widgetKind)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if ((*&self->_has & 4) != 0)
  {
    layouts = self->_layouts;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
  }

  if (self->_suggestionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_archivedIntent)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if (self->_archivedMetadata)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if (self->_sourceIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  has = self->_has;
  if (has)
  {
    confidenceLevel = self->_confidenceLevel;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_21:
      if ((has & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_21;
  }

  relevanceScore = self->_relevanceScore;
  PBDataWriterWriteDoubleField();
  toCopy = v11;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_22:
    if ((has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  startDate = self->_startDate;
  PBDataWriterWriteDoubleField();
  toCopy = v11;
  if ((*&self->_has & 2) != 0)
  {
LABEL_23:
    endDate = self->_endDate;
    PBDataWriterWriteDoubleField();
    toCopy = v11;
  }

LABEL_24:
  if (self->_criterion)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_archivedIntentDescription)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_appBundleIdentifier)
  {
    [toCopy setAppBundleIdentifier:?];
    toCopy = v6;
  }

  if (self->_widgetBundleIdentifier)
  {
    [v6 setWidgetBundleIdentifier:?];
    toCopy = v6;
  }

  if (self->_widgetKind)
  {
    [v6 setWidgetKind:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 3) = self->_layouts;
    *(toCopy + 128) |= 4u;
  }

  if (self->_suggestionIdentifier)
  {
    [v6 setSuggestionIdentifier:?];
    toCopy = v6;
  }

  if (self->_clientModelId)
  {
    [v6 setClientModelId:?];
    toCopy = v6;
  }

  if (self->_archivedIntent)
  {
    [v6 setArchivedIntent:?];
    toCopy = v6;
  }

  if (self->_archivedMetadata)
  {
    [v6 setArchivedMetadata:?];
    toCopy = v6;
  }

  if (self->_sourceIdentifier)
  {
    [v6 setSourceIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_confidenceLevel;
    *(toCopy + 128) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_21:
      if ((has & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_21;
  }

  *(toCopy + 4) = *&self->_relevanceScore;
  *(toCopy + 128) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_22:
    if ((has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  *(toCopy + 5) = *&self->_startDate;
  *(toCopy + 128) |= 0x10u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_23:
    *(toCopy + 2) = *&self->_endDate;
    *(toCopy + 128) |= 2u;
  }

LABEL_24:
  if (self->_criterion)
  {
    [v6 setCriterion:?];
    toCopy = v6;
  }

  if (self->_archivedIntentDescription)
  {
    [v6 setArchivedIntentDescription:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appBundleIdentifier copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_widgetBundleIdentifier copyWithZone:zone];
  v9 = *(v5 + 112);
  *(v5 + 112) = v8;

  v10 = [(NSString *)self->_widgetKind copyWithZone:zone];
  v11 = *(v5 + 120);
  *(v5 + 120) = v10;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_layouts;
    *(v5 + 128) |= 4u;
  }

  v12 = [(NSString *)self->_suggestionIdentifier copyWithZone:zone];
  v13 = *(v5 + 104);
  *(v5 + 104) = v12;

  v14 = [(NSString *)self->_clientModelId copyWithZone:zone];
  v15 = *(v5 + 80);
  *(v5 + 80) = v14;

  v16 = [(NSData *)self->_archivedIntent copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSData *)self->_archivedMetadata copyWithZone:zone];
  v19 = *(v5 + 72);
  *(v5 + 72) = v18;

  v20 = [(NSString *)self->_sourceIdentifier copyWithZone:zone];
  v21 = *(v5 + 96);
  *(v5 + 96) = v20;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_confidenceLevel;
    *(v5 + 128) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v5 + 40) = self->_startDate;
      *(v5 + 128) |= 0x10u;
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 32) = self->_relevanceScore;
  *(v5 + 128) |= 8u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 2) != 0)
  {
LABEL_7:
    *(v5 + 16) = self->_endDate;
    *(v5 + 128) |= 2u;
  }

LABEL_8:
  v23 = [(NSString *)self->_criterion copyWithZone:zone];
  v24 = *(v5 + 88);
  *(v5 + 88) = v23;

  v25 = [(NSData *)self->_archivedIntentDescription copyWithZone:zone];
  v26 = *(v5 + 64);
  *(v5 + 64) = v25;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)appBundleIdentifier isEqual:?])
    {
      goto LABEL_47;
    }
  }

  widgetBundleIdentifier = self->_widgetBundleIdentifier;
  if (widgetBundleIdentifier | *(equalCopy + 14))
  {
    if (![(NSString *)widgetBundleIdentifier isEqual:?])
    {
      goto LABEL_47;
    }
  }

  widgetKind = self->_widgetKind;
  if (widgetKind | *(equalCopy + 15))
  {
    if (![(NSString *)widgetKind isEqual:?])
    {
      goto LABEL_47;
    }
  }

  v8 = *(equalCopy + 128);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 128) & 4) == 0 || self->_layouts != *(equalCopy + 3))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 128) & 4) != 0)
  {
LABEL_47:
    v17 = 0;
    goto LABEL_48;
  }

  suggestionIdentifier = self->_suggestionIdentifier;
  if (suggestionIdentifier | *(equalCopy + 13) && ![(NSString *)suggestionIdentifier isEqual:?])
  {
    goto LABEL_47;
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(equalCopy + 10))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_47;
    }
  }

  archivedIntent = self->_archivedIntent;
  if (archivedIntent | *(equalCopy + 7))
  {
    if (![(NSData *)archivedIntent isEqual:?])
    {
      goto LABEL_47;
    }
  }

  archivedMetadata = self->_archivedMetadata;
  if (archivedMetadata | *(equalCopy + 9))
  {
    if (![(NSData *)archivedMetadata isEqual:?])
    {
      goto LABEL_47;
    }
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier | *(equalCopy + 12))
  {
    if (![(NSString *)sourceIdentifier isEqual:?])
    {
      goto LABEL_47;
    }
  }

  v14 = *(equalCopy + 128);
  if (*&self->_has)
  {
    if ((*(equalCopy + 128) & 1) == 0 || self->_confidenceLevel != *(equalCopy + 1))
    {
      goto LABEL_47;
    }
  }

  else if (*(equalCopy + 128))
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 128) & 8) == 0 || self->_relevanceScore != *(equalCopy + 4))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 128) & 8) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 128) & 0x10) == 0 || self->_startDate != *(equalCopy + 5))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 128) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 128) & 2) == 0 || self->_endDate != *(equalCopy + 2))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 128) & 2) != 0)
  {
    goto LABEL_47;
  }

  criterion = self->_criterion;
  if (criterion | *(equalCopy + 11) && ![(NSString *)criterion isEqual:?])
  {
    goto LABEL_47;
  }

  archivedIntentDescription = self->_archivedIntentDescription;
  if (archivedIntentDescription | *(equalCopy + 8))
  {
    v17 = [(NSData *)archivedIntentDescription isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_48:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appBundleIdentifier hash];
  v4 = [(NSString *)self->_widgetBundleIdentifier hash];
  v5 = [(NSString *)self->_widgetKind hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_layouts;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_suggestionIdentifier hash];
  v8 = [(NSString *)self->_clientModelId hash];
  v9 = [(NSData *)self->_archivedIntent hash];
  v10 = [(NSData *)self->_archivedMetadata hash];
  v11 = [(NSString *)self->_sourceIdentifier hash];
  if (*&self->_has)
  {
    v14 = 2654435761 * self->_confidenceLevel;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v14 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  relevanceScore = self->_relevanceScore;
  if (relevanceScore < 0.0)
  {
    relevanceScore = -relevanceScore;
  }

  *v12.i64 = floor(relevanceScore + 0.5);
  v16 = (relevanceScore - *v12.i64) * 1.84467441e19;
  *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v12 = vbslq_s8(vnegq_f64(v17), v13, v12);
  v18 = 2654435761u * *v12.i64;
  if (v16 >= 0.0)
  {
    if (v16 > 0.0)
    {
      v18 += v16;
    }
  }

  else
  {
    v18 -= fabs(v16);
  }

LABEL_12:
  if ((*&self->_has & 0x10) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v12.i64 = floor(startDate + 0.5);
    v21 = (startDate - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v12 = vbslq_s8(vnegq_f64(v22), v13, v12);
    v19 = 2654435761u * *v12.i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v12.i64 = floor(endDate + 0.5);
    v25 = (endDate - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v23 = 2654435761u * *vbslq_s8(vnegq_f64(v26), v13, v12).i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  v27 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v14 ^ v18;
  v28 = v19 ^ v23 ^ [(NSString *)self->_criterion hash];
  return v27 ^ v28 ^ [(NSData *)self->_archivedIntentDescription hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(ATXPBInfoSuggestion *)self setAppBundleIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 14))
  {
    [(ATXPBInfoSuggestion *)self setWidgetBundleIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 15))
  {
    [(ATXPBInfoSuggestion *)self setWidgetKind:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 128) & 4) != 0)
  {
    self->_layouts = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 13))
  {
    [(ATXPBInfoSuggestion *)self setSuggestionIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 10))
  {
    [(ATXPBInfoSuggestion *)self setClientModelId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 7))
  {
    [(ATXPBInfoSuggestion *)self setArchivedIntent:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 9))
  {
    [(ATXPBInfoSuggestion *)self setArchivedMetadata:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 12))
  {
    [(ATXPBInfoSuggestion *)self setSourceIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 128);
  if (v5)
  {
    self->_confidenceLevel = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 128);
    if ((v5 & 8) == 0)
    {
LABEL_21:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((*(fromCopy + 128) & 8) == 0)
  {
    goto LABEL_21;
  }

  self->_relevanceScore = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 128);
  if ((v5 & 0x10) == 0)
  {
LABEL_22:
    if ((v5 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  self->_startDate = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 128) & 2) != 0)
  {
LABEL_23:
    self->_endDate = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_24:
  if (*(fromCopy + 11))
  {
    [(ATXPBInfoSuggestion *)self setCriterion:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 8))
  {
    [(ATXPBInfoSuggestion *)self setArchivedIntentDescription:?];
    fromCopy = v6;
  }
}

@end