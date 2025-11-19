@interface REMReminderExtractionInput
- (BOOL)isEqual:(id)a3;
- (REMReminderExtractionInput)initWithCoder:(id)a3;
- (REMReminderExtractionInput)initWithInputText:(id)a3 inputURL:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMReminderExtractionInput

- (REMReminderExtractionInput)initWithInputText:(id)a3 inputURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMReminderExtractionInput;
  v9 = [(REMReminderExtractionInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, a3);
    objc_storeStrong(&v10->_url, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMReminderExtractionInput *)self text];
  v6 = [(REMReminderExtractionInput *)self url];
  v7 = [v3 stringWithFormat:@"<%@: %p text: %@, url: %@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    v5 = objc_opt_class();
    v6 = REMDynamicCast(v5, v4);

    v7 = [(REMReminderExtractionInput *)self text];
    v8 = [v6 text];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(REMReminderExtractionInput *)self text];
      v11 = [v6 text];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        v13 = 0;
LABEL_11:

        return v13 & 1;
      }
    }

    v14 = [(REMReminderExtractionInput *)self url];
    v15 = [v6 url];
    if (v14 == v15)
    {
      v13 = 1;
    }

    else
    {
      v16 = [(REMReminderExtractionInput *)self url];
      v17 = [v6 url];
      v13 = [v16 isEqual:v17];
    }

    goto LABEL_11;
  }

  v13 = 1;
  return v13 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(REMReminderExtractionInput *)self text];
  v7 = [v6 copyWithZone:a3];
  v8 = [(REMReminderExtractionInput *)self url];
  v9 = [v8 copyWithZone:a3];
  v10 = [v5 initWithInputText:v7 inputURL:v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderExtractionInput *)self text];
  [v4 encodeObject:v5 forKey:@"text"];

  v6 = [(REMReminderExtractionInput *)self url];
  [v4 encodeObject:v6 forKey:@"url"];
}

- (REMReminderExtractionInput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];

  v7 = [objc_alloc(objc_opt_class()) initWithInputText:v5 inputURL:v6];
  return v7;
}

@end