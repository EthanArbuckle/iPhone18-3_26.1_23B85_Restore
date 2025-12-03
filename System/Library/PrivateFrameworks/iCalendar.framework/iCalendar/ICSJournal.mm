@interface ICSJournal
- (BOOL)validate:(id *)validate;
@end

@implementation ICSJournal

- (BOOL)validate:(id *)validate
{
  v5 = [(ICSComponent *)self propertiesForName:@"STATUS"];

  if (v5)
  {
    status = [(ICSComponent *)self status];
    v7 = status;
    if (status > 8 || ((1 << status) & 0x1C1) == 0)
    {
      if (validate)
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Invalid STATUS for VJOURNAL." forKey:*MEMORY[0x277CCA450]];
        *validate = [v9 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v10];
      }

      if (v7)
      {
        return 0;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = ICSJournal;
  return [(ICSComponent *)&v11 validate:validate];
}

@end