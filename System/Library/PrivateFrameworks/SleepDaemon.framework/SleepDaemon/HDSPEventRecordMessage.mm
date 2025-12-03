@interface HDSPEventRecordMessage
- (HDSPEventRecordMessage)initWithCoder:(id)coder;
- (HDSPEventRecordMessage)initWithDate:(id)date;
- (NSString)identifier;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HDSPEventRecordMessage

- (HDSPEventRecordMessage)initWithDate:(id)date
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = HDSPEventRecordMessage;
  v6 = [(HDSPEventRecordMessage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, date);
    v8 = v7;
  }

  return v7;
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPEventRecordMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HDSPEventRecordMessage;
  v5 = [(HDSPEventRecordMessage *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = v5;
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HDSPEventRecordMessage *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  date = [(HDSPEventRecordMessage *)self date];
  dateDescription = [(HDSPEventRecordMessage *)self dateDescription];
  v6 = [v3 appendObject:date withName:dateDescription];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HDSPEventRecordMessage *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end