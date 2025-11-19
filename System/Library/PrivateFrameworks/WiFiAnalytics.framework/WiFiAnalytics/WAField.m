@interface WAField
- (BOOL)BOOLValue;
- (NSData)bytesValue;
- (NSMutableArray)repeatableValues;
- (NSString)stringValue;
- (WAField)init;
- (WAField)initWithCoder:(id)a3;
- (WAMessageAWD)subMessageValue;
- (double)doubleValue;
- (float)floatValue;
- (id)_ownTypeAsString;
- (id)_typeAsString:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)int32Value;
- (int64_t)int64Value;
- (unint64_t)uint64Value;
- (unsigned)uint32Value;
- (void)_addRepeatableValue:(id)a3;
- (void)_throwIncorrecTypeExceptionForType:(int64_t)a3 isGet:(BOOL)a4;
- (void)_throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:(BOOL)a3 isGet:(BOOL)a4 forType:(int64_t)a5;
- (void)addRepeatableBytes:(id)a3;
- (void)addRepeatableDoubleValue:(double)a3;
- (void)addRepeatableFloatValue:(float)a3;
- (void)addRepeatableInt64Value:(int64_t)a3;
- (void)addRepeatableString:(id)a3;
- (void)addRepeatableSubMessageValue:(id)a3;
- (void)addRepeatableUInt64Value:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBytesValue:(id)a3;
- (void)setDoubleValue:(double)a3;
- (void)setFloatValue:(float)a3;
- (void)setInt64Value:(int64_t)a3;
- (void)setRepeatableValues:(id)a3;
- (void)setStringValue:(id)a3;
- (void)setSubMessageValue:(id)a3;
- (void)setUint64Value:(unint64_t)a3;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField doubleValue]";
      v17 = 1024;
      *v18 = 112;
      *&v18[4] = 2112;
      *&v18[6] = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single double value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:1];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField doubleValue]";
      v17 = 1024;
      *v18 = 111;
      *&v18[4] = 2112;
      *&v18[6] = v7;
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
    v14 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = v14;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField floatValue]";
      v17 = 1024;
      *v18 = 121;
      *&v18[4] = 2112;
      *&v18[6] = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single float value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:2];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField floatValue]";
      v17 = 1024;
      *v18 = 120;
      *&v18[4] = 2112;
      *&v18[6] = v7;
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
    v14 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = v14;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField int32Value]";
      v17 = 1024;
      *v18 = 130;
      *&v18[4] = 2112;
      *&v18[6] = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single int32 value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:5];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField int32Value]";
      v17 = 1024;
      *v18 = 129;
      *&v18[4] = 2112;
      *&v18[6] = v7;
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
    v14 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = v14;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField int64Value]";
      v17 = 1024;
      *v18 = 139;
      *&v18[4] = 2112;
      *&v18[6] = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single int64 value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:4];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField int64Value]";
      v17 = 1024;
      *v18 = 138;
      *&v18[4] = 2112;
      *&v18[6] = v7;
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
    v14 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = v14;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField uint32Value]";
      v17 = 1024;
      *v18 = 148;
      *&v18[4] = 2112;
      *&v18[6] = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single uint32 value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:5];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField uint32Value]";
      v17 = 1024;
      *v18 = 147;
      *&v18[4] = 2112;
      *&v18[6] = v7;
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
    v14 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = v14;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField uint64Value]";
      v17 = 1024;
      *v18 = 157;
      *&v18[4] = 2112;
      *&v18[6] = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single uint64 value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:6];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField uint64Value]";
      v17 = 1024;
      *v18 = 156;
      *&v18[4] = 2112;
      *&v18[6] = v7;
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
    v14 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = v14;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v15 = 136446722;
      v16 = "[WAField BOOLValue]";
      v17 = 1024;
      *v18 = 166;
      *&v18[4] = 2112;
      *&v18[6] = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single BOOL value from a repeatable field (this field is a %@)", &v15, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:7];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField BOOLValue]";
      v17 = 1024;
      *v18 = 165;
      *&v18[4] = 2112;
      *&v18[6] = v7;
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
    v14 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = v14;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v14 = 136446722;
      v15 = "[WAField stringValue]";
      v16 = 1024;
      *v17 = 175;
      *&v17[4] = 2112;
      *&v17[6] = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single string value from a repeatable field (this field is a %@)", &v14, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:8];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField stringValue]";
      v16 = 1024;
      *v17 = 174;
      *&v17[4] = 2112;
      *&v17[6] = v7;
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
    v13 = [(WAField *)self _ownTypeAsString];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    *v17 = v13;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v14 = 136446722;
      v15 = "[WAField bytesValue]";
      v16 = 1024;
      *v17 = 184;
      *&v17[4] = 2112;
      *&v17[6] = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single bytes value from a repeatable field (this field is a %@)", &v14, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:9];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField bytesValue]";
      v16 = 1024;
      *v17 = 183;
      *&v17[4] = 2112;
      *&v17[6] = v7;
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
    v13 = [(WAField *)self _ownTypeAsString];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    *v17 = v13;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v14 = 136446722;
      v15 = "[WAField subMessageValue]";
      v16 = 1024;
      *v17 = 193;
      *&v17[4] = 2112;
      *&v17[6] = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single submessage value from a repeatable field (this field is a %@)", &v14, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:10];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField subMessageValue]";
      v16 = 1024;
      *v17 = 192;
      *&v17[4] = 2112;
      *&v17[6] = v7;
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
    v13 = [(WAField *)self _ownTypeAsString];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    *v17 = v13;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v14, 0x16u);
  }

  v3 = 0;
