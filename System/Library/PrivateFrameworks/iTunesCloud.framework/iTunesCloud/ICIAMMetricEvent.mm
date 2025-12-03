@interface ICIAMMetricEvent
- (BOOL)isEqual:(id)equal;
- (id)actionTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)pageTypeAsString:(int)string;
- (id)targetTypeAsString:(int)string;
- (int)StringAsActionType:(id)type;
- (int)StringAsPageType:(id)type;
- (int)StringAsTargetType:(id)type;
- (int)actionType;
- (int)pageType;
- (int)targetType;
- (unint64_t)hash;
- (void)addActionDetails:(id)details;
- (void)addPageDetails:(id)details;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPageType:(BOOL)type;
- (void)setHasTargetType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ICIAMMetricEvent

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 8))
  {
    [(ICIAMMetricEvent *)self setPageId:?];
  }

  if ((*(fromCopy + 100) & 2) != 0)
  {
    self->_pageType = *(fromCopy + 18);
    *&self->_has |= 2u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(fromCopy + 7);
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ICIAMMetricEvent *)self addPageDetails:*(*(&v22 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 11))
  {
    [(ICIAMMetricEvent *)self setTargetId:?];
  }

  v10 = *(fromCopy + 100);
  if ((v10 & 4) != 0)
  {
    self->_targetType = *(fromCopy + 24);
    *&self->_has |= 4u;
    v10 = *(fromCopy + 100);
  }

  if (v10)
  {
    self->_actionType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(ICIAMMetricEvent *)self setActionURL:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = *(fromCopy + 1);
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(ICIAMMetricEvent *)self addActionDetails:*(*(&v18 + 1) + 8 * j), v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  if (*(fromCopy + 4))
  {
    [(ICIAMMetricEvent *)self setEventType:?];
  }

  if (*(fromCopy + 10))
  {
    [(ICIAMMetricEvent *)self setPageUrl:?];
  }

  if (*(fromCopy + 6))
  {
    [(ICIAMMetricEvent *)self setImpressionType:?];
  }

  impression = self->_impression;
  v17 = *(fromCopy + 5);
  if (impression)
  {
    if (v17)
    {
      [(ICIAMImpressionNode *)impression mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(ICIAMMetricEvent *)self setImpression:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_pageId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_pageType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_pageDetails hash];
  v6 = [(NSString *)self->_targetId hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_targetType;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = 2654435761 * self->_actionType;
LABEL_9:
  v9 = v4 ^ v3 ^ v5 ^ v6;
  v10 = v7 ^ v8 ^ [(NSString *)self->_actionURL hash];
  v11 = v9 ^ v10 ^ [(NSMutableArray *)self->_actionDetails hash];
  v12 = [(NSString *)self->_eventType hash];
  v13 = v12 ^ [(NSString *)self->_pageUrl hash];
  v14 = v13 ^ [(NSString *)self->_impressionType hash];
  return v11 ^ v14 ^ [(ICIAMImpressionNode *)self->_impression hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  pageId = self->_pageId;
  if (pageId | *(equalCopy + 8))
  {
    if (![(NSString *)pageId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 100) & 2) == 0 || self->_pageType != *(equalCopy + 18))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 100) & 2) != 0)
  {
LABEL_35:
    v14 = 0;
    goto LABEL_36;
  }

  pageDetails = self->_pageDetails;
  if (pageDetails | *(equalCopy + 7) && ![(NSMutableArray *)pageDetails isEqual:?])
  {
    goto LABEL_35;
  }

  targetId = self->_targetId;
  if (targetId | *(equalCopy + 11))
  {
    if (![(NSString *)targetId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 100) & 4) == 0 || self->_targetType != *(equalCopy + 24))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 100) & 4) != 0)
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 100) & 1) == 0 || self->_actionType != *(equalCopy + 4))
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 100))
  {
    goto LABEL_35;
  }

  actionURL = self->_actionURL;
  if (actionURL | *(equalCopy + 3) && ![(NSString *)actionURL isEqual:?])
  {
    goto LABEL_35;
  }

  actionDetails = self->_actionDetails;
  if (actionDetails | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)actionDetails isEqual:?])
    {
      goto LABEL_35;
    }
  }

  eventType = self->_eventType;
  if (eventType | *(equalCopy + 4))
  {
    if (![(NSString *)eventType isEqual:?])
    {
      goto LABEL_35;
    }
  }

  pageUrl = self->_pageUrl;
  if (pageUrl | *(equalCopy + 10))
  {
    if (![(NSString *)pageUrl isEqual:?])
    {
      goto LABEL_35;
    }
  }

  impressionType = self->_impressionType;
  if (impressionType | *(equalCopy + 6))
  {
    if (![(NSString *)impressionType isEqual:?])
    {
      goto LABEL_35;
    }
  }

  impression = self->_impression;
  if (impression | *(equalCopy + 5))
  {
    v14 = [(ICIAMImpressionNode *)impression isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_36:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_pageId copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 72) = self->_pageType;
    *(v5 + 100) |= 2u;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_pageDetails;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v38 + 1) + 8 * i) copyWithZone:zone];
        [v5 addPageDetails:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_targetId copyWithZone:zone];
  v15 = *(v5 + 88);
  *(v5 + 88) = v14;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 96) = self->_targetType;
    *(v5 + 100) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_actionType;
    *(v5 + 100) |= 1u;
  }

  v17 = [(NSString *)self->_actionURL copyWithZone:zone];
  v18 = *(v5 + 24);
  *(v5 + 24) = v17;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = self->_actionDetails;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v34 + 1) + 8 * j) copyWithZone:{zone, v34}];
        [v5 addActionDetails:v24];
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v21);
  }

  v25 = [(NSString *)self->_eventType copyWithZone:zone];
  v26 = *(v5 + 32);
  *(v5 + 32) = v25;

  v27 = [(NSString *)self->_pageUrl copyWithZone:zone];
  v28 = *(v5 + 80);
  *(v5 + 80) = v27;

  v29 = [(NSString *)self->_impressionType copyWithZone:zone];
  v30 = *(v5 + 48);
  *(v5 + 48) = v29;

  v31 = [(ICIAMImpressionNode *)self->_impression copyWithZone:zone];
  v32 = *(v5 + 40);
  *(v5 + 40) = v31;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v15 = toCopy;
  if (self->_pageId)
  {
    [toCopy setPageId:?];
    toCopy = v15;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 18) = self->_pageType;
    *(toCopy + 100) |= 2u;
  }

  if ([(ICIAMMetricEvent *)self pageDetailsCount])
  {
    [v15 clearPageDetails];
    pageDetailsCount = [(ICIAMMetricEvent *)self pageDetailsCount];
    if (pageDetailsCount)
    {
      v6 = pageDetailsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ICIAMMetricEvent *)self pageDetailsAtIndex:i];
        [v15 addPageDetails:v8];
      }
    }
  }

  if (self->_targetId)
  {
    [v15 setTargetId:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v15 + 24) = self->_targetType;
    *(v15 + 100) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v15 + 4) = self->_actionType;
    *(v15 + 100) |= 1u;
  }

  if (self->_actionURL)
  {
    [v15 setActionURL:?];
  }

  if ([(ICIAMMetricEvent *)self actionDetailsCount])
  {
    [v15 clearActionDetails];
    actionDetailsCount = [(ICIAMMetricEvent *)self actionDetailsCount];
    if (actionDetailsCount)
    {
      v11 = actionDetailsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(ICIAMMetricEvent *)self actionDetailsAtIndex:j];
        [v15 addActionDetails:v13];
      }
    }
  }

  if (self->_eventType)
  {
    [v15 setEventType:?];
  }

  v14 = v15;
  if (self->_pageUrl)
  {
    [v15 setPageUrl:?];
    v14 = v15;
  }

  if (self->_impressionType)
  {
    [v15 setImpressionType:?];
    v14 = v15;
  }

  if (self->_impression)
  {
    [v15 setImpression:?];
    v14 = v15;
  }
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_pageId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_pageDetails;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
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

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if (self->_targetId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_actionURL)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_actionDetails;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }

  if (self->_eventType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pageUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_impressionType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_impression)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v45 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  pageId = self->_pageId;
  if (pageId)
  {
    [dictionary setObject:pageId forKey:@"pageId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    pageType = self->_pageType;
    if (pageType < 5 && ((0x17u >> pageType) & 1) != 0)
    {
      v7 = off_1E7BF5B20[pageType];
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_pageType];
    }

    [v4 setObject:v7 forKey:@"pageType"];
  }

  if ([(NSMutableArray *)self->_pageDetails count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_pageDetails, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = self->_pageDetails;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"pageDetails"];
  }

  targetId = self->_targetId;
  if (targetId)
  {
    [v4 setObject:targetId forKey:@"targetId"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    targetType = self->_targetType;
    if (targetType >= 5)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_targetType];
    }

    else
    {
      v18 = off_1E7BF5B48[targetType];
    }

    [v4 setObject:v18 forKey:@"targetType"];

    has = self->_has;
  }

  if (has)
  {
    actionType = self->_actionType;
    if (actionType >= 3)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_actionType];
    }

    else
    {
      v20 = off_1E7BF5B70[actionType];
    }

    [v4 setObject:v20 forKey:@"actionType"];
  }

  actionURL = self->_actionURL;
  if (actionURL)
  {
    [v4 setObject:actionURL forKey:@"actionURL"];
  }

  if ([(NSMutableArray *)self->_actionDetails count])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_actionDetails, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = self->_actionDetails;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation2 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation2];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v25);
    }

    [v4 setObject:v22 forKey:@"actionDetails"];
  }

  eventType = self->_eventType;
  if (eventType)
  {
    [v4 setObject:eventType forKey:@"eventType"];
  }

  pageUrl = self->_pageUrl;
  if (pageUrl)
  {
    [v4 setObject:pageUrl forKey:@"pageUrl"];
  }

  impressionType = self->_impressionType;
  if (impressionType)
  {
    [v4 setObject:impressionType forKey:@"impressionType"];
  }

  impression = self->_impression;
  if (impression)
  {
    dictionaryRepresentation3 = [(ICIAMImpressionNode *)impression dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"impression"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMMetricEvent;
  v4 = [(ICIAMMetricEvent *)&v8 description];
  dictionaryRepresentation = [(ICIAMMetricEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addActionDetails:(id)details
{
  detailsCopy = details;
  actionDetails = self->_actionDetails;
  v8 = detailsCopy;
  if (!actionDetails)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_actionDetails;
    self->_actionDetails = v6;

    detailsCopy = v8;
    actionDetails = self->_actionDetails;
  }

  [(NSMutableArray *)actionDetails addObject:detailsCopy];
}

- (int)StringAsActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Navigate"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Swipe"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Select"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)actionTypeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7BF5B70[string];
  }

  return v4;
}

- (int)actionType
{
  if (*&self->_has)
  {
    return self->_actionType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsTargetType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Card"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Button"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Slider"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Banner"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Close"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)targetTypeAsString:(int)string
{
  if (string >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7BF5B48[string];
  }

  return v4;
}

- (void)setHasTargetType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)targetType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_targetType;
  }

  else
  {
    return 0;
  }
}

- (void)addPageDetails:(id)details
{
  detailsCopy = details;
  pageDetails = self->_pageDetails;
  v8 = detailsCopy;
  if (!pageDetails)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_pageDetails;
    self->_pageDetails = v6;

    detailsCopy = v8;
    pageDetails = self->_pageDetails;
  }

  [(NSMutableArray *)pageDetails addObject:detailsCopy];
}

- (int)StringAsPageType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Banner"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Modal"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Native"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Notification"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pageTypeAsString:(int)string
{
  if (string < 5 && ((0x17u >> string) & 1) != 0)
  {
    v4 = off_1E7BF5B20[string];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)setHasPageType:(BOOL)type
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

- (int)pageType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_pageType;
  }

  else
  {
    return 0;
  }
}

@end