@interface WFREPBAlertButton
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStyle:(id)style;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBAlertButton

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(WFREPBAlertButton *)self setTitle:?];
    fromCopy = v5;
  }

  self->_style = *(fromCopy + 2);
  self->_preferred = *(fromCopy + 24);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | *(equalCopy + 2))) || -[NSString isEqual:](title, "isEqual:")) && self->_style == *(equalCopy + 2) && self->_preferred == equalCopy[24];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_style;
  *(v5 + 24) = self->_preferred;
  return v5;
}

- (void)copyTo:(id)to
{
  title = self->_title;
  toCopy = to;
  [toCopy setTitle:title];
  *(toCopy + 2) = self->_style;
  *(toCopy + 24) = self->_preferred;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_title)
  {
    __assert_rtn("[WFREPBAlertButton writeTo:]", "WFREPBAlertButton.m", 94, "nil != self->_title");
  }

  v7 = toCopy;
  PBDataWriterWriteStringField();
  style = self->_style;
  PBDataWriterWriteInt32Field();
  preferred = self->_preferred;
  PBDataWriterWriteBOOLField();
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  style = self->_style;
  if (style >= 3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_style];
  }

  else
  {
    v7 = off_1E83744F8[style];
  }

  [v4 setObject:v7 forKey:@"style"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_preferred];
  [v4 setObject:v8 forKey:@"preferred"];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBAlertButton;
  v4 = [(WFREPBAlertButton *)&v8 description];
  dictionaryRepresentation = [(WFREPBAlertButton *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsStyle:(id)style
{
  styleCopy = style;
  if ([styleCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([styleCopy isEqualToString:@"Cancel"])
  {
    v4 = 1;
  }

  else if ([styleCopy isEqualToString:@"Destructive"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end