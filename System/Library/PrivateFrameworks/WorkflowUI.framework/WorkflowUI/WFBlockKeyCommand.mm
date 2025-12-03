@interface WFBlockKeyCommand
+ (id)commandWithTitle:(id)title input:(id)input modifierFlags:(int64_t)flags block:(id)block;
@end

@implementation WFBlockKeyCommand

+ (id)commandWithTitle:(id)title input:(id)input modifierFlags:(int64_t)flags block:(id)block
{
  titleCopy = title;
  inputCopy = input;
  blockCopy = block;
  if (titleCopy)
  {
    if (inputCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFBlockKeyCommand.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"input"}];

    if (blockCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFBlockKeyCommand.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"title"}];

  if (!inputCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (blockCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFBlockKeyCommand.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_4:
  v14 = [self commandWithTitle:titleCopy image:0 action:sel_wf_handleBlockKeyCommand_ input:inputCopy modifierFlags:flags propertyList:0];
  if (v14)
  {
    v15 = [blockCopy copy];
    v16 = v14[26];
    v14[26] = v15;

    v17 = v14;
  }

  return v14;
}

@end