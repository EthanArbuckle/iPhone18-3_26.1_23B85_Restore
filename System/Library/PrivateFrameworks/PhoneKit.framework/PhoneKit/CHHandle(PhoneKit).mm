@interface CHHandle(PhoneKit)
- (id)tuHandle;
@end

@implementation CHHandle(PhoneKit)

- (id)tuHandle
{
  value = [self value];
  if (value)
  {
    type = [self type];
    if (type > 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = qword_25E509CC8[type];
    }

    v5 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:v4 value:value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end