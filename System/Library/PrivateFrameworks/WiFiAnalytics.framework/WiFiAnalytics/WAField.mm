@interface WAField
- (BOOL)BOOLValue;
- (NSData)bytesValue;
- (NSMutableArray)repeatableValues;
- (NSString)stringValue;
- (WAField)init;
- (WAField)initWithCoder:(id)coder;
- (WAMessageAWD)subMessageValue;
- (double)doubleValue;
- (float)floatValue;
- (id)_ownTypeAsString;
- (id)_typeAsString:(int64_t)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)int32Value;
- (int64_t)int64Value;
- (unint64_t)uint64Value;
- (unsigned)uint32Value;
- (void)_addRepeatableValue:(id)value;
- (void)_throwIncorrecTypeExceptionForType:(int64_t)type isGet:(BOOL)get;
- (void)_throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:(BOOL)repeatable isGet:(BOOL)get forType:(int64_t)type;
- (void)addRepeatableBytes:(id)bytes;
- (void)addRepeatableDoubleValue:(double)value;
- (void)addRepeatableFloatValue:(float)value;
- (void)addRepeatableInt64Value:(int64_t)value;
- (void)addRepeatableString:(id)string;
- (void)addRepeatableSubMessageValue:(id)value;
- (void)addRepeatableUInt64Value:(unint64_t)value;
- (void)encodeWithCoder:(id)coder;
- (void)setBytesValue:(id)value;
- (void)setDoubleValue:(double)value;
- (void)setFloatValue:(float)value;
- (void)setInt64Value:(int64_t)value;
- (void)setRepeatableValues:(id)values;
- (void)setStringValue:(id)value;
- (void)setSubMessageValue:(id)value;
- (void)setUint64Value:(unint64_t)value;
@end

@implementation WAField

- (NSMutableArray)repeatableValues
{
  if ([(WAField *)self isRepeatable])
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)doubleValue
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 1)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;
      v4 = *MEMORY[0x1E69E9840];

      [value doubleValue];
      return result;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField doubleValue]";
      v17 = 1024;
      *v18 = 112;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single double value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:1];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField doubleValue]";
      v17 = 1024;
      *v18 = 111;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString2;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get double value from field of wrong type (this field is a %@). Field key: %@", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:1 isGet:1];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v15, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0.0;
}

- (float)floatValue
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 2)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;
      v4 = *MEMORY[0x1E69E9840];

      [value floatValue];
      return result;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField floatValue]";
      v17 = 1024;
      *v18 = 121;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single float value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:2];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField floatValue]";
      v17 = 1024;
      *v18 = 120;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString2;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get float value from field of wrong type (this field is a %@) Field key: %@", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:2 isGet:1];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v15, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0.0;
}

