@interface PPScoredContactHandle
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScoredContactHandle:(id)a3;
- (PPScoredContactHandle)initWithCoder:(id)a3;
- (PPScoredContactHandle)initWithContactHandle:(id)a3 score:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (int64_t)reverseCompare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPScoredContactHandle

- (BOOL)isEqualToScoredContactHandle:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = self->_contactHandle;
  v6 = v5;
  if (v5 == v4[1])
  {

    goto LABEL_6;
  }

  v7 = [(NSString *)v5 isEqual:?];

  if (v7)
  {
LABEL_6:
    v8 = self->_score == *(v4 + 2);
    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPScoredContactHandle *)self isEqualToScoredContactHandle:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSString *)self->_contactHandle copyWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  contactHandle = self->_contactHandle;
  v5 = a3;
  [v5 encodeObject:contactHandle forKey:@"ch"];
  [v5 encodeDouble:@"sc" forKey:self->_score];
}

- (PPScoredContactHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = pp_default_log_handle();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"ch" withCoder:v4 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v7];

  if (v8)
  {
    [v4 decodeDoubleForKey:@"sc"];
    self = [(PPScoredContactHandle *)self initWithContactHandle:v8 score:?];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)reverseCompare:(id)a3
{
  score = self->_score;
  [a3 score];

  return [PPUtils reverseCompareDouble:score withDouble:v4];
}

- (int64_t)compare:(id)a3
{
  score = self->_score;
  [a3 score];

  return [PPUtils compareDouble:score withDouble:v4];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPScoredContactHandle c:%@ s:%f>", self->_contactHandle, *&self->_score];

  return v2;
}

- (PPScoredContactHandle)initWithContactHandle:(id)a3 score:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PPScoredContactHandle;
  v8 = [(PPScoredContactHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactHandle, a3);
    v9->_score = a4;
  }

  return v9;
}

@end