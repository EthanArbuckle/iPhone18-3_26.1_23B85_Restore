@interface SSAppClipResultBuilder
- (id)buildCommand;
@end

@implementation SSAppClipResultBuilder

- (id)buildCommand
{
  v2 = [(SSResultBuilder *)self result];
  if ([v2 type] == 24)
  {
    v3 = 0x1E69CA2A8;
LABEL_5:
    v4 = *v3;
    v5 = objc_opt_new();
    v6 = [v2 identifier];
    [v5 setClipIdentifier:v6];

    goto LABEL_7;
  }

  if ([v2 type] == 22)
  {
    v3 = 0x1E69CA278;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end