- (int)int32Value
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 3)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;
      v4 = *MEMORY[0x1E69E9840];

      return [value intValue];
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField int32Value]";
      v17 = 1024;
      *v18 = 130;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single int32 value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:5];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField int32Value]";
      v17 = 1024;
      *v18 = 129;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString2;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get int32 value from field of wrong type (this field is a %@) Field key: %@", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:3 isGet:1];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v15, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)int64Value
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 4)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;
      v4 = *MEMORY[0x1E69E9840];

      return [value longLongValue];
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField int64Value]";
      v17 = 1024;
      *v18 = 139;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single int64 value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:4];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField int64Value]";
      v17 = 1024;
      *v18 = 138;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString2;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get int64 value from field of wrong type (this field is a %@) Field key: %@", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:4 isGet:1];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v15, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (unsigned)uint32Value
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 5)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;
      v4 = *MEMORY[0x1E69E9840];

      return [value unsignedIntValue];
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField uint32Value]";
      v17 = 1024;
      *v18 = 148;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single uint32 value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:5];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField uint32Value]";
      v17 = 1024;
      *v18 = 147;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString2;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get uint32 value from field of wrong type (this field is a %@) Field key: %@", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:5 isGet:1];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v15, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (unint64_t)uint64Value
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 6)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;
      v4 = *MEMORY[0x1E69E9840];

      return [value unsignedLongLongValue];
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField uint64Value]";
      v17 = 1024;
      *v18 = 157;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single uint64 value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:6];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField uint64Value]";
      v17 = 1024;
      *v18 = 156;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString2;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get uint64 value from field of wrong type (this field is a %@) Field key: %@", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:6 isGet:1];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v15, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)BOOLValue
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 7)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;
      v4 = *MEMORY[0x1E69E9840];

      return [value BOOLValue];
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField BOOLValue]";
      v17 = 1024;
      *v18 = 166;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single BOOL value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:7];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField BOOLValue]";
      v17 = 1024;
      *v18 = 165;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString2;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get BOOL value from field of wrong type (this field is a %@) Field key: %@", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:7 isGet:1];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v15, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (NSString)stringValue
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 8)
  {
    if (![(WAField *)self isRepeatable])
    {
      v3 = self->_value;
      goto LABEL_4;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v14 = 136446722;
      v15 = "[WAField stringValue]";
      v16 = 1024;
      *v17 = 175;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single string value from a repeatable field (this field is a %@)", &v14, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:8];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField stringValue]";
      v16 = 1024;
      *v17 = 174;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString2;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get string value from field of wrong type (this field is a %@) Field key: %@", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:8 isGet:1];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    *v17 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v14, 0x16u);
  }

  v3 = 0;
LABEL_4:
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSData)bytesValue
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 9)
  {
    if (![(WAField *)self isRepeatable])
    {
      v3 = self->_value;
      goto LABEL_4;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v14 = 136446722;
      v15 = "[WAField bytesValue]";
      v16 = 1024;
      *v17 = 184;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single bytes value from a repeatable field (this field is a %@)", &v14, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:9];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField bytesValue]";
      v16 = 1024;
      *v17 = 183;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString2;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get bytes value from field of wrong type (this field is a %@) Field key: %@", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:9 isGet:1];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    *v17 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v14, 0x16u);
  }

  v3 = 0;
LABEL_4:
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (WAMessageAWD)subMessageValue
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 10)
  {
    if (![(WAField *)self isRepeatable])
    {
      v3 = self->_value;
      goto LABEL_4;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v14 = 136446722;
      v15 = "[WAField subMessageValue]";
      v16 = 1024;
      *v17 = 193;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single submessage value from a repeatable field (this field is a %@)", &v14, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:10];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField subMessageValue]";
      v16 = 1024;
      *v17 = 192;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString2;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get submessage value from field of wrong type (this field is a %@) Field key: %@", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:10 isGet:1];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    *v17 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v14, 0x16u);
  }

  v3 = 0;
LABEL_4:
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setDoubleValue:(double)value
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 1)
  {
    if (![(WAField *)self isRepeatable])
    {
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:value];
      value = self->_value;
      self->_value = v5;
      v7 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(WAField *)self key];
      v17 = 136446978;
      v18 = "[WAField setDoubleValue:]";
      v19 = 1024;
      *v20 = 202;
      *&v20[4] = 2048;
      *&v20[6] = value;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%f) on a repeatable field (%@). Ignored.", &v17, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:1];
  }

  else
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v10 = [(WAField *)self key];
      v17 = 136446978;
      v18 = "[WAField setDoubleValue:]";
      v19 = 1024;
      *v20 = 201;
      *&v20[4] = 2112;
      *&v20[6] = _ownTypeAsString;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set double value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v17, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:1 isGet:0];
  }

  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v15 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    *v20 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v13, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v17, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setFloatValue:(float)value
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 2)
  {
    if (![(WAField *)self isRepeatable])
    {
      *&v5 = value;
      v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
      value = self->_value;
      self->_value = v6;
      v8 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(WAField *)self key];
      v18 = 136446978;
      v19 = "[WAField setFloatValue:]";
      v20 = 1024;
      *v21 = 212;
      *&v21[4] = 2048;
      *&v21[6] = value;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%f) on a repeatable field (%@). Ignored.", &v18, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:2];
  }

  else
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v11 = [(WAField *)self key];
      v18 = 136446978;
      v19 = "[WAField setFloatValue:]";
      v20 = 1024;
      *v21 = 211;
      *&v21[4] = 2112;
      *&v21[6] = _ownTypeAsString;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set float value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v18, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:2 isGet:0];
  }

  v14 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v16 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v18 = 138412546;
    v19 = v16;
    v20 = 2112;
    *v21 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v14, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v18, 0x16u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setInt64Value:(int64_t)value
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 4)
  {
    if (![(WAField *)self isRepeatable])
    {
      v5 = [MEMORY[0x1E696AD98] numberWithLongLong:value];
      value = self->_value;
      self->_value = v5;
      v7 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(WAField *)self key];
      v17 = 136446978;
      v18 = "[WAField setInt64Value:]";
      v19 = 1024;
      *v20 = 232;
      *&v20[4] = 2048;
      *&v20[6] = value;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%lld) on a repeatable field (%@). Ignored.", &v17, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:4];
  }

  else
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v10 = [(WAField *)self key];
      v17 = 136446978;
      v18 = "[WAField setInt64Value:]";
      v19 = 1024;
      *v20 = 231;
      *&v20[4] = 2112;
      *&v20[6] = _ownTypeAsString;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set an int64 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v17, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:4 isGet:0];
  }

  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v15 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    *v20 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v13, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v17, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setUint64Value:(unint64_t)value
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 6)
  {
    if (![(WAField *)self isRepeatable])
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:value];
      value = self->_value;
      self->_value = v5;
      v7 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(WAField *)self key];
      v17 = 136446978;
      v18 = "[WAField setUint64Value:]";
      v19 = 1024;
      *v20 = 251;
      *&v20[4] = 2048;
      *&v20[6] = value;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%llu) on a repeatable field (%@). Ignored.", &v17, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:6];
  }

  else
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v10 = [(WAField *)self key];
      v17 = 136446978;
      v18 = "[WAField setUint64Value:]";
      v19 = 1024;
      *v20 = 250;
      *&v20[4] = 2112;
      *&v20[6] = _ownTypeAsString;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set uint64 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v17, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:6 isGet:0];
  }

  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v15 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    *v20 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v13, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v17, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setStringValue:(id)value
{
  v21 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([(WAField *)self type]== 8)
  {
    if (![(WAField *)self isRepeatable])
    {
      objc_storeStrong(&self->_value, value);
      goto LABEL_4;
    }

    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField setStringValue:]";
      v17 = 1024;
      *v18 = 271;
      *&v18[4] = 2112;
      *&v18[6] = valueCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%@) on a repeatable field (%@). Ignored.", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:8];
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v9 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField setStringValue:]";
      v17 = 1024;
      *v18 = 270;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set string value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:8 isGet:0];
  }

  v12 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v15, 0x16u);
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setBytesValue:(id)value
{
  v21 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([(WAField *)self type]== 9)
  {
    if (![(WAField *)self isRepeatable])
    {
      objc_storeStrong(&self->_value, value);
      goto LABEL_4;
    }

    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField setBytesValue:]";
      v17 = 1024;
      *v18 = 281;
      *&v18[4] = 2112;
      *&v18[6] = valueCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%@) on a repeatable field (%@). Ignored.", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:9];
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v9 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField setBytesValue:]";
      v17 = 1024;
      *v18 = 280;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set bytes value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:9 isGet:0];
  }

  v12 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v15, 0x16u);
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSubMessageValue:(id)value
{
  v21 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([(WAField *)self type]== 10)
  {
    if (![(WAField *)self isRepeatable])
    {
      objc_storeStrong(&self->_value, value);
      goto LABEL_4;
    }

    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField setSubMessageValue:]";
      v17 = 1024;
      *v18 = 291;
      *&v18[4] = 2112;
      *&v18[6] = valueCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%@) on a repeatable field (%@). Ignored.", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:10];
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v9 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField setSubMessageValue:]";
      v17 = 1024;
      *v18 = 290;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set submessage value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v15, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:10 isGet:0];
  }

  v12 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v13 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v15, 0x16u);
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setRepeatableValues:(id)values
{
  v15 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  if ([(WAField *)self isRepeatable])
  {
    objc_storeStrong(&self->_value, values);
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "[WAField setRepeatableValues:]";
      v13 = 1024;
      LODWORD(v14) = 300;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set to set repeatable values on a field that's not repeatable. Ignored", &v11, 0x12u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:1 isGet:0 forType:0];
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [(WAField *)self key];
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = _ownTypeAsString;
      _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v11, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addRepeatableDoubleValue:(double)value
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 1)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    [(WAField *)self _addRepeatableValue:?];
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      *buf = 136446978;
      v15 = "[WAField addRepeatableDoubleValue:]";
      v16 = 1024;
      *v17 = 309;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable double value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      *v17 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)addRepeatableFloatValue:(float)value
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 2)
  {
    *&v5 = value;
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [(WAField *)self _addRepeatableValue:?];
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v9 = [(WAField *)self key];
      *buf = 136446978;
      v16 = "[WAField addRepeatableFloatValue:]";
      v17 = 1024;
      *v18 = 318;
      *&v18[4] = 2112;
      *&v18[6] = _ownTypeAsString;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable float value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      *v18 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (void)addRepeatableInt64Value:(int64_t)value
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 4)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:value];
    [(WAField *)self _addRepeatableValue:?];
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      *buf = 136446978;
      v15 = "[WAField addRepeatableInt64Value:]";
      v16 = 1024;
      *v17 = 336;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable int64 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      *v17 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)addRepeatableUInt64Value:(unint64_t)value
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 6)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:value];
    [(WAField *)self _addRepeatableValue:?];
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      *buf = 136446978;
      v15 = "[WAField addRepeatableUInt64Value:]";
      v16 = 1024;
      *v17 = 354;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable uint64 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      *v17 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)addRepeatableString:(id)string
{
  v18 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
  {
    if ([(WAField *)self type]== 8)
    {
      [(WAField *)self _addRepeatableValue:stringCopy];
      goto LABEL_4;
    }

    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v12 = 136446978;
      v13 = "[WAField addRepeatableString:]";
      v14 = 1024;
      *v15 = 373;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable string value on a WAField instance that's not of that type (type is %@). Set was ignored . Field key: %@", &v12, 0x26u);

      goto LABEL_9;
    }
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self key];
      v12 = 136446722;
      v13 = "[WAField addRepeatableString:]";
      v14 = 1024;
      *v15 = 372;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add nil string value - preventing crash by bailing but DATA LOSS HAS LIKELY OCCURRED as the caller meant to add something. Field key: %@", &v12, 0x1Cu);
