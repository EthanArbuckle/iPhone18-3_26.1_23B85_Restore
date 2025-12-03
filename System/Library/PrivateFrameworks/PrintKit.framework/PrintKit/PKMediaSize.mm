@interface PKMediaSize
+ (id)mediaSizeWithWidth:(int)width height:(int)height;
- (_NSRange)getRange:(id)range;
- (_NSRange)yRange;
- (id)userCodableDictionary;
- (int)getInt:(id)int;
- (int)getThingType:(id)type;
@end

@implementation PKMediaSize

- (int)getThingType:(id)type
{
  typeCopy = type;
  collection = [(PKCollectionSpecialization *)self collection];
  v6 = [collection _findAttribute0:typeCopy valueTag:0];

  if (v6)
  {
    value_tag = [v6 value_tag];
  }

  else
  {
    value_tag = 0;
  }

  return value_tag;
}

- (int)getInt:(id)int
{
  intCopy = int;
  collection = [(PKCollectionSpecialization *)self collection];
  v6 = [collection _findAttribute0:intCopy valueTag:0];

  values = [v6 values];
  v8 = [values objectAtIndexedSubscript:0];
  integer = [v8 integer];

  return integer;
}

- (_NSRange)getRange:(id)range
{
  rangeCopy = range;
  collection = [(PKCollectionSpecialization *)self collection];
  v6 = [collection _findAttribute0:rangeCopy valueTag:0];

  if (v6)
  {
    if ([v6 value_tag] == 33)
    {
      values = [v6 values];
      v8 = [values objectAtIndexedSubscript:0];
      v9 = v8;
      if (v8)
      {
        [v8 range];
      }

      else
      {
        v16 = 0;
      }

      integer = v16 - 1;
      v11 = SHIDWORD(v16) - v16;
    }

    else
    {
      values2 = [v6 values];
      v13 = [values2 objectAtIndexedSubscript:0];
      integer = [v13 integer];

      v11 = 1;
    }
  }

  else
  {
    integer = 0;
    v11 = 0;
  }

  v14 = integer;
  v15 = v11;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)yRange
{
  v2 = [(PKMediaSize *)self getRange:@"y-dimension"];
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[PKMediaSize xDimension](self, "xDimension")}];
  [v3 setObject:v4 forKeyedSubscript:@"x-dimension"];

  if ([(PKMediaSize *)self yDimensionIsRange])
  {
    v5 = MEMORY[0x277CCAE60];
    yRange = [(PKMediaSize *)self yRange];
    [v5 valueWithRange:{yRange, v7}];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[PKMediaSize yDimension](self, "yDimension")}];
  }
  v8 = ;
  [v3 setObject:v8 forKeyedSubscript:@"y-dimension"];

  return v3;
}

+ (id)mediaSizeWithWidth:(int)width height:(int)height
{
  v4 = *&height;
  v5 = *&width;
  v6 = objc_opt_new();
  [v6 _addInteger:0 valueTag:33 name:@"x-dimension" value:v5];
  [v6 _addInteger:0 valueTag:33 name:@"y-dimension" value:v4];
  v7 = [(PKCollectionSpecialization *)[PKMediaSize alloc] initWithCollection:v6];

  return v7;
}

@end