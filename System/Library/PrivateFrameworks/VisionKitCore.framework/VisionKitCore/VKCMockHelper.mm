@interface VKCMockHelper
+ (CGSize)sizeFromPlistDictionary:(id)a3;
+ (_NSRange)rangeFromPlistDictionary:(id)a3;
+ (id)plistFromRange:(_NSRange)a3;
+ (id)plistFromSize:(CGSize)a3;
@end

@implementation VKCMockHelper

+ (id)plistFromRange:(_NSRange)a3
{
  length = a3.length;
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = VKCMockResultRangeLocationKey;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3.location];
  v8[1] = VKCMockResultRangeLengthKey;
  v9[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (_NSRange)rangeFromPlistDictionary:(id)a3
{
  v3 = VKCMockResultRangeLocationKey;
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 unsignedLongValue];

  v7 = [v4 objectForKeyedSubscript:VKCMockResultRangeLengthKey];

  v8 = [v7 unsignedLongValue];
  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

+ (id)plistFromSize:(CGSize)a3
{
  height = a3.height;
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = VKCMockResultSizeWidthKey;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3.width];
  v8[1] = VKCMockResultSizeHeightKey;
  v9[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (CGSize)sizeFromPlistDictionary:(id)a3
{
  v3 = VKCMockResultSizeWidthKey;
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 unsignedLongValue];

  v7 = [v4 objectForKeyedSubscript:VKCMockResultSizeHeightKey];

  v8 = [v7 unsignedLongValue];
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end