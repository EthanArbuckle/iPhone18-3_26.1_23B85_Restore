@interface WFPBShowDialogEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFPBShowDialogEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(WFPBShowDialogEvent *)self setKey:?];
  }

  if (fromCopy[2])
  {
    [(WFPBShowDialogEvent *)self setDialogType:?];
  }

  if (fromCopy[5])
  {
    [(WFPBShowDialogEvent *)self setPresentationStyle:?];
  }

  if (fromCopy[3])
  {
    [(WFPBShowDialogEvent *)self setDismissalType:?];
  }

  if (fromCopy[1])
  {
    [(WFPBShowDialogEvent *)self setAutomationType:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_dialogType hash]^ v3;
  v5 = [(NSString *)self->_presentationStyle hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_dismissalType hash];
  return v6 ^ [(NSString *)self->_automationType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[4])) || -[NSString isEqual:](key, "isEqual:")) && ((dialogType = self->_dialogType, !(dialogType | equalCopy[2])) || -[NSString isEqual:](dialogType, "isEqual:")) && ((presentationStyle = self->_presentationStyle, !(presentationStyle | equalCopy[5])) || -[NSString isEqual:](presentationStyle, "isEqual:")) && ((dismissalType = self->_dismissalType, !(dismissalType | equalCopy[3])) || -[NSString isEqual:](dismissalType, "isEqual:")))
  {
    automationType = self->_automationType;
    if (automationType | equalCopy[1])
    {
      v10 = [(NSString *)automationType isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_dialogType copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_presentationStyle copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_dismissalType copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_automationType copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_dialogType)
  {
    [v5 setDialogType:?];
    toCopy = v5;
  }

  if (self->_presentationStyle)
  {
    [v5 setPresentationStyle:?];
    toCopy = v5;
  }

  if (self->_dismissalType)
  {
    [v5 setDismissalType:?];
    toCopy = v5;
  }

  if (self->_automationType)
  {
    [v5 setAutomationType:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_dialogType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_presentationStyle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_dismissalType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_automationType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  dialogType = self->_dialogType;
  if (dialogType)
  {
    [v4 setObject:dialogType forKey:@"dialogType"];
  }

  presentationStyle = self->_presentationStyle;
  if (presentationStyle)
  {
    [v4 setObject:presentationStyle forKey:@"presentationStyle"];
  }

  dismissalType = self->_dismissalType;
  if (dismissalType)
  {
    [v4 setObject:dismissalType forKey:@"dismissalType"];
  }

  automationType = self->_automationType;
  if (automationType)
  {
    [v4 setObject:automationType forKey:@"automationType"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBShowDialogEvent;
  v4 = [(WFPBShowDialogEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBShowDialogEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"ShowDialogEvent";
  }
}

@end