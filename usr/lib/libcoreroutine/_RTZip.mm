@interface _RTZip
- (_RTZip)initWithFirstInput:(id)input secondInput:(id)secondInput;
- (id)zippedArray;
@end

@implementation _RTZip

- (_RTZip)initWithFirstInput:(id)input secondInput:(id)secondInput
{
  inputCopy = input;
  secondInputCopy = secondInput;
  v9 = [inputCopy count];
  if (v9 == [secondInputCopy count])
  {
    v15.receiver = self;
    v15.super_class = _RTZip;
    v10 = [(_RTZip *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_firstInput, input);
      objc_storeStrong(p_isa + 2, secondInput);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: firstInput.count == secondInput.count", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)zippedArray
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_firstInput, "count")}];
  if ([(NSArray *)self->_firstInput count])
  {
    v4 = 0;
    do
    {
      v5 = objc_alloc(MEMORY[0x277D011C0]);
      v6 = [(NSArray *)self->_firstInput objectAtIndexedSubscript:v4];
      v7 = [(NSArray *)self->_secondInput objectAtIndexedSubscript:v4];
      v8 = [v5 initWithFirstObject:v6 secondObject:v7];

      if (v8)
      {
        [v3 addObject:v8];
      }

      ++v4;
    }

    while (v4 < [(NSArray *)self->_firstInput count]);
  }

  return v3;
}

@end