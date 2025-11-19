@interface PKTransitAppletPlan
- (PKTransitAppletPlan)initWithCoder:(id)a3;
- (PKTransitAppletPlan)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransitAppletPlan

- (PKTransitAppletPlan)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKTransitAppletPlan;
  v5 = [(PKTransitAppletPlan *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 objectForKeyedSubscript:@"CommutePlanIdentifier"];
    v8 = [v7 copy];
    commutePlanIdentifier = v6->_commutePlanIdentifier;
    v6->_commutePlanIdentifier = v8;

    v10 = [MEMORY[0x1E695DEE8] currentCalendar];
    v11 = [v4 objectForKeyedSubscript:@"CommutePlanExpirationDate"];
    v12 = [v10 dateFromComponents:v11];
    expirationDate = v6->_expirationDate;
    v6->_expirationDate = v12;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_commutePlanIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDate *)self->_expirationDate copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  commutePlanIdentifier = self->_commutePlanIdentifier;
  v5 = a3;
  [v5 encodeObject:commutePlanIdentifier forKey:@"commutePlanIdentifier"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

- (PKTransitAppletPlan)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKTransitAppletPlan;
  v5 = [(PKTransitAppletPlan *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commutePlanIdentifier"];
    commutePlanIdentifier = v5->_commutePlanIdentifier;
    v5->_commutePlanIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v8;
  }

  return v5;
}

@end