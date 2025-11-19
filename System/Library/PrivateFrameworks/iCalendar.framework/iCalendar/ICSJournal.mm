@interface ICSJournal
- (BOOL)validate:(id *)a3;
@end

@implementation ICSJournal

- (BOOL)validate:(id *)a3
{
  v5 = [(ICSComponent *)self propertiesForName:@"STATUS"];

  if (v5)
  {
    v6 = [(ICSComponent *)self status];
    v7 = v6;
    if (v6 > 8 || ((1 << v6) & 0x1C1) == 0)
    {
      if (a3)
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Invalid STATUS for VJOURNAL." forKey:*MEMORY[0x277CCA450]];
        *a3 = [v9 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v10];
      }

      if (v7)
      {
        return 0;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = ICSJournal;
  return [(ICSComponent *)&v11 validate:a3];
}

@end