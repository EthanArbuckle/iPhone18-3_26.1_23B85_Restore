@interface REMResolutionToken
+ (id)resolutionTokenWithJSONObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (REMResolutionToken)init;
- (REMResolutionToken)initWithCoder:(id)coder;
- (REMResolutionToken)initWithCounter:(int64_t)counter modificationTime:(double)time replicaID:(id)d;
- (REMResolutionToken)initWithDefaultValue;
- (double)generateNonce;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
- (void)update;
@end

@implementation REMResolutionToken

- (REMResolutionToken)initWithCounter:(int64_t)counter modificationTime:(double)time replicaID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = REMResolutionToken;
  v9 = [(REMResolutionToken *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(REMResolutionToken *)v9 setCounter:counter];
    [(REMResolutionToken *)v10 setModificationTime:time];
    [(REMResolutionToken *)v10 setReplicaID:dCopy];
  }

  return v10;
}

- (REMResolutionToken)init
{
  Current = CFAbsoluteTimeGetCurrent();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v5 = [(REMResolutionToken *)self initWithCounter:0 modificationTime:uUID replicaID:Current];

  return v5;
}

- (REMResolutionToken)initWithDefaultValue
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C6613346-F378-45AB-8DBD-57BE9AAFB009"];
  v4 = [(REMResolutionToken *)self initWithCounter:0 modificationTime:v3 replicaID:0.0];

  return v4;
}

- (REMResolutionToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"counter"];
  [coderCopy decodeDoubleForKey:@"modificationTime"];
  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replicaID"];

  v9 = [(REMResolutionToken *)self initWithCounter:v5 modificationTime:v8 replicaID:v7];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMResolutionToken counter](self forKey:{"counter"), @"counter"}];
  [(REMResolutionToken *)self modificationTime];
  [coderCopy encodeDouble:@"modificationTime" forKey:?];
  replicaID = [(REMResolutionToken *)self replicaID];
  [coderCopy encodeObject:replicaID forKey:@"replicaID"];
}

- (void)update
{
  [(REMResolutionToken *)self setCounter:[(REMResolutionToken *)self counter]+ 1];
  Current = CFAbsoluteTimeGetCurrent();

  [(REMResolutionToken *)self setModificationTime:Current];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMResolutionToken alloc];
  counter = [(REMResolutionToken *)self counter];
  [(REMResolutionToken *)self modificationTime];
  v7 = v6;
  replicaID = [(REMResolutionToken *)self replicaID];
  v9 = [(REMResolutionToken *)v4 initWithCounter:counter modificationTime:replicaID replicaID:v7];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(REMResolutionToken *)self compare:equalCopy]== 0;
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  counter = [(REMResolutionToken *)self counter];
  if (counter == [compareCopy counter])
  {
    [(REMResolutionToken *)self modificationTime];
    v7 = v6;
    [compareCopy modificationTime];
    if (vabdd_f64(v7, v8) <= 2.22044605e-16)
    {
      replicaID = [(REMResolutionToken *)self replicaID];
      replicaID2 = [compareCopy replicaID];
      v9 = [replicaID CR_compare:replicaID2];
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
    counter2 = [(REMResolutionToken *)self counter];
    if (counter2 > [compareCopy counter])
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
  counter = [(REMResolutionToken *)self counter];
  [(REMResolutionToken *)self modificationTime];
  v6 = v5;
  replicaID = [(REMResolutionToken *)self replicaID];
  uUIDString = [replicaID UUIDString];
  v9 = [v3 stringWithFormat:@"<counter=%ld modificationTime=%lf replicaID=%@>", counter, v6, uUIDString];

  return v9;
}

+ (id)resolutionTokenWithJSONObject:(id)object
{
  objectCopy = object;
  v4 = objc_opt_class();
  v5 = [objectCopy objectForKey:@"counter"];
  v6 = REMDynamicCast(v4, v5);

  v7 = objc_opt_class();
  v8 = [objectCopy objectForKey:@"modificationTime"];
  v9 = REMDynamicCast(v7, v8);

  v10 = objc_opt_class();
  v11 = [objectCopy objectForKey:@"replicaID"];
  v12 = REMDynamicCast(v10, v11);

  if (!v6 || !v9 || !v12 || (v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12]) == 0 || (v14 = v13, v15 = [REMResolutionToken alloc], v16 = objc_msgSend(v6, "integerValue"), objc_msgSend(v9, "doubleValue"), v17 = -[REMResolutionToken initWithCounter:modificationTime:replicaID:](v15, "initWithCounter:modificationTime:replicaID:", v16, v14), v14, !v17))
  {
    v18 = +[REMLogStore utility];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(REMResolutionToken *)objectCopy resolutionTokenWithJSONObject:v18];
    }

    v17 = 0;
  }

  return v17;
}

- (double)generateNonce
{
  counter = [(REMResolutionToken *)self counter];
  [(REMResolutionToken *)self modificationTime];
  return v4 + counter * 1.0e11;
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