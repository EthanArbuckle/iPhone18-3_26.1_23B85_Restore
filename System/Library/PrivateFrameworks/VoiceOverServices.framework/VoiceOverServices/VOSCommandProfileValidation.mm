@interface VOSCommandProfileValidation
+ (id)gestureAssignedToOtherCommandValidation:(id)validation;
+ (id)gestureIsRequiredValidation;
+ (id)keyboardShortcutAssignedToOtherCommandValidation:(id)validation;
+ (id)successfulValidation;
- (NSString)localizedErrorMessage;
- (NSString)localizedErrorTitle;
- (VOSCommandProfileValidation)initWithType:(int64_t)type;
@end

@implementation VOSCommandProfileValidation

- (VOSCommandProfileValidation)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = VOSCommandProfileValidation;
  result = [(VOSCommandProfileValidation *)&v5 init];
  if (result)
  {
    result->_validationType = type;
  }

  return result;
}

+ (id)successfulValidation
{
  v2 = [[VOSCommandProfileValidation alloc] initWithType:0];

  return v2;
}

+ (id)gestureAssignedToOtherCommandValidation:(id)validation
{
  validationCopy = validation;
  v4 = [[VOSCommandProfileValidation alloc] initWithType:2];
  [(VOSCommandProfileValidation *)v4 setPreviouslyBoundCommand:validationCopy];

  return v4;
}

+ (id)keyboardShortcutAssignedToOtherCommandValidation:(id)validation
{
  validationCopy = validation;
  v4 = [[VOSCommandProfileValidation alloc] initWithType:4];
  [(VOSCommandProfileValidation *)v4 setPreviouslyBoundCommand:validationCopy];

  return v4;
}

+ (id)gestureIsRequiredValidation
{
  v2 = [[VOSCommandProfileValidation alloc] initWithType:5];

  return v2;
}

- (NSString)localizedErrorTitle
{
  v3 = self->_validationType - 1;
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = VOSLocString(off_2784F3620[v3]);
  }

  return v4;
}

- (NSString)localizedErrorMessage
{
  v3 = 0;
  validationType = self->_validationType;
  if (validationType <= 2)
  {
    if (validationType != 1)
    {
      if (validationType != 2)
      {
        goto LABEL_14;
      }

      v6 = MEMORY[0x277CCACA8];
      v7 = @"gesture.in.use.message";
      goto LABEL_11;
    }

    v5 = @"gesture.already.assigned.message";
  }

  else
  {
    if (validationType != 3)
    {
      if (validationType != 4)
      {
        if (validationType != 5)
        {
          goto LABEL_14;
        }

        v5 = @"gesture.required.message";
        goto LABEL_13;
      }

      v6 = MEMORY[0x277CCACA8];
      v7 = @"keyboard.shortcut.in.use.message";
LABEL_11:
      v8 = VOSLocString(v7);
      previouslyBoundCommand = [(VOSCommandProfileValidation *)self previouslyBoundCommand];
      localizedName = [previouslyBoundCommand localizedName];
      v3 = [v6 localizedStringWithFormat:v8, localizedName];

      goto LABEL_14;
    }

    v5 = @"keyboard.shortcut.already.assigned.message";
  }

LABEL_13:
  v3 = VOSLocString(v5);
LABEL_14:

  return v3;
}

@end