LABEL_4:
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setDoubleValue:(double)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 1)
  {
    if (![(WAField *)self isRepeatable])
    {
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
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
      *&v20[6] = a3;
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
      v9 = [(WAField *)self _ownTypeAsString];
      v10 = [(WAField *)self key];
      v17 = 136446978;
      v18 = "[WAField setDoubleValue:]";
      v19 = 1024;
      *v20 = 201;
      *&v20[4] = 2112;
      *&v20[6] = v9;
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
    v16 = [(WAField *)self _ownTypeAsString];
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    *v20 = v16;
    _os_log_fault_impl(&dword_1C8460000, v13, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v17, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setFloatValue:(float)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 2)
  {
    if (![(WAField *)self isRepeatable])
    {
      *&v5 = a3;
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
      *&v21[6] = a3;
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
      v10 = [(WAField *)self _ownTypeAsString];
      v11 = [(WAField *)self key];
      v18 = 136446978;
      v19 = "[WAField setFloatValue:]";
      v20 = 1024;
      *v21 = 211;
      *&v21[4] = 2112;
      *&v21[6] = v10;
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
    v17 = [(WAField *)self _ownTypeAsString];
    v18 = 138412546;
    v19 = v16;
    v20 = 2112;
    *v21 = v17;
    _os_log_fault_impl(&dword_1C8460000, v14, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v18, 0x16u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setInt64Value:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 4)
  {
    if (![(WAField *)self isRepeatable])
    {
      v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
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
      *&v20[6] = a3;
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
      v9 = [(WAField *)self _ownTypeAsString];
      v10 = [(WAField *)self key];
      v17 = 136446978;
      v18 = "[WAField setInt64Value:]";
      v19 = 1024;
      *v20 = 231;
      *&v20[4] = 2112;
      *&v20[6] = v9;
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
    v16 = [(WAField *)self _ownTypeAsString];
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    *v20 = v16;
    _os_log_fault_impl(&dword_1C8460000, v13, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v17, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setUint64Value:(unint64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 6)
  {
    if (![(WAField *)self isRepeatable])
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
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
      *&v20[6] = a3;
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
      v9 = [(WAField *)self _ownTypeAsString];
      v10 = [(WAField *)self key];
      v17 = 136446978;
      v18 = "[WAField setUint64Value:]";
      v19 = 1024;
      *v20 = 250;
      *&v20[4] = 2112;
      *&v20[6] = v9;
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
    v16 = [(WAField *)self _ownTypeAsString];
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    *v20 = v16;
    _os_log_fault_impl(&dword_1C8460000, v13, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v17, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setStringValue:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(WAField *)self type]== 8)
  {
    if (![(WAField *)self isRepeatable])
    {
      objc_storeStrong(&self->_value, a3);
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
      *&v18[6] = v5;
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
      v8 = [(WAField *)self _ownTypeAsString];
      v9 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField setStringValue:]";
      v17 = 1024;
      *v18 = 270;
      *&v18[4] = 2112;
      *&v18[6] = v8;
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
    v14 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = v14;
    _os_log_fault_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v15, 0x16u);
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setBytesValue:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(WAField *)self type]== 9)
  {
    if (![(WAField *)self isRepeatable])
    {
      objc_storeStrong(&self->_value, a3);
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
      *&v18[6] = v5;
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
      v8 = [(WAField *)self _ownTypeAsString];
      v9 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField setBytesValue:]";
      v17 = 1024;
      *v18 = 280;
      *&v18[4] = 2112;
      *&v18[6] = v8;
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
    v14 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = v14;
    _os_log_fault_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v15, 0x16u);
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSubMessageValue:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(WAField *)self type]== 10)
  {
    if (![(WAField *)self isRepeatable])
    {
      objc_storeStrong(&self->_value, a3);
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
      *&v18[6] = v5;
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
      v8 = [(WAField *)self _ownTypeAsString];
      v9 = [(WAField *)self key];
      v15 = 136446978;
      v16 = "[WAField setSubMessageValue:]";
      v17 = 1024;
      *v18 = 290;
      *&v18[4] = 2112;
      *&v18[6] = v8;
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
    v14 = [(WAField *)self _ownTypeAsString];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    *v18 = v14;
    _os_log_fault_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v15, 0x16u);
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setRepeatableValues:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(WAField *)self isRepeatable])
  {
    objc_storeStrong(&self->_value, a3);
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
      v10 = [(WAField *)self _ownTypeAsString];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v11, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addRepeatableDoubleValue:(double)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 1)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(WAField *)self _addRepeatableValue:?];
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      *buf = 136446978;
      v15 = "[WAField addRepeatableDoubleValue:]";
      v16 = 1024;
      *v17 = 309;
      *&v17[4] = 2112;
      *&v17[6] = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable double value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = [(WAField *)self key];
      v12 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      *v17 = v12;
      _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)addRepeatableFloatValue:(float)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 2)
  {
    *&v5 = a3;
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [(WAField *)self _addRepeatableValue:?];
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(WAField *)self _ownTypeAsString];
      v9 = [(WAField *)self key];
      *buf = 136446978;
      v16 = "[WAField addRepeatableFloatValue:]";
      v17 = 1024;
      *v18 = 318;
      *&v18[4] = 2112;
      *&v18[6] = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable float value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = [(WAField *)self key];
      v13 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      *v18 = v13;
      _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (void)addRepeatableInt64Value:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 4)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [(WAField *)self _addRepeatableValue:?];
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      *buf = 136446978;
      v15 = "[WAField addRepeatableInt64Value:]";
      v16 = 1024;
      *v17 = 336;
      *&v17[4] = 2112;
      *&v17[6] = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable int64 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = [(WAField *)self key];
      v12 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      *v17 = v12;
      _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)addRepeatableUInt64Value:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 6)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    [(WAField *)self _addRepeatableValue:?];
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      *buf = 136446978;
      v15 = "[WAField addRepeatableUInt64Value:]";
      v16 = 1024;
      *v17 = 354;
      *&v17[4] = 2112;
      *&v17[6] = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable uint64 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = [(WAField *)self key];
      v12 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      *v17 = v12;
      _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)addRepeatableString:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if ([(WAField *)self type]== 8)
    {
      [(WAField *)self _addRepeatableValue:v4];
      goto LABEL_4;
    }

    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v12 = 136446978;
      v13 = "[WAField addRepeatableString:]";
      v14 = 1024;
      *v15 = 373;
      *&v15[4] = 2112;
      *&v15[6] = v7;
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
      v7 = [(WAField *)self key];
      v12 = 136446722;
      v13 = "[WAField addRepeatableString:]";
      v14 = 1024;
      *v15 = 372;
      *&v15[4] = 2112;
      *&v15[6] = v7;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add nil string value - preventing crash by bailing but DATA LOSS HAS LIKELY OCCURRED as the caller meant to add something. Field key: %@", &v12, 0x1Cu);
