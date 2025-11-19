@interface RBSProcessExecPathStartsWithPredicate
- (BOOL)matchesProcess:(id)a3;
@end

@implementation RBSProcessExecPathStartsWithPredicate

- (BOOL)matchesProcess:(id)a3
{
  v4 = a3;
  v5 = [v4 executablePath];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v4 bundle];
    v6 = [v7 executablePath];

    if (!v6)
    {
      v9 = 0;
      goto LABEL_5;
    }
  }

  v8 = [(RBSProcessStringPredicate *)self identifier];
  v9 = [v6 hasPrefix:v8];

LABEL_5:
  return v9;
}

@end