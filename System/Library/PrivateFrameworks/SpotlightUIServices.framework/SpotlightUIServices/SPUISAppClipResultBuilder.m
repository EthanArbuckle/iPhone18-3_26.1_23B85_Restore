@interface SPUISAppClipResultBuilder
- (id)buildCommand;
@end

@implementation SPUISAppClipResultBuilder

- (id)buildCommand
{
  v2 = [(SPUISResultBuilder *)self result];
  if ([v2 type] == 24)
  {
    v3 = 0x277D4C4F0;
LABEL_5:
    v4 = *v3;
    v5 = objc_opt_new();
    v6 = [v2 identifier];
    [v5 setClipIdentifier:v6];

    goto LABEL_7;
  }

  if ([v2 type] == 22)
  {
    v3 = 0x277D4C4C8;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end