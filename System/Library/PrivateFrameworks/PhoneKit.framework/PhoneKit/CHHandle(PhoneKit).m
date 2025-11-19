@interface CHHandle(PhoneKit)
- (id)tuHandle;
@end

@implementation CHHandle(PhoneKit)

- (id)tuHandle
{
  v2 = [a1 value];
  if (v2)
  {
    v3 = [a1 type];
    if (v3 > 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = qword_25E509CC8[v3];
    }

    v5 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:v4 value:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end