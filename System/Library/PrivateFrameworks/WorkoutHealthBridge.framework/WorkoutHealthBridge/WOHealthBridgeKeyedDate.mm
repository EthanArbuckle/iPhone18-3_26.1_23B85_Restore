@interface WOHealthBridgeKeyedDate
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WOHealthBridgeKeyedDate

- (id)description
{
  selfCopy = self;
  v8 = a2;
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WOHealthBridgeKeyedDate;
  v5 = [(WOHealthBridgeKeyedDate *)&v7 description];
  dictionaryRepresentation = [(WOHealthBridgeKeyedDate *)selfCopy dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v5, dictionaryRepresentation];
  MEMORY[0x277D82BD8](dictionaryRepresentation);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = [MEMORY[0x277CBEB38] dictionary];
  if (selfCopy->_key)
  {
    [v6[0] setObject:selfCopy->_key forKey:@"key"];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithDouble:{selfCopy->_timeSinceReferenceDate, v6[0]}];
  [v3 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v4);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (BOOL)readFrom:(id)from
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  v4 = WOHealthBridgeKeyedDateReadFrom(selfCopy, location[0]);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)writeTo:(id)to
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  if (!selfCopy->_key)
  {
    __assert_rtn("[WOHealthBridgeKeyedDate writeTo:]", "WOHealthBridgeKeyedDate.m", 79, "nil != self->_key");
  }

  key = selfCopy->_key;
  PBDataWriterWriteStringField();
  timeSinceReferenceDate = selfCopy->_timeSinceReferenceDate;
  PBDataWriterWriteDoubleField();
  objc_storeStrong(location, 0);
}

- (void)copyTo:(id)to
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  [location[0] setKey:selfCopy->_key];
  *(location[0] + 1) = *&selfCopy->_timeSinceReferenceDate;
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9 = a2;
  zoneCopy = zone;
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_key copyWithZone:zoneCopy];
  v4 = v7[2];
  v7[2] = v3;
  MEMORY[0x277D82BD8](v4);
  v7[1] = *&selfCopy->_timeSinceReferenceDate;
  v6 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  v5 = MEMORY[0x277D82BE0](location[0]);
  v4 = 0;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    if (!selfCopy->_key && !*(v5 + 2) || (v4 = 0, ([(NSString *)selfCopy->_key isEqual:*(v5 + 2)]& 1) != 0))
    {
      v4 = selfCopy->_timeSinceReferenceDate == *(v5 + 1);
    }
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (unint64_t)hash
{
  v4 = [(NSString *)self->_key hash];
  if (self->_timeSinceReferenceDate >= 0.0)
  {
    timeSinceReferenceDate = self->_timeSinceReferenceDate;
  }

  else
  {
    timeSinceReferenceDate = -self->_timeSinceReferenceDate;
  }

  v8 = floor(timeSinceReferenceDate + 0.5);
  v7 = (timeSinceReferenceDate - v8) * 1.84467441e19;
  v6 = 2654435761u * fmod(v8, 1.84467441e19);
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v6 += v7;
    }
  }

  else
  {
    v6 -= fabs(v7);
  }

  return v4 ^ v6;
}

- (void)mergeFrom:(id)from
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  if (*(location[0] + 2))
  {
    [(WOHealthBridgeKeyedDate *)selfCopy setKey:*(location[0] + 2)];
  }

  selfCopy->_timeSinceReferenceDate = *(location[0] + 1);
  objc_storeStrong(location, 0);
}

@end