LABEL_9:
    }
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = [(WAField *)self key];
    v11 = [(WAField *)self _ownTypeAsString];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    *v15 = v11;
    _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v12, 0x16u);
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addRepeatableBytes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if ([(WAField *)self type]== 9)
    {
      [(WAField *)self _addRepeatableValue:v4];
      goto LABEL_4;
    }

    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v12 = 136446978;
      v13 = "[WAField addRepeatableBytes:]";
      v14 = 1024;
      *v15 = 383;
      *&v15[4] = 2112;
      *&v15[6] = v7;
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
      v7 = [(WAField *)self key];
      v12 = 136446722;
      v13 = "[WAField addRepeatableBytes:]";
      v14 = 1024;
      *v15 = 382;
      *&v15[4] = 2112;
      *&v15[6] = v7;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add nil bytes value - preventing crash by bailing but DATA LOSS HAS LIKELY OCCURRED as the caller meant to add something. Field key: %@", &v12, 0x1Cu);
LABEL_9:
    }
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = [(WAField *)self key];
    v11 = [(WAField *)self _ownTypeAsString];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    *v15 = v11;
    _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v12, 0x16u);
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addRepeatableSubMessageValue:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if ([(WAField *)self type]== 10)
    {
      [(WAField *)self _addRepeatableValue:v4];
      goto LABEL_4;
    }

    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v12 = 136446978;
      v13 = "[WAField addRepeatableSubMessageValue:]";
      v14 = 1024;
      *v15 = 393;
      *&v15[4] = 2112;
      *&v15[6] = v7;
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
      v7 = [(WAField *)self key];
      v12 = 136446722;
      v13 = "[WAField addRepeatableSubMessageValue:]";
      v14 = 1024;
      *v15 = 392;
      *&v15[4] = 2112;
      *&v15[6] = v7;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add nil submessage value - preventing crash by bailing but DATA LOSS HAS LIKELY OCCURRED as the caller meant to add something. Field key: %@", &v12, 0x1Cu);