LABEL_9:
    }
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    *v15 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v12, 0x16u);
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addRepeatableBytes:(id)bytes
{
  v18 = *MEMORY[0x1E69E9840];
  bytesCopy = bytes;
  if (bytesCopy)
  {
    if ([(WAField *)self type]== 9)
    {
      [(WAField *)self _addRepeatableValue:bytesCopy];
      goto LABEL_4;
    }

    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v12 = 136446978;
      v13 = "[WAField addRepeatableBytes:]";
      v14 = 1024;
      *v15 = 383;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable bytes value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v12, 0x26u);

      goto LABEL_9;
    }
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self key];
      v12 = 136446722;
      v13 = "[WAField addRepeatableBytes:]";
      v14 = 1024;
      *v15 = 382;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add nil bytes value - preventing crash by bailing but DATA LOSS HAS LIKELY OCCURRED as the caller meant to add something. Field key: %@", &v12, 0x1Cu);
LABEL_9:
    }
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    *v15 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v12, 0x16u);
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addRepeatableSubMessageValue:(id)value
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (valueCopy)
  {
    if ([(WAField *)self type]== 10)
    {
      [(WAField *)self _addRepeatableValue:valueCopy];
      goto LABEL_4;
    }

    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v12 = 136446978;
      v13 = "[WAField addRepeatableSubMessageValue:]";
      v14 = 1024;
      *v15 = 393;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable submessage value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v12, 0x26u);

      goto LABEL_9;
    }
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self key];
      v12 = 136446722;
      v13 = "[WAField addRepeatableSubMessageValue:]";
      v14 = 1024;
      *v15 = 392;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add nil submessage value - preventing crash by bailing but DATA LOSS HAS LIKELY OCCURRED as the caller meant to add something. Field key: %@", &v12, 0x1Cu);
