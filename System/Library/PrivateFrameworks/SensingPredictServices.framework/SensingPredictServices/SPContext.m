@interface SPContext
- (SPContext)initWithCoder:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPContext

- (SPContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPContext *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_locationCategory = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (self->_locationCategory)
  {
    [a3 encodeInteger:self->_locationCategory forKey:@"loCt"];
  }
}

- (id)descriptionWithLevel:(int)a3
{
  v4 = a3;
  NSAppendPrintF_safe();
  v5 = 0;
  v6 = v5;
  locationCategory = self->_locationCategory;
  if (self->_locationCategory)
  {
    v12 = v5;
    if (locationCategory <= 9)
    {
      v8 = off_279B97220[locationCategory - 1];
    }

    NSAppendPrintF_safe();
    v9 = v12;

    v6 = v9;
  }

  if (v4 < 0x15)
  {
    NSAppendPrintF_safe();
    v10 = v6;

    v6 = v10;
  }

  return v6;
}

@end