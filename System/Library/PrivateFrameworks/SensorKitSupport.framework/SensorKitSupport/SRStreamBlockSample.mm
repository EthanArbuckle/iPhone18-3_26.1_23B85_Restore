@interface SRStreamBlockSample
- (SRStreamBlockSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (id)sr_dictionaryRepresentation;
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream;
@end

@implementation SRStreamBlockSample

- (SRStreamBlockSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = SRStreamBlockSample;
  v7 = [(SRStreamBlockSample *)&v10 init];
  if (v7)
  {
    v8 = [[_TtC16SensorKitSupport13SRStreamBlock alloc] initWithBinaryRep:representationCopy];
    [(SRStreamBlockSample *)v7 setStreamBlock:v8];
  }

  return v7;
}

- (id)sr_dictionaryRepresentation
{
  streamBlock = [(SRStreamBlockSample *)self streamBlock];
  if (streamBlock)
  {
    v4 = streamBlock;
    sampleDict = [(SRStreamBlockSample *)self sampleDict];

    if (!sampleDict)
    {
      streamBlock2 = [(SRStreamBlockSample *)self streamBlock];
      dictionary = [streamBlock2 dictionary];
      [(SRStreamBlockSample *)self setSampleDict:dictionary];

      [(SRStreamBlockSample *)self setStreamBlock:0];
    }
  }

  return [(SRStreamBlockSample *)self sampleDict];
}

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream
{
  streamCopy = stream;
  sr_dictionaryRepresentation = [(SRStreamBlockSample *)self sr_dictionaryRepresentation];
  v9 = 0;
  v6 = [MEMORY[0x277CCAAA0] writeJSONObject:sr_dictionaryRepresentation toStream:streamCopy options:0 error:&v9];

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