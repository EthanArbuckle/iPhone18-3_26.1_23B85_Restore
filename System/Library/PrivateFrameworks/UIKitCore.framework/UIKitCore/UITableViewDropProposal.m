@interface UITableViewDropProposal
- (UITableViewDropProposal)initWithDropOperation:(UIDropOperation)operation intent:(UITableViewDropIntent)intent;
- (UITableViewDropProposal)initWithDropOperation:(unint64_t)a3;
- (UITableViewDropProposal)initWithDropOperation:(unint64_t)a3 dropLocation:(int64_t)a4;
- (id)_updatedDropProposalWithDropOperation:(unint64_t)a3 dropIntent:(int64_t)a4 adjustedTargetIndexPath:(id)a5;
- (int64_t)_dropAction;
- (int64_t)_dropLocation;
@end

@implementation UITableViewDropProposal

- (UITableViewDropProposal)initWithDropOperation:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewDropProposal;
  result = [(UIDropProposal *)&v4 initWithDropOperation:a3];
  if (result)
  {
    result->_intent = 0;
  }

  return result;
}

- (UITableViewDropProposal)initWithDropOperation:(unint64_t)a3 dropLocation:(int64_t)a4
{
  v5 = [(UITableViewDropProposal *)self initWithDropOperation:a3];
  if (v5)
  {
    if (a4 >= 4)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UITableViewDropIntent _UITableViewDropIntentForDropLocation(UITableViewDropLocation)"];
      [v7 handleFailureInFunction:v8 file:@"_UITableViewDropCoordinator.m" lineNumber:39 description:{@"Unknown drop location value: %ld", a4}];
    }

    else
    {
      v6 = qword_18A682A30[a4];
    }

    v5->_intent = v6;
  }

  return v5;
}

- (UITableViewDropProposal)initWithDropOperation:(UIDropOperation)operation intent:(UITableViewDropIntent)intent
{
  result = [(UITableViewDropProposal *)self initWithDropOperation:operation];
  if (result)
  {
    result->_intent = intent;
  }

  return result;
}

- (int64_t)_dropLocation
{
  intent = self->_intent;
  if (intent < 4)
  {
    return qword_18A682A50[intent];
  }

  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UITableViewDropLocation _UITableViewDropLocationForDropIntent(UITableViewDropIntent)"];
  [v4 handleFailureInFunction:v5 file:@"_UITableViewDropCoordinator.m" lineNumber:26 description:{@"Unknown drop intent value: %ld", intent}];

  return result;
}

- (id)_updatedDropProposalWithDropOperation:(unint64_t)a3 dropIntent:(int64_t)a4 adjustedTargetIndexPath:(id)a5
{
  v8 = a5;
  v9 = self;
  if ([(UIDropProposal *)v9 operation]!= a3 || [(UITableViewDropProposal *)v9 intent]!= a4)
  {
    v10 = [[UITableViewDropProposal alloc] initWithDropOperation:a3 intent:a4];

    v9 = v10;
  }

  [(UITableViewDropProposal *)v9 _setAdjustedTargetIndexPath:v8];

  return v9;
}

- (int64_t)_dropAction
{
  v3 = [(UIDropProposal *)self operation];
  v4 = [(UITableViewDropProposal *)self _dropLocation];
  if (v3 < UIDropOperationCopy)
  {
    return 3;
  }

  v6 = v4;
  if (v4 < 4)
  {
    return qword_18A682A70[v4];
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UITableViewDropAction _UITableViewDropActionForDropOperationAndDropLocation(UIDropOperation, UITableViewDropLocation)"}];
  [v7 handleFailureInFunction:v8 file:@"_UITableViewDropCoordinator.m" lineNumber:120 description:{@"Unknown drop location value: %ld", v6}];

  return result;
}

@end