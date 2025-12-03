@interface SlalomUtils
+ (unint64_t)readBitsValueFromBuffer:(char *)buffer bitPosition:(int)position length:(int)length;
+ (unint64_t)readNumberFromBytes:(char *)bytes numberOfBytes:(int)ofBytes;
@end

@implementation SlalomUtils

+ (unint64_t)readNumberFromBytes:(char *)bytes numberOfBytes:(int)ofBytes
{
  if (ofBytes < 1)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *bytes++;
    result = v5 | (result << 8);
    --ofBytes;
  }

  while (ofBytes);
  return result;
}

+ (unint64_t)readBitsValueFromBuffer:(char *)buffer bitPosition:(int)position length:(int)length
{
  if (length > 64)
  {
    return 0;
  }

  v7 = position + length - 1;
  if (position >= 0)
  {
    positionCopy = position;
  }

  else
  {
    positionCopy = position + 7;
  }

  v9 = position + length + 6;
  if (v7 >= 0)
  {
    v9 = position + length - 1;
  }

  v10 = v9 >> 3;
  v11 = (v9 & 0xF8) - v7 + 7;
  v12 = ldexp(1.0, length) - 1;
  return ([SlalomUtils readNumberFromBytes:&buffer[positionCopy >> 3] numberOfBytes:(v10 - (positionCopy >> 3) + 1)]>> v11) & v12;
}

@end