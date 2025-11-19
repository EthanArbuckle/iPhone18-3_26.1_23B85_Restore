@interface WFREPBAlertButton
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStyle:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBAlertButton

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v5 = v4;
    [(WFREPBAlertButton *)self setTitle:?];
    v4 = v5;
  }

  self->_style = *(v4 + 2);
  self->_preferred = *(v4 + 24);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | *(v4 + 2))) || -[NSString isEqual:](title, "isEqual:")) && self->_style == *(v4 + 2) && self->_preferred == v4[24];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_style;
  *(v5 + 24) = self->_preferred;
  return v5;
}

- (void)copyTo:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 setTitle:title];
  *(v5 + 2) = self->_style;
  *(v5 + 24) = self->_preferred;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_title)
  {
    __assert_rtn("[WFREPBAlertButton writeTo:]", "WFREPBAlertButton.m", 94, "nil != self->_title");
  }

  v7 = v4;
  PBDataWriterWriteStringField();
  style = self->_style;
  PBDataWriterWriteInt32Field();
  preferred = self->_preferred;
  PBDataWriterWriteBOOLField();
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
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
  v5 = [(WFREPBAlertButton *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsStyle:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Cancel"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Destructive"])
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