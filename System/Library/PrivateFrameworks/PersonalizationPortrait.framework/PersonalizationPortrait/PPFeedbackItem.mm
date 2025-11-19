@interface PPFeedbackItem
+ (id)stringForItemFeedbackType:(unsigned int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPPFeedbackItem:(id)a3;
- (PPFeedbackItem)initWithCoder:(id)a3;
- (PPFeedbackItem)initWithItemString:(id)a3 itemFeedbackType:(unsigned int)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPFeedbackItem

- (BOOL)isEqualToPPFeedbackItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = self->_itemString;
  v6 = v5;
  if (v5 == v4[2])
  {

    goto LABEL_6;
  }

  v7 = [(NSString *)v5 isEqual:?];

  if (v7)
  {
LABEL_6:
    v8 = self->_itemFeedbackType == *(v4 + 2);
    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPFeedbackItem *)self isEqualToPPFeedbackItem:v5];
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

- (PPFeedbackItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemString"];
  v6 = [v4 containsValueForKey:@"itemFeedbackType"];
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
    v8 = 0;
  }

  else
  {
    self = -[PPFeedbackItem initWithItemString:itemFeedbackType:](self, "initWithItemString:itemFeedbackType:", v5, [v4 decodeInt32ForKey:@"itemFeedbackType"]);
    v8 = self;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  itemString = self->_itemString;
  v5 = a3;
  [v5 encodeObject:itemString forKey:@"itemString"];
  [v5 encodeInt32:self->_itemFeedbackType forKey:@"itemFeedbackType"];
}

- (PPFeedbackItem)initWithItemString:(id)a3 itemFeedbackType:(unsigned int)a4
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = PPFeedbackItem;
  v9 = [(PPFeedbackItem *)&v13 init];
  if (v9)
  {
    if (v8)
    {
      if (a4)
      {
LABEL_4:
        objc_storeStrong(&v9->_itemString, a3);
        v9->_itemFeedbackType = a4;
        goto LABEL_5;
      }
    }

    else
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:v9 file:@"PPFeedbackItem.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"itemString"}];

      if (a4)
      {
        goto LABEL_4;
      }
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:v9 file:@"PPFeedbackItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"itemFeedbackType"}];

    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

+ (id)stringForItemFeedbackType:(unsigned int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 >= 6)
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v7 = a3;
      *buf = 138412546;
      v14 = v12;
      v15 = 2048;
      v16 = a3;
      _os_log_error_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_ERROR, "%@ called with invalid PPItemFeedbackType value of %lu", buf, 0x16u);
    }

    else
    {
      v7 = a3;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = NSStringFromSelector(a2);
    [v8 raise:v9 format:{@"%@ called with invalid PPItemFeedbackType value of %lu", v10, v7}];

    result = @"invalid";
  }

  else
  {
    result = off_1E77F7C00[a3];
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end