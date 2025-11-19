@interface RTIInputOperation
+ (id)_stringForScrollType:(unint64_t)a3;
+ (id)scrollingInputOperationWithType:(unint64_t)a3 contentTransform:(CGAffineTransform *)a4 environmentTransform:(CGAffineTransform *)a5;
+ (unint64_t)_scrollTypeForString:(id)a3;
+ (void)registerClassesForScrollingInputOperations;
+ (void)registerCustomInfoClasses:(id)a3 forType:(id)a4;
+ (void)unregisterCustomInfoType:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isScrollingInputOperation;
- (CGAffineTransform)contentTransform;
- (CGAffineTransform)environmentTransform;
- (RTIInputOperation)initWithCoder:(id)a3;
- (unint64_t)scrollType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTIInputOperation

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  if (([v11 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  v4 = [(RTIInputOperation *)self keyboardInput];

  if (v4)
  {
    v5 = [(RTIInputOperation *)self keyboardInput];
    [v11 encodeObject:v5 forKey:@"keyboardInput"];
  }

  if ([(RTIInputOperation *)self actionSelector])
  {
    v6 = NSStringFromSelector([(RTIInputOperation *)self actionSelector]);
    [v11 encodeObject:v6 forKey:@"inputActionSelectorKey"];
  }

  [v11 encodeInteger:-[RTIInputOperation inputModality](self forKey:{"inputModality"), @"inputModalityKey"}];
  v7 = [(RTIInputOperation *)self customInfoType];

  if (v7)
  {
    v8 = [(RTIInputOperation *)self customInfoType];
    [v11 encodeObject:v8 forKey:@"customInfoTypeKey"];
  }

  v9 = [(RTIInputOperation *)self customInfo];

  if (v9)
  {
    v10 = [(RTIInputOperation *)self customInfo];
    [v11 encodeObject:v10 forKey:@"customInfoKey"];
  }
}

- (RTIInputOperation)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v17.receiver = self;
  v17.super_class = RTIInputOperation;
  v5 = [(RTIInputOperation *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardInput"];
    keyboardInput = v5->_keyboardInput;
    v5->_keyboardInput = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputActionSelectorKey"];
    v9 = v8;
    if (v8)
    {
      v5->_actionSelector = NSSelectorFromString(v8);
    }

    v5->_inputModality = [v4 decodeIntegerForKey:@"inputModalityKey"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customInfoTypeKey"];
    customInfoType = v5->_customInfoType;
    v5->_customInfoType = v10;

    v12 = v5->_customInfoType;
    if (v12)
    {
      v13 = [RTIUtilities customInfoClassesForType:v12 forClass:objc_opt_class()];
      if ([v13 count])
      {
        v14 = [v4 decodeObjectOfClasses:v13 forKey:@"customInfoKey"];
        customInfo = v5->_customInfo;
        v5->_customInfo = v14;
      }
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTIInputOperation *)self keyboardInput];
      v7 = [(RTIInputOperation *)v5 keyboardInput];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(RTIInputOperation *)self keyboardInput];
        v10 = [v9 string];
        v11 = [(RTIInputOperation *)v5 keyboardInput];
        v12 = [v11 string];
        v13 = [v10 isEqualToString:v12];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v15 = [(RTIInputOperation *)self customInfoType];
      v16 = [(RTIInputOperation *)v5 customInfoType];
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        v18 = [(RTIInputOperation *)self customInfoType];
        v19 = [(RTIInputOperation *)v5 customInfoType];
        v20 = [v18 isEqual:v19];

        if (!v20)
        {
          goto LABEL_15;
        }
      }

      v21 = [(RTIInputOperation *)self customInfo];
      v22 = [(RTIInputOperation *)v5 customInfo];
      v23 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        v24 = [(RTIInputOperation *)self customInfo];
        v25 = [(RTIInputOperation *)v5 customInfo];
        v26 = [v24 isEqual:v25];

        if (!v26)
        {
LABEL_15:
          v14 = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      v27 = [(RTIInputOperation *)self inputModality];
      v14 = v27 == [(RTIInputOperation *)v5 inputModality];
      goto LABEL_18;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

+ (void)registerCustomInfoClasses:(id)a3 forType:(id)a4
{
  v5 = a4;
  v6 = a3;
  [RTIUtilities registerCustomInfoClasses:v6 forType:v5 forClass:objc_opt_class()];
}

+ (void)unregisterCustomInfoType:(id)a3
{
  v3 = a3;
  [RTIUtilities unregisterCustomInfoType:v3 forClass:objc_opt_class()];
}

+ (unint64_t)_scrollTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"textSelectionWillScroll"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"textSelectionScrolling"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"textSelectionDidScroll"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_stringForScrollType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return &stru_1F0D9AA78;
  }

  else
  {
    return off_1E7514558[a3 - 1];
  }
}

+ (void)registerClassesForScrollingInputOperations
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [RTIInputOperation registerCustomInfoClasses:v5 forType:@"UIUserInteractionRemoteInputOperations"];
}

+ (id)scrollingInputOperationWithType:(unint64_t)a3 contentTransform:(CGAffineTransform *)a4 environmentTransform:(CGAffineTransform *)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(RTIInputOperation);
  v10 = [a1 _stringForScrollType:a3];
  [(RTIInputOperation *)v9 setActionSelector:NSSelectorFromString(v10)];

  [(RTIInputOperation *)v9 setCustomInfoType:@"UIUserInteractionRemoteInputOperations"];
  v16[0] = @"contentTransform";
  v11 = [MEMORY[0x1E696B098] valueWithBytes:a4 objCType:"{CGAffineTransform=dddddd}"];
  v16[1] = @"environmentTransform";
  v17[0] = v11;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:a5 objCType:"{CGAffineTransform=dddddd}"];
  v17[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(RTIInputOperation *)v9 setCustomInfo:v13];

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isScrollingInputOperation
{
  v3 = [(RTIInputOperation *)self customInfoType];
  if ([v3 isEqualToString:@"UIUserInteractionRemoteInputOperations"])
  {
    v4 = [(RTIInputOperation *)self scrollType]!= 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)scrollType
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector([(RTIInputOperation *)self actionSelector]);
  v5 = [v3 _scrollTypeForString:v4];

  return v5;
}

- (CGAffineTransform)contentTransform
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  v7 = [(RTIInputOperation *)self customInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(RTIInputOperation *)self customInfo];
    v12 = [v10 objectForKey:@"contentTransform"];

    v11 = v12;
    if (v12)
    {
      [v12 getValue:retstr size:48];
      v11 = v12;
    }
  }

  return result;
}

- (CGAffineTransform)environmentTransform
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  v7 = [(RTIInputOperation *)self customInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(RTIInputOperation *)self customInfo];
    v12 = [v10 objectForKey:@"environmentTransform"];

    v11 = v12;
    if (v12)
    {
      [v12 getValue:retstr size:48];
      v11 = v12;
    }
  }

  return result;
}

@end