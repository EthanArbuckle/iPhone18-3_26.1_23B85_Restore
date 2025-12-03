@interface RBSProcessExecPathStartsWithPredicate
- (BOOL)matchesProcess:(id)process;
@end

@implementation RBSProcessExecPathStartsWithPredicate

- (BOOL)matchesProcess:(id)process
{
  processCopy = process;
  executablePath = [processCopy executablePath];
  if (executablePath)
  {
    executablePath2 = executablePath;
  }

  else
  {
    bundle = [processCopy bundle];
    executablePath2 = [bundle executablePath];

    if (!executablePath2)
    {
      v9 = 0;
      goto LABEL_5;
    }
  }

  identifier = [(RBSProcessStringPredicate *)self identifier];
  v9 = [executablePath2 hasPrefix:identifier];

LABEL_5:
  return v9;
}

@end