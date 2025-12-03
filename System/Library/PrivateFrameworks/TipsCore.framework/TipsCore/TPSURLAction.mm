@interface TPSURLAction
- (TPSURLAction)initWithCoder:(id)coder;
- (TPSURLAction)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setURL:(id)l;
@end

@implementation TPSURLAction

- (TPSURLAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = TPSURLAction;
  v5 = [(TPSSerializableObject *)&v15 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [dictionaryCopy TPSSafeStringForKey:@"text"];
  [(TPSURLAction *)v5 setText:v6];

  v7 = [dictionaryCopy TPSSafeDictionaryForKey:@"attrs"];
  v8 = [v7 TPSSafeStringForKey:@"href"];
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    [(TPSURLAction *)v5 setURL:v9];
  }

  text = [(TPSURLAction *)v5 text];
  if (!text)
  {

    goto LABEL_8;
  }

  v11 = text;
  v12 = [(TPSURLAction *)v5 URL];

  if (!v12)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v13 = v5;
LABEL_9:

  return v13;
}

- (TPSURLAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TPSURLAction;
  v5 = [(TPSSerializableObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    [(TPSURLAction *)v5 setText:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"href"];
    [(TPSURLAction *)v5 setURL:v7];
  }

  return v5;
}

- (void)setURL:(id)l
{
  lCopy = l;
  URL = self->_URL;
  v8 = lCopy;
  if (URL != lCopy)
  {
    objc_storeStrong(&self->_URL, l);
    URL = self->_URL;
  }

  if (URL)
  {
    v7 = [TPSURLActionComponents componentsWithURL:?];
    -[TPSURLAction setType:](self, "setType:", [v7 actionType]);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSURLAction;
  coderCopy = coder;
  [(TPSSerializableObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(TPSURLAction *)self text:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"text"];

  v6 = [(TPSURLAction *)self URL];
  [coderCopy encodeObject:v6 forKey:@"href"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = TPSURLAction;
  v4 = [(TPSSerializableObject *)&v8 copyWithZone:zone];
  text = [(TPSURLAction *)self text];
  [v4 setText:text];

  v6 = [(TPSURLAction *)self URL];
  [v4 setURL:v6];

  return v4;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSURLAction;
  v4 = [(TPSSerializableObject *)&v9 debugDescription];
  v5 = [v3 initWithFormat:@"%@", v4];

  text = [(TPSURLAction *)self text];
  [v5 appendFormat:@"\n %@ = %@\n", @"text", text];

  v7 = [(TPSURLAction *)self URL];
  [v5 appendFormat:@" %@ = %@\n", @"href", v7];

  return v5;
}

@end