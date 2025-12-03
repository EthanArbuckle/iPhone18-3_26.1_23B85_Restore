@interface STReminderListObject
- (STReminderListObject)initWithCoder:(id)coder;
- (id)_aceValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STReminderListObject

- (STReminderListObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STReminderListObject;
  v5 = [(STSiriModelObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STReminderListObject;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
}

- (id)_aceValue
{
  v3 = objc_alloc_init(MEMORY[0x277D476C8]);
  name = [(STReminderListObject *)self name];
  [v3 setName:name];

  v5 = MEMORY[0x277CBEBC0];
  identifier = [(STSiriModelObject *)self identifier];
  v7 = [v5 URLWithString:identifier];
  [v3 setIdentifier:v7];

  return v3;
}

@end