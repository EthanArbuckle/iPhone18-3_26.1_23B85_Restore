@interface TLAlertStoppingOptions
- (BOOL)isEqual:(id)a3;
- (TLAlertStoppingOptions)init;
- (TLAlertStoppingOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TLAlertStoppingOptions

- (TLAlertStoppingOptions)init
{
  v3.receiver = self;
  v3.super_class = TLAlertStoppingOptions;
  result = [(TLAlertStoppingOptions *)&v3 init];
  if (result)
  {
    result->_fadeOutDuration = 0.0;
    result->_shouldWaitUntilEndOfCurrentRepetition = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 2) = *&self->_fadeOutDuration;
    *(result + 8) = self->_shouldWaitUntilEndOfCurrentRepetition;
  }

  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (self->_fadeOutDuration > 0.00000011920929)
  {
    [v6 appendFormat:@"; fadeOutDuration = %f", *&self->_fadeOutDuration];
  }

  if (self->_shouldWaitUntilEndOfCurrentRepetition)
  {
    [v6 appendString:@"; shouldWaitUntilEndOfCurrentRepetition = YES"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && llround(self->_fadeOutDuration / 0.0001) == llround(v4->_fadeOutDuration / 0.0001) && self->_shouldWaitUntilEndOfCurrentRepetition == v4->_shouldWaitUntilEndOfCurrentRepetition;
  }

  return v5;
}

- (TLAlertStoppingOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TLAlertStoppingOptions;
  v5 = [(TLAlertStoppingOptions *)&v8 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"fadeOutDuration"];
    v5->_fadeOutDuration = v6;
    v5->_shouldWaitUntilEndOfCurrentRepetition = [v4 decodeBoolForKey:@"shouldWaitUntilEndOfCurrentRepetition"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  fadeOutDuration = self->_fadeOutDuration;
  v5 = a3;
  [v5 encodeDouble:@"fadeOutDuration" forKey:fadeOutDuration];
  [v5 encodeBool:self->_shouldWaitUntilEndOfCurrentRepetition forKey:@"shouldWaitUntilEndOfCurrentRepetition"];
}

@end