@interface PFSQLiteColumn
+ (PFSQLiteColumn)columnWithName:(id)a3 type:(unint64_t)a4 attributes:(unint64_t)a5 valueTransformer:(id)a6;
+ (id)ISO8601DateColumnNamed:(id)a3 attributes:(unint64_t)a4;
+ (id)NSCodingColumnNamed:(id)a3 attributes:(unint64_t)a4 expectedClass:(Class)a5;
+ (id)UUIDColumnNamed:(id)a3 attributes:(unint64_t)a4;
+ (id)blobColumnNamed:(id)a3 attributes:(unint64_t)a4;
+ (id)dateColumnNamed:(id)a3 attributes:(unint64_t)a4 dateFormatter:(id)a5;
+ (id)integerColumnNamed:(id)a3 attributes:(unint64_t)a4;
+ (id)realColumnNamed:(id)a3 attributes:(unint64_t)a4;
+ (id)textColumnNamed:(id)a3 attributes:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (Class)expectedValueClass;
- (NSString)description;
- (PFSQLiteColumn)initWithColumnName:(id)a3 type:(unint64_t)a4 attributes:(unint64_t)a5 valueTransformer:(id)a6;
- (id)pf_toSQLWithBindings:(unint64_t *)a3;
- (void)description;
@end

@implementation PFSQLiteColumn

+ (PFSQLiteColumn)columnWithName:(id)a3 type:(unint64_t)a4 attributes:(unint64_t)a5 valueTransformer:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = [[PFSQLiteColumn alloc] initWithColumnName:v10 type:a4 attributes:a5 valueTransformer:v9];

  return v11;
}

- (PFSQLiteColumn)initWithColumnName:(id)a3 type:(unint64_t)a4 attributes:(unint64_t)a5 valueTransformer:(id)a6
{
  v11 = a3;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = PFSQLiteColumn;
  v13 = [(PFSQLiteColumn *)&v25 init];
  if (v13)
  {
    v14 = [v11 copy];
    name = v13->_name;
    v13->_name = v14;

    v13->_type = a4;
    v13->_attributes = a5;
    objc_storeStrong(&v13->_valueTransformer, a6);
    valueTransformer = v13->_valueTransformer;
    v17 = [objc_opt_class() transformedValueClass];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __70__PFSQLiteColumn_initWithColumnName_type_attributes_valueTransformer___block_invoke;
    v24[3] = &__block_descriptor_40_e5__8__0l;
    v24[4] = a4;
    if (v17 != __70__PFSQLiteColumn_initWithColumnName_type_attributes_valueTransformer___block_invoke(v24))
    {
      [PFSQLiteColumn initWithColumnName:a2 type:v13 attributes:? valueTransformer:?];
    }

    v18 = [MEMORY[0x1E698E6B8] builder];
    v19 = [v18 appendInteger:v13->_attributes];
    v20 = [v18 appendInteger:v13->_type];
    v21 = [v18 appendString:v13->_name];
    v22 = [v18 appendPointer:v12];
    v13->_cachedHash = [v18 hash];
  }

  return v13;
}

void *__70__PFSQLiteColumn_initWithColumnName_type_attributes_valueTransformer___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 <= 5)
  {
    v3 = **(&unk_1E81896E8 + v2);
    a1 = objc_opt_class();
  }

  return a1;
}

- (Class)expectedValueClass
{
  type = self->_type;
  if (type > 2)
  {
    if (type == 3 || type == 4 || type == 5)
    {
LABEL_9:
      self = objc_opt_class();
    }
  }

  else
  {
    if ((type - 1) < 2)
    {
      self = objc_opt_self();
      goto LABEL_10;
    }

    if (!type)
    {
      goto LABEL_9;
    }
  }

LABEL_10:

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PFSQLiteColumn *)v5 name];
      v7 = [(PFSQLiteColumn *)self name];
      if ([v6 isEqualToString:v7] && (v8 = -[PFSQLiteColumn type](v5, "type"), v8 == -[PFSQLiteColumn type](self, "type")))
      {
        v9 = [(PFSQLiteColumn *)v5 attributes];
        v10 = v9 == [(PFSQLiteColumn *)self attributes];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_name withName:@"name"];
  v4 = self->_type - 1;
  if (v4 >= 5)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown PFSQLiteColumnType"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(PFSQLiteColumn *)v16 description];
    }

    [v16 UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  else
  {
    [v3 appendString:off_1E8189718[v4] withName:@"name"];
    attributes = self->_attributes;
    if (attributes)
    {
      v6 = objc_opt_new();
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __NSStringFromPFSQLiteColumnAttributes_block_invoke;
      v20 = &unk_1E81896C8;
      v7 = v6;
      v21 = v7;
      v8 = &v17;
      v9 = 0;
      v22 = 0;
      v10 = vcnt_s8(attributes);
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v10.i32[0];
      do
      {
        if (((1 << v9) & attributes) != 0)
        {
          (v19)(v8);
          if (v22)
          {
            break;
          }

          --v11;
        }

        if (v9 > 0x3E)
        {
          break;
        }

        ++v9;
      }

      while (v11 > 0);

      v12 = [v7 componentsJoinedByString:{@"|", v17, v18}];
    }

    else
    {
      v12 = @"PFSQLColumnAttributeNone";
    }

    [v3 appendString:v12 withName:@"_attributes"];

    v13 = [v3 appendObject:self->_valueTransformer withName:@"_valueTransformer" skipIfNil:1];
    v14 = [v3 build];

    return v14;
  }

  return result;
}

