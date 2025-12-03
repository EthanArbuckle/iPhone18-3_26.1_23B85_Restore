@interface CRCodingUtilities
+ (BOOL)BOOLFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (CGPoint)pointFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (CGRect)rectFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (CGSize)sizeFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (_NSRange)rangeFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (double)cgFloatFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (float)floatFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (id)arrayFromEncodingData:(id)data offset:(unint64_t *)offset objectProviderBlock:(id)block;
+ (id)ddScannerResultFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (id)encodingDataForBool:(BOOL)bool;
+ (id)encodingDataForCGFloat:(double)float;
+ (id)encodingDataForCodable:(id)codable;
+ (id)encodingDataForFloat:(float)float;
+ (id)encodingDataForInteger:(int64_t)integer;
+ (id)encodingDataForPoint:(CGPoint)point;
+ (id)encodingDataForRange:(_NSRange)range;
+ (id)encodingDataForRect:(CGRect)rect;
+ (id)encodingDataForSize:(CGSize)size;
+ (id)encodingDataForUInteger:(unint64_t)integer;
+ (id)objectDataFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (id)stringFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (int64_t)integerFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (unint64_t)unsignedIntegerFromEncodingData:(id)data offset:(unint64_t *)offset;
+ (void)appendCodable:(id)codable toData:(id)data;
+ (void)appendPoint:(CGPoint)point toData:(id)data;
+ (void)appendRange:(_NSRange)range toData:(id)data;
+ (void)appendRect:(CGRect)rect toData:(id)data;
+ (void)appendSize:(CGSize)size toData:(id)data;
@end

@implementation CRCodingUtilities

+ (void)appendCodable:(id)codable toData:(id)data
{
  codableCopy = codable;
  dataCopy = data;
  [self appendBool:codableCopy == 0 toData:dataCopy];
  if (codableCopy)
  {
    crCodableDataRepresentation = [codableCopy crCodableDataRepresentation];
    [self appendUInteger:objc_msgSend(crCodableDataRepresentation toData:{"length"), dataCopy}];
    if (crCodableDataRepresentation)
    {
      [dataCopy appendData:crCodableDataRepresentation];
    }
  }
}

+ (void)appendPoint:(CGPoint)point toData:(id)data
{
  v5 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  [data appendBytes:&pointCopy length:16];
}

+ (void)appendSize:(CGSize)size toData:(id)data
{
  v5 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  [data appendBytes:&sizeCopy length:16];
}

+ (void)appendRect:(CGRect)rect toData:(id)data
{
  v5 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  [data appendBytes:&rectCopy length:32];
}

+ (void)appendRange:(_NSRange)range toData:(id)data
{
  v5 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  [data appendBytes:&rangeCopy length:16];
}

+ (id)encodingDataForCodable:(id)codable
{
  codableCopy = codable;
  v5 = objc_opt_new();
  [self appendCodable:codableCopy toData:v5];

  return v5;
}

+ (id)encodingDataForBool:(BOOL)bool
{
  boolCopy = bool;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&boolCopy length:1];

  return v3;
}

+ (id)encodingDataForInteger:(int64_t)integer
{
  integerCopy = integer;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&integerCopy length:8];

  return v3;
}

+ (id)encodingDataForUInteger:(unint64_t)integer
{
  integerCopy = integer;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&integerCopy length:8];

  return v3;
}

+ (id)encodingDataForFloat:(float)float
{
  floatCopy = float;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&floatCopy length:4];

  return v3;
}

+ (id)encodingDataForCGFloat:(double)float
{
  floatCopy = float;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&floatCopy length:8];

  return v3;
}

+ (id)encodingDataForPoint:(CGPoint)point
{
  v6 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&pointCopy length:16];

  return v3;
}

+ (id)encodingDataForSize:(CGSize)size
{
  v6 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&sizeCopy length:16];

  return v3;
}

+ (id)encodingDataForRect:(CGRect)rect
{
  v6 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&rectCopy length:32];

  return v3;
}

+ (id)encodingDataForRange:(_NSRange)range
{
  v6 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&rangeCopy length:16];

  return v3;
}

+ (id)objectDataFromEncodingData:(id)data offset:(unint64_t *)offset
{
  dataCopy = data;
  if ([self BOOLFromEncodingData:dataCopy offset:offset])
  {
    v7 = 0;
  }

  else
  {
    v8 = [self unsignedIntegerFromEncodingData:dataCopy offset:offset];
    v9 = *offset;
    v10 = [dataCopy length];
    objc_opt_self();
    v7 = 0;
    if (v9 <= ~v8 && v9 + v8 <= v10)
    {
      v7 = [dataCopy subdataWithRange:{v9, v8}];
      *offset += v8;
    }
  }

  return v7;
}

+ (BOOL)BOOLFromEncodingData:(id)data offset:(unint64_t *)offset
{
  dataCopy = data;
  v10 = 0;
  v6 = *offset;
  v7 = [dataCopy length];
  objc_opt_self();
  v8 = 0;
  if (v6 < v7)
  {
    [dataCopy getBytes:&v10 range:{v6, 1}];
    ++*offset;
    v8 = v10 != 0;
  }

  return v8;
}

