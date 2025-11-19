@interface CRCodingUtilities
+ (BOOL)BOOLFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (CGPoint)pointFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (CGRect)rectFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (CGSize)sizeFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (_NSRange)rangeFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (double)cgFloatFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (float)floatFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (id)arrayFromEncodingData:(id)a3 offset:(unint64_t *)a4 objectProviderBlock:(id)a5;
+ (id)ddScannerResultFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (id)encodingDataForBool:(BOOL)a3;
+ (id)encodingDataForCGFloat:(double)a3;
+ (id)encodingDataForCodable:(id)a3;
+ (id)encodingDataForFloat:(float)a3;
+ (id)encodingDataForInteger:(int64_t)a3;
+ (id)encodingDataForPoint:(CGPoint)a3;
+ (id)encodingDataForRange:(_NSRange)a3;
+ (id)encodingDataForRect:(CGRect)a3;
+ (id)encodingDataForSize:(CGSize)a3;
+ (id)encodingDataForUInteger:(unint64_t)a3;
+ (id)objectDataFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (id)stringFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (int64_t)integerFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (unint64_t)unsignedIntegerFromEncodingData:(id)a3 offset:(unint64_t *)a4;
+ (void)appendCodable:(id)a3 toData:(id)a4;
+ (void)appendPoint:(CGPoint)a3 toData:(id)a4;
+ (void)appendRange:(_NSRange)a3 toData:(id)a4;
+ (void)appendRect:(CGRect)a3 toData:(id)a4;
+ (void)appendSize:(CGSize)a3 toData:(id)a4;
@end

@implementation CRCodingUtilities

+ (void)appendCodable:(id)a3 toData:(id)a4
{
  v8 = a3;
  v6 = a4;
  [a1 appendBool:v8 == 0 toData:v6];
  if (v8)
  {
    v7 = [v8 crCodableDataRepresentation];
    [a1 appendUInteger:objc_msgSend(v7 toData:{"length"), v6}];
    if (v7)
    {
      [v6 appendData:v7];
    }
  }
}

+ (void)appendPoint:(CGPoint)a3 toData:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a4 appendBytes:&v4 length:16];
}

+ (void)appendSize:(CGSize)a3 toData:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a4 appendBytes:&v4 length:16];
}

+ (void)appendRect:(CGRect)a3 toData:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a4 appendBytes:&v4 length:32];
}

+ (void)appendRange:(_NSRange)a3 toData:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a4 appendBytes:&v4 length:16];
}

+ (id)encodingDataForCodable:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [a1 appendCodable:v4 toData:v5];

  return v5;
}

+ (id)encodingDataForBool:(BOOL)a3
{
  v5 = a3;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:1];

  return v3;
}

+ (id)encodingDataForInteger:(int64_t)a3
{
  v5 = a3;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:8];

  return v3;
}

+ (id)encodingDataForUInteger:(unint64_t)a3
{
  v5 = a3;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:8];

  return v3;
}

+ (id)encodingDataForFloat:(float)a3
{
  v5 = a3;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:4];

  return v3;
}

+ (id)encodingDataForCGFloat:(double)a3
{
  v5 = a3;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:8];

  return v3;
}

+ (id)encodingDataForPoint:(CGPoint)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:16];

  return v3;
}

+ (id)encodingDataForSize:(CGSize)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:16];

  return v3;
}

+ (id)encodingDataForRect:(CGRect)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:32];

  return v3;
}

+ (id)encodingDataForRange:(_NSRange)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:16];

  return v3;
}

+ (id)objectDataFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v6 = a3;
  if ([a1 BOOLFromEncodingData:v6 offset:a4])
  {
    v7 = 0;
  }

  else
  {
    v8 = [a1 unsignedIntegerFromEncodingData:v6 offset:a4];
    v9 = *a4;
    v10 = [v6 length];
    objc_opt_self();
    v7 = 0;
    if (v9 <= ~v8 && v9 + v8 <= v10)
    {
      v7 = [v6 subdataWithRange:{v9, v8}];
      *a4 += v8;
    }
  }

  return v7;
}

+ (BOOL)BOOLFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v5 = a3;
  v10 = 0;
  v6 = *a4;
  v7 = [v5 length];
  objc_opt_self();
  v8 = 0;
  if (v6 < v7)
  {
    [v5 getBytes:&v10 range:{v6, 1}];
    ++*a4;
    v8 = v10 != 0;
  }

  return v8;
}

