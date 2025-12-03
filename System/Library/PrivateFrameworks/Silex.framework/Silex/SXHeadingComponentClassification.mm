@interface SXHeadingComponentClassification
- (BOOL)hasAffiliationWithClassification:(id)classification forDirection:(int64_t)direction;
- (id)accessibilityContextualLabel;
- (id)accessibilityCustomRotorMembership;
- (id)defaultComponentStyleIdentifiers;
- (id)defaultTextStyleIdentifiers;
@end

@implementation SXHeadingComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Heading" value:&stru_1F532F6C0 table:0];

  return v3;
}

- (id)accessibilityCustomRotorMembership
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[SXAXCustomRotorDefinition headingsRotor];
  v4 = [SXAXCustomRotor rotorWithName:v3];
  v5 = [v2 setWithObject:v4];

  return v5;
}

- (id)defaultTextStyleIdentifiers
{
  v2 = [MEMORY[0x1E695DF70] arrayWithObject:@"default"];
  roleString = [objc_opt_class() roleString];
  [v2 addObject:@"default-heading"];
  if (roleString && roleString != SXComponentClassificationUnknownRoleString)
  {
    v4 = SXDefaultTextStyleIdentifierForRole(roleString);
    if (([v2 containsObject:v4] & 1) == 0)
    {
      [v2 addObject:v4];
    }
  }

  return v2;
}

- (id)defaultComponentStyleIdentifiers
{
  v2 = [MEMORY[0x1E695DF70] arrayWithObject:@"default"];
  roleString = [objc_opt_class() roleString];
  [v2 addObject:@"default-heading"];
  if (roleString && roleString != SXComponentClassificationUnknownRoleString)
  {
    v4 = SXDefaultComponentStyleIdentifierForRole(roleString);
    if (([v2 containsObject:v4] & 1) == 0)
    {
      [v2 addObject:v4];
    }
  }

  return v2;
}

- (BOOL)hasAffiliationWithClassification:(id)classification forDirection:(int64_t)direction
{
  classificationCopy = classification;
  if (direction == 1 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SXHeadingComponentClassification;
    v7 = [(SXComponentClassification *)&v9 hasAffiliationWithClassification:classificationCopy forDirection:direction];
  }

  return v7;
}

@end