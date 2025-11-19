@interface SXVideoFill
- (BOOL)loopWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXVideoFill

- (BOOL)loopWithValue:(id)a3 withType:(int)a4
{
  if (a3)
  {
    return [a3 BOOLValue];
  }

  else
  {
    return 1;
  }
}

@end