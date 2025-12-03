@interface TINameReadingPair
+ (id)nameReadingPairWithName:(id)name reading:(id)reading;
- (BOOL)isEqual:(id)equal;
- (TINameReadingPair)initWithName:(id)name reading:(id)reading;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TINameReadingPair

- (unint64_t)hash
{
  name = [(TINameReadingPair *)self name];
  v4 = [name hash];

  reading = [(TINameReadingPair *)self reading];
  v6 = [reading hash];

  return v6 + 257 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(TINameReadingPair *)self name];
      name2 = [(TINameReadingPair *)v5 name];
      if ([name isEqualToString:name2])
      {
        reading = [(TINameReadingPair *)self reading];
        reading2 = [(TINameReadingPair *)v5 reading];
        v10 = [reading isEqualToString:reading2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_name copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_reading copyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (TINameReadingPair)initWithName:(id)name reading:(id)reading
{
  nameCopy = name;
  readingCopy = reading;
  v14.receiver = self;
  v14.super_class = TINameReadingPair;
  v8 = [(TINameReadingPair *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [readingCopy copy];
    reading = v8->_reading;
    v8->_reading = v11;
  }

  return v8;
}

+ (id)nameReadingPairWithName:(id)name reading:(id)reading
{
  readingCopy = reading;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy reading:readingCopy];

  return v8;
}

@end