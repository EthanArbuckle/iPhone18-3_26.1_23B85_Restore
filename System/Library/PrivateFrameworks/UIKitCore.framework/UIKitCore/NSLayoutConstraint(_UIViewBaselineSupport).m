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

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>  ::  ", v5, a1];
}

- (uint64_t)_debuggableEquationLegendDescription
{
  v2 = [a1 _constraintType];
  v3 = 0;
  if (v2 > 8)
  {
    if (v2 == 10)
    {
      goto LABEL_8;
    }

    if (v2 != 9)
    {
      goto LABEL_10;
    }

LABEL_7:
    v4 = [a1 firstItem];
LABEL_9:
    v3 = [v4 nsli_superitem];
    goto LABEL_10;
  }

  if (v2 == 3)
  {
    goto LABEL_7;
  }

  if (v2 == 4)
  {
LABEL_8:
    v4 = [a1 secondItem];
    goto LABEL_9;
  }

LABEL_10:
  v5 = [a1 firstItem];
  if ([v5 nsli_descriptionIncludesPointer])
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_msgSend(v5 "nsli_description")];
  }

  v7 = [a1 firstItem];
  if (v7 == [a1 secondItem] || (v8 = objc_msgSend(a1, "secondItem"), (objc_msgSend(v8, "nsli_descriptionIncludesPointer") & 1) != 0))
  {
    v9 = 0;
    if (!v3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = [objc_msgSend(v8 "nsli_description")];
    if (!v3)
    {
      goto LABEL_21;
    }
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = [v3 nsli_descriptionIncludesPointer];
  v12 = [v3 nsli_description];
  if ((v11 & 1) == 0)
  {
    v12 = [v12 stringByAppendingFormat:@":%p", v3];
  }

  v3 = [v10 stringWithFormat:@"'|':%@", v12];
LABEL_21:
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = v13;
  if (v6)
  {
    [v13 addObject:v6];
  }

  if (v9)
  {
    [v14 addObject:v9];
  }

  if (v3)
  {
    [v14 addObject:v3];
  }

  v15 = [a1 _debuggableEquationBaseDescription];
  v16 = [v14 componentsJoinedByString:{@", "}];

  return [v15 stringByAppendingString:v16];
}

- (uint64_t)_debuggableEquationDescriptionWithoutLegend
{
  v2 = [a1 valueForKey:@"asciiArtDescription"];
  if (!v2)
  {
    v2 = [a1 valueForKey:@"equationDescription"];
    if (!v2)
    {
      v2 = [a1 description];
    }
  }

  v3 = v2;
  v4 = [a1 _debuggableEquationBaseDescription];

  return [v4 stringByAppendingString:v3];
}

@end