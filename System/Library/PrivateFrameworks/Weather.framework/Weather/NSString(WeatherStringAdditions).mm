@interface NSString(WeatherStringAdditions)
- (double)sizeWithDegreeWithFont:()WeatherStringAdditions degreeFont:degreeOffset:;
- (void)drawAtPoint:()WeatherStringAdditions forWidth:withFont:fontColor:shadowColor:;
- (void)drawWithDegreeAtPoint:()WeatherStringAdditions font:degreeFont:degreeOffset:;
@end

@implementation NSString(WeatherStringAdditions)

- (void)drawAtPoint:()WeatherStringAdditions forWidth:withFont:fontColor:shadowColor:
{
  selfCopy = self;
  v15 = a7;
  v17 = a6;
  [a8 setFill];
  v16 = a4;
  [selfCopy _legacy_drawAtPoint:v17 forWidth:4 withFont:a2 lineBreakMode:{a3 + 1.0, v16}];
  [v15 setFill];

  [selfCopy _legacy_drawAtPoint:v17 forWidth:4 withFont:a2 lineBreakMode:{a3, v16}];
}

- (void)drawWithDegreeAtPoint:()WeatherStringAdditions font:degreeFont:degreeOffset:
{
  v21 = a8;
  v14 = MEMORY[0x277CCACA8];
  v15 = a7;
  weatherDegreeChar = [v14 stringWithFormat:@"%C", WeatherDegreeChar];
  LODWORD(v14) = IsNumberRTL();
  [self _legacy_sizeWithFont:v15];
  v18 = v17;
  [weatherDegreeChar _legacy_sizeWithFont:v21];
  v20 = v19;
  if (v14)
  {
    [self _legacy_drawAtPoint:v15 forWidth:2 withFont:a4 + a2 + v19 lineBreakMode:{a3, v18}];
  }

  else
  {
    [self _legacy_drawAtPoint:v15 forWidth:2 withFont:a2 lineBreakMode:{a3, v18}];

    a2 = a4 + a2 + v18;
  }

  [weatherDegreeChar _legacy_drawAtPoint:v21 forWidth:2 withFont:a2 lineBreakMode:{a3 + a5, v20}];
}

- (double)sizeWithDegreeWithFont:()WeatherStringAdditions degreeFont:degreeOffset:
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  v10 = a4;
  weatherDegreeChar = [v8 stringWithFormat:@"%C", WeatherDegreeChar];
  [self _legacy_sizeWithFont:v10];
  v13 = v12;

  [weatherDegreeChar _legacy_sizeWithFont:v9];
  v15 = v14;

  return v13 + a2 + v15;
}

@end