LABEL_9:
    }
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    *v15 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v12, 0x16u);
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_addRepeatableValue:(id)value
{
  *&v16[13] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([(WAField *)self isRepeatable])
  {
    if (!self->_value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      value = self->_value;
      self->_value = v5;
    }

    [self->_value addObject:valueCopy];
  }

  else
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(WAField *)self key];
      v13 = 136446722;
      v14 = "[WAField _addRepeatableValue:]";
      v15 = 1024;
      *v16 = 402;
      v16[2] = 2112;
      *&v16[3] = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable values to a field that's not repeatable. This action was ignored. Key: %@", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:1 isGet:0 forType:0];
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = [(WAField *)self key];
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      *v16 = _ownTypeAsString;
      _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v13, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (WAField)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Please use the init defined in the header for this class" userInfo:0];
  objc_exception_throw(v2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = MEMORY[0x1E696ACD0];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v23 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v23];
  v15 = v23;
  v22 = v15;
  v16 = [v21 unarchivedObjectOfClasses:v13 fromData:v14 error:&v22];
  v17 = v22;

  if (v17)
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "[WAField copyWithZone:]";
      v26 = 1024;
      v27 = 420;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:WAMessageAWD copyWithZone failed, unarchive/archive error: %@", buf, 0x1Cu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
  [coderCopy encodeBool:self->_isRepeatable forKey:@"_isRepeatable"];
  [coderCopy encodeObject:self->_key forKey:@"_key"];
  typeInfoForRepeatableSubmessage = self->_typeInfoForRepeatableSubmessage;
  if (typeInfoForRepeatableSubmessage)
  {
    [coderCopy encodeObject:typeInfoForRepeatableSubmessage forKey:@"_typeInfoForRepeatableSubmessage"];
  }

  value = self->_value;
  if (value)
  {
    [coderCopy encodeObject:value forKey:@"_value"];
  }
}

