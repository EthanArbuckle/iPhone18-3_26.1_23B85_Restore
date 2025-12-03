@interface PKTransitAppletPlan
- (PKTransitAppletPlan)initWithCoder:(id)coder;
- (PKTransitAppletPlan)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransitAppletPlan

- (PKTransitAppletPlan)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PKTransitAppletPlan;
  v5 = [(PKTransitAppletPlan *)&v15 init];
  v6 = v5;
  if (dictionaryCopy && v5)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"CommutePlanIdentifier"];
    v8 = [v7 copy];
    commutePlanIdentifier = v6->_commutePlanIdentifier;
    v6->_commutePlanIdentifier = v8;

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"CommutePlanExpirationDate"];
    v12 = [currentCalendar dateFromComponents:v11];
    expirationDate = v6->_expirationDate;
    v6->_expirationDate = v12;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_commutePlanIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  commutePlanIdentifier = self->_commutePlanIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:commutePlanIdentifier forKey:@"commutePlanIdentifier"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

- (PKTransitAppletPlan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKTransitAppletPlan;
  v5 = [(PKTransitAppletPlan *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commutePlanIdentifier"];
    commutePlanIdentifier = v5->_commutePlanIdentifier;
    v5->_commutePlanIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v8;
  }

  return v5;
}

@end