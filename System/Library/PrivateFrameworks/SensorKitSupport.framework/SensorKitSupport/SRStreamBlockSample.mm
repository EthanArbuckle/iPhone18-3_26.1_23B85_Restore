@interface SRStreamBlockSample
- (SRStreamBlockSample)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (id)sr_dictionaryRepresentation;
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)a3;
@end

@implementation SRStreamBlockSample

- (SRStreamBlockSample)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SRStreamBlockSample;
  v7 = [(SRStreamBlockSample *)&v10 init];
  if (v7)
  {
    v8 = [[_TtC16SensorKitSupport13SRStreamBlock alloc] initWithBinaryRep:v6];
    [(SRStreamBlockSample *)v7 setStreamBlock:v8];
  }

  return v7;
}

- (id)sr_dictionaryRepresentation
{
  v3 = [(SRStreamBlockSample *)self streamBlock];
  if (v3)
  {
    v4 = v3;
    v5 = [(SRStreamBlockSample *)self sampleDict];

    if (!v5)
    {
      v6 = [(SRStreamBlockSample *)self streamBlock];
      v7 = [v6 dictionary];
      [(SRStreamBlockSample *)self setSampleDict:v7];

      [(SRStreamBlockSample *)self setStreamBlock:0];
    }
  }

  return [(SRStreamBlockSample *)self sampleDict];
}

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)a3
{
  v4 = a3;
  v5 = [(SRStreamBlockSample *)self sr_dictionaryRepresentation];
  v9 = 0;
  v6 = [MEMORY[0x277CCAAA0] writeJSONObject:v5 toStream:v4 options:0 error:&v9];

  if (v9)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

@end