- (WAField)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = WAField;
  v5 = [(WAField *)&v26 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v5->_isRepeatable = [coderCopy decodeBoolForKey:@"_isRepeatable"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_typeInfoForRepeatableSubmessage"];
    typeInfoForRepeatableSubmessage = v5->_typeInfoForRepeatableSubmessage;
    v5->_typeInfoForRepeatableSubmessage = v8;

    if (v5->_isRepeatable)
    {
      v25 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = [v25 setWithObjects:{v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
      v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"_value"];
      value = v5->_value;
      v5->_value = v19;

LABEL_7:
      goto LABEL_8;
    }

    type = [(WAField *)v5 type];
    if (type > 7)
    {
      if (type == 8 || type == 9 || type == 10)
      {
        goto LABEL_6;
      }
    }

    else if ((type - 1) < 7)
    {
LABEL_6:
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_value"];
      v18 = v5->_value;
      v5->_value = v22;
      goto LABEL_7;
    }

    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "[WAField initWithCoder:]";
      v29 = 1024;
      v30 = 472;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: unexpected type", buf, 0x12u);
    }

    goto LABEL_7;
  }

LABEL_8:

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v94 = *MEMORY[0x1E69E9840];
  if (![(WAField *)self type])
  {
    v62 = @"No type, likely not initialized";
    goto LABEL_91;
  }

  string = [MEMORY[0x1E696AD60] string];
  v4 = [(WAField *)self key];
  _ownTypeAsString = [(WAField *)self _ownTypeAsString];
  [string appendFormat:@"%@ - %@: ", v4, _ownTypeAsString];

  if ([(WAField *)self isRepeatable])
  {
    repeatableValues = [(WAField *)self repeatableValues];
    v7 = [repeatableValues count];

    if (v7)
    {
      v8 = @"[\r";
    }

    else
    {
      v8 = @"[]";
    }

    [string appendString:v8];
  }

  for (i = 0; ; ++i)
  {
    if ([(WAField *)self isRepeatable])
    {
      repeatableValues2 = [(WAField *)self repeatableValues];
      v11 = [repeatableValues2 count];

      v12 = v11 >= 10 ? 10 : v11;
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    isRepeatable = [(WAField *)self isRepeatable];
    if (i >= v13)
    {
      break;
    }

    if (isRepeatable)
    {
      [string appendString:@"          "];
    }

    type = [(WAField *)self type];
    if (type > 5)
    {
      if (type > 7)
      {
        switch(type)
        {
          case 8:
            v43 = MEMORY[0x1E696AEC0];
            isRepeatable2 = [(WAField *)self isRepeatable];
            if (isRepeatable2)
            {
              repeatableValues3 = [(WAField *)self repeatableValues];
              stringValue = [repeatableValues3 objectAtIndexedSubscript:i];
              v68 = stringValue;
            }

            else
            {
              stringValue = [(WAField *)self stringValue];
              v71 = stringValue;
            }

            v55 = [v43 stringWithFormat:@"%@", stringValue];
            [string appendString:v55];

            if (isRepeatable2)
            {

              v27 = repeatableValues3;
            }

            else
            {
              v27 = v71;
            }

            break;
          case 9:
            v49 = MEMORY[0x1E696AEC0];
            isRepeatable3 = [(WAField *)self isRepeatable];
            if (isRepeatable3)
            {
              repeatableValues4 = [(WAField *)self repeatableValues];
              bytesValue = [repeatableValues4 objectAtIndexedSubscript:i];
              v66 = bytesValue;
            }

            else
            {
              bytesValue = [(WAField *)self bytesValue];
              v69 = bytesValue;
            }

            v59 = [v49 stringWithFormat:@"%@", bytesValue];
            [string appendString:v59];

            if (isRepeatable3)
            {

              v27 = repeatableValues4;
            }

            else
            {
              v27 = v69;
            }

            break;
          case 10:
            v19 = MEMORY[0x1E696AEC0];
            isRepeatable4 = [(WAField *)self isRepeatable];
            if (isRepeatable4)
            {
              repeatableValues5 = [(WAField *)self repeatableValues];
              subMessageValue = [repeatableValues5 objectAtIndexedSubscript:i];
              v65 = subMessageValue;
            }

            else
            {
              subMessageValue = [(WAField *)self subMessageValue];
              v67 = subMessageValue;
            }

            v57 = [v19 stringWithFormat:@"%@", subMessageValue];
            [string appendString:v57];

            if (isRepeatable4)
            {

              v27 = repeatableValues5;
            }

            else
            {
              v27 = v67;
            }

            break;
          default:
LABEL_54:
            v27 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              type2 = [(WAField *)self type];
              *buf = 136446722;
              v89 = "[WAField description]";
              v90 = 1024;
              v91 = 542;
              v92 = 2048;
              v93 = type2;
              _os_log_impl(&dword_1C8460000, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: Unhandled type: %ld", buf, 0x1Cu);
            }

            break;
        }

LABEL_80:

        goto LABEL_81;
      }

      if (type == 6)
      {
        v37 = MEMORY[0x1E696AEC0];
        isRepeatable5 = [(WAField *)self isRepeatable];
        if (isRepeatable5)
        {
          repeatableValues6 = [(WAField *)self repeatableValues];
          v73 = [repeatableValues6 objectAtIndexedSubscript:i];
          unsignedLongLongValue = [v73 unsignedLongLongValue];
        }

        else
        {
          unsignedLongLongValue = [(WAField *)self uint64Value];
        }

        v53 = [v37 stringWithFormat:@"%llu", unsignedLongLongValue];
        [string appendString:v53];

        if (isRepeatable5)
        {

          v27 = repeatableValues6;
          goto LABEL_80;
        }
      }

      else
      {
        v28 = MEMORY[0x1E696AEC0];
        isRepeatable6 = [(WAField *)self isRepeatable];
        selfCopy = self;
        if (isRepeatable6)
        {
          repeatableValues7 = [(WAField *)self repeatableValues];
          selfCopy = [repeatableValues7 objectAtIndexedSubscript:i];
          v70 = selfCopy;
        }

        v31 = [v28 stringWithFormat:@"%d", objc_msgSend(selfCopy, "BOOLValue")];
        [string appendString:v31];

        if (isRepeatable6)
        {

          v27 = repeatableValues7;
          goto LABEL_80;
        }
      }
    }

    else if (type <= 2)
    {
      if (type == 1)
      {
        v32 = MEMORY[0x1E696AEC0];
        isRepeatable7 = [(WAField *)self isRepeatable];
        selfCopy2 = self;
        if (isRepeatable7)
        {
          repeatableValues8 = [(WAField *)self repeatableValues];
          selfCopy2 = [repeatableValues8 objectAtIndexedSubscript:i];
          v81 = selfCopy2;
        }

        [selfCopy2 doubleValue];
        v36 = [v32 stringWithFormat:@"%f", v35];
        [string appendString:v36];

        if (isRepeatable7)
        {

          v27 = repeatableValues8;
          goto LABEL_80;
        }
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_54;
        }

        v22 = MEMORY[0x1E696AEC0];
        isRepeatable8 = [(WAField *)self isRepeatable];
        selfCopy3 = self;
        if (isRepeatable8)
        {
          repeatableValues9 = [(WAField *)self repeatableValues];
          selfCopy3 = [repeatableValues9 objectAtIndexedSubscript:i];
          v78 = selfCopy3;
        }

        [selfCopy3 floatValue];
        v26 = [v22 stringWithFormat:@"%f", v25];
        [string appendString:v26];

        if (isRepeatable8)
        {

          v27 = repeatableValues9;
          goto LABEL_80;
        }
      }
    }

    else if (type == 3)
    {
      v40 = MEMORY[0x1E696AEC0];
      isRepeatable9 = [(WAField *)self isRepeatable];
      if (isRepeatable9)
      {
        repeatableValues10 = [(WAField *)self repeatableValues];
        v80 = [repeatableValues10 objectAtIndexedSubscript:i];
        intValue = [v80 intValue];
      }

      else
      {
        intValue = [(WAField *)self int32Value];
      }

      v54 = [v40 stringWithFormat:@"%d", intValue];
      [string appendString:v54];

      if (isRepeatable9)
      {

        v27 = repeatableValues10;
        goto LABEL_80;
      }
    }

    else if (type == 4)
    {
      v46 = MEMORY[0x1E696AEC0];
      isRepeatable10 = [(WAField *)self isRepeatable];
      if (isRepeatable10)
      {
        repeatableValues11 = [(WAField *)self repeatableValues];
        v77 = [repeatableValues11 objectAtIndexedSubscript:i];
        intValue2 = [v77 intValue];
      }

      else
      {
        intValue2 = [(WAField *)self int64Value];
      }

      v58 = [v46 stringWithFormat:@"%lld", intValue2];
      [string appendString:v58];

      if (isRepeatable10)
      {

        v27 = repeatableValues11;
        goto LABEL_80;
      }
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      isRepeatable11 = [(WAField *)self isRepeatable];
      if (isRepeatable11)
      {
        repeatableValues12 = [(WAField *)self repeatableValues];
        v75 = [repeatableValues12 objectAtIndexedSubscript:i];
        unsignedIntValue = [v75 unsignedIntValue];
      }

      else
      {
        unsignedIntValue = [(WAField *)self uint32Value];
      }

      v56 = [v16 stringWithFormat:@"%u", unsignedIntValue];
      [string appendString:v56];

      if (isRepeatable11)
      {

        v27 = repeatableValues12;
        goto LABEL_80;
      }
    }

LABEL_81:
    if ([(WAField *)self isRepeatable])
    {
      [string appendString:{@", \r"}];
    }

    if (i == 9)
    {
      [string appendString:@"          ...\r"];
    }
  }

  if (isRepeatable)
  {
    repeatableValues13 = [(WAField *)self repeatableValues];
    v61 = [repeatableValues13 count];

    if (v61)
    {
      [string appendString:@"     ]"];
    }
  }

  v62 = [MEMORY[0x1E696AEC0] stringWithString:string];

LABEL_91:
  v63 = *MEMORY[0x1E69E9840];

  return v62;
}

