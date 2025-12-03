@interface RTIInputOperation
+ (id)_stringForScrollType:(unint64_t)type;
+ (id)scrollingInputOperationWithType:(unint64_t)type contentTransform:(CGAffineTransform *)transform environmentTransform:(CGAffineTransform *)environmentTransform;
+ (unint64_t)_scrollTypeForString:(id)string;
+ (void)registerClassesForScrollingInputOperations;
+ (void)registerCustomInfoClasses:(id)classes forType:(id)type;
+ (void)unregisterCustomInfoType:(id)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isScrollingInputOperation;
- (CGAffineTransform)contentTransform;
- (CGAffineTransform)environmentTransform;
- (RTIInputOperation)initWithCoder:(id)coder;
- (unint64_t)scrollType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTIInputOperation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  keyboardInput = [(RTIInputOperation *)self keyboardInput];

  if (keyboardInput)
  {
    keyboardInput2 = [(RTIInputOperation *)self keyboardInput];
    [coderCopy encodeObject:keyboardInput2 forKey:@"keyboardInput"];
  }

  if ([(RTIInputOperation *)self actionSelector])
  {
    v6 = NSStringFromSelector([(RTIInputOperation *)self actionSelector]);
    [coderCopy encodeObject:v6 forKey:@"inputActionSelectorKey"];
  }

  [coderCopy encodeInteger:-[RTIInputOperation inputModality](self forKey:{"inputModality"), @"inputModalityKey"}];
  customInfoType = [(RTIInputOperation *)self customInfoType];

  if (customInfoType)
  {
    customInfoType2 = [(RTIInputOperation *)self customInfoType];
    [coderCopy encodeObject:customInfoType2 forKey:@"customInfoTypeKey"];
  }

  customInfo = [(RTIInputOperation *)self customInfo];

  if (customInfo)
  {
    customInfo2 = [(RTIInputOperation *)self customInfo];
    [coderCopy encodeObject:customInfo2 forKey:@"customInfoKey"];
  }
}

- (RTIInputOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v17.receiver = self;
  v17.super_class = RTIInputOperation;
  v5 = [(RTIInputOperation *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardInput"];
    keyboardInput = v5->_keyboardInput;
    v5->_keyboardInput = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputActionSelectorKey"];
    v9 = v8;
    if (v8)
    {
      v5->_actionSelector = NSSelectorFromString(v8);
    }

    v5->_inputModality = [coderCopy decodeIntegerForKey:@"inputModalityKey"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customInfoTypeKey"];
    customInfoType = v5->_customInfoType;
    v5->_customInfoType = v10;

    v12 = v5->_customInfoType;
    if (v12)
    {
      v13 = [RTIUtilities customInfoClassesForType:v12 forClass:objc_opt_class()];
      if ([v13 count])
      {
        v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"customInfoKey"];
        customInfo = v5->_customInfo;
        v5->_customInfo = v14;
      }
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      keyboardInput = [(RTIInputOperation *)self keyboardInput];
      keyboardInput2 = [(RTIInputOperation *)v5 keyboardInput];
      v8 = keyboardInput2;
      if (keyboardInput == keyboardInput2)
      {
      }

      else
      {
        keyboardInput3 = [(RTIInputOperation *)self keyboardInput];
        string = [keyboardInput3 string];
        keyboardInput4 = [(RTIInputOperation *)v5 keyboardInput];
        string2 = [keyboardInput4 string];
        v13 = [string isEqualToString:string2];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      customInfoType = [(RTIInputOperation *)self customInfoType];
      customInfoType2 = [(RTIInputOperation *)v5 customInfoType];
      v17 = customInfoType2;
      if (customInfoType == customInfoType2)
      {
      }

      else
      {
        customInfoType3 = [(RTIInputOperation *)self customInfoType];
        customInfoType4 = [(RTIInputOperation *)v5 customInfoType];
        v20 = [customInfoType3 isEqual:customInfoType4];

        if (!v20)
        {
          goto LABEL_15;
        }
      }

      customInfo = [(RTIInputOperation *)self customInfo];
      customInfo2 = [(RTIInputOperation *)v5 customInfo];
      v23 = customInfo2;
      if (customInfo == customInfo2)
      {
      }

      else
      {
        customInfo3 = [(RTIInputOperation *)self customInfo];
        customInfo4 = [(RTIInputOperation *)v5 customInfo];
        v26 = [customInfo3 isEqual:customInfo4];

        if (!v26)
        {
LABEL_15:
          v14 = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      inputModality = [(RTIInputOperation *)self inputModality];
      v14 = inputModality == [(RTIInputOperation *)v5 inputModality];
      goto LABEL_18;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

+ (void)registerCustomInfoClasses:(id)classes forType:(id)type
{
  typeCopy = type;
  classesCopy = classes;
  [RTIUtilities registerCustomInfoClasses:classesCopy forType:typeCopy forClass:objc_opt_class()];
}

+ (void)unregisterCustomInfoType:(id)type
{
  typeCopy = type;
  [RTIUtilities unregisterCustomInfoType:typeCopy forClass:objc_opt_class()];
}

+ (unint64_t)_scrollTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"textSelectionWillScroll"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"textSelectionScrolling"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"textSelectionDidScroll"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_stringForScrollType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return &stru_1F0D9AA78;
  }

  else
  {
    return off_1E7514558[type - 1];
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

+ (id)scrollingInputOperationWithType:(unint64_t)type contentTransform:(CGAffineTransform *)transform environmentTransform:(CGAffineTransform *)environmentTransform
{
  v17[2] = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(RTIInputOperation);
  v10 = [self _stringForScrollType:type];
  [(RTIInputOperation *)v9 setActionSelector:NSSelectorFromString(v10)];

  [(RTIInputOperation *)v9 setCustomInfoType:@"UIUserInteractionRemoteInputOperations"];
  v16[0] = @"contentTransform";
  v11 = [MEMORY[0x1E696B098] valueWithBytes:transform objCType:"{CGAffineTransform=dddddd}"];
  v16[1] = @"environmentTransform";
  v17[0] = v11;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:environmentTransform objCType:"{CGAffineTransform=dddddd}"];
  v17[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(RTIInputOperation *)v9 setCustomInfo:v13];

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isScrollingInputOperation
{
  customInfoType = [(RTIInputOperation *)self customInfoType];
  if ([customInfoType isEqualToString:@"UIUserInteractionRemoteInputOperations"])
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
  customInfo = [(RTIInputOperation *)self customInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    customInfo2 = [(RTIInputOperation *)self customInfo];
    v12 = [customInfo2 objectForKey:@"contentTransform"];

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
  customInfo = [(RTIInputOperation *)self customInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    customInfo2 = [(RTIInputOperation *)self customInfo];
    v12 = [customInfo2 objectForKey:@"environmentTransform"];

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