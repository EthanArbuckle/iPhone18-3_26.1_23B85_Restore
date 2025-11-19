@interface OS_axr_part
- (NSString)debugDescription;
- (void)dealloc;
@end

@implementation OS_axr_part

- (NSString)debugDescription
{
  v2 = MEMORY[0x2A1C7C4A8](self, a2);
  v3 = v2;
  v8 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    v4 = (v2 + 16);
  }

  else
  {
    v4 = 0;
  }

  __str[0] = 0;
  EncoderPart::Print(v4, __str, 0xFFFuLL);
  v6.receiver = v3;
  v6.super_class = OS_axr_part;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@\n%s", -[OS_axr_part debugDescription](&v6, sel_debugDescription), __str];
}

- (void)dealloc
{
  EncoderPart::~EncoderPart(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_axr_part;
  [(OS_axr_part *)&v3 dealloc];
}

@end