@interface NSNumber(IMJSONSerializableValueProviding)
- (id)im_jsonSerializableValue;
@end

@implementation NSNumber(IMJSONSerializableValueProviding)

- (id)im_jsonSerializableValue
{
  v8 = *MEMORY[0x1E69E9840];
  if (([a1 isEqualToNumber:*MEMORY[0x1E695E870]] & 1) != 0 || (objc_msgSend(a1, "isEqualToNumber:", *MEMORY[0x1E695E880]) & 1) != 0 || objc_msgSend(a1, "isEqualToNumber:", *MEMORY[0x1E695E878]))
  {
    v2 = _IMStoreLogCategoryDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = a1;
      _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_ERROR, "NaN, +inf and -inf are not JSON serializable (%@)", &v6, 0xCu);
    }

    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end