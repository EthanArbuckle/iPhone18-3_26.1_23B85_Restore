@interface WFPBAutomatorWorkflowMigrationErrorEvent
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

@implementation WFPBAutomatorWorkflowMigrationErrorEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(WFPBAutomatorWorkflowMigrationErrorEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(WFPBAutomatorWorkflowMigrationErrorEvent *)self setAutomatorActionIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(WFPBAutomatorWorkflowMigrationErrorEvent *)self setErrorDescription:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_automatorActionIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_errorDescription hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[3])) || -[NSString isEqual:](key, "isEqual:")) && ((automatorActionIdentifier = self->_automatorActionIdentifier, !(automatorActionIdentifier | equalCopy[1])) || -[NSString isEqual:](automatorActionIdentifier, "isEqual:")))
  {
    errorDescription = self->_errorDescription;
    if (errorDescription | equalCopy[2])
    {
      v8 = [(NSString *)errorDescription isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_automatorActionIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

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

  if (self->_automatorActionIdentifier)
  {
    [v5 setAutomatorActionIdentifier:?];
    toCopy = v5;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
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

  if (self->_automatorActionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_errorDescription)
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

  automatorActionIdentifier = self->_automatorActionIdentifier;
  if (automatorActionIdentifier)
  {
    [v4 setObject:automatorActionIdentifier forKey:@"automatorActionIdentifier"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v4 setObject:errorDescription forKey:@"errorDescription"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBAutomatorWorkflowMigrationErrorEvent;
  v4 = [(WFPBAutomatorWorkflowMigrationErrorEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBAutomatorWorkflowMigrationErrorEvent *)self dictionaryRepresentation];
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
    return @"AutomatorWorkflowMigrationErrorEvent";
  }
}

@end