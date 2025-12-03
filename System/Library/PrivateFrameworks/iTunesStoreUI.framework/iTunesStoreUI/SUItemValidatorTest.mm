@interface SUItemValidatorTest
+ (id)defaultTest;
- (BOOL)validateItem:(id)item offer:(id)offer error:(id *)error;
- (BOOL)validateItems:(id)items offers:(id)offers error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUItemValidatorTest

+ (id)defaultTest
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (BOOL)validateItem:(id)item offer:(id)offer error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (BOOL)validateItems:(id)items offers:(id)offers error:(id *)error
{
  v9 = [items count];
  v10 = [offers count];
  if (v9 < 1)
  {
    return 1;
  }

  else
  {
    v11 = v10;
    v12 = 0;
    for (i = 0; i != v9; v12 = i >= v9)
    {
      v14 = [items objectAtIndex:i];
      if (i >= v11)
      {
        v15 = 0;
      }

      else
      {
        v15 = [offers objectAtIndex:i];
      }

      if (![(SUItemValidatorTest *)self validateItem:v14 offer:v15 error:error])
      {
        break;
      }

      ++i;
    }
  }

  return v12;
}

@end