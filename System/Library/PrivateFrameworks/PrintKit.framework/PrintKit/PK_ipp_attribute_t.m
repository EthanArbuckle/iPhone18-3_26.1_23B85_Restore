@interface PK_ipp_attribute_t
- (PK_ipp_attribute_t)initWithCoder:(id)a3;
- (PK_ipp_attribute_t)initWithName:(id)a3 group:(int)a4 value:(int)a5;
- (id)_copySettingGroup:(int)a3;
- (id)addNewEmptyValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)loggingDict;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateValues:(id)a3;
- (void)setNSName:(id)a3;
- (void)withNewEmptyValue:(id)a3;
@end

@implementation PK_ipp_attribute_t

- (PK_ipp_attribute_t)initWithName:(id)a3 group:(int)a4 value:(int)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = PK_ipp_attribute_t;
  v9 = [(PK_ipp_attribute_t *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_group_tag = a4;
    v9->_value_tag = a5;
    if (v8)
    {
      v11 = internString(v8);
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

- (id)copyWithZone:(_NSZone *)a3
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
        v10 = [v4 values];
        [v10 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (PK_ipp_attribute_t)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PK_ipp_attribute_t;
  v5 = [(PK_ipp_attribute_t *)&v14 init];
  if (v5)
  {
    v5->_group_tag = [v4 decodeIntegerForKey:@"_group_tag"];
    v5->_value_tag = [v4 decodeIntegerForKey:@"_value_tag"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
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

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_values"];
    v11 = [v10 mutableCopy];
    values = v5->_values;
    v5->_values = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->_group_tag forKey:@"_group_tag"];
  [v5 encodeInteger:self->_value_tag forKey:@"_value_tag"];
  x_name = self->x_name;
  if (x_name)
  {
    [v5 encodeObject:x_name forKey:@"_name"];
  }

  [v5 encodeObject:self->_values forKey:@"_values"];
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
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = [(__CFString *)ipp_tag_names[group_tag] UTF8String];
    }

    v10 = [v6 stringWithUTF8String:v8];
    v19[1] = v10;
    v18[2] = @"tagv";
    v11 = MEMORY[0x277CCACA8];
    value_tag = self->_value_tag;
    if (value_tag > 74)
    {
      v13 = "UNKNOWN";
    }

    else
    {
      v13 = [(__CFString *)ipp_tag_names[value_tag] UTF8String];
    }

    v14 = [v11 stringWithUTF8String:v13];
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
  v5 = [(PK_ipp_attribute_t *)self loggingDict];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)enumerateValues:(id)a3
{
  v4 = a3;
  values = self->_values;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PK_ipp_attribute_t_enumerateValues___block_invoke;
  v7[3] = &unk_279A8FF58;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)values enumerateObjectsUsingBlock:v7];
}

- (id)_copySettingGroup:(int)a3
{
  result = [(PK_ipp_attribute_t *)self copyWithZone:0];
  *(result + 6) = a3;
  return result;
}

- (void)withNewEmptyValue:(id)a3
{
  v5 = a3;
  v4 = objc_opt_new();
  v5[2](v5, v4);
  [(NSMutableArray *)self->_values addObject:v4];
}

- (id)addNewEmptyValue
{
  v3 = objc_opt_new();
  [(NSMutableArray *)self->_values addObject:v3];

  return v3;
}

- (void)setNSName:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v4 = internString(v4);
  }

  x_name = self->x_name;
  self->x_name = v4;
}

@end