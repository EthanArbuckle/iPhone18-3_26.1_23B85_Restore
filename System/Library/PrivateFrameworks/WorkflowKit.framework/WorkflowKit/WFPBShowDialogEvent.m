@interface WFPBShowDialogEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBShowDialogEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    [(WFPBShowDialogEvent *)self setKey:?];
  }

  if (v4[2])
  {
    [(WFPBShowDialogEvent *)self setDialogType:?];
  }

  if (v4[5])
  {
    [(WFPBShowDialogEvent *)self setPresentationStyle:?];
  }

  if (v4[3])
  {
    [(WFPBShowDialogEvent *)self setDismissalType:?];
  }

  if (v4[1])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[4])) || -[NSString isEqual:](key, "isEqual:")) && ((dialogType = self->_dialogType, !(dialogType | v4[2])) || -[NSString isEqual:](dialogType, "isEqual:")) && ((presentationStyle = self->_presentationStyle, !(presentationStyle | v4[5])) || -[NSString isEqual:](presentationStyle, "isEqual:")) && ((dismissalType = self->_dismissalType, !(dismissalType | v4[3])) || -[NSString isEqual:](dismissalType, "isEqual:")))
  {
    automationType = self->_automationType;
    if (automationType | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_dialogType copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_presentationStyle copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_dismissalType copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_automationType copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v5;
  }

  if (self->_dialogType)
  {
    [v5 setDialogType:?];
    v4 = v5;
  }

  if (self->_presentationStyle)
  {
    [v5 setPresentationStyle:?];
    v4 = v5;
  }

  if (self->_dismissalType)
  {
    [v5 setDismissalType:?];
    v4 = v5;
  }

  if (self->_automationType)
  {
    [v5 setAutomationType:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_dialogType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_presentationStyle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_dismissalType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_automationType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
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
  v5 = [(WFPBShowDialogEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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