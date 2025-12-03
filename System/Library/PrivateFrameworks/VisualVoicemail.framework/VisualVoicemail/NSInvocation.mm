@interface NSInvocation
+ (const)_typeWithoutQualifiers:(const char *)qualifiers;
- (id)BOOLDescriptionAtIndex:(int64_t)index;
- (id)argumentDescriptionForIndex:(int64_t)index;
- (id)blockDescriptionAtIndex:(int64_t)index;
- (id)blockInvocationDescription;
- (id)cStringDescriptionAtIndex:(int64_t)index;
- (id)charDescriptionAtIndex:(int64_t)index;
- (id)doubleDescriptionAtIndex:(int64_t)index;
- (id)floatDescriptionAtIndex:(int64_t)index;
- (id)intDescriptionAtIndex:(int64_t)index;
- (id)invocationDescription;
- (id)longDescriptionAtIndex:(int64_t)index;
- (id)longDoubleDescriptionAtIndex:(int64_t)index;
- (id)longLongDescriptionAtIndex:(int64_t)index;
- (id)objectDescriptionAtIndex:(int64_t)index;
- (id)pointerDescriptionAtIndex:(int64_t)index;
- (id)selectorDescriptionAtIndex:(int64_t)index;
- (id)shortDescriptionAtIndex:(int64_t)index;
- (id)unsignedCharDescriptionAtIndex:(int64_t)index;
- (id)unsignedIntDescriptionAtIndex:(int64_t)index;
- (id)unsignedLongDescriptionAtIndex:(int64_t)index;
- (id)unsignedLongLongDescriptionAtIndex:(int64_t)index;
- (id)unsignedShortDescriptionAtIndex:(int64_t)index;
- (int64_t)getBlockArgumentIndex;
@end

@implementation NSInvocation

- (id)blockInvocationDescription
{
  methodSignature = [(NSInvocation *)self methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  if (numberOfArguments == 1)
  {
    v5 = @"block(void)";
  }

  else
  {
    v6 = numberOfArguments;
    v5 = objc_msgSend([NSMutableString alloc], "initWithString:", @"block(");
    if (v6)
    {
      for (i = 1; i != v6; ++i)
      {
        if (i <= 1)
        {
          v8 = &stru_1000F0098;
        }

        else
        {
          v8 = @", ";
        }

        [(__CFString *)v5 appendFormat:@"%@", v8];
        v9 = [(NSInvocation *)self argumentDescriptionForIndex:i];
        [(__CFString *)v5 appendString:v9];
      }
    }

    [(__CFString *)v5 appendString:@""]);
  }

  return v5;
}

