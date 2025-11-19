@interface STReminderListObject
- (STReminderListObject)initWithCoder:(id)a3;
- (id)_aceValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STReminderListObject

- (STReminderListObject)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STReminderListObject;
  v5 = [(STSiriModelObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STReminderListObject;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
}

- (id)_aceValue
{
  v3 = objc_alloc_init(MEMORY[0x277D476C8]);
  v4 = [(STReminderListObject *)self name];
  [v3 setName:v4];

  v5 = MEMORY[0x277CBEBC0];
  v6 = [(STSiriModelObject *)self identifier];
  v7 = [v5 URLWithString:v6];
  [v3 setIdentifier:v7];

  return v3;
}

@end