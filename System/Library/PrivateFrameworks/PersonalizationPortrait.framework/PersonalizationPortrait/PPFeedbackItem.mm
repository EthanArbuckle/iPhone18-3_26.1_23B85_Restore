@interface PPFeedbackItem
+ (id)stringForItemFeedbackType:(unsigned int)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPPFeedbackItem:(id)item;
- (PPFeedbackItem)initWithCoder:(id)coder;
- (PPFeedbackItem)initWithItemString:(id)string itemFeedbackType:(unsigned int)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPFeedbackItem

- (BOOL)isEqualToPPFeedbackItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_4;
  }

  v5 = self->_itemString;
  v6 = v5;
  if (v5 == itemCopy[2])
  {

    goto LABEL_6;
  }

  v7 = [(NSString *)v5 isEqual:?];

  if (v7)
  {
LABEL_6:
    v8 = self->_itemFeedbackType == *(itemCopy + 2);
    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPFeedbackItem *)self isEqualToPPFeedbackItem:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_new();
  itemString = self->_itemString;
  v5 = [objc_opt_class() stringForItemFeedbackType:self->_itemFeedbackType];
  [v3 appendFormat:@"{%@:%@}", itemString, v5];

  v6 = [v3 copy];

  return v6;
}

- (PPFeedbackItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemString"];
  v6 = [coderCopy containsValueForKey:@"itemFeedbackType"];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = -[PPFeedbackItem initWithItemString:itemFeedbackType:](self, "initWithItemString:itemFeedbackType:", v5, [coderCopy decodeInt32ForKey:@"itemFeedbackType"]);
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  itemString = self->_itemString;
  coderCopy = coder;
  [coderCopy encodeObject:itemString forKey:@"itemString"];
  [coderCopy encodeInt32:self->_itemFeedbackType forKey:@"itemFeedbackType"];
}

- (PPFeedbackItem)initWithItemString:(id)string itemFeedbackType:(unsigned int)type
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = PPFeedbackItem;
  v9 = [(PPFeedbackItem *)&v13 init];
  if (v9)
  {
    if (stringCopy)
    {
      if (type)
      {
LABEL_4:
        objc_storeStrong(&v9->_itemString, string);
        v9->_itemFeedbackType = type;
        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"PPFeedbackItem.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"itemString"}];

      if (type)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v9 file:@"PPFeedbackItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"itemFeedbackType"}];

    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

+ (id)stringForItemFeedbackType:(unsigned int)type
{
  v17 = *MEMORY[0x1E69E9840];
  if (type >= 6)
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      typeCopy3 = type;
      *buf = 138412546;
      v14 = v12;
      v15 = 2048;
      typeCopy2 = type;
      _os_log_error_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_ERROR, "%@ called with invalid PPItemFeedbackType value of %lu", buf, 0x16u);
    }

    else
    {
      typeCopy3 = type;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = NSStringFromSelector(a2);
    [v8 raise:v9 format:{@"%@ called with invalid PPItemFeedbackType value of %lu", v10, typeCopy3}];

    result = @"invalid";
  }

  else
  {
    result = off_1E77F7C00[type];
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end