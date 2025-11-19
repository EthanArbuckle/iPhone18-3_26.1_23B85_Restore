@interface PKMediaSize
+ (id)mediaSizeWithWidth:(int)a3 height:(int)a4;
- (_NSRange)getRange:(id)a3;
- (_NSRange)yRange;
- (id)userCodableDictionary;
- (int)getInt:(id)a3;
- (int)getThingType:(id)a3;
@end

@implementation PKMediaSize

- (int)getThingType:(id)a3
{
  v4 = a3;
  v5 = [(PKCollectionSpecialization *)self collection];
  v6 = [v5 _findAttribute0:v4 valueTag:0];

  if (v6)
  {
    v7 = [v6 value_tag];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)getInt:(id)a3
{
  v4 = a3;
  v5 = [(PKCollectionSpecialization *)self collection];
  v6 = [v5 _findAttribute0:v4 valueTag:0];

  v7 = [v6 values];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 integer];

  return v9;
}

- (_NSRange)getRange:(id)a3
{
  v4 = a3;
  v5 = [(PKCollectionSpecialization *)self collection];
  v6 = [v5 _findAttribute0:v4 valueTag:0];

  if (v6)
  {
    if ([v6 value_tag] == 33)
    {
      v7 = [v6 values];
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = v8;
      if (v8)
      {
        [v8 range];
      }

      else
      {
        v16 = 0;
      }

      v10 = v16 - 1;
      v11 = SHIDWORD(v16) - v16;
    }

    else
    {
      v12 = [v6 values];
      v13 = [v12 objectAtIndexedSubscript:0];
      v10 = [v13 integer];

      v11 = 1;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v14 = v10;
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
    v6 = [(PKMediaSize *)self yRange];
    [v5 valueWithRange:{v6, v7}];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[PKMediaSize yDimension](self, "yDimension")}];
  }
  v8 = ;
  [v3 setObject:v8 forKeyedSubscript:@"y-dimension"];

  return v3;
}

+ (id)mediaSizeWithWidth:(int)a3 height:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = objc_opt_new();
  [v6 _addInteger:0 valueTag:33 name:@"x-dimension" value:v5];
  [v6 _addInteger:0 valueTag:33 name:@"y-dimension" value:v4];
  v7 = [(PKCollectionSpecialization *)[PKMediaSize alloc] initWithCollection:v6];

  return v7;
}

@end