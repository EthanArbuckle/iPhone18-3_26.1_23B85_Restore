@interface USKTimeCode
- (BOOL)isEqual:(id)equal;
- (USKTimeCode)initWithDouble:(double)double;
- (USKTimeCode)initWithSdfTimeCode:(SdfTimeCode)code;
- (unint64_t)hash;
@end

@implementation USKTimeCode

- (USKTimeCode)initWithSdfTimeCode:(SdfTimeCode)code
{
  v8.receiver = self;
  v8.super_class = USKTimeCode;
  v4 = [(USKTimeCode *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeCode = code;
    v6 = v4;
  }

  return v5;
}

- (USKTimeCode)initWithDouble:(double)double
{
  v8.receiver = self;
  v8.super_class = USKTimeCode;
  v4 = [(USKTimeCode *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeCode._time = double;
    v6 = v4;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend_sdfTimeCode(v5, v6, v7, v8);
    v10 = self->_timeCode._time == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  if (self->_timeCode._time == 0.0)
  {
    return 0;
  }

  else
  {
    return *&self->_timeCode._time;
  }
}

@end