LABEL_9:
    }
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = [(WAField *)self key];
    v11 = [(WAField *)self _ownTypeAsString];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    *v15 = v11;
    _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v12, 0x16u);
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_addRepeatableValue:(id)a3
{
  *&v16[13] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(WAField *)self isRepeatable])
  {
    if (!self->_value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      value = self->_value;
      self->_value = v5;
    }

    [self->_value addObject:v4];
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
      v12 = [(WAField *)self _ownTypeAsString];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      *v16 = v12;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:self->_type forKey:@"_type"];
  [v6 encodeBool:self->_isRepeatable forKey:@"_isRepeatable"];
  [v6 encodeObject:self->_key forKey:@"_key"];
  typeInfoForRepeatableSubmessage = self->_typeInfoForRepeatableSubmessage;
  if (typeInfoForRepeatableSubmessage)
  {
    [v6 encodeObject:typeInfoForRepeatableSubmessage forKey:@"_typeInfoForRepeatableSubmessage"];
  }

  value = self->_value;
  if (value)
  {
    [v6 encodeObject:value forKey:@"_value"];
  }
}

- (WAField)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = WAField;
  v5 = [(WAField *)&v26 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v5->_isRepeatable = [v4 decodeBoolForKey:@"_isRepeatable"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_typeInfoForRepeatableSubmessage"];
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
      v19 = [v4 decodeObjectOfClasses:v18 forKey:@"_value"];
      value = v5->_value;
      v5->_value = v19;

LABEL_7:
      goto LABEL_8;
    }

    v21 = [(WAField *)v5 type];
    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9 || v21 == 10)
      {
        goto LABEL_6;
      }
    }

    else if ((v21 - 1) < 7)
    {
LABEL_6:
      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_value"];
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

  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(WAField *)self key];
  v5 = [(WAField *)self _ownTypeAsString];
  [v3 appendFormat:@"%@ - %@: ", v4, v5];

  if ([(WAField *)self isRepeatable])
  {
    v6 = [(WAField *)self repeatableValues];
    v7 = [v6 count];

    if (v7)
    {
      v8 = @"[\r";
    }

    else
    {
      v8 = @"[]";
    }

    [v3 appendString:v8];
  }

  for (i = 0; ; ++i)
  {
    if ([(WAField *)self isRepeatable])
    {
      v10 = [(WAField *)self repeatableValues];
      v11 = [v10 count];

      v12 = v11 >= 10 ? 10 : v11;
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    v14 = [(WAField *)self isRepeatable];
    if (i >= v13)
    {
      break;
    }

    if (v14)
    {
      [v3 appendString:@"          "];
    }

    v15 = [(WAField *)self type];
    if (v15 > 5)
    {
      if (v15 > 7)
      {
        switch(v15)
        {
          case 8:
            v43 = MEMORY[0x1E696AEC0];
            v44 = [(WAField *)self isRepeatable];
            if (v44)
            {
              v76 = [(WAField *)self repeatableValues];
              v45 = [v76 objectAtIndexedSubscript:i];
              v68 = v45;
            }

            else
            {
              v45 = [(WAField *)self stringValue];
              v71 = v45;
            }

            v55 = [v43 stringWithFormat:@"%@", v45];
            [v3 appendString:v55];

            if (v44)
            {

              v27 = v76;
            }

            else
            {
              v27 = v71;
            }

            break;
          case 9:
            v49 = MEMORY[0x1E696AEC0];
            v50 = [(WAField *)self isRepeatable];
            if (v50)
            {
              v74 = [(WAField *)self repeatableValues];
              v51 = [v74 objectAtIndexedSubscript:i];
              v66 = v51;
            }

            else
            {
              v51 = [(WAField *)self bytesValue];
              v69 = v51;
            }

            v59 = [v49 stringWithFormat:@"%@", v51];
            [v3 appendString:v59];

            if (v50)
            {

              v27 = v74;
            }

            else
            {
              v27 = v69;
            }

            break;
          case 10:
            v19 = MEMORY[0x1E696AEC0];
            v20 = [(WAField *)self isRepeatable];
            if (v20)
            {
              v72 = [(WAField *)self repeatableValues];
              v21 = [v72 objectAtIndexedSubscript:i];
              v65 = v21;
            }

            else
            {
              v21 = [(WAField *)self subMessageValue];
              v67 = v21;
            }

            v57 = [v19 stringWithFormat:@"%@", v21];
            [v3 appendString:v57];

            if (v20)
            {

              v27 = v72;
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
              v52 = [(WAField *)self type];
              *buf = 136446722;
              v89 = "[WAField description]";
              v90 = 1024;
              v91 = 542;
              v92 = 2048;
              v93 = v52;
              _os_log_impl(&dword_1C8460000, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: Unhandled type: %ld", buf, 0x1Cu);
            }

            break;
        }

LABEL_80:

        goto LABEL_81;
      }

      if (v15 == 6)
      {
        v37 = MEMORY[0x1E696AEC0];
        v38 = [(WAField *)self isRepeatable];
        if (v38)
        {
          v82 = [(WAField *)self repeatableValues];
          v73 = [v82 objectAtIndexedSubscript:i];
          v39 = [v73 unsignedLongLongValue];
        }

        else
        {
          v39 = [(WAField *)self uint64Value];
        }

        v53 = [v37 stringWithFormat:@"%llu", v39];
        [v3 appendString:v53];

        if (v38)
        {

          v27 = v82;
          goto LABEL_80;
        }
      }

      else
      {
        v28 = MEMORY[0x1E696AEC0];
        v29 = [(WAField *)self isRepeatable];
        v30 = self;
        if (v29)
        {
          v79 = [(WAField *)self repeatableValues];
          v30 = [v79 objectAtIndexedSubscript:i];
          v70 = v30;
        }

        v31 = [v28 stringWithFormat:@"%d", objc_msgSend(v30, "BOOLValue")];
        [v3 appendString:v31];

        if (v29)
        {

          v27 = v79;
          goto LABEL_80;
        }
      }
    }

    else if (v15 <= 2)
    {
      if (v15 == 1)
      {
        v32 = MEMORY[0x1E696AEC0];
        v33 = [(WAField *)self isRepeatable];
        v34 = self;
        if (v33)
        {
          v87 = [(WAField *)self repeatableValues];
          v34 = [v87 objectAtIndexedSubscript:i];
          v81 = v34;
        }

        [v34 doubleValue];
        v36 = [v32 stringWithFormat:@"%f", v35];
        [v3 appendString:v36];

        if (v33)
        {

          v27 = v87;
          goto LABEL_80;
        }
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_54;
        }

        v22 = MEMORY[0x1E696AEC0];
        v23 = [(WAField *)self isRepeatable];
        v24 = self;
        if (v23)
        {
          v86 = [(WAField *)self repeatableValues];
          v24 = [v86 objectAtIndexedSubscript:i];
          v78 = v24;
        }

        [v24 floatValue];
        v26 = [v22 stringWithFormat:@"%f", v25];
        [v3 appendString:v26];

        if (v23)
        {

          v27 = v86;
          goto LABEL_80;
        }
      }
    }

    else if (v15 == 3)
    {
      v40 = MEMORY[0x1E696AEC0];
      v41 = [(WAField *)self isRepeatable];
      if (v41)
      {
        v85 = [(WAField *)self repeatableValues];
        v80 = [v85 objectAtIndexedSubscript:i];
        v42 = [v80 intValue];
      }

      else
      {
        v42 = [(WAField *)self int32Value];
      }

      v54 = [v40 stringWithFormat:@"%d", v42];
      [v3 appendString:v54];

      if (v41)
      {

        v27 = v85;
        goto LABEL_80;
      }
    }

    else if (v15 == 4)
    {
      v46 = MEMORY[0x1E696AEC0];
      v47 = [(WAField *)self isRepeatable];
      if (v47)
      {
        v84 = [(WAField *)self repeatableValues];
        v77 = [v84 objectAtIndexedSubscript:i];
        v48 = [v77 intValue];
      }

      else
      {
        v48 = [(WAField *)self int64Value];
      }

      v58 = [v46 stringWithFormat:@"%lld", v48];
      [v3 appendString:v58];

      if (v47)
      {

        v27 = v84;
        goto LABEL_80;
      }
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [(WAField *)self isRepeatable];
      if (v17)
      {
        v83 = [(WAField *)self repeatableValues];
        v75 = [v83 objectAtIndexedSubscript:i];
        v18 = [v75 unsignedIntValue];
      }

      else
      {
        v18 = [(WAField *)self uint32Value];
      }

      v56 = [v16 stringWithFormat:@"%u", v18];
      [v3 appendString:v56];

      if (v17)
      {

        v27 = v83;
        goto LABEL_80;
      }
    }

LABEL_81:
    if ([(WAField *)self isRepeatable])
    {
      [v3 appendString:{@", \r"}];
    }

    if (i == 9)
    {
      [v3 appendString:@"          ...\r"];
    }
  }

  if (v14)
  {
    v60 = [(WAField *)self repeatableValues];
    v61 = [v60 count];

    if (v61)
    {
      [v3 appendString:@"     ]"];
    }
  }

  v62 = [MEMORY[0x1E696AEC0] stringWithString:v3];

LABEL_91:
  v63 = *MEMORY[0x1E69E9840];

  return v62;
}