- (id)_typeAsString:(int64_t)string
{
  v28 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  if (string <= 4)
  {
    if (string > 1)
    {
      if (string == 2)
      {
        v6 = @"float";
      }

      else if (string == 3)
      {
        v6 = @"int32";
      }

      else
      {
        v6 = @"int64";
      }

      goto LABEL_28;
    }

    if (string)
    {
      if (string != 1)
      {
LABEL_25:
        v8 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v23 = "[WAField _typeAsString:]";
          v24 = 1024;
          v25 = 600;
          v26 = 2048;
          type = [(WAField *)self type];
          _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: Unhandled type: %ld", buf, 0x1Cu);
        }

        v6 = @"[UNDETERMINED TYPE]";
        goto LABEL_28;
      }

      v6 = @"double";
    }

    else
    {
      v6 = @"[NO TYPE INFO]";
    }
  }

  else
  {
    if (string <= 7)
    {
      if (string == 5)
      {
        v6 = @"uint32";
      }

      else if (string == 6)
      {
        v6 = @"uint64";
      }

      else
      {
        v6 = @"BOOL";
      }

      goto LABEL_28;
    }

    switch(string)
    {
      case 8:
        v6 = @"string";
        break;
      case 9:
        v6 = @"bytes";
        break;
      case 10:
        if ([(WAField *)self isRepeatable])
        {
          v7 = [(NSString *)self->_typeInfoForRepeatableSubmessage componentsSeparatedByString:@"^^"];
        }

        else
        {
          v7 = 0;
        }

        if ([(WAField *)self isRepeatable])
        {
          repeatableValues = [(WAField *)self repeatableValues];
          firstObject = [repeatableValues firstObject];
          v13 = MEMORY[0x1E696AEC0];
          if (firstObject)
          {
            repeatableValues2 = [(WAField *)self repeatableValues];
            firstObject2 = [repeatableValues2 firstObject];
            repeatableValues4 = [firstObject2 key];
            repeatableValues3 = [(WAField *)self repeatableValues];
            [v13 stringWithFormat:@"Repeatable submessage with key: %@, count: %lu", repeatableValues4, objc_msgSend(repeatableValues3, "count"), v21];
          }

          else
          {
            repeatableValues2 = [v7 objectAtIndexedSubscript:0];
            firstObject2 = [v7 objectAtIndexedSubscript:1];
            repeatableValues4 = [(WAField *)self repeatableValues];
            repeatableValues3 = [repeatableValues4 firstObject];
            [v13 stringWithFormat:@"Repeatable submessage, key: %@ original classname: %@ first instance: %@", repeatableValues2, firstObject2, repeatableValues3];
          }
          v20 = ;
          [string appendFormat:@"%@", v20];
        }

        else
        {
          subMessageValue = [(WAField *)self subMessageValue];
          v19 = [subMessageValue key];
          [string appendFormat:@"%@", v19];
        }

        goto LABEL_29;
      default:
        goto LABEL_25;
    }
  }

