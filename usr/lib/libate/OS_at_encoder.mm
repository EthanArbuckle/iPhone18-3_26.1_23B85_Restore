@interface OS_at_encoder
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (void)dealloc;
@end

@implementation OS_at_encoder

- (void)dealloc
{
  ATEncoder_dtor(self);
  v3.receiver = self;
  v3.super_class = OS_at_encoder;
  [(OS_at_encoder *)&v3 dealloc];
}

- (NSString)debugDescription
{
  v7 = *MEMORY[0x29EDCA608];
  result = objc_lookUpClass("NSString");
  if (result)
  {
    v4 = result;
    v6[0] = 0;
    ATEncoder_GetDescription(self);
    result = [(NSString *)v4 stringWithCString:v6 encoding:1];
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self && equal)
  {
    return ATEncoder_IsEqual(self, equal);
  }

  else
  {
    return 0;
  }
}

@end