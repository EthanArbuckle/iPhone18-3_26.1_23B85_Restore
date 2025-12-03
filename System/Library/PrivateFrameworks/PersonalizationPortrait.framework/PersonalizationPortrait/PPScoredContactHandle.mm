@interface PPScoredContactHandle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScoredContactHandle:(id)handle;
- (PPScoredContactHandle)initWithCoder:(id)coder;
- (PPScoredContactHandle)initWithContactHandle:(id)handle score:(double)score;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (int64_t)reverseCompare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPScoredContactHandle

- (BOOL)isEqualToScoredContactHandle:(id)handle
{
  handleCopy = handle;
  if (!handleCopy)
  {
    goto LABEL_4;
  }

  v5 = self->_contactHandle;
  v6 = v5;
  if (v5 == handleCopy[1])
  {

    goto LABEL_6;
  }

  v7 = [(NSString *)v5 isEqual:?];

  if (v7)
  {
LABEL_6:
    v8 = self->_score == *(handleCopy + 2);
    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPScoredContactHandle *)self isEqualToScoredContactHandle:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSString *)self->_contactHandle copyWithZone:zone];
  v7 = [v5 initWithContactHandle:v6 score:self->_score];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contactHandle hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  v5 = [v4 hash] - v3 + 32 * v3;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contactHandle = self->_contactHandle;
  coderCopy = coder;
  [coderCopy encodeObject:contactHandle forKey:@"ch"];
  [coderCopy encodeDouble:@"sc" forKey:self->_score];
}

- (PPScoredContactHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = pp_default_log_handle();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"ch" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v7];

  if (v8)
  {
    [coderCopy decodeDoubleForKey:@"sc"];
    self = [(PPScoredContactHandle *)self initWithContactHandle:v8 score:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (int64_t)reverseCompare:(id)compare
{
  score = self->_score;
  [compare score];

  return [PPUtils reverseCompareDouble:score withDouble:v4];
}

- (int64_t)compare:(id)compare
{
  score = self->_score;
  [compare score];

  return [PPUtils compareDouble:score withDouble:v4];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPScoredContactHandle c:%@ s:%f>", self->_contactHandle, *&self->_score];

  return v2;
}

- (PPScoredContactHandle)initWithContactHandle:(id)handle score:(double)score
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = PPScoredContactHandle;
  v8 = [(PPScoredContactHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactHandle, handle);
    v9->_score = score;
  }

  return v9;
}

@end