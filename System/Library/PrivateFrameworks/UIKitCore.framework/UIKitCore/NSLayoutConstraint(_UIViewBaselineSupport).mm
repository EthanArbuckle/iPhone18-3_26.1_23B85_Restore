@interface NSLayoutConstraint(_UIViewBaselineSupport)
- (uint64_t)_debuggableEquationBaseDescription;
- (uint64_t)_debuggableEquationDescriptionWithoutLegend;
- (uint64_t)_debuggableEquationLegendDescription;
@end

@implementation NSLayoutConstraint(_UIViewBaselineSupport)

- (uint64_t)_debuggableEquationBaseDescription
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [(NSString *)v3 isEqual:@"NSAutoresizingMaskLayoutConstraint"];
  v5 = @"NSAutoResizeMaskCn";
  if (!v4)
  {
    v5 = v3;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>  ::  ", v5, self];
}

- (uint64_t)_debuggableEquationLegendDescription
{
  _constraintType = [self _constraintType];
  nsli_superitem = 0;
  if (_constraintType > 8)
  {
    if (_constraintType == 10)
    {
      goto LABEL_8;
    }

    if (_constraintType != 9)
    {
      goto LABEL_10;
    }

LABEL_7:
    firstItem = [self firstItem];
LABEL_9:
    nsli_superitem = [firstItem nsli_superitem];
    goto LABEL_10;
  }

  if (_constraintType == 3)
  {
    goto LABEL_7;
  }

  if (_constraintType == 4)
  {
LABEL_8:
    firstItem = [self secondItem];
    goto LABEL_9;
  }

LABEL_10:
  firstItem2 = [self firstItem];
  if ([firstItem2 nsli_descriptionIncludesPointer])
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_msgSend(firstItem2 "nsli_description")];
  }

  firstItem3 = [self firstItem];
  if (firstItem3 == [self secondItem] || (v8 = objc_msgSend(self, "secondItem"), (objc_msgSend(v8, "nsli_descriptionIncludesPointer") & 1) != 0))
  {
    v9 = 0;
    if (!nsli_superitem)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = [objc_msgSend(v8 "nsli_description")];
    if (!nsli_superitem)
    {
      goto LABEL_21;
    }
  }

  v10 = MEMORY[0x1E696AEC0];
  nsli_descriptionIncludesPointer = [nsli_superitem nsli_descriptionIncludesPointer];
  nsli_description = [nsli_superitem nsli_description];
  if ((nsli_descriptionIncludesPointer & 1) == 0)
  {
    nsli_description = [nsli_description stringByAppendingFormat:@":%p", nsli_superitem];
  }

  nsli_superitem = [v10 stringWithFormat:@"'|':%@", nsli_description];
LABEL_21:
  array = [MEMORY[0x1E695DF70] array];
  v14 = array;
  if (v6)
  {
    [array addObject:v6];
  }

  if (v9)
  {
    [v14 addObject:v9];
  }

  if (nsli_superitem)
  {
    [v14 addObject:nsli_superitem];
  }

  _debuggableEquationBaseDescription = [self _debuggableEquationBaseDescription];
  v16 = [v14 componentsJoinedByString:{@", "}];

  return [_debuggableEquationBaseDescription stringByAppendingString:v16];
}

- (uint64_t)_debuggableEquationDescriptionWithoutLegend
{
  v2 = [self valueForKey:@"asciiArtDescription"];
  if (!v2)
  {
    v2 = [self valueForKey:@"equationDescription"];
    if (!v2)
    {
      v2 = [self description];
    }
  }

  v3 = v2;
  _debuggableEquationBaseDescription = [self _debuggableEquationBaseDescription];

  return [_debuggableEquationBaseDescription stringByAppendingString:v3];
}

@end