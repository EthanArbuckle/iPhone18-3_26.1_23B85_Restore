@interface MLMultiArray(ConvertToNSArray)
- (id)convert1dMLMultiArrayToNSArray;
@end

@implementation MLMultiArray(ConvertToNSArray)

- (id)convert1dMLMultiArrayToNSArray
{
  array = [MEMORY[0x277CBEB18] array];
  shape = [self shape];
  lastObject = [shape lastObject];
  unsignedIntegerValue = [lastObject unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    for (i = 0; i != unsignedIntegerValue; ++i)
    {
      v7 = [self objectAtIndexedSubscript:i];
      [array addObject:v7];
    }
  }

  return array;
}

@end