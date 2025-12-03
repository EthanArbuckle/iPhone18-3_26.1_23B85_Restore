@interface PK_ipp_attribute_t
- (PK_ipp_attribute_t)initWithCoder:(id)coder;
- (PK_ipp_attribute_t)initWithName:(id)name group:(int)group value:(int)value;
- (id)_copySettingGroup:(int)group;
- (id)addNewEmptyValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)loggingDict;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateValues:(id)values;
- (void)setNSName:(id)name;
- (void)withNewEmptyValue:(id)value;
@end

@implementation PK_ipp_attribute_t

- (PK_ipp_attribute_t)initWithName:(id)name group:(int)group value:(int)value
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = PK_ipp_attribute_t;
  v9 = [(PK_ipp_attribute_t *)&v16 init];
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
  v17 = *MEMORY[0x277D85DE8];
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

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (PK_ipp_attribute_t)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PK_ipp_attribute_t;
  v5 = [(PK_ipp_attribute_t *)&v14 init];
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
  v19[4] = *MEMORY[0x277D85DE8];
  if (self->_value_tag)
  {
    v3 = objc_opt_new();
    values = self->_values;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __33__PK_ipp_attribute_t_loggingDict__block_invoke;
    v16[3] = &unk_279A8FF30;
    v16[4] = self;
    v5 = v3;
    v17 = v5;
    [(NSMutableArray *)values enumerateObjectsUsingBlock:v16];
    v19[0] = self->x_name;
    v18[0] = @"name";
    v18[1] = @"tagg";
    v6 = MEMORY[0x277CCACA8];
    group_tag = self->_group_tag;
    if (group_tag > 74)
    {
      uTF8String = "UNKNOWN";
    }

    else
    {
      uTF8String = [(__CFString *)ipp_tag_names[group_tag] UTF8String];
    }

    v10 = [v6 stringWithUTF8String:uTF8String];
    v19[1] = v10;
    v18[2] = @"tagv";
    v11 = MEMORY[0x277CCACA8];
    value_tag = self->_value_tag;
    if (value_tag > 74)
    {
      uTF8String2 = "UNKNOWN";
    }

    else
    {
      uTF8String2 = [(__CFString *)ipp_tag_names[value_tag] UTF8String];
    }

    v14 = [v11 stringWithUTF8String:uTF8String2];
    v18[3] = @"vals";
    v19[2] = v14;
    v19[3] = v5;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  }

  else
  {
    v9 = &unk_2871AC688;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PK_ipp_attribute_t;
  v4 = [(PK_ipp_attribute_t *)&v8 description];
  loggingDict = [(PK_ipp_attribute_t *)self loggingDict];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, loggingDict];

  return v6;
}

- (void)enumerateValues:(id)values
{
  valuesCopy = values;
  values = self->_values;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PK_ipp_attribute_t_enumerateValues___block_invoke;
  v7[3] = &unk_279A8FF58;
  v8 = valuesCopy;
  v6 = valuesCopy;
  [(NSMutableArray *)values enumerateObjectsUsingBlock:v7];
}

- (id)_copySettingGroup:(int)group
{
  result = [(PK_ipp_attribute_t *)self copyWithZone:0];
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