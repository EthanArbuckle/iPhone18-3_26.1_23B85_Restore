@interface UCAppClipCodeEnDecUtility
+ (id)perepareData:(id)data withCodingVersion:(int64_t)version forCompressionVersion:(int64_t)compressionVersion;
+ (id)prepareData:(id)data withCompressionVersion:(int64_t)version forCodingVersion:(int64_t)codingVersion;
+ (id)prepareURL:(id)l withCodingVersion:(int64_t)version forCompressionVersion:(int64_t)compressionVersion;
+ (id)prepareURL:(id)l withCompressionVersion:(int64_t)version forCodingVersion:(int64_t)codingVersion;
@end

@implementation UCAppClipCodeEnDecUtility

+ (id)prepareURL:(id)l withCodingVersion:(int64_t)version forCompressionVersion:(int64_t)compressionVersion
{
  lCopy = l;
  v8 = lCopy;
  if (version == 2 && compressionVersion == 1)
  {
    padPayloadToV1Length = [lCopy padPayloadToV1Length];
  }

  else
  {
    padPayloadToV1Length = lCopy;
  }

  v10 = padPayloadToV1Length;

  return v10;
}

+ (id)prepareData:(id)data withCompressionVersion:(int64_t)version forCodingVersion:(int64_t)codingVersion
{
  dataCopy = data;
  v8 = dataCopy;
  if (version == 1 && codingVersion == 2)
  {
    transformV1ToV2Encoding = [dataCopy transformV1ToV2Encoding];
  }

  else if (version == 1 && codingVersion == 3)
  {
    transformV1ToV2Encoding = [dataCopy transformV1ToV3Encoding];
  }

  else
  {
    transformV1ToV2Encoding = dataCopy;
  }

  v10 = transformV1ToV2Encoding;

  return v10;
}

+ (id)perepareData:(id)data withCodingVersion:(int64_t)version forCompressionVersion:(int64_t)compressionVersion
{
  dataCopy = data;
  v8 = dataCopy;
  if (version == 2 && compressionVersion == 1)
  {
    transformV2ToV1Encoding = [dataCopy transformV2ToV1Encoding];
  }

  else if (version == 3 && compressionVersion == 1)
  {
    transformV2ToV1Encoding = [dataCopy transformV3ToV1Encoding];
  }

  else
  {
    transformV2ToV1Encoding = dataCopy;
  }

  v10 = transformV2ToV1Encoding;

  return v10;
}

+ (id)prepareURL:(id)l withCompressionVersion:(int64_t)version forCodingVersion:(int64_t)codingVersion
{
  lCopy = l;
  v8 = lCopy;
  if (version == 1 && codingVersion == 2)
  {
    truncatePayloadToV2Length = [lCopy truncatePayloadToV2Length];
  }

  else
  {
    truncatePayloadToV2Length = lCopy;
  }

  v10 = truncatePayloadToV2Length;

  return v10;
}

@end