+ (int64_t)integerFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v5 = a3;
  v11 = 0;
  v6 = *a4;
  v7 = [v5 length];
  objc_opt_self();
  v8 = 0;
  if (v6 <= 0xFFFFFFFFFFFFFFF7 && v6 + 8 <= v7)
  {
    [v5 getBytes:&v11 range:{v6, 8}];
    *a4 += 8;
    v8 = v11;
  }

  return v8;
}

+ (unint64_t)unsignedIntegerFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v5 = a3;
  v11 = 0;
  v6 = *a4;
  v7 = [v5 length];
  objc_opt_self();
  v8 = 0;
  if (v6 <= 0xFFFFFFFFFFFFFFF7 && v6 + 8 <= v7)
  {
    [v5 getBytes:&v11 range:{v6, 8}];
    *a4 += 8;
    v8 = v11;
  }

  return v8;
}

+ (float)floatFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v5 = a3;
  v11 = 0.0;
  v6 = *a4;
  v7 = [v5 length];
  objc_opt_self();
  v8 = 0.0;
  if (v6 <= 0xFFFFFFFFFFFFFFFBLL && v6 + 4 <= v7)
  {
    [v5 getBytes:&v11 range:{v6, 4}];
    *a4 += 4;
    v8 = v11;
  }

  return v8;
}

+ (double)cgFloatFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v5 = a3;
  v11 = 0.0;
  v6 = *a4;
  v7 = [v5 length];
  objc_opt_self();
  v8 = 0.0;
  if (v6 <= 0xFFFFFFFFFFFFFFF7 && v6 + 8 <= v7)
  {
    [v5 getBytes:&v11 range:{v6, 8}];
    *a4 += 8;
    v8 = v11;
  }

  return v8;
}

+ (CGPoint)pointFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *a4;
  v7 = [v5 length];
  objc_opt_self();
  if (v6 > 0xFFFFFFFFFFFFFFEFLL || v6 + 16 > v7)
  {
    v9 = MEMORY[0x1E695EFF8];
  }

  else
  {
    v9 = v14;
    [v5 getBytes:v14 range:{v6, 16}];
    *a4 += 16;
  }

  v11 = *v9;
  v10 = v9[1];

  v12 = v11;
  v13 = v10;
  result.y = v13;
  result.x = v12;
  return result;
}

+ (CGSize)sizeFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *a4;
  v7 = [v5 length];
  objc_opt_self();
  if (v6 > 0xFFFFFFFFFFFFFFEFLL || v6 + 16 > v7)
  {
    v9 = MEMORY[0x1E695F060];
  }

  else
  {
    v9 = v14;
    [v5 getBytes:v14 range:{v6, 16}];
    *a4 += 16;
  }

  v11 = *v9;
  v10 = v9[1];

  v12 = v11;
  v13 = v10;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGRect)rectFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *a4;
  v7 = [v5 length];
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
    [v5 getBytes:v18 range:{v6, 32}];
    *a4 += 32;
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

+ (_NSRange)rangeFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *a4;
  v7 = [v5 length];
  objc_opt_self();
  if (v6 > 0xFFFFFFFFFFFFFFEFLL || v6 + 16 > v7)
  {
    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    [v5 getBytes:v13 range:{v6, 16}];
    *a4 += 16;
    v10 = v13[0];
    v9 = v13[1];
  }

  v11 = v10;
  v12 = v9;
  result.length = v12;
  result.location = v11;
  return result;
}

+ (id)ddScannerResultFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v4 = [a1 objectDataFromEncodingData:a3 offset:a4];
  v5 = [MEMORY[0x1E6999A80] ddScannerResultWithCRCodableDataRepresentation:v4];

  return v5;
}

+ (id)stringFromEncodingData:(id)a3 offset:(unint64_t *)a4
{
  v4 = [a1 objectDataFromEncodingData:a3 offset:a4];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCRCodableDataRepresentation:v4];

  return v5;
}

+ (id)arrayFromEncodingData:(id)a3 offset:(unint64_t *)a4 objectProviderBlock:(id)a5
{
  v8 = a5;
  v9 = [a1 objectDataFromEncodingData:a3 offset:a4];
  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithCRCodableDataRepresentation:v9 objectProviderBlock:v8];

  return v10;
}

@end