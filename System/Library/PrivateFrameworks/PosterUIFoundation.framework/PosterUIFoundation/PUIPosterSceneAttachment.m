@interface PUIPosterSceneAttachment
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PUIPosterSceneAttachment)initWithBSXPCCoder:(id)a3;
- (PUIPosterSceneAttachment)initWithCoder:(id)a3;
- (PUIPosterSceneAttachment)initWithContextId:(unsigned int)a3 renderId:(unint64_t)a4 level:(int64_t)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIPosterSceneAttachment

- (PUIPosterSceneAttachment)initWithContextId:(unsigned int)a3 renderId:(unint64_t)a4 level:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = PUIPosterSceneAttachment;
  result = [(PUIPosterSceneAttachment *)&v9 init];
  if (result)
  {
    result->_contextId = a3;
    result->_level = a5;
    result->_renderId = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4)
  {
    v6 = objc_opt_class();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    if (v10 && (v11 = [(PUIPosterSceneAttachment *)v10 renderId], v11 == [(PUIPosterSceneAttachment *)self renderId]) && (v12 = [(PUIPosterSceneAttachment *)v10 contextId], v12 == [(PUIPosterSceneAttachment *)self contextId]))
    {
      v13 = [(PUIPosterSceneAttachment *)v10 level];
      v9 = v13 == [(PUIPosterSceneAttachment *)self level];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendUInt64:self->_contextId withName:@"_contextId"];
  v5 = [v3 appendUInt64:self->_renderId withName:@"_renderId"];
  v6 = [v3 appendInt64:self->_level withName:@"_level"];
  v7 = [v3 build];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  contextId = self->_contextId;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInt:contextId];
  [v6 encodeObject:v7 forKey:@"_contextId"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_renderId];
  [v6 encodeObject:v8 forKey:@"_renderId"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_level];
  [v6 encodeObject:v9 forKey:@"_level"];
}

- (PUIPosterSceneAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PUIPosterSceneAttachment;
  v5 = [(PUIPosterSceneAttachment *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_contextId"];
    v5->_contextId = [v7 unsignedIntValue];

    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"_renderId"];
    v5->_renderId = [v9 unsignedLongLongValue];

    v10 = objc_opt_self();
    v11 = [v4 decodeObjectOfClass:v10 forKey:@"_level"];
    v5->_level = [v11 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  contextId = self->_contextId;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInt:contextId];
  [v6 encodeObject:v7 forKey:@"_contextId"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_renderId];
  [v6 encodeObject:v8 forKey:@"_renderId"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_level];
  [v6 encodeObject:v9 forKey:@"_level"];
}

- (PUIPosterSceneAttachment)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PUIPosterSceneAttachment *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_contextId"];
    v5->_contextId = [v7 unsignedIntValue];

    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"_renderId"];
    v5->_renderId = [v9 unsignedLongLongValue];

    v10 = objc_opt_self();
    v11 = [v4 decodeObjectOfClass:v10 forKey:@"_level"];
    v5->_level = [v11 unsignedIntegerValue];
  }

  return v5;
}

@end