@interface PUGroupValueFilter
- (double)outputValue;
- (void)setInputValue:(double)value;
@end

@implementation PUGroupValueFilter

- (double)outputValue
{
  filters = [(PUGroupValueFilter *)self filters];
  objectEnumerator = [filters objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  [nextObject outputValue];
  v6 = v5;
  nextObject2 = [objectEnumerator nextObject];
  if (nextObject2)
  {
    v8 = nextObject2;
    do
    {
      [v8 setInputValue:v6];
      [v8 outputValue];
      v6 = v9;
      nextObject3 = [objectEnumerator nextObject];

      v8 = nextObject3;
    }

    while (nextObject3);
  }

  return v6;
}

- (void)setInputValue:(double)value
{
  filters = [(PUGroupValueFilter *)self filters];
  firstObject = [filters firstObject];

  [firstObject setInputValue:value];
}

@end