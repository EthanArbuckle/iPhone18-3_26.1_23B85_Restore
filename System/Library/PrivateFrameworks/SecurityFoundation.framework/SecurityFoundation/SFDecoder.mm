@interface SFDecoder
- (SFCodingOptions)options;
- (SFDecoder)initWithOptions:(id)options;
- (void)setOptions:(id)options;
@end

@implementation SFDecoder

- (SFDecoder)initWithOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = SFDecoder;
  v6 = [(SFDecoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6->_decoderInternal + 1, options);
  }

  return v7;
}

- (SFCodingOptions)options
{
  v2 = [*(self->_decoderInternal + 1) copy];

  return v2;
}

- (void)setOptions:(id)options
{
  v4 = [options copy];
  decoderInternal = self->_decoderInternal;
  v6 = decoderInternal[1];
  decoderInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end