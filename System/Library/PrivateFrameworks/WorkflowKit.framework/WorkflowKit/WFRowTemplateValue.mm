@interface WFRowTemplateValue
- (WFRowTemplateValue)initWithCoder:(id)coder;
- (WFRowTemplateValue)initWithContentItemClass:(Class)class contentPropertyName:(id)name comparisonOperator:(int64_t)operator removable:(BOOL)removable;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFRowTemplateValue

- (void)encodeWithCoder:(id)coder
{
  contentItemClass = self->_contentItemClass;
  coderCopy = coder;
  v5 = NSStringFromClass(contentItemClass);
  [coderCopy encodeObject:v5 forKey:@"contentItemClass"];

  [coderCopy encodeObject:self->_contentPropertyName forKey:@"contentPropertyName"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_comparisonOperator];
  [coderCopy encodeObject:v6 forKey:@"comparisonOperator"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_removable];
  [coderCopy encodeObject:v7 forKey:@"removable"];

  [coderCopy encodeObject:self->_enumeration forKey:@"enumeration"];
  [coderCopy encodeObject:self->_string forKey:@"string"];
  [coderCopy encodeObject:self->_BOOLean forKey:@"BOOLean"];
  [coderCopy encodeObject:self->_number forKey:@"number"];
  [coderCopy encodeObject:self->_phone forKey:@"phone"];
  [coderCopy encodeObject:self->_email forKey:@"email"];
  [coderCopy encodeObject:self->_calendarUnit forKey:@"calendarUnit"];
  [coderCopy encodeObject:self->_byteCountUnit forKey:@"byteCountUnit"];
  [coderCopy encodeObject:self->_measurementUnit forKey:@"measurementUnit"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_anotherDate forKey:@"anotherDate"];
}

- (WFRowTemplateValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentItemClass"];
  v6 = NSClassFromString(v5);

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentPropertyName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"comparisonOperator"];
  integerValue = [v8 integerValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"removable"];
  bOOLValue = [v10 BOOLValue];

  v12 = [(WFRowTemplateValue *)self initWithContentItemClass:v6 contentPropertyName:v7 comparisonOperator:integerValue removable:bOOLValue];
  if (v12)
  {
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"enumeration"];
    enumeration = v12->_enumeration;
    v12->_enumeration = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    string = v12->_string;
    v12->_string = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BOOLean"];
    BOOLean = v12->_BOOLean;
    v12->_BOOLean = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"number"];
    number = v12->_number;
    v12->_number = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phone"];
    phone = v12->_phone;
    v12->_phone = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    email = v12->_email;
    v12->_email = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calendarUnit"];
    calendarUnit = v12->_calendarUnit;
    v12->_calendarUnit = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"byteCountUnit"];
    byteCountUnit = v12->_byteCountUnit;
    v12->_byteCountUnit = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"measurementUnit"];
    measurementUnit = v12->_measurementUnit;
    v12->_measurementUnit = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v12->_date;
    v12->_date = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anotherDate"];
    anotherDate = v12->_anotherDate;
    v12->_anotherDate = v38;

    v40 = v12;
  }

  return v12;
}

- (WFRowTemplateValue)initWithContentItemClass:(Class)class contentPropertyName:(id)name comparisonOperator:(int64_t)operator removable:(BOOL)removable
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = WFRowTemplateValue;
  v11 = [(WFRowTemplateValue *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentItemClass, class);
    v13 = [nameCopy copy];
    contentPropertyName = v12->_contentPropertyName;
    v12->_contentPropertyName = v13;

    v12->_comparisonOperator = operator;
    v12->_removable = removable;
    v15 = v12;
  }

  return v12;
}

- (id)debugDescription
{
  v23[14] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, {\n", v5, self];

  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v6];
  [(WFRowTemplateValue *)self comparisonOperator];
  v8 = WFDefaultLocalizedLabelForContentOperator();
  [v7 appendFormat:@"\t%@: %@ (%ld)\n", @"comparisonOperator", v8, -[WFRowTemplateValue comparisonOperator](self, "comparisonOperator")];

  v23[0] = @"contentPropertyName";
  v23[1] = @"contentItemClass";
  v23[2] = @"removable";
  v23[3] = @"enumeration";
  v23[4] = @"string";
  v23[5] = @"BOOLean";
  v23[6] = @"number";
  v23[7] = @"phone";
  v23[8] = @"email";
  v23[9] = @"calendarUnit";
  v23[10] = @"byteCountUnit";
  v23[11] = @"measurementUnit";
  v23[12] = @"date";
  v23[13] = @"anotherDate";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:14];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [(WFRowTemplateValue *)self valueForKey:v14];
        [v7 appendFormat:@"\t%@: %@\n", v14, v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [v7 appendString:@"}>"];
  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

@end