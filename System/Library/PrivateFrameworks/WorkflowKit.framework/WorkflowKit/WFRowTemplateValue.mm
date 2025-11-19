@interface WFRowTemplateValue
- (WFRowTemplateValue)initWithCoder:(id)a3;
- (WFRowTemplateValue)initWithContentItemClass:(Class)a3 contentPropertyName:(id)a4 comparisonOperator:(int64_t)a5 removable:(BOOL)a6;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFRowTemplateValue

- (void)encodeWithCoder:(id)a3
{
  contentItemClass = self->_contentItemClass;
  v8 = a3;
  v5 = NSStringFromClass(contentItemClass);
  [v8 encodeObject:v5 forKey:@"contentItemClass"];

  [v8 encodeObject:self->_contentPropertyName forKey:@"contentPropertyName"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_comparisonOperator];
  [v8 encodeObject:v6 forKey:@"comparisonOperator"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_removable];
  [v8 encodeObject:v7 forKey:@"removable"];

  [v8 encodeObject:self->_enumeration forKey:@"enumeration"];
  [v8 encodeObject:self->_string forKey:@"string"];
  [v8 encodeObject:self->_BOOLean forKey:@"BOOLean"];
  [v8 encodeObject:self->_number forKey:@"number"];
  [v8 encodeObject:self->_phone forKey:@"phone"];
  [v8 encodeObject:self->_email forKey:@"email"];
  [v8 encodeObject:self->_calendarUnit forKey:@"calendarUnit"];
  [v8 encodeObject:self->_byteCountUnit forKey:@"byteCountUnit"];
  [v8 encodeObject:self->_measurementUnit forKey:@"measurementUnit"];
  [v8 encodeObject:self->_date forKey:@"date"];
  [v8 encodeObject:self->_anotherDate forKey:@"anotherDate"];
}

- (WFRowTemplateValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentItemClass"];
  v6 = NSClassFromString(v5);

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentPropertyName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"comparisonOperator"];
  v9 = [v8 integerValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"removable"];
  v11 = [v10 BOOLValue];

  v12 = [(WFRowTemplateValue *)self initWithContentItemClass:v6 contentPropertyName:v7 comparisonOperator:v9 removable:v11];
  if (v12)
  {
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"enumeration"];
    enumeration = v12->_enumeration;
    v12->_enumeration = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    string = v12->_string;
    v12->_string = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BOOLean"];
    BOOLean = v12->_BOOLean;
    v12->_BOOLean = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"number"];
    number = v12->_number;
    v12->_number = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phone"];
    phone = v12->_phone;
    v12->_phone = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    email = v12->_email;
    v12->_email = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendarUnit"];
    calendarUnit = v12->_calendarUnit;
    v12->_calendarUnit = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"byteCountUnit"];
    byteCountUnit = v12->_byteCountUnit;
    v12->_byteCountUnit = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"measurementUnit"];
    measurementUnit = v12->_measurementUnit;
    v12->_measurementUnit = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v12->_date;
    v12->_date = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anotherDate"];
    anotherDate = v12->_anotherDate;
    v12->_anotherDate = v38;

    v40 = v12;
  }

  return v12;
}

- (WFRowTemplateValue)initWithContentItemClass:(Class)a3 contentPropertyName:(id)a4 comparisonOperator:(int64_t)a5 removable:(BOOL)a6
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = WFRowTemplateValue;
  v11 = [(WFRowTemplateValue *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentItemClass, a3);
    v13 = [v10 copy];
    contentPropertyName = v12->_contentPropertyName;
    v12->_contentPropertyName = v13;

    v12->_comparisonOperator = a5;
    v12->_removable = a6;
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