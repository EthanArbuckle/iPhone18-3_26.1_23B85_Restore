@interface SFCoder
- (SFCoder)initWithOptions:(id)a3;
- (SFCodingOptions)options;
- (void)setOptions:(id)a3;
@end

@implementation SFCoder

- (SFCoder)initWithOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SFCoder;
  v6 = [(SFCoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6->_coderInternal + 1, a3);
  }

  return v7;
}

- (SFCodingOptions)options
{
  v2 = [*(self->_coderInternal + 1) copy];

  return v2;
}

- (void)setOptions:(id)a3
{
  v4 = [a3 copy];
  coderInternal = self->_coderInternal;
  v6 = coderInternal[1];
  coderInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end