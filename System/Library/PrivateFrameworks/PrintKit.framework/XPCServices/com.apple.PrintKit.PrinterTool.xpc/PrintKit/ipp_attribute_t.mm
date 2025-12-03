@interface ipp_attribute_t
- (id)_copySettingGroup:(int)group;
- (id)addNewEmptyValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)loggingDict;
- (ipp_attribute_t)initWithCoder:(id)coder;
- (ipp_attribute_t)initWithName:(id)name group:(int)group value:(int)value;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateValues:(id)values;
- (void)setNSName:(id)name;
- (void)withNewEmptyValue:(id)value;
@end

@implementation ipp_attribute_t

- (ipp_attribute_t)initWithName:(id)name group:(int)group value:(int)value
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = ipp_attribute_t;
  v9 = [(ipp_attribute_t *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_group_tag = group;
    v9->_value_tag = value;
    if (nameCopy)
    {
      v11 = internString(nameCopy);
    }

    else
    {
      v11 = 0;
    }

    x_name = v10->x_name;
    v10->x_name = v11;

    v13 = objc_opt_new();
    values = v10->_values;
    v10->_values = v13;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithName:self->x_name group:self->_group_tag value:self->_value_tag];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_values;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        values = [v4 values];
        [values addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (ipp_attribute_t)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ipp_attribute_t;
  v5 = [(ipp_attribute_t *)&v14 init];
  if (v5)
  {
    v5->_group_tag = [coderCopy decodeIntegerForKey:@"_group_tag"];
    v5->_value_tag = [coderCopy decodeIntegerForKey:@"_value_tag"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    v7 = v6;
    if (v6)
    {
      v8 = internString(v6);
    }

    else
    {
      v8 = 0;
    }

    x_name = v5->x_name;
    v5->x_name = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_values"];
    v11 = [v10 mutableCopy];
    values = v5->_values;
    v5->_values = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_group_tag forKey:@"_group_tag"];
  [coderCopy encodeInteger:self->_value_tag forKey:@"_value_tag"];
  x_name = self->x_name;
  if (x_name)
  {
    [coderCopy encodeObject:x_name forKey:@"_name"];
  }

  [coderCopy encodeObject:self->_values forKey:@"_values"];
}

- (id)loggingDict
{
  if (self->_value_tag)
  {
    v3 = objc_opt_new();
    values = self->_values;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003A60C;
    v14[3] = &unk_1000A2C80;
    v14[4] = self;
    v5 = v3;
    v15 = v5;
    [(NSMutableArray *)values enumerateObjectsUsingBlock:v14];
    v17[0] = self->x_name;
    v16[0] = @"name";
    v16[1] = @"tagg";
    group_tag = self->_group_tag;
    if (group_tag > 74)
    {
      uTF8String = "UNKNOWN";
    }

    else
    {
      uTF8String = [(__CFString *)off_1000A2FE0[group_tag] UTF8String];
    }

    v9 = [NSString stringWithUTF8String:uTF8String];
    v17[1] = v9;
    v16[2] = @"tagv";
    value_tag = self->_value_tag;
    if (value_tag > 74)
    {
      uTF8String2 = "UNKNOWN";
    }

    else
    {
      uTF8String2 = [(__CFString *)off_1000A2FE0[value_tag] UTF8String];
    }

    v12 = [NSString stringWithUTF8String:uTF8String2];
    v16[3] = @"vals";
    v17[2] = v12;
    v17[3] = v5;
    v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
  }

  else
  {
    v8 = &off_1000B91A8;
  }

  return v8;
}

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = ipp_attribute_t;
  v3 = [(ipp_attribute_t *)&v7 description];
  loggingDict = [(ipp_attribute_t *)self loggingDict];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, loggingDict];

  return v5;
}

- (void)enumerateValues:(id)values
{
  valuesCopy = values;
  values = self->_values;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003A860;
  v7[3] = &unk_1000A2CA8;
  v8 = valuesCopy;
  v6 = valuesCopy;
  [(NSMutableArray *)values enumerateObjectsUsingBlock:v7];
}

- (id)_copySettingGroup:(int)group
{
  result = [(ipp_attribute_t *)self copyWithZone:0];
  *(result + 6) = group;
  return result;
}

- (void)withNewEmptyValue:(id)value
{
  valueCopy = value;
  v4 = objc_opt_new();
  valueCopy[2](valueCopy, v4);
  [(NSMutableArray *)self->_values addObject:v4];
}

- (id)addNewEmptyValue
{
  v3 = objc_opt_new();
  [(NSMutableArray *)self->_values addObject:v3];

  return v3;
}

- (void)setNSName:(id)name
{
  nameCopy = name;
  v6 = nameCopy;
  if (nameCopy)
  {
    nameCopy = internString(nameCopy);
  }

  x_name = self->x_name;
  self->x_name = nameCopy;
}

@end