- (id)invocationDescription
{
  methodSignature = [(NSInvocation *)self methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  v5 = NSStringFromSelector([(NSInvocation *)self selector]);
  v6 = v5;
  if (numberOfArguments != 2)
  {
    v13 = methodSignature;
    v7 = [v5 componentsSeparatedByString:@":"];

    v6 = objc_alloc_init(NSMutableString);
    if (numberOfArguments >= 3)
    {
      for (i = 2; i != numberOfArguments; ++i)
      {
        if (i <= 2)
        {
          v9 = &stru_1000F0098;
        }

        else
        {
          v9 = @" ";
        }

        v10 = [v7 objectAtIndex:i - 2];
        [v6 appendFormat:@"%@%@:", v9, v10];

        v11 = [(NSInvocation *)self argumentDescriptionForIndex:i];
        [v6 appendString:v11];
      }
    }

    methodSignature = v13;
  }

  return v6;
}

- (int64_t)getBlockArgumentIndex
{
  methodSignature = [(NSInvocation *)self methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  if (numberOfArguments < 3)
  {
LABEL_7:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = numberOfArguments;
    v5 = 2;
    while (1)
    {
      v6 = [methodSignature getArgumentTypeAtIndex:v5];
      if (*v6 == 64 && v6[1] == 63 && !v6[2])
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }
  }

  return v5;
}

+ (const)_typeWithoutQualifiers:(const char *)qualifiers
{
  v3 = qualifiers - 1;
  do
  {
    v4 = *++v3;
  }

  while (memchr("rnNoORV", v4, 8uLL));
  return v3;
}

- (id)argumentDescriptionForIndex:(int64_t)index
{
  methodSignature = [(NSInvocation *)self methodSignature];
  v6 = [methodSignature getArgumentTypeAtIndex:index];

  v7 = *[objc_opt_class() _typeWithoutQualifiers:v6];
  if (v7 > 0x5D)
  {
    if (v7 > 104)
    {
      if (v7 > 113)
      {
        if (v7 == 114)
        {
          v8 = [(NSInvocation *)self cStringDescriptionAtIndex:index];
          goto LABEL_41;
        }

        if (v7 == 115)
        {
          v8 = [(NSInvocation *)self shortDescriptionAtIndex:index];
          goto LABEL_41;
        }
      }

      else
      {
        if (v7 == 105)
        {
          v8 = [(NSInvocation *)self intDescriptionAtIndex:index];
          goto LABEL_41;
        }

        if (v7 == 113)
        {
          v8 = [(NSInvocation *)self longDescriptionAtIndex:index];
          goto LABEL_41;
        }
      }
    }

    else if (v7 > 99)
    {
      if (v7 == 100)
      {
        v8 = [(NSInvocation *)self doubleDescriptionAtIndex:index];
        goto LABEL_41;
      }

      if (v7 == 102)
      {
        v8 = [(NSInvocation *)self floatDescriptionAtIndex:index];
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 == 94)
      {
        v8 = [(NSInvocation *)self pointerDescriptionAtIndex:index];
        goto LABEL_41;
      }

      if (v7 == 99)
      {
        v8 = [(NSInvocation *)self charDescriptionAtIndex:index];
        goto LABEL_41;
      }
    }
  }

  else if (v7 > 67)
  {
    if (v7 > 80)
    {
      if (v7 == 81)
      {
        v8 = [(NSInvocation *)self unsignedLongDescriptionAtIndex:index];
        goto LABEL_41;
      }

      if (v7 == 83)
      {
        v8 = [(NSInvocation *)self unsignedShortDescriptionAtIndex:index];
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 == 68)
      {
        v8 = [(NSInvocation *)self longDoubleDescriptionAtIndex:index];
        goto LABEL_41;
      }

      if (v7 == 73)
      {
        v8 = [(NSInvocation *)self unsignedIntDescriptionAtIndex:index];
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (v7 > 65)
    {
      if (v7 == 66)
      {
        [(NSInvocation *)self BOOLDescriptionAtIndex:index];
      }

      else
      {
        [(NSInvocation *)self unsignedCharDescriptionAtIndex:index];
      }
      v8 = ;
      goto LABEL_41;
    }

    if (v7 == 58)
    {
      v8 = [(NSInvocation *)self selectorDescriptionAtIndex:index];
      goto LABEL_41;
    }

    if (v7 == 64)
    {
      v8 = [(NSInvocation *)self objectDescriptionAtIndex:index];
      goto LABEL_41;
    }
  }

  v8 = [@"<??" stringByAppendingString:@">"];
LABEL_41:

  return v8;
}

- (id)objectDescriptionAtIndex:(int64_t)index
{
  v9 = 0;
  [(NSInvocation *)self getArgument:&v9 atIndex:index];
  if (v9)
  {
    if (([v9 isProxy] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (([v9 isProxy] & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<NSOrderedSet of %d objects>", [v9 count]);
          goto LABEL_13;
        }
      }

      v6 = [v9 description];
      v3 = v6;
      v7 = @"<nil description>";
      if (v6)
      {
        v7 = v6;
      }

      v4 = v7;
    }

    else
    {
      v3 = [v9 description];
      v4 = [NSString stringWithFormat:@"@%@", v3];
    }

    v5 = v4;
  }

  else
  {
    v5 = @"nil";
  }

LABEL_13:

  return v5;
}

- (id)BOOLDescriptionAtIndex:(int64_t)index
{
  v6 = 0;
  [(NSInvocation *)self getArgument:&v6 atIndex:index];
  if (v6)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = v3;

  return v4;
}

- (id)charDescriptionAtIndex:(int64_t)index
{
  memset(v6, 0, sizeof(v6));
  [(NSInvocation *)self getArgument:v6 atIndex:index];
  if (BYTE1(v6[0]) || LOBYTE(v6[0]) > 1u)
  {
    v4 = [NSString stringWithFormat:@"'%c'", LOBYTE(v6[0])];
  }

  else
  {
    v3 = @"NO";
    if (LOBYTE(v6[0]) == 1)
    {
      v3 = @"YES";
    }

    v4 = v3;
  }

  return v4;
}

- (id)unsignedCharDescriptionAtIndex:(int64_t)index
{
  memset(v5, 0, sizeof(v5));
  [(NSInvocation *)self getArgument:v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"'%c'", LOBYTE(v5[0])];

  return v3;
}

- (id)intDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%d", v5];

  return v3;
}

- (id)unsignedIntDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%d", v5];

  return v3;
}

- (id)shortDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%hi", v5];

  return v3;
}

- (id)unsignedShortDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%hu", v5];

  return v3;
}

- (id)longDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%ld", v5];

  return v3;
}

- (id)unsignedLongDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%lu", v5];

  return v3;
}

- (id)longLongDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%qi", v5];

  return v3;
}

- (id)unsignedLongLongDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%qu", v5];

  return v3;
}

- (id)doubleDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%f", v5];

  return v3;
}

- (id)floatDescriptionAtIndex:(int64_t)index
{
  v5 = 0.0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%f", v5];

  return v3;
}

- (id)longDoubleDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%Lf", v5];

  return v3;
}

- (id)pointerDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%p", v5];

  return v3;
}

- (id)cStringDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  __strlcpy_chk();
  __strlcpy_chk();
  v3 = [NSString stringWithFormat:@"%s", v6];

  return v3;
}

- (id)selectorDescriptionAtIndex:(int64_t)index
{
  aSelector = 0;
  [(NSInvocation *)self getArgument:&aSelector atIndex:index];
  v3 = NSStringFromSelector(aSelector);
  v4 = [NSString stringWithFormat:@"@selector(%@)", v3];

  return v4;
}

- (id)blockDescriptionAtIndex:(int64_t)index
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:index];
  v3 = [NSString stringWithFormat:@"%@", v5];

  return v3;
}

@end