- (id)pf_toSQLWithBindings:(unint64_t *)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(PFSQLiteColumn *)self name];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__PFSQLiteColumn_pf_toSQLWithBindings___block_invoke;
  v12[3] = &unk_1E8189660;
  v12[4] = self;
  v12[5] = a2;
  v7 = __39__PFSQLiteColumn_pf_toSQLWithBindings___block_invoke(v12);
  v8 = [v5 stringWithFormat:@"'%@' %@", v6, v7];

  if ([(PFSQLiteColumn *)self isPrimaryKey])
  {
    v9 = [v8 stringByAppendingString:@" PRIMARY KEY"];

    v8 = v9;
  }

  if ([(PFSQLiteColumn *)self isNonnull])
  {
    v10 = [v8 stringByAppendingString:@" NOT NULL"];

    v8 = v10;
  }

  return v8;
}

__CFString *__39__PFSQLiteColumn_pf_toSQLWithBindings___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) type];
  if ((v3 - 1) < 4)
  {
    return off_1E8189740[v3 - 1];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SQLite column type %lu not supported", objc_msgSend(*v2, "type")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __39__PFSQLiteColumn_pf_toSQLWithBindings___block_invoke_cold_1(a1, v2, v5);
  }

  [v5 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)dateColumnNamed:(id)a3 attributes:(unint64_t)a4 dateFormatter:(id)a5
{
  v8 = MEMORY[0x1E696B0A0];
  v9 = a3;
  v10 = [v8 pf_dateTransformerForDateFormatter:a5];
  v11 = [a1 columnWithName:v9 type:3 attributes:a4 valueTransformer:v10];

  return v11;
}

+ (id)integerColumnNamed:(id)a3 attributes:(unint64_t)a4
{
  v6 = MEMORY[0x1E696B0A0];
  v7 = a3;
  v8 = objc_opt_self();
  v9 = [v6 pf_identityTransformerForClass:v8];
  v10 = [a1 columnWithName:v7 type:1 attributes:a4 valueTransformer:v9];

  return v10;
}

+ (id)blobColumnNamed:(id)a3 attributes:(unint64_t)a4
{
  v6 = MEMORY[0x1E696B0A0];
  v7 = a3;
  v8 = objc_opt_self();
  v9 = [v6 pf_identityTransformerForClass:v8];
  v10 = [a1 columnWithName:v7 type:4 attributes:a4 valueTransformer:v9];

  return v10;
}

+ (id)ISO8601DateColumnNamed:(id)a3 attributes:(unint64_t)a4
{
  v6 = MEMORY[0x1E696B0A0];
  v7 = a3;
  v8 = [v6 pf_ISO8601DateTransformer];
  v9 = [a1 columnWithName:v7 type:3 attributes:a4 valueTransformer:v8];

  return v9;
}

+ (id)textColumnNamed:(id)a3 attributes:(unint64_t)a4
{
  v6 = MEMORY[0x1E696B0A0];
  v7 = a3;
  v8 = objc_opt_self();
  v9 = [v6 pf_identityTransformerForClass:v8];
  v10 = [a1 columnWithName:v7 type:3 attributes:a4 valueTransformer:v9];

  return v10;
}

+ (id)UUIDColumnNamed:(id)a3 attributes:(unint64_t)a4
{
  v6 = MEMORY[0x1E696B0A0];
  v7 = a3;
  v8 = [v6 pf_UUIDToNSStringTransformer];
  v9 = [a1 columnWithName:v7 type:3 attributes:a4 valueTransformer:v8];

  return v9;
}

+ (id)realColumnNamed:(id)a3 attributes:(unint64_t)a4
{
  v6 = MEMORY[0x1E696B0A0];
  v7 = a3;
  v8 = objc_opt_self();
  v9 = [v6 pf_identityTransformerForClass:v8];
  v10 = [a1 columnWithName:v7 type:2 attributes:a4 valueTransformer:v9];

  return v10;
}

+ (id)NSCodingColumnNamed:(id)a3 attributes:(unint64_t)a4 expectedClass:(Class)a5
{
  v8 = a3;
  v9 = [PFGenericValueTransformer alloc];
  v10 = objc_opt_self();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__PFSQLiteColumn_NSCodingColumnNamed_attributes_expectedClass___block_invoke_2;
  v14[3] = &__block_descriptor_40_e19__24__0__NSData_8_16lu32l8;
  v14[4] = a5;
  v11 = [(PFGenericValueTransformer *)v9 initWithTransformedValueClass:v10 transformer:&__block_literal_global_5 reverseValueClass:a5 reverseTransformer:v14];

  v12 = [a1 columnWithName:v8 type:4 attributes:a4 valueTransformer:v11];

  return v12;
}

- (void)initWithColumnName:(const char *)a1 type:(uint64_t)a2 attributes:valueTransformer:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"valueTransformerClass == classForType"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PFSQLiteColumn.m";
    v16 = 1024;
    v17 = 94;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)description
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *NSStringFromPFSQliteColumnType(PFSQLiteColumnType)"];
  v4 = 138544130;
  v5 = v2;
  v6 = 2114;
  v7 = @"PFSQLiteColumn.m";
  v8 = 1024;
  v9 = 28;
  v10 = 2114;
  v11 = a1;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v4, 0x26u);

  v3 = *MEMORY[0x1E69E9840];
}

void __39__PFSQLiteColumn_pf_toSQLWithBindings___block_invoke_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(*(a1 + 40));
  v6 = *a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *a2;
  v11 = 138544642;
  v12 = v5;
  v13 = 2114;
  v14 = v8;
  v15 = 2048;
  v16 = v9;
  v17 = 2114;
  v18 = @"PFSQLiteColumn.m";
  v19 = 1024;
  v20 = 174;
  v21 = 2114;
  v22 = a3;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);

  v10 = *MEMORY[0x1E69E9840];
}

@end