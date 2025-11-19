@interface WFBlockKeyCommand
+ (id)commandWithTitle:(id)a3 input:(id)a4 modifierFlags:(int64_t)a5 block:(id)a6;
@end

@implementation WFBlockKeyCommand

+ (id)commandWithTitle:(id)a3 input:(id)a4 modifierFlags:(int64_t)a5 block:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"WFBlockKeyCommand.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"input"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"WFBlockKeyCommand.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"title"}];

  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_11:
  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:a1 file:@"WFBlockKeyCommand.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_4:
  v14 = [a1 commandWithTitle:v11 image:0 action:sel_wf_handleBlockKeyCommand_ input:v12 modifierFlags:a5 propertyList:0];
  if (v14)
  {
    v15 = [v13 copy];
    v16 = v14[26];
    v14[26] = v15;

    v17 = v14;
  }

  return v14;
}

@end