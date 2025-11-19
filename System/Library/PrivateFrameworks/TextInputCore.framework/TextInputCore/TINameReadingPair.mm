@interface TINameReadingPair
+ (id)nameReadingPairWithName:(id)a3 reading:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TINameReadingPair)initWithName:(id)a3 reading:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TINameReadingPair

- (unint64_t)hash
{
  v3 = [(TINameReadingPair *)self name];
  v4 = [v3 hash];

  v5 = [(TINameReadingPair *)self reading];
  v6 = [v5 hash];

  return v6 + 257 * v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TINameReadingPair *)self name];
      v7 = [(TINameReadingPair *)v5 name];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(TINameReadingPair *)self reading];
        v9 = [(TINameReadingPair *)v5 reading];
        v10 = [v8 isEqualToString:v9];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_name copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_reading copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (TINameReadingPair)initWithName:(id)a3 reading:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TINameReadingPair;
  v8 = [(TINameReadingPair *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    reading = v8->_reading;
    v8->_reading = v11;
  }

  return v8;
}

+ (id)nameReadingPairWithName:(id)a3 reading:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 reading:v6];

  return v8;
}

@end