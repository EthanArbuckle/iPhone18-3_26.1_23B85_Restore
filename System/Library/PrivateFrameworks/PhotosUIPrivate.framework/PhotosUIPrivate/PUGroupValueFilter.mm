@interface PUGroupValueFilter
- (double)outputValue;
- (void)setInputValue:(double)a3;
@end

@implementation PUGroupValueFilter

- (double)outputValue
{
  v2 = [(PUGroupValueFilter *)self filters];
  v3 = [v2 objectEnumerator];

  v4 = [v3 nextObject];
  [v4 outputValue];
  v6 = v5;
  v7 = [v3 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      [v8 setInputValue:v6];
      [v8 outputValue];
      v6 = v9;
      v10 = [v3 nextObject];

      v8 = v10;
    }

    while (v10);
  }

  return v6;
}

- (void)setInputValue:(double)a3
{
  v4 = [(PUGroupValueFilter *)self filters];
  v5 = [v4 firstObject];

  [v5 setInputValue:a3];
}

@end