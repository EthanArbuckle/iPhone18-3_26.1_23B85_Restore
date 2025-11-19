@interface ATXCustomIntentDescription
- (ATXCustomIntentDescription)initWithCoder:(id)a3;
- (ATXCustomIntentDescription)initWithTypeName:(id)a3 parameters:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)createIntent;
- (id)description;
- (void)createIntent;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXCustomIntentDescription

- (ATXCustomIntentDescription)initWithTypeName:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ATXCustomIntentDescription;
  v8 = [(ATXCustomIntentDescription *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    typeName = v8->_typeName;
    v8->_typeName = v9;

    v11 = [v7 copy];
    parameters = v8->_parameters;
    v8->_parameters = v11;

    v13 = v8;
  }

  return v8;
}

- (ATXCustomIntentDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typeName"];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 initWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"parameters"];

    self = [(ATXCustomIntentDescription *)self initWithTypeName:v5 parameters:v13];
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  typeName = self->_typeName;
  v5 = a3;
  [v5 encodeObject:typeName forKey:@"typeName"];
  [v5 encodeObject:self->_parameters forKey:@"parameters"];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Intent Type: %@ Parameters: %@", self->_typeName, self->_parameters];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_typeName;
      v7 = v6;
      if (v6 == v5->_typeName)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          v9 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      v10 = self->_parameters;
      v11 = v10;
      if (v10 == v5->_parameters)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSDictionary *)v10 isEqual:?];
      }

      goto LABEL_13;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (id)createIntent
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [*MEMORY[0x1E696EAF8] stringByAppendingString:self->_typeName];
  v5 = MEMORY[0x1E696ACB0];
  parameters = self->_parameters;
  v17 = @"parameters";
  v18[0] = parameters;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v16 = 0;
  v8 = [v5 dataWithJSONObject:v7 options:1 error:&v16];
  v9 = v16;

  if (v8)
  {
    v10 = [MEMORY[0x1E696E880] atx_createIntentWithIntentType:v4 intentData:v8];
    v11 = v10;
    if (v10)
    {
      v11 = v10;
      v12 = v11;
    }

    else
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ATXCustomIntentDescription *)v4 createIntent];
      }

      v12 = 0;
    }
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXCustomIntentDescription *)v4 createIntent];
    }

    v12 = 0;
  }

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)createIntent
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_ERROR, "Could not form JSON for intent of type %@ with error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end