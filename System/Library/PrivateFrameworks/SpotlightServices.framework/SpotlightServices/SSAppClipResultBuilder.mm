@interface SSAppClipResultBuilder
- (id)buildCommand;
@end

@implementation SSAppClipResultBuilder

- (id)buildCommand
{
  result = [(SSResultBuilder *)self result];
  if ([result type] == 24)
  {
    v3 = 0x1E69CA2A8;
LABEL_5:
    v4 = *v3;
    v5 = objc_opt_new();
    identifier = [result identifier];
    [v5 setClipIdentifier:identifier];

    goto LABEL_7;
  }

  if ([result type] == 22)
  {
    v3 = 0x1E69CA278;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end