LABEL_28:
  [string appendString:v6];
LABEL_29:
  v9 = *MEMORY[0x1E69E9840];

  return string;
}

- (id)_ownTypeAsString
{
  type = [(WAField *)self type];

  return [(WAField *)self _typeAsString:type];
}

- (void)_throwIncorrecTypeExceptionForType:(int64_t)type isGet:(BOOL)get
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  if (get)
  {
    v8 = @"GET";
  }

  else
  {
    v8 = @"SET";
  }

  v9 = [(WAField *)self _typeAsString:type];
  _ownTypeAsString = [(WAField *)self _ownTypeAsString];
  v11 = [(WAField *)self key];
  v12 = [v7 stringWithFormat:@"Attempt to %@ %@ value on a field that's a %@. Field Key: %@", v8, v9, _ownTypeAsString, v11];
  v13 = [v5 exceptionWithName:v6 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:(BOOL)repeatable isGet:(BOOL)get forType:(int64_t)type
{
  repeatableCopy = repeatable;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = MEMORY[0x1E696AEC0];
  if (get)
  {
    v10 = @"GET";
  }

  else
  {
    v10 = @"SET";
  }

  v11 = [(WAField *)self _typeAsString:type];
  v12 = [(WAField *)self key];
  v13 = v12;
  if (repeatableCopy)
  {
    [v9 stringWithFormat:@"Attempt to %@ a single value on a field that holds repeatable values. Type: %@ field key: %@", v10, v11, v12];
  }

  else
  {
    [v9 stringWithFormat:@"Attempt to %@ a repeatable value on a field that should contain a single value. Type: %@ field key: %@", v10, v11, v12];
  }
  v14 = ;
  v15 = [v7 exceptionWithName:v8 reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

@end