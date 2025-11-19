@interface SPKeySyncRecord
- (BOOL)isEqual:(id)a3;
- (SPKeySyncRecord)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPKeySyncRecord

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPKeySyncRecord *)v5 identifier];
      v7 = [(SPKeySyncRecord *)self identifier];
      if ([v6 isEqual:v7] && (v8 = -[SPKeySyncRecord lastIndexObserved](v5, "lastIndexObserved"), v8 == -[SPKeySyncRecord lastIndexObserved](self, "lastIndexObserved")))
      {
        v9 = [(SPKeySyncRecord *)v5 lastIndexObservationDate];
        v10 = [(SPKeySyncRecord *)self lastIndexObservationDate];
        v11 = [v9 isEqualToDate:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  lastIndexObservationDate = self->_lastIndexObservationDate;
  v5 = self->_lastIndexObserved ^ v3;
  return v5 ^ [(NSDate *)lastIndexObservationDate hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPKeySyncRecord *)self identifier];
  v6 = [v5 copy];
  [v4 setIdentifier:v6];

  [v4 setLastIndexObserved:{-[SPKeySyncRecord lastIndexObserved](self, "lastIndexObserved")}];
  v7 = [(SPKeySyncRecord *)self lastIndexObservationDate];
  v8 = [v7 copy];
  [v4 setLastIndexObservationDate:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeDouble:@"lastIndexObserved" forKey:self->_lastIndexObserved];
  [v5 encodeObject:self->_lastIndexObservationDate forKey:@"lastIndexObservationDate"];
}

- (SPKeySyncRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  [v4 decodeDoubleForKey:@"lastIndexObserved"];
  self->_lastIndexObserved = v7;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastIndexObservationDate"];

  lastIndexObservationDate = self->_lastIndexObservationDate;
  self->_lastIndexObservationDate = v8;

  return self;
}

@end