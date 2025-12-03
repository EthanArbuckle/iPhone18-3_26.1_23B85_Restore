@interface ICIAMMessageContent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContentParameters:(id)parameters;
- (void)addImages:(id)images;
- (void)addMessageActions:(id)actions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ICIAMMessageContent

- (void)mergeFrom:(id)from
{
  v41 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 10))
  {
    [(ICIAMMessageContent *)self setTitle:?];
  }

  if (*(fromCopy + 9))
  {
    [(ICIAMMessageContent *)self setSubtitle:?];
  }

  if (*(fromCopy + 1))
  {
    [(ICIAMMessageContent *)self setBody:?];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = *(fromCopy + 6);
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ICIAMMessageContent *)self addImages:*(*(&v34 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = *(fromCopy + 7);
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ICIAMMessageContent *)self addMessageActions:*(*(&v30 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v12);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = *(fromCopy + 4);
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(ICIAMMessageContent *)self addContentParameters:*(*(&v26 + 1) + 8 * k), v26];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v17);
  }

  if (*(fromCopy + 5))
  {
    [(ICIAMMessageContent *)self setIdentifier:?];
  }

  pageEvent = self->_pageEvent;
  v21 = *(fromCopy + 8);
  if (pageEvent)
  {
    if (v21)
    {
      [(ICIAMMetricEvent *)pageEvent mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(ICIAMMessageContent *)self setPageEvent:?];
  }

  closeClickEvent = self->_closeClickEvent;
  v23 = *(fromCopy + 3);
  if (closeClickEvent)
  {
    if (v23)
    {
      [(ICIAMMetricEvent *)closeClickEvent mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(ICIAMMessageContent *)self setCloseClickEvent:?];
  }

  cardClickEvent = self->_cardClickEvent;
  v25 = *(fromCopy + 2);
  if (cardClickEvent)
  {
    if (v25)
    {
      [(ICIAMMetricEvent *)cardClickEvent mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(ICIAMMessageContent *)self setCardClickEvent:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_subtitle hash]^ v3;
  v5 = [(NSString *)self->_body hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_images hash];
  v7 = [(NSMutableArray *)self->_messageActions hash];
  v8 = v7 ^ [(NSMutableArray *)self->_contentParameters hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_identifier hash];
  v10 = [(ICIAMMetricEvent *)self->_pageEvent hash];
  v11 = v10 ^ [(ICIAMMetricEvent *)self->_closeClickEvent hash];
  return v9 ^ v11 ^ [(ICIAMMetricEvent *)self->_cardClickEvent hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | equalCopy[10])) || -[NSString isEqual:](title, "isEqual:")) && ((subtitle = self->_subtitle, !(subtitle | equalCopy[9])) || -[NSString isEqual:](subtitle, "isEqual:")) && ((body = self->_body, !(body | equalCopy[1])) || -[NSString isEqual:](body, "isEqual:")) && ((images = self->_images, !(images | equalCopy[6])) || -[NSMutableArray isEqual:](images, "isEqual:")) && ((messageActions = self->_messageActions, !(messageActions | equalCopy[7])) || -[NSMutableArray isEqual:](messageActions, "isEqual:")) && ((contentParameters = self->_contentParameters, !(contentParameters | equalCopy[4])) || -[NSMutableArray isEqual:](contentParameters, "isEqual:")) && ((identifier = self->_identifier, !(identifier | equalCopy[5])) || -[NSString isEqual:](identifier, "isEqual:")) && ((pageEvent = self->_pageEvent, !(pageEvent | equalCopy[8])) || -[ICIAMMetricEvent isEqual:](pageEvent, "isEqual:")) && ((closeClickEvent = self->_closeClickEvent, !(closeClickEvent | equalCopy[3])) || -[ICIAMMetricEvent isEqual:](closeClickEvent, "isEqual:")))
  {
    cardClickEvent = self->_cardClickEvent;
    if (cardClickEvent | equalCopy[2])
    {
      v15 = [(ICIAMMetricEvent *)cardClickEvent isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:zone];
  v9 = v5[9];
  v5[9] = v8;

  v10 = [(NSString *)self->_body copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = self->_images;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v48;
    do
    {
      v16 = 0;
      do
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v47 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addImages:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v14);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = self->_messageActions;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    do
    {
      v22 = 0;
      do
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v43 + 1) + 8 * v22) copyWithZone:zone];
        [v5 addMessageActions:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v20);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = self->_contentParameters;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v40;
    do
    {
      v28 = 0;
      do
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v39 + 1) + 8 * v28) copyWithZone:{zone, v39}];
        [v5 addContentParameters:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v26);
  }

  v30 = [(NSString *)self->_identifier copyWithZone:zone];
  v31 = v5[5];
  v5[5] = v30;

  v32 = [(ICIAMMetricEvent *)self->_pageEvent copyWithZone:zone];
  v33 = v5[8];
  v5[8] = v32;

  v34 = [(ICIAMMetricEvent *)self->_closeClickEvent copyWithZone:zone];
  v35 = v5[3];
  v5[3] = v34;

  v36 = [(ICIAMMetricEvent *)self->_cardClickEvent copyWithZone:zone];
  v37 = v5[2];
  v5[2] = v36;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_title)
  {
    [toCopy setTitle:?];
  }

  if (self->_subtitle)
  {
    [toCopy setSubtitle:?];
  }

  if (self->_body)
  {
    [toCopy setBody:?];
  }

  if ([(ICIAMMessageContent *)self imagesCount])
  {
    [toCopy clearImages];
    imagesCount = [(ICIAMMessageContent *)self imagesCount];
    if (imagesCount)
    {
      v5 = imagesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ICIAMMessageContent *)self imagesAtIndex:i];
        [toCopy addImages:v7];
      }
    }
  }

  if ([(ICIAMMessageContent *)self messageActionsCount])
  {
    [toCopy clearMessageActions];
    messageActionsCount = [(ICIAMMessageContent *)self messageActionsCount];
    if (messageActionsCount)
    {
      v9 = messageActionsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ICIAMMessageContent *)self messageActionsAtIndex:j];
        [toCopy addMessageActions:v11];
      }
    }
  }

  if ([(ICIAMMessageContent *)self contentParametersCount])
  {
    [toCopy clearContentParameters];
    contentParametersCount = [(ICIAMMessageContent *)self contentParametersCount];
    if (contentParametersCount)
    {
      v13 = contentParametersCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(ICIAMMessageContent *)self contentParametersAtIndex:k];
        [toCopy addContentParameters:v15];
      }
    }
  }

  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  v16 = toCopy;
  if (self->_pageEvent)
  {
    [toCopy setPageEvent:?];
    v16 = toCopy;
  }

  if (self->_closeClickEvent)
  {
    [toCopy setCloseClickEvent:?];
    v16 = toCopy;
  }

  if (self->_cardClickEvent)
  {
    [toCopy setCardClickEvent:?];
    v16 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_body)
  {
    PBDataWriterWriteStringField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_images;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_messageActions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_contentParameters;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pageEvent)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_closeClickEvent)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_cardClickEvent)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v52 = *MEMORY[0x1E69E9840];
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

  body = self->_body;
  if (body)
  {
    [v4 setObject:body forKey:@"body"];
  }

  if ([(NSMutableArray *)self->_images count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_images, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = self->_images;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v46;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v45 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"images"];
  }

  if ([(NSMutableArray *)self->_messageActions count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_messageActions, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = self->_messageActions;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation2 = [*(*(&v41 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation2];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"messageActions"];
  }

  if ([(NSMutableArray *)self->_contentParameters count])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_contentParameters, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = self->_contentParameters;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation3 = [*(*(&v37 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation3];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v25);
    }

    [v4 setObject:v22 forKey:@"contentParameters"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"identifier"];
  }

  pageEvent = self->_pageEvent;
  if (pageEvent)
  {
    dictionaryRepresentation4 = [(ICIAMMetricEvent *)pageEvent dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"pageEvent"];
  }

  closeClickEvent = self->_closeClickEvent;
  if (closeClickEvent)
  {
    dictionaryRepresentation5 = [(ICIAMMetricEvent *)closeClickEvent dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"closeClickEvent"];
  }

  cardClickEvent = self->_cardClickEvent;
  if (cardClickEvent)
  {
    dictionaryRepresentation6 = [(ICIAMMetricEvent *)cardClickEvent dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation6 forKey:@"cardClickEvent"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMMessageContent;
  v4 = [(ICIAMMessageContent *)&v8 description];
  dictionaryRepresentation = [(ICIAMMessageContent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addContentParameters:(id)parameters
{
  parametersCopy = parameters;
  contentParameters = self->_contentParameters;
  v8 = parametersCopy;
  if (!contentParameters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contentParameters;
    self->_contentParameters = v6;

    parametersCopy = v8;
    contentParameters = self->_contentParameters;
  }

  [(NSMutableArray *)contentParameters addObject:parametersCopy];
}

- (void)addMessageActions:(id)actions
{
  actionsCopy = actions;
  messageActions = self->_messageActions;
  v8 = actionsCopy;
  if (!messageActions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_messageActions;
    self->_messageActions = v6;

    actionsCopy = v8;
    messageActions = self->_messageActions;
  }

  [(NSMutableArray *)messageActions addObject:actionsCopy];
}

- (void)addImages:(id)images
{
  imagesCopy = images;
  images = self->_images;
  v8 = imagesCopy;
  if (!images)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_images;
    self->_images = v6;

    imagesCopy = v8;
    images = self->_images;
  }

  [(NSMutableArray *)images addObject:imagesCopy];
}

@end