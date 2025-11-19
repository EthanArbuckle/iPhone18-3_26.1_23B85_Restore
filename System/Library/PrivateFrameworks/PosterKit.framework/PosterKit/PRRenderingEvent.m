@interface PRRenderingEvent
+ (id)_supportedMetadataClasses;
+ (id)allocWithZone:(_NSZone *)a3;
- (CGPoint)location;
- (PRRenderingEvent)initWithAction:(id)a3;
- (PRRenderingEvent)initWithBSXPCCoder:(id)a3;
- (PRRenderingEvent)initWithCoder:(id)a3;
- (PRRenderingEvent)initWithType:(id)a3 location:(CGPoint)a4 metadata:(id)a5;
- (id)newAction;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRRenderingEvent

+ (id)_supportedMetadataClasses
{
  if (_supportedMetadataClasses_onceToken != -1)
  {
    +[PRRenderingEvent _supportedMetadataClasses];
  }

  v3 = _supportedMetadataClasses_supportedMetadataClasses;

  return v3;
}

void __45__PRRenderingEvent__supportedMetadataClasses__block_invoke()
{
  v4[8] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:8];
  v2 = [v0 setWithArray:v1];
  v3 = _supportedMetadataClasses_supportedMetadataClasses;
  _supportedMetadataClasses_supportedMetadataClasses = v2;
}

- (PRRenderingEvent)initWithType:(id)a3 location:(CGPoint)a4 metadata:(id)a5
{
  y = a4.y;
  x = a4.x;
  v34[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v32.receiver = self;
  v32.super_class = PRRenderingEvent;
  v12 = [(PRRenderingEvent *)&v32 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, a3);
    v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v11 copyItems:1];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v13->_metadata, v16);

    v17 = [objc_opt_class() _supportedMetadataClasses];
    v18 = PFValidateDictionaryForClasses();
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if ((v18 & 1) == 0)
    {
      if (os_variant_has_internal_content())
      {
        v28 = MEMORY[0x1E695DF30];
        v33 = *MEMORY[0x1E696AA08];
        v34[0] = v21;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
        v30 = [v28 exceptionWithName:@"invalid metadata dictionary contents" reason:@"objects which are not supported by the metadata NSDictionary were specified" userInfo:v29];
        v31 = v30;

        objc_exception_throw(v30);
      }

      metadata = v13->_metadata;
      v23 = [v17 bs_array];
      v24 = [v17 bs_array];
      v25 = [(NSDictionary *)metadata pf_sanitizeWithAllowedKeyClasses:v23 allowedValueClasses:v24];
      v26 = v13->_metadata;
      v13->_metadata = v25;
    }

    v13->_location.x = x;
    v13->_location.y = y;
  }

  return v13;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() != a1)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"Subclassing %@ is not allowed.", v8}];
  }

  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___PRRenderingEvent;
  return objc_msgSendSuper2(&v10, sel_allocWithZone_, a3);
}

- (PRRenderingEvent)initWithAction:(id)a3
{
  v4 = a3;
  v5 = [v4 eventType];
  v6 = [v4 metadata];

  v7 = [(PRRenderingEvent *)self initWithType:v5 metadata:v6];
  return v7;
}

- (id)newAction
{
  v3 = [PRRenderingEventAction alloc];

  return [(PRRenderingEventAction *)v3 initWithEvent:self];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_type forKey:@"_type"];
  v4 = BSValueWithPoint();
  [v6 encodeObject:v4 forKey:@"_location"];

  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_metadata requiringSecureCoding:1 error:0];
  if (v5)
  {
    [v6 encodeObject:v5 forKey:@"_metadata"];
  }
}

- (PRRenderingEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _supportedMetadataClasses];
  v6 = objc_opt_self();
  v7 = [v4 decodeObjectOfClass:v6 forKey:@"_type"];

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"_location"];
  v10 = MEMORY[0x1AC573DD0]();
  v12 = v11;

  v13 = objc_opt_self();
  v14 = [v4 decodeObjectOfClass:v13 forKey:@"_metadata"];

  v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v5 fromData:v14 error:0];
  v16 = v15;
  v17 = MEMORY[0x1E695E0F8];
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [(PRRenderingEvent *)self initWithType:v7 location:v18 metadata:v10, v12];
  return v19;
}

- (PRRenderingEvent)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _supportedMetadataClasses];
  v6 = objc_opt_self();
  v7 = [v4 decodeObjectOfClass:v6 forKey:@"_type"];

  [v4 decodeCGPointForKey:@"_location"];
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v4 decodeObjectOfClass:v12 forKey:@"_metadata"];

  v14 = [v13 length];
  v15 = MEMORY[0x1E695E0F8];
  if (v14 && ((v22 = 0, [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v5 fromData:v13 error:&v22], v16 = objc_claimAutoreleasedReturnValue(), v17 = v22, v16) ? (v18 = v16) : (v18 = v15), v15 = v18, v16, v17))
  {
    v19 = PRLogModel();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(PRRenderingEvent *)v17 initWithBSXPCCoder:v19];
    }

    v20 = 0;
  }

  else
  {
    self = [(PRRenderingEvent *)self initWithType:v7 location:v15 metadata:v9, v11];
    v20 = self;
  }

  return v20;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_type forKey:@"_type"];
  [v4 encodeCGPoint:@"_location" forKey:{self->_location.x, self->_location.y}];
  metadata = self->_metadata;
  v9 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:metadata requiringSecureCoding:1 error:&v9];
  v7 = v9;
  if (v7)
  {
    v8 = PRLogModel();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(PRRenderingEvent *)v7 encodeWithBSXPCCoder:v8];
    }
  }

  if (v6)
  {
    [v4 encodeObject:v6 forKey:@"_metadata"];
  }
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithBSXPCCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_ERROR, "unable to deserialize PRRenderingEvent: %{public}@", &v2, 0xCu);
}

- (void)encodeWithBSXPCCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_FAULT, "unable to serialize PRRenderingEvent: %{public}@", &v2, 0xCu);
}

@end