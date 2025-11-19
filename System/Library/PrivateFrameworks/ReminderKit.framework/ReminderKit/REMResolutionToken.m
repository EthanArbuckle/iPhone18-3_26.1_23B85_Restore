@interface REMResolutionToken
+ (id)resolutionTokenWithJSONObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (REMResolutionToken)init;
- (REMResolutionToken)initWithCoder:(id)a3;
- (REMResolutionToken)initWithCounter:(int64_t)a3 modificationTime:(double)a4 replicaID:(id)a5;
- (REMResolutionToken)initWithDefaultValue;
- (double)generateNonce;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)update;
@end

@implementation REMResolutionToken

- (REMResolutionToken)initWithCounter:(int64_t)a3 modificationTime:(double)a4 replicaID:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = REMResolutionToken;
  v9 = [(REMResolutionToken *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(REMResolutionToken *)v9 setCounter:a3];
    [(REMResolutionToken *)v10 setModificationTime:a4];
    [(REMResolutionToken *)v10 setReplicaID:v8];
  }

  return v10;
}

- (REMResolutionToken)init
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [(REMResolutionToken *)self initWithCounter:0 modificationTime:v4 replicaID:Current];

  return v5;
}

- (REMResolutionToken)initWithDefaultValue
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C6613346-F378-45AB-8DBD-57BE9AAFB009"];
  v4 = [(REMResolutionToken *)self initWithCounter:0 modificationTime:v3 replicaID:0.0];

  return v4;
}

- (REMResolutionToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"counter"];
  [v4 decodeDoubleForKey:@"modificationTime"];
  v7 = v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replicaID"];

  v9 = [(REMResolutionToken *)self initWithCounter:v5 modificationTime:v8 replicaID:v7];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMResolutionToken counter](self forKey:{"counter"), @"counter"}];
  [(REMResolutionToken *)self modificationTime];
  [v4 encodeDouble:@"modificationTime" forKey:?];
  v5 = [(REMResolutionToken *)self replicaID];
  [v4 encodeObject:v5 forKey:@"replicaID"];
}

- (void)update
{
  [(REMResolutionToken *)self setCounter:[(REMResolutionToken *)self counter]+ 1];
  Current = CFAbsoluteTimeGetCurrent();

  [(REMResolutionToken *)self setModificationTime:Current];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMResolutionToken alloc];
  v5 = [(REMResolutionToken *)self counter];
  [(REMResolutionToken *)self modificationTime];
  v7 = v6;
  v8 = [(REMResolutionToken *)self replicaID];
  v9 = [(REMResolutionToken *)v4 initWithCounter:v5 modificationTime:v8 replicaID:v7];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(REMResolutionToken *)self compare:v4]== 0;
  }

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(REMResolutionToken *)self counter];
  if (v5 == [v4 counter])
  {
    [(REMResolutionToken *)self modificationTime];
    v7 = v6;
    [v4 modificationTime];
    if (vabdd_f64(v7, v8) <= 2.22044605e-16)
    {
      v11 = [(REMResolutionToken *)self replicaID];
      v12 = [v4 replicaID];
      v9 = [v11 CR_compare:v12];
    }

    else if (v7 - v8 > 0.0)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v10 = [(REMResolutionToken *)self counter];
    if (v10 > [v4 counter])
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(REMResolutionToken *)self counter];
  [(REMResolutionToken *)self modificationTime];
  v6 = v5;
  v7 = [(REMResolutionToken *)self replicaID];
  v8 = [v7 UUIDString];
  v9 = [v3 stringWithFormat:@"<counter=%ld modificationTime=%lf replicaID=%@>", v4, v6, v8];

  return v9;
}

+ (id)resolutionTokenWithJSONObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 objectForKey:@"counter"];
  v6 = REMDynamicCast(v4, v5);

  v7 = objc_opt_class();
  v8 = [v3 objectForKey:@"modificationTime"];
  v9 = REMDynamicCast(v7, v8);

  v10 = objc_opt_class();
  v11 = [v3 objectForKey:@"replicaID"];
  v12 = REMDynamicCast(v10, v11);

  if (!v6 || !v9 || !v12 || (v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12]) == 0 || (v14 = v13, v15 = [REMResolutionToken alloc], v16 = objc_msgSend(v6, "integerValue"), objc_msgSend(v9, "doubleValue"), v17 = -[REMResolutionToken initWithCounter:modificationTime:replicaID:](v15, "initWithCounter:modificationTime:replicaID:", v16, v14), v14, !v17))
  {
    v18 = +[REMLogStore utility];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(REMResolutionToken *)v3 resolutionTokenWithJSONObject:v18];
    }

    v17 = 0;
  }

  return v17;
}

- (double)generateNonce
{
  v3 = [(REMResolutionToken *)self counter];
  [(REMResolutionToken *)self modificationTime];
  return v4 + v3 * 1.0e11;
}

+ (void)resolutionTokenWithJSONObject:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Can't construct REMResolutionToken from invalid JSON {jsonObject: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end