- (id)_typeAsString:(int64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD60] string];
  if (a3 <= 4)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v6 = @"float";
      }

      else if (a3 == 3)
      {
        v6 = @"int32";
      }

      else
      {
        v6 = @"int64";
      }

      goto LABEL_28;
    }

    if (a3)
    {
      if (a3 != 1)
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
          v27 = [(WAField *)self type];
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
    if (a3 <= 7)
    {
      if (a3 == 5)
      {
        v6 = @"uint32";
      }

      else if (a3 == 6)
      {
        v6 = @"uint64";
      }

      else
      {
        v6 = @"BOOL";
      }

      goto LABEL_28;
    }

    switch(a3)
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
          v11 = [(WAField *)self repeatableValues];
          v12 = [v11 firstObject];
          v13 = MEMORY[0x1E696AEC0];
          if (v12)
          {
            v14 = [(WAField *)self repeatableValues];
            v15 = [v14 firstObject];
            v16 = [v15 key];
            v17 = [(WAField *)self repeatableValues];
            [v13 stringWithFormat:@"Repeatable submessage with key: %@, count: %lu", v16, objc_msgSend(v17, "count"), v21];
          }

          else
          {
            v14 = [v7 objectAtIndexedSubscript:0];
            v15 = [v7 objectAtIndexedSubscript:1];
            v16 = [(WAField *)self repeatableValues];
            v17 = [v16 firstObject];
            [v13 stringWithFormat:@"Repeatable submessage, key: %@ original classname: %@ first instance: %@", v14, v15, v17];
          }
          v20 = ;
          [v5 appendFormat:@"%@", v20];
        }

        else
        {
          v18 = [(WAField *)self subMessageValue];
          v19 = [v18 key];
          [v5 appendFormat:@"%@", v19];
        }

        goto LABEL_29;
      default:
        goto LABEL_25;
    }
  }

LABEL_28:
  [v5 appendString:v6];
LABEL_29:
  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_ownTypeAsString
{
  v3 = [(WAField *)self type];

  return [(WAField *)self _typeAsString:v3];
}

- (void)_throwIncorrecTypeExceptionForType:(int64_t)a3 isGet:(BOOL)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  if (a4)
  {
    v8 = @"GET";
  }

  else
  {
    v8 = @"SET";
  }

  v9 = [(WAField *)self _typeAsString:a3];
  v10 = [(WAField *)self _ownTypeAsString];
  v11 = [(WAField *)self key];
  v12 = [v7 stringWithFormat:@"Attempt to %@ %@ value on a field that's a %@. Field Key: %@", v8, v9, v10, v11];
  v13 = [v5 exceptionWithName:v6 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:(BOOL)a3 isGet:(BOOL)a4 forType:(int64_t)a5
{
  v5 = a3;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = MEMORY[0x1E696AEC0];
  if (a4)
  {
    v10 = @"GET";
  }

  else
  {
    v10 = @"SET";
  }

  v11 = [(WAField *)self _typeAsString:a5];
  v12 = [(WAField *)self key];
  v13 = v12;
  if (v5)
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