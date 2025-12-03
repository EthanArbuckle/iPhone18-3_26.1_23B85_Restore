@interface REMReminderExtractionInput
- (BOOL)isEqual:(id)equal;
- (REMReminderExtractionInput)initWithCoder:(id)coder;
- (REMReminderExtractionInput)initWithInputText:(id)text inputURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReminderExtractionInput

- (REMReminderExtractionInput)initWithInputText:(id)text inputURL:(id)l
{
  textCopy = text;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = REMReminderExtractionInput;
  v9 = [(REMReminderExtractionInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, text);
    objc_storeStrong(&v10->_url, l);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  text = [(REMReminderExtractionInput *)self text];
  v6 = [(REMReminderExtractionInput *)self url];
  v7 = [v3 stringWithFormat:@"<%@: %p text: %@, url: %@>", v4, self, text, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    v5 = objc_opt_class();
    v6 = REMDynamicCast(v5, equalCopy);

    text = [(REMReminderExtractionInput *)self text];
    text2 = [v6 text];
    v9 = text2;
    if (text == text2)
    {
    }

    else
    {
      text3 = [(REMReminderExtractionInput *)self text];
      text4 = [v6 text];
      v12 = [text3 isEqual:text4];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  text = [(REMReminderExtractionInput *)self text];
  v7 = [text copyWithZone:zone];
  v8 = [(REMReminderExtractionInput *)self url];
  v9 = [v8 copyWithZone:zone];
  v10 = [v5 initWithInputText:v7 inputURL:v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  text = [(REMReminderExtractionInput *)self text];
  [coderCopy encodeObject:text forKey:@"text"];

  v6 = [(REMReminderExtractionInput *)self url];
  [coderCopy encodeObject:v6 forKey:@"url"];
}

- (REMReminderExtractionInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];

  v7 = [objc_alloc(objc_opt_class()) initWithInputText:v5 inputURL:v6];
  return v7;
}

@end