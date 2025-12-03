@interface VKCMockHelper
+ (CGSize)sizeFromPlistDictionary:(id)dictionary;
+ (_NSRange)rangeFromPlistDictionary:(id)dictionary;
+ (id)plistFromRange:(_NSRange)range;
+ (id)plistFromSize:(CGSize)size;
@end

@implementation VKCMockHelper

+ (id)plistFromRange:(_NSRange)range
{
  length = range.length;
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = VKCMockResultRangeLocationKey;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:range.location];
  v8[1] = VKCMockResultRangeLengthKey;
  v9[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (_NSRange)rangeFromPlistDictionary:(id)dictionary
{
  v3 = VKCMockResultRangeLocationKey;
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:v3];
  unsignedLongValue = [v5 unsignedLongValue];

  v7 = [dictionaryCopy objectForKeyedSubscript:VKCMockResultRangeLengthKey];

  unsignedLongValue2 = [v7 unsignedLongValue];
  v9 = unsignedLongValue;
  v10 = unsignedLongValue2;
  result.length = v10;
  result.location = v9;
  return result;
}

+ (id)plistFromSize:(CGSize)size
{
  height = size.height;
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = VKCMockResultSizeWidthKey;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:size.width];
  v8[1] = VKCMockResultSizeHeightKey;
  v9[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (CGSize)sizeFromPlistDictionary:(id)dictionary
{
  v3 = VKCMockResultSizeWidthKey;
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:v3];
  unsignedLongValue = [v5 unsignedLongValue];

  v7 = [dictionaryCopy objectForKeyedSubscript:VKCMockResultSizeHeightKey];

  unsignedLongValue2 = [v7 unsignedLongValue];
  v9 = unsignedLongValue;
  v10 = unsignedLongValue2;
  result.height = v10;
  result.width = v9;
  return result;
}

@end