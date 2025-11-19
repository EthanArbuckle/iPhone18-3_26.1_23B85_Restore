@interface SUItemValidatorTest
+ (id)defaultTest;
- (BOOL)validateItem:(id)a3 offer:(id)a4 error:(id *)a5;
- (BOOL)validateItems:(id)a3 offers:(id)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUItemValidatorTest

+ (id)defaultTest
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (BOOL)validateItem:(id)a3 offer:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  return 1;
}

- (BOOL)validateItems:(id)a3 offers:(id)a4 error:(id *)a5
{
  v9 = [a3 count];
  v10 = [a4 count];
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
      v14 = [a3 objectAtIndex:i];
      if (i >= v11)
      {
        v15 = 0;
      }

      else
      {
        v15 = [a4 objectAtIndex:i];
      }

      if (![(SUItemValidatorTest *)self validateItem:v14 offer:v15 error:a5])
      {
        break;
      }

      ++i;
    }
  }

  return v12;
}

@end