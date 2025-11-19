@interface HDSPEventRecordMessage
- (HDSPEventRecordMessage)initWithCoder:(id)a3;
- (HDSPEventRecordMessage)initWithDate:(id)a3;
- (NSString)identifier;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HDSPEventRecordMessage

- (HDSPEventRecordMessage)initWithDate:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HDSPEventRecordMessage;
  v6 = [(HDSPEventRecordMessage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, a3);
    v8 = v7;
  }

  return v7;
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPEventRecordMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDSPEventRecordMessage;
  v5 = [(HDSPEventRecordMessage *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = v5;
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(HDSPEventRecordMessage *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HDSPEventRecordMessage *)self date];
  v5 = [(HDSPEventRecordMessage *)self dateDescription];
  v6 = [v3 appendObject:v4 withName:v5];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HDSPEventRecordMessage *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end