+ (int64_t)integerFromEncodingData:(id)data offset:(unint64_t *)offset
{
  dataCopy = data;
  v11 = 0;
  v6 = *offset;
  v7 = [dataCopy length];
  objc_opt_self();
  v8 = 0;
  if (v6 <= 0xFFFFFFFFFFFFFFF7 && v6 + 8 <= v7)
  {
    [dataCopy getBytes:&v11 range:{v6, 8}];
    *offset += 8;
    v8 = v11;
  }

  return v8;
}

+ (unint64_t)unsignedIntegerFromEncodingData:(id)data offset:(unint64_t *)offset
{
  dataCopy = data;
  v11 = 0;
  v6 = *offset;
  v7 = [dataCopy length];
  objc_opt_self();
  v8 = 0;
  if (v6 <= 0xFFFFFFFFFFFFFFF7 && v6 + 8 <= v7)
  {
    [dataCopy getBytes:&v11 range:{v6, 8}];
    *offset += 8;
    v8 = v11;
  }

  return v8;
}

+ (float)floatFromEncodingData:(id)data offset:(unint64_t *)offset
{
  dataCopy = data;
  v11 = 0.0;
  v6 = *offset;
  v7 = [dataCopy length];
  objc_opt_self();
  v8 = 0.0;
  if (v6 <= 0xFFFFFFFFFFFFFFFBLL && v6 + 4 <= v7)
  {
    [dataCopy getBytes:&v11 range:{v6, 4}];
    *offset += 4;
    v8 = v11;
  }

  return v8;
}

+ (double)cgFloatFromEncodingData:(id)data offset:(unint64_t *)offset
{
  dataCopy = data;
  v11 = 0.0;
  v6 = *offset;
  v7 = [dataCopy length];
  objc_opt_self();
  v8 = 0.0;
  if (v6 <= 0xFFFFFFFFFFFFFFF7 && v6 + 8 <= v7)
  {
    [dataCopy getBytes:&v11 range:{v6, 8}];
    *offset += 8;
    v8 = v11;
  }

  return v8;
}

+ (CGPoint)pointFromEncodingData:(id)data offset:(unint64_t *)offset
{
  v15 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = *offset;
  v7 = [dataCopy length];
  objc_opt_self();
  if (v6 > 0xFFFFFFFFFFFFFFEFLL || v6 + 16 > v7)
  {
    v9 = MEMORY[0x1E695EFF8];
  }

  else
  {
    v9 = v14;
    [dataCopy getBytes:v14 range:{v6, 16}];
    *offset += 16;
  }

  v11 = *v9;
  v10 = v9[1];

  v12 = v11;
  v13 = v10;
  result.y = v13;
  result.x = v12;
  return result;
}

+ (CGSize)sizeFromEncodingData:(id)data offset:(unint64_t *)offset
{
  v15 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = *offset;
  v7 = [dataCopy length];
  objc_opt_self();
  if (v6 > 0xFFFFFFFFFFFFFFEFLL || v6 + 16 > v7)
  {
    v9 = MEMORY[0x1E695F060];
  }

  else
  {
    v9 = v14;
    [dataCopy getBytes:v14 range:{v6, 16}];
    *offset += 16;
  }

  v11 = *v9;
  v10 = v9[1];

  v12 = v11;
  v13 = v10;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGRect)rectFromEncodingData:(id)data offset:(unint64_t *)offset
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = *offset;
  v7 = [dataCopy length];
  objc_opt_self();
  if (v6 > 0xFFFFFFFFFFFFFFDFLL || v6 + 32 > v7)
  {
    v9 = MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
  }

  else
  {
    v9 = v18;
    [dataCopy getBytes:v18 range:{v6, 32}];
    *offset += 32;
    v10 = v19;
    v11 = v20;
  }

  v12 = v9[3];
  v13 = *v9;

  v14 = v13;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (_NSRange)rangeFromEncodingData:(id)data offset:(unint64_t *)offset
{
  v13[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = *offset;
  v7 = [dataCopy length];
  objc_opt_self();
  if (v6 > 0xFFFFFFFFFFFFFFEFLL || v6 + 16 > v7)
  {
    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    [dataCopy getBytes:v13 range:{v6, 16}];
    *offset += 16;
    v10 = v13[0];
    v9 = v13[1];
  }

  v11 = v10;
  v12 = v9;
  result.length = v12;
  result.location = v11;
  return result;
}

+ (id)ddScannerResultFromEncodingData:(id)data offset:(unint64_t *)offset
{
  v4 = [self objectDataFromEncodingData:data offset:offset];
  v5 = [MEMORY[0x1E6999A80] ddScannerResultWithCRCodableDataRepresentation:v4];

  return v5;
}

+ (id)stringFromEncodingData:(id)data offset:(unint64_t *)offset
{
  v4 = [self objectDataFromEncodingData:data offset:offset];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCRCodableDataRepresentation:v4];

  return v5;
}

+ (id)arrayFromEncodingData:(id)data offset:(unint64_t *)offset objectProviderBlock:(id)block
{
  blockCopy = block;
  v9 = [self objectDataFromEncodingData:data offset:offset];
  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithCRCodableDataRepresentation:v9 objectProviderBlock:blockCopy];

  return v10;
}

@end