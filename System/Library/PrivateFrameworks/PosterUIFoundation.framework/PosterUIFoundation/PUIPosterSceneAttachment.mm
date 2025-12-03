@interface PUIPosterSceneAttachment
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PUIPosterSceneAttachment)initWithBSXPCCoder:(id)coder;
- (PUIPosterSceneAttachment)initWithCoder:(id)coder;
- (PUIPosterSceneAttachment)initWithContextId:(unsigned int)id renderId:(unint64_t)renderId level:(int64_t)level;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIPosterSceneAttachment

- (PUIPosterSceneAttachment)initWithContextId:(unsigned int)id renderId:(unint64_t)renderId level:(int64_t)level
{
  v9.receiver = self;
  v9.super_class = PUIPosterSceneAttachment;
  result = [(PUIPosterSceneAttachment *)&v9 init];
  if (result)
  {
    result->_contextId = id;
    result->_level = level;
    result->_renderId = renderId;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy)
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
      level = [(PUIPosterSceneAttachment *)v10 level];
      v9 = level == [(PUIPosterSceneAttachment *)self level];
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
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  contextId = self->_contextId;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInt:contextId];
  [coderCopy encodeObject:v7 forKey:@"_contextId"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_renderId];
  [coderCopy encodeObject:v8 forKey:@"_renderId"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_level];
  [coderCopy encodeObject:v9 forKey:@"_level"];
}

- (PUIPosterSceneAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PUIPosterSceneAttachment;
  v5 = [(PUIPosterSceneAttachment *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_contextId"];
    v5->_contextId = [v7 unsignedIntValue];

    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"_renderId"];
    v5->_renderId = [v9 unsignedLongLongValue];

    v10 = objc_opt_self();
    v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"_level"];
    v5->_level = [v11 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  contextId = self->_contextId;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInt:contextId];
  [coderCopy encodeObject:v7 forKey:@"_contextId"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_renderId];
  [coderCopy encodeObject:v8 forKey:@"_renderId"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_level];
  [coderCopy encodeObject:v9 forKey:@"_level"];
}

- (PUIPosterSceneAttachment)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PUIPosterSceneAttachment *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_contextId"];
    v5->_contextId = [v7 unsignedIntValue];

    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"_renderId"];
    v5->_renderId = [v9 unsignedLongLongValue];

    v10 = objc_opt_self();
    v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"_level"];
    v5->_level = [v11 unsignedIntegerValue];
  }

  return v5;
}

@end