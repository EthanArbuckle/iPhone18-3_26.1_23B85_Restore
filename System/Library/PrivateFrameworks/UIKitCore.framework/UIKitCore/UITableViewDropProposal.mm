@interface UITableViewDropProposal
- (UITableViewDropProposal)initWithDropOperation:(UIDropOperation)operation intent:(UITableViewDropIntent)intent;
- (UITableViewDropProposal)initWithDropOperation:(unint64_t)operation;
- (UITableViewDropProposal)initWithDropOperation:(unint64_t)operation dropLocation:(int64_t)location;
- (id)_updatedDropProposalWithDropOperation:(unint64_t)operation dropIntent:(int64_t)intent adjustedTargetIndexPath:(id)path;
- (int64_t)_dropAction;
- (int64_t)_dropLocation;
@end

@implementation UITableViewDropProposal

- (UITableViewDropProposal)initWithDropOperation:(unint64_t)operation
{
  v4.receiver = self;
  v4.super_class = UITableViewDropProposal;
  result = [(UIDropProposal *)&v4 initWithDropOperation:operation];
  if (result)
  {
    result->_intent = 0;
  }

  return result;
}

- (UITableViewDropProposal)initWithDropOperation:(unint64_t)operation dropLocation:(int64_t)location
{
  v5 = [(UITableViewDropProposal *)self initWithDropOperation:operation];
  if (v5)
  {
    if (location >= 4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UITableViewDropIntent _UITableViewDropIntentForDropLocation(UITableViewDropLocation)"];
      [currentHandler handleFailureInFunction:v8 file:@"_UITableViewDropCoordinator.m" lineNumber:39 description:{@"Unknown drop location value: %ld", location}];
    }

    else
    {
      v6 = qword_18A682A30[location];
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

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UITableViewDropLocation _UITableViewDropLocationForDropIntent(UITableViewDropIntent)"];
  [currentHandler handleFailureInFunction:v5 file:@"_UITableViewDropCoordinator.m" lineNumber:26 description:{@"Unknown drop intent value: %ld", intent}];

  return result;
}

- (id)_updatedDropProposalWithDropOperation:(unint64_t)operation dropIntent:(int64_t)intent adjustedTargetIndexPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  if ([(UIDropProposal *)selfCopy operation]!= operation || [(UITableViewDropProposal *)selfCopy intent]!= intent)
  {
    v10 = [[UITableViewDropProposal alloc] initWithDropOperation:operation intent:intent];

    selfCopy = v10;
  }

  [(UITableViewDropProposal *)selfCopy _setAdjustedTargetIndexPath:pathCopy];

  return selfCopy;
}

- (int64_t)_dropAction
{
  operation = [(UIDropProposal *)self operation];
  _dropLocation = [(UITableViewDropProposal *)self _dropLocation];
  if (operation < UIDropOperationCopy)
  {
    return 3;
  }

  v6 = _dropLocation;
  if (_dropLocation < 4)
  {
    return qword_18A682A70[_dropLocation];
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UITableViewDropAction _UITableViewDropActionForDropOperationAndDropLocation(UIDropOperation, UITableViewDropLocation)"}];
  [currentHandler handleFailureInFunction:v8 file:@"_UITableViewDropCoordinator.m" lineNumber:120 description:{@"Unknown drop location value: %ld", v6}];

  return result;
}

@end