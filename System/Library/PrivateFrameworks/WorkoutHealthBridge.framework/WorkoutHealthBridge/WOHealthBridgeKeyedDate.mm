@interface WOHealthBridgeKeyedDate
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WOHealthBridgeKeyedDate

- (id)description
{
  v9 = self;
  v8 = a2;
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WOHealthBridgeKeyedDate;
  v5 = [(WOHealthBridgeKeyedDate *)&v7 description];
  v4 = [(WOHealthBridgeKeyedDate *)v9 dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v5, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)dictionaryRepresentation
{
  v7 = self;
  v6[1] = a2;
  v6[0] = [MEMORY[0x277CBEB38] dictionary];
  if (v7->_key)
  {
    [v6[0] setObject:v7->_key forKey:@"key"];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithDouble:{v7->_timeSinceReferenceDate, v6[0]}];
  [v3 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v4);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (BOOL)readFrom:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = WOHealthBridgeKeyedDateReadFrom(v6, location[0]);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v6->_key)
  {
    __assert_rtn("[WOHealthBridgeKeyedDate writeTo:]", "WOHealthBridgeKeyedDate.m", 79, "nil != self->_key");
  }

  key = v6->_key;
  PBDataWriterWriteStringField();
  timeSinceReferenceDate = v6->_timeSinceReferenceDate;
  PBDataWriterWriteDoubleField();
  objc_storeStrong(location, 0);
}

- (void)copyTo:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setKey:v4->_key];
  *(location[0] + 1) = *&v4->_timeSinceReferenceDate;
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSString *)v10->_key copyWithZone:v8];
  v4 = v7[2];
  v7[2] = v3;
  MEMORY[0x277D82BD8](v4);
  v7[1] = *&v10->_timeSinceReferenceDate;
  v6 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = MEMORY[0x277D82BE0](location[0]);
  v4 = 0;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    if (!v7->_key && !*(v5 + 2) || (v4 = 0, ([(NSString *)v7->_key isEqual:*(v5 + 2)]& 1) != 0))
    {
      v4 = v7->_timeSinceReferenceDate == *(v5 + 1);
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

- (void)mergeFrom:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (*(location[0] + 2))
  {
    [(WOHealthBridgeKeyedDate *)v4 setKey:*(location[0] + 2)];
  }

  v4->_timeSinceReferenceDate = *(location[0] + 1);
  objc_storeStrong(location, 0);
}

@end