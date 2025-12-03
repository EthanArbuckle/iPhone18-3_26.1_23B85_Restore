@interface TLAlertStoppingOptions
- (BOOL)isEqual:(id)equal;
- (TLAlertStoppingOptions)init;
- (TLAlertStoppingOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && llround(self->_fadeOutDuration / 0.0001) == llround(equalCopy->_fadeOutDuration / 0.0001) && self->_shouldWaitUntilEndOfCurrentRepetition == equalCopy->_shouldWaitUntilEndOfCurrentRepetition;
  }

  return v5;
}

- (TLAlertStoppingOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TLAlertStoppingOptions;
  v5 = [(TLAlertStoppingOptions *)&v8 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"fadeOutDuration"];
    v5->_fadeOutDuration = v6;
    v5->_shouldWaitUntilEndOfCurrentRepetition = [coderCopy decodeBoolForKey:@"shouldWaitUntilEndOfCurrentRepetition"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  fadeOutDuration = self->_fadeOutDuration;
  coderCopy = coder;
  [coderCopy encodeDouble:@"fadeOutDuration" forKey:fadeOutDuration];
  [coderCopy encodeBool:self->_shouldWaitUntilEndOfCurrentRepetition forKey:@"shouldWaitUntilEndOfCurrentRepetition"];
}

@end