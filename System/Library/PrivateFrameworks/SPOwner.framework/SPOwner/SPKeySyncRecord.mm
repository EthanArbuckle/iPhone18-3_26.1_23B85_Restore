@interface SPKeySyncRecord
- (BOOL)isEqual:(id)equal;
- (SPKeySyncRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPKeySyncRecord

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SPKeySyncRecord *)v5 identifier];
      identifier2 = [(SPKeySyncRecord *)self identifier];
      if ([identifier isEqual:identifier2] && (v8 = -[SPKeySyncRecord lastIndexObserved](v5, "lastIndexObserved"), v8 == -[SPKeySyncRecord lastIndexObserved](self, "lastIndexObserved")))
      {
        lastIndexObservationDate = [(SPKeySyncRecord *)v5 lastIndexObservationDate];
        lastIndexObservationDate2 = [(SPKeySyncRecord *)self lastIndexObservationDate];
        v11 = [lastIndexObservationDate isEqualToDate:lastIndexObservationDate2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  identifier = [(SPKeySyncRecord *)self identifier];
  v6 = [identifier copy];
  [v4 setIdentifier:v6];

  [v4 setLastIndexObserved:{-[SPKeySyncRecord lastIndexObserved](self, "lastIndexObserved")}];
  lastIndexObservationDate = [(SPKeySyncRecord *)self lastIndexObservationDate];
  v8 = [lastIndexObservationDate copy];
  [v4 setLastIndexObservationDate:v8];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeDouble:@"lastIndexObserved" forKey:self->_lastIndexObserved];
  [coderCopy encodeObject:self->_lastIndexObservationDate forKey:@"lastIndexObservationDate"];
}

- (SPKeySyncRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  [coderCopy decodeDoubleForKey:@"lastIndexObserved"];
  self->_lastIndexObserved = v7;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastIndexObservationDate"];

  lastIndexObservationDate = self->_lastIndexObservationDate;
  self->_lastIndexObservationDate = v8;

  return self;
}

@end