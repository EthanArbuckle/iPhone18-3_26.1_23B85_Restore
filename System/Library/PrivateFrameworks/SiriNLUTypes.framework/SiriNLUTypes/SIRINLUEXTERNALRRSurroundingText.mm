@interface SIRINLUEXTERNALRRSurroundingText
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALRRSurroundingText

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(SIRINLUEXTERNALRRSurroundingText *)self setText:?];
    fromCopy = v7;
  }

  boundingBox = self->_boundingBox;
  v6 = fromCopy[1];
  if (boundingBox)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALRRBoundingBox *)boundingBox mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALRRSurroundingText *)self setBoundingBox:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((text = self->_text, !(text | equalCopy[2])) || -[NSString isEqual:](text, "isEqual:")))
  {
    boundingBox = self->_boundingBox;
    if (boundingBox | equalCopy[1])
    {
      v7 = [(SIRINLUEXTERNALRRBoundingBox *)boundingBox isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALRRBoundingBox *)self->_boundingBox copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_text)
  {
    [toCopy setText:?];
    toCopy = v5;
  }

  if (self->_boundingBox)
  {
    [v5 setBoundingBox:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_boundingBox)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  text = self->_text;
  if (text)
  {
    [dictionary setObject:text forKey:@"text"];
  }

  boundingBox = self->_boundingBox;
  if (boundingBox)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALRRBoundingBox *)boundingBox dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"bounding_box"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALRRSurroundingText;
  v4 = [(SIRINLUEXTERNALRRSurroundingText *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